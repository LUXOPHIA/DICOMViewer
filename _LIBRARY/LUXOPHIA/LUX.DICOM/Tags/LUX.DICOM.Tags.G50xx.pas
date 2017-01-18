unit LUX.DICOM.Tags.G50xx;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup50xx

     TdcmGrup50xx = class( TdcmGrup )
     private
     protected
     public
       constructor Create;
     end;

//const //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【定数】

//var //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【変数】

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

implementation //############################################################### ■

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup50xx

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmGrup50xx.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0005, 'CurveDimensions', [TTypeVR.vrUS], 'Curve Dimensions' );
     Add( $0010, 'NumberOfPoints', [TTypeVR.vrUS], 'Number of Points' );
     Add( $0020, 'TypeOfData', [TTypeVR.vrCS], 'Type of Data' );
     Add( $0022, 'CurveDescription', [TTypeVR.vrLO], 'Curve Description' );
     Add( $0030, 'AxisUnits', [TTypeVR.vrSH], 'Axis Units' );
     Add( $0040, 'AxisLabels', [TTypeVR.vrSH], 'Axis Labels' );
     Add( $0103, 'DataValueRepresentation', [TTypeVR.vrUS], 'Data Value Representation' );
     Add( $0104, 'MinimumCoordinateValue', [TTypeVR.vrUS], 'Minimum Coordinate Value' );
     Add( $0105, 'MaximumCoordinateValue', [TTypeVR.vrUS], 'Maximum Coordinate Value' );
     Add( $0106, 'CurveRange', [TTypeVR.vrSH], 'Curve Range' );
     Add( $0110, 'CurveDataDescriptor', [TTypeVR.vrUS], 'Curve Data Descriptor' );
     Add( $0112, 'CoordinateStartValue', [TTypeVR.vrUS], 'Coordinate Start Value' );
     Add( $0114, 'CoordinateStepValue', [TTypeVR.vrUS], 'Coordinate Step Value' );
     Add( $1001, 'CurveActivationLayer', [TTypeVR.vrCS], 'Curve Activation Layer' );
     Add( $2000, 'AudioType', [TTypeVR.vrUS], 'Audio Type' );
     Add( $2002, 'AudioSampleFormat', [TTypeVR.vrUS], 'Audio Sample Format' );
     Add( $2004, 'NumberOfChannels', [TTypeVR.vrUS], 'Number of Channels' );
     Add( $2006, 'NumberOfSamples', [TTypeVR.vrUL], 'Number of Samples' );
     Add( $2008, 'SampleRate', [TTypeVR.vrUL], 'Sample Rate' );
     Add( $200A, 'TotalTime', [TTypeVR.vrUL], 'Total Time' );
     Add( $200C, 'AudioSampleData', [TTypeVR.vrOB,TTypeVR.vrOW], 'Audio Sample Data' );
     Add( $200E, 'AudioComments', [TTypeVR.vrLT], 'Audio Comments' );
     Add( $2500, 'CurveLabel', [TTypeVR.vrLO], 'Curve Label' );
     Add( $2600, 'CurveReferencedOverlaySequence', [TTypeVR.vrSQ], 'Curve Referenced Overlay Sequence' );
     Add( $2610, 'CurveReferencedOverlayGroup', [TTypeVR.vrUS], 'Curve Referenced Overlay Group' );
     Add( $3000, 'CurveData', [TTypeVR.vrOB,TTypeVR.vrOW], 'Curve Data' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
