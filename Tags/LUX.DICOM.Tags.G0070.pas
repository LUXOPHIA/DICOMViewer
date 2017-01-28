unit LUX.DICOM.Tags.G0070;

interface //#################################################################### ■

uses LUX, LUX.DICOM.VRs, LUX.DICOM.Tags;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0070

     TdcmGrup0070 = class( TdcmGrup )
     private
     protected
     public
       class procedure AddBook( const Book_:TdcmBookTag );
       constructor Create( const Book_:TdcmBookTag; const Code_:THex4 );
     end;

//const //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【定数】

//var //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【変数】

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

implementation //############################################################### ■

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0070

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

class procedure TdcmGrup0070.AddBook( const Book_:TdcmBookTag );
begin
     Create( Book_, $0070 );
end;

//------------------------------------------------------------------------------

constructor TdcmGrup0070.Create( const Book_:TdcmBookTag; const Code_:THex4 );
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0001, 'GraphicAnnotationSequence', [TKindVR.vrSQ], 'Graphic Annotation Sequence' );
     Add( $0002, 'GraphicLayer', [TKindVR.vrCS], 'Graphic Layer' );
     Add( $0003, 'BoundingBoxAnnotationUnits', [TKindVR.vrCS], 'Bounding Box Annotation Units' );
     Add( $0004, 'AnchorPointAnnotationUnits', [TKindVR.vrCS], 'Anchor Point Annotation Units' );
     Add( $0005, 'GraphicAnnotationUnits', [TKindVR.vrCS], 'Graphic Annotation Units' );
     Add( $0006, 'UnformattedTextValue', [TKindVR.vrST], 'Unformatted Text Value' );
     Add( $0008, 'TextObjectSequence', [TKindVR.vrSQ], 'Text Object Sequence' );
     Add( $0009, 'GraphicObjectSequence', [TKindVR.vrSQ], 'Graphic Object Sequence' );
     Add( $0010, 'BoundingBoxTopLeftHandCorner', [TKindVR.vrFL], 'Bounding Box Top Left Hand Corner' );
     Add( $0011, 'BoundingBoxBottomRightHandCorner', [TKindVR.vrFL], 'Bounding Box Bottom Right Hand Corner' );
     Add( $0012, 'BoundingBoxTextHorizontalJustification', [TKindVR.vrCS], 'Bounding Box Text Horizontal Justification' );
     Add( $0014, 'AnchorPoint', [TKindVR.vrFL], 'Anchor Point' );
     Add( $0015, 'AnchorPointVisibility', [TKindVR.vrCS], 'Anchor Point Visibility' );
     Add( $0020, 'GraphicDimensions', [TKindVR.vrUS], 'Graphic Dimensions' );
     Add( $0021, 'NumberOfGraphicPoints', [TKindVR.vrUS], 'Number of Graphic Points' );
     Add( $0022, 'GraphicData', [TKindVR.vrFL], 'Graphic Data' );
     Add( $0023, 'GraphicType', [TKindVR.vrCS], 'Graphic Type' );
     Add( $0024, 'GraphicFilled', [TKindVR.vrCS], 'Graphic Filled' );
     Add( $0040, 'ImageRotationRetired', [TKindVR.vrIS], 'Image Rotation (Retired)' );
     Add( $0041, 'ImageHorizontalFlip', [TKindVR.vrCS], 'Image Horizontal Flip' );
     Add( $0042, 'ImageRotation', [TKindVR.vrUS], 'Image Rotation' );
     Add( $0050, 'DisplayedAreaTopLeftHandCornerTrial', [TKindVR.vrUS], 'Displayed Area Top Left Hand Corner (Trial)' );
     Add( $0051, 'DisplayedAreaBottomRightHandCornerTrial', [TKindVR.vrUS], 'Displayed Area Bottom Right Hand Corner (Trial)' );
     Add( $0052, 'DisplayedAreaTopLeftHandCorner', [TKindVR.vrSL], 'Displayed Area Top Left Hand Corner' );
     Add( $0053, 'DisplayedAreaBottomRightHandCorner', [TKindVR.vrSL], 'Displayed Area Bottom Right Hand Corner' );
     Add( $005A, 'DisplayedAreaSelectionSequence', [TKindVR.vrSQ], 'Displayed Area Selection Sequence' );
     Add( $0060, 'GraphicLayerSequence', [TKindVR.vrSQ], 'Graphic Layer Sequence' );
     Add( $0062, 'GraphicLayerOrder', [TKindVR.vrIS], 'Graphic Layer Order' );
     Add( $0066, 'GraphicLayerRecommendedDisplayGrayscaleValue', [TKindVR.vrUS], 'Graphic Layer Recommended Display Grayscale Value' );
     Add( $0067, 'GraphicLayerRecommendedDisplayRGBValue', [TKindVR.vrUS], 'Graphic Layer Recommended Display RGB Value' );
     Add( $0068, 'GraphicLayerDescription', [TKindVR.vrLO], 'Graphic Layer Description' );
     Add( $0080, 'ContentLabel', [TKindVR.vrCS], 'Content Label' );
     Add( $0081, 'ContentDescription', [TKindVR.vrLO], 'Content Description' );
     Add( $0082, 'PresentationCreationDate', [TKindVR.vrDA], 'Presentation Creation Date' );
     Add( $0083, 'PresentationCreationTime', [TKindVR.vrTM], 'Presentation Creation Time' );
     Add( $0084, 'ContentCreatorName', [TKindVR.vrPN], 'Content Creator''s Name' );
     Add( $0086, 'ContentCreatorIdentificationCodeSequence', [TKindVR.vrSQ], 'Content Creator''s Identification Code Sequence' );
     Add( $0087, 'AlternateContentDescriptionSequence', [TKindVR.vrSQ], 'Alternate Content Description Sequence' );
     Add( $0100, 'PresentationSizeMode', [TKindVR.vrCS], 'Presentation Size Mode' );
     Add( $0101, 'PresentationPixelSpacing', [TKindVR.vrDS], 'Presentation Pixel Spacing' );
     Add( $0102, 'PresentationPixelAspectRatio', [TKindVR.vrIS], 'Presentation Pixel Aspect Ratio' );
     Add( $0103, 'PresentationPixelMagnificationRatio', [TKindVR.vrFL], 'Presentation Pixel Magnification Ratio' );
     Add( $0207, 'GraphicGroupLabel', [TKindVR.vrLO], 'Graphic Group Label' );
     Add( $0208, 'GraphicGroupDescription', [TKindVR.vrST], 'Graphic Group Description' );
     Add( $0209, 'CompoundGraphicSequence', [TKindVR.vrSQ], 'Compound Graphic Sequence' );
     Add( $0226, 'CompoundGraphicInstanceID', [TKindVR.vrUL], 'Compound Graphic Instance ID' );
     Add( $0227, 'FontName', [TKindVR.vrLO], 'Font Name' );
     Add( $0228, 'FontNameType', [TKindVR.vrCS], 'Font Name Type' );
     Add( $0229, 'CSSFontName', [TKindVR.vrLO], 'CSS Font Name' );
     Add( $0230, 'RotationAngle', [TKindVR.vrFD], 'Rotation Angle' );
     Add( $0231, 'TextStyleSequence', [TKindVR.vrSQ], 'Text Style Sequence' );
     Add( $0232, 'LineStyleSequence', [TKindVR.vrSQ], 'Line Style Sequence' );
     Add( $0233, 'FillStyleSequence', [TKindVR.vrSQ], 'Fill Style Sequence' );
     Add( $0234, 'GraphicGroupSequence', [TKindVR.vrSQ], 'Graphic Group Sequence' );
     Add( $0241, 'TextColorCIELabValue', [TKindVR.vrUS], 'Text Color CIELab Value' );
     Add( $0242, 'HorizontalAlignment', [TKindVR.vrCS], 'Horizontal Alignment' );
     Add( $0243, 'VerticalAlignment', [TKindVR.vrCS], 'Vertical Alignment' );
     Add( $0244, 'ShadowStyle', [TKindVR.vrCS], 'Shadow Style' );
     Add( $0245, 'ShadowOffsetX', [TKindVR.vrFL], 'Shadow Offset X' );
     Add( $0246, 'ShadowOffsetY', [TKindVR.vrFL], 'Shadow Offset Y' );
     Add( $0247, 'ShadowColorCIELabValue', [TKindVR.vrUS], 'Shadow Color CIELab Value' );
     Add( $0248, 'Underlined', [TKindVR.vrCS], 'Underlined' );
     Add( $0249, 'Bold', [TKindVR.vrCS], 'Bold' );
     Add( $0250, 'Italic', [TKindVR.vrCS], 'Italic' );
     Add( $0251, 'PatternOnColorCIELabValue', [TKindVR.vrUS], 'Pattern On Color CIELab Value' );
     Add( $0252, 'PatternOffColorCIELabValue', [TKindVR.vrUS], 'Pattern Off Color CIELab Value' );
     Add( $0253, 'LineThickness', [TKindVR.vrFL], 'Line Thickness' );
     Add( $0254, 'LineDashingStyle', [TKindVR.vrCS], 'Line Dashing Style' );
     Add( $0255, 'LinePattern', [TKindVR.vrUL], 'Line Pattern' );
     Add( $0256, 'FillPattern', [TKindVR.vrOB], 'Fill Pattern' );
     Add( $0257, 'FillMode', [TKindVR.vrCS], 'Fill Mode' );
     Add( $0258, 'ShadowOpacity', [TKindVR.vrFL], 'Shadow Opacity' );
     Add( $0261, 'GapLength', [TKindVR.vrFL], 'Gap Length' );
     Add( $0262, 'DiameterOfVisibility', [TKindVR.vrFL], 'Diameter of Visibility' );
     Add( $0273, 'RotationPoint', [TKindVR.vrFL], 'Rotation Point' );
     Add( $0274, 'TickAlignment', [TKindVR.vrCS], 'Tick Alignment' );
     Add( $0278, 'ShowTickLabel', [TKindVR.vrCS], 'Show Tick Label' );
     Add( $0279, 'TickLabelAlignment', [TKindVR.vrCS], 'Tick Label Alignment' );
     Add( $0282, 'CompoundGraphicUnits', [TKindVR.vrCS], 'Compound Graphic Units' );
     Add( $0284, 'PatternOnOpacity', [TKindVR.vrFL], 'Pattern On Opacity' );
     Add( $0285, 'PatternOffOpacity', [TKindVR.vrFL], 'Pattern Off Opacity' );
     Add( $0287, 'MajorTicksSequence', [TKindVR.vrSQ], 'Major Ticks Sequence' );
     Add( $0288, 'TickPosition', [TKindVR.vrFL], 'Tick Position' );
     Add( $0289, 'TickLabel', [TKindVR.vrSH], 'Tick Label' );
     Add( $0294, 'CompoundGraphicType', [TKindVR.vrCS], 'Compound Graphic Type' );
     Add( $0295, 'GraphicGroupID', [TKindVR.vrUL], 'Graphic Group ID' );
     Add( $0306, 'ShapeType', [TKindVR.vrCS], 'Shape Type' );
     Add( $0308, 'RegistrationSequence', [TKindVR.vrSQ], 'Registration Sequence' );
     Add( $0309, 'MatrixRegistrationSequence', [TKindVR.vrSQ], 'Matrix Registration Sequence' );
     Add( $030A, 'MatrixSequence', [TKindVR.vrSQ], 'Matrix Sequence' );
     Add( $030B, 'FrameOfReferenceToDisplayedCoordinateSystemTransformationMatrix', [TKindVR.vrFD], 'Frame of Reference to Displayed Coordinate System Transformation Matrix' );
     Add( $030C, 'FrameOfReferenceTransformationMatrixType', [TKindVR.vrCS], 'Frame of Reference Transformation Matrix Type' );
     Add( $030D, 'RegistrationTypeCodeSequence', [TKindVR.vrSQ], 'Registration Type Code Sequence' );
     Add( $030F, 'FiducialDescription', [TKindVR.vrST], 'Fiducial Description' );
     Add( $0310, 'FiducialIdentifier', [TKindVR.vrSH], 'Fiducial Identifier' );
     Add( $0311, 'FiducialIdentifierCodeSequence', [TKindVR.vrSQ], 'Fiducial Identifier Code Sequence' );
     Add( $0312, 'ContourUncertaintyRadius', [TKindVR.vrFD], 'Contour Uncertainty Radius' );
     Add( $0314, 'UsedFiducialsSequence', [TKindVR.vrSQ], 'Used Fiducials Sequence' );
     Add( $0318, 'GraphicCoordinatesDataSequence', [TKindVR.vrSQ], 'Graphic Coordinates Data Sequence' );
     Add( $031A, 'FiducialUID', [TKindVR.vrUI], 'Fiducial UID' );
     Add( $031C, 'FiducialSetSequence', [TKindVR.vrSQ], 'Fiducial Set Sequence' );
     Add( $031E, 'FiducialSequence', [TKindVR.vrSQ], 'Fiducial Sequence' );
     Add( $031F, 'FiducialsPropertyCategoryCodeSequence', [TKindVR.vrSQ], 'Fiducials Property Category Code Sequence' );
     Add( $0401, 'GraphicLayerRecommendedDisplayCIELabValue', [TKindVR.vrUS], 'Graphic Layer Recommended Display CIELab Value' );
     Add( $0402, 'BlendingSequence', [TKindVR.vrSQ], 'Blending Sequence' );
     Add( $0403, 'RelativeOpacity', [TKindVR.vrFL], 'Relative Opacity' );
     Add( $0404, 'ReferencedSpatialRegistrationSequence', [TKindVR.vrSQ], 'Referenced Spatial Registration Sequence' );
     Add( $0405, 'BlendingPosition', [TKindVR.vrCS], 'Blending Position' );
     Add( $1101, 'PresentationDisplayCollectionUID', [TKindVR.vrUI], 'Presentation Display Collection UID' );
     Add( $1102, 'PresentationSequenceCollectionUID', [TKindVR.vrUI], 'Presentation Sequence Collection UID' );
     Add( $1103, 'PresentationSequencePositionIndex', [TKindVR.vrUS], 'Presentation Sequence Position Index' );
     Add( $1104, 'RenderedImageReferenceSequence', [TKindVR.vrSQ], 'Rendered Image Reference Sequence' );
     Add( $1201, 'VolumetricPresentationStateInputSequence', [TKindVR.vrSQ], 'Volumetric Presentation State Input Sequence' );
     Add( $1202, 'PresentationInputType', [TKindVR.vrCS], 'Presentation Input Type' );
     Add( $1203, 'InputSequencePositionIndex', [TKindVR.vrUS], 'Input Sequence Position Index' );
     Add( $1204, 'Crop', [TKindVR.vrCS], 'Crop' );
     Add( $1205, 'CroppingSpecificationIndex', [TKindVR.vrUS], 'Cropping Specification Index' );
     Add( $1206, 'CompositingMethod', [TKindVR.vrCS], 'Compositing Method' );
     Add( $1207, 'VolumetricPresentationInputNumber', [TKindVR.vrUS], 'Volumetric Presentation Input Number' );
     Add( $1208, 'ImageVolumeGeometry', [TKindVR.vrCS], 'Image Volume Geometry' );
     Add( $1301, 'VolumeCroppingSequence', [TKindVR.vrSQ], 'Volume Cropping Sequence' );
     Add( $1302, 'VolumeCroppingMethod', [TKindVR.vrCS], 'Volume Cropping Method' );
     Add( $1303, 'BoundingBoxCrop', [TKindVR.vrFD], 'Bounding Box Crop' );
     Add( $1304, 'ObliqueCroppingPlaneSequence', [TKindVR.vrSQ], 'Oblique Cropping Plane Sequence' );
     Add( $1305, 'Plane', [TKindVR.vrFD], 'Plane' );
     Add( $1306, 'PlaneNormal', [TKindVR.vrFD], 'Plane Normal' );
     Add( $1309, 'CroppingSpecificationNumber', [TKindVR.vrUS], 'Cropping Specification Number' );
     Add( $1501, 'MultiPlanarReconstructionStyle', [TKindVR.vrCS], 'Multi-Planar Reconstruction Style' );
     Add( $1502, 'MPRThicknessType', [TKindVR.vrCS], 'MPR Thickness Type' );
     Add( $1503, 'MPRSlabThickness', [TKindVR.vrFD], 'MPR Slab Thickness' );
     Add( $1505, 'MPRTopLeftHandCorner', [TKindVR.vrFD], 'MPR Top Left Hand Corner' );
     Add( $1507, 'MPRViewWidthDirection', [TKindVR.vrFD], 'MPR View Width Direction' );
     Add( $1508, 'MPRViewWidth', [TKindVR.vrFD], 'MPR View Width' );
     Add( $150C, 'NumberOfVolumetricCurvePoints', [TKindVR.vrUL], 'Number of Volumetric Curve Points' );
     Add( $150D, 'VolumetricCurvePoints', [TKindVR.vrOD], 'Volumetric Curve Points' );
     Add( $1511, 'MPRViewHeightDirection', [TKindVR.vrFD], 'MPR View Height Direction' );
     Add( $1512, 'MPRViewHeight', [TKindVR.vrFD], 'MPR View Height' );
     Add( $1801, 'PresentationStateClassificationComponentSequence', [TKindVR.vrSQ], 'Presentation State Classification Component Sequence' );
     Add( $1802, 'ComponentType', [TKindVR.vrCS], 'Component Type' );
     Add( $1803, 'ComponentInputSequence', [TKindVR.vrSQ], 'Component Input Sequence' );
     Add( $1804, 'VolumetricPresentationInputIndex', [TKindVR.vrUS], 'Volumetric Presentation Input Index' );
     Add( $1805, 'PresentationStateCompositorComponentSequence', [TKindVR.vrSQ], 'Presentation State Compositor Component Sequence' );
     Add( $1806, 'WeightingTransferFunctionSequence', [TKindVR.vrSQ], 'Weighting Transfer Function Sequence' );
     Add( $1807, 'WeightingLookupTableDescriptor', [TKindVR.vrUS], 'Weighting Lookup Table Descriptor' );
     Add( $1808, 'WeightingLookupTableData', [TKindVR.vrOB], 'Weighting Lookup Table Data' );
     Add( $1901, 'VolumetricAnnotationSequence', [TKindVR.vrSQ], 'Volumetric Annotation Sequence' );
     Add( $1903, 'ReferencedStructuredContextSequence', [TKindVR.vrSQ], 'Referenced Structured Context Sequence' );
     Add( $1904, 'ReferencedContentItem', [TKindVR.vrUI], 'Referenced Content Item' );
     Add( $1905, 'VolumetricPresentationInputAnnotationSequence', [TKindVR.vrSQ], 'Volumetric Presentation Input Annotation Sequence' );
     Add( $1907, 'AnnotationClipping', [TKindVR.vrCS], 'Annotation Clipping' );
     Add( $1A01, 'PresentationAnimationStyle', [TKindVR.vrCS], 'Presentation Animation Style' );
     Add( $1A03, 'RecommendedAnimationRate', [TKindVR.vrFD], 'Recommended Animation Rate' );
     Add( $1A04, 'AnimationCurveSequence', [TKindVR.vrSQ], 'Animation Curve Sequence' );
     Add( $1A05, 'AnimationStepSize', [TKindVR.vrFD], 'Animation Step Size' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
