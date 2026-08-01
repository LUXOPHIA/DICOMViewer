unit LUX.DICOM.Pixels;

interface //#################################################################### ■

///// ピクセルデータの解釈（GUI 非依存）
///// ・フレーム単位の遅延デコードで正規化バッファを返す。
///// ・ビット抽出（BitsStored／HighBit マスク・符号拡張）〜 Rescale 〜 Window 〜
///// 　MONOCHROME1 反転までを 1 本の LUT（8bit なら 256、16bit なら 65536 項目）に
///// 　畳み込み、変換は表引き 1 パスで行う。

uses System.SysUtils, System.Math,
     LUX.DICOM.core,
     LUX.DICOM.VRs,
     LUX.DICOM.Syntax,
     LUX.DICOM.Datset,
     LUX.DICOM.Codecs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 T Y P E 】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 C L A S S 】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmPixels

     TdcmPixels = class
     private
       ///// アクセス
       function GetFrameN :Integer;
     protected
       _Body   :TdcmDataset;    // 参照のみ（所有しない）
       _Syntax :TdcmTranSyn;
       _Info   :TdcmFrameInfo;
       _Mono1  :Boolean;        // MONOCHROME1（反転表示）
       _Slope  :Double;         // RescaleSlope（既定 1）
       _Inter  :Double;         // RescaleIntercept（既定 0）
       _WC     :Double;         // WindowCenter（タグ由来。無ければ NaN）
       _WW     :Double;         // WindowWidth
       _FrameN :Integer;
       _Frames :TArray<TBytes>; // デコード済みフレームのキャッシュ（遅延生成）
       ///// メソッド
       procedure ReadDescriptor;
       function DecodeFrame( const I_:Integer ) :TBytes;
     public
       constructor Create( const Body_:TdcmDataset; const Syntax_:TdcmTranSyn );
       ///// プロパティ
       property Body    :TdcmDataset   read _Body   ;
       property Syntax  :TdcmTranSyn   read _Syntax ;
       property Info    :TdcmFrameInfo read _Info   ;
       property IsMono1 :Boolean       read _Mono1  ;
       property Slope   :Double        read _Slope  ;
       property Inter   :Double        read _Inter  ;
       property WC      :Double        read _WC     ;   // NaN = タグ無し
       property WW      :Double        read _WW     ;
       property FrameN  :Integer       read GetFrameN;
       ///// メソッド
       function FrameRaw( const I_:Integer ) :TBytes;                     // 生ピクセル（デコード済・LE）
       procedure AutoWindow( const I_:Integer; out WC_,WW_:Double );      // 実測 min/max から導出
       procedure DefaultWindow( const I_:Integer; out WC_,WW_:Double );   // タグ優先→自動
       function BuildLUT8( const WC_,WW_:Double ) :TArray<Byte>;          // 生値 → 0..255（反転込み）
     end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 R O U T I N E 】

///// 生の格納値（BitsAllocated 単位のビットパターン）から画素値を取り出す。
///// ・Delphi の shl／shr は 32bit へ昇格するため、Word キャストで上位ゴミを確実に落とす。
///// ・shr は論理シフトなので、符号付きは SmallInt キャスト後の整除で符号拡張する。

function ExtractStored( const Raw_:Word; const BitsS_,HighB_:Integer; const Signed_:Boolean ) :Integer; inline;

implementation //############################################################### ■

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 R O U T I N E 】

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% ExtractStored

function ExtractStored( const Raw_:Word; const BitsS_,HighB_:Integer; const Signed_:Boolean ) :Integer;
var
   W :Word;
begin
     W := Word( Raw_ shl ( 15 - HighB_ ) );   // HighBit より上位のゴミ（オーバーレイ等）を落とす

     if Signed_ then Result := SmallInt( W ) div ( 1 shl ( 16 - BitsS_ ) )   // 下位は 0 埋め済みなので整除は正確
                else Result := W shr ( 16 - BitsS_ );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 C L A S S 】

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmPixels

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//////////////////////////////////////////////////////////////////////// アクセス

function TdcmPixels.GetFrameN :Integer;
begin
     Result := _FrameN;
end;

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//////////////////////////////////////////////////////////////////////// メソッド

