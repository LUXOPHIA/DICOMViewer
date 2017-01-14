unit LUX.DICOM.Tags.G2010;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems2010

     TDICOMElems2010 = class( TDICOMElems )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems2010

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TDICOMElems2010.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0010, TKindVR.vrST, 'Image Display Format' );
     Add( $0030, TKindVR.vrCS, 'Annotation Display Format ID' );
     Add( $0040, TKindVR.vrCS, 'Film Orientation' );
     Add( $0050, TKindVR.vrCS, 'Film Size ID' );
     Add( $0052, TKindVR.vrCS, 'Printer Resolution ID' );
     Add( $0054, TKindVR.vrCS, 'Default Printer Resolution ID' );
     Add( $0060, TKindVR.vrCS, 'Magnification Type' );
     Add( $0080, TKindVR.vrCS, 'Smoothing Type' );
     Add( $00A6, TKindVR.vrCS, 'Default Magnification Type' );
     Add( $00A7, TKindVR.vrCS, 'Other Magnification Types Available' );
     Add( $00A8, TKindVR.vrCS, 'Default Smoothing Type' );
     Add( $00A9, TKindVR.vrCS, 'Other Smoothing Types Available' );
     Add( $0100, TKindVR.vrCS, 'Border Density' );
     Add( $0110, TKindVR.vrCS, 'Empty Image Density' );
     Add( $0120, TKindVR.vrUS, 'Min Density' );
     Add( $0130, TKindVR.vrUS, 'Max Density' );
     Add( $0140, TKindVR.vrCS, 'Trim' );
     Add( $0150, TKindVR.vrST, 'Configuration Information' );
     Add( $0152, TKindVR.vrLT, 'Configuration Information Description' );
     Add( $0154, TKindVR.vrIS, 'Maximum Collated Films' );
     Add( $015E, TKindVR.vrUS, 'Illumination' );
     Add( $0160, TKindVR.vrUS, 'Reflected Ambient Light' );
     Add( $0376, TKindVR.vrDS, 'Printer Pixel Spacing' );
     Add( $0500, TKindVR.vrSQ, 'Referenced Film Session Sequence' );
     Add( $0510, TKindVR.vrSQ, 'Referenced Image Box Sequence' );
     Add( $0520, TKindVR.vrSQ, 'Referenced Basic Annotation Box Sequence' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
