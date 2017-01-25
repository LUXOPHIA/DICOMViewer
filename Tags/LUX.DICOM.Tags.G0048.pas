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
     Add( $0001, 'ImagedVolumeWidth', [TKindVR.vrFL], 'Imaged Volume Width' );
     Add( $0002, 'ImagedVolumeHeight', [TKindVR.vrFL], 'Imaged Volume Height' );
     Add( $0003, 'ImagedVolumeDepth', [TKindVR.vrFL], 'Imaged Volume Depth' );
     Add( $0006, 'TotalPixelMatrixColumns', [TKindVR.vrUL], 'Total Pixel Matrix Columns' );
     Add( $0007, 'TotalPixelMatrixRows', [TKindVR.vrUL], 'Total Pixel Matrix Rows' );
     Add( $0008, 'TotalPixelMatrixOriginSequence', [TKindVR.vrSQ], 'Total Pixel Matrix Origin Sequence' );
     Add( $0010, 'SpecimenLabelInImage', [TKindVR.vrCS], 'Specimen Label in Image' );
     Add( $0011, 'FocusMethod', [TKindVR.vrCS], 'Focus Method' );
     Add( $0012, 'ExtendedDepthOfField', [TKindVR.vrCS], 'Extended Depth of Field' );
     Add( $0013, 'NumberOfFocalPlanes', [TKindVR.vrUS], 'Number of Focal Planes' );
     Add( $0014, 'DistanceBetweenFocalPlanes', [TKindVR.vrFL], 'Distance Between Focal Planes' );
     Add( $0015, 'RecommendedAbsentPixelCIELabValue', [TKindVR.vrUS], 'Recommended Absent Pixel CIELab Value' );
     Add( $0100, 'IlluminatorTypeCodeSequence', [TKindVR.vrSQ], 'Illuminator Type Code Sequence' );
     Add( $0102, 'ImageOrientationSlide', [TKindVR.vrDS], 'Image Orientation (Slide)' );
     Add( $0105, 'OpticalPathSequence', [TKindVR.vrSQ], 'Optical Path Sequence' );
     Add( $0106, 'OpticalPathIdentifier', [TKindVR.vrSH], 'Optical Path Identifier' );
     Add( $0107, 'OpticalPathDescription', [TKindVR.vrST], 'Optical Path Description' );
     Add( $0108, 'IlluminationColorCodeSequence', [TKindVR.vrSQ], 'Illumination Color Code Sequence' );
     Add( $0110, 'SpecimenReferenceSequence', [TKindVR.vrSQ], 'Specimen Reference Sequence' );
     Add( $0111, 'CondenserLensPower', [TKindVR.vrDS], 'Condenser Lens Power' );
     Add( $0112, 'ObjectiveLensPower', [TKindVR.vrDS], 'Objective Lens Power' );
     Add( $0113, 'ObjectiveLensNumericalAperture', [TKindVR.vrDS], 'Objective Lens Numerical Aperture' );
     Add( $0120, 'PaletteColorLookupTableSequence', [TKindVR.vrSQ], 'Palette Color Lookup Table Sequence' );
     Add( $0200, 'ReferencedImageNavigationSequence', [TKindVR.vrSQ], 'Referenced Image Navigation Sequence' );
     Add( $0201, 'TopLeftHandCornerOfLocalizerArea', [TKindVR.vrUS], 'Top Left Hand Corner of Localizer Area' );
     Add( $0202, 'BottomRightHandCornerOfLocalizerArea', [TKindVR.vrUS], 'Bottom Right Hand Corner of Localizer Area' );
     Add( $0207, 'OpticalPathIdentificationSequence', [TKindVR.vrSQ], 'Optical Path Identification Sequence' );
     Add( $021A, 'PlanePositionSlideSequence', [TKindVR.vrSQ], 'Plane Position (Slide) Sequence' );
     Add( $021E, 'ColumnPositionInTotalImagePixelMatrix', [TKindVR.vrSL], 'Column Position In Total Image Pixel Matrix' );
     Add( $021F, 'RowPositionInTotalImagePixelMatrix', [TKindVR.vrSL], 'Row Position In Total Image Pixel Matrix' );
     Add( $0301, 'PixelOriginInterpretation', [TKindVR.vrCS], 'Pixel Origin Interpretation' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
