unit LUX.DICOM.Tags.G0048;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0048

     TdcmGrup0048 = class( TdcmGrup )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0048

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmGrup0048.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0001, 'ImagedVolumeWidth', [TTypeVR.vrFL], 'Imaged Volume Width' );
     Add( $0002, 'ImagedVolumeHeight', [TTypeVR.vrFL], 'Imaged Volume Height' );
     Add( $0003, 'ImagedVolumeDepth', [TTypeVR.vrFL], 'Imaged Volume Depth' );
     Add( $0006, 'TotalPixelMatrixColumns', [TTypeVR.vrUL], 'Total Pixel Matrix Columns' );
     Add( $0007, 'TotalPixelMatrixRows', [TTypeVR.vrUL], 'Total Pixel Matrix Rows' );
     Add( $0008, 'TotalPixelMatrixOriginSequence', [TTypeVR.vrSQ], 'Total Pixel Matrix Origin Sequence' );
     Add( $0010, 'SpecimenLabelInImage', [TTypeVR.vrCS], 'Specimen Label in Image' );
     Add( $0011, 'FocusMethod', [TTypeVR.vrCS], 'Focus Method' );
     Add( $0012, 'ExtendedDepthOfField', [TTypeVR.vrCS], 'Extended Depth of Field' );
     Add( $0013, 'NumberOfFocalPlanes', [TTypeVR.vrUS], 'Number of Focal Planes' );
     Add( $0014, 'DistanceBetweenFocalPlanes', [TTypeVR.vrFL], 'Distance Between Focal Planes' );
     Add( $0015, 'RecommendedAbsentPixelCIELabValue', [TTypeVR.vrUS], 'Recommended Absent Pixel CIELab Value' );
     Add( $0100, 'IlluminatorTypeCodeSequence', [TTypeVR.vrSQ], 'Illuminator Type Code Sequence' );
     Add( $0102, 'ImageOrientationSlide', [TTypeVR.vrDS], 'Image Orientation (Slide)' );
     Add( $0105, 'OpticalPathSequence', [TTypeVR.vrSQ], 'Optical Path Sequence' );
     Add( $0106, 'OpticalPathIdentifier', [TTypeVR.vrSH], 'Optical Path Identifier' );
     Add( $0107, 'OpticalPathDescription', [TTypeVR.vrST], 'Optical Path Description' );
     Add( $0108, 'IlluminationColorCodeSequence', [TTypeVR.vrSQ], 'Illumination Color Code Sequence' );
     Add( $0110, 'SpecimenReferenceSequence', [TTypeVR.vrSQ], 'Specimen Reference Sequence' );
     Add( $0111, 'CondenserLensPower', [TTypeVR.vrDS], 'Condenser Lens Power' );
     Add( $0112, 'ObjectiveLensPower', [TTypeVR.vrDS], 'Objective Lens Power' );
     Add( $0113, 'ObjectiveLensNumericalAperture', [TTypeVR.vrDS], 'Objective Lens Numerical Aperture' );
     Add( $0120, 'PaletteColorLookupTableSequence', [TTypeVR.vrSQ], 'Palette Color Lookup Table Sequence' );
     Add( $0200, 'ReferencedImageNavigationSequence', [TTypeVR.vrSQ], 'Referenced Image Navigation Sequence' );
     Add( $0201, 'TopLeftHandCornerOfLocalizerArea', [TTypeVR.vrUS], 'Top Left Hand Corner of Localizer Area' );
     Add( $0202, 'BottomRightHandCornerOfLocalizerArea', [TTypeVR.vrUS], 'Bottom Right Hand Corner of Localizer Area' );
     Add( $0207, 'OpticalPathIdentificationSequence', [TTypeVR.vrSQ], 'Optical Path Identification Sequence' );
     Add( $021A, 'PlanePositionSlideSequence', [TTypeVR.vrSQ], 'Plane Position (Slide) Sequence' );
     Add( $021E, 'ColumnPositionInTotalImagePixelMatrix', [TTypeVR.vrSL], 'Column Position In Total Image Pixel Matrix' );
     Add( $021F, 'RowPositionInTotalImagePixelMatrix', [TTypeVR.vrSL], 'Row Position In Total Image Pixel Matrix' );
     Add( $0301, 'PixelOriginInterpretation', [TTypeVR.vrCS], 'Pixel Origin Interpretation' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
