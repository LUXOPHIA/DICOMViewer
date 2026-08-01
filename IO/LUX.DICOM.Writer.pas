unit LUX.DICOM.Writer;

interface //#################################################################### ■

///// シリアライザ（Explicit VR Little Endian で書き出す）
///// ・要素の値は生バイト列をそのまま書く（読み込んだものは無変換で復元される）。
///// ・未知 VR は生 2 文字を保全して long 形式で書く。vrNone（Implicit 未解決）は UN。
///// ・SQ とカプセル化 Pixel Data は未定義長＋区切り子の正規形で書く。
///// ・File Meta の (0002,0000) GroupLength は再計算する。
///// ・奇数長の値は VR のパディングバイトで偶数化する（PS3.5 の必須要件）。

uses System.SysUtils, System.Classes,
     LUX.DICOM.core,
     LUX.DICOM.VRs,
     LUX.DICOM.Syntax,
     LUX.DICOM.Datset;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 T Y P E 】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 C L A S S 】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmWriter

     TdcmWriter = class
     protected
       _S :TStream;
       ///// メソッド
       procedure WU8( const V_:Byte );
       procedure WU16( const V_:Word );
       procedure WU32( const V_:Cardinal );
       procedure WTag( const Tag_:TdcmTag );
       /////
       procedure ResolveVRName( const Elem_:TdcmElement; out A_,B_:AnsiChar; out Kind_:TdcmVRKind );
       procedure WriteValue( const Elem_:TdcmValue );
       procedure WriteSequence( const Elem_:TdcmSequence );
       procedure WriteFragments( const Elem_:TdcmFragments );
       procedure WriteElement( const Elem_:TdcmElement );
       procedure WriteDataset( const Dataset_:TdcmDataset );
       procedure WriteMeta( const Meta_:TdcmDataset );
     public
       ///// メソッド
       procedure SaveToStream( const Stream_:TStream; const Meta_,Body_:TdcmDataset );
       procedure SaveToFile( const FileName_:String; const Meta_,Body_:TdcmDataset );
     end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 R O U T I N E 】

implementation //############################################################### ■

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 C L A S S 】

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmWriter

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//////////////////////////////////////////////////////////////////////// メソッド

procedure TdcmWriter.WU8( const V_:Byte );
begin
     _S.WriteBuffer( V_, 1 );
end;

procedure TdcmWriter.WU16( const V_:Word );
begin
     _S.WriteBuffer( V_, 2 );
end;

procedure TdcmWriter.WU32( const V_:Cardinal );
begin
     _S.WriteBuffer( V_, 4 );
end;

procedure TdcmWriter.WTag( const Tag_:TdcmTag );
begin
     WU16( Tag_.Grup );
     WU16( Tag_.Elem );
end;

//------------------------------------------------------------------------------

procedure TdcmWriter.ResolveVRName( const Elem_:TdcmElement; out A_,B_:AnsiChar; out Kind_:TdcmVRKind );
begin
     if Elem_.RawVR[ 0 ] <> #0 then
     begin
          ///// ストリーム上の生 VR 名を保全（未知 VR を含む）

          A_ := Elem_.RawVR[ 0 ];
          B_ := Elem_.RawVR[ 1 ];

          Kind_ := VRKindOf( A_, B_ );

          if Kind_ = vrNone then Kind_ := vrUN;   // 未知 VR は long 形式・無変換

          Exit;
     end;

     if Elem_.VR <> vrNone then Kind_ := Elem_.VR
                           else Kind_ := vrUN;    // Implicit 未解決

     A_ := AnsiChar( _VRInfo_[ Kind_ ].Name[ 1 ] );
     B_ := AnsiChar( _VRInfo_[ Kind_ ].Name[ 2 ] );
end;

//------------------------------------------------------------------------------

procedure TdcmWriter.WriteValue( const Elem_:TdcmValue );
var
   A, B :AnsiChar;
   K    :TdcmVRKind;
   N    :Integer;
begin
     WTag( Elem_.Tag );

     ResolveVRName( Elem_, A, B, K );

     N := Length( Elem_.Raw );

     if Odd( N ) then Inc( N );   // パディングで偶数化

     WU8( Byte( A ) );
     WU8( Byte( B ) );

     if _VRInfo_[ K ].IsLong then
     begin
          WU16( 0 );  WU32( Cardinal( N ) );
     end
     else
     begin
          CheckDCM( N <= $FFFF, Elem_.Tag.ToString + ' の値長 ' + N.ToString + ' が short 形式に収まらない' );

          WU16( Word( N ) );
     end;

     if Length( Elem_.Raw ) > 0 then _S.WriteBuffer( Elem_.Raw[ 0 ], Length( Elem_.Raw ) );

     if Odd( Length( Elem_.Raw ) ) then WU8( _VRInfo_[ K ].Pad );
end;

//------------------------------------------------------------------------------

