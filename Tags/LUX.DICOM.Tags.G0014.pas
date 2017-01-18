unit LUX.DICOM.Tags.G0014;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0014

     TdcmGrup0014 = class( TdcmGrup )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0014

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmGrup0014.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0023, 'CADFileFormat', [TTypeVR.vrST], 'CAD File Format' );
     Add( $0024, 'ComponentReferenceSystem', [TTypeVR.vrST], 'Component Reference System' );
     Add( $0025, 'ComponentManufacturingProcedure', [TTypeVR.vrST], 'Component Manufacturing Procedure' );
     Add( $0028, 'ComponentManufacturer', [TTypeVR.vrST], 'Component Manufacturer' );
     Add( $0030, 'MaterialThickness', [TTypeVR.vrDS], 'Material Thickness' );
     Add( $0032, 'MaterialPipeDiameter', [TTypeVR.vrDS], 'Material Pipe Diameter' );
     Add( $0034, 'MaterialIsolationDiameter', [TTypeVR.vrDS], 'Material Isolation Diameter' );
     Add( $0042, 'MaterialGrade', [TTypeVR.vrST], 'Material Grade' );
     Add( $0044, 'MaterialPropertiesDescription', [TTypeVR.vrST], 'Material Properties Description' );
     Add( $0045, 'MaterialPropertiesFileFormatRetired', [TTypeVR.vrST], 'Material Properties File Format (Retired)' );
     Add( $0046, 'MaterialNotes', [TTypeVR.vrLT], 'Material Notes' );
     Add( $0050, 'ComponentShape', [TTypeVR.vrCS], 'Component Shape' );
     Add( $0052, 'CurvatureType', [TTypeVR.vrCS], 'Curvature Type' );
     Add( $0054, 'OuterDiameter', [TTypeVR.vrDS], 'Outer Diameter' );
     Add( $0056, 'InnerDiameter', [TTypeVR.vrDS], 'Inner Diameter' );
     Add( $0100, 'ComponentWelderIDs', [TTypeVR.vrLO], 'Component Welder IDs' );
     Add( $0101, 'SecondaryApprovalStatus', [TTypeVR.vrCS], 'Secondary Approval Status' );
     Add( $0102, 'SecondaryReviewDate', [TTypeVR.vrDA], 'Secondary Review Date' );
     Add( $0103, 'SecondaryReviewTime', [TTypeVR.vrTM], 'Secondary Review Time' );
     Add( $0104, 'SecondaryReviewerName', [TTypeVR.vrPN], 'Secondary Reviewer Name' );
     Add( $0105, 'RepairID', [TTypeVR.vrST], 'Repair ID' );
     Add( $0106, 'MultipleComponentApprovalSequence', [TTypeVR.vrSQ], 'Multiple Component Approval Sequence' );
     Add( $0107, 'OtherApprovalStatus', [TTypeVR.vrCS], 'Other Approval Status' );
     Add( $0108, 'OtherSecondaryApprovalStatus', [TTypeVR.vrCS], 'Other Secondary Approval Status' );
     Add( $1010, 'ActualEnvironmentalConditions', [TTypeVR.vrST], 'Actual Environmental Conditions' );
     Add( $1020, 'ExpiryDate', [TTypeVR.vrDA], 'Expiry Date' );
     Add( $1040, 'EnvironmentalConditions', [TTypeVR.vrST], 'Environmental Conditions' );
     Add( $2002, 'EvaluatorSequence', [TTypeVR.vrSQ], 'Evaluator Sequence' );
     Add( $2004, 'EvaluatorNumber', [TTypeVR.vrIS], 'Evaluator Number' );
     Add( $2006, 'EvaluatorName', [TTypeVR.vrPN], 'Evaluator Name' );
     Add( $2008, 'EvaluationAttempt', [TTypeVR.vrIS], 'Evaluation Attempt' );
     Add( $2012, 'IndicationSequence', [TTypeVR.vrSQ], 'Indication Sequence' );
     Add( $2014, 'IndicationNumber', [TTypeVR.vrIS], 'Indication Number' );
     Add( $2016, 'IndicationLabel', [TTypeVR.vrSH], 'Indication Label' );
     Add( $2018, 'IndicationDescription', [TTypeVR.vrST], 'Indication Description' );
     Add( $201A, 'IndicationType', [TTypeVR.vrCS], 'Indication Type' );
     Add( $201C, 'IndicationDisposition', [TTypeVR.vrCS], 'Indication Disposition' );
     Add( $201E, 'IndicationROISequence', [TTypeVR.vrSQ], 'Indication ROI Sequence' );
     Add( $2030, 'IndicationPhysicalPropertySequence', [TTypeVR.vrSQ], 'Indication Physical Property Sequence' );
     Add( $2032, 'PropertyLabel', [TTypeVR.vrSH], 'Property Label' );
     Add( $2202, 'CoordinateSystemNumberOfAxes', [TTypeVR.vrIS], 'Coordinate System Number of Axes' );
     Add( $2204, 'CoordinateSystemAxesSequence', [TTypeVR.vrSQ], 'Coordinate System Axes Sequence' );
     Add( $2206, 'CoordinateSystemAxisDescription', [TTypeVR.vrST], 'Coordinate System Axis Description' );
     Add( $2208, 'CoordinateSystemDataSetMapping', [TTypeVR.vrCS], 'Coordinate System Data Set Mapping' );
     Add( $220A, 'CoordinateSystemAxisNumber', [TTypeVR.vrIS], 'Coordinate System Axis Number' );
     Add( $220C, 'CoordinateSystemAxisType', [TTypeVR.vrCS], 'Coordinate System Axis Type' );
     Add( $220E, 'CoordinateSystemAxisUnits', [TTypeVR.vrCS], 'Coordinate System Axis Units' );
     Add( $2210, 'CoordinateSystemAxisValues', [TTypeVR.vrOB], 'Coordinate System Axis Values' );
     Add( $2220, 'CoordinateSystemTransformSequence', [TTypeVR.vrSQ], 'Coordinate System Transform Sequence' );
     Add( $2222, 'TransformDescription', [TTypeVR.vrST], 'Transform Description' );
     Add( $2224, 'TransformNumberOfAxes', [TTypeVR.vrIS], 'Transform Number of Axes' );
     Add( $2226, 'TransformOrderOfAxes', [TTypeVR.vrIS], 'Transform Order of Axes' );
     Add( $2228, 'TransformedAxisUnits', [TTypeVR.vrCS], 'Transformed Axis Units' );
     Add( $222A, 'CoordinateSystemTransformRotationAndScaleMatrix', [TTypeVR.vrDS], 'Coordinate System Transform Rotation and Scale Matrix' );
     Add( $222C, 'CoordinateSystemTransformTranslationMatrix', [TTypeVR.vrDS], 'Coordinate System Transform Translation Matrix' );
     Add( $3011, 'InternalDetectorFrameTime', [TTypeVR.vrDS], 'Internal Detector Frame Time' );
     Add( $3012, 'NumberOfFramesIntegrated', [TTypeVR.vrDS], 'Number of Frames Integrated' );
     Add( $3020, 'DetectorTemperatureSequence', [TTypeVR.vrSQ], 'Detector Temperature Sequence' );
     Add( $3022, 'SensorName', [TTypeVR.vrST], 'Sensor Name' );
     Add( $3024, 'HorizontalOffsetOfSensor', [TTypeVR.vrDS], 'Horizontal Offset of Sensor' );
     Add( $3026, 'VerticalOffsetOfSensor', [TTypeVR.vrDS], 'Vertical Offset of Sensor' );
     Add( $3028, 'SensorTemperature', [TTypeVR.vrDS], 'Sensor Temperature' );
     Add( $3040, 'DarkCurrentSequence', [TTypeVR.vrSQ], 'Dark Current Sequence' );
     Add( $3050, 'DarkCurrentCounts', [TTypeVR.vrOB,TTypeVR.vrOW], 'Dark Current Counts' );
     Add( $3060, 'GainCorrectionReferenceSequence', [TTypeVR.vrSQ], 'Gain Correction Reference Sequence' );
     Add( $3070, 'AirCounts', [TTypeVR.vrOB,TTypeVR.vrOW], 'Air Counts' );
     Add( $3071, 'KVUsedInGainCalibration', [TTypeVR.vrDS], 'KV Used in Gain Calibration' );
     Add( $3072, 'MAUsedInGainCalibration', [TTypeVR.vrDS], 'MA Used in Gain Calibration' );
     Add( $3073, 'NumberOfFramesUsedForIntegration', [TTypeVR.vrDS], 'Number of Frames Used for Integration' );
     Add( $3074, 'FilterMaterialUsedInGainCalibration', [TTypeVR.vrLO], 'Filter Material Used in Gain Calibration' );
     Add( $3075, 'FilterThicknessUsedInGainCalibration', [TTypeVR.vrDS], 'Filter Thickness Used in Gain Calibration' );
     Add( $3076, 'DateOfGainCalibration', [TTypeVR.vrDA], 'Date of Gain Calibration' );
     Add( $3077, 'TimeOfGainCalibration', [TTypeVR.vrTM], 'Time of Gain Calibration' );
     Add( $3080, 'BadPixelImage', [TTypeVR.vrOB], 'Bad Pixel Image' );
     Add( $3099, 'CalibrationNotes', [TTypeVR.vrLT], 'Calibration Notes' );
     Add( $4002, 'PulserEquipmentSequence', [TTypeVR.vrSQ], 'Pulser Equipment Sequence' );
     Add( $4004, 'PulserType', [TTypeVR.vrCS], 'Pulser Type' );
     Add( $4006, 'PulserNotes', [TTypeVR.vrLT], 'Pulser Notes' );
     Add( $4008, 'ReceiverEquipmentSequence', [TTypeVR.vrSQ], 'Receiver Equipment Sequence' );
     Add( $400A, 'AmplifierType', [TTypeVR.vrCS], 'Amplifier Type' );
     Add( $400C, 'ReceiverNotes', [TTypeVR.vrLT], 'Receiver Notes' );
     Add( $400E, 'PreAmplifierEquipmentSequence', [TTypeVR.vrSQ], 'Pre-Amplifier Equipment Sequence' );
     Add( $400F, 'PreAmplifierNotes', [TTypeVR.vrLT], 'Pre-Amplifier Notes' );
     Add( $4010, 'TransmitTransducerSequence', [TTypeVR.vrSQ], 'Transmit Transducer Sequence' );
     Add( $4011, 'ReceiveTransducerSequence', [TTypeVR.vrSQ], 'Receive Transducer Sequence' );
     Add( $4012, 'NumberOfElements', [TTypeVR.vrUS], 'Number of Elements' );
     Add( $4013, 'ElementShape', [TTypeVR.vrCS], 'Element Shape' );
     Add( $4014, 'ElementDimensionA', [TTypeVR.vrDS], 'Element Dimension A' );
     Add( $4015, 'ElementDimensionB', [TTypeVR.vrDS], 'Element Dimension B' );
     Add( $4016, 'ElementPitchA', [TTypeVR.vrDS], 'Element Pitch A' );
     Add( $4017, 'MeasuredBeamDimensionA', [TTypeVR.vrDS], 'Measured Beam Dimension A' );
     Add( $4018, 'MeasuredBeamDimensionB', [TTypeVR.vrDS], 'Measured Beam Dimension B' );
     Add( $4019, 'LocationOfMeasuredBeamDiameter', [TTypeVR.vrDS], 'Location of Measured Beam Diameter' );
     Add( $401A, 'NominalFrequency', [TTypeVR.vrDS], 'Nominal Frequency' );
     Add( $401B, 'MeasuredCenterFrequency', [TTypeVR.vrDS], 'Measured Center Frequency' );
     Add( $401C, 'MeasuredBandwidth', [TTypeVR.vrDS], 'Measured Bandwidth' );
     Add( $401D, 'ElementPitchB', [TTypeVR.vrDS], 'Element Pitch B' );
     Add( $4020, 'PulserSettingsSequence', [TTypeVR.vrSQ], 'Pulser Settings Sequence' );
     Add( $4022, 'PulseWidth', [TTypeVR.vrDS], 'Pulse Width' );
     Add( $4024, 'ExcitationFrequency', [TTypeVR.vrDS], 'Excitation Frequency' );
     Add( $4026, 'ModulationType', [TTypeVR.vrCS], 'Modulation Type' );
     Add( $4028, 'Damping', [TTypeVR.vrDS], 'Damping' );
     Add( $4030, 'ReceiverSettingsSequence', [TTypeVR.vrSQ], 'Receiver Settings Sequence' );
     Add( $4031, 'AcquiredSoundpathLength', [TTypeVR.vrDS], 'Acquired Soundpath Length' );
     Add( $4032, 'AcquisitionCompressionType', [TTypeVR.vrCS], 'Acquisition Compression Type' );
     Add( $4033, 'AcquisitionSampleSize', [TTypeVR.vrIS], 'Acquisition Sample Size' );
     Add( $4034, 'RectifierSmoothing', [TTypeVR.vrDS], 'Rectifier Smoothing' );
     Add( $4035, 'DACSequence', [TTypeVR.vrSQ], 'DAC Sequence' );
     Add( $4036, 'DACType', [TTypeVR.vrCS], 'DAC Type' );
     Add( $4038, 'DACGainPoints', [TTypeVR.vrDS], 'DAC Gain Points' );
     Add( $403A, 'DACTimePoints', [TTypeVR.vrDS], 'DAC Time Points' );
     Add( $403C, 'DACAmplitude', [TTypeVR.vrDS], 'DAC Amplitude' );
     Add( $4040, 'PreAmplifierSettingsSequence', [TTypeVR.vrSQ], 'Pre-Amplifier Settings Sequence' );
     Add( $4050, 'TransmitTransducerSettingsSequence', [TTypeVR.vrSQ], 'Transmit Transducer Settings Sequence' );
     Add( $4051, 'ReceiveTransducerSettingsSequence', [TTypeVR.vrSQ], 'Receive Transducer Settings Sequence' );
     Add( $4052, 'IncidentAngle', [TTypeVR.vrDS], 'Incident Angle' );
     Add( $4054, 'CouplingTechnique', [TTypeVR.vrST], 'Coupling Technique' );
     Add( $4056, 'CouplingMedium', [TTypeVR.vrST], 'Coupling Medium' );
     Add( $4057, 'CouplingVelocity', [TTypeVR.vrDS], 'Coupling Velocity' );
     Add( $4058, 'ProbeCenterLocationX', [TTypeVR.vrDS], 'Probe Center Location X' );
     Add( $4059, 'ProbeCenterLocationZ', [TTypeVR.vrDS], 'Probe Center Location Z' );
     Add( $405A, 'SoundPathLength', [TTypeVR.vrDS], 'Sound Path Length' );
     Add( $405C, 'DelayLawIdentifier', [TTypeVR.vrST], 'Delay Law Identifier' );
     Add( $4060, 'GateSettingsSequence', [TTypeVR.vrSQ], 'Gate Settings Sequence' );
     Add( $4062, 'GateThreshold', [TTypeVR.vrDS], 'Gate Threshold' );
     Add( $4064, 'VelocityOfSound', [TTypeVR.vrDS], 'Velocity of Sound' );
     Add( $4070, 'CalibrationSettingsSequence', [TTypeVR.vrSQ], 'Calibration Settings Sequence' );
     Add( $4072, 'CalibrationProcedure', [TTypeVR.vrST], 'Calibration Procedure' );
     Add( $4074, 'ProcedureVersion', [TTypeVR.vrSH], 'Procedure Version' );
     Add( $4076, 'ProcedureCreationDate', [TTypeVR.vrDA], 'Procedure Creation Date' );
     Add( $4078, 'ProcedureExpirationDate', [TTypeVR.vrDA], 'Procedure Expiration Date' );
     Add( $407A, 'ProcedureLastModifiedDate', [TTypeVR.vrDA], 'Procedure Last Modified Date' );
     Add( $407C, 'CalibrationTime', [TTypeVR.vrTM], 'Calibration Time' );
     Add( $407E, 'CalibrationDate', [TTypeVR.vrDA], 'Calibration Date' );
     Add( $4080, 'ProbeDriveEquipmentSequence', [TTypeVR.vrSQ], 'Probe Drive Equipment Sequence' );
     Add( $4081, 'DriveType', [TTypeVR.vrCS], 'Drive Type' );
     Add( $4082, 'ProbeDriveNotes', [TTypeVR.vrLT], 'Probe Drive Notes' );
     Add( $4083, 'DriveProbeSequence', [TTypeVR.vrSQ], 'Drive Probe Sequence' );
     Add( $4084, 'ProbeInductance', [TTypeVR.vrDS], 'Probe Inductance' );
     Add( $4085, 'ProbeResistance', [TTypeVR.vrDS], 'Probe Resistance' );
     Add( $4086, 'ReceiveProbeSequence', [TTypeVR.vrSQ], 'Receive Probe Sequence' );
     Add( $4087, 'ProbeDriveSettingsSequence', [TTypeVR.vrSQ], 'Probe Drive Settings Sequence' );
     Add( $4088, 'BridgeResistors', [TTypeVR.vrDS], 'Bridge Resistors' );
     Add( $4089, 'ProbeOrientationAngle', [TTypeVR.vrDS], 'Probe Orientation Angle' );
     Add( $408B, 'UserSelectedGainY', [TTypeVR.vrDS], 'User Selected Gain Y' );
     Add( $408C, 'UserSelectedPhase', [TTypeVR.vrDS], 'User Selected Phase' );
     Add( $408D, 'UserSelectedOffsetX', [TTypeVR.vrDS], 'User Selected Offset X' );
     Add( $408E, 'UserSelectedOffsetY', [TTypeVR.vrDS], 'User Selected Offset Y' );
     Add( $4091, 'ChannelSettingsSequence', [TTypeVR.vrSQ], 'Channel Settings Sequence' );
     Add( $4092, 'ChannelThreshold', [TTypeVR.vrDS], 'Channel Threshold' );
     Add( $409A, 'ScannerSettingsSequence', [TTypeVR.vrSQ], 'Scanner Settings Sequence' );
     Add( $409B, 'ScanProcedure', [TTypeVR.vrST], 'Scan Procedure' );
     Add( $409C, 'TranslationRateX', [TTypeVR.vrDS], 'Translation Rate X' );
     Add( $409D, 'TranslationRateY', [TTypeVR.vrDS], 'Translation Rate Y' );
     Add( $409F, 'ChannelOverlap', [TTypeVR.vrDS], 'Channel Overlap' );
     Add( $40A0, 'ImageQualityIndicatorType', [TTypeVR.vrLO], 'Image Quality Indicator Type' );
     Add( $40A1, 'ImageQualityIndicatorMaterial', [TTypeVR.vrLO], 'Image Quality Indicator Material' );
     Add( $40A2, 'ImageQualityIndicatorSize', [TTypeVR.vrLO], 'Image Quality Indicator Size' );
     Add( $5002, 'LINACEnergy', [TTypeVR.vrIS], 'LINAC Energy' );
     Add( $5004, 'LINACOutput', [TTypeVR.vrIS], 'LINAC Output' );
     Add( $5100, 'ActiveAperture', [TTypeVR.vrUS], 'Active Aperture' );
     Add( $5101, 'TotalAperture', [TTypeVR.vrDS], 'Total Aperture' );
     Add( $5102, 'ApertureElevation', [TTypeVR.vrDS], 'Aperture Elevation' );
     Add( $5103, 'MainLobeAngle', [TTypeVR.vrDS], 'Main Lobe Angle' );
     Add( $5104, 'MainRoofAngle', [TTypeVR.vrDS], 'Main Roof Angle' );
     Add( $5105, 'ConnectorType', [TTypeVR.vrCS], 'Connector Type' );
     Add( $5106, 'WedgeModelNumber', [TTypeVR.vrSH], 'Wedge Model Number' );
     Add( $5107, 'WedgeAngleFloat', [TTypeVR.vrDS], 'Wedge Angle Float' );
     Add( $5108, 'WedgeRoofAngle', [TTypeVR.vrDS], 'Wedge Roof Angle' );
     Add( $5109, 'WedgeElement1Position', [TTypeVR.vrCS], 'Wedge Element 1 Position' );
     Add( $510A, 'WedgeMaterialVelocity', [TTypeVR.vrDS], 'Wedge Material Velocity' );
     Add( $510B, 'WedgeMaterial', [TTypeVR.vrSH], 'Wedge Material' );
     Add( $510C, 'WedgeOffsetZ', [TTypeVR.vrDS], 'Wedge Offset Z' );
     Add( $510D, 'WedgeOriginOffsetX', [TTypeVR.vrDS], 'Wedge Origin Offset X' );
     Add( $510E, 'WedgeTimeDelay', [TTypeVR.vrDS], 'Wedge Time Delay' );
     Add( $510F, 'WedgeName', [TTypeVR.vrSH], 'Wedge Name' );
     Add( $5110, 'WedgeManufacturerName', [TTypeVR.vrSH], 'Wedge Manufacturer Name' );
     Add( $5111, 'WedgeDescription', [TTypeVR.vrLO], 'Wedge Description' );
     Add( $5112, 'NominalBeamAngle', [TTypeVR.vrDS], 'Nominal Beam Angle' );
     Add( $5113, 'WedgeOffsetX', [TTypeVR.vrDS], 'Wedge Offset X' );
     Add( $5114, 'WedgeOffsetY', [TTypeVR.vrDS], 'Wedge Offset Y' );
     Add( $5115, 'WedgeTotalLength', [TTypeVR.vrDS], 'Wedge Total Length' );
     Add( $5116, 'WedgeInContactLength', [TTypeVR.vrDS], 'Wedge In Contact Length' );
     Add( $5117, 'WedgeFrontGap', [TTypeVR.vrDS], 'Wedge Front Gap' );
     Add( $5118, 'WedgeTotalHeight', [TTypeVR.vrDS], 'Wedge Total Height' );
     Add( $5119, 'WedgeFrontHeight', [TTypeVR.vrDS], 'Wedge Front Height' );
     Add( $511A, 'WedgeRearHeight', [TTypeVR.vrDS], 'Wedge Rear Height' );
     Add( $511B, 'WedgeTotalWidth', [TTypeVR.vrDS], 'Wedge Total Width' );
     Add( $511C, 'WedgeInContactWidth', [TTypeVR.vrDS], 'Wedge In Contact Width' );
     Add( $511D, 'WedgeChamferHeight', [TTypeVR.vrDS], 'Wedge Chamfer Height' );
     Add( $511E, 'WedgeCurve', [TTypeVR.vrCS], 'Wedge Curve' );
     Add( $511F, 'RadiusAlongWedge', [TTypeVR.vrDS], 'Radius Along the Wedge' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
