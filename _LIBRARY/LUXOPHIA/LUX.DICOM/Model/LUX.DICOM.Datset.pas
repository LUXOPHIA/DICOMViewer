unit LUX.DICOM.Datset;

interface //#################################################################### ■

uses System.SysUtils, System.Classes, System.Generics.Collections,
     LUX.DICOM.core,
     LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 T Y P E 】

     TdcmDataset = class;   // 前方宣言（TdcmSequence が子として保持する）

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmVRName

     TdcmVRName = array [ 0..1 ] of AnsiChar;   // ストリーム上の生 VR 名（無しは #0#0）

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 C L A S S 】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmElement

     ///// データ要素の抽象基底
     ///// ・ストリーム上の生 VR 名（未知 VR の保全）と生 VL（$FFFFFFFF ＝未定義長の記録）を
     ///// 　常に保持する（GDCM 流。Implicit ⇔ Explicit のロスレス往復のため）。

     TdcmElement = class abstract
     protected
       _Tag    :TdcmTag;
       _VR     :TdcmVRKind;   // 確定 VR（Implicit 未解決は vrNone）
       _RawVR  :TdcmVRName;   // ストリーム上の生 VR 名
       _VL     :Cardinal;     // ストリーム上の生 VL
       _SrcPos :Int64;        // ファイル内バイト位置（診断用。生成要素は -1）
     public
       constructor Create( const Tag_:TdcmTag; const VR_:TdcmVRKind );
       ///// プロパティ
       property Tag    :TdcmTag    read _Tag                  ;
       property VR     :TdcmVRKind read _VR     write _VR     ;   // 辞書解決で後から確定できる
       property RawVR  :TdcmVRName read _RawVR  write _RawVR  ;
       property VL     :Cardinal   read _VL     write _VL     ;
       property SrcPos :Int64      read _SrcPos write _SrcPos ;
       ///// メソッド
       function VRText :String;                                  // 表示用 VR 名（生 VR 優先）
       function Text( const Charse_:String = '' ) :String; virtual;
     end;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmValue

     ///// 値要素（SQ・カプセル化以外の全て）
     ///// ・値は無変換の生バイト列で保持し、解釈は取得時に行う。

     TdcmValue = class( TdcmElement )
     protected
       _Raw :TBytes;
     public
       ///// プロパティ
       property Raw :TBytes read _Raw write _Raw;
       ///// メソッド
       function Text( const Charse_:String = '' ) :String; override;
       /////
       function AsInt( const Def_:Integer = 0 ) :Integer;
       function AsFloat( const Def_:Double = 0 ) :Double;
       function AsFloats :TArray<Double>;                        // 多値（DS 等）
     end;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmSequence

     ///// シーケンス要素（SQ）。子データセットのリストを持つ（Composite）。

     TdcmSequence = class( TdcmElement )
     private
       ///// アクセス
       function GetCount :Integer;
       function GetItems( const I_:Integer ) :TdcmDataset;
     protected
       _Items :TObjectList<TdcmDataset>;
     public
       constructor Create( const Tag_:TdcmTag; const VR_:TdcmVRKind );
       destructor Destroy; override;
       ///// プロパティ
       property Count                    :Integer     read GetCount;
       property Items[ const I_:Integer ] :TdcmDataset read GetItems; default;
       ///// メソッド
       procedure Add( const Item_:TdcmDataset );
       function Text( const Charse_:String = '' ) :String; override;
     end;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmFragments

     ///// カプセル化 Pixel Data 専用の要素
     ///// ・第 1 アイテム＝Basic Offset Table（空可）、以降＝圧縮フラグメント。

     TdcmFragments = class( TdcmElement )
     private
       ///// アクセス
       function GetCount :Integer;
       function GetFrags( const I_:Integer ) :TBytes;
     protected
       _Offsets :TArray<Cardinal>;
       _Frags   :TArray<TBytes>;
     public
       ///// プロパティ
       property Offsets                  :TArray<Cardinal> read _Offsets write _Offsets;
       property Count                    :Integer          read GetCount               ;
       property Frags[ const I_:Integer ] :TBytes           read GetFrags               ; default;
       ///// メソッド
       procedure Add( const Frag_:TBytes );
       function Text( const Charse_:String = '' ) :String; override;
     end;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmDataset

     ///// データセット＝タグ昇順を常時維持する要素リスト
     ///// ・DICOM はタグ昇順で符号化されるため、パース中の Add はほぼ常に O(1) 末尾追加。
     ///// 　順序違反ファイルが来ても二分探索位置への挿入で救済する。検索は O(log n)。

     TdcmDataset = class
     private
       ///// アクセス
       function GetCount :Integer;
       function GetItems( const I_:Integer ) :TdcmElement;
     protected
       _Elems  :TObjectList<TdcmElement>;
       _Charse :String;                     // SpecificCharacterSet (0008,0005) の生値
       ///// メソッド
       function FindIndex( const Tag_:TdcmTag; out Index_:Integer ) :Boolean;   // 二分探索
     public
       constructor Create;
       destructor Destroy; override;
       ///// プロパティ
       property Count                    :Integer     read GetCount               ;
       property Items[ const I_:Integer ] :TdcmElement read GetItems               ; default;
       property Charse                   :String      read _Charse  write _Charse ;
       ///// メソッド
       procedure Add( const Elem_:TdcmElement );
       function Contains( const Tag_:TdcmTag ) :Boolean;
       function Find( const Tag_:TdcmTag ) :TdcmElement; overload;               // 無ければ nil
       function Find( const Grup_,Elem_:Word ) :TdcmElement; overload;
       function GetEnumerator :TEnumerator<TdcmElement>;                         // タグ順走査
       ///// 便利アクセサ（無ければ既定値を返し、例外を投げない）
       function GetText( const Grup_,Elem_:Word; const Def_:String = '' ) :String;
       function GetInt( const Grup_,Elem_:Word; const Def_:Integer = 0 ) :Integer;
       function GetFloat( const Grup_,Elem_:Word; const Def_:Double = 0 ) :Double;
     end;

