unit LUX.DICOM.Tags.G0022;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0022

     TdcmGrup0022 = class( TdcmGrup )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0022

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmGrup0022.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0001, 'LightPathFilterPassThroughWavelength', [TTypeVR.vrUS], 'Light Path Filter Pass-Through Wavelength' );
     Add( $0002, 'LightPathFilterPassBand', [TTypeVR.vrUS], 'Light Path Filter Pass Band' );
     Add( $0003, 'ImagePathFilterPassThroughWavelength', [TTypeVR.vrUS], 'Image Path Filter Pass-Through Wavelength' );
     Add( $0004, 'ImagePathFilterPassBand', [TTypeVR.vrUS], 'Image Path Filter Pass Band' );
     Add( $0005, 'PatientEyeMovementCommanded', [TTypeVR.vrCS], 'Patient Eye Movement Commanded' );
     Add( $0006, 'PatientEyeMovementCommandCodeSequence', [TTypeVR.vrSQ], 'Patient Eye Movement Command Code Sequence' );
     Add( $0007, 'SphericalLensPower', [TTypeVR.vrFL], 'Spherical Lens Power' );
     Add( $0008, 'CylinderLensPower', [TTypeVR.vrFL], 'Cylinder Lens Power' );
     Add( $0009, 'CylinderAxis', [TTypeVR.vrFL], 'Cylinder Axis' );
     Add( $000A, 'EmmetropicMagnification', [TTypeVR.vrFL], 'Emmetropic Magnification' );
     Add( $000B, 'IntraOcularPressure', [TTypeVR.vrFL], 'Intra Ocular Pressure' );
     Add( $000C, 'HorizontalFieldOfView', [TTypeVR.vrFL], 'Horizontal Field of View' );
     Add( $000D, 'PupilDilated', [TTypeVR.vrCS], 'Pupil Dilated' );
     Add( $000E, 'DegreeOfDilation', [TTypeVR.vrFL], 'Degree of Dilation' );
     Add( $0010, 'StereoBaselineAngle', [TTypeVR.vrFL], 'Stereo Baseline Angle' );
     Add( $0011, 'StereoBaselineDisplacement', [TTypeVR.vrFL], 'Stereo Baseline Displacement' );
     Add( $0012, 'StereoHorizontalPixelOffset', [TTypeVR.vrFL], 'Stereo Horizontal Pixel Offset' );
     Add( $0013, 'StereoVerticalPixelOffset', [TTypeVR.vrFL], 'Stereo Vertical Pixel Offset' );
     Add( $0014, 'StereoRotation', [TTypeVR.vrFL], 'Stereo Rotation' );
     Add( $0015, 'AcquisitionDeviceTypeCodeSequence', [TTypeVR.vrSQ], 'Acquisition Device Type Code Sequence' );
     Add( $0016, 'IlluminationTypeCodeSequence', [TTypeVR.vrSQ], 'Illumination Type Code Sequence' );
     Add( $0017, 'LightPathFilterTypeStackCodeSequence', [TTypeVR.vrSQ], 'Light Path Filter Type Stack Code Sequence' );
     Add( $0018, 'ImagePathFilterTypeStackCodeSequence', [TTypeVR.vrSQ], 'Image Path Filter Type Stack Code Sequence' );
     Add( $0019, 'LensesCodeSequence', [TTypeVR.vrSQ], 'Lenses Code Sequence' );
     Add( $001A, 'ChannelDescriptionCodeSequence', [TTypeVR.vrSQ], 'Channel Description Code Sequence' );
     Add( $001B, 'RefractiveStateSequence', [TTypeVR.vrSQ], 'Refractive State Sequence' );
     Add( $001C, 'MydriaticAgentCodeSequence', [TTypeVR.vrSQ], 'Mydriatic Agent Code Sequence' );
     Add( $001D, 'RelativeImagePositionCodeSequence', [TTypeVR.vrSQ], 'Relative Image Position Code Sequence' );
     Add( $001E, 'CameraAngleOfView', [TTypeVR.vrFL], 'Camera Angle of View' );
     Add( $0020, 'StereoPairsSequence', [TTypeVR.vrSQ], 'Stereo Pairs Sequence' );
     Add( $0021, 'LeftImageSequence', [TTypeVR.vrSQ], 'Left Image Sequence' );
     Add( $0022, 'RightImageSequence', [TTypeVR.vrSQ], 'Right Image Sequence' );
     Add( $0028, 'StereoPairsPresent', [TTypeVR.vrCS], 'Stereo Pairs Present' );
     Add( $0030, 'AxialLengthOfTheEye', [TTypeVR.vrFL], 'Axial Length of the Eye' );
     Add( $0031, 'OphthalmicFrameLocationSequence', [TTypeVR.vrSQ], 'Ophthalmic Frame Location Sequence' );
     Add( $0032, 'ReferenceCoordinates', [TTypeVR.vrFL], 'Reference Coordinates' );
     Add( $0035, 'DepthSpatialResolution', [TTypeVR.vrFL], 'Depth Spatial Resolution' );
     Add( $0036, 'MaximumDepthDistortion', [TTypeVR.vrFL], 'Maximum Depth Distortion' );
     Add( $0037, 'AlongScanSpatialResolution', [TTypeVR.vrFL], 'Along-scan Spatial Resolution' );
     Add( $0038, 'MaximumAlongScanDistortion', [TTypeVR.vrFL], 'Maximum Along-scan Distortion' );
     Add( $0039, 'OphthalmicImageOrientation', [TTypeVR.vrCS], 'Ophthalmic Image Orientation' );
     Add( $0041, 'DepthOfTransverseImage', [TTypeVR.vrFL], 'Depth of Transverse Image' );
     Add( $0042, 'MydriaticAgentConcentrationUnitsSequence', [TTypeVR.vrSQ], 'Mydriatic Agent Concentration Units Sequence' );
     Add( $0048, 'AcrossScanSpatialResolution', [TTypeVR.vrFL], 'Across-scan Spatial Resolution' );
     Add( $0049, 'MaximumAcrossScanDistortion', [TTypeVR.vrFL], 'Maximum Across-scan Distortion' );
     Add( $004E, 'MydriaticAgentConcentration', [TTypeVR.vrDS], 'Mydriatic Agent Concentration' );
     Add( $0055, 'IlluminationWaveLength', [TTypeVR.vrFL], 'Illumination Wave Length' );
     Add( $0056, 'IlluminationPower', [TTypeVR.vrFL], 'Illumination Power' );
     Add( $0057, 'IlluminationBandwidth', [TTypeVR.vrFL], 'Illumination Bandwidth' );
     Add( $0058, 'MydriaticAgentSequence', [TTypeVR.vrSQ], 'Mydriatic Agent Sequence' );
     Add( $1007, 'OphthalmicAxialMeasurementsRightEyeSequence', [TTypeVR.vrSQ], 'Ophthalmic Axial Measurements Right Eye Sequence' );
     Add( $1008, 'OphthalmicAxialMeasurementsLeftEyeSequence', [TTypeVR.vrSQ], 'Ophthalmic Axial Measurements Left Eye Sequence' );
     Add( $1009, 'OphthalmicAxialMeasurementsDeviceType', [TTypeVR.vrCS], 'Ophthalmic Axial Measurements Device Type' );
     Add( $1010, 'OphthalmicAxialLengthMeasurementsType', [TTypeVR.vrCS], 'Ophthalmic Axial Length Measurements Type' );
     Add( $1012, 'OphthalmicAxialLengthSequence', [TTypeVR.vrSQ], 'Ophthalmic Axial Length Sequence' );
     Add( $1019, 'OphthalmicAxialLength', [TTypeVR.vrFL], 'Ophthalmic Axial Length' );
     Add( $1024, 'LensStatusCodeSequence', [TTypeVR.vrSQ], 'Lens Status Code Sequence' );
     Add( $1025, 'VitreousStatusCodeSequence', [TTypeVR.vrSQ], 'Vitreous Status Code Sequence' );
     Add( $1028, 'IOLFormulaCodeSequence', [TTypeVR.vrSQ], 'IOL Formula Code Sequence' );
     Add( $1029, 'IOLFormulaDetail', [TTypeVR.vrLO], 'IOL Formula Detail' );
     Add( $1033, 'KeratometerIndex', [TTypeVR.vrFL], 'Keratometer Index' );
     Add( $1035, 'SourceOfOphthalmicAxialLengthCodeSequence', [TTypeVR.vrSQ], 'Source of Ophthalmic Axial Length Code Sequence' );
     Add( $1037, 'TargetRefraction', [TTypeVR.vrFL], 'Target Refraction' );
     Add( $1039, 'RefractiveProcedureOccurred', [TTypeVR.vrCS], 'Refractive Procedure Occurred' );
     Add( $1040, 'RefractiveSurgeryTypeCodeSequence', [TTypeVR.vrSQ], 'Refractive Surgery Type Code Sequence' );
     Add( $1044, 'OphthalmicUltrasoundMethodCodeSequence', [TTypeVR.vrSQ], 'Ophthalmic Ultrasound Method Code Sequence' );
     Add( $1050, 'OphthalmicAxialLengthMeasurementsSequence', [TTypeVR.vrSQ], 'Ophthalmic Axial Length Measurements Sequence' );
     Add( $1053, 'IOLPower', [TTypeVR.vrFL], 'IOL Power' );
     Add( $1054, 'PredictedRefractiveError', [TTypeVR.vrFL], 'Predicted Refractive Error' );
     Add( $1059, 'OphthalmicAxialLengthVelocity', [TTypeVR.vrFL], 'Ophthalmic Axial Length Velocity' );
     Add( $1065, 'LensStatusDescription', [TTypeVR.vrLO], 'Lens Status Description' );
     Add( $1066, 'VitreousStatusDescription', [TTypeVR.vrLO], 'Vitreous Status Description' );
     Add( $1090, 'IOLPowerSequence', [TTypeVR.vrSQ], 'IOL Power Sequence' );
     Add( $1092, 'LensConstantSequence', [TTypeVR.vrSQ], 'Lens Constant Sequence' );
     Add( $1093, 'IOLManufacturer', [TTypeVR.vrLO], 'IOL Manufacturer' );
     Add( $1094, 'LensConstantDescription', [TTypeVR.vrLO], 'Lens Constant Description' );
     Add( $1095, 'ImplantName', [TTypeVR.vrLO], 'Implant Name' );
     Add( $1096, 'KeratometryMeasurementTypeCodeSequence', [TTypeVR.vrSQ], 'Keratometry Measurement Type Code Sequence' );
     Add( $1097, 'ImplantPartNumber', [TTypeVR.vrLO], 'Implant Part Number' );
     Add( $1100, 'ReferencedOphthalmicAxialMeasurementsSequence', [TTypeVR.vrSQ], 'Referenced Ophthalmic Axial Measurements Sequence' );
     Add( $1101, 'OphthalmicAxialLengthMeasurementsSegmentNameCodeSequence', [TTypeVR.vrSQ], 'Ophthalmic Axial Length Measurements Segment Name Code Sequence' );
     Add( $1103, 'RefractiveErrorBeforeRefractiveSurgeryCodeSequence', [TTypeVR.vrSQ], 'Refractive Error Before Refractive Surgery Code Sequence' );
     Add( $1121, 'IOLPowerForExactEmmetropia', [TTypeVR.vrFL], 'IOL Power For Exact Emmetropia' );
     Add( $1122, 'IOLPowerForExactTargetRefraction', [TTypeVR.vrFL], 'IOL Power For Exact Target Refraction' );
     Add( $1125, 'AnteriorChamberDepthDefinitionCodeSequence', [TTypeVR.vrSQ], 'Anterior Chamber Depth Definition Code Sequence' );
     Add( $1127, 'LensThicknessSequence', [TTypeVR.vrSQ], 'Lens Thickness Sequence' );
     Add( $1128, 'AnteriorChamberDepthSequence', [TTypeVR.vrSQ], 'Anterior Chamber Depth Sequence' );
     Add( $1130, 'LensThickness', [TTypeVR.vrFL], 'Lens Thickness' );
     Add( $1131, 'AnteriorChamberDepth', [TTypeVR.vrFL], 'Anterior Chamber Depth' );
     Add( $1132, 'SourceOfLensThicknessDataCodeSequence', [TTypeVR.vrSQ], 'Source of Lens Thickness Data Code Sequence' );
     Add( $1133, 'SourceOfAnteriorChamberDepthDataCodeSequence', [TTypeVR.vrSQ], 'Source of Anterior Chamber Depth Data Code Sequence' );
     Add( $1134, 'SourceOfRefractiveMeasurementsSequence', [TTypeVR.vrSQ], 'Source of Refractive Measurements Sequence' );
     Add( $1135, 'SourceOfRefractiveMeasurementsCodeSequence', [TTypeVR.vrSQ], 'Source of Refractive Measurements Code Sequence' );
     Add( $1140, 'OphthalmicAxialLengthMeasurementModified', [TTypeVR.vrCS], 'Ophthalmic Axial Length Measurement Modified' );
     Add( $1150, 'OphthalmicAxialLengthDataSourceCodeSequence', [TTypeVR.vrSQ], 'Ophthalmic Axial Length Data Source Code Sequence' );
     Add( $1153, 'OphthalmicAxialLengthAcquisitionMethodCodeSequence', [TTypeVR.vrSQ], 'Ophthalmic Axial Length Acquisition Method Code Sequence' );
     Add( $1155, 'SignalToNoiseRatio', [TTypeVR.vrFL], 'Signal to Noise Ratio' );
     Add( $1159, 'OphthalmicAxialLengthDataSourceDescription', [TTypeVR.vrLO], 'Ophthalmic Axial Length Data Source Description' );
     Add( $1210, 'OphthalmicAxialLengthMeasurementsTotalLengthSequence', [TTypeVR.vrSQ], 'Ophthalmic Axial Length Measurements Total Length Sequence' );
     Add( $1211, 'OphthalmicAxialLengthMeasurementsSegmentalLengthSequence', [TTypeVR.vrSQ], 'Ophthalmic Axial Length Measurements Segmental Length Sequence' );
     Add( $1212, 'OphthalmicAxialLengthMeasurementsLengthSummationSequence', [TTypeVR.vrSQ], 'Ophthalmic Axial Length Measurements Length Summation Sequence' );
     Add( $1220, 'UltrasoundOphthalmicAxialLengthMeasurementsSequence', [TTypeVR.vrSQ], 'Ultrasound Ophthalmic Axial Length Measurements Sequence' );
     Add( $1225, 'OpticalOphthalmicAxialLengthMeasurementsSequence', [TTypeVR.vrSQ], 'Optical Ophthalmic Axial Length Measurements Sequence' );
     Add( $1230, 'UltrasoundSelectedOphthalmicAxialLengthSequence', [TTypeVR.vrSQ], 'Ultrasound Selected Ophthalmic Axial Length Sequence' );
     Add( $1250, 'OphthalmicAxialLengthSelectionMethodCodeSequence', [TTypeVR.vrSQ], 'Ophthalmic Axial Length Selection Method Code Sequence' );
     Add( $1255, 'OpticalSelectedOphthalmicAxialLengthSequence', [TTypeVR.vrSQ], 'Optical Selected Ophthalmic Axial Length Sequence' );
     Add( $1257, 'SelectedSegmentalOphthalmicAxialLengthSequence', [TTypeVR.vrSQ], 'Selected Segmental Ophthalmic Axial Length Sequence' );
     Add( $1260, 'SelectedTotalOphthalmicAxialLengthSequence', [TTypeVR.vrSQ], 'Selected Total Ophthalmic Axial Length Sequence' );
     Add( $1262, 'OphthalmicAxialLengthQualityMetricSequence', [TTypeVR.vrSQ], 'Ophthalmic Axial Length Quality Metric Sequence' );
     Add( $1265, 'OphthalmicAxialLengthQualityMetricTypeCodeSequence', [TTypeVR.vrSQ], 'Ophthalmic Axial Length Quality Metric Type Code Sequence' );
     Add( $1273, 'OphthalmicAxialLengthQualityMetricTypeDescription', [TTypeVR.vrLO], 'Ophthalmic Axial Length Quality Metric Type Description' );
     Add( $1300, 'IntraocularLensCalculationsRightEyeSequence', [TTypeVR.vrSQ], 'Intraocular Lens Calculations Right Eye Sequence' );
     Add( $1310, 'IntraocularLensCalculationsLeftEyeSequence', [TTypeVR.vrSQ], 'Intraocular Lens Calculations Left Eye Sequence' );
     Add( $1330, 'ReferencedOphthalmicAxialLengthMeasurementQCImageSequence', [TTypeVR.vrSQ], 'Referenced Ophthalmic Axial Length Measurement QC Image Sequence' );
     Add( $1415, 'OphthalmicMappingDeviceType', [TTypeVR.vrCS], 'Ophthalmic Mapping Device Type' );
     Add( $1420, 'AcquisitionMethodCodeSequence', [TTypeVR.vrSQ], 'Acquisition Method Code Sequence' );
     Add( $1423, 'AcquisitionMethodAlgorithmSequence', [TTypeVR.vrSQ], 'Acquisition Method Algorithm Sequence' );
     Add( $1436, 'OphthalmicThicknessMapTypeCodeSequence', [TTypeVR.vrSQ], 'Ophthalmic Thickness Map Type Code Sequence' );
     Add( $1443, 'OphthalmicThicknessMappingNormalsSequence', [TTypeVR.vrSQ], 'Ophthalmic Thickness Mapping Normals Sequence' );
     Add( $1445, 'RetinalThicknessDefinitionCodeSequence', [TTypeVR.vrSQ], 'Retinal Thickness Definition Code Sequence' );
     Add( $1450, 'PixelValueMappingToCodedConceptSequence', [TTypeVR.vrSQ], 'Pixel Value Mapping to Coded Concept Sequence' );
     Add( $1452, 'MappedPixelValue', [TTypeVR.vrUS,TTypeVR.vrSS], 'Mapped Pixel Value' );
     Add( $1454, 'PixelValueMappingExplanation', [TTypeVR.vrLO], 'Pixel Value Mapping Explanation' );
     Add( $1458, 'OphthalmicThicknessMapQualityThresholdSequence', [TTypeVR.vrSQ], 'Ophthalmic Thickness Map Quality Threshold Sequence' );
     Add( $1460, 'OphthalmicThicknessMapThresholdQualityRating', [TTypeVR.vrFL], 'Ophthalmic Thickness Map Threshold Quality Rating' );
     Add( $1463, 'AnatomicStructureReferencePoint', [TTypeVR.vrFL], 'Anatomic Structure Reference Point' );
     Add( $1465, 'RegistrationToLocalizerSequence', [TTypeVR.vrSQ], 'Registration to Localizer Sequence' );
     Add( $1466, 'RegisteredLocalizerUnits', [TTypeVR.vrCS], 'Registered Localizer Units' );
     Add( $1467, 'RegisteredLocalizerTopLeftHandCorner', [TTypeVR.vrFL], 'Registered Localizer Top Left Hand Corner' );
     Add( $1468, 'RegisteredLocalizerBottomRightHandCorner', [TTypeVR.vrFL], 'Registered Localizer Bottom Right Hand Corner' );
     Add( $1470, 'OphthalmicThicknessMapQualityRatingSequence', [TTypeVR.vrSQ], 'Ophthalmic Thickness Map Quality Rating Sequence' );
     Add( $1472, 'RelevantOPTAttributesSequence', [TTypeVR.vrSQ], 'Relevant OPT Attributes Sequence' );
     Add( $1512, 'TransformationMethodCodeSequence', [TTypeVR.vrSQ], 'Transformation Method Code Sequence' );
     Add( $1513, 'TransformationAlgorithmSequence', [TTypeVR.vrSQ], 'Transformation Algorithm Sequence' );
     Add( $1515, 'OphthalmicAxialLengthMethod', [TTypeVR.vrCS], 'Ophthalmic Axial Length Method' );
     Add( $1517, 'OphthalmicFOV', [TTypeVR.vrFL], 'Ophthalmic FOV' );
     Add( $1518, 'TwoDimensionalToThreeDimensionalMapSequence', [TTypeVR.vrSQ], 'Two Dimensional to Three Dimensional Map Sequence' );
     Add( $1525, 'WideFieldOphthalmicPhotographyQualityRatingSequence', [TTypeVR.vrSQ], 'Wide Field Ophthalmic Photography Quality Rating Sequence' );
     Add( $1526, 'WideFieldOphthalmicPhotographyQualityThresholdSequence', [TTypeVR.vrSQ], 'Wide Field Ophthalmic Photography Quality Threshold Sequence' );
     Add( $1527, 'WideFieldOphthalmicPhotographyThresholdQualityRating', [TTypeVR.vrFL], 'Wide Field Ophthalmic Photography Threshold Quality Rating' );
     Add( $1528, 'XCoordinatesCenterPixelViewAngle', [TTypeVR.vrFL], 'X Coordinates Center Pixel View Angle' );
     Add( $1529, 'YCoordinatesCenterPixelViewAngle', [TTypeVR.vrFL], 'Y Coordinates Center Pixel View Angle' );
     Add( $1530, 'NumberOfMapPoints', [TTypeVR.vrUL], 'Number of Map Points' );
     Add( $1531, 'TwoDimensionalToThreeDimensionalMapData', [TTypeVR.vrOF], 'Two Dimensional to Three Dimensional Map Data' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
