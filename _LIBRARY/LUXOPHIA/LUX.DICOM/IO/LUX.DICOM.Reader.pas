unit LUX.DICOM.Reader;

interface //#################################################################### ■

uses System.SysUtils, System.Classes,
     LUX.DICOM.core,
     LUX.DICOM.VRs,
     LUX.DICOM.Syntax,
     LUX.DICOM.Source,
     LUX.DICOM.Datset;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 T Y P E 】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 C L A S S 】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmReader

     ///// パーサ本体
     ///// ・プリアンブル → File Meta（常に Explicit VR LE）→ 転送構文確定 → 本体、の順で読む。
     ///// ・未定義長は線形パースで解決する（全文検索はしない）。SQ は再帰、
     ///// 　カプセル化 Pixel Data はフラグメントに分解する。
     ///// ・Lenient（既定）では規格違反を Issues に記録して読み続け、Strict では例外を送出する。

     TdcmReader = class
     private
       ///// アクセス
       function GetIssues :TStrings;
     protected
       _Source :TdcmSource;
       _Strict :Boolean;
       _Issues :TStringList;
       _Syntax :TdcmTranSyn;
       _Meta   :TdcmDataset;
       _Body   :TdcmDataset;
       ///// メソッド
       procedure Issue( const Message_:String );
       procedure ReadMeta;
       procedure ReadVRVL( const Explic_:Boolean; out VR_:TdcmVRKind; out RawVR_:TdcmVRName; out VL_:Cardinal );
       procedure ReadInto( const Dataset_:TdcmDataset; const Stop_:Integer; const Explic_,UntilItemEnd_:Boolean );
       procedure ReadSequenceItems( const Seq_:TdcmSequence; const Stop_:Integer; const Explic_:Boolean );
       function ReadFragmentsBody( const Tag_:TdcmTag; const VR_:TdcmVRKind ) :TdcmFragments;
       procedure InflateRest;
     public
       constructor Create( const Strict_:Boolean = False );
       destructor Destroy; override;
       ///// プロパティ
       property Syntax :TdcmTranSyn read _Syntax;
       property Meta   :TdcmDataset read _Meta  ;
       property Body   :TdcmDataset read _Body  ;
       property Issues :TStrings    read GetIssues;
       ///// メソッド
       procedure LoadFromFile( const FileName_:String );
       /////
       function ExtractMeta :TdcmDataset;   // 所有権ごと取り出す（ファサード用）
       function ExtractBody :TdcmDataset;
     end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 R O U T I N E 】

implementation //############################################################### ■

uses System.ZLib;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 C L A S S 】

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmReader

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//////////////////////////////////////////////////////////////////////// アクセス

function TdcmReader.GetIssues :TStrings;
begin
     Result := _Issues;
end;

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//////////////////////////////////////////////////////////////////////// メソッド

procedure TdcmReader.Issue( const Message_:String );
begin
     if _Strict then raise EdcmError.Create( Message_, _Source.Pos );

     _Issues.Add( Format( '[%d] %s', [ _Source.Pos, Message_ ] ) );
end;

//------------------------------------------------------------------------------

procedure TdcmReader.ReadMeta;
var
   G, E   :Word;
   T      :TdcmTag;
   VR     :TdcmVRKind;
   RawVR  :TdcmVRName;
   VL     :Cardinal;
   P0     :Integer;
   V      :TdcmValue;
   U      :String;