//var //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 V A R I A B L E 】

var
   ///// 文字列デコーダの差し替え口
   ///// ・既定は ASCII／ANSI 簡易実装。LUX.DICOM.Charse が initialization で
   ///// 　ISO 2022 対応版に差し替える（コーデック登録制と同じプラグイン継ぎ目）。
   _DecodeText_ : function( const Buff_:TBytes; const Charse_:String ) :String;

   ///// Implicit VR の解決フック
   ///// ・既定は nil（未解決＝vrNone のまま）。LUX.DICOM.Dictio が initialization で
   ///// 　辞書実装に差し替える。Reader はこれで Implicit の定義長 SQ も見分けられる。
   _ResolveVR_ : function( const Tag_:TdcmTag ) :TdcmVRKind;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 R O U T I N E 】

implementation //############################################################### ■

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 C L A S S 】

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmElement

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmElement.Create( const Tag_:TdcmTag; const VR_:TdcmVRKind );
begin
     inherited Create;

     _Tag    := Tag_;
     _VR     := VR_;

     _RawVR[ 0 ] := #0;
     _RawVR[ 1 ] := #0;

     _VL     := 0;
     _SrcPos := -1;
end;

//////////////////////////////////////////////////////////////////////// メソッド

function TdcmElement.VRText :String;
begin
     if _RawVR[ 0 ] <> #0 then Result := String( AnsiString( _RawVR[ 0 ] ) + AnsiString( _RawVR[ 1 ] ) )
                          else Result := VRName( _VR );
end;

function TdcmElement.Text( const Charse_:String = '' ) :String;
begin
     Result := '';
end;

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmValue

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

//////////////////////////////////////////////////////////////////////// メソッド

function TdcmValue.Text( const Charse_:String = '' ) :String;
var
   N, I :Integer;
