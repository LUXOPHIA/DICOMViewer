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
       constructor Create( const Code_:THex4 );
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

constructor TdcmGrup50xx.Create( const Code_:THex4 );
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0005, 'CurveDimensions', [TKindVR.vrUS], 'Curve Dimensions' );
     Add( $0010, 'NumberOfPoints', [TKindVR.vrUS], 'Number of Points' );
     Add( $0020, 'TypeOfData', [TKindVR.vrCS], 'Type of Data' );
     Add( $0022, 'CurveDescription', [TKindVR.vrLO], 'Curve Description' );
     Add( $0030, 'AxisUnits', [TKindVR.vrSH], 'Axis Units' );
     Add( $0040, 'AxisLabels', [TKindVR.vrSH], 'Axis Labels' );
     Add( $0103, 'DataValueRepresentation', [TKindVR.vrUS], 'Data Value Representation' );
     Add( $0104, 'MinimumCoordinateValue', [TKindVR.vrUS], 'Minimum Coordinate Value' );
     Add( $0105, 'MaximumCoordinateValue', [TKindVR.vrUS], 'Maximum Coordinate Value' );
     Add( $0106, 'CurveRange', [TKindVR.vrSH], 'Curve Range' );
     Add( $0110, 'CurveDataDescriptor', [TKindVR.vrUS], 'Curve Data Descriptor' );
     Add( $0112, 'CoordinateStartValue', [TKindVR.vrUS], 'Coordinate Start Value' );
     Add( $0114, 'CoordinateStepValue', [TKindVR.vrUS], 'Coordinate Step Value' );
     Add( $1001, 'CurveActivationLayer', [TKindVR.vrCS], 'Curve Activation Layer' );
     Add( $2000, 'AudioType', [TKindVR.vrUS], 'Audio Type' );
     Add( $2002, 'AudioSampleFormat', [TKindVR.vrUS], 'Audio Sample Format' );
     Add( $2004, 'NumberOfChannels', [TKindVR.vrUS], 'Number of Channels' );
     Add( $2006, 'NumberOfSamples', [TKindVR.vrUL], 'Number of Samples' );
     Add( $2008, 'SampleRate', [TKindVR.vrUL], 'Sample Rate' );
     Add( $200A, 'TotalTime', [TKindVR.vrUL], 'Total Time' );
     Add( $200C, 'AudioSampleData', [TKindVR.vrOB,TKindVR.vrOW], 'Audio Sample Data' );
     Add( $200E, 'AudioComments', [TKindVR.vrLT], 'Audio Comments' );
     Add( $2500, 'CurveLabel', [TKindVR.vrLO], 'Curve Label' );
     Add( $2600, 'CurveReferencedOverlaySequence', [TKindVR.vrSQ], 'Curve Referenced Overlay Sequence' );
     Add( $2610, 'CurveReferencedOverlayGroup', [TKindVR.vrUS], 'Curve Referenced Overlay Group' );
     Add( $3000, 'CurveData', [TKindVR.vrOB,TKindVR.vrOW], 'Curve Data' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
