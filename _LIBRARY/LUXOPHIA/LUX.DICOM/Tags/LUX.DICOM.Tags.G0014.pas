unit LUX.DICOM.Tags.G0014;

interface //#################################################################### ■

uses LUX, LUX.DICOM.VRs, LUX.DICOM.Tags;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0014

     TdcmGrup0014 = class( TdcmGrup )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0014

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

class procedure TdcmGrup0014.AddBook( const Book_:TdcmBookTag );
begin
     Create( Book_, $0014 );
end;

//------------------------------------------------------------------------------

constructor TdcmGrup0014.Create( const Book_:TdcmBookTag; const Code_:THex4 );
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0023, 'CADFileFormat', [TKindVR.vrST], 'CAD File Format' );
     Add( $0024, 'ComponentReferenceSystem', [TKindVR.vrST], 'Component Reference System' );
     Add( $0025, 'ComponentManufacturingProcedure', [TKindVR.vrST], 'Component Manufacturing Procedure' );
     Add( $0028, 'ComponentManufacturer', [TKindVR.vrST], 'Component Manufacturer' );
     Add( $0030, 'MaterialThickness', [TKindVR.vrDS], 'Material Thickness' );
     Add( $0032, 'MaterialPipeDiameter', [TKindVR.vrDS], 'Material Pipe Diameter' );
     Add( $0034, 'MaterialIsolationDiameter', [TKindVR.vrDS], 'Material Isolation Diameter' );
     Add( $0042, 'MaterialGrade', [TKindVR.vrST], 'Material Grade' );
     Add( $0044, 'MaterialPropertiesDescription', [TKindVR.vrST], 'Material Properties Description' );
     Add( $0045, 'MaterialPropertiesFileFormatRetired', [TKindVR.vrST], 'Material Properties File Format (Retired)' );
     Add( $0046, 'MaterialNotes', [TKindVR.vrLT], 'Material Notes' );
     Add( $0050, 'ComponentShape', [TKindVR.vrCS], 'Component Shape' );
     Add( $0052, 'CurvatureType', [TKindVR.vrCS], 'Curvature Type' );
     Add( $0054, 'OuterDiameter', [TKindVR.vrDS], 'Outer Diameter' );
     Add( $0056, 'InnerDiameter', [TKindVR.vrDS], 'Inner Diameter' );
     Add( $0100, 'ComponentWelderIDs', [TKindVR.vrLO], 'Component Welder IDs' );
     Add( $0101, 'SecondaryApprovalStatus', [TKindVR.vrCS], 'Secondary Approval Status' );
     Add( $0102, 'SecondaryReviewDate', [TKindVR.vrDA], 'Secondary Review Date' );
     Add( $0103, 'SecondaryReviewTime', [TKindVR.vrTM], 'Secondary Review Time' );
     Add( $0104, 'SecondaryReviewerName', [TKindVR.vrPN], 'Secondary Reviewer Name' );
     Add( $0105, 'RepairID', [TKindVR.vrST], 'Repair ID' );
     Add( $0106, 'MultipleComponentApprovalSequence', [TKindVR.vrSQ], 'Multiple Component Approval Sequence' );
     Add( $0107, 'OtherApprovalStatus', [TKindVR.vrCS], 'Other Approval Status' );
     Add( $0108, 'OtherSecondaryApprovalStatus', [TKindVR.vrCS], 'Other Secondary Approval Status' );
     Add( $1010, 'ActualEnvironmentalConditions', [TKindVR.vrST], 'Actual Environmental Conditions' );
     Add( $1020, 'ExpiryDate', [TKindVR.vrDA], 'Expiry Date' );
     Add( $1040, 'EnvironmentalConditions', [TKindVR.vrST], 'Environmental Conditions' );
     Add( $2002, 'EvaluatorSequence', [TKindVR.vrSQ], 'Evaluator Sequence' );
     Add( $2004, 'EvaluatorNumber', [TKindVR.vrIS], 'Evaluator Number' );
     Add( $2006, 'EvaluatorName', [TKindVR.vrPN], 'Evaluator Name' );
     Add( $2008, 'EvaluationAttempt', [TKindVR.vrIS], 'Evaluation Attempt' );
     Add( $2012, 'IndicationSequence', [TKindVR.vrSQ], 'Indication Sequence' );
     Add( $2014, 'IndicationNumber', [TKindVR.vrIS], 'Indication Number' );
     Add( $2016, 'IndicationLabel', [TKindVR.vrSH], 'Indication Label' );
     Add( $2018, 'IndicationDescription', [TKindVR.vrST], 'Indication Description' );
     Add( $201A, 'IndicationType', [TKindVR.vrCS], 'Indication Type' );
     Add( $201C, 'IndicationDisposition', [TKindVR.vrCS], 'Indication Disposition' );
     Add( $201E, 'IndicationROISequence', [TKindVR.vrSQ], 'Indication ROI Sequence' );
     Add( $2030, 'IndicationPhysicalPropertySequence', [TKindVR.vrSQ], 'Indication Physical Property Sequence' );
     Add( $2032, 'PropertyLabel', [TKindVR.vrSH], 'Property Label' );
     Add( $2202, 'CoordinateSystemNumberOfAxes', [TKindVR.vrIS], 'Coordinate System Number of Axes' );
     Add( $2204, 'CoordinateSystemAxesSequence', [TKindVR.vrSQ], 'Coordinate System Axes Sequence' );
     Add( $2206, 'CoordinateSystemAxisDescription', [TKindVR.vrST], 'Coordinate System Axis Description' );
     Add( $2208, 'CoordinateSystemDataSetMapping', [TKindVR.vrCS], 'Coordinate System Data Set Mapping' );
     Add( $220A, 'CoordinateSystemAxisNumber', [TKindVR.vrIS], 'Coordinate System Axis Number' );
     Add( $220C, 'CoordinateSystemAxisType', [TKindVR.vrCS], 'Coordinate System Axis Type' );
     Add( $220E, 'CoordinateSystemAxisUnits', [TKindVR.vrCS], 'Coordinate System Axis Units' );
     Add( $2210, 'CoordinateSystemAxisValues', [TKindVR.vrOB], 'Coordinate System Axis Values' );
     Add( $2220, 'CoordinateSystemTransformSequence', [TKindVR.vrSQ], 'Coordinate System Transform Sequence' );
     Add( $2222, 'TransformDescription', [TKindVR.vrST], 'Transform Description' );
     Add( $2224, 'TransformNumberOfAxes', [TKindVR.vrIS], 'Transform Number of Axes' );
     Add( $2226, 'TransformOrderOfAxes', [TKindVR.vrIS], 'Transform Order of Axes' );
     Add( $2228, 'TransformedAxisUnits', [TKindVR.vrCS], 'Transformed Axis Units' );
     Add( $222A, 'CoordinateSystemTransformRotationAndScaleMatrix', [TKindVR.vrDS], 'Coordinate System Transform Rotation and Scale Matrix' );
     Add( $222C, 'CoordinateSystemTransformTranslationMatrix', [TKindVR.vrDS], 'Coordinate System Transform Translation Matrix' );
     Add( $3011, 'InternalDetectorFrameTime', [TKindVR.vrDS], 'Internal Detector Frame Time' );
     Add( $3012, 'NumberOfFramesIntegrated', [TKindVR.vrDS], 'Number of Frames Integrated' );
     Add( $3020, 'DetectorTemperatureSequence', [TKindVR.vrSQ], 'Detector Temperature Sequence' );
     Add( $3022, 'SensorName', [TKindVR.vrST], 'Sensor Name' );
     Add( $3024, 'HorizontalOffsetOfSensor', [TKindVR.vrDS], 'Horizontal Offset of Sensor' );
     Add( $3026, 'VerticalOffsetOfSensor', [TKindVR.vrDS], 'Vertical Offset of Sensor' );
     Add( $3028, 'SensorTemperature', [TKindVR.vrDS], 'Sensor Temperature' );
     Add( $3040, 'DarkCurrentSequence', [TKindVR.vrSQ], 'Dark Current Sequence' );
     Add( $3050, 'DarkCurrentCounts', [TKindVR.vrOB,TKindVR.vrOW], 'Dark Current Counts' );
     Add( $3060, 'GainCorrectionReferenceSequence', [TKindVR.vrSQ], 'Gain Correction Reference Sequence' );
     Add( $3070, 'AirCounts', [TKindVR.vrOB,TKindVR.vrOW], 'Air Counts' );
     Add( $3071, 'KVUsedInGainCalibration', [TKindVR.vrDS], 'KV Used in Gain Calibration' );
     Add( $3072, 'MAUsedInGainCalibration', [TKindVR.vrDS], 'MA Used in Gain Calibration' );
     Add( $3073, 'NumberOfFramesUsedForIntegration', [TKindVR.vrDS], 'Number of Frames Used for Integration' );
     Add( $3074, 'FilterMaterialUsedInGainCalibration', [TKindVR.vrLO], 'Filter Material Used in Gain Calibration' );
     Add( $3075, 'FilterThicknessUsedInGainCalibration', [TKindVR.vrDS], 'Filter Thickness Used in Gain Calibration' );
     Add( $3076, 'DateOfGainCalibration', [TKindVR.vrDA], 'Date of Gain Calibration' );
     Add( $3077, 'TimeOfGainCalibration', [TKindVR.vrTM], 'Time of Gain Calibration' );
     Add( $3080, 'BadPixelImage', [TKindVR.vrOB], 'Bad Pixel Image' );
     Add( $3099, 'CalibrationNotes', [TKindVR.vrLT], 'Calibration Notes' );
     Add( $4002, 'PulserEquipmentSequence', [TKindVR.vrSQ], 'Pulser Equipment Sequence' );
     Add( $4004, 'PulserType', [TKindVR.vrCS], 'Pulser Type' );
     Add( $4006, 'PulserNotes', [TKindVR.vrLT], 'Pulser Notes' );
     Add( $4008, 'ReceiverEquipmentSequence', [TKindVR.vrSQ], 'Receiver Equipment Sequence' );
     Add( $400A, 'AmplifierType', [TKindVR.vrCS], 'Amplifier Type' );
     Add( $400C, 'ReceiverNotes', [TKindVR.vrLT], 'Receiver Notes' );
     Add( $400E, 'PreAmplifierEquipmentSequence', [TKindVR.vrSQ], 'Pre-Amplifier Equipment Sequence' );
     Add( $400F, 'PreAmplifierNotes', [TKindVR.vrLT], 'Pre-Amplifier Notes' );
     Add( $4010, 'TransmitTransducerSequence', [TKindVR.vrSQ], 'Transmit Transducer Sequence' );
     Add( $4011, 'ReceiveTransducerSequence', [TKindVR.vrSQ], 'Receive Transducer Sequence' );
     Add( $4012, 'NumberOfElements', [TKindVR.vrUS], 'Number of Elements' );
     Add( $4013, 'ElementShape', [TKindVR.vrCS], 'Element Shape' );
     Add( $4014, 'ElementDimensionA', [TKindVR.vrDS], 'Element Dimension A' );
     Add( $4015, 'ElementDimensionB', [TKindVR.vrDS], 'Element Dimension B' );
     Add( $4016, 'ElementPitchA', [TKindVR.vrDS], 'Element Pitch A' );
     Add( $4017, 'MeasuredBeamDimensionA', [TKindVR.vrDS], 'Measured Beam Dimension A' );
     Add( $4018, 'MeasuredBeamDimensionB', [TKindVR.vrDS], 'Measured Beam Dimension B' );
     Add( $4019, 'LocationOfMeasuredBeamDiameter', [TKindVR.vrDS], 'Location of Measured Beam Diameter' );
     Add( $401A, 'NominalFrequency', [TKindVR.vrDS], 'Nominal Frequency' );
     Add( $401B, 'MeasuredCenterFrequency', [TKindVR.vrDS], 'Measured Center Frequency' );
     Add( $401C, 'MeasuredBandwidth', [TKindVR.vrDS], 'Measured Bandwidth' );
     Add( $401D, 'ElementPitchB', [TKindVR.vrDS], 'Element Pitch B' );
     Add( $4020, 'PulserSettingsSequence', [TKindVR.vrSQ], 'Pulser Settings Sequence' );
     Add( $4022, 'PulseWidth', [TKindVR.vrDS], 'Pulse Width' );
     Add( $4024, 'ExcitationFrequency', [TKindVR.vrDS], 'Excitation Frequency' );
     Add( $4026, 'ModulationType', [TKindVR.vrCS], 'Modulation Type' );
     Add( $4028, 'Damping', [TKindVR.vrDS], 'Damping' );
     Add( $4030, 'ReceiverSettingsSequence', [TKindVR.vrSQ], 'Receiver Settings Sequence' );
     Add( $4031, 'AcquiredSoundpathLength', [TKindVR.vrDS], 'Acquired Soundpath Length' );
     Add( $4032, 'AcquisitionCompressionType', [TKindVR.vrCS], 'Acquisition Compression Type' );
     Add( $4033, 'AcquisitionSampleSize', [TKindVR.vrIS], 'Acquisition Sample Size' );
     Add( $4034, 'RectifierSmoothing', [TKindVR.vrDS], 'Rectifier Smoothing' );
     Add( $4035, 'DACSequence', [TKindVR.vrSQ], 'DAC Sequence' );
     Add( $4036, 'DACType', [TKindVR.vrCS], 'DAC Type' );
     Add( $4038, 'DACGainPoints', [TKindVR.vrDS], 'DAC Gain Points' );
     Add( $403A, 'DACTimePoints', [TKindVR.vrDS], 'DAC Time Points' );
     Add( $403C, 'DACAmplitude', [TKindVR.vrDS], 'DAC Amplitude' );
     Add( $4040, 'PreAmplifierSettingsSequence', [TKindVR.vrSQ], 'Pre-Amplifier Settings Sequence' );
     Add( $4050, 'TransmitTransducerSettingsSequence', [TKindVR.vrSQ], 'Transmit Transducer Settings Sequence' );
     Add( $4051, 'ReceiveTransducerSettingsSequence', [TKindVR.vrSQ], 'Receive Transducer Settings Sequence' );
     Add( $4052, 'IncidentAngle', [TKindVR.vrDS], 'Incident Angle' );
     Add( $4054, 'CouplingTechnique', [TKindVR.vrST], 'Coupling Technique' );
     Add( $4056, 'CouplingMedium', [TKindVR.vrST], 'Coupling Medium' );
     Add( $4057, 'CouplingVelocity', [TKindVR.vrDS], 'Coupling Velocity' );
     Add( $4058, 'ProbeCenterLocationX', [TKindVR.vrDS], 'Probe Center Location X' );
     Add( $4059, 'ProbeCenterLocationZ', [TKindVR.vrDS], 'Probe Center Location Z' );
     Add( $405A, 'SoundPathLength', [TKindVR.vrDS], 'Sound Path Length' );
     Add( $405C, 'DelayLawIdentifier', [TKindVR.vrST], 'Delay Law Identifier' );
     Add( $4060, 'GateSettingsSequence', [TKindVR.vrSQ], 'Gate Settings Sequence' );
     Add( $4062, 'GateThreshold', [TKindVR.vrDS], 'Gate Threshold' );
     Add( $4064, 'VelocityOfSound', [TKindVR.vrDS], 'Velocity of Sound' );
     Add( $4070, 'CalibrationSettingsSequence', [TKindVR.vrSQ], 'Calibration Settings Sequence' );
     Add( $4072, 'CalibrationProcedure', [TKindVR.vrST], 'Calibration Procedure' );
     Add( $4074, 'ProcedureVersion', [TKindVR.vrSH], 'Procedure Version' );
     Add( $4076, 'ProcedureCreationDate', [TKindVR.vrDA], 'Procedure Creation Date' );
     Add( $4078, 'ProcedureExpirationDate', [TKindVR.vrDA], 'Procedure Expiration Date' );
     Add( $407A, 'ProcedureLastModifiedDate', [TKindVR.vrDA], 'Procedure Last Modified Date' );
     Add( $407C, 'CalibrationTime', [TKindVR.vrTM], 'Calibration Time' );
     Add( $407E, 'CalibrationDate', [TKindVR.vrDA], 'Calibration Date' );
     Add( $4080, 'ProbeDriveEquipmentSequence', [TKindVR.vrSQ], 'Probe Drive Equipment Sequence' );
     Add( $4081, 'DriveType', [TKindVR.vrCS], 'Drive Type' );
     Add( $4082, 'ProbeDriveNotes', [TKindVR.vrLT], 'Probe Drive Notes' );
     Add( $4083, 'DriveProbeSequence', [TKindVR.vrSQ], 'Drive Probe Sequence' );
     Add( $4084, 'ProbeInductance', [TKindVR.vrDS], 'Probe Inductance' );
     Add( $4085, 'ProbeResistance', [TKindVR.vrDS], 'Probe Resistance' );
     Add( $4086, 'ReceiveProbeSequence', [TKindVR.vrSQ], 'Receive Probe Sequence' );
     Add( $4087, 'ProbeDriveSettingsSequence', [TKindVR.vrSQ], 'Probe Drive Settings Sequence' );
     Add( $4088, 'BridgeResistors', [TKindVR.vrDS], 'Bridge Resistors' );
     Add( $4089, 'ProbeOrientationAngle', [TKindVR.vrDS], 'Probe Orientation Angle' );
     Add( $408B, 'UserSelectedGainY', [TKindVR.vrDS], 'User Selected Gain Y' );
     Add( $408C, 'UserSelectedPhase', [TKindVR.vrDS], 'User Selected Phase' );
     Add( $408D, 'UserSelectedOffsetX', [TKindVR.vrDS], 'User Selected Offset X' );
     Add( $408E, 'UserSelectedOffsetY', [TKindVR.vrDS], 'User Selected Offset Y' );
     Add( $4091, 'ChannelSettingsSequence', [TKindVR.vrSQ], 'Channel Settings Sequence' );
     Add( $4092, 'ChannelThreshold', [TKindVR.vrDS], 'Channel Threshold' );
     Add( $409A, 'ScannerSettingsSequence', [TKindVR.vrSQ], 'Scanner Settings Sequence' );
     Add( $409B, 'ScanProcedure', [TKindVR.vrST], 'Scan Procedure' );
     Add( $409C, 'TranslationRateX', [TKindVR.vrDS], 'Translation Rate X' );
     Add( $409D, 'TranslationRateY', [TKindVR.vrDS], 'Translation Rate Y' );
     Add( $409F, 'ChannelOverlap', [TKindVR.vrDS], 'Channel Overlap' );
     Add( $40A0, 'ImageQualityIndicatorType', [TKindVR.vrLO], 'Image Quality Indicator Type' );
     Add( $40A1, 'ImageQualityIndicatorMaterial', [TKindVR.vrLO], 'Image Quality Indicator Material' );
     Add( $40A2, 'ImageQualityIndicatorSize', [TKindVR.vrLO], 'Image Quality Indicator Size' );
     Add( $5002, 'LINACEnergy', [TKindVR.vrIS], 'LINAC Energy' );
     Add( $5004, 'LINACOutput', [TKindVR.vrIS], 'LINAC Output' );
     Add( $5100, 'ActiveAperture', [TKindVR.vrUS], 'Active Aperture' );
     Add( $5101, 'TotalAperture', [TKindVR.vrDS], 'Total Aperture' );
     Add( $5102, 'ApertureElevation', [TKindVR.vrDS], 'Aperture Elevation' );
     Add( $5103, 'MainLobeAngle', [TKindVR.vrDS], 'Main Lobe Angle' );
     Add( $5104, 'MainRoofAngle', [TKindVR.vrDS], 'Main Roof Angle' );
     Add( $5105, 'ConnectorType', [TKindVR.vrCS], 'Connector Type' );
     Add( $5106, 'WedgeModelNumber', [TKindVR.vrSH], 'Wedge Model Number' );
     Add( $5107, 'WedgeAngleFloat', [TKindVR.vrDS], 'Wedge Angle Float' );
     Add( $5108, 'WedgeRoofAngle', [TKindVR.vrDS], 'Wedge Roof Angle' );
     Add( $5109, 'WedgeElement1Position', [TKindVR.vrCS], 'Wedge Element 1 Position' );
     Add( $510A, 'WedgeMaterialVelocity', [TKindVR.vrDS], 'Wedge Material Velocity' );
     Add( $510B, 'WedgeMaterial', [TKindVR.vrSH], 'Wedge Material' );
     Add( $510C, 'WedgeOffsetZ', [TKindVR.vrDS], 'Wedge Offset Z' );
     Add( $510D, 'WedgeOriginOffsetX', [TKindVR.vrDS], 'Wedge Origin Offset X' );
     Add( $510E, 'WedgeTimeDelay', [TKindVR.vrDS], 'Wedge Time Delay' );
     Add( $510F, 'WedgeName', [TKindVR.vrSH], 'Wedge Name' );
     Add( $5110, 'WedgeManufacturerName', [TKindVR.vrSH], 'Wedge Manufacturer Name' );
     Add( $5111, 'WedgeDescription', [TKindVR.vrLO], 'Wedge Description' );
     Add( $5112, 'NominalBeamAngle', [TKindVR.vrDS], 'Nominal Beam Angle' );
     Add( $5113, 'WedgeOffsetX', [TKindVR.vrDS], 'Wedge Offset X' );
     Add( $5114, 'WedgeOffsetY', [TKindVR.vrDS], 'Wedge Offset Y' );
     Add( $5115, 'WedgeTotalLength', [TKindVR.vrDS], 'Wedge Total Length' );
     Add( $5116, 'WedgeInContactLength', [TKindVR.vrDS], 'Wedge In Contact Length' );
     Add( $5117, 'WedgeFrontGap', [TKindVR.vrDS], 'Wedge Front Gap' );
     Add( $5118, 'WedgeTotalHeight', [TKindVR.vrDS], 'Wedge Total Height' );
     Add( $5119, 'WedgeFrontHeight', [TKindVR.vrDS], 'Wedge Front Height' );
     Add( $511A, 'WedgeRearHeight', [TKindVR.vrDS], 'Wedge Rear Height' );
     Add( $511B, 'WedgeTotalWidth', [TKindVR.vrDS], 'Wedge Total Width' );
     Add( $511C, 'WedgeInContactWidth', [TKindVR.vrDS], 'Wedge In Contact Width' );
     Add( $511D, 'WedgeChamferHeight', [TKindVR.vrDS], 'Wedge Chamfer Height' );
     Add( $511E, 'WedgeCurve', [TKindVR.vrCS], 'Wedge Curve' );
     Add( $511F, 'RadiusAlongWedge', [TKindVR.vrDS], 'Radius Along the Wedge' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
