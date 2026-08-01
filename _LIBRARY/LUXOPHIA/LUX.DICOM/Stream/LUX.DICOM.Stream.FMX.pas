unit LUX.DICOM.Stream.FMX;

interface //#################################################################### ■

///// FMX TBitmap への変換（本ライブラリで唯一 FMX に依存するユニット）
///// ・生値 → BGRA の LUT を組み、Map ＋ 走査線ポインタの表引き 1 パスで転送する。
///// 　SetPixel は使わない（3000×3000 = 900 万回の呼出しは UI が数十秒止まる）。
///// ・グレイは R=G=B なので、BGRA／RGBA どちらのピクセル形式でも同じ 32bit 値になる。

uses System.SysUtils,
     FMX.Graphics,
     LUX.DICOM.core,
     LUX.DICOM.Pixels;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 R O U T I N E 】

procedure DcmFrameToBitmap( const Pixels_:TdcmPixels; const Frame_:Integer; const WC_,WW_:Double; const Bitmap_:TBitmap );

implementation //############################################################### ■

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 R O U T I N E 】

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% DcmFrameToBitmap

procedure DcmFrameToBitmap( const Pixels_:TdcmPixels; const Frame_:Integer; const WC_,WW_:Double; const Bitmap_:TBitmap );
var
   Raw     :TBytes;
   L8      :TArray<Byte>;
   LC      :TArray<Cardinal>;
   I, X, Y :Integer;
   W, H    :Integer;
   G       :Cardinal;
   D       :TBitmapData;
   S16     :PWord;
   S8      :PByte;
   DP      :PCardinal;
begin
     CheckDCM( Pixels_.Info.Samples = 1, 'カラー画像（SamplesPerPixel≠1）は未対応' );

     W := Pixels_.Info.CountX;
     H := Pixels_.Info.CountY;

     Raw := Pixels_.FrameRaw( Frame_ );
     L8  := Pixels_.BuildLUT8( WC_, WW_ );

     ///// 生値 → 不透明グレイ BGRA の直引き表

     SetLength( LC, Length( L8 ) );

     for I := 0 to High( L8 ) do
     begin
          G := L8[ I ];

          LC[ I ] := $FF000000 or ( G shl 16 ) or ( G shl 8 ) or G;
     end;

     Bitmap_.SetSize( W, H );

     CheckDCM( Bitmap_.Map( TMapAccess.Write, D ), 'TBitmap.Map に失敗' );

     try
          if Pixels_.Info.BitsA = 16 then
          begin
               for Y := 0 to H-1 do
               begin
                    S16 := @Raw[ Y * W * 2 ];
                    DP  := D.GetScanline( Y );

                    for X := 0 to W-1 do
                    begin
                         DP^ := LC[ S16^ ];  Inc( DP );  Inc( S16 );
                    end;
               end;
          end
          else
          begin
               for Y := 0 to H-1 do
               begin
                    S8 := @Raw[ Y * W ];
                    DP := D.GetScanline( Y );

                    for X := 0 to W-1 do
                    begin
                         DP^ := LC[ S8^ ];  Inc( DP );  Inc( S8 );
                    end;
               end;
          end;
     finally
          Bitmap_.Unmap( D );
     end;
end;

end. //######################################################################### ■