procedure TdcmPixels.ReadDescriptor;
var
   PI :String;
   E  :TdcmElement;
   Ws :TArray<Double>;
begin
     with _Info do
     begin
          CountX  := _Body.GetInt( $0028, $0011 );
          CountY  := _Body.GetInt( $0028, $0010 );
          BitsA   := _Body.GetInt( $0028, $0100, 16 );
          BitsS   := _Body.GetInt( $0028, $0101, BitsA );
          HighB   := _Body.GetInt( $0028, $0102, BitsS - 1 );
          Signed  := _Body.GetInt( $0028, $0103 ) = 1;
          Samples := _Body.GetInt( $0028, $0002, 1 );
          Planar  := _Body.GetInt( $0028, $0006 );

          CheckDCM( ( CountX > 0 ) and ( CountY > 0 ), 'Rows／Columns が不正（' + CountY.ToString + '×' + CountX.ToString + '）' );
          CheckDCM( ( BitsA = 8 ) or ( BitsA = 16 ), 'BitsAllocated ' + BitsA.ToString + ' は未対応（8／16 のみ）' );
          CheckDCM( ( BitsS >= 1 ) and ( BitsS <= BitsA ) and ( HighB >= BitsS - 1 ) and ( HighB < BitsA ),
                    Format( 'BitsStored=%d／HighBit=%d が不正', [ BitsS, HighB ] ) );
     end;

     PI := _Body.GetText( $0028, $0004 ).Trim;

     _Mono1 := ( PI = 'MONOCHROME1' );

     _Slope := _Body.GetFloat( $0028, $1053, 1 );
     _Inter := _Body.GetFloat( $0028, $1052, 0 );

     if _Slope = 0 then _Slope := 1;

     ///// WC／WW は多値（DS 1-n）のことがある。第 1 値を既定とする

     _WC := Double.NaN;
     _WW := Double.NaN;

     E := _Body.Find( $0028, $1050 );

     if E is TdcmValue then
     begin
          Ws := TdcmValue( E ).AsFloats;

          if Length( Ws ) > 0 then _WC := Ws[ 0 ];
     end;

     E := _Body.Find( $0028, $1051 );

     if E is TdcmValue then
     begin
          Ws := TdcmValue( E ).AsFloats;

          if Length( Ws ) > 0 then _WW := Ws[ 0 ];
     end;

     ///// フレーム数

     _FrameN := StrToIntDef( _Body.GetText( $0028, $0008, '1' ).Trim, 1 );

     if _FrameN < 1 then _FrameN := 1;

     SetLength( _Frames, _FrameN );
end;

//------------------------------------------------------------------------------

function TdcmPixels.DecodeFrame( const I_:Integer ) :TBytes;
var
   E     :TdcmElement;
   FrmSz :Integer;
   Codec :TdcmCodec;
   F     :TdcmFragments;
   K     :Integer;
   Whole :TBytes;
   P     :Integer;
begin
     E := _Body.Find( $7FE0, $0010 );

     CheckDCM( Assigned( E ), '(7FE0,0010) PixelData が無い' );

     with _Info do FrmSz := CountX * CountY * Samples * ( BitsA div 8 );

     ///// 非圧縮: 生バイト列を等分にスライスする

     if E is TdcmValue then
     begin
          CheckDCM( Length( TdcmValue( E ).Raw ) >= FrmSz * ( I_ + 1 ),
                    Format( 'PixelData が不足（フレーム %d に必要な %d バイトが無い）', [ I_, FrmSz * ( I_ + 1 ) ] ) );

          Exit( Copy( TdcmValue( E ).Raw, FrmSz * I_, FrmSz ) );
     end;

     ///// カプセル化: コーデックでフラグメントをデコードする

     CheckDCM( E is TdcmFragments, 'PixelData の要素型が不正' );

     Codec := FindCodec( _Syntax.UID );

     CheckDCM( Assigned( Codec ), '転送構文 ' + _Syntax.Name + ' のコーデックが未登録' );

     F := TdcmFragments( E );

     if _FrameN = 1 then
     begin
          ///// 単フレーム: 全フラグメントを連結して 1 フレーム

          if F.Count = 1 then Whole := F[ 0 ]
          else
          begin
               P := 0;

               for K := 0 to F.Count-1 do Inc( P, Length( F[ K ] ) );

               SetLength( Whole, P );

               P := 0;

               for K := 0 to F.Count-1 do
               begin
                    if Length( F[ K ] ) > 0 then Move( F[ K ][ 0 ], Whole[ P ], Length( F[ K ] ) );

                    Inc( P, Length( F[ K ] ) );
               end;
          end;

          Exit( Codec.Decode( Whole, _Info ) );
     end;

     ///// 多フレーム: フラグメント数＝フレーム数なら 1:1 対応

     CheckDCM( F.Count = _FrameN,
               Format( '多フレーム（%d）とフラグメント数（%d）の対応を解決できない', [ _FrameN, F.Count ] ) );

     Result := Codec.Decode( F[ I_ ], _Info );
