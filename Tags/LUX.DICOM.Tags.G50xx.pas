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
     Add( $0005, [TTypeVR.vrUS], 'Curve Dimensions' );
     Add( $0010, [TTypeVR.vrUS], 'Number of Points' );
     Add( $0020, [TTypeVR.vrCS], 'Type of Data' );
     Add( $0022, [TTypeVR.vrLO], 'Curve Description' );
     Add( $0030, [TTypeVR.vrSH], 'Axis Units' );
     Add( $0040, [TTypeVR.vrSH], 'Axis Labels' );
     Add( $0103, [TTypeVR.vrUS], 'Data Value Representation' );
     Add( $0104, [TTypeVR.vrUS], 'Minimum Coordinate Value' );
     Add( $0105, [TTypeVR.vrUS], 'Maximum Coordinate Value' );
     Add( $0106, [TTypeVR.vrSH], 'Curve Range' );
     Add( $0110, [TTypeVR.vrUS], 'Curve Data Descriptor' );
     Add( $0112, [TTypeVR.vrUS], 'Coordinate Start Value' );
     Add( $0114, [TTypeVR.vrUS], 'Coordinate Step Value' );
     Add( $1001, [TTypeVR.vrCS], 'Curve Activation Layer' );
     Add( $2000, [TTypeVR.vrUS], 'Audio Type' );
     Add( $2002, [TTypeVR.vrUS], 'Audio Sample Format' );
     Add( $2004, [TTypeVR.vrUS], 'Number of Channels' );
     Add( $2006, [TTypeVR.vrUL], 'Number of Samples' );
     Add( $2008, [TTypeVR.vrUL], 'Sample Rate' );
     Add( $200A, [TTypeVR.vrUL], 'Total Time' );
     Add( $200C, [TTypeVR.vrOB,TTypeVR.vrOW], 'Audio Sample Data' );
     Add( $200E, [TTypeVR.vrLT], 'Audio Comments' );
     Add( $2500, [TTypeVR.vrLO], 'Curve Label' );
     Add( $2600, [TTypeVR.vrSQ], 'Curve Referenced Overlay Sequence' );
     Add( $2610, [TTypeVR.vrUS], 'Curve Referenced Overlay Group' );
     Add( $3000, [TTypeVR.vrOB,TTypeVR.vrOW], 'Curve Data' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