begin
     ///// File Meta（グループ 0002）は転送構文に関わらず常に Explicit VR LE

     _Source.IsBig := False;

     while _Source.Remain >= 8 do
     begin
          G := _Source.PeekU16;

          if G <> $0002 then Break;

          P0 := _Source.Pos;

          G := _Source.ReadU16;
          E := _Source.ReadU16;

          T := TdcmTag.Create( G, E );

          ReadVRVL( True, VR, RawVR, VL );

          if VL = $FFFFFFFF then
          begin
               Issue( 'File Meta に未定義長要素がある: ' + T.ToString );  Break;
          end;

          if Integer( VL ) > _Source.Remain then
          begin
               Issue( Format( 'File Meta 要素 %s の長さ %d が残量 %d を超えている', [ T.ToString, VL, _Source.Remain ] ) );

               VL := Cardinal( _Source.Remain );
          end;

          V := TdcmValue.Create( T, VR );

          V.RawVR  := RawVR;
          V.VL     := VL;
          V.SrcPos := P0;
          V.Raw    := _Source.ReadBytes( Integer( VL ) );

          _Meta.Add( V );
     end;

     ///// 転送構文の確定

     U := _Meta.GetText( $0002, $0010 );

     if U = '' then
     begin
          Issue( '(0002,0010) TransferSyntaxUID が無い。Explicit VR LE と推定する' );

          U := UID_ExplicitVRLittleEndian;
     end;

     _Syntax := TdcmTranSyn.From( U );
end;

//------------------------------------------------------------------------------

procedure TdcmReader.ReadVRVL( const Explic_:Boolean; out VR_:TdcmVRKind; out RawVR_:TdcmVRName; out VL_:Cardinal );
var
   A, B :AnsiChar;
begin
     RawVR_[ 0 ] := #0;
     RawVR_[ 1 ] := #0;

     if not Explic_ then
     begin
          VR_ := vrNone;
          VL_ := _Source.ReadU32;  Exit;
     end;

     A := AnsiChar( _Source.ReadU8 );
     B := AnsiChar( _Source.ReadU8 );

     VR_ := VRKindOf( A, B );

     if VR_ <> vrNone then
     begin
          RawVR_[ 0 ] := A;
          RawVR_[ 1 ] := B;

          if _VRInfo_[ VR_ ].IsLong then
          begin
               _Source.Skip( 2 );  VL_ := _Source.ReadU32;
          end
          else VL_ := _Source.ReadU16;

          Exit;
     end;

     if ( A in [ 'A'..'Z' ] ) and ( B in [ 'A'..'Z' ] ) then
     begin
          ///// 未知の VR 名 → long 形式として読み、UN 相当で保全する
          ///// （2015 年以降に追加された VR は全て long 形式。将来 VR もこの規則が続く）

          Issue( Format( '未知の VR 名 "%s%s" — long 形式として読み込む', [ Char( A ), Char( B ) ] ) );

          RawVR_[ 0 ] := A;
          RawVR_[ 1 ] := B;

          VR_ := vrUN;

          _Source.Skip( 2 );  VL_ := _Source.ReadU32;
     end
     else
     begin
          ///// Explicit ストリームに紛れた Implicit 要素（規格違反）を救済

          Issue( 'Explicit VR ストリーム内に Implicit 要素が混入している' );

          _Source.Pos := _Source.Pos - 2;

          VR_ := vrNone;
          VL_ := _Source.ReadU32;
     end;
end;

//------------------------------------------------------------------------------

procedure TdcmReader.ReadInto( const Dataset_:TdcmDataset; const Stop_:Integer; const Explic_,UntilItemEnd_:Boolean );
var
   G, E   :Word;
   T      :TdcmTag;
   VR     :TdcmVRKind;
   RawVR  :TdcmVRName;
   VL     :Cardinal;
   P0     :Integer;
   V      :TdcmValue;
   Q      :TdcmSequence;
   F      :TdcmFragments;
   R      :TBytes;
   SubExp :Boolean;
