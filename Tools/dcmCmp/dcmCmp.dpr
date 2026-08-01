program dcmCmp;

{$APPTYPE CONSOLE}

///// 2 つの DICOM のデコード後ピクセルを比較する（転送構文違いの同一画像の検証用）
///// ・JIRA サンプルの CR_JPG↔CR_LEE / DX_JPG↔DX_LEE は同一画像の転送構文違いなので、
///// 　JPEG ロスレスデコーダの正しさを「全画素完全一致」で機械的に検証できる。
///// ・使い方: dcmCmp <a.dcm> <b.dcm>

uses Winapi.Windows,
     System.SysUtils,
     LUX.DICOM.core          in '..\..\Core\LUX.DICOM.core.pas'            ,
     LUX.DICOM.VRs           in '..\..\Core\LUX.DICOM.VRs.pas'             ,
     LUX.DICOM.Syntax        in '..\..\Core\LUX.DICOM.Syntax.pas'          ,
     LUX.DICOM.Source        in '..\..\IO\LUX.DICOM.Source.pas'            ,
     LUX.DICOM.Datset        in '..\..\Model\LUX.DICOM.Datset.pas'         ,
     LUX.DICOM.Reader        in '..\..\IO\LUX.DICOM.Reader.pas'            ,
     LUX.DICOM.Charse        in '..\..\Core\LUX.DICOM.Charse.pas'          ,
     LUX.DICOM.Dictio        in '..\..\Dictio\LUX.DICOM.Dictio.pas'        ,
     LUX.DICOM.Tags          in '..\..\Dictio\LUX.DICOM.Tags.pas'          ,
     LUX.DICOM.UIDs          in '..\..\Dictio\LUX.DICOM.UIDs.pas'          ,
     LUX.DICOM.Codecs        in '..\..\Codecs\LUX.DICOM.Codecs.pas'        ,
     LUX.DICOM.Codecs.JPEG   in '..\..\Codecs\LUX.DICOM.Codecs.JPEG.pas'   ,
     LUX.DICOM.Codecs.JPEG.Lossless
                             in '..\..\Codecs\LUX.DICOM.Codecs.JPEG.Lossless.pas',
     LUX.DICOM.Pixels        in '..\..\Pixels\LUX.DICOM.Pixels.pas'        ;

function LoadPixels( const FileName_:String; out Reader_:TdcmReader ) :TdcmPixels;
begin
     Reader_ := TdcmReader.Create;

     Reader_.LoadFromFile( FileName_ );

     Result := TdcmPixels.Create( Reader_.Body, Reader_.Syntax );
end;

var
   RA, RB :TdcmReader;
   PA, PB :TdcmPixels;
   BA, BB :TBytes;
   I, N   :Integer;
   VA, VB :Integer;
   Diff   :Integer;
   First  :Integer;

begin
     SetConsoleOutputCP( CP_UTF8 );
     SetTextCodePage( Output, CP_UTF8 );

     if ParamCount < 2 then
     begin
          Writeln( '使い方: dcmCmp <a.dcm> <b.dcm>' );  Halt( 1 );
     end;

     RA := nil;  RB := nil;
     PA := nil;  PB := nil;

     try
          try
               PA := LoadPixels( ParamStr( 1 ), RA );
               PB := LoadPixels( ParamStr( 2 ), RB );

               Writeln( 'A: ', PA.Syntax.Name );
               Writeln( 'B: ', PB.Syntax.Name );

               if ( PA.Info.CountX <> PB.Info.CountX ) or ( PA.Info.CountY <> PB.Info.CountY ) then
               begin
                    Writeln( 'NG: 寸法が違う' );  Halt( 1 );
               end;

               BA := PA.FrameRaw( 0 );
               BB := PB.FrameRaw( 0 );

               if Length( BA ) <> Length( BB ) then
               begin
                    Writeln( Format( 'NG: バッファ長が違う（%d ／ %d）', [ Length( BA ), Length( BB ) ] ) );  Halt( 1 );
               end;

               ///// マスク後の格納値で比較する（HighBit より上位の未使用ビット差を無視）

               N     := Length( BA ) div 2;
               Diff  := 0;
               First := -1;

               for I := 0 to N-1 do
               begin
                    VA := ExtractStored( PWord( @BA[ I*2 ] )^, PA.Info.BitsS, PA.Info.HighB, PA.Info.Signed );
                    VB := ExtractStored( PWord( @BB[ I*2 ] )^, PB.Info.BitsS, PB.Info.HighB, PB.Info.Signed );

                    if VA <> VB then
                    begin
                         Inc( Diff );

                         if First < 0 then First := I;
                    end;
               end;

               if Diff = 0 then Writeln( Format( 'OK: 全 %d 画素が完全一致', [ N ] ) )
               else
               begin
                    Writeln( Format( 'NG: %d ／ %d 画素が不一致（最初の相違: 画素 %d = (%d,%d)）',
                                     [ Diff, N, First, First mod PA.Info.CountX, First div PA.Info.CountX ] ) );

                    ExitCode := 1;
               end;
          finally
               PB.Free;  PA.Free;
               RB.Free;  RA.Free;
          end;
     except
          on E:Exception do
          begin
               Writeln( 'ERROR: ', E.Message );  ExitCode := 2;
          end;
     end;
end.
