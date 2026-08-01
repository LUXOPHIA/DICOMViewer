program DICOMViewer;

uses
  System.StartUpCopy,
  FMX.Forms,
  Main in 'Main.pas' {Form1},
  LUX.DICOM.core in '_LIBRARY\LUXOPHIA\LUX.DICOM\Core\LUX.DICOM.core.pas',
  LUX.DICOM.VRs in '_LIBRARY\LUXOPHIA\LUX.DICOM\Core\LUX.DICOM.VRs.pas',
  LUX.DICOM.Syntax in '_LIBRARY\LUXOPHIA\LUX.DICOM\Core\LUX.DICOM.Syntax.pas',
  LUX.DICOM.Charse in '_LIBRARY\LUXOPHIA\LUX.DICOM\Core\LUX.DICOM.Charse.pas',
  LUX.DICOM.Dictio in '_LIBRARY\LUXOPHIA\LUX.DICOM\Dictio\LUX.DICOM.Dictio.pas',
  LUX.DICOM.Tags in '_LIBRARY\LUXOPHIA\LUX.DICOM\Dictio\LUX.DICOM.Tags.pas',
  LUX.DICOM.UIDs in '_LIBRARY\LUXOPHIA\LUX.DICOM\Dictio\LUX.DICOM.UIDs.pas',
  LUX.DICOM.Datset in '_LIBRARY\LUXOPHIA\LUX.DICOM\Model\LUX.DICOM.Datset.pas',
  LUX.DICOM.Source in '_LIBRARY\LUXOPHIA\LUX.DICOM\IO\LUX.DICOM.Source.pas',
  LUX.DICOM.Reader in '_LIBRARY\LUXOPHIA\LUX.DICOM\IO\LUX.DICOM.Reader.pas',
  LUX.DICOM.Writer in '_LIBRARY\LUXOPHIA\LUX.DICOM\IO\LUX.DICOM.Writer.pas',
  LUX.DICOM.Codecs in '_LIBRARY\LUXOPHIA\LUX.DICOM\Codecs\LUX.DICOM.Codecs.pas',
  LUX.DICOM.Codecs.JPEG in '_LIBRARY\LUXOPHIA\LUX.DICOM\Codecs\LUX.DICOM.Codecs.JPEG.pas',
  LUX.DICOM.Codecs.JPEG.Lossless in '_LIBRARY\LUXOPHIA\LUX.DICOM\Codecs\LUX.DICOM.Codecs.JPEG.Lossless.pas',
  LUX.DICOM.Pixels in '_LIBRARY\LUXOPHIA\LUX.DICOM\Pixels\LUX.DICOM.Pixels.pas',
  LUX.DICOM.Stream.FMX in '_LIBRARY\LUXOPHIA\LUX.DICOM\Stream\LUX.DICOM.Stream.FMX.pas',
  LUX.DICOM in '_LIBRARY\LUXOPHIA\LUX.DICOM\LUX.DICOM.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