begin
     while True do
     begin
          if ( Stop_ >= 0 ) and ( _Source.Pos >= Stop_ ) then Exit;

          if _Source.Remain = 0 then
          begin
               if UntilItemEnd_ then Issue( 'Item Delimitation Item (FFFE,E00D) の前にファイルが終わった' );

               Exit;
          end;

          if _Source.Remain < 8 then
          begin
               Issue( Format( '末尾に %d バイトの断片が残っている', [ _Source.Remain ] ) );

               _Source.Skip( _Source.Remain );  Exit;
          end;

          P0 := _Source.Pos;

          G := _Source.ReadU16;
          E := _Source.ReadU16;

          T := TdcmTag.Create( G, E );

          ///// 区切りタグ

          if T.IsDelimit then
          begin
               VL := _Source.ReadU32;

               if ( T.Elem = $E00D ) and UntilItemEnd_ then Exit;

               Issue( '予期しない区切りタグ: ' + T.ToString );

               if VL = $FFFFFFFF then VL := 0;

               if Integer( VL ) <= _Source.Remain then _Source.Skip( Integer( VL ) );

               Continue;
          end;

          ReadVRVL( Explic_, VR, RawVR, VL );

          ///// Implicit VR は辞書フックで解決する（未登録は vrNone のまま＝UN 相当で保全）

          if ( VR = vrNone ) and Assigned( _ResolveVR_ ) then VR := _ResolveVR_( T );

          ///// 未定義長（$FFFFFFFF）

          if VL = $FFFFFFFF then
          begin
               if ( T = TdcmTag.Create( $7FE0, $0010 ) ) and ( VR <> vrSQ ) then
               begin
                    ///// カプセル化 Pixel Data

                    F := ReadFragmentsBody( T, VR );

                    F.RawVR  := RawVR;
                    F.VL     := $FFFFFFFF;
                    F.SrcPos := P0;

                    Dataset_.Add( F );  Continue;
               end;

               if not ( VR in [ vrSQ, vrUN, vrNone ] ) then Issue( Format( '%s の VR %s は未定義長を取れない — SQ として読み込む', [ T.ToString, VRName( VR ) ] ) );

               ///// SQ（UN／vrNone の未定義長は CP-246 に従い Implicit VR LE として中身を読む）

               SubExp := ( VR = vrSQ ) and Explic_;

               Q := TdcmSequence.Create( T, VR );

               Q.RawVR  := RawVR;
               Q.VL     := $FFFFFFFF;
               Q.SrcPos := P0;

               Dataset_.Add( Q );

               ReadSequenceItems( Q, -1, SubExp );  Continue;
          end;

          ///// 定義長

          if VR = vrSQ then
          begin
               Q := TdcmSequence.Create( T, VR );

               Q.RawVR  := RawVR;
               Q.VL     := VL;
               Q.SrcPos := P0;

               Dataset_.Add( Q );

               if Integer( VL ) > _Source.Remain then
               begin
                    Issue( Format( 'SQ %s の長さ %d が残量 %d を超えている', [ T.ToString, VL, _Source.Remain ] ) );

                    VL := Cardinal( _Source.Remain );
               end;

               ReadSequenceItems( Q, _Source.Pos + Integer( VL ), Explic_ );  Continue;
          end;

          if Integer( VL ) > _Source.Remain then
          begin
               Issue( Format( '%s の長さ %d が残量 %d を超えている — 切り詰める', [ T.ToString, VL, _Source.Remain ] ) );

               VL := Cardinal( _Source.Remain );
          end;

          if Odd( VL ) then Issue( Format( '%s の長さ %d が奇数（規格違反）', [ T.ToString, VL ] ) );

          R := _Source.ReadBytes( Integer( VL ) );

          ///// Big Endian 構文は内部表現をリトルエンディアンへ正規化する（GDCM 流）
          ///// ・VR が既知の場合のみ。UN／未知 VR はバイトスワップ禁止（PS3.5 §6.2.2）。

          if _Source.IsBig and ( _VRInfo_[ VR ].Swap > 1 ) then SwapBuffBytes( R, _VRInfo_[ VR ].Swap );

          V := TdcmValue.Create( T, VR );

          V.RawVR  := RawVR;
          V.VL     := VL;
          V.SrcPos := P0;
          V.Raw    := R;

          Dataset_.Add( V );

          ///// 文字集合はデータセット単位で記憶する（PN 等のデコードに使う）

          if T = TdcmTag.Create( $0008, $0005 ) then Dataset_.Charse := V.Text;
     end;
