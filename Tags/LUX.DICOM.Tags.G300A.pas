unit LUX.DICOM.Tags.G300A;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup300A

     TdcmGrup300A = class( TdcmGrup )
     private
     protected
     public
       constructor Create( const Code_:THex4 );
     end;

//const //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【定数】

//var //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【変数】

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

implementation //############################################################### ■

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup300A

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmGrup300A.Create( const Code_:THex4 );
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0002, 'RTPlanLabel', [TKindVR.vrSH], 'RT Plan Label' );
     Add( $0003, 'RTPlanName', [TKindVR.vrLO], 'RT Plan Name' );
     Add( $0004, 'RTPlanDescription', [TKindVR.vrST], 'RT Plan Description' );
     Add( $0006, 'RTPlanDate', [TKindVR.vrDA], 'RT Plan Date' );
     Add( $0007, 'RTPlanTime', [TKindVR.vrTM], 'RT Plan Time' );
     Add( $0009, 'TreatmentProtocols', [TKindVR.vrLO], 'Treatment Protocols' );
     Add( $000A, 'PlanIntent', [TKindVR.vrCS], 'Plan Intent' );
     Add( $000B, 'TreatmentSites', [TKindVR.vrLO], 'Treatment Sites' );
     Add( $000C, 'RTPlanGeometry', [TKindVR.vrCS], 'RT Plan Geometry' );
     Add( $000E, 'PrescriptionDescription', [TKindVR.vrST], 'Prescription Description' );
     Add( $0010, 'DoseReferenceSequence', [TKindVR.vrSQ], 'Dose Reference Sequence' );
     Add( $0012, 'DoseReferenceNumber', [TKindVR.vrIS], 'Dose Reference Number' );
     Add( $0013, 'DoseReferenceUID', [TKindVR.vrUI], 'Dose Reference UID' );
     Add( $0014, 'DoseReferenceStructureType', [TKindVR.vrCS], 'Dose Reference Structure Type' );
     Add( $0015, 'NominalBeamEnergyUnit', [TKindVR.vrCS], 'Nominal Beam Energy Unit' );
     Add( $0016, 'DoseReferenceDescription', [TKindVR.vrLO], 'Dose Reference Description' );
     Add( $0018, 'DoseReferencePointCoordinates', [TKindVR.vrDS], 'Dose Reference Point Coordinates' );
     Add( $001A, 'NominalPriorDose', [TKindVR.vrDS], 'Nominal Prior Dose' );
     Add( $0020, 'DoseReferenceType', [TKindVR.vrCS], 'Dose Reference Type' );
     Add( $0021, 'ConstraintWeight', [TKindVR.vrDS], 'Constraint Weight' );
     Add( $0022, 'DeliveryWarningDose', [TKindVR.vrDS], 'Delivery Warning Dose' );
     Add( $0023, 'DeliveryMaximumDose', [TKindVR.vrDS], 'Delivery Maximum Dose' );
     Add( $0025, 'TargetMinimumDose', [TKindVR.vrDS], 'Target Minimum Dose' );
     Add( $0026, 'TargetPrescriptionDose', [TKindVR.vrDS], 'Target Prescription Dose' );
     Add( $0027, 'TargetMaximumDose', [TKindVR.vrDS], 'Target Maximum Dose' );
     Add( $0028, 'TargetUnderdoseVolumeFraction', [TKindVR.vrDS], 'Target Underdose Volume Fraction' );
     Add( $002A, 'OrganAtRiskFullVolumeDose', [TKindVR.vrDS], 'Organ at Risk Full-volume Dose' );
     Add( $002B, 'OrganAtRiskLimitDose', [TKindVR.vrDS], 'Organ at Risk Limit Dose' );
     Add( $002C, 'OrganAtRiskMaximumDose', [TKindVR.vrDS], 'Organ at Risk Maximum Dose' );
     Add( $002D, 'OrganAtRiskOverdoseVolumeFraction', [TKindVR.vrDS], 'Organ at Risk Overdose Volume Fraction' );
     Add( $0040, 'ToleranceTableSequence', [TKindVR.vrSQ], 'Tolerance Table Sequence' );
     Add( $0042, 'ToleranceTableNumber', [TKindVR.vrIS], 'Tolerance Table Number' );
     Add( $0043, 'ToleranceTableLabel', [TKindVR.vrSH], 'Tolerance Table Label' );
     Add( $0044, 'GantryAngleTolerance', [TKindVR.vrDS], 'Gantry Angle Tolerance' );
     Add( $0046, 'BeamLimitingDeviceAngleTolerance', [TKindVR.vrDS], 'Beam Limiting Device Angle Tolerance' );
     Add( $0048, 'BeamLimitingDeviceToleranceSequence', [TKindVR.vrSQ], 'Beam Limiting Device Tolerance Sequence' );
     Add( $004A, 'BeamLimitingDevicePositionTolerance', [TKindVR.vrDS], 'Beam Limiting Device Position Tolerance' );
     Add( $004B, 'SnoutPositionTolerance', [TKindVR.vrFL], 'Snout Position Tolerance' );
     Add( $004C, 'PatientSupportAngleTolerance', [TKindVR.vrDS], 'Patient Support Angle Tolerance' );
     Add( $004E, 'TableTopEccentricAngleTolerance', [TKindVR.vrDS], 'Table Top Eccentric Angle Tolerance' );
     Add( $004F, 'TableTopPitchAngleTolerance', [TKindVR.vrFL], 'Table Top Pitch Angle Tolerance' );
     Add( $0050, 'TableTopRollAngleTolerance', [TKindVR.vrFL], 'Table Top Roll Angle Tolerance' );
     Add( $0051, 'TableTopVerticalPositionTolerance', [TKindVR.vrDS], 'Table Top Vertical Position Tolerance' );
     Add( $0052, 'TableTopLongitudinalPositionTolerance', [TKindVR.vrDS], 'Table Top Longitudinal Position Tolerance' );
     Add( $0053, 'TableTopLateralPositionTolerance', [TKindVR.vrDS], 'Table Top Lateral Position Tolerance' );
     Add( $0055, 'RTPlanRelationship', [TKindVR.vrCS], 'RT Plan Relationship' );
     Add( $0070, 'FractionGroupSequence', [TKindVR.vrSQ], 'Fraction Group Sequence' );
     Add( $0071, 'FractionGroupNumber', [TKindVR.vrIS], 'Fraction Group Number' );
     Add( $0072, 'FractionGroupDescription', [TKindVR.vrLO], 'Fraction Group Description' );
     Add( $0078, 'NumberOfFractionsPlanned', [TKindVR.vrIS], 'Number of Fractions Planned' );
     Add( $0079, 'NumberOfFractionPatternDigitsPerDay', [TKindVR.vrIS], 'Number of Fraction Pattern Digits Per Day' );
     Add( $007A, 'RepeatFractionCycleLength', [TKindVR.vrIS], 'Repeat Fraction Cycle Length' );
     Add( $007B, 'FractionPattern', [TKindVR.vrLT], 'Fraction Pattern' );
     Add( $0080, 'NumberOfBeams', [TKindVR.vrIS], 'Number of Beams' );
     Add( $0082, 'BeamDoseSpecificationPoint', [TKindVR.vrDS], 'Beam Dose Specification Point' );
     Add( $0084, 'BeamDose', [TKindVR.vrDS], 'Beam Dose' );
     Add( $0086, 'BeamMeterset', [TKindVR.vrDS], 'Beam Meterset' );
     Add( $0088, 'BeamDosePointDepth', [TKindVR.vrFL], 'Beam Dose Point Depth' );
     Add( $0089, 'BeamDosePointEquivalentDepth', [TKindVR.vrFL], 'Beam Dose Point Equivalent Depth' );
     Add( $008A, 'BeamDosePointSSD', [TKindVR.vrFL], 'Beam Dose Point SSD' );
     Add( $008B, 'BeamDoseMeaning', [TKindVR.vrCS], 'Beam Dose Meaning' );
     Add( $008C, 'BeamDoseVerificationControlPointSequence', [TKindVR.vrSQ], 'Beam Dose Verification Control Point Sequence' );
     Add( $008D, 'AverageBeamDosePointDepth', [TKindVR.vrFL], 'Average Beam Dose Point Depth' );
     Add( $008E, 'AverageBeamDosePointEquivalentDepth', [TKindVR.vrFL], 'Average Beam Dose Point Equivalent Depth' );
     Add( $008F, 'AverageBeamDosePointSSD', [TKindVR.vrFL], 'Average Beam Dose Point SSD' );
     Add( $0090, 'BeamDoseType', [TKindVR.vrCS], 'Beam Dose Type' );
     Add( $0091, 'AlternateBeamDose', [TKindVR.vrDS], 'Alternate Beam Dose' );
     Add( $0092, 'AlternateBeamDoseType', [TKindVR.vrCS], 'Alternate Beam Dose Type' );
     Add( $00A0, 'NumberOfBrachyApplicationSetups', [TKindVR.vrIS], 'Number of Brachy Application Setups' );
     Add( $00A2, 'BrachyApplicationSetupDoseSpecificationPoint', [TKindVR.vrDS], 'Brachy Application Setup Dose Specification Point' );
     Add( $00A4, 'BrachyApplicationSetupDose', [TKindVR.vrDS], 'Brachy Application Setup Dose' );
     Add( $00B0, 'BeamSequence', [TKindVR.vrSQ], 'Beam Sequence' );
     Add( $00B2, 'TreatmentMachineName', [TKindVR.vrSH], 'Treatment Machine Name' );
     Add( $00B3, 'PrimaryDosimeterUnit', [TKindVR.vrCS], 'Primary Dosimeter Unit' );
     Add( $00B4, 'SourceAxisDistance', [TKindVR.vrDS], 'Source-Axis Distance' );
     Add( $00B6, 'BeamLimitingDeviceSequence', [TKindVR.vrSQ], 'Beam Limiting Device Sequence' );
     Add( $00B8, 'RTBeamLimitingDeviceType', [TKindVR.vrCS], 'RT Beam Limiting Device Type' );
     Add( $00BA, 'SourceToBeamLimitingDeviceDistance', [TKindVR.vrDS], 'Source to Beam Limiting Device Distance' );
     Add( $00BB, 'IsocenterToBeamLimitingDeviceDistance', [TKindVR.vrFL], 'Isocenter to Beam Limiting Device Distance' );
     Add( $00BC, 'NumberOfLeafJawPairs', [TKindVR.vrIS], 'Number of Leaf/Jaw Pairs' );
     Add( $00BE, 'LeafPositionBoundaries', [TKindVR.vrDS], 'Leaf Position Boundaries' );
     Add( $00C0, 'BeamNumber', [TKindVR.vrIS], 'Beam Number' );
     Add( $00C2, 'BeamName', [TKindVR.vrLO], 'Beam Name' );
     Add( $00C3, 'BeamDescription', [TKindVR.vrST], 'Beam Description' );
     Add( $00C4, 'BeamType', [TKindVR.vrCS], 'Beam Type' );
     Add( $00C5, 'BeamDeliveryDurationLimit', [TKindVR.vrFD], 'Beam Delivery Duration Limit' );
     Add( $00C6, 'RadiationType', [TKindVR.vrCS], 'Radiation Type' );
     Add( $00C7, 'HighDoseTechniqueType', [TKindVR.vrCS], 'High-Dose Technique Type' );
     Add( $00C8, 'ReferenceImageNumber', [TKindVR.vrIS], 'Reference Image Number' );
     Add( $00CA, 'PlannedVerificationImageSequence', [TKindVR.vrSQ], 'Planned Verification Image Sequence' );
     Add( $00CC, 'ImagingDeviceSpecificAcquisitionParameters', [TKindVR.vrLO], 'Imaging Device-Specific Acquisition Parameters' );
     Add( $00CE, 'TreatmentDeliveryType', [TKindVR.vrCS], 'Treatment Delivery Type' );
     Add( $00D0, 'NumberOfWedges', [TKindVR.vrIS], 'Number of Wedges' );
     Add( $00D1, 'WedgeSequence', [TKindVR.vrSQ], 'Wedge Sequence' );
     Add( $00D2, 'WedgeNumber', [TKindVR.vrIS], 'Wedge Number' );
     Add( $00D3, 'WedgeType', [TKindVR.vrCS], 'Wedge Type' );
     Add( $00D4, 'WedgeID', [TKindVR.vrSH], 'Wedge ID' );
     Add( $00D5, 'WedgeAngle', [TKindVR.vrIS], 'Wedge Angle' );
     Add( $00D6, 'WedgeFactor', [TKindVR.vrDS], 'Wedge Factor' );
     Add( $00D7, 'TotalWedgeTrayWaterEquivalentThickness', [TKindVR.vrFL], 'Total Wedge Tray Water-Equivalent Thickness' );
     Add( $00D8, 'WedgeOrientation', [TKindVR.vrDS], 'Wedge Orientation' );
     Add( $00D9, 'IsocenterToWedgeTrayDistance', [TKindVR.vrFL], 'Isocenter to Wedge Tray Distance' );
     Add( $00DA, 'SourceToWedgeTrayDistance', [TKindVR.vrDS], 'Source to Wedge Tray Distance' );
     Add( $00DB, 'WedgeThinEdgePosition', [TKindVR.vrFL], 'Wedge Thin Edge Position' );
     Add( $00DC, 'BolusID', [TKindVR.vrSH], 'Bolus ID' );
     Add( $00DD, 'BolusDescription', [TKindVR.vrST], 'Bolus Description' );
     Add( $00DE, 'EffectiveWedgeAngle', [TKindVR.vrDS], 'Effective Wedge Angle' );
     Add( $00E0, 'NumberOfCompensators', [TKindVR.vrIS], 'Number of Compensators' );
     Add( $00E1, 'MaterialID', [TKindVR.vrSH], 'Material ID' );
     Add( $00E2, 'TotalCompensatorTrayFactor', [TKindVR.vrDS], 'Total Compensator Tray Factor' );
     Add( $00E3, 'CompensatorSequence', [TKindVR.vrSQ], 'Compensator Sequence' );
     Add( $00E4, 'CompensatorNumber', [TKindVR.vrIS], 'Compensator Number' );
     Add( $00E5, 'CompensatorID', [TKindVR.vrSH], 'Compensator ID' );
     Add( $00E6, 'SourceToCompensatorTrayDistance', [TKindVR.vrDS], 'Source to Compensator Tray Distance' );
     Add( $00E7, 'CompensatorRows', [TKindVR.vrIS], 'Compensator Rows' );
     Add( $00E8, 'CompensatorColumns', [TKindVR.vrIS], 'Compensator Columns' );
     Add( $00E9, 'CompensatorPixelSpacing', [TKindVR.vrDS], 'Compensator Pixel Spacing' );
     Add( $00EA, 'CompensatorPosition', [TKindVR.vrDS], 'Compensator Position' );
     Add( $00EB, 'CompensatorTransmissionData', [TKindVR.vrDS], 'Compensator Transmission Data' );
     Add( $00EC, 'CompensatorThicknessData', [TKindVR.vrDS], 'Compensator Thickness Data' );
     Add( $00ED, 'NumberOfBoli', [TKindVR.vrIS], 'Number of Boli' );
     Add( $00EE, 'CompensatorType', [TKindVR.vrCS], 'Compensator Type' );
     Add( $00EF, 'CompensatorTrayID', [TKindVR.vrSH], 'Compensator Tray ID' );
     Add( $00F0, 'NumberOfBlocks', [TKindVR.vrIS], 'Number of Blocks' );
     Add( $00F2, 'TotalBlockTrayFactor', [TKindVR.vrDS], 'Total Block Tray Factor' );
     Add( $00F3, 'TotalBlockTrayWaterEquivalentThickness', [TKindVR.vrFL], 'Total Block Tray Water-Equivalent Thickness' );
     Add( $00F4, 'BlockSequence', [TKindVR.vrSQ], 'Block Sequence' );
     Add( $00F5, 'BlockTrayID', [TKindVR.vrSH], 'Block Tray ID' );
     Add( $00F6, 'SourceToBlockTrayDistance', [TKindVR.vrDS], 'Source to Block Tray Distance' );
     Add( $00F7, 'IsocenterToBlockTrayDistance', [TKindVR.vrFL], 'Isocenter to Block Tray Distance' );
     Add( $00F8, 'BlockType', [TKindVR.vrCS], 'Block Type' );
     Add( $00F9, 'AccessoryCode', [TKindVR.vrLO], 'Accessory Code' );
     Add( $00FA, 'BlockDivergence', [TKindVR.vrCS], 'Block Divergence' );
     Add( $00FB, 'BlockMountingPosition', [TKindVR.vrCS], 'Block Mounting Position' );
     Add( $00FC, 'BlockNumber', [TKindVR.vrIS], 'Block Number' );
     Add( $00FE, 'BlockName', [TKindVR.vrLO], 'Block Name' );
     Add( $0100, 'BlockThickness', [TKindVR.vrDS], 'Block Thickness' );
     Add( $0102, 'BlockTransmission', [TKindVR.vrDS], 'Block Transmission' );
     Add( $0104, 'BlockNumberOfPoints', [TKindVR.vrIS], 'Block Number of Points' );
     Add( $0106, 'BlockData', [TKindVR.vrDS], 'Block Data' );
     Add( $0107, 'ApplicatorSequence', [TKindVR.vrSQ], 'Applicator Sequence' );
     Add( $0108, 'ApplicatorID', [TKindVR.vrSH], 'Applicator ID' );
     Add( $0109, 'ApplicatorType', [TKindVR.vrCS], 'Applicator Type' );
     Add( $010A, 'ApplicatorDescription', [TKindVR.vrLO], 'Applicator Description' );
     Add( $010C, 'CumulativeDoseReferenceCoefficient', [TKindVR.vrDS], 'Cumulative Dose Reference Coefficient' );
     Add( $010E, 'FinalCumulativeMetersetWeight', [TKindVR.vrDS], 'Final Cumulative Meterset Weight' );
     Add( $0110, 'NumberOfControlPoints', [TKindVR.vrIS], 'Number of Control Points' );
     Add( $0111, 'ControlPointSequence', [TKindVR.vrSQ], 'Control Point Sequence' );
     Add( $0112, 'ControlPointIndex', [TKindVR.vrIS], 'Control Point Index' );
     Add( $0114, 'NominalBeamEnergy', [TKindVR.vrDS], 'Nominal Beam Energy' );
     Add( $0115, 'DoseRateSet', [TKindVR.vrDS], 'Dose Rate Set' );
     Add( $0116, 'WedgePositionSequence', [TKindVR.vrSQ], 'Wedge Position Sequence' );
     Add( $0118, 'WedgePosition', [TKindVR.vrCS], 'Wedge Position' );
     Add( $011A, 'BeamLimitingDevicePositionSequence', [TKindVR.vrSQ], 'Beam Limiting Device Position Sequence' );
     Add( $011C, 'LeafJawPositions', [TKindVR.vrDS], 'Leaf/Jaw Positions' );
     Add( $011E, 'GantryAngle', [TKindVR.vrDS], 'Gantry Angle' );
     Add( $011F, 'GantryRotationDirection', [TKindVR.vrCS], 'Gantry Rotation Direction' );
     Add( $0120, 'BeamLimitingDeviceAngle', [TKindVR.vrDS], 'Beam Limiting Device Angle' );
     Add( $0121, 'BeamLimitingDeviceRotationDirection', [TKindVR.vrCS], 'Beam Limiting Device Rotation Direction' );
     Add( $0122, 'PatientSupportAngle', [TKindVR.vrDS], 'Patient Support Angle' );
     Add( $0123, 'PatientSupportRotationDirection', [TKindVR.vrCS], 'Patient Support Rotation Direction' );
     Add( $0124, 'TableTopEccentricAxisDistance', [TKindVR.vrDS], 'Table Top Eccentric Axis Distance' );
     Add( $0125, 'TableTopEccentricAngle', [TKindVR.vrDS], 'Table Top Eccentric Angle' );
     Add( $0126, 'TableTopEccentricRotationDirection', [TKindVR.vrCS], 'Table Top Eccentric Rotation Direction' );
     Add( $0128, 'TableTopVerticalPosition', [TKindVR.vrDS], 'Table Top Vertical Position' );
     Add( $0129, 'TableTopLongitudinalPosition', [TKindVR.vrDS], 'Table Top Longitudinal Position' );
     Add( $012A, 'TableTopLateralPosition', [TKindVR.vrDS], 'Table Top Lateral Position' );
     Add( $012C, 'IsocenterPosition', [TKindVR.vrDS], 'Isocenter Position' );
     Add( $012E, 'SurfaceEntryPoint', [TKindVR.vrDS], 'Surface Entry Point' );
     Add( $0130, 'SourceToSurfaceDistance', [TKindVR.vrDS], 'Source to Surface Distance' );
     Add( $0131, 'AverageBeamDosePointSourceToExternalContourDistance', [TKindVR.vrFL], 'Average Beam Dose Point Source to External Contour Distance' );
     Add( $0132, 'SourceToExternalContourDistance', [TKindVR.vrFL], 'Source to External Contour Distance' );
     Add( $0133, 'ExternalContourEntryPoint', [TKindVR.vrFL], 'External Contour Entry Point' );
     Add( $0134, 'CumulativeMetersetWeight', [TKindVR.vrDS], 'Cumulative Meterset Weight' );
     Add( $0140, 'TableTopPitchAngle', [TKindVR.vrFL], 'Table Top Pitch Angle' );
     Add( $0142, 'TableTopPitchRotationDirection', [TKindVR.vrCS], 'Table Top Pitch Rotation Direction' );
     Add( $0144, 'TableTopRollAngle', [TKindVR.vrFL], 'Table Top Roll Angle' );
     Add( $0146, 'TableTopRollRotationDirection', [TKindVR.vrCS], 'Table Top Roll Rotation Direction' );
     Add( $0148, 'HeadFixationAngle', [TKindVR.vrFL], 'Head Fixation Angle' );
     Add( $014A, 'GantryPitchAngle', [TKindVR.vrFL], 'Gantry Pitch Angle' );
     Add( $014C, 'GantryPitchRotationDirection', [TKindVR.vrCS], 'Gantry Pitch Rotation Direction' );
     Add( $014E, 'GantryPitchAngleTolerance', [TKindVR.vrFL], 'Gantry Pitch Angle Tolerance' );
     Add( $0150, 'FixationEye', [TKindVR.vrCS], 'Fixation Eye' );
     Add( $0151, 'ChairHeadFramePosition', [TKindVR.vrDS], 'Chair Head Frame Position' );
     Add( $0152, 'HeadFixationAngleTolerance', [TKindVR.vrDS], 'Head Fixation Angle Tolerance' );
     Add( $0153, 'ChairHeadFramePositionTolerance', [TKindVR.vrDS], 'Chair Head Frame Position Tolerance' );
     Add( $0154, 'FixationLightAzimuthalAngleTolerance', [TKindVR.vrDS], 'Fixation Light Azimuthal Angle Tolerance' );
     Add( $0155, 'FixationLightPolarAngleTolerance', [TKindVR.vrDS], 'Fixation Light Polar Angle Tolerance' );
     Add( $0180, 'PatientSetupSequence', [TKindVR.vrSQ], 'Patient Setup Sequence' );
     Add( $0182, 'PatientSetupNumber', [TKindVR.vrIS], 'Patient Setup Number' );
     Add( $0183, 'PatientSetupLabel', [TKindVR.vrLO], 'Patient Setup Label' );
     Add( $0184, 'PatientAdditionalPosition', [TKindVR.vrLO], 'Patient Additional Position' );
     Add( $0190, 'FixationDeviceSequence', [TKindVR.vrSQ], 'Fixation Device Sequence' );
     Add( $0192, 'FixationDeviceType', [TKindVR.vrCS], 'Fixation Device Type' );
     Add( $0194, 'FixationDeviceLabel', [TKindVR.vrSH], 'Fixation Device Label' );
     Add( $0196, 'FixationDeviceDescription', [TKindVR.vrST], 'Fixation Device Description' );
     Add( $0198, 'FixationDevicePosition', [TKindVR.vrSH], 'Fixation Device Position' );
     Add( $0199, 'FixationDevicePitchAngle', [TKindVR.vrFL], 'Fixation Device Pitch Angle' );
     Add( $019A, 'FixationDeviceRollAngle', [TKindVR.vrFL], 'Fixation Device Roll Angle' );
     Add( $01A0, 'ShieldingDeviceSequence', [TKindVR.vrSQ], 'Shielding Device Sequence' );
     Add( $01A2, 'ShieldingDeviceType', [TKindVR.vrCS], 'Shielding Device Type' );
     Add( $01A4, 'ShieldingDeviceLabel', [TKindVR.vrSH], 'Shielding Device Label' );
     Add( $01A6, 'ShieldingDeviceDescription', [TKindVR.vrST], 'Shielding Device Description' );
     Add( $01A8, 'ShieldingDevicePosition', [TKindVR.vrSH], 'Shielding Device Position' );
     Add( $01B0, 'SetupTechnique', [TKindVR.vrCS], 'Setup Technique' );
     Add( $01B2, 'SetupTechniqueDescription', [TKindVR.vrST], 'Setup Technique Description' );
     Add( $01B4, 'SetupDeviceSequence', [TKindVR.vrSQ], 'Setup Device Sequence' );
     Add( $01B6, 'SetupDeviceType', [TKindVR.vrCS], 'Setup Device Type' );
     Add( $01B8, 'SetupDeviceLabel', [TKindVR.vrSH], 'Setup Device Label' );
     Add( $01BA, 'SetupDeviceDescription', [TKindVR.vrST], 'Setup Device Description' );
     Add( $01BC, 'SetupDeviceParameter', [TKindVR.vrDS], 'Setup Device Parameter' );
     Add( $01D0, 'SetupReferenceDescription', [TKindVR.vrST], 'Setup Reference Description' );
     Add( $01D2, 'TableTopVerticalSetupDisplacement', [TKindVR.vrDS], 'Table Top Vertical Setup Displacement' );
     Add( $01D4, 'TableTopLongitudinalSetupDisplacement', [TKindVR.vrDS], 'Table Top Longitudinal Setup Displacement' );
     Add( $01D6, 'TableTopLateralSetupDisplacement', [TKindVR.vrDS], 'Table Top Lateral Setup Displacement' );
     Add( $0200, 'BrachyTreatmentTechnique', [TKindVR.vrCS], 'Brachy Treatment Technique' );
     Add( $0202, 'BrachyTreatmentType', [TKindVR.vrCS], 'Brachy Treatment Type' );
     Add( $0206, 'TreatmentMachineSequence', [TKindVR.vrSQ], 'Treatment Machine Sequence' );
     Add( $0210, 'SourceSequence', [TKindVR.vrSQ], 'Source Sequence' );
     Add( $0212, 'SourceNumber', [TKindVR.vrIS], 'Source Number' );
     Add( $0214, 'SourceType', [TKindVR.vrCS], 'Source Type' );
     Add( $0216, 'SourceManufacturer', [TKindVR.vrLO], 'Source Manufacturer' );
     Add( $0218, 'ActiveSourceDiameter', [TKindVR.vrDS], 'Active Source Diameter' );
     Add( $021A, 'ActiveSourceLength', [TKindVR.vrDS], 'Active Source Length' );
     Add( $021B, 'SourceModelID', [TKindVR.vrSH], 'Source Model ID' );
     Add( $021C, 'SourceDescription', [TKindVR.vrLO], 'Source Description' );
     Add( $0222, 'SourceEncapsulationNominalThickness', [TKindVR.vrDS], 'Source Encapsulation Nominal Thickness' );
     Add( $0224, 'SourceEncapsulationNominalTransmission', [TKindVR.vrDS], 'Source Encapsulation Nominal Transmission' );
     Add( $0226, 'SourceIsotopeName', [TKindVR.vrLO], 'Source Isotope Name' );
     Add( $0228, 'SourceIsotopeHalfLife', [TKindVR.vrDS], 'Source Isotope Half Life' );
     Add( $0229, 'SourceStrengthUnits', [TKindVR.vrCS], 'Source Strength Units' );
     Add( $022A, 'ReferenceAirKermaRate', [TKindVR.vrDS], 'Reference Air Kerma Rate' );
     Add( $022B, 'SourceStrength', [TKindVR.vrDS], 'Source Strength' );
     Add( $022C, 'SourceStrengthReferenceDate', [TKindVR.vrDA], 'Source Strength Reference Date' );
     Add( $022E, 'SourceStrengthReferenceTime', [TKindVR.vrTM], 'Source Strength Reference Time' );
     Add( $0230, 'ApplicationSetupSequence', [TKindVR.vrSQ], 'Application Setup Sequence' );
     Add( $0232, 'ApplicationSetupType', [TKindVR.vrCS], 'Application Setup Type' );
     Add( $0234, 'ApplicationSetupNumber', [TKindVR.vrIS], 'Application Setup Number' );
     Add( $0236, 'ApplicationSetupName', [TKindVR.vrLO], 'Application Setup Name' );
     Add( $0238, 'ApplicationSetupManufacturer', [TKindVR.vrLO], 'Application Setup Manufacturer' );
     Add( $0240, 'TemplateNumber', [TKindVR.vrIS], 'Template Number' );
     Add( $0242, 'TemplateType', [TKindVR.vrSH], 'Template Type' );
     Add( $0244, 'TemplateName', [TKindVR.vrLO], 'Template Name' );
     Add( $0250, 'TotalReferenceAirKerma', [TKindVR.vrDS], 'Total Reference Air Kerma' );
     Add( $0260, 'BrachyAccessoryDeviceSequence', [TKindVR.vrSQ], 'Brachy Accessory Device Sequence' );
     Add( $0262, 'BrachyAccessoryDeviceNumber', [TKindVR.vrIS], 'Brachy Accessory Device Number' );
     Add( $0263, 'BrachyAccessoryDeviceID', [TKindVR.vrSH], 'Brachy Accessory Device ID' );
     Add( $0264, 'BrachyAccessoryDeviceType', [TKindVR.vrCS], 'Brachy Accessory Device Type' );
     Add( $0266, 'BrachyAccessoryDeviceName', [TKindVR.vrLO], 'Brachy Accessory Device Name' );
     Add( $026A, 'BrachyAccessoryDeviceNominalThickness', [TKindVR.vrDS], 'Brachy Accessory Device Nominal Thickness' );
     Add( $026C, 'BrachyAccessoryDeviceNominalTransmission', [TKindVR.vrDS], 'Brachy Accessory Device Nominal Transmission' );
     Add( $0280, 'ChannelSequence', [TKindVR.vrSQ], 'Channel Sequence' );
     Add( $0282, 'ChannelNumber', [TKindVR.vrIS], 'Channel Number' );
     Add( $0284, 'ChannelLength', [TKindVR.vrDS], 'Channel Length' );
     Add( $0286, 'ChannelTotalTime', [TKindVR.vrDS], 'Channel Total Time' );
     Add( $0288, 'SourceMovementType', [TKindVR.vrCS], 'Source Movement Type' );
     Add( $028A, 'NumberOfPulses', [TKindVR.vrIS], 'Number of Pulses' );
     Add( $028C, 'PulseRepetitionInterval', [TKindVR.vrDS], 'Pulse Repetition Interval' );
     Add( $0290, 'SourceApplicatorNumber', [TKindVR.vrIS], 'Source Applicator Number' );
     Add( $0291, 'SourceApplicatorID', [TKindVR.vrSH], 'Source Applicator ID' );
     Add( $0292, 'SourceApplicatorType', [TKindVR.vrCS], 'Source Applicator Type' );
     Add( $0294, 'SourceApplicatorName', [TKindVR.vrLO], 'Source Applicator Name' );
     Add( $0296, 'SourceApplicatorLength', [TKindVR.vrDS], 'Source Applicator Length' );
     Add( $0298, 'SourceApplicatorManufacturer', [TKindVR.vrLO], 'Source Applicator Manufacturer' );
     Add( $029C, 'SourceApplicatorWallNominalThickness', [TKindVR.vrDS], 'Source Applicator Wall Nominal Thickness' );
     Add( $029E, 'SourceApplicatorWallNominalTransmission', [TKindVR.vrDS], 'Source Applicator Wall Nominal Transmission' );
     Add( $02A0, 'SourceApplicatorStepSize', [TKindVR.vrDS], 'Source Applicator Step Size' );
     Add( $02A2, 'TransferTubeNumber', [TKindVR.vrIS], 'Transfer Tube Number' );
     Add( $02A4, 'TransferTubeLength', [TKindVR.vrDS], 'Transfer Tube Length' );
     Add( $02B0, 'ChannelShieldSequence', [TKindVR.vrSQ], 'Channel Shield Sequence' );
     Add( $02B2, 'ChannelShieldNumber', [TKindVR.vrIS], 'Channel Shield Number' );
     Add( $02B3, 'ChannelShieldID', [TKindVR.vrSH], 'Channel Shield ID' );
     Add( $02B4, 'ChannelShieldName', [TKindVR.vrLO], 'Channel Shield Name' );
     Add( $02B8, 'ChannelShieldNominalThickness', [TKindVR.vrDS], 'Channel Shield Nominal Thickness' );
     Add( $02BA, 'ChannelShieldNominalTransmission', [TKindVR.vrDS], 'Channel Shield Nominal Transmission' );
     Add( $02C8, 'FinalCumulativeTimeWeight', [TKindVR.vrDS], 'Final Cumulative Time Weight' );
     Add( $02D0, 'BrachyControlPointSequence', [TKindVR.vrSQ], 'Brachy Control Point Sequence' );
     Add( $02D2, 'ControlPointRelativePosition', [TKindVR.vrDS], 'Control Point Relative Position' );
     Add( $02D4, 'ControlPoint3DPosition', [TKindVR.vrDS], 'Control Point 3D Position' );
     Add( $02D6, 'CumulativeTimeWeight', [TKindVR.vrDS], 'Cumulative Time Weight' );
     Add( $02E0, 'CompensatorDivergence', [TKindVR.vrCS], 'Compensator Divergence' );
     Add( $02E1, 'CompensatorMountingPosition', [TKindVR.vrCS], 'Compensator Mounting Position' );
     Add( $02E2, 'SourceToCompensatorDistance', [TKindVR.vrDS], 'Source to Compensator Distance' );
     Add( $02E3, 'TotalCompensatorTrayWaterEquivalentThickness', [TKindVR.vrFL], 'Total Compensator Tray Water-Equivalent Thickness' );
     Add( $02E4, 'IsocenterToCompensatorTrayDistance', [TKindVR.vrFL], 'Isocenter to Compensator Tray Distance' );
     Add( $02E5, 'CompensatorColumnOffset', [TKindVR.vrFL], 'Compensator Column Offset' );
     Add( $02E6, 'IsocenterToCompensatorDistances', [TKindVR.vrFL], 'Isocenter to Compensator Distances' );
     Add( $02E7, 'CompensatorRelativeStoppingPowerRatio', [TKindVR.vrFL], 'Compensator Relative Stopping Power Ratio' );
     Add( $02E8, 'CompensatorMillingToolDiameter', [TKindVR.vrFL], 'Compensator Milling Tool Diameter' );
     Add( $02EA, 'IonRangeCompensatorSequence', [TKindVR.vrSQ], 'Ion Range Compensator Sequence' );
     Add( $02EB, 'CompensatorDescription', [TKindVR.vrLT], 'Compensator Description' );
     Add( $0302, 'RadiationMassNumber', [TKindVR.vrIS], 'Radiation Mass Number' );
     Add( $0304, 'RadiationAtomicNumber', [TKindVR.vrIS], 'Radiation Atomic Number' );
     Add( $0306, 'RadiationChargeState', [TKindVR.vrSS], 'Radiation Charge State' );
     Add( $0308, 'ScanMode', [TKindVR.vrCS], 'Scan Mode' );
     Add( $0309, 'ModulatedScanModeType', [TKindVR.vrCS], 'Modulated Scan Mode Type' );
     Add( $030A, 'VirtualSourceAxisDistances', [TKindVR.vrFL], 'Virtual Source-Axis Distances' );
     Add( $030C, 'SnoutSequence', [TKindVR.vrSQ], 'Snout Sequence' );
     Add( $030D, 'SnoutPosition', [TKindVR.vrFL], 'Snout Position' );
     Add( $030F, 'SnoutID', [TKindVR.vrSH], 'Snout ID' );
     Add( $0312, 'NumberOfRangeShifters', [TKindVR.vrIS], 'Number of Range Shifters' );
     Add( $0314, 'RangeShifterSequence', [TKindVR.vrSQ], 'Range Shifter Sequence' );
     Add( $0316, 'RangeShifterNumber', [TKindVR.vrIS], 'Range Shifter Number' );
     Add( $0318, 'RangeShifterID', [TKindVR.vrSH], 'Range Shifter ID' );
     Add( $0320, 'RangeShifterType', [TKindVR.vrCS], 'Range Shifter Type' );
     Add( $0322, 'RangeShifterDescription', [TKindVR.vrLO], 'Range Shifter Description' );
     Add( $0330, 'NumberOfLateralSpreadingDevices', [TKindVR.vrIS], 'Number of Lateral Spreading Devices' );
     Add( $0332, 'LateralSpreadingDeviceSequence', [TKindVR.vrSQ], 'Lateral Spreading Device Sequence' );
     Add( $0334, 'LateralSpreadingDeviceNumber', [TKindVR.vrIS], 'Lateral Spreading Device Number' );
     Add( $0336, 'LateralSpreadingDeviceID', [TKindVR.vrSH], 'Lateral Spreading Device ID' );
     Add( $0338, 'LateralSpreadingDeviceType', [TKindVR.vrCS], 'Lateral Spreading Device Type' );
     Add( $033A, 'LateralSpreadingDeviceDescription', [TKindVR.vrLO], 'Lateral Spreading Device Description' );
     Add( $033C, 'LateralSpreadingDeviceWaterEquivalentThickness', [TKindVR.vrFL], 'Lateral Spreading Device Water Equivalent Thickness' );
     Add( $0340, 'NumberOfRangeModulators', [TKindVR.vrIS], 'Number of Range Modulators' );
     Add( $0342, 'RangeModulatorSequence', [TKindVR.vrSQ], 'Range Modulator Sequence' );
     Add( $0344, 'RangeModulatorNumber', [TKindVR.vrIS], 'Range Modulator Number' );
     Add( $0346, 'RangeModulatorID', [TKindVR.vrSH], 'Range Modulator ID' );
     Add( $0348, 'RangeModulatorType', [TKindVR.vrCS], 'Range Modulator Type' );
     Add( $034A, 'RangeModulatorDescription', [TKindVR.vrLO], 'Range Modulator Description' );
     Add( $034C, 'BeamCurrentModulationID', [TKindVR.vrSH], 'Beam Current Modulation ID' );
     Add( $0350, 'PatientSupportType', [TKindVR.vrCS], 'Patient Support Type' );
     Add( $0352, 'PatientSupportID', [TKindVR.vrSH], 'Patient Support ID' );
     Add( $0354, 'PatientSupportAccessoryCode', [TKindVR.vrLO], 'Patient Support Accessory Code' );
     Add( $0355, 'TrayAccessoryCode', [TKindVR.vrLO], 'Tray Accessory Code' );
     Add( $0356, 'FixationLightAzimuthalAngle', [TKindVR.vrFL], 'Fixation Light Azimuthal Angle' );
     Add( $0358, 'FixationLightPolarAngle', [TKindVR.vrFL], 'Fixation Light Polar Angle' );
     Add( $035A, 'MetersetRate', [TKindVR.vrFL], 'Meterset Rate' );
     Add( $0360, 'RangeShifterSettingsSequence', [TKindVR.vrSQ], 'Range Shifter Settings Sequence' );
     Add( $0362, 'RangeShifterSetting', [TKindVR.vrLO], 'Range Shifter Setting' );
     Add( $0364, 'IsocenterToRangeShifterDistance', [TKindVR.vrFL], 'Isocenter to Range Shifter Distance' );
     Add( $0366, 'RangeShifterWaterEquivalentThickness', [TKindVR.vrFL], 'Range Shifter Water Equivalent Thickness' );
     Add( $0370, 'LateralSpreadingDeviceSettingsSequence', [TKindVR.vrSQ], 'Lateral Spreading Device Settings Sequence' );
     Add( $0372, 'LateralSpreadingDeviceSetting', [TKindVR.vrLO], 'Lateral Spreading Device Setting' );
     Add( $0374, 'IsocenterToLateralSpreadingDeviceDistance', [TKindVR.vrFL], 'Isocenter to Lateral Spreading Device Distance' );
     Add( $0380, 'RangeModulatorSettingsSequence', [TKindVR.vrSQ], 'Range Modulator Settings Sequence' );
     Add( $0382, 'RangeModulatorGatingStartValue', [TKindVR.vrFL], 'Range Modulator Gating Start Value' );
     Add( $0384, 'RangeModulatorGatingStopValue', [TKindVR.vrFL], 'Range Modulator Gating Stop Value' );
     Add( $0386, 'RangeModulatorGatingStartWaterEquivalentThickness', [TKindVR.vrFL], 'Range Modulator Gating Start Water Equivalent Thickness' );
     Add( $0388, 'RangeModulatorGatingStopWaterEquivalentThickness', [TKindVR.vrFL], 'Range Modulator Gating Stop Water Equivalent Thickness' );
     Add( $038A, 'IsocenterToRangeModulatorDistance', [TKindVR.vrFL], 'Isocenter to Range Modulator Distance' );
     Add( $038F, 'ScanSpotTimeOffset', [TKindVR.vrFL], 'Scan Spot Time Offset' );
     Add( $0390, 'ScanSpotTuneID', [TKindVR.vrSH], 'Scan Spot Tune ID' );
     Add( $0391, 'ScanSpotPrescribedIndices', [TKindVR.vrIS], 'Scan Spot Prescribed Indices' );
     Add( $0392, 'NumberOfScanSpotPositions', [TKindVR.vrIS], 'Number of Scan Spot Positions' );
     Add( $0393, 'ScanSpotReordered', [TKindVR.vrCS], 'Scan Spot Reordered' );
     Add( $0394, 'ScanSpotPositionMap', [TKindVR.vrFL], 'Scan Spot Position Map' );
     Add( $0395, 'ScanSpotReorderingAllowed', [TKindVR.vrCS], 'Scan Spot Reordering Allowed' );
     Add( $0396, 'ScanSpotMetersetWeights', [TKindVR.vrFL], 'Scan Spot Meterset Weights' );
     Add( $0398, 'ScanningSpotSize', [TKindVR.vrFL], 'Scanning Spot Size' );
     Add( $039A, 'NumberOfPaintings', [TKindVR.vrIS], 'Number of Paintings' );
     Add( $03A0, 'IonToleranceTableSequence', [TKindVR.vrSQ], 'Ion Tolerance Table Sequence' );
     Add( $03A2, 'IonBeamSequence', [TKindVR.vrSQ], 'Ion Beam Sequence' );
     Add( $03A4, 'IonBeamLimitingDeviceSequence', [TKindVR.vrSQ], 'Ion Beam Limiting Device Sequence' );
     Add( $03A6, 'IonBlockSequence', [TKindVR.vrSQ], 'Ion Block Sequence' );
     Add( $03A8, 'IonControlPointSequence', [TKindVR.vrSQ], 'Ion Control Point Sequence' );
     Add( $03AA, 'IonWedgeSequence', [TKindVR.vrSQ], 'Ion Wedge Sequence' );
     Add( $03AC, 'IonWedgePositionSequence', [TKindVR.vrSQ], 'Ion Wedge Position Sequence' );
     Add( $0401, 'ReferencedSetupImageSequence', [TKindVR.vrSQ], 'Referenced Setup Image Sequence' );
     Add( $0402, 'SetupImageComment', [TKindVR.vrST], 'Setup Image Comment' );
     Add( $0410, 'MotionSynchronizationSequence', [TKindVR.vrSQ], 'Motion Synchronization Sequence' );
     Add( $0412, 'ControlPointOrientation', [TKindVR.vrFL], 'Control Point Orientation' );
     Add( $0420, 'GeneralAccessorySequence', [TKindVR.vrSQ], 'General Accessory Sequence' );
     Add( $0421, 'GeneralAccessoryID', [TKindVR.vrSH], 'General Accessory ID' );
     Add( $0422, 'GeneralAccessoryDescription', [TKindVR.vrST], 'General Accessory Description' );
     Add( $0423, 'GeneralAccessoryType', [TKindVR.vrCS], 'General Accessory Type' );
     Add( $0424, 'GeneralAccessoryNumber', [TKindVR.vrIS], 'General Accessory Number' );
     Add( $0425, 'SourceToGeneralAccessoryDistance', [TKindVR.vrFL], 'Source to General Accessory Distance' );
     Add( $0431, 'ApplicatorGeometrySequence', [TKindVR.vrSQ], 'Applicator Geometry Sequence' );
     Add( $0432, 'ApplicatorApertureShape', [TKindVR.vrCS], 'Applicator Aperture Shape' );
     Add( $0433, 'ApplicatorOpening', [TKindVR.vrFL], 'Applicator Opening' );
     Add( $0434, 'ApplicatorOpeningX', [TKindVR.vrFL], 'Applicator Opening X' );
     Add( $0435, 'ApplicatorOpeningY', [TKindVR.vrFL], 'Applicator Opening Y' );
     Add( $0436, 'SourceToApplicatorMountingPositionDistance', [TKindVR.vrFL], 'Source to Applicator Mounting Position Distance' );
     Add( $0440, 'NumberOfBlockSlabItems', [TKindVR.vrIS], 'Number of Block Slab Items' );
     Add( $0441, 'BlockSlabSequence', [TKindVR.vrSQ], 'Block Slab Sequence' );
     Add( $0442, 'BlockSlabThickness', [TKindVR.vrDS], 'Block Slab Thickness' );
     Add( $0443, 'BlockSlabNumber', [TKindVR.vrUS], 'Block Slab Number' );
     Add( $0450, 'DeviceMotionControlSequence', [TKindVR.vrSQ], 'Device Motion Control Sequence' );
     Add( $0451, 'DeviceMotionExecutionMode', [TKindVR.vrCS], 'Device Motion Execution Mode' );
     Add( $0452, 'DeviceMotionObservationMode', [TKindVR.vrCS], 'Device Motion Observation Mode' );
     Add( $0453, 'DeviceMotionParameterCodeSequence', [TKindVR.vrSQ], 'Device Motion Parameter Code Sequence' );
     Add( $0501, 'DistalDepthFraction', [TKindVR.vrFL], 'Distal Depth Fraction' );
     Add( $0502, 'DistalDepth', [TKindVR.vrFL], 'Distal Depth' );
     Add( $0503, 'NominalRangeModulationFractions', [TKindVR.vrFL], 'Nominal Range Modulation Fractions' );
     Add( $0504, 'NominalRangeModulatedRegionDepths', [TKindVR.vrFL], 'Nominal Range Modulated Region Depths' );
     Add( $0505, 'DepthDoseParametersSequence', [TKindVR.vrSQ], 'Depth Dose Parameters Sequence' );
     Add( $0506, 'DeliveredDepthDoseParametersSequence', [TKindVR.vrSQ], 'Delivered Depth Dose Parameters Sequence' );
     Add( $0507, 'DeliveredDistalDepthFraction', [TKindVR.vrFL], 'Delivered Distal Depth Fraction' );
     Add( $0508, 'DeliveredDistalDepth', [TKindVR.vrFL], 'Delivered Distal Depth' );
     Add( $0509, 'DeliveredNominalRangeModulationFractions', [TKindVR.vrFL], 'Delivered Nominal Range Modulation Fractions' );
     Add( $0510, 'DeliveredNominalRangeModulatedRegionDepths', [TKindVR.vrFL], 'Delivered Nominal Range Modulated Region Depths' );
     Add( $0511, 'DeliveredReferenceDoseDefinition', [TKindVR.vrCS], 'Delivered Reference Dose Definition' );
     Add( $0512, 'ReferenceDoseDefinition', [TKindVR.vrCS], 'Reference Dose Definition' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
