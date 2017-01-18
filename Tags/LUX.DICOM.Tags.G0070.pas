unit LUX.DICOM.Tags.G0070;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0070

     TdcmGrup0070 = class( TdcmGrup )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0070

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmGrup0070.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0001, 'GraphicAnnotationSequence', [TTypeVR.vrSQ], 'Graphic Annotation Sequence' );
     Add( $0002, 'GraphicLayer', [TTypeVR.vrCS], 'Graphic Layer' );
     Add( $0003, 'BoundingBoxAnnotationUnits', [TTypeVR.vrCS], 'Bounding Box Annotation Units' );
     Add( $0004, 'AnchorPointAnnotationUnits', [TTypeVR.vrCS], 'Anchor Point Annotation Units' );
     Add( $0005, 'GraphicAnnotationUnits', [TTypeVR.vrCS], 'Graphic Annotation Units' );
     Add( $0006, 'UnformattedTextValue', [TTypeVR.vrST], 'Unformatted Text Value' );
     Add( $0008, 'TextObjectSequence', [TTypeVR.vrSQ], 'Text Object Sequence' );
     Add( $0009, 'GraphicObjectSequence', [TTypeVR.vrSQ], 'Graphic Object Sequence' );
     Add( $0010, 'BoundingBoxTopLeftHandCorner', [TTypeVR.vrFL], 'Bounding Box Top Left Hand Corner' );
     Add( $0011, 'BoundingBoxBottomRightHandCorner', [TTypeVR.vrFL], 'Bounding Box Bottom Right Hand Corner' );
     Add( $0012, 'BoundingBoxTextHorizontalJustification', [TTypeVR.vrCS], 'Bounding Box Text Horizontal Justification' );
     Add( $0014, 'AnchorPoint', [TTypeVR.vrFL], 'Anchor Point' );
     Add( $0015, 'AnchorPointVisibility', [TTypeVR.vrCS], 'Anchor Point Visibility' );
     Add( $0020, 'GraphicDimensions', [TTypeVR.vrUS], 'Graphic Dimensions' );
     Add( $0021, 'NumberOfGraphicPoints', [TTypeVR.vrUS], 'Number of Graphic Points' );
     Add( $0022, 'GraphicData', [TTypeVR.vrFL], 'Graphic Data' );
     Add( $0023, 'GraphicType', [TTypeVR.vrCS], 'Graphic Type' );
     Add( $0024, 'GraphicFilled', [TTypeVR.vrCS], 'Graphic Filled' );
     Add( $0040, 'ImageRotationRetired', [TTypeVR.vrIS], 'Image Rotation (Retired)' );
     Add( $0041, 'ImageHorizontalFlip', [TTypeVR.vrCS], 'Image Horizontal Flip' );
     Add( $0042, 'ImageRotation', [TTypeVR.vrUS], 'Image Rotation' );
     Add( $0050, 'DisplayedAreaTopLeftHandCornerTrial', [TTypeVR.vrUS], 'Displayed Area Top Left Hand Corner (Trial)' );
     Add( $0051, 'DisplayedAreaBottomRightHandCornerTrial', [TTypeVR.vrUS], 'Displayed Area Bottom Right Hand Corner (Trial)' );
     Add( $0052, 'DisplayedAreaTopLeftHandCorner', [TTypeVR.vrSL], 'Displayed Area Top Left Hand Corner' );
     Add( $0053, 'DisplayedAreaBottomRightHandCorner', [TTypeVR.vrSL], 'Displayed Area Bottom Right Hand Corner' );
     Add( $005A, 'DisplayedAreaSelectionSequence', [TTypeVR.vrSQ], 'Displayed Area Selection Sequence' );
     Add( $0060, 'GraphicLayerSequence', [TTypeVR.vrSQ], 'Graphic Layer Sequence' );
     Add( $0062, 'GraphicLayerOrder', [TTypeVR.vrIS], 'Graphic Layer Order' );
     Add( $0066, 'GraphicLayerRecommendedDisplayGrayscaleValue', [TTypeVR.vrUS], 'Graphic Layer Recommended Display Grayscale Value' );
     Add( $0067, 'GraphicLayerRecommendedDisplayRGBValue', [TTypeVR.vrUS], 'Graphic Layer Recommended Display RGB Value' );
     Add( $0068, 'GraphicLayerDescription', [TTypeVR.vrLO], 'Graphic Layer Description' );
     Add( $0080, 'ContentLabel', [TTypeVR.vrCS], 'Content Label' );
     Add( $0081, 'ContentDescription', [TTypeVR.vrLO], 'Content Description' );
     Add( $0082, 'PresentationCreationDate', [TTypeVR.vrDA], 'Presentation Creation Date' );
     Add( $0083, 'PresentationCreationTime', [TTypeVR.vrTM], 'Presentation Creation Time' );
     Add( $0084, 'ContentCreatorName', [TTypeVR.vrPN], 'Content Creator''s Name' );
     Add( $0086, 'ContentCreatorIdentificationCodeSequence', [TTypeVR.vrSQ], 'Content Creator''s Identification Code Sequence' );
     Add( $0087, 'AlternateContentDescriptionSequence', [TTypeVR.vrSQ], 'Alternate Content Description Sequence' );
     Add( $0100, 'PresentationSizeMode', [TTypeVR.vrCS], 'Presentation Size Mode' );
     Add( $0101, 'PresentationPixelSpacing', [TTypeVR.vrDS], 'Presentation Pixel Spacing' );
     Add( $0102, 'PresentationPixelAspectRatio', [TTypeVR.vrIS], 'Presentation Pixel Aspect Ratio' );
     Add( $0103, 'PresentationPixelMagnificationRatio', [TTypeVR.vrFL], 'Presentation Pixel Magnification Ratio' );
     Add( $0207, 'GraphicGroupLabel', [TTypeVR.vrLO], 'Graphic Group Label' );
     Add( $0208, 'GraphicGroupDescription', [TTypeVR.vrST], 'Graphic Group Description' );
     Add( $0209, 'CompoundGraphicSequence', [TTypeVR.vrSQ], 'Compound Graphic Sequence' );
     Add( $0226, 'CompoundGraphicInstanceID', [TTypeVR.vrUL], 'Compound Graphic Instance ID' );
     Add( $0227, 'FontName', [TTypeVR.vrLO], 'Font Name' );
     Add( $0228, 'FontNameType', [TTypeVR.vrCS], 'Font Name Type' );
     Add( $0229, 'CSSFontName', [TTypeVR.vrLO], 'CSS Font Name' );
     Add( $0230, 'RotationAngle', [TTypeVR.vrFD], 'Rotation Angle' );
     Add( $0231, 'TextStyleSequence', [TTypeVR.vrSQ], 'Text Style Sequence' );
     Add( $0232, 'LineStyleSequence', [TTypeVR.vrSQ], 'Line Style Sequence' );
     Add( $0233, 'FillStyleSequence', [TTypeVR.vrSQ], 'Fill Style Sequence' );
     Add( $0234, 'GraphicGroupSequence', [TTypeVR.vrSQ], 'Graphic Group Sequence' );
     Add( $0241, 'TextColorCIELabValue', [TTypeVR.vrUS], 'Text Color CIELab Value' );
     Add( $0242, 'HorizontalAlignment', [TTypeVR.vrCS], 'Horizontal Alignment' );
     Add( $0243, 'VerticalAlignment', [TTypeVR.vrCS], 'Vertical Alignment' );
     Add( $0244, 'ShadowStyle', [TTypeVR.vrCS], 'Shadow Style' );
     Add( $0245, 'ShadowOffsetX', [TTypeVR.vrFL], 'Shadow Offset X' );
     Add( $0246, 'ShadowOffsetY', [TTypeVR.vrFL], 'Shadow Offset Y' );
     Add( $0247, 'ShadowColorCIELabValue', [TTypeVR.vrUS], 'Shadow Color CIELab Value' );
     Add( $0248, 'Underlined', [TTypeVR.vrCS], 'Underlined' );
     Add( $0249, 'Bold', [TTypeVR.vrCS], 'Bold' );
     Add( $0250, 'Italic', [TTypeVR.vrCS], 'Italic' );
     Add( $0251, 'PatternOnColorCIELabValue', [TTypeVR.vrUS], 'Pattern On Color CIELab Value' );
     Add( $0252, 'PatternOffColorCIELabValue', [TTypeVR.vrUS], 'Pattern Off Color CIELab Value' );
     Add( $0253, 'LineThickness', [TTypeVR.vrFL], 'Line Thickness' );
     Add( $0254, 'LineDashingStyle', [TTypeVR.vrCS], 'Line Dashing Style' );
     Add( $0255, 'LinePattern', [TTypeVR.vrUL], 'Line Pattern' );
     Add( $0256, 'FillPattern', [TTypeVR.vrOB], 'Fill Pattern' );
     Add( $0257, 'FillMode', [TTypeVR.vrCS], 'Fill Mode' );
     Add( $0258, 'ShadowOpacity', [TTypeVR.vrFL], 'Shadow Opacity' );
     Add( $0261, 'GapLength', [TTypeVR.vrFL], 'Gap Length' );
     Add( $0262, 'DiameterOfVisibility', [TTypeVR.vrFL], 'Diameter of Visibility' );
     Add( $0273, 'RotationPoint', [TTypeVR.vrFL], 'Rotation Point' );
     Add( $0274, 'TickAlignment', [TTypeVR.vrCS], 'Tick Alignment' );
     Add( $0278, 'ShowTickLabel', [TTypeVR.vrCS], 'Show Tick Label' );
     Add( $0279, 'TickLabelAlignment', [TTypeVR.vrCS], 'Tick Label Alignment' );
     Add( $0282, 'CompoundGraphicUnits', [TTypeVR.vrCS], 'Compound Graphic Units' );
     Add( $0284, 'PatternOnOpacity', [TTypeVR.vrFL], 'Pattern On Opacity' );
     Add( $0285, 'PatternOffOpacity', [TTypeVR.vrFL], 'Pattern Off Opacity' );
     Add( $0287, 'MajorTicksSequence', [TTypeVR.vrSQ], 'Major Ticks Sequence' );
     Add( $0288, 'TickPosition', [TTypeVR.vrFL], 'Tick Position' );
     Add( $0289, 'TickLabel', [TTypeVR.vrSH], 'Tick Label' );
     Add( $0294, 'CompoundGraphicType', [TTypeVR.vrCS], 'Compound Graphic Type' );
     Add( $0295, 'GraphicGroupID', [TTypeVR.vrUL], 'Graphic Group ID' );
     Add( $0306, 'ShapeType', [TTypeVR.vrCS], 'Shape Type' );
     Add( $0308, 'RegistrationSequence', [TTypeVR.vrSQ], 'Registration Sequence' );
     Add( $0309, 'MatrixRegistrationSequence', [TTypeVR.vrSQ], 'Matrix Registration Sequence' );
     Add( $030A, 'MatrixSequence', [TTypeVR.vrSQ], 'Matrix Sequence' );
     Add( $030B, 'FrameOfReferenceToDisplayedCoordinateSystemTransformationMatrix', [TTypeVR.vrFD], 'Frame of Reference to Displayed Coordinate System Transformation Matrix' );
     Add( $030C, 'FrameOfReferenceTransformationMatrixType', [TTypeVR.vrCS], 'Frame of Reference Transformation Matrix Type' );
     Add( $030D, 'RegistrationTypeCodeSequence', [TTypeVR.vrSQ], 'Registration Type Code Sequence' );
     Add( $030F, 'FiducialDescription', [TTypeVR.vrST], 'Fiducial Description' );
     Add( $0310, 'FiducialIdentifier', [TTypeVR.vrSH], 'Fiducial Identifier' );
     Add( $0311, 'FiducialIdentifierCodeSequence', [TTypeVR.vrSQ], 'Fiducial Identifier Code Sequence' );
     Add( $0312, 'ContourUncertaintyRadius', [TTypeVR.vrFD], 'Contour Uncertainty Radius' );
     Add( $0314, 'UsedFiducialsSequence', [TTypeVR.vrSQ], 'Used Fiducials Sequence' );
     Add( $0318, 'GraphicCoordinatesDataSequence', [TTypeVR.vrSQ], 'Graphic Coordinates Data Sequence' );
     Add( $031A, 'FiducialUID', [TTypeVR.vrUI], 'Fiducial UID' );
     Add( $031C, 'FiducialSetSequence', [TTypeVR.vrSQ], 'Fiducial Set Sequence' );
     Add( $031E, 'FiducialSequence', [TTypeVR.vrSQ], 'Fiducial Sequence' );
     Add( $031F, 'FiducialsPropertyCategoryCodeSequence', [TTypeVR.vrSQ], 'Fiducials Property Category Code Sequence' );
     Add( $0401, 'GraphicLayerRecommendedDisplayCIELabValue', [TTypeVR.vrUS], 'Graphic Layer Recommended Display CIELab Value' );
     Add( $0402, 'BlendingSequence', [TTypeVR.vrSQ], 'Blending Sequence' );
     Add( $0403, 'RelativeOpacity', [TTypeVR.vrFL], 'Relative Opacity' );
     Add( $0404, 'ReferencedSpatialRegistrationSequence', [TTypeVR.vrSQ], 'Referenced Spatial Registration Sequence' );
     Add( $0405, 'BlendingPosition', [TTypeVR.vrCS], 'Blending Position' );
     Add( $1101, 'PresentationDisplayCollectionUID', [TTypeVR.vrUI], 'Presentation Display Collection UID' );
     Add( $1102, 'PresentationSequenceCollectionUID', [TTypeVR.vrUI], 'Presentation Sequence Collection UID' );
     Add( $1103, 'PresentationSequencePositionIndex', [TTypeVR.vrUS], 'Presentation Sequence Position Index' );
     Add( $1104, 'RenderedImageReferenceSequence', [TTypeVR.vrSQ], 'Rendered Image Reference Sequence' );
     Add( $1201, 'VolumetricPresentationStateInputSequence', [TTypeVR.vrSQ], 'Volumetric Presentation State Input Sequence' );
     Add( $1202, 'PresentationInputType', [TTypeVR.vrCS], 'Presentation Input Type' );
     Add( $1203, 'InputSequencePositionIndex', [TTypeVR.vrUS], 'Input Sequence Position Index' );
     Add( $1204, 'Crop', [TTypeVR.vrCS], 'Crop' );
     Add( $1205, 'CroppingSpecificationIndex', [TTypeVR.vrUS], 'Cropping Specification Index' );
     Add( $1206, 'CompositingMethod', [TTypeVR.vrCS], 'Compositing Method' );
     Add( $1207, 'VolumetricPresentationInputNumber', [TTypeVR.vrUS], 'Volumetric Presentation Input Number' );
     Add( $1208, 'ImageVolumeGeometry', [TTypeVR.vrCS], 'Image Volume Geometry' );
     Add( $1301, 'VolumeCroppingSequence', [TTypeVR.vrSQ], 'Volume Cropping Sequence' );
     Add( $1302, 'VolumeCroppingMethod', [TTypeVR.vrCS], 'Volume Cropping Method' );
     Add( $1303, 'BoundingBoxCrop', [TTypeVR.vrFD], 'Bounding Box Crop' );
     Add( $1304, 'ObliqueCroppingPlaneSequence', [TTypeVR.vrSQ], 'Oblique Cropping Plane Sequence' );
     Add( $1305, 'Plane', [TTypeVR.vrFD], 'Plane' );
     Add( $1306, 'PlaneNormal', [TTypeVR.vrFD], 'Plane Normal' );
     Add( $1309, 'CroppingSpecificationNumber', [TTypeVR.vrUS], 'Cropping Specification Number' );
     Add( $1501, 'MultiPlanarReconstructionStyle', [TTypeVR.vrCS], 'Multi-Planar Reconstruction Style' );
     Add( $1502, 'MPRThicknessType', [TTypeVR.vrCS], 'MPR Thickness Type' );
     Add( $1503, 'MPRSlabThickness', [TTypeVR.vrFD], 'MPR Slab Thickness' );
     Add( $1505, 'MPRTopLeftHandCorner', [TTypeVR.vrFD], 'MPR Top Left Hand Corner' );
     Add( $1507, 'MPRViewWidthDirection', [TTypeVR.vrFD], 'MPR View Width Direction' );
     Add( $1508, 'MPRViewWidth', [TTypeVR.vrFD], 'MPR View Width' );
     Add( $150C, 'NumberOfVolumetricCurvePoints', [TTypeVR.vrUL], 'Number of Volumetric Curve Points' );
     Add( $150D, 'VolumetricCurvePoints', [TTypeVR.vrOD], 'Volumetric Curve Points' );
     Add( $1511, 'MPRViewHeightDirection', [TTypeVR.vrFD], 'MPR View Height Direction' );
     Add( $1512, 'MPRViewHeight', [TTypeVR.vrFD], 'MPR View Height' );
     Add( $1801, 'PresentationStateClassificationComponentSequence', [TTypeVR.vrSQ], 'Presentation State Classification Component Sequence' );
     Add( $1802, 'ComponentType', [TTypeVR.vrCS], 'Component Type' );
     Add( $1803, 'ComponentInputSequence', [TTypeVR.vrSQ], 'Component Input Sequence' );
     Add( $1804, 'VolumetricPresentationInputIndex', [TTypeVR.vrUS], 'Volumetric Presentation Input Index' );
     Add( $1805, 'PresentationStateCompositorComponentSequence', [TTypeVR.vrSQ], 'Presentation State Compositor Component Sequence' );
     Add( $1806, 'WeightingTransferFunctionSequence', [TTypeVR.vrSQ], 'Weighting Transfer Function Sequence' );
     Add( $1807, 'WeightingLookupTableDescriptor', [TTypeVR.vrUS], 'Weighting Lookup Table Descriptor' );
     Add( $1808, 'WeightingLookupTableData', [TTypeVR.vrOB], 'Weighting Lookup Table Data' );
     Add( $1901, 'VolumetricAnnotationSequence', [TTypeVR.vrSQ], 'Volumetric Annotation Sequence' );
     Add( $1903, 'ReferencedStructuredContextSequence', [TTypeVR.vrSQ], 'Referenced Structured Context Sequence' );
     Add( $1904, 'ReferencedContentItem', [TTypeVR.vrUI], 'Referenced Content Item' );
     Add( $1905, 'VolumetricPresentationInputAnnotationSequence', [TTypeVR.vrSQ], 'Volumetric Presentation Input Annotation Sequence' );
     Add( $1907, 'AnnotationClipping', [TTypeVR.vrCS], 'Annotation Clipping' );
     Add( $1A01, 'PresentationAnimationStyle', [TTypeVR.vrCS], 'Presentation Animation Style' );
     Add( $1A03, 'RecommendedAnimationRate', [TTypeVR.vrFD], 'Recommended Animation Rate' );
     Add( $1A04, 'AnimationCurveSequence', [TTypeVR.vrSQ], 'Animation Curve Sequence' );
     Add( $1A05, 'AnimationStepSize', [TTypeVR.vrFD], 'Animation Step Size' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
