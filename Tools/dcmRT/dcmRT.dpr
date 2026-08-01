program dcmRT;

{$APPTYPE CONSOLE}

///// ラウンドトリップ検証（read → write → read で全要素一致を確認する）
///// ・使い方: dcmRT <file1.dcm> [file2.dcm ...]

uses Winapi.Windows,
     System.SysUtils, System.IOUtils,
     LUX.DICOM.core          in '..\..\Core\LUX.DICOM.core.pas'            ,
     LUX.DICOM.VRs           in '..\..\Core\LUX.DICOM.VRs.pas'             ,
     LUX.DICOM.Syntax        in '..\..\Core\LUX.DICOM.Syntax.pas'          ,
     LUX.DICOM.Source        in '..\..\IO\LUX.DICOM.Source.pas'            ,
     LUX.DICOM.Datset        in '..\..\Model\LUX.DICOM.Datset.pas'         ,
     LUX.DICOM.Reader        in '..\..\IO\LUX.DICOM.Reader.pas'            ,
     LUX.DICOM.Writer        in '..\..\IO\LUX.DICOM.Writer.pas'            ,
     LUX.DICOM.Charse        in '..\..\Core\LUX.DICOM.Charse.pas'          ,
     LUX.DICOM.Dictio        in '..\..\Dictio\LUX.DICOM.Dictio.pas'        ,
     LUX.DICOM.Tags          in '..\..\Dictio\LUX.DICOM.Tags.pas'          ,
     LUX.DICOM.UIDs          in '..\..\Dictio\LUX.DICOM.UIDs.pas'          ;

function SameBytes( const A_,B_:TBytes ) :Boolean;
begin
     Result := ( Length( A_ ) = Length( B_ ) )
           and ( ( Length( A_ ) = 0 ) or CompareMem( @A_[ 0 ], @B_[ 0 ], Length( A_ ) ) );
end;

function SameDataset( const A_,B_:TdcmDataset; const Path_:String; out Msg_:String ) :Boolean;
var
   I, K :Integer;
   EA   :TdcmElement;
   EB   :TdcmElement;
   P    :String;
begin
     Result := False;

     if A_.Count <> B_.Count then
     begin
          Msg_ := Format( '%s: 要素数が違う（%d ／ %d）', [ Path_, A_.Count, B_.Count ] );  Exit;
     end;

     for I := 0 to A_.Count-1 do
     begin
          EA := A_[ I ];
          EB := B_[ I ];

          P := Path_ + EA.Tag.ToString;

          if EA.Tag <> EB.Tag then
          begin
               Msg_ := P + ': タグが違う（' + EB.Tag.ToString + '）';  Exit;
          end;

          if EA.ClassType <> EB.ClassType then
          begin
               Msg_ := P + ': 要素型が違う（' + EA.ClassName + ' ／ ' + EB.ClassName + '）';  Exit;
          end;

          if EA is TdcmValue then
          begin
               if not SameBytes( TdcmValue( EA ).Raw, TdcmValue( EB ).Raw ) then
               begin
                    Msg_ := P + ': 値が違う';  Exit;
               end;
          end;

          if EA is TdcmSequence then
          begin
               if TdcmSequence( EA ).Count <> TdcmSequence( EB ).Count then
               begin
                    Msg_ := P + ': Item 数が違う';  Exit;
               end;

               for K := 0 to TdcmSequence( EA ).Count-1 do
                 if not SameDataset( TdcmSequence( EA )[ K ], TdcmSequence( EB )[ K ],
                                     Format( '%s.Item#%d.', [ P, K+1 ] ), Msg_ ) then Exit;
          end;

          if EA is TdcmFragments then
          begin
               if TdcmFragments( EA ).Count <> TdcmFragments( EB ).Count then
               begin
                    Msg_ := P + ': フラグメント数が違う';  Exit;
               end;

               for K := 0 to TdcmFragments( EA ).Count-1 do
                 if not SameBytes( TdcmFragments( EA )[ K ], TdcmFragments( EB )[ K ] ) then
                 begin
                      Msg_ := Format( '%s: フラグメント #%d が違う', [ P, K+1 ] );  Exit;
                 end;
          end;
     end;

     Msg_ := '';  Result := True;
end;

//------------------------------------------------------------------------------

var
   I      :Integer;
   RA, RB :TdcmReader;
   W      :TdcmWriter;
   T      :String;
   Msg    :String;
   FailN  :Integer;

begin
     SetConsoleOutputCP( CP_UTF8 );
     SetTextCodePage( Output, CP_UTF8 );

     if ParamCount = 0 then
     begin
          Writeln( '使い方: dcmRT <file1.dcm> [file2.dcm ...]' );  Halt( 1 );
     end;

     FailN := 0;

     for I := 1 to ParamCount do
     begin
          T := TPath.Combine( TPath.GetTempPath, 'dcmRT.tmp.dcm' );

          RA := TdcmReader.Create;
          RB := TdcmReader.Create;
          W  := TdcmWriter.Create;

          try
               try
                    RA.LoadFromFile( ParamStr( I ) );

                    W.SaveToFile( T, RA.Meta, RA.Body );

                    RB.LoadFromFile( T );

                    if SameDataset( RA.Meta, RB.Meta, 'Meta.', Msg )
                   and SameDataset( RA.Body, RB.Body, 'Body.', Msg ) then
                         Writeln( 'OK: ', ExtractFileName( ParamStr( I ) ) )
                    else
                    begin
                         Writeln( 'NG: ', ExtractFileName( ParamStr( I ) ), ' — ', Msg );  Inc( FailN );
                    end;
               except
                    on E:Exception do
                    begin
                         Writeln( 'ERROR: ', ExtractFileName( ParamStr( I ) ), ' — ', E.Message );  Inc( FailN );
                    end;
               end;
          finally
               W .Free;
               RB.Free;
               RA.Free;

               if TFile.Exists( T ) then TFile.Delete( T );
          end;
     end;

     if FailN > 0 then ExitCode := 1;
end.
