unit LUX.DICOM.Tags.G0046;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0046

     TdcmGrup0046 = class( TdcmGrup )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0046

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmGrup0046.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0012, 'LensDescription', [TKindVR.vrLO], 'Lens Description' );
     Add( $0014, 'RightLensSequence', [TKindVR.vrSQ], 'Right Lens Sequence' );
     Add( $0015, 'LeftLensSequence', [TKindVR.vrSQ], 'Left Lens Sequence' );
     Add( $0016, 'UnspecifiedLateralityLensSequence', [TKindVR.vrSQ], 'Unspecified Laterality Lens Sequence' );
     Add( $0018, 'CylinderSequence', [TKindVR.vrSQ], 'Cylinder Sequence' );
     Add( $0028, 'PrismSequence', [TKindVR.vrSQ], 'Prism Sequence' );
     Add( $0030, 'HorizontalPrismPower', [TKindVR.vrFD], 'Horizontal Prism Power' );
     Add( $0032, 'HorizontalPrismBase', [TKindVR.vrCS], 'Horizontal Prism Base' );
     Add( $0034, 'VerticalPrismPower', [TKindVR.vrFD], 'Vertical Prism Power' );
     Add( $0036, 'VerticalPrismBase', [TKindVR.vrCS], 'Vertical Prism Base' );
     Add( $0038, 'LensSegmentType', [TKindVR.vrCS], 'Lens Segment Type' );
     Add( $0040, 'OpticalTransmittance', [TKindVR.vrFD], 'Optical Transmittance' );
     Add( $0042, 'ChannelWidth', [TKindVR.vrFD], 'Channel Width' );
     Add( $0044, 'PupilSize', [TKindVR.vrFD], 'Pupil Size' );
     Add( $0046, 'CornealSize', [TKindVR.vrFD], 'Corneal Size' );
     Add( $0050, 'AutorefractionRightEyeSequence', [TKindVR.vrSQ], 'Autorefraction Right Eye Sequence' );
     Add( $0052, 'AutorefractionLeftEyeSequence', [TKindVR.vrSQ], 'Autorefraction Left Eye Sequence' );
     Add( $0060, 'DistancePupillaryDistance', [TKindVR.vrFD], 'Distance Pupillary Distance' );
     Add( $0062, 'NearPupillaryDistance', [TKindVR.vrFD], 'Near Pupillary Distance' );
     Add( $0063, 'IntermediatePupillaryDistance', [TKindVR.vrFD], 'Intermediate Pupillary Distance' );
     Add( $0064, 'OtherPupillaryDistance', [TKindVR.vrFD], 'Other Pupillary Distance' );
     Add( $0070, 'KeratometryRightEyeSequence', [TKindVR.vrSQ], 'Keratometry Right Eye Sequence' );
     Add( $0071, 'KeratometryLeftEyeSequence', [TKindVR.vrSQ], 'Keratometry Left Eye Sequence' );
     Add( $0074, 'SteepKeratometricAxisSequence', [TKindVR.vrSQ], 'Steep Keratometric Axis Sequence' );
     Add( $0075, 'RadiusOfCurvature', [TKindVR.vrFD], 'Radius of Curvature' );
     Add( $0076, 'KeratometricPower', [TKindVR.vrFD], 'Keratometric Power' );
     Add( $0077, 'KeratometricAxis', [TKindVR.vrFD], 'Keratometric Axis' );
     Add( $0080, 'FlatKeratometricAxisSequence', [TKindVR.vrSQ], 'Flat Keratometric Axis Sequence' );
     Add( $0092, 'BackgroundColor', [TKindVR.vrCS], 'Background Color' );
     Add( $0094, 'Optotype', [TKindVR.vrCS], 'Optotype' );
     Add( $0095, 'OptotypePresentation', [TKindVR.vrCS], 'Optotype Presentation' );
     Add( $0097, 'SubjectiveRefractionRightEyeSequence', [TKindVR.vrSQ], 'Subjective Refraction Right Eye Sequence' );
     Add( $0098, 'SubjectiveRefractionLeftEyeSequence', [TKindVR.vrSQ], 'Subjective Refraction Left Eye Sequence' );
     Add( $0100, 'AddNearSequence', [TKindVR.vrSQ], 'Add Near Sequence' );
     Add( $0101, 'AddIntermediateSequence', [TKindVR.vrSQ], 'Add Intermediate Sequence' );
     Add( $0102, 'AddOtherSequence', [TKindVR.vrSQ], 'Add Other Sequence' );
     Add( $0104, 'AddPower', [TKindVR.vrFD], 'Add Power' );
     Add( $0106, 'ViewingDistance', [TKindVR.vrFD], 'Viewing Distance' );
     Add( $0121, 'VisualAcuityTypeCodeSequence', [TKindVR.vrSQ], 'Visual Acuity Type Code Sequence' );
     Add( $0122, 'VisualAcuityRightEyeSequence', [TKindVR.vrSQ], 'Visual Acuity Right Eye Sequence' );
     Add( $0123, 'VisualAcuityLeftEyeSequence', [TKindVR.vrSQ], 'Visual Acuity Left Eye Sequence' );
     Add( $0124, 'VisualAcuityBothEyesOpenSequence', [TKindVR.vrSQ], 'Visual Acuity Both Eyes Open Sequence' );
     Add( $0125, 'ViewingDistanceType', [TKindVR.vrCS], 'Viewing Distance Type' );
     Add( $0135, 'VisualAcuityModifiers', [TKindVR.vrSS], 'Visual Acuity Modifiers' );
     Add( $0137, 'DecimalVisualAcuity', [TKindVR.vrFD], 'Decimal Visual Acuity' );
     Add( $0139, 'OptotypeDetailedDefinition', [TKindVR.vrLO], 'Optotype Detailed Definition' );
     Add( $0145, 'ReferencedRefractiveMeasurementsSequence', [TKindVR.vrSQ], 'Referenced Refractive Measurements Sequence' );
     Add( $0146, 'SpherePower', [TKindVR.vrFD], 'Sphere Power' );
     Add( $0147, 'CylinderPower', [TKindVR.vrFD], 'Cylinder Power' );
     Add( $0201, 'CornealTopographySurface', [TKindVR.vrCS], 'Corneal Topography Surface' );
     Add( $0202, 'CornealVertexLocation', [TKindVR.vrFL], 'Corneal Vertex Location' );
     Add( $0203, 'PupilCentroidXCoordinate', [TKindVR.vrFL], 'Pupil Centroid X-Coordinate' );
     Add( $0204, 'PupilCentroidYCoordinate', [TKindVR.vrFL], 'Pupil Centroid Y-Coordinate' );
     Add( $0205, 'EquivalentPupilRadius', [TKindVR.vrFL], 'Equivalent Pupil Radius' );
     Add( $0207, 'CornealTopographyMapTypeCodeSequence', [TKindVR.vrSQ], 'Corneal Topography Map Type Code Sequence' );
     Add( $0208, 'VerticesOfTheOutlineOfPupil', [TKindVR.vrIS], 'Vertices of the Outline of Pupil' );
     Add( $0210, 'CornealTopographyMappingNormalsSequence', [TKindVR.vrSQ], 'Corneal Topography Mapping Normals Sequence' );
     Add( $0211, 'MaximumCornealCurvatureSequence', [TKindVR.vrSQ], 'Maximum Corneal Curvature Sequence' );
     Add( $0212, 'MaximumCornealCurvature', [TKindVR.vrFL], 'Maximum Corneal Curvature' );
     Add( $0213, 'MaximumCornealCurvatureLocation', [TKindVR.vrFL], 'Maximum Corneal Curvature Location' );
     Add( $0215, 'MinimumKeratometricSequence', [TKindVR.vrSQ], 'Minimum Keratometric Sequence' );
     Add( $0218, 'SimulatedKeratometricCylinderSequence', [TKindVR.vrSQ], 'Simulated Keratometric Cylinder Sequence' );
     Add( $0220, 'AverageCornealPower', [TKindVR.vrFL], 'Average Corneal Power' );
     Add( $0224, 'CornealISValue', [TKindVR.vrFL], 'Corneal I-S Value' );
     Add( $0227, 'AnalyzedArea', [TKindVR.vrFL], 'Analyzed Area' );
     Add( $0230, 'SurfaceRegularityIndex', [TKindVR.vrFL], 'Surface Regularity Index' );
     Add( $0232, 'SurfaceAsymmetryIndex', [TKindVR.vrFL], 'Surface Asymmetry Index' );
     Add( $0234, 'CornealEccentricityIndex', [TKindVR.vrFL], 'Corneal Eccentricity Index' );
     Add( $0236, 'KeratoconusPredictionIndex', [TKindVR.vrFL], 'Keratoconus Prediction Index' );
     Add( $0238, 'DecimalPotentialVisualAcuity', [TKindVR.vrFL], 'Decimal Potential Visual Acuity' );
     Add( $0242, 'CornealTopographyMapQualityEvaluation', [TKindVR.vrCS], 'Corneal Topography Map Quality Evaluation' );
     Add( $0244, 'SourceImageCornealProcessedDataSequence', [TKindVR.vrSQ], 'Source Image Corneal Processed Data Sequence' );
     Add( $0247, 'CornealPointLocation', [TKindVR.vrFL], 'Corneal Point Location' );
     Add( $0248, 'CornealPointEstimated', [TKindVR.vrCS], 'Corneal Point Estimated' );
     Add( $0249, 'AxialPower', [TKindVR.vrFL], 'Axial Power' );
     Add( $0250, 'TangentialPower', [TKindVR.vrFL], 'Tangential Power' );
     Add( $0251, 'RefractivePower', [TKindVR.vrFL], 'Refractive Power' );
     Add( $0252, 'RelativeElevation', [TKindVR.vrFL], 'Relative Elevation' );
     Add( $0253, 'CornealWavefront', [TKindVR.vrFL], 'Corneal Wavefront' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