begin
     N := Length( _Raw );

     if N = 0 then Exit( '' );

     if _VRInfo_[ _VR ].IsStr then
     begin
          Result := _DecodeText_( _Raw, Charse_ ).TrimRight( [ ' ', #0 ] );  Exit;
     end;

     case _VR of
       vrAT: begin
                  Result := '';

                  I := 0;

                  while I + 4 <= N do
                  begin
                       if I > 0 then Result := Result + '\';

                       Result := Result + Format( '(%.4X,%.4X)', [ PWord( @_Raw[ I ] )^, PWord( @_Raw[ I+2 ] )^ ] );

                       Inc( I, 4 );
                  end;
             end;
       vrUS: begin
                  Result := '';

                  I := 0;

                  while I + 2 <= N do
                  begin
                       if I > 0 then Result := Result + '\';

                       Result := Result + PWord( @_Raw[ I ] )^.ToString;

                       Inc( I, 2 );
                  end;
             end;
       vrSS: begin
                  Result := '';

                  I := 0;

                  while I + 2 <= N do
                  begin
                       if I > 0 then Result := Result + '\';

                       Result := Result + PSmallInt( @_Raw[ I ] )^.ToString;

                       Inc( I, 2 );
                  end;
             end;
       vrUL: begin
                  Result := '';

                  I := 0;

                  while I + 4 <= N do
                  begin
                       if I > 0 then Result := Result + '\';

                       Result := Result + PCardinal( @_Raw[ I ] )^.ToString;

                       Inc( I, 4 );
                  end;
             end;
       vrSL: begin
                  Result := '';

                  I := 0;

                  while I + 4 <= N do
                  begin
                       if I > 0 then Result := Result + '\';

                       Result := Result + PInteger( @_Raw[ I ] )^.ToString;

                       Inc( I, 4 );
                  end;
             end;
       vrUV: begin
                  Result := '';

                  I := 0;

                  while I + 8 <= N do
                  begin
                       if I > 0 then Result := Result + '\';

                       Result := Result + PUInt64( @_Raw[ I ] )^.ToString;

                       Inc( I, 8 );
                  end;
             end;
       vrSV: begin
                  Result := '';

                  I := 0;

                  while I + 8 <= N do
                  begin
                       if I > 0 then Result := Result + '\';

                       Result := Result + PInt64( @_Raw[ I ] )^.ToString;

                       Inc( I, 8 );
                  end;
             end;
       vrFL: begin
                  Result := '';

                  I := 0;

                  while I + 4 <= N do
                  begin
                       if I > 0 then Result := Result + '\';

                       Result := Result + FloatToStr( PSingle( @_Raw[ I ] )^ );

                       Inc( I, 4 );
                  end;
             end;
       vrFD: begin
                  Result := '';

                  I := 0;

                  while I + 8 <= N do
                  begin
                       if I > 0 then Result := Result + '\';

                       Result := Result + FloatToStr( PDouble( @_Raw[ I ] )^ );

                       Inc( I, 8 );
                  end;
             end;
     else
          Result := Format( '<%d バイト>', [ N ] );
     end;
end;

//------------------------------------------------------------------------------

function TdcmValue.AsInt( const Def_:Integer = 0 ) :Integer;
var
   S :String;
begin
     Result := Def_;

     case _VR of
       vrUS: if Length( _Raw ) >= 2 then Result := PWord    ( @_Raw[ 0 ] )^;
       vrSS: if Length( _Raw ) >= 2 then Result := PSmallInt( @_Raw[ 0 ] )^;
       vrUL: if Length( _Raw ) >= 4 then Result := Integer( PCardinal( @_Raw[ 0 ] )^ );
       vrSL: if Length( _Raw ) >= 4 then Result := PInteger ( @_Raw[ 0 ] )^;
       vrSV,
       vrUV: if Length( _Raw ) >= 8 then Result := Integer( PInt64( @_Raw[ 0 ] )^ );
       vrIS,
       vrDS: begin
                  S := Text.Split( [ '\' ] )[ 0 ].Trim;

                  Result := StrToIntDef( S, Def_ );
             end;
       vrNone: case Length( _Raw ) of   // Implicit 未解決（US/SS 候補等）はサイズで推定
                 2: Result := PWord    ( @_Raw[ 0 ] )^;
                 4: Result := Integer( PCardinal( @_Raw[ 0 ] )^ );
               end;
     end;
end;

function TdcmValue.AsFloat( const Def_:Double = 0 ) :Double;
var
   S :String;
   V :Double;
begin
     Result := Def_;

     case _VR of
       vrFL: if Length( _Raw ) >= 4 then Result := PSingle( @_Raw[ 0 ] )^;
       vrFD: if Length( _Raw ) >= 8 then Result := PDouble( @_Raw[ 0 ] )^;
       vrDS,
       vrIS: begin
                  S := Text.Split( [ '\' ] )[ 0 ].Trim;

                  if TryStrToFloat( S, V, TFormatSettings.Invariant ) then Result := V;
             end;
       vrUS, vrSS, vrUL, vrSL, vrSV, vrUV, vrNone: Result := AsInt( 0 );
     end;
end;

function TdcmValue.AsFloats :TArray<Double>;
var
   Ss :TArray<String>;
   I, N :Integer;
   V :Double;
begin
     case _VR of
       vrDS,
       vrIS: begin
                  Ss := Text.Split( [ '\' ] );

                  N := 0;  SetLength( Result, Length( Ss ) );

                  for I := 0 to High( Ss ) do
                  begin
                       if TryStrToFloat( Ss[ I ].Trim, V, TFormatSettings.Invariant ) then
                       begin
                            Result[ N ] := V;  Inc( N );
                       end;
                  end;

                  SetLength( Result, N );
             end;
       vrFL: begin
                  SetLength( Result, Length( _Raw ) div 4 );

                  for I := 0 to High( Result ) do Result[ I ] := PSingle( @_Raw[ I*4 ] )^;
             end;
       vrFD: begin
                  SetLength( Result, Length( _Raw ) div 8 );

                  for I := 0 to High( Result ) do Result[ I ] := PDouble( @_Raw[ I*8 ] )^;
             end;
     else
          if Length( _Raw ) > 0 then Result := [ AsFloat( 0 ) ]
                                else Result := [];
     end;
end;

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmSequence

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//////////////////////////////////////////////////////////////////////// アクセス

function TdcmSequence.GetCount :Integer;
begin
     Result := _Items.Count;
end;

function TdcmSequence.GetItems( const I_:Integer ) :TdcmDataset;
begin
     Result := _Items[ I_ ];
end;

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmSequence.Create( const Tag_:TdcmTag; const VR_:TdcmVRKind );
begin
     inherited;

     _Items := TObjectList<TdcmDataset>.Create;
end;

destructor TdcmSequence.Destroy;
begin
     _Items.Free;

     inherited;
end;

//////////////////////////////////////////////////////////////////////// メソッド

procedure TdcmSequence.Add( const Item_:TdcmDataset );
begin
     _Items.Add( Item_ );
end;

function TdcmSequence.Text( const Charse_:String = '' ) :String;
begin
     Result := Format( '<Sequence: %d item(s)>', [ Count ] );
end;

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmFragments

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//////////////////////////////////////////////////////////////////////// アクセス

function TdcmFragments.GetCount :Integer;
begin
     Result := Length( _Frags );
end;

function TdcmFragments.GetFrags( const I_:Integer ) :TBytes;
begin
     Result := _Frags[ I_ ];
end;

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

//////////////////////////////////////////////////////////////////////// メソッド

procedure TdcmFragments.Add( const Frag_:TBytes );
begin
     _Frags := _Frags + [ Frag_ ];
end;

function TdcmFragments.Text( const Charse_:String = '' ) :String;
var
   N :Int64;
   I :Integer;
begin
     N := 0;

     for I := 0 to High( _Frags ) do Inc( N, Length( _Frags[ I ] ) );

     Result := Format( '<Fragments: %d 個 / 計 %d バイト / BOT %d 項目>', [ Count, N, Length( _Offsets ) ] );
end;

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmDataset

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//////////////////////////////////////////////////////////////////////// アクセス

function TdcmDataset.GetCount :Integer;
begin
     Result := _Elems.Count;
end;

function TdcmDataset.GetItems( const I_:Integer ) :TdcmElement;
begin
     Result := _Elems[ I_ ];
end;

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//////////////////////////////////////////////////////////////////////// メソッド

function TdcmDataset.FindIndex( const Tag_:TdcmTag; out Index_:Integer ) :Boolean;
var
   L, H, M :Integer;
   K       :Cardinal;
begin
     L := 0;
     H := _Elems.Count - 1;

     while L <= H do
     begin
          M := ( L + H ) shr 1;

          K := _Elems[ M ].Tag.Key;

          if K < Tag_.Key then L := M + 1
                          else
          if K > Tag_.Key then H := M - 1
                          else
          begin
               Index_ := M;  Exit( True );
          end;
     end;

     Index_ := L;  Result := False;
end;

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmDataset.Create;
begin
     inherited;

     _Elems  := TObjectList<TdcmElement>.Create;
     _Charse := '';
end;

destructor TdcmDataset.Destroy;
begin
     _Elems.Free;

     inherited;
end;

//////////////////////////////////////////////////////////////////////// メソッド

procedure TdcmDataset.Add( const Elem_:TdcmElement );
var
   I :Integer;
begin
     ///// 昇順入力（DICOM の符号化規則）なら O(1) の末尾追加

     if ( _Elems.Count = 0 ) or ( _Elems.Last.Tag < Elem_.Tag ) then
     begin
          _Elems.Add( Elem_ );  Exit;
     end;

     ///// 順序違反ファイルの救済（同一タグは上書き）

     if FindIndex( Elem_.Tag, I ) then _Elems[ I ] := Elem_   // TObjectList が旧要素を破棄する
                                  else _Elems.Insert( I, Elem_ );
end;

function TdcmDataset.Contains( const Tag_:TdcmTag ) :Boolean;
var
   I :Integer;
begin
     Result := FindIndex( Tag_, I );
end;

function TdcmDataset.Find( const Tag_:TdcmTag ) :TdcmElement;
var
   I :Integer;
begin
     if FindIndex( Tag_, I ) then Result := _Elems[ I ]
                             else Result := nil;
end;

function TdcmDataset.Find( const Grup_,Elem_:Word ) :TdcmElement;
begin
     Result := Find( TdcmTag.Create( Grup_, Elem_ ) );
end;

function TdcmDataset.GetEnumerator :TEnumerator<TdcmElement>;
begin
     Result := _Elems.GetEnumerator;
end;

//////////////////////////////////////////////////////////////////////// 便利アクセサ

function TdcmDataset.GetText( const Grup_,Elem_:Word; const Def_:String = '' ) :String;
var
   E :TdcmElement;
begin
     E := Find( Grup_, Elem_ );

     if E is TdcmValue then Result := E.Text( _Charse )
                       else Result := Def_;
end;

function TdcmDataset.GetInt( const Grup_,Elem_:Word; const Def_:Integer = 0 ) :Integer;
var
   E :TdcmElement;
begin
     E := Find( Grup_, Elem_ );

     if E is TdcmValue then Result := TdcmValue( E ).AsInt( Def_ )
                       else Result := Def_;
end;

function TdcmDataset.GetFloat( const Grup_,Elem_:Word; const Def_:Double = 0 ) :Double;
var
   E :TdcmElement;
begin
     E := Find( Grup_, Elem_ );

     if E is TdcmValue then Result := TdcmValue( E ).AsFloat( Def_ )
                       else Result := Def_;
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 R O U T I N E 】

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% DecodeTextANSI

///// 既定の簡易デコーダ（ASCII／ANSI）。ISO 2022 対応は LUX.DICOM.Charse が差し替える。

function DecodeTextANSI( const Buff_:TBytes; const Charse_:String ) :String;
begin
     if Length( Buff_ ) = 0 then Exit( '' );

     Result := TEncoding.ANSI.GetString( Buff_ );
end;

initialization //=============================================================== ■

     _DecodeText_ := DecodeTextANSI;

end. //######################################################################### ■