end;

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmPixels.Create( const Body_:TdcmDataset; const Syntax_:TdcmTranSyn );
begin
     inherited Create;

     _Body   := Body_;
     _Syntax := Syntax_;

     ReadDescriptor;
end;

//////////////////////////////////////////////////////////////////////// メソッド

function TdcmPixels.FrameRaw( const I_:Integer ) :TBytes;
begin
     CheckDCM( ( I_ >= 0 ) and ( I_ < _FrameN ), 'フレーム番号が範囲外: ' + I_.ToString );

     if Length( _Frames[ I_ ] ) = 0 then _Frames[ I_ ] := DecodeFrame( I_ );   // 遅延デコード＋キャッシュ

     Result := _Frames[ I_ ];
end;

//------------------------------------------------------------------------------

procedure TdcmPixels.AutoWindow( const I_:Integer; out WC_,WW_:Double );
var
   B      :TBytes;
   I, N   :Integer;
   V      :Integer;
   MinV   :Integer;
   MaxV   :Integer;
begin
     B := FrameRaw( I_ );

     MinV := MaxInt;
     MaxV := -MaxInt;

     with _Info do
     begin
          if BitsA = 8 then
          begin
               N := Length( B );

               for I := 0 to N-1 do
               begin
                    V := ExtractStored( B[ I ], BitsS, HighB, Signed );

                    if V < MinV then MinV := V;
                    if V > MaxV then MaxV := V;
               end;
          end
          else
          begin
               N := Length( B ) div 2;

               for I := 0 to N-1 do
               begin
                    V := ExtractStored( PWord( @B[ I*2 ] )^, BitsS, HighB, Signed );

                    if V < MinV then MinV := V;
                    if V > MaxV then MaxV := V;
               end;
          end;
     end;

     if MinV > MaxV then begin  MinV := 0;  MaxV := 1;  end;

     WC_ := _Slope * ( MinV + MaxV ) / 2 + _Inter;
     WW_ := _Slope * ( MaxV - MinV );

     if WW_ < 1 then WW_ := 1;
end;

procedure TdcmPixels.DefaultWindow( const I_:Integer; out WC_,WW_:Double );
begin
     if _WC.IsNan or _WW.IsNan or ( _WW < 1 ) then AutoWindow( I_, WC_, WW_ )
     else
     begin
          WC_ := _WC;
          WW_ := _WW;
     end;
end;

//------------------------------------------------------------------------------

function TdcmPixels.BuildLUT8( const WC_,WW_:Double ) :TArray<Byte>;
var
   N, I :Integer;
   V    :Double;
   A, B :Double;
   Y    :Integer;
   WW   :Double;
begin
     if _Info.BitsA = 8 then N := 256
                        else N := 65536;

     SetLength( Result, N );

     WW := Max( WW_, 1 );

     A := WC_ - 0.5 - ( WW - 1 ) / 2;   // 下限
     B := WW - 1;                       // 幅

     for I := 0 to N-1 do
     begin
          with _Info do V := _Slope * ExtractStored( Word( I ), BitsS, HighB, Signed ) + _Inter;

          if B <= 0 then
          begin
               if V <= A then Y := 0 else Y := 255;
          end
          else Y := Round( EnsureRange( ( V - A ) / B, 0, 1 ) * 255 );   // PS3.3 C.11.2.1.2 の線形 Window

          if _Mono1 then Y := 255 - Y;

          Result[ I ] := Byte( Y );
     end;
end;

end. //######################################################################### ■