procedure TdcmWriter.WriteSequence( const Elem_:TdcmSequence );
var
   A, B :AnsiChar;
   K    :TdcmVRKind;
   I    :Integer;
begin
     WTag( Elem_.Tag );

     ResolveVRName( Elem_, A, B, K );

     ///// SQ は常に未定義長の正規形で書く（Item も未定義長＋Item Delimitation Item）

     WU8( Ord( 'S' ) );
     WU8( Ord( 'Q' ) );
     WU16( 0 );
     WU32( $FFFFFFFF );

     for I := 0 to Elem_.Count-1 do
     begin
          WU16( $FFFE );  WU16( $E000 );  WU32( $FFFFFFFF );

          WriteDataset( Elem_[ I ] );

          WU16( $FFFE );  WU16( $E00D );  WU32( 0 );
     end;

     WU16( $FFFE );  WU16( $E0DD );  WU32( 0 );
end;

//------------------------------------------------------------------------------

procedure TdcmWriter.WriteFragments( const Elem_:TdcmFragments );
var
   A, B :AnsiChar;
   K    :TdcmVRKind;
   I    :Integer;
   N    :Integer;
begin
     WTag( Elem_.Tag );

     ResolveVRName( Elem_, A, B, K );

     WU8( Byte( A ) );
     WU8( Byte( B ) );
     WU16( 0 );
     WU32( $FFFFFFFF );

     ///// Basic Offset Table

     WU16( $FFFE );  WU16( $E000 );  WU32( Cardinal( Length( Elem_.Offsets ) * 4 ) );

     for I := 0 to High( Elem_.Offsets ) do WU32( Elem_.Offsets[ I ] );

     ///// フラグメント

     for I := 0 to Elem_.Count-1 do
     begin
          N := Length( Elem_[ I ] );

          CheckDCM( not Odd( N ), 'カプセル化フラグメントの長さが奇数' );

          WU16( $FFFE );  WU16( $E000 );  WU32( Cardinal( N ) );

          if N > 0 then _S.WriteBuffer( Elem_[ I ][ 0 ], N );
     end;

     WU16( $FFFE );  WU16( $E0DD );  WU32( 0 );
end;

//------------------------------------------------------------------------------

procedure TdcmWriter.WriteElement( const Elem_:TdcmElement );
begin
     if Elem_ is TdcmValue     then begin  WriteValue    ( TdcmValue    ( Elem_ ) );  Exit;  end;
     if Elem_ is TdcmSequence  then begin  WriteSequence ( TdcmSequence ( Elem_ ) );  Exit;  end;
     if Elem_ is TdcmFragments then begin  WriteFragments( TdcmFragments( Elem_ ) );  Exit;  end;

     raise EdcmError.Create( '未知の要素型: ' + Elem_.ClassName );
end;

procedure TdcmWriter.WriteDataset( const Dataset_:TdcmDataset );
var
   E :TdcmElement;
begin
     for E in Dataset_ do WriteElement( E );
end;

//------------------------------------------------------------------------------

procedure TdcmWriter.WriteMeta( const Meta_:TdcmDataset );
var
   M   :TMemoryStream;
   S0  :TStream;
   E   :TdcmElement;
   Len :Cardinal;
begin
     ///// (0002,0000) 以外を一旦バッファへ書き、GroupLength を再計算する

     M := TMemoryStream.Create;

     try
          S0 := _S;
          _S := M;

          try
               for E in Meta_ do
                 if ( E.Tag.Grup = $0002 ) and ( E.Tag.Elem <> $0000 ) then WriteElement( E );
          finally
               _S := S0;
          end;

          Len := Cardinal( M.Size );

          ///// (0002,0000) UL 4

          WU16( $0002 );  WU16( $0000 );
          WU8( Ord( 'U' ) );  WU8( Ord( 'L' ) );
          WU16( 4 );
          WU32( Len );

          if M.Size > 0 then _S.CopyFrom( M, 0 );
     finally
          M.Free;
     end;
end;

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

//////////////////////////////////////////////////////////////////////// メソッド

procedure TdcmWriter.SaveToStream( const Stream_:TStream; const Meta_,Body_:TdcmDataset );
var
   Zero :array [ 0..127 ] of Byte;
begin
     _S := Stream_;

     ///// プリアンブル 128B ＋ 'DICM'

     FillChar( Zero, SizeOf( Zero ), 0 );

     _S.WriteBuffer( Zero, SizeOf( Zero ) );

     WU8( Ord( 'D' ) );  WU8( Ord( 'I' ) );  WU8( Ord( 'C' ) );  WU8( Ord( 'M' ) );

     WriteMeta( Meta_ );

     WriteDataset( Body_ );
end;

procedure TdcmWriter.SaveToFile( const FileName_:String; const Meta_,Body_:TdcmDataset );
var
   F :TFileStream;
begin
     F := TFileStream.Create( FileName_, fmCreate );

     try
          SaveToStream( F, Meta_, Body_ );
     finally
          F.Free;
     end;
end;

end. //######################################################################### ■
