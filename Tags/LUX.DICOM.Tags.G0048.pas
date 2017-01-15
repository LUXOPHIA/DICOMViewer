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
     Add( $0001, [TTypeVR.vrFL], 'Imaged Volume Width' );
     Add( $0002, [TTypeVR.vrFL], 'Imaged Volume Height' );
     Add( $0003, [TTypeVR.vrFL], 'Imaged Volume Depth' );
     Add( $0006, [TTypeVR.vrUL], 'Total Pixel Matrix Columns' );
     Add( $0007, [TTypeVR.vrUL], 'Total Pixel Matrix Rows' );
     Add( $0008, [TTypeVR.vrSQ], 'Total Pixel Matrix Origin Sequence' );
     Add( $0010, [TTypeVR.vrCS], 'Specimen Label in Image' );
     Add( $0011, [TTypeVR.vrCS], 'Focus Method' );
     Add( $0012, [TTypeVR.vrCS], 'Extended Depth of Field' );
     Add( $0013, [TTypeVR.vrUS], 'Number of Focal Planes' );
     Add( $0014, [TTypeVR.vrFL], 'Distance Between Focal Planes' );
     Add( $0015, [TTypeVR.vrUS], 'Recommended Absent Pixel CIELab Value' );
     Add( $0100, [TTypeVR.vrSQ], 'Illuminator Type Code Sequence' );
     Add( $0102, [TTypeVR.vrDS], 'Image Orientation (Slide)' );
     Add( $0105, [TTypeVR.vrSQ], 'Optical Path Sequence' );
     Add( $0106, [TTypeVR.vrSH], 'Optical Path Identifier' );
     Add( $0107, [TTypeVR.vrST], 'Optical Path Description' );
     Add( $0108, [TTypeVR.vrSQ], 'Illumination Color Code Sequence' );
     Add( $0110, [TTypeVR.vrSQ], 'Specimen Reference Sequence' );
     Add( $0111, [TTypeVR.vrDS], 'Condenser Lens Power' );
     Add( $0112, [TTypeVR.vrDS], 'Objective Lens Power' );
     Add( $0113, [TTypeVR.vrDS], 'Objective Lens Numerical Aperture' );
     Add( $0120, [TTypeVR.vrSQ], 'Palette Color Lookup Table Sequence' );
     Add( $0200, [TTypeVR.vrSQ], 'Referenced Image Navigation Sequence' );
     Add( $0201, [TTypeVR.vrUS], 'Top Left Hand Corner of Localizer Area' );
     Add( $0202, [TTypeVR.vrUS], 'Bottom Right Hand Corner of Localizer Area' );
     Add( $0207, [TTypeVR.vrSQ], 'Optical Path Identification Sequence' );
     Add( $021A, [TTypeVR.vrSQ], 'Plane Position (Slide) Sequence' );
     Add( $021E, [TTypeVR.vrSL], 'Column Position In Total Image Pixel Matrix' );
     Add( $021F, [TTypeVR.vrSL], 'Row Position In Total Image Pixel Matrix' );
     Add( $0301, [TTypeVR.vrCS], 'Pixel Origin Interpretation' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
