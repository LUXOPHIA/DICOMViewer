program dcmDump;

{$APPTYPE CONSOLE}

///// DICOM ファイルのタグダンプ（新パーサの検証ツール）
///// 使い方: dcmDump <file1.dcm> [file2.dcm ...]

uses Winapi.Windows,
     System.SysUtils,
     LUX.DICOM.core   in '..\..\Core\LUX.DICOM.core.pas'   ,
     LUX.DICOM.VRs    in '..\..\Core\LUX.DICOM.VRs.pas'    ,
     LUX.DICOM.Syntax in '..\..\Core\LUX.DICOM.Syntax.pas' ,
     LUX.DICOM.Source in '..\..\IO\LUX.DICOM.Source.pas'   ,
     LUX.DICOM.Datset in '..\..\Model\LUX.DICOM.Datset.pas',
     LUX.DICOM.Reader in '..\..\IO\LUX.DICOM.Reader.pas'   ,
     LUX.DICOM.Charse in '..\..\Core\LUX.DICOM.Charse.pas' ,
     LUX.DICOM.Dictio in '..\..\Dictio\LUX.DICOM.Dictio.pas',
     LUX.DICOM.Tags   in '..\..\Dictio\LUX.DICOM.Tags.pas'  ,
     LUX.DICOM.UIDs   in '..\..\Dictio\LUX.DICOM.UIDs.pas'  ;

procedure DumpDataset( const Dataset_:TdcmDataset; const Indent_:Integer );
var
   E :TdcmElement;
   S, P :String;
   L :String;
   I :Integer;
begin
     P := StringOfChar( ' ', Indent_ * 2 );

     for E in Dataset_ do
     begin
          if E.VL = $FFFFFFFF then L := 'undef'
                              else L := E.VL.ToString;

          S := E.Text( Dataset_.Charse );

          if S.Length > 64 then S := S.Substring( 0, 64 ) + '…';

          Writeln( Format( '%s%s %s %8s  %-32s %s', [ P, E.Tag.ToString, E.VRText, L, DictKeyword( E.Tag ), S ] ) );

          if E is TdcmSequence then
          begin
               with TdcmSequence( E ) do
               begin
                    for I := 0 to Count-1 do
                    begin
                         Writeln( Format( '%s  Item #%d', [ P, I+1 ] ) );

                         DumpDataset( Items[ I ], Indent_ + 2 );
                    end;
               end;
          end;

          if E is TdcmFragments then
          begin
               with TdcmFragments( E ) do
                 for I := 0 to Count-1 do Writeln( Format( '%s  Fragment #%d : %d バイト', [ P, I+1, Length( Frags[ I ] ) ] ) );
          end;
     end;
end;

//------------------------------------------------------------------------------

procedure DumpFile( const FileName_:String );
var
   R :TdcmReader;
   S :String;
begin
     Writeln( '===== ', FileName_, ' =====' );

     R := TdcmReader.Create;

     try
          R.LoadFromFile( FileName_ );

          Writeln( '転送構文: ', R.Syntax.Name, ' (', R.Syntax.UID, ')' );
          Writeln( '--- File Meta (', R.Meta.Count, ' 要素) ---' );

          DumpDataset( R.Meta, 0 );

          Writeln( '--- Body (', R.Body.Count, ' 要素) ---' );

          DumpDataset( R.Body, 0 );

          if R.Issues.Count > 0 then
          begin
               Writeln( '--- Issues (', R.Issues.Count, ') ---' );

               for S in R.Issues do Writeln( '  ', S );
          end;
     finally
          R.Free;
     end;

     Writeln;
end;

//------------------------------------------------------------------------------

var
   I :Integer;

begin
     ///// リダイレクト・パイプ経由でも文字化けしないよう UTF-8 で出力する

     SetConsoleOutputCP( CP_UTF8 );
     SetTextCodePage( Output, CP_UTF8 );

     if ParamCount = 0 then
     begin
          Writeln( '使い方: dcmDump <file1.dcm> [file2.dcm ...]' );  Halt( 1 );
     end;

     for I := 1 to ParamCount do
     begin
          try
               DumpFile( ParamStr( I ) );
          except
               on X:Exception do
               begin
                    Writeln( 'ERROR: ', X.Message );  ExitCode := 1;
               end;
          end;
     end;
end.