end;

//------------------------------------------------------------------------------

procedure TdcmReader.ReadSequenceItems( const Seq_:TdcmSequence; const Stop_:Integer; const Explic_:Boolean );
var
   G, E :Word;
   T    :TdcmTag;
   L    :Cardinal;
   D    :TdcmDataset;
begin
     while True do
     begin
          if ( Stop_ >= 0 ) and ( _Source.Pos >= Stop_ ) then Exit;

          if _Source.Remain < 8 then
          begin
               if Stop_ < 0 then Issue( 'Sequence Delimitation Item (FFFE,E0DD) の前にファイルが終わった' );

               if _Source.Remain > 0 then _Source.Skip( _Source.Remain );

               Exit;
          end;

          G := _Source.ReadU16;
          E := _Source.ReadU16;

          T := TdcmTag.Create( G, E );
          L := _Source.ReadU32;

          if T = TdcmTag.Create( $FFFE, $E000 ) then
          begin
               D := TdcmDataset.Create;

               Seq_.Add( D );

               if L = $FFFFFFFF then ReadInto( D, -1, Explic_, True )
               else
               begin
                    if Integer( L ) > _Source.Remain then
                    begin
                         Issue( Format( 'Item の長さ %d が残量 %d を超えている', [ L, _Source.Remain ] ) );

                         L := Cardinal( _Source.Remain );
                    end;

                    ReadInto( D, _Source.Pos + Integer( L ), Explic_, False );
               end;

               Continue;
          end;

          if T = TdcmTag.Create( $FFFE, $E0DD ) then Exit;

          Issue( 'SQ 内に Item 以外のタグがある: ' + T.ToString + ' — シーケンスを打ち切る' );

          _Source.Pos := _Source.Pos - 8;  Exit;
     end;
end;

//------------------------------------------------------------------------------

function TdcmReader.ReadFragmentsBody( const Tag_:TdcmTag; const VR_:TdcmVRKind ) :TdcmFragments;
var
   G, E  :Word;
   T     :TdcmTag;
   L     :Cardinal;
   First :Boolean;
   B     :TBytes;
   Os    :TArray<Cardinal>;
   I     :Integer;
begin
     Result := TdcmFragments.Create( Tag_, VR_ );

     First := True;

     while True do
     begin
          if _Source.Remain < 8 then
          begin
               Issue( 'Sequence Delimitation Item (FFFE,E0DD) の前にファイルが終わった（カプセル化 Pixel Data）' );

               if _Source.Remain > 0 then _Source.Skip( _Source.Remain );

               Exit;
          end;

          G := _Source.ReadU16;
          E := _Source.ReadU16;

          T := TdcmTag.Create( G, E );
          L := _Source.ReadU32;

          if T = TdcmTag.Create( $FFFE, $E0DD ) then Exit;

          if T <> TdcmTag.Create( $FFFE, $E000 ) then
          begin
               Issue( 'カプセル化 Pixel Data 内に Item 以外のタグがある: ' + T.ToString + ' — 打ち切る' );

               _Source.Pos := _Source.Pos - 8;  Exit;
          end;

          if Integer( L ) > _Source.Remain then
          begin
               Issue( Format( 'フラグメントの長さ %d が残量 %d を超えている', [ L, _Source.Remain ] ) );

               L := Cardinal( _Source.Remain );
          end;

          B := _Source.ReadBytes( Integer( L ) );

          if First then
          begin
               ///// 第 1 アイテム＝Basic Offset Table（空のことも多い）

               SetLength( Os, Length( B ) div 4 );

               for I := 0 to High( Os ) do Os[ I ] := PCardinal( @B[ I*4 ] )^;

               Result.Offsets := Os;

               First := False;
          end
          else Result.Add( B );
     end;
end;

//------------------------------------------------------------------------------

procedure TdcmReader.InflateRest;
var
   S :TMemoryStream;
   Z :TDecompressionStream;
   R, O :TBytes;
   N :Integer;
   B :array [ 0..65535 ] of Byte;
