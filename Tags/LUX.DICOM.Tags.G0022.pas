unit LUX.DICOM.Tags.G0022;

interface //#################################################################### ■

uses LUX, LUX.DICOM.VRs, LUX.DICOM.Tags;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0022

     TdcmGrup0022 = class( TdcmGrup )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0022

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

class procedure TdcmGrup0022.AddBook( const Book_:TdcmBookTag );
begin
     Create( Book_, $0022 );
end;

//------------------------------------------------------------------------------

constructor TdcmGrup0022.Create( const Book_:TdcmBookTag; const Code_:THex4 );
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0001, 'LightPathFilterPassThroughWavelength', [TKindVR.vrUS], 'Light Path Filter Pass-Through Wavelength' );
     Add( $0002, 'LightPathFilterPassBand', [TKindVR.vrUS], 'Light Path Filter Pass Band' );
     Add( $0003, 'ImagePathFilterPassThroughWavelength', [TKindVR.vrUS], 'Image Path Filter Pass-Through Wavelength' );
     Add( $0004, 'ImagePathFilterPassBand', [TKindVR.vrUS], 'Image Path Filter Pass Band' );
     Add( $0005, 'PatientEyeMovementCommanded', [TKindVR.vrCS], 'Patient Eye Movement Commanded' );
     Add( $0006, 'PatientEyeMovementCommandCodeSequence', [TKindVR.vrSQ], 'Patient Eye Movement Command Code Sequence' );
     Add( $0007, 'SphericalLensPower', [TKindVR.vrFL], 'Spherical Lens Power' );
     Add( $0008, 'CylinderLensPower', [TKindVR.vrFL], 'Cylinder Lens Power' );
     Add( $0009, 'CylinderAxis', [TKindVR.vrFL], 'Cylinder Axis' );
     Add( $000A, 'EmmetropicMagnification', [TKindVR.vrFL], 'Emmetropic Magnification' );
     Add( $000B, 'IntraOcularPressure', [TKindVR.vrFL], 'Intra Ocular Pressure' );
     Add( $000C, 'HorizontalFieldOfView', [TKindVR.vrFL], 'Horizontal Field of View' );
     Add( $000D, 'PupilDilated', [TKindVR.vrCS], 'Pupil Dilated' );
     Add( $000E, 'DegreeOfDilation', [TKindVR.vrFL], 'Degree of Dilation' );
     Add( $0010, 'StereoBaselineAngle', [TKindVR.vrFL], 'Stereo Baseline Angle' );
     Add( $0011, 'StereoBaselineDisplacement', [TKindVR.vrFL], 'Stereo Baseline Displacement' );
     Add( $0012, 'StereoHorizontalPixelOffset', [TKindVR.vrFL], 'Stereo Horizontal Pixel Offset' );
     Add( $0013, 'StereoVerticalPixelOffset', [TKindVR.vrFL], 'Stereo Vertical Pixel Offset' );
     Add( $0014, 'StereoRotation', [TKindVR.vrFL], 'Stereo Rotation' );
     Add( $0015, 'AcquisitionDeviceTypeCodeSequence', [TKindVR.vrSQ], 'Acquisition Device Type Code Sequence' );
     Add( $0016, 'IlluminationTypeCodeSequence', [TKindVR.vrSQ], 'Illumination Type Code Sequence' );
     Add( $0017, 'LightPathFilterTypeStackCodeSequence', [TKindVR.vrSQ], 'Light Path Filter Type Stack Code Sequence' );
     Add( $0018, 'ImagePathFilterTypeStackCodeSequence', [TKindVR.vrSQ], 'Image Path Filter Type Stack Code Sequence' );
     Add( $0019, 'LensesCodeSequence', [TKindVR.vrSQ], 'Lenses Code Sequence' );
     Add( $001A, 'ChannelDescriptionCodeSequence', [TKindVR.vrSQ], 'Channel Description Code Sequence' );
     Add( $001B, 'RefractiveStateSequence', [TKindVR.vrSQ], 'Refractive State Sequence' );
     Add( $001C, 'MydriaticAgentCodeSequence', [TKindVR.vrSQ], 'Mydriatic Agent Code Sequence' );
     Add( $001D, 'RelativeImagePositionCodeSequence', [TKindVR.vrSQ], 'Relative Image Position Code Sequence' );
     Add( $001E, 'CameraAngleOfView', [TKindVR.vrFL], 'Camera Angle of View' );
     Add( $0020, 'StereoPairsSequence', [TKindVR.vrSQ], 'Stereo Pairs Sequence' );
     Add( $0021, 'LeftImageSequence', [TKindVR.vrSQ], 'Left Image Sequence' );
     Add( $0022, 'RightImageSequence', [TKindVR.vrSQ], 'Right Image Sequence' );
     Add( $0028, 'StereoPairsPresent', [TKindVR.vrCS], 'Stereo Pairs Present' );
     Add( $0030, 'AxialLengthOfTheEye', [TKindVR.vrFL], 'Axial Length of the Eye' );
     Add( $0031, 'OphthalmicFrameLocationSequence', [TKindVR.vrSQ], 'Ophthalmic Frame Location Sequence' );
     Add( $0032, 'ReferenceCoordinates', [TKindVR.vrFL], 'Reference Coordinates' );
     Add( $0035, 'DepthSpatialResolution', [TKindVR.vrFL], 'Depth Spatial Resolution' );
     Add( $0036, 'MaximumDepthDistortion', [TKindVR.vrFL], 'Maximum Depth Distortion' );
     Add( $0037, 'AlongScanSpatialResolution', [TKindVR.vrFL], 'Along-scan Spatial Resolution' );
     Add( $0038, 'MaximumAlongScanDistortion', [TKindVR.vrFL], 'Maximum Along-scan Distortion' );
     Add( $0039, 'OphthalmicImageOrientation', [TKindVR.vrCS], 'Ophthalmic Image Orientation' );
     Add( $0041, 'DepthOfTransverseImage', [TKindVR.vrFL], 'Depth of Transverse Image' );
     Add( $0042, 'MydriaticAgentConcentrationUnitsSequence', [TKindVR.vrSQ], 'Mydriatic Agent Concentration Units Sequence' );
     Add( $0048, 'AcrossScanSpatialResolution', [TKindVR.vrFL], 'Across-scan Spatial Resolution' );
     Add( $0049, 'MaximumAcrossScanDistortion', [TKindVR.vrFL], 'Maximum Across-scan Distortion' );
     Add( $004E, 'MydriaticAgentConcentration', [TKindVR.vrDS], 'Mydriatic Agent Concentration' );
     Add( $0055, 'IlluminationWaveLength', [TKindVR.vrFL], 'Illumination Wave Length' );
     Add( $0056, 'IlluminationPower', [TKindVR.vrFL], 'Illumination Power' );
     Add( $0057, 'IlluminationBandwidth', [TKindVR.vrFL], 'Illumination Bandwidth' );
     Add( $0058, 'MydriaticAgentSequence', [TKindVR.vrSQ], 'Mydriatic Agent Sequence' );
     Add( $1007, 'OphthalmicAxialMeasurementsRightEyeSequence', [TKindVR.vrSQ], 'Ophthalmic Axial Measurements Right Eye Sequence' );
     Add( $1008, 'OphthalmicAxialMeasurementsLeftEyeSequence', [TKindVR.vrSQ], 'Ophthalmic Axial Measurements Left Eye Sequence' );
     Add( $1009, 'OphthalmicAxialMeasurementsDeviceType', [TKindVR.vrCS], 'Ophthalmic Axial Measurements Device Type' );
     Add( $1010, 'OphthalmicAxialLengthMeasurementsType', [TKindVR.vrCS], 'Ophthalmic Axial Length Measurements Type' );
     Add( $1012, 'OphthalmicAxialLengthSequence', [TKindVR.vrSQ], 'Ophthalmic Axial Length Sequence' );
     Add( $1019, 'OphthalmicAxialLength', [TKindVR.vrFL], 'Ophthalmic Axial Length' );
     Add( $1024, 'LensStatusCodeSequence', [TKindVR.vrSQ], 'Lens Status Code Sequence' );
     Add( $1025, 'VitreousStatusCodeSequence', [TKindVR.vrSQ], 'Vitreous Status Code Sequence' );
     Add( $1028, 'IOLFormulaCodeSequence', [TKindVR.vrSQ], 'IOL Formula Code Sequence' );
     Add( $1029, 'IOLFormulaDetail', [TKindVR.vrLO], 'IOL Formula Detail' );
     Add( $1033, 'KeratometerIndex', [TKindVR.vrFL], 'Keratometer Index' );
     Add( $1035, 'SourceOfOphthalmicAxialLengthCodeSequence', [TKindVR.vrSQ], 'Source of Ophthalmic Axial Length Code Sequence' );
     Add( $1037, 'TargetRefraction', [TKindVR.vrFL], 'Target Refraction' );
     Add( $1039, 'RefractiveProcedureOccurred', [TKindVR.vrCS], 'Refractive Procedure Occurred' );
     Add( $1040, 'RefractiveSurgeryTypeCodeSequence', [TKindVR.vrSQ], 'Refractive Surgery Type Code Sequence' );
     Add( $1044, 'OphthalmicUltrasoundMethodCodeSequence', [TKindVR.vrSQ], 'Ophthalmic Ultrasound Method Code Sequence' );
     Add( $1050, 'OphthalmicAxialLengthMeasurementsSequence', [TKindVR.vrSQ], 'Ophthalmic Axial Length Measurements Sequence' );
     Add( $1053, 'IOLPower', [TKindVR.vrFL], 'IOL Power' );
     Add( $1054, 'PredictedRefractiveError', [TKindVR.vrFL], 'Predicted Refractive Error' );
     Add( $1059, 'OphthalmicAxialLengthVelocity', [TKindVR.vrFL], 'Ophthalmic Axial Length Velocity' );
     Add( $1065, 'LensStatusDescription', [TKindVR.vrLO], 'Lens Status Description' );
     Add( $1066, 'VitreousStatusDescription', [TKindVR.vrLO], 'Vitreous Status Description' );
     Add( $1090, 'IOLPowerSequence', [TKindVR.vrSQ], 'IOL Power Sequence' );
     Add( $1092, 'LensConstantSequence', [TKindVR.vrSQ], 'Lens Constant Sequence' );
     Add( $1093, 'IOLManufacturer', [TKindVR.vrLO], 'IOL Manufacturer' );
     Add( $1094, 'LensConstantDescription', [TKindVR.vrLO], 'Lens Constant Description' );
     Add( $1095, 'ImplantName', [TKindVR.vrLO], 'Implant Name' );
     Add( $1096, 'KeratometryMeasurementTypeCodeSequence', [TKindVR.vrSQ], 'Keratometry Measurement Type Code Sequence' );
     Add( $1097, 'ImplantPartNumber', [TKindVR.vrLO], 'Implant Part Number' );
     Add( $1100, 'ReferencedOphthalmicAxialMeasurementsSequence', [TKindVR.vrSQ], 'Referenced Ophthalmic Axial Measurements Sequence' );
     Add( $1101, 'OphthalmicAxialLengthMeasurementsSegmentNameCodeSequence', [TKindVR.vrSQ], 'Ophthalmic Axial Length Measurements Segment Name Code Sequence' );
     Add( $1103, 'RefractiveErrorBeforeRefractiveSurgeryCodeSequence', [TKindVR.vrSQ], 'Refractive Error Before Refractive Surgery Code Sequence' );
     Add( $1121, 'IOLPowerForExactEmmetropia', [TKindVR.vrFL], 'IOL Power For Exact Emmetropia' );
     Add( $1122, 'IOLPowerForExactTargetRefraction', [TKindVR.vrFL], 'IOL Power For Exact Target Refraction' );
     Add( $1125, 'AnteriorChamberDepthDefinitionCodeSequence', [TKindVR.vrSQ], 'Anterior Chamber Depth Definition Code Sequence' );
     Add( $1127, 'LensThicknessSequence', [TKindVR.vrSQ], 'Lens Thickness Sequence' );
     Add( $1128, 'AnteriorChamberDepthSequence', [TKindVR.vrSQ], 'Anterior Chamber Depth Sequence' );
     Add( $1130, 'LensThickness', [TKindVR.vrFL], 'Lens Thickness' );
     Add( $1131, 'AnteriorChamberDepth', [TKindVR.vrFL], 'Anterior Chamber Depth' );
     Add( $1132, 'SourceOfLensThicknessDataCodeSequence', [TKindVR.vrSQ], 'Source of Lens Thickness Data Code Sequence' );
     Add( $1133, 'SourceOfAnteriorChamberDepthDataCodeSequence', [TKindVR.vrSQ], 'Source of Anterior Chamber Depth Data Code Sequence' );
     Add( $1134, 'SourceOfRefractiveMeasurementsSequence', [TKindVR.vrSQ], 'Source of Refractive Measurements Sequence' );
     Add( $1135, 'SourceOfRefractiveMeasurementsCodeSequence', [TKindVR.vrSQ], 'Source of Refractive Measurements Code Sequence' );
     Add( $1140, 'OphthalmicAxialLengthMeasurementModified', [TKindVR.vrCS], 'Ophthalmic Axial Length Measurement Modified' );
     Add( $1150, 'OphthalmicAxialLengthDataSourceCodeSequence', [TKindVR.vrSQ], 'Ophthalmic Axial Length Data Source Code Sequence' );
     Add( $1153, 'OphthalmicAxialLengthAcquisitionMethodCodeSequence', [TKindVR.vrSQ], 'Ophthalmic Axial Length Acquisition Method Code Sequence' );
     Add( $1155, 'SignalToNoiseRatio', [TKindVR.vrFL], 'Signal to Noise Ratio' );
     Add( $1159, 'OphthalmicAxialLengthDataSourceDescription', [TKindVR.vrLO], 'Ophthalmic Axial Length Data Source Description' );
     Add( $1210, 'OphthalmicAxialLengthMeasurementsTotalLengthSequence', [TKindVR.vrSQ], 'Ophthalmic Axial Length Measurements Total Length Sequence' );
     Add( $1211, 'OphthalmicAxialLengthMeasurementsSegmentalLengthSequence', [TKindVR.vrSQ], 'Ophthalmic Axial Length Measurements Segmental Length Sequence' );
     Add( $1212, 'OphthalmicAxialLengthMeasurementsLengthSummationSequence', [TKindVR.vrSQ], 'Ophthalmic Axial Length Measurements Length Summation Sequence' );
     Add( $1220, 'UltrasoundOphthalmicAxialLengthMeasurementsSequence', [TKindVR.vrSQ], 'Ultrasound Ophthalmic Axial Length Measurements Sequence' );
     Add( $1225, 'OpticalOphthalmicAxialLengthMeasurementsSequence', [TKindVR.vrSQ], 'Optical Ophthalmic Axial Length Measurements Sequence' );
     Add( $1230, 'UltrasoundSelectedOphthalmicAxialLengthSequence', [TKindVR.vrSQ], 'Ultrasound Selected Ophthalmic Axial Length Sequence' );
     Add( $1250, 'OphthalmicAxialLengthSelectionMethodCodeSequence', [TKindVR.vrSQ], 'Ophthalmic Axial Length Selection Method Code Sequence' );
     Add( $1255, 'OpticalSelectedOphthalmicAxialLengthSequence', [TKindVR.vrSQ], 'Optical Selected Ophthalmic Axial Length Sequence' );
     Add( $1257, 'SelectedSegmentalOphthalmicAxialLengthSequence', [TKindVR.vrSQ], 'Selected Segmental Ophthalmic Axial Length Sequence' );
     Add( $1260, 'SelectedTotalOphthalmicAxialLengthSequence', [TKindVR.vrSQ], 'Selected Total Ophthalmic Axial Length Sequence' );
     Add( $1262, 'OphthalmicAxialLengthQualityMetricSequence', [TKindVR.vrSQ], 'Ophthalmic Axial Length Quality Metric Sequence' );
     Add( $1265, 'OphthalmicAxialLengthQualityMetricTypeCodeSequence', [TKindVR.vrSQ], 'Ophthalmic Axial Length Quality Metric Type Code Sequence' );
     Add( $1273, 'OphthalmicAxialLengthQualityMetricTypeDescription', [TKindVR.vrLO], 'Ophthalmic Axial Length Quality Metric Type Description' );
     Add( $1300, 'IntraocularLensCalculationsRightEyeSequence', [TKindVR.vrSQ], 'Intraocular Lens Calculations Right Eye Sequence' );
     Add( $1310, 'IntraocularLensCalculationsLeftEyeSequence', [TKindVR.vrSQ], 'Intraocular Lens Calculations Left Eye Sequence' );
     Add( $1330, 'ReferencedOphthalmicAxialLengthMeasurementQCImageSequence', [TKindVR.vrSQ], 'Referenced Ophthalmic Axial Length Measurement QC Image Sequence' );
     Add( $1415, 'OphthalmicMappingDeviceType', [TKindVR.vrCS], 'Ophthalmic Mapping Device Type' );
     Add( $1420, 'AcquisitionMethodCodeSequence', [TKindVR.vrSQ], 'Acquisition Method Code Sequence' );
     Add( $1423, 'AcquisitionMethodAlgorithmSequence', [TKindVR.vrSQ], 'Acquisition Method Algorithm Sequence' );
     Add( $1436, 'OphthalmicThicknessMapTypeCodeSequence', [TKindVR.vrSQ], 'Ophthalmic Thickness Map Type Code Sequence' );
     Add( $1443, 'OphthalmicThicknessMappingNormalsSequence', [TKindVR.vrSQ], 'Ophthalmic Thickness Mapping Normals Sequence' );
     Add( $1445, 'RetinalThicknessDefinitionCodeSequence', [TKindVR.vrSQ], 'Retinal Thickness Definition Code Sequence' );
     Add( $1450, 'PixelValueMappingToCodedConceptSequence', [TKindVR.vrSQ], 'Pixel Value Mapping to Coded Concept Sequence' );
     Add( $1452, 'MappedPixelValue', [TKindVR.vrUS,TKindVR.vrSS], 'Mapped Pixel Value' );
     Add( $1454, 'PixelValueMappingExplanation', [TKindVR.vrLO], 'Pixel Value Mapping Explanation' );
     Add( $1458, 'OphthalmicThicknessMapQualityThresholdSequence', [TKindVR.vrSQ], 'Ophthalmic Thickness Map Quality Threshold Sequence' );
     Add( $1460, 'OphthalmicThicknessMapThresholdQualityRating', [TKindVR.vrFL], 'Ophthalmic Thickness Map Threshold Quality Rating' );
     Add( $1463, 'AnatomicStructureReferencePoint', [TKindVR.vrFL], 'Anatomic Structure Reference Point' );
     Add( $1465, 'RegistrationToLocalizerSequence', [TKindVR.vrSQ], 'Registration to Localizer Sequence' );
     Add( $1466, 'RegisteredLocalizerUnits', [TKindVR.vrCS], 'Registered Localizer Units' );
     Add( $1467, 'RegisteredLocalizerTopLeftHandCorner', [TKindVR.vrFL], 'Registered Localizer Top Left Hand Corner' );
     Add( $1468, 'RegisteredLocalizerBottomRightHandCorner', [TKindVR.vrFL], 'Registered Localizer Bottom Right Hand Corner' );
     Add( $1470, 'OphthalmicThicknessMapQualityRatingSequence', [TKindVR.vrSQ], 'Ophthalmic Thickness Map Quality Rating Sequence' );
     Add( $1472, 'RelevantOPTAttributesSequence', [TKindVR.vrSQ], 'Relevant OPT Attributes Sequence' );
     Add( $1512, 'TransformationMethodCodeSequence', [TKindVR.vrSQ], 'Transformation Method Code Sequence' );
     Add( $1513, 'TransformationAlgorithmSequence', [TKindVR.vrSQ], 'Transformation Algorithm Sequence' );
     Add( $1515, 'OphthalmicAxialLengthMethod', [TKindVR.vrCS], 'Ophthalmic Axial Length Method' );
     Add( $1517, 'OphthalmicFOV', [TKindVR.vrFL], 'Ophthalmic FOV' );
     Add( $1518, 'TwoDimensionalToThreeDimensionalMapSequence', [TKindVR.vrSQ], 'Two Dimensional to Three Dimensional Map Sequence' );
     Add( $1525, 'WideFieldOphthalmicPhotographyQualityRatingSequence', [TKindVR.vrSQ], 'Wide Field Ophthalmic Photography Quality Rating Sequence' );
     Add( $1526, 'WideFieldOphthalmicPhotographyQualityThresholdSequence', [TKindVR.vrSQ], 'Wide Field Ophthalmic Photography Quality Threshold Sequence' );
     Add( $1527, 'WideFieldOphthalmicPhotographyThresholdQualityRating', [TKindVR.vrFL], 'Wide Field Ophthalmic Photography Threshold Quality Rating' );
     Add( $1528, 'XCoordinatesCenterPixelViewAngle', [TKindVR.vrFL], 'X Coordinates Center Pixel View Angle' );
     Add( $1529, 'YCoordinatesCenterPixelViewAngle', [TKindVR.vrFL], 'Y Coordinates Center Pixel View Angle' );
     Add( $1530, 'NumberOfMapPoints', [TKindVR.vrUL], 'Number of Map Points' );
     Add( $1531, 'TwoDimensionalToThreeDimensionalMapData', [TKindVR.vrOF], 'Two Dimensional to Three Dimensional Map Data' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
