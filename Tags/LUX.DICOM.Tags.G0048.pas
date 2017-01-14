unit LUX.DICOM.Tags.G0048;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems0048

     TDICOMElems0048 = class( TDICOMElems )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems0048

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TDICOMElems0048.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0001, TKindVR.vrFL, 'Imaged Volume Width' );
     Add( $0002, TKindVR.vrFL, 'Imaged Volume Height' );
     Add( $0003, TKindVR.vrFL, 'Imaged Volume Depth' );
     Add( $0006, TKindVR.vrUL, 'Total Pixel Matrix Columns' );
     Add( $0007, TKindVR.vrUL, 'Total Pixel Matrix Rows' );
     Add( $0008, TKindVR.vrSQ, 'Total Pixel Matrix Origin Sequence' );
     Add( $0010, TKindVR.vrCS, 'Specimen Label in Image' );
     Add( $0011, TKindVR.vrCS, 'Focus Method' );
     Add( $0012, TKindVR.vrCS, 'Extended Depth of Field' );
     Add( $0013, TKindVR.vrUS, 'Number of Focal Planes' );
     Add( $0014, TKindVR.vrFL, 'Distance Between Focal Planes' );
     Add( $0015, TKindVR.vrUS, 'Recommended Absent Pixel CIELab Value' );
     Add( $0100, TKindVR.vrSQ, 'Illuminator Type Code Sequence' );
     Add( $0102, TKindVR.vrDS, 'Image Orientation (Slide)' );
     Add( $0105, TKindVR.vrSQ, 'Optical Path Sequence' );
     Add( $0106, TKindVR.vrSH, 'Optical Path Identifier' );
     Add( $0107, TKindVR.vrST, 'Optical Path Description' );
     Add( $0108, TKindVR.vrSQ, 'Illumination Color Code Sequence' );
     Add( $0110, TKindVR.vrSQ, 'Specimen Reference Sequence' );
     Add( $0111, TKindVR.vrDS, 'Condenser Lens Power' );
     Add( $0112, TKindVR.vrDS, 'Objective Lens Power' );
     Add( $0113, TKindVR.vrDS, 'Objective Lens Numerical Aperture' );
     Add( $0120, TKindVR.vrSQ, 'Palette Color Lookup Table Sequence' );
     Add( $0200, TKindVR.vrSQ, 'Referenced Image Navigation Sequence' );
     Add( $0201, TKindVR.vrUS, 'Top Left Hand Corner of Localizer Area' );
     Add( $0202, TKindVR.vrUS, 'Bottom Right Hand Corner of Localizer Area' );
     Add( $0207, TKindVR.vrSQ, 'Optical Path Identification Sequence' );
     Add( $021A, TKindVR.vrSQ, 'Plane Position (Slide) Sequence' );
     Add( $021E, TKindVR.vrSL, 'Column Position In Total Image Pixel Matrix' );
     Add( $021F, TKindVR.vrSL, 'Row Position In Total Image Pixel Matrix' );
     Add( $0301, TKindVR.vrCS, 'Pixel Origin Interpretation' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