begin
     ///// Deflated Explicit VR LE：メタ情報以降は生 Deflate ストリーム（zlib ヘッダ無し）

     R := _Source.ReadBytes( _Source.Remain );

     S := TMemoryStream.Create;

     try
          if Length( R ) > 0 then S.WriteBuffer( R[ 0 ], Length( R ) );

          S.Position := 0;

          Z := TDecompressionStream.Create( S, -15 );

          try
               O := nil;

               repeat
                     N := Z.Read( B, SizeOf( B ) );

                     if N > 0 then
                     begin
                          SetLength( O, Length( O ) + N );

                          Move( B[ 0 ], O[ Length( O ) - N ], N );
                     end;
               until N = 0;
          finally
               Z.Free;
          end;
     finally
          S.Free;
     end;

     _Source.Reset( O );
end;

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmReader.Create( const Strict_:Boolean = False );
begin
     inherited Create;

     _Source := nil;
     _Strict := Strict_;
     _Issues := TStringList.Create;
     _Meta   := TdcmDataset.Create;
     _Body   := TdcmDataset.Create;
end;

destructor TdcmReader.Destroy;
begin
     _Body  .Free;
     _Meta  .Free;
     _Issues.Free;
     _Source.Free;

     inherited;
end;

//////////////////////////////////////////////////////////////////////// メソッド

procedure TdcmReader.LoadFromFile( const FileName_:String );
var
   OK :Boolean;
   G  :Word;
   V0, V1 :AnsiChar;
begin
     _Source.Free;

     _Source := TdcmSource.FromFile( FileName_ );

     ///// プリアンブル 128B ＋ 'DICM'

     OK := False;

     if _Source.Size >= 132 then
     begin
          _Source.Pos := 128;

          OK := ( AnsiChar( _Source.ReadU8 ) = 'D' )
            and ( AnsiChar( _Source.ReadU8 ) = 'I' )
            and ( AnsiChar( _Source.ReadU8 ) = 'C' )
            and ( AnsiChar( _Source.ReadU8 ) = 'M' );
     end;

     if OK then ReadMeta
     else
     begin
          ///// プリアンブル無しファイルの救済：先頭のグループ番号と VR で判定する

          _Source.Pos := 0;

          CheckDCM( _Source.Size >= 8, 'DICOM ファイルではない（小さすぎる）: ' + FileName_ );

          G := _Source.PeekU16;

          CheckDCM( ( G = $0002 ) or ( G = $0008 ), 'DICOM ファイルではない: ' + FileName_ );

          Issue( 'プリアンブルが無い（生データセット）' );

          if G = $0002 then ReadMeta
          else
          begin
               ///// VR 位置の 2 バイトが既知 VR 名なら Explicit と推定

               V0 := AnsiChar( Byte( _Source.PeekU16( 4 ) and $FF ) );
               V1 := AnsiChar( Byte( _Source.PeekU16( 4 ) shr 8 ) );

               if VRKindOf( V0, V1 ) <> vrNone then _Syntax := TdcmTranSyn.From( UID_ExplicitVRLittleEndian )
                                               else _Syntax := TdcmTranSyn.From( UID_ImplicitVRLittleEndian );

               Issue( '転送構文を ' + _Syntax.Name + ' と推定した' );
          end;
     end;

     ///// Deflate 展開

     if _Syntax.IsDeflate then InflateRest;

     ///// 本体

     _Source.IsBig := _Syntax.IsBigEnd;

     ReadInto( _Body, -1, _Syntax.IsExplic, False );
end;

//------------------------------------------------------------------------------

function TdcmReader.ExtractMeta :TdcmDataset;
begin
     Result := _Meta;  _Meta := TdcmDataset.Create;
end;

function TdcmReader.ExtractBody :TdcmDataset;
begin
     Result := _Body;  _Body := TdcmDataset.Create;
end;

end. //######################################################################### ■
