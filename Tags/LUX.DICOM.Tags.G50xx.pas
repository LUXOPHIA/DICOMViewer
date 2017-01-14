unit LUX.DICOM.Tags.G50xx;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems50xx

     TDICOMElems50xx = class( TDICOMElems )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems50xx

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TDICOMElems50xx.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0005, TKindVR.vrUS, 'Curve Dimensions' );
     Add( $0010, TKindVR.vrUS, 'Number of Points' );
     Add( $0020, TKindVR.vrCS, 'Type of Data' );
     Add( $0022, TKindVR.vrLO, 'Curve Description' );
     Add( $0030, TKindVR.vrSH, 'Axis Units' );
     Add( $0040, TKindVR.vrSH, 'Axis Labels' );
     Add( $0103, TKindVR.vrUS, 'Data Value Representation' );
     Add( $0104, TKindVR.vrUS, 'Minimum Coordinate Value' );
     Add( $0105, TKindVR.vrUS, 'Maximum Coordinate Value' );
     Add( $0106, TKindVR.vrSH, 'Curve Range' );
     Add( $0110, TKindVR.vrUS, 'Curve Data Descriptor' );
     Add( $0112, TKindVR.vrUS, 'Coordinate Start Value' );
     Add( $0114, TKindVR.vrUS, 'Coordinate Step Value' );
     Add( $1001, TKindVR.vrCS, 'Curve Activation Layer' );
     Add( $2000, TKindVR.vrUS, 'Audio Type' );
     Add( $2002, TKindVR.vrUS, 'Audio Sample Format' );
     Add( $2004, TKindVR.vrUS, 'Number of Channels' );
     Add( $2006, TKindVR.vrUL, 'Number of Samples' );
     Add( $2008, TKindVR.vrUL, 'Sample Rate' );
     Add( $200A, TKindVR.vrUL, 'Total Time' );
     Add( $200C, TKindVR.vrOBOW, 'Audio Sample Data' );
     Add( $200E, TKindVR.vrLT, 'Audio Comments' );
     Add( $2500, TKindVR.vrLO, 'Curve Label' );
     Add( $2600, TKindVR.vrSQ, 'Curve Referenced Overlay Sequence' );
     Add( $2610, TKindVR.vrUS, 'Curve Referenced Overlay Group' );
     Add( $3000, TKindVR.vrOBOW, 'Curve Data' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
