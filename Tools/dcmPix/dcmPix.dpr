program dcmPix;

{$APPTYPE CONSOLE}

///// ピクセルパイプラインの検証ツール（GUI 非依存）
///// ・DICOM を読み、Window 適用済みのグレイ画像を 8bit BMP で書き出す。
///// ・使い方: dcmPix <in.dcm> <out.bmp> [間引き step]

uses Winapi.Windows,
     System.SysUtils, System.Classes,
     LUX.DICOM.core   in '..\..\Core\LUX.DICOM.core.pas'    ,
     LUX.DICOM.VRs    in '..\..\Core\LUX.DICOM.VRs.pas'     ,
     LUX.DICOM.Syntax in '..\..\Core\LUX.DICOM.Syntax.pas'  ,
     LUX.DICOM.Source in '..\..\IO\LUX.DICOM.Source.pas'    ,
     LUX.DICOM.Datset in '..\..\Model\LUX.DICOM.Datset.pas' ,
     LUX.DICOM.Reader in '..\..\IO\LUX.DICOM.Reader.pas'    ,
     LUX.DICOM.Charse in '..\..\Core\LUX.DICOM.Charse.pas'  ,
     LUX.DICOM.Dictio in '..\..\Dictio\LUX.DICOM.Dictio.pas',
     LUX.DICOM.Tags   in '..\..\Dictio\LUX.DICOM.Tags.pas'  ,
     LUX.DICOM.UIDs   in '..\..\Dictio\LUX.DICOM.UIDs.pas'  ,
     LUX.DICOM.Codecs in '..\..\Codecs\LUX.DICOM.Codecs.pas',
     LUX.DICOM.Codecs.JPEG
                      in '..\..\Codecs\LUX.DICOM.Codecs.JPEG.pas',
     LUX.DICOM.Codecs.JPEG.Lossless
                      in '..\..\Codecs\LUX.DICOM.Codecs.JPEG.Lossless.pas',
     LUX.DICOM.Pixels in '..\..\Pixels\LUX.DICOM.Pixels.pas';

procedure SaveGrayBMP( const FileName_:String; const W_,H_:Integer; const Gray_:TBytes );
var
   F       :TFileStream;
   HeadF   :TBitmapFileHeader;
   HeadI   :TBitmapInfoHeader;
   Pal     :array [ 0..255 ] of Cardinal;
   I, Y    :Integer;
   RowSz   :Integer;
   Pad     :Cardinal;
begin
     RowSz := ( W_ + 3 ) and not 3;   // 4 バイト境界

     FillChar( HeadF, SizeOf( HeadF ), 0 );
     FillChar( HeadI, SizeOf( HeadI ), 0 );

     HeadF.bfType    := $4D42;   // 'BM'
     HeadF.bfOffBits := SizeOf( HeadF ) + SizeOf( HeadI ) + SizeOf( Pal );
     HeadF.bfSize    := HeadF.bfOffBits + Cardinal( RowSz ) * Cardinal( H_ );

     HeadI.biSize     := SizeOf( HeadI );
     HeadI.biWidth    := W_;
     HeadI.biHeight   := H_;        // 正値 = ボトムアップ
     HeadI.biPlanes   := 1;
     HeadI.biBitCount := 8;

     for I := 0 to 255 do Pal[ I ] := ( Cardinal( I ) shl 16 ) or ( Cardinal( I ) shl 8 ) or Cardinal( I );

     F := TFileStream.Create( FileName_, fmCreate );

     try
          F.WriteBuffer( HeadF, SizeOf( HeadF ) );
          F.WriteBuffer( HeadI, SizeOf( HeadI ) );
          F.WriteBuffer( Pal, SizeOf( Pal ) );

          Pad := 0;

          for Y := H_-1 downto 0 do
          begin
               F.WriteBuffer( Gray_[ Y * W_ ], W_ );

               if RowSz > W_ then F.WriteBuffer( Pad, RowSz - W_ );
          end;
     finally
          F.Free;
     end;
end;

//------------------------------------------------------------------------------

var
   R       :TdcmReader;
   P       :TdcmPixels;
   Raw     :TBytes;
   L8      :TArray<Byte>;
   Gray    :TBytes;
   WC, WW  :Double;
   W, H    :Integer;
   SW, SH  :Integer;
   X, Y, S :Integer;

begin
     SetConsoleOutputCP( CP_UTF8 );
     SetTextCodePage( Output, CP_UTF8 );

     if ParamCount < 2 then
     begin
          Writeln( '使い方: dcmPix <in.dcm> <out.bmp> [間引き step]' );  Halt( 1 );
     end;

     S := StrToIntDef( ParamStr( 3 ), 1 );

     if S < 1 then S := 1;

     try
          R := TdcmReader.Create;

          try
               R.LoadFromFile( ParamStr( 1 ) );

               P := TdcmPixels.Create( R.Body, R.Syntax );

               try
                    P.DefaultWindow( 0, WC, WW );

                    Writeln( Format( '%d×%d  BitsStored=%d HighBit=%d Signed=%s Frames=%d  WC=%g WW=%g',
                                     [ P.Info.CountX, P.Info.CountY, P.Info.BitsS, P.Info.HighB,
                                       BoolToStr( P.Info.Signed, True ), P.FrameN, WC, WW ] ) );

                    Raw := P.FrameRaw( 0 );
                    L8  := P.BuildLUT8( WC, WW );

                    W := P.Info.CountX;
                    H := P.Info.CountY;

                    SW := ( W + S - 1 ) div S;
                    SH := ( H + S - 1 ) div S;

                    SetLength( Gray, SW * SH );

                    if P.Info.BitsA = 16 then
                    begin
                         for Y := 0 to SH-1 do
                           for X := 0 to SW-1 do
                             Gray[ Y * SW + X ] := L8[ PWord( @Raw[ ( ( Y * S ) * W + X * S ) * 2 ] )^ ];
                    end
                    else
                    begin
                         for Y := 0 to SH-1 do
                           for X := 0 to SW-1 do
                             Gray[ Y * SW + X ] := L8[ Raw[ ( Y * S ) * W + X * S ] ];
                    end;

                    SaveGrayBMP( ParamStr( 2 ), SW, SH, Gray );

                    Writeln( ParamStr( 2 ), ' へ ', SW, '×', SH, ' を書き出した' );
               finally
                    P.Free;
               end;
          finally
               R.Free;
          end;
     except
          on E:Exception do
          begin
               Writeln( 'ERROR: ', E.Message );  ExitCode := 1;
          end;
     end;
end.
