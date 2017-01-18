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
     Add( $0012, 'LensDescription', [TTypeVR.vrLO], 'Lens Description' );
     Add( $0014, 'RightLensSequence', [TTypeVR.vrSQ], 'Right Lens Sequence' );
     Add( $0015, 'LeftLensSequence', [TTypeVR.vrSQ], 'Left Lens Sequence' );
     Add( $0016, 'UnspecifiedLateralityLensSequence', [TTypeVR.vrSQ], 'Unspecified Laterality Lens Sequence' );
     Add( $0018, 'CylinderSequence', [TTypeVR.vrSQ], 'Cylinder Sequence' );
     Add( $0028, 'PrismSequence', [TTypeVR.vrSQ], 'Prism Sequence' );
     Add( $0030, 'HorizontalPrismPower', [TTypeVR.vrFD], 'Horizontal Prism Power' );
     Add( $0032, 'HorizontalPrismBase', [TTypeVR.vrCS], 'Horizontal Prism Base' );
     Add( $0034, 'VerticalPrismPower', [TTypeVR.vrFD], 'Vertical Prism Power' );
     Add( $0036, 'VerticalPrismBase', [TTypeVR.vrCS], 'Vertical Prism Base' );
     Add( $0038, 'LensSegmentType', [TTypeVR.vrCS], 'Lens Segment Type' );
     Add( $0040, 'OpticalTransmittance', [TTypeVR.vrFD], 'Optical Transmittance' );
     Add( $0042, 'ChannelWidth', [TTypeVR.vrFD], 'Channel Width' );
     Add( $0044, 'PupilSize', [TTypeVR.vrFD], 'Pupil Size' );
     Add( $0046, 'CornealSize', [TTypeVR.vrFD], 'Corneal Size' );
     Add( $0050, 'AutorefractionRightEyeSequence', [TTypeVR.vrSQ], 'Autorefraction Right Eye Sequence' );
     Add( $0052, 'AutorefractionLeftEyeSequence', [TTypeVR.vrSQ], 'Autorefraction Left Eye Sequence' );
     Add( $0060, 'DistancePupillaryDistance', [TTypeVR.vrFD], 'Distance Pupillary Distance' );
     Add( $0062, 'NearPupillaryDistance', [TTypeVR.vrFD], 'Near Pupillary Distance' );
     Add( $0063, 'IntermediatePupillaryDistance', [TTypeVR.vrFD], 'Intermediate Pupillary Distance' );
     Add( $0064, 'OtherPupillaryDistance', [TTypeVR.vrFD], 'Other Pupillary Distance' );
     Add( $0070, 'KeratometryRightEyeSequence', [TTypeVR.vrSQ], 'Keratometry Right Eye Sequence' );
     Add( $0071, 'KeratometryLeftEyeSequence', [TTypeVR.vrSQ], 'Keratometry Left Eye Sequence' );
     Add( $0074, 'SteepKeratometricAxisSequence', [TTypeVR.vrSQ], 'Steep Keratometric Axis Sequence' );
     Add( $0075, 'RadiusOfCurvature', [TTypeVR.vrFD], 'Radius of Curvature' );
     Add( $0076, 'KeratometricPower', [TTypeVR.vrFD], 'Keratometric Power' );
     Add( $0077, 'KeratometricAxis', [TTypeVR.vrFD], 'Keratometric Axis' );
     Add( $0080, 'FlatKeratometricAxisSequence', [TTypeVR.vrSQ], 'Flat Keratometric Axis Sequence' );
     Add( $0092, 'BackgroundColor', [TTypeVR.vrCS], 'Background Color' );
     Add( $0094, 'Optotype', [TTypeVR.vrCS], 'Optotype' );
     Add( $0095, 'OptotypePresentation', [TTypeVR.vrCS], 'Optotype Presentation' );
     Add( $0097, 'SubjectiveRefractionRightEyeSequence', [TTypeVR.vrSQ], 'Subjective Refraction Right Eye Sequence' );
     Add( $0098, 'SubjectiveRefractionLeftEyeSequence', [TTypeVR.vrSQ], 'Subjective Refraction Left Eye Sequence' );
     Add( $0100, 'AddNearSequence', [TTypeVR.vrSQ], 'Add Near Sequence' );
     Add( $0101, 'AddIntermediateSequence', [TTypeVR.vrSQ], 'Add Intermediate Sequence' );
     Add( $0102, 'AddOtherSequence', [TTypeVR.vrSQ], 'Add Other Sequence' );
     Add( $0104, 'AddPower', [TTypeVR.vrFD], 'Add Power' );
     Add( $0106, 'ViewingDistance', [TTypeVR.vrFD], 'Viewing Distance' );
     Add( $0121, 'VisualAcuityTypeCodeSequence', [TTypeVR.vrSQ], 'Visual Acuity Type Code Sequence' );
     Add( $0122, 'VisualAcuityRightEyeSequence', [TTypeVR.vrSQ], 'Visual Acuity Right Eye Sequence' );
     Add( $0123, 'VisualAcuityLeftEyeSequence', [TTypeVR.vrSQ], 'Visual Acuity Left Eye Sequence' );
     Add( $0124, 'VisualAcuityBothEyesOpenSequence', [TTypeVR.vrSQ], 'Visual Acuity Both Eyes Open Sequence' );
     Add( $0125, 'ViewingDistanceType', [TTypeVR.vrCS], 'Viewing Distance Type' );
     Add( $0135, 'VisualAcuityModifiers', [TTypeVR.vrSS], 'Visual Acuity Modifiers' );
     Add( $0137, 'DecimalVisualAcuity', [TTypeVR.vrFD], 'Decimal Visual Acuity' );
     Add( $0139, 'OptotypeDetailedDefinition', [TTypeVR.vrLO], 'Optotype Detailed Definition' );
     Add( $0145, 'ReferencedRefractiveMeasurementsSequence', [TTypeVR.vrSQ], 'Referenced Refractive Measurements Sequence' );
     Add( $0146, 'SpherePower', [TTypeVR.vrFD], 'Sphere Power' );
     Add( $0147, 'CylinderPower', [TTypeVR.vrFD], 'Cylinder Power' );
     Add( $0201, 'CornealTopographySurface', [TTypeVR.vrCS], 'Corneal Topography Surface' );
     Add( $0202, 'CornealVertexLocation', [TTypeVR.vrFL], 'Corneal Vertex Location' );
     Add( $0203, 'PupilCentroidXCoordinate', [TTypeVR.vrFL], 'Pupil Centroid X-Coordinate' );
     Add( $0204, 'PupilCentroidYCoordinate', [TTypeVR.vrFL], 'Pupil Centroid Y-Coordinate' );
     Add( $0205, 'EquivalentPupilRadius', [TTypeVR.vrFL], 'Equivalent Pupil Radius' );
     Add( $0207, 'CornealTopographyMapTypeCodeSequence', [TTypeVR.vrSQ], 'Corneal Topography Map Type Code Sequence' );
     Add( $0208, 'VerticesOfTheOutlineOfPupil', [TTypeVR.vrIS], 'Vertices of the Outline of Pupil' );
     Add( $0210, 'CornealTopographyMappingNormalsSequence', [TTypeVR.vrSQ], 'Corneal Topography Mapping Normals Sequence' );
     Add( $0211, 'MaximumCornealCurvatureSequence', [TTypeVR.vrSQ], 'Maximum Corneal Curvature Sequence' );
     Add( $0212, 'MaximumCornealCurvature', [TTypeVR.vrFL], 'Maximum Corneal Curvature' );
     Add( $0213, 'MaximumCornealCurvatureLocation', [TTypeVR.vrFL], 'Maximum Corneal Curvature Location' );
     Add( $0215, 'MinimumKeratometricSequence', [TTypeVR.vrSQ], 'Minimum Keratometric Sequence' );
     Add( $0218, 'SimulatedKeratometricCylinderSequence', [TTypeVR.vrSQ], 'Simulated Keratometric Cylinder Sequence' );
     Add( $0220, 'AverageCornealPower', [TTypeVR.vrFL], 'Average Corneal Power' );
     Add( $0224, 'CornealISValue', [TTypeVR.vrFL], 'Corneal I-S Value' );
     Add( $0227, 'AnalyzedArea', [TTypeVR.vrFL], 'Analyzed Area' );
     Add( $0230, 'SurfaceRegularityIndex', [TTypeVR.vrFL], 'Surface Regularity Index' );
     Add( $0232, 'SurfaceAsymmetryIndex', [TTypeVR.vrFL], 'Surface Asymmetry Index' );
     Add( $0234, 'CornealEccentricityIndex', [TTypeVR.vrFL], 'Corneal Eccentricity Index' );
     Add( $0236, 'KeratoconusPredictionIndex', [TTypeVR.vrFL], 'Keratoconus Prediction Index' );
     Add( $0238, 'DecimalPotentialVisualAcuity', [TTypeVR.vrFL], 'Decimal Potential Visual Acuity' );
     Add( $0242, 'CornealTopographyMapQualityEvaluation', [TTypeVR.vrCS], 'Corneal Topography Map Quality Evaluation' );
     Add( $0244, 'SourceImageCornealProcessedDataSequence', [TTypeVR.vrSQ], 'Source Image Corneal Processed Data Sequence' );
     Add( $0247, 'CornealPointLocation', [TTypeVR.vrFL], 'Corneal Point Location' );
     Add( $0248, 'CornealPointEstimated', [TTypeVR.vrCS], 'Corneal Point Estimated' );
     Add( $0249, 'AxialPower', [TTypeVR.vrFL], 'Axial Power' );
     Add( $0250, 'TangentialPower', [TTypeVR.vrFL], 'Tangential Power' );
     Add( $0251, 'RefractivePower', [TTypeVR.vrFL], 'Refractive Power' );
     Add( $0252, 'RelativeElevation', [TTypeVR.vrFL], 'Relative Elevation' );
     Add( $0253, 'CornealWavefront', [TTypeVR.vrFL], 'Corneal Wavefront' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
