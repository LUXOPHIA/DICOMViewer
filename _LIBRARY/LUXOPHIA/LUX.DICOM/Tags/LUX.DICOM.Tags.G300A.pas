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
       constructor Create;
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

constructor TdcmGrup300A.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0002, 'RTPlanLabel', [TTypeVR.vrSH], 'RT Plan Label' );
     Add( $0003, 'RTPlanName', [TTypeVR.vrLO], 'RT Plan Name' );
     Add( $0004, 'RTPlanDescription', [TTypeVR.vrST], 'RT Plan Description' );
     Add( $0006, 'RTPlanDate', [TTypeVR.vrDA], 'RT Plan Date' );
     Add( $0007, 'RTPlanTime', [TTypeVR.vrTM], 'RT Plan Time' );
     Add( $0009, 'TreatmentProtocols', [TTypeVR.vrLO], 'Treatment Protocols' );
     Add( $000A, 'PlanIntent', [TTypeVR.vrCS], 'Plan Intent' );
     Add( $000B, 'TreatmentSites', [TTypeVR.vrLO], 'Treatment Sites' );
     Add( $000C, 'RTPlanGeometry', [TTypeVR.vrCS], 'RT Plan Geometry' );
     Add( $000E, 'PrescriptionDescription', [TTypeVR.vrST], 'Prescription Description' );
     Add( $0010, 'DoseReferenceSequence', [TTypeVR.vrSQ], 'Dose Reference Sequence' );
     Add( $0012, 'DoseReferenceNumber', [TTypeVR.vrIS], 'Dose Reference Number' );
     Add( $0013, 'DoseReferenceUID', [TTypeVR.vrUI], 'Dose Reference UID' );
     Add( $0014, 'DoseReferenceStructureType', [TTypeVR.vrCS], 'Dose Reference Structure Type' );
     Add( $0015, 'NominalBeamEnergyUnit', [TTypeVR.vrCS], 'Nominal Beam Energy Unit' );
     Add( $0016, 'DoseReferenceDescription', [TTypeVR.vrLO], 'Dose Reference Description' );
     Add( $0018, 'DoseReferencePointCoordinates', [TTypeVR.vrDS], 'Dose Reference Point Coordinates' );
     Add( $001A, 'NominalPriorDose', [TTypeVR.vrDS], 'Nominal Prior Dose' );
     Add( $0020, 'DoseReferenceType', [TTypeVR.vrCS], 'Dose Reference Type' );
     Add( $0021, 'ConstraintWeight', [TTypeVR.vrDS], 'Constraint Weight' );
     Add( $0022, 'DeliveryWarningDose', [TTypeVR.vrDS], 'Delivery Warning Dose' );
     Add( $0023, 'DeliveryMaximumDose', [TTypeVR.vrDS], 'Delivery Maximum Dose' );
     Add( $0025, 'TargetMinimumDose', [TTypeVR.vrDS], 'Target Minimum Dose' );
     Add( $0026, 'TargetPrescriptionDose', [TTypeVR.vrDS], 'Target Prescription Dose' );
     Add( $0027, 'TargetMaximumDose', [TTypeVR.vrDS], 'Target Maximum Dose' );
     Add( $0028, 'TargetUnderdoseVolumeFraction', [TTypeVR.vrDS], 'Target Underdose Volume Fraction' );
     Add( $002A, 'OrganAtRiskFullVolumeDose', [TTypeVR.vrDS], 'Organ at Risk Full-volume Dose' );
     Add( $002B, 'OrganAtRiskLimitDose', [TTypeVR.vrDS], 'Organ at Risk Limit Dose' );
     Add( $002C, 'OrganAtRiskMaximumDose', [TTypeVR.vrDS], 'Organ at Risk Maximum Dose' );
     Add( $002D, 'OrganAtRiskOverdoseVolumeFraction', [TTypeVR.vrDS], 'Organ at Risk Overdose Volume Fraction' );
     Add( $0040, 'ToleranceTableSequence', [TTypeVR.vrSQ], 'Tolerance Table Sequence' );
     Add( $0042, 'ToleranceTableNumber', [TTypeVR.vrIS], 'Tolerance Table Number' );
     Add( $0043, 'ToleranceTableLabel', [TTypeVR.vrSH], 'Tolerance Table Label' );
     Add( $0044, 'GantryAngleTolerance', [TTypeVR.vrDS], 'Gantry Angle Tolerance' );
     Add( $0046, 'BeamLimitingDeviceAngleTolerance', [TTypeVR.vrDS], 'Beam Limiting Device Angle Tolerance' );
     Add( $0048, 'BeamLimitingDeviceToleranceSequence', [TTypeVR.vrSQ], 'Beam Limiting Device Tolerance Sequence' );
     Add( $004A, 'BeamLimitingDevicePositionTolerance', [TTypeVR.vrDS], 'Beam Limiting Device Position Tolerance' );
     Add( $004B, 'SnoutPositionTolerance', [TTypeVR.vrFL], 'Snout Position Tolerance' );
     Add( $004C, 'PatientSupportAngleTolerance', [TTypeVR.vrDS], 'Patient Support Angle Tolerance' );
     Add( $004E, 'TableTopEccentricAngleTolerance', [TTypeVR.vrDS], 'Table Top Eccentric Angle Tolerance' );
     Add( $004F, 'TableTopPitchAngleTolerance', [TTypeVR.vrFL], 'Table Top Pitch Angle Tolerance' );
     Add( $0050, 'TableTopRollAngleTolerance', [TTypeVR.vrFL], 'Table Top Roll Angle Tolerance' );
     Add( $0051, 'TableTopVerticalPositionTolerance', [TTypeVR.vrDS], 'Table Top Vertical Position Tolerance' );
     Add( $0052, 'TableTopLongitudinalPositionTolerance', [TTypeVR.vrDS], 'Table Top Longitudinal Position Tolerance' );
     Add( $0053, 'TableTopLateralPositionTolerance', [TTypeVR.vrDS], 'Table Top Lateral Position Tolerance' );
     Add( $0055, 'RTPlanRelationship', [TTypeVR.vrCS], 'RT Plan Relationship' );
     Add( $0070, 'FractionGroupSequence', [TTypeVR.vrSQ], 'Fraction Group Sequence' );
     Add( $0071, 'FractionGroupNumber', [TTypeVR.vrIS], 'Fraction Group Number' );
     Add( $0072, 'FractionGroupDescription', [TTypeVR.vrLO], 'Fraction Group Description' );
     Add( $0078, 'NumberOfFractionsPlanned', [TTypeVR.vrIS], 'Number of Fractions Planned' );
     Add( $0079, 'NumberOfFractionPatternDigitsPerDay', [TTypeVR.vrIS], 'Number of Fraction Pattern Digits Per Day' );
     Add( $007A, 'RepeatFractionCycleLength', [TTypeVR.vrIS], 'Repeat Fraction Cycle Length' );
     Add( $007B, 'FractionPattern', [TTypeVR.vrLT], 'Fraction Pattern' );
     Add( $0080, 'NumberOfBeams', [TTypeVR.vrIS], 'Number of Beams' );
     Add( $0082, 'BeamDoseSpecificationPoint', [TTypeVR.vrDS], 'Beam Dose Specification Point' );
     Add( $0084, 'BeamDose', [TTypeVR.vrDS], 'Beam Dose' );
     Add( $0086, 'BeamMeterset', [TTypeVR.vrDS], 'Beam Meterset' );
     Add( $0088, 'BeamDosePointDepth', [TTypeVR.vrFL], 'Beam Dose Point Depth' );
     Add( $0089, 'BeamDosePointEquivalentDepth', [TTypeVR.vrFL], 'Beam Dose Point Equivalent Depth' );
     Add( $008A, 'BeamDosePointSSD', [TTypeVR.vrFL], 'Beam Dose Point SSD' );
     Add( $008B, 'BeamDoseMeaning', [TTypeVR.vrCS], 'Beam Dose Meaning' );
     Add( $008C, 'BeamDoseVerificationControlPointSequence', [TTypeVR.vrSQ], 'Beam Dose Verification Control Point Sequence' );
     Add( $008D, 'AverageBeamDosePointDepth', [TTypeVR.vrFL], 'Average Beam Dose Point Depth' );
     Add( $008E, 'AverageBeamDosePointEquivalentDepth', [TTypeVR.vrFL], 'Average Beam Dose Point Equivalent Depth' );
     Add( $008F, 'AverageBeamDosePointSSD', [TTypeVR.vrFL], 'Average Beam Dose Point SSD' );
     Add( $0090, 'BeamDoseType', [TTypeVR.vrCS], 'Beam Dose Type' );
     Add( $0091, 'AlternateBeamDose', [TTypeVR.vrDS], 'Alternate Beam Dose' );
     Add( $0092, 'AlternateBeamDoseType', [TTypeVR.vrCS], 'Alternate Beam Dose Type' );
     Add( $00A0, 'NumberOfBrachyApplicationSetups', [TTypeVR.vrIS], 'Number of Brachy Application Setups' );
     Add( $00A2, 'BrachyApplicationSetupDoseSpecificationPoint', [TTypeVR.vrDS], 'Brachy Application Setup Dose Specification Point' );
     Add( $00A4, 'BrachyApplicationSetupDose', [TTypeVR.vrDS], 'Brachy Application Setup Dose' );
     Add( $00B0, 'BeamSequence', [TTypeVR.vrSQ], 'Beam Sequence' );
     Add( $00B2, 'TreatmentMachineName', [TTypeVR.vrSH], 'Treatment Machine Name' );
     Add( $00B3, 'PrimaryDosimeterUnit', [TTypeVR.vrCS], 'Primary Dosimeter Unit' );
     Add( $00B4, 'SourceAxisDistance', [TTypeVR.vrDS], 'Source-Axis Distance' );
     Add( $00B6, 'BeamLimitingDeviceSequence', [TTypeVR.vrSQ], 'Beam Limiting Device Sequence' );
     Add( $00B8, 'RTBeamLimitingDeviceType', [TTypeVR.vrCS], 'RT Beam Limiting Device Type' );
     Add( $00BA, 'SourceToBeamLimitingDeviceDistance', [TTypeVR.vrDS], 'Source to Beam Limiting Device Distance' );
     Add( $00BB, 'IsocenterToBeamLimitingDeviceDistance', [TTypeVR.vrFL], 'Isocenter to Beam Limiting Device Distance' );
     Add( $00BC, 'NumberOfLeafJawPairs', [TTypeVR.vrIS], 'Number of Leaf/Jaw Pairs' );
     Add( $00BE, 'LeafPositionBoundaries', [TTypeVR.vrDS], 'Leaf Position Boundaries' );
     Add( $00C0, 'BeamNumber', [TTypeVR.vrIS], 'Beam Number' );
     Add( $00C2, 'BeamName', [TTypeVR.vrLO], 'Beam Name' );
     Add( $00C3, 'BeamDescription', [TTypeVR.vrST], 'Beam Description' );
     Add( $00C4, 'BeamType', [TTypeVR.vrCS], 'Beam Type' );
     Add( $00C5, 'BeamDeliveryDurationLimit', [TTypeVR.vrFD], 'Beam Delivery Duration Limit' );
     Add( $00C6, 'RadiationType', [TTypeVR.vrCS], 'Radiation Type' );
     Add( $00C7, 'HighDoseTechniqueType', [TTypeVR.vrCS], 'High-Dose Technique Type' );
     Add( $00C8, 'ReferenceImageNumber', [TTypeVR.vrIS], 'Reference Image Number' );
     Add( $00CA, 'PlannedVerificationImageSequence', [TTypeVR.vrSQ], 'Planned Verification Image Sequence' );
     Add( $00CC, 'ImagingDeviceSpecificAcquisitionParameters', [TTypeVR.vrLO], 'Imaging Device-Specific Acquisition Parameters' );
     Add( $00CE, 'TreatmentDeliveryType', [TTypeVR.vrCS], 'Treatment Delivery Type' );
     Add( $00D0, 'NumberOfWedges', [TTypeVR.vrIS], 'Number of Wedges' );
     Add( $00D1, 'WedgeSequence', [TTypeVR.vrSQ], 'Wedge Sequence' );
     Add( $00D2, 'WedgeNumber', [TTypeVR.vrIS], 'Wedge Number' );
     Add( $00D3, 'WedgeType', [TTypeVR.vrCS], 'Wedge Type' );
     Add( $00D4, 'WedgeID', [TTypeVR.vrSH], 'Wedge ID' );
     Add( $00D5, 'WedgeAngle', [TTypeVR.vrIS], 'Wedge Angle' );
     Add( $00D6, 'WedgeFactor', [TTypeVR.vrDS], 'Wedge Factor' );
     Add( $00D7, 'TotalWedgeTrayWaterEquivalentThickness', [TTypeVR.vrFL], 'Total Wedge Tray Water-Equivalent Thickness' );
     Add( $00D8, 'WedgeOrientation', [TTypeVR.vrDS], 'Wedge Orientation' );
     Add( $00D9, 'IsocenterToWedgeTrayDistance', [TTypeVR.vrFL], 'Isocenter to Wedge Tray Distance' );
     Add( $00DA, 'SourceToWedgeTrayDistance', [TTypeVR.vrDS], 'Source to Wedge Tray Distance' );
     Add( $00DB, 'WedgeThinEdgePosition', [TTypeVR.vrFL], 'Wedge Thin Edge Position' );
     Add( $00DC, 'BolusID', [TTypeVR.vrSH], 'Bolus ID' );
     Add( $00DD, 'BolusDescription', [TTypeVR.vrST], 'Bolus Description' );
     Add( $00DE, 'EffectiveWedgeAngle', [TTypeVR.vrDS], 'Effective Wedge Angle' );
     Add( $00E0, 'NumberOfCompensators', [TTypeVR.vrIS], 'Number of Compensators' );
     Add( $00E1, 'MaterialID', [TTypeVR.vrSH], 'Material ID' );
     Add( $00E2, 'TotalCompensatorTrayFactor', [TTypeVR.vrDS], 'Total Compensator Tray Factor' );
     Add( $00E3, 'CompensatorSequence', [TTypeVR.vrSQ], 'Compensator Sequence' );
     Add( $00E4, 'CompensatorNumber', [TTypeVR.vrIS], 'Compensator Number' );
     Add( $00E5, 'CompensatorID', [TTypeVR.vrSH], 'Compensator ID' );
     Add( $00E6, 'SourceToCompensatorTrayDistance', [TTypeVR.vrDS], 'Source to Compensator Tray Distance' );
     Add( $00E7, 'CompensatorRows', [TTypeVR.vrIS], 'Compensator Rows' );
     Add( $00E8, 'CompensatorColumns', [TTypeVR.vrIS], 'Compensator Columns' );
     Add( $00E9, 'CompensatorPixelSpacing', [TTypeVR.vrDS], 'Compensator Pixel Spacing' );
     Add( $00EA, 'CompensatorPosition', [TTypeVR.vrDS], 'Compensator Position' );
     Add( $00EB, 'CompensatorTransmissionData', [TTypeVR.vrDS], 'Compensator Transmission Data' );
     Add( $00EC, 'CompensatorThicknessData', [TTypeVR.vrDS], 'Compensator Thickness Data' );
     Add( $00ED, 'NumberOfBoli', [TTypeVR.vrIS], 'Number of Boli' );
     Add( $00EE, 'CompensatorType', [TTypeVR.vrCS], 'Compensator Type' );
     Add( $00EF, 'CompensatorTrayID', [TTypeVR.vrSH], 'Compensator Tray ID' );
     Add( $00F0, 'NumberOfBlocks', [TTypeVR.vrIS], 'Number of Blocks' );
     Add( $00F2, 'TotalBlockTrayFactor', [TTypeVR.vrDS], 'Total Block Tray Factor' );
     Add( $00F3, 'TotalBlockTrayWaterEquivalentThickness', [TTypeVR.vrFL], 'Total Block Tray Water-Equivalent Thickness' );
     Add( $00F4, 'BlockSequence', [TTypeVR.vrSQ], 'Block Sequence' );
     Add( $00F5, 'BlockTrayID', [TTypeVR.vrSH], 'Block Tray ID' );
     Add( $00F6, 'SourceToBlockTrayDistance', [TTypeVR.vrDS], 'Source to Block Tray Distance' );
     Add( $00F7, 'IsocenterToBlockTrayDistance', [TTypeVR.vrFL], 'Isocenter to Block Tray Distance' );
     Add( $00F8, 'BlockType', [TTypeVR.vrCS], 'Block Type' );
     Add( $00F9, 'AccessoryCode', [TTypeVR.vrLO], 'Accessory Code' );
     Add( $00FA, 'BlockDivergence', [TTypeVR.vrCS], 'Block Divergence' );
     Add( $00FB, 'BlockMountingPosition', [TTypeVR.vrCS], 'Block Mounting Position' );
     Add( $00FC, 'BlockNumber', [TTypeVR.vrIS], 'Block Number' );
     Add( $00FE, 'BlockName', [TTypeVR.vrLO], 'Block Name' );
     Add( $0100, 'BlockThickness', [TTypeVR.vrDS], 'Block Thickness' );
     Add( $0102, 'BlockTransmission', [TTypeVR.vrDS], 'Block Transmission' );
     Add( $0104, 'BlockNumberOfPoints', [TTypeVR.vrIS], 'Block Number of Points' );
     Add( $0106, 'BlockData', [TTypeVR.vrDS], 'Block Data' );
     Add( $0107, 'ApplicatorSequence', [TTypeVR.vrSQ], 'Applicator Sequence' );
     Add( $0108, 'ApplicatorID', [TTypeVR.vrSH], 'Applicator ID' );
     Add( $0109, 'ApplicatorType', [TTypeVR.vrCS], 'Applicator Type' );
     Add( $010A, 'ApplicatorDescription', [TTypeVR.vrLO], 'Applicator Description' );
     Add( $010C, 'CumulativeDoseReferenceCoefficient', [TTypeVR.vrDS], 'Cumulative Dose Reference Coefficient' );
     Add( $010E, 'FinalCumulativeMetersetWeight', [TTypeVR.vrDS], 'Final Cumulative Meterset Weight' );
     Add( $0110, 'NumberOfControlPoints', [TTypeVR.vrIS], 'Number of Control Points' );
     Add( $0111, 'ControlPointSequence', [TTypeVR.vrSQ], 'Control Point Sequence' );
     Add( $0112, 'ControlPointIndex', [TTypeVR.vrIS], 'Control Point Index' );
     Add( $0114, 'NominalBeamEnergy', [TTypeVR.vrDS], 'Nominal Beam Energy' );
     Add( $0115, 'DoseRateSet', [TTypeVR.vrDS], 'Dose Rate Set' );
     Add( $0116, 'WedgePositionSequence', [TTypeVR.vrSQ], 'Wedge Position Sequence' );
     Add( $0118, 'WedgePosition', [TTypeVR.vrCS], 'Wedge Position' );
     Add( $011A, 'BeamLimitingDevicePositionSequence', [TTypeVR.vrSQ], 'Beam Limiting Device Position Sequence' );
     Add( $011C, 'LeafJawPositions', [TTypeVR.vrDS], 'Leaf/Jaw Positions' );
     Add( $011E, 'GantryAngle', [TTypeVR.vrDS], 'Gantry Angle' );
     Add( $011F, 'GantryRotationDirection', [TTypeVR.vrCS], 'Gantry Rotation Direction' );
     Add( $0120, 'BeamLimitingDeviceAngle', [TTypeVR.vrDS], 'Beam Limiting Device Angle' );
     Add( $0121, 'BeamLimitingDeviceRotationDirection', [TTypeVR.vrCS], 'Beam Limiting Device Rotation Direction' );
     Add( $0122, 'PatientSupportAngle', [TTypeVR.vrDS], 'Patient Support Angle' );
     Add( $0123, 'PatientSupportRotationDirection', [TTypeVR.vrCS], 'Patient Support Rotation Direction' );
     Add( $0124, 'TableTopEccentricAxisDistance', [TTypeVR.vrDS], 'Table Top Eccentric Axis Distance' );
     Add( $0125, 'TableTopEccentricAngle', [TTypeVR.vrDS], 'Table Top Eccentric Angle' );
     Add( $0126, 'TableTopEccentricRotationDirection', [TTypeVR.vrCS], 'Table Top Eccentric Rotation Direction' );
     Add( $0128, 'TableTopVerticalPosition', [TTypeVR.vrDS], 'Table Top Vertical Position' );
     Add( $0129, 'TableTopLongitudinalPosition', [TTypeVR.vrDS], 'Table Top Longitudinal Position' );
     Add( $012A, 'TableTopLateralPosition', [TTypeVR.vrDS], 'Table Top Lateral Position' );
     Add( $012C, 'IsocenterPosition', [TTypeVR.vrDS], 'Isocenter Position' );
     Add( $012E, 'SurfaceEntryPoint', [TTypeVR.vrDS], 'Surface Entry Point' );
     Add( $0130, 'SourceToSurfaceDistance', [TTypeVR.vrDS], 'Source to Surface Distance' );
     Add( $0131, 'AverageBeamDosePointSourceToExternalContourDistance', [TTypeVR.vrFL], 'Average Beam Dose Point Source to External Contour Distance' );
     Add( $0132, 'SourceToExternalContourDistance', [TTypeVR.vrFL], 'Source to External Contour Distance' );
     Add( $0133, 'ExternalContourEntryPoint', [TTypeVR.vrFL], 'External Contour Entry Point' );
     Add( $0134, 'CumulativeMetersetWeight', [TTypeVR.vrDS], 'Cumulative Meterset Weight' );
     Add( $0140, 'TableTopPitchAngle', [TTypeVR.vrFL], 'Table Top Pitch Angle' );
     Add( $0142, 'TableTopPitchRotationDirection', [TTypeVR.vrCS], 'Table Top Pitch Rotation Direction' );
     Add( $0144, 'TableTopRollAngle', [TTypeVR.vrFL], 'Table Top Roll Angle' );
     Add( $0146, 'TableTopRollRotationDirection', [TTypeVR.vrCS], 'Table Top Roll Rotation Direction' );
     Add( $0148, 'HeadFixationAngle', [TTypeVR.vrFL], 'Head Fixation Angle' );
     Add( $014A, 'GantryPitchAngle', [TTypeVR.vrFL], 'Gantry Pitch Angle' );
     Add( $014C, 'GantryPitchRotationDirection', [TTypeVR.vrCS], 'Gantry Pitch Rotation Direction' );
     Add( $014E, 'GantryPitchAngleTolerance', [TTypeVR.vrFL], 'Gantry Pitch Angle Tolerance' );
     Add( $0150, 'FixationEye', [TTypeVR.vrCS], 'Fixation Eye' );
     Add( $0151, 'ChairHeadFramePosition', [TTypeVR.vrDS], 'Chair Head Frame Position' );
     Add( $0152, 'HeadFixationAngleTolerance', [TTypeVR.vrDS], 'Head Fixation Angle Tolerance' );
     Add( $0153, 'ChairHeadFramePositionTolerance', [TTypeVR.vrDS], 'Chair Head Frame Position Tolerance' );
     Add( $0154, 'FixationLightAzimuthalAngleTolerance', [TTypeVR.vrDS], 'Fixation Light Azimuthal Angle Tolerance' );
     Add( $0155, 'FixationLightPolarAngleTolerance', [TTypeVR.vrDS], 'Fixation Light Polar Angle Tolerance' );
     Add( $0180, 'PatientSetupSequence', [TTypeVR.vrSQ], 'Patient Setup Sequence' );
     Add( $0182, 'PatientSetupNumber', [TTypeVR.vrIS], 'Patient Setup Number' );
     Add( $0183, 'PatientSetupLabel', [TTypeVR.vrLO], 'Patient Setup Label' );
     Add( $0184, 'PatientAdditionalPosition', [TTypeVR.vrLO], 'Patient Additional Position' );
     Add( $0190, 'FixationDeviceSequence', [TTypeVR.vrSQ], 'Fixation Device Sequence' );
     Add( $0192, 'FixationDeviceType', [TTypeVR.vrCS], 'Fixation Device Type' );
     Add( $0194, 'FixationDeviceLabel', [TTypeVR.vrSH], 'Fixation Device Label' );
     Add( $0196, 'FixationDeviceDescription', [TTypeVR.vrST], 'Fixation Device Description' );
     Add( $0198, 'FixationDevicePosition', [TTypeVR.vrSH], 'Fixation Device Position' );
     Add( $0199, 'FixationDevicePitchAngle', [TTypeVR.vrFL], 'Fixation Device Pitch Angle' );
     Add( $019A, 'FixationDeviceRollAngle', [TTypeVR.vrFL], 'Fixation Device Roll Angle' );
     Add( $01A0, 'ShieldingDeviceSequence', [TTypeVR.vrSQ], 'Shielding Device Sequence' );
     Add( $01A2, 'ShieldingDeviceType', [TTypeVR.vrCS], 'Shielding Device Type' );
     Add( $01A4, 'ShieldingDeviceLabel', [TTypeVR.vrSH], 'Shielding Device Label' );
     Add( $01A6, 'ShieldingDeviceDescription', [TTypeVR.vrST], 'Shielding Device Description' );
     Add( $01A8, 'ShieldingDevicePosition', [TTypeVR.vrSH], 'Shielding Device Position' );
     Add( $01B0, 'SetupTechnique', [TTypeVR.vrCS], 'Setup Technique' );
     Add( $01B2, 'SetupTechniqueDescription', [TTypeVR.vrST], 'Setup Technique Description' );
     Add( $01B4, 'SetupDeviceSequence', [TTypeVR.vrSQ], 'Setup Device Sequence' );
     Add( $01B6, 'SetupDeviceType', [TTypeVR.vrCS], 'Setup Device Type' );
     Add( $01B8, 'SetupDeviceLabel', [TTypeVR.vrSH], 'Setup Device Label' );
     Add( $01BA, 'SetupDeviceDescription', [TTypeVR.vrST], 'Setup Device Description' );
     Add( $01BC, 'SetupDeviceParameter', [TTypeVR.vrDS], 'Setup Device Parameter' );
     Add( $01D0, 'SetupReferenceDescription', [TTypeVR.vrST], 'Setup Reference Description' );
     Add( $01D2, 'TableTopVerticalSetupDisplacement', [TTypeVR.vrDS], 'Table Top Vertical Setup Displacement' );
     Add( $01D4, 'TableTopLongitudinalSetupDisplacement', [TTypeVR.vrDS], 'Table Top Longitudinal Setup Displacement' );
     Add( $01D6, 'TableTopLateralSetupDisplacement', [TTypeVR.vrDS], 'Table Top Lateral Setup Displacement' );
     Add( $0200, 'BrachyTreatmentTechnique', [TTypeVR.vrCS], 'Brachy Treatment Technique' );
     Add( $0202, 'BrachyTreatmentType', [TTypeVR.vrCS], 'Brachy Treatment Type' );
     Add( $0206, 'TreatmentMachineSequence', [TTypeVR.vrSQ], 'Treatment Machine Sequence' );
     Add( $0210, 'SourceSequence', [TTypeVR.vrSQ], 'Source Sequence' );
     Add( $0212, 'SourceNumber', [TTypeVR.vrIS], 'Source Number' );
     Add( $0214, 'SourceType', [TTypeVR.vrCS], 'Source Type' );
     Add( $0216, 'SourceManufacturer', [TTypeVR.vrLO], 'Source Manufacturer' );
     Add( $0218, 'ActiveSourceDiameter', [TTypeVR.vrDS], 'Active Source Diameter' );
     Add( $021A, 'ActiveSourceLength', [TTypeVR.vrDS], 'Active Source Length' );
     Add( $021B, 'SourceModelID', [TTypeVR.vrSH], 'Source Model ID' );
     Add( $021C, 'SourceDescription', [TTypeVR.vrLO], 'Source Description' );
     Add( $0222, 'SourceEncapsulationNominalThickness', [TTypeVR.vrDS], 'Source Encapsulation Nominal Thickness' );
     Add( $0224, 'SourceEncapsulationNominalTransmission', [TTypeVR.vrDS], 'Source Encapsulation Nominal Transmission' );
     Add( $0226, 'SourceIsotopeName', [TTypeVR.vrLO], 'Source Isotope Name' );
     Add( $0228, 'SourceIsotopeHalfLife', [TTypeVR.vrDS], 'Source Isotope Half Life' );
     Add( $0229, 'SourceStrengthUnits', [TTypeVR.vrCS], 'Source Strength Units' );
     Add( $022A, 'ReferenceAirKermaRate', [TTypeVR.vrDS], 'Reference Air Kerma Rate' );
     Add( $022B, 'SourceStrength', [TTypeVR.vrDS], 'Source Strength' );
     Add( $022C, 'SourceStrengthReferenceDate', [TTypeVR.vrDA], 'Source Strength Reference Date' );
     Add( $022E, 'SourceStrengthReferenceTime', [TTypeVR.vrTM], 'Source Strength Reference Time' );
     Add( $0230, 'ApplicationSetupSequence', [TTypeVR.vrSQ], 'Application Setup Sequence' );
     Add( $0232, 'ApplicationSetupType', [TTypeVR.vrCS], 'Application Setup Type' );
     Add( $0234, 'ApplicationSetupNumber', [TTypeVR.vrIS], 'Application Setup Number' );
     Add( $0236, 'ApplicationSetupName', [TTypeVR.vrLO], 'Application Setup Name' );
     Add( $0238, 'ApplicationSetupManufacturer', [TTypeVR.vrLO], 'Application Setup Manufacturer' );
     Add( $0240, 'TemplateNumber', [TTypeVR.vrIS], 'Template Number' );
     Add( $0242, 'TemplateType', [TTypeVR.vrSH], 'Template Type' );
     Add( $0244, 'TemplateName', [TTypeVR.vrLO], 'Template Name' );
     Add( $0250, 'TotalReferenceAirKerma', [TTypeVR.vrDS], 'Total Reference Air Kerma' );
     Add( $0260, 'BrachyAccessoryDeviceSequence', [TTypeVR.vrSQ], 'Brachy Accessory Device Sequence' );
     Add( $0262, 'BrachyAccessoryDeviceNumber', [TTypeVR.vrIS], 'Brachy Accessory Device Number' );
     Add( $0263, 'BrachyAccessoryDeviceID', [TTypeVR.vrSH], 'Brachy Accessory Device ID' );
     Add( $0264, 'BrachyAccessoryDeviceType', [TTypeVR.vrCS], 'Brachy Accessory Device Type' );
     Add( $0266, 'BrachyAccessoryDeviceName', [TTypeVR.vrLO], 'Brachy Accessory Device Name' );
     Add( $026A, 'BrachyAccessoryDeviceNominalThickness', [TTypeVR.vrDS], 'Brachy Accessory Device Nominal Thickness' );
     Add( $026C, 'BrachyAccessoryDeviceNominalTransmission', [TTypeVR.vrDS], 'Brachy Accessory Device Nominal Transmission' );
     Add( $0280, 'ChannelSequence', [TTypeVR.vrSQ], 'Channel Sequence' );
     Add( $0282, 'ChannelNumber', [TTypeVR.vrIS], 'Channel Number' );
     Add( $0284, 'ChannelLength', [TTypeVR.vrDS], 'Channel Length' );
     Add( $0286, 'ChannelTotalTime', [TTypeVR.vrDS], 'Channel Total Time' );
     Add( $0288, 'SourceMovementType', [TTypeVR.vrCS], 'Source Movement Type' );
     Add( $028A, 'NumberOfPulses', [TTypeVR.vrIS], 'Number of Pulses' );
     Add( $028C, 'PulseRepetitionInterval', [TTypeVR.vrDS], 'Pulse Repetition Interval' );
     Add( $0290, 'SourceApplicatorNumber', [TTypeVR.vrIS], 'Source Applicator Number' );
     Add( $0291, 'SourceApplicatorID', [TTypeVR.vrSH], 'Source Applicator ID' );
     Add( $0292, 'SourceApplicatorType', [TTypeVR.vrCS], 'Source Applicator Type' );
     Add( $0294, 'SourceApplicatorName', [TTypeVR.vrLO], 'Source Applicator Name' );
     Add( $0296, 'SourceApplicatorLength', [TTypeVR.vrDS], 'Source Applicator Length' );
     Add( $0298, 'SourceApplicatorManufacturer', [TTypeVR.vrLO], 'Source Applicator Manufacturer' );
     Add( $029C, 'SourceApplicatorWallNominalThickness', [TTypeVR.vrDS], 'Source Applicator Wall Nominal Thickness' );
     Add( $029E, 'SourceApplicatorWallNominalTransmission', [TTypeVR.vrDS], 'Source Applicator Wall Nominal Transmission' );
     Add( $02A0, 'SourceApplicatorStepSize', [TTypeVR.vrDS], 'Source Applicator Step Size' );
     Add( $02A2, 'TransferTubeNumber', [TTypeVR.vrIS], 'Transfer Tube Number' );
     Add( $02A4, 'TransferTubeLength', [TTypeVR.vrDS], 'Transfer Tube Length' );
     Add( $02B0, 'ChannelShieldSequence', [TTypeVR.vrSQ], 'Channel Shield Sequence' );
     Add( $02B2, 'ChannelShieldNumber', [TTypeVR.vrIS], 'Channel Shield Number' );
     Add( $02B3, 'ChannelShieldID', [TTypeVR.vrSH], 'Channel Shield ID' );
     Add( $02B4, 'ChannelShieldName', [TTypeVR.vrLO], 'Channel Shield Name' );
     Add( $02B8, 'ChannelShieldNominalThickness', [TTypeVR.vrDS], 'Channel Shield Nominal Thickness' );
     Add( $02BA, 'ChannelShieldNominalTransmission', [TTypeVR.vrDS], 'Channel Shield Nominal Transmission' );
     Add( $02C8, 'FinalCumulativeTimeWeight', [TTypeVR.vrDS], 'Final Cumulative Time Weight' );
     Add( $02D0, 'BrachyControlPointSequence', [TTypeVR.vrSQ], 'Brachy Control Point Sequence' );
     Add( $02D2, 'ControlPointRelativePosition', [TTypeVR.vrDS], 'Control Point Relative Position' );
     Add( $02D4, 'ControlPoint3DPosition', [TTypeVR.vrDS], 'Control Point 3D Position' );
     Add( $02D6, 'CumulativeTimeWeight', [TTypeVR.vrDS], 'Cumulative Time Weight' );
     Add( $02E0, 'CompensatorDivergence', [TTypeVR.vrCS], 'Compensator Divergence' );
     Add( $02E1, 'CompensatorMountingPosition', [TTypeVR.vrCS], 'Compensator Mounting Position' );
     Add( $02E2, 'SourceToCompensatorDistance', [TTypeVR.vrDS], 'Source to Compensator Distance' );
     Add( $02E3, 'TotalCompensatorTrayWaterEquivalentThickness', [TTypeVR.vrFL], 'Total Compensator Tray Water-Equivalent Thickness' );
     Add( $02E4, 'IsocenterToCompensatorTrayDistance', [TTypeVR.vrFL], 'Isocenter to Compensator Tray Distance' );
     Add( $02E5, 'CompensatorColumnOffset', [TTypeVR.vrFL], 'Compensator Column Offset' );
     Add( $02E6, 'IsocenterToCompensatorDistances', [TTypeVR.vrFL], 'Isocenter to Compensator Distances' );
     Add( $02E7, 'CompensatorRelativeStoppingPowerRatio', [TTypeVR.vrFL], 'Compensator Relative Stopping Power Ratio' );
     Add( $02E8, 'CompensatorMillingToolDiameter', [TTypeVR.vrFL], 'Compensator Milling Tool Diameter' );
     Add( $02EA, 'IonRangeCompensatorSequence', [TTypeVR.vrSQ], 'Ion Range Compensator Sequence' );
     Add( $02EB, 'CompensatorDescription', [TTypeVR.vrLT], 'Compensator Description' );
     Add( $0302, 'RadiationMassNumber', [TTypeVR.vrIS], 'Radiation Mass Number' );
     Add( $0304, 'RadiationAtomicNumber', [TTypeVR.vrIS], 'Radiation Atomic Number' );
     Add( $0306, 'RadiationChargeState', [TTypeVR.vrSS], 'Radiation Charge State' );
     Add( $0308, 'ScanMode', [TTypeVR.vrCS], 'Scan Mode' );
     Add( $0309, 'ModulatedScanModeType', [TTypeVR.vrCS], 'Modulated Scan Mode Type' );
     Add( $030A, 'VirtualSourceAxisDistances', [TTypeVR.vrFL], 'Virtual Source-Axis Distances' );
     Add( $030C, 'SnoutSequence', [TTypeVR.vrSQ], 'Snout Sequence' );
     Add( $030D, 'SnoutPosition', [TTypeVR.vrFL], 'Snout Position' );
     Add( $030F, 'SnoutID', [TTypeVR.vrSH], 'Snout ID' );
     Add( $0312, 'NumberOfRangeShifters', [TTypeVR.vrIS], 'Number of Range Shifters' );
     Add( $0314, 'RangeShifterSequence', [TTypeVR.vrSQ], 'Range Shifter Sequence' );
     Add( $0316, 'RangeShifterNumber', [TTypeVR.vrIS], 'Range Shifter Number' );
     Add( $0318, 'RangeShifterID', [TTypeVR.vrSH], 'Range Shifter ID' );
     Add( $0320, 'RangeShifterType', [TTypeVR.vrCS], 'Range Shifter Type' );
     Add( $0322, 'RangeShifterDescription', [TTypeVR.vrLO], 'Range Shifter Description' );
     Add( $0330, 'NumberOfLateralSpreadingDevices', [TTypeVR.vrIS], 'Number of Lateral Spreading Devices' );
     Add( $0332, 'LateralSpreadingDeviceSequence', [TTypeVR.vrSQ], 'Lateral Spreading Device Sequence' );
     Add( $0334, 'LateralSpreadingDeviceNumber', [TTypeVR.vrIS], 'Lateral Spreading Device Number' );
     Add( $0336, 'LateralSpreadingDeviceID', [TTypeVR.vrSH], 'Lateral Spreading Device ID' );
     Add( $0338, 'LateralSpreadingDeviceType', [TTypeVR.vrCS], 'Lateral Spreading Device Type' );
     Add( $033A, 'LateralSpreadingDeviceDescription', [TTypeVR.vrLO], 'Lateral Spreading Device Description' );
     Add( $033C, 'LateralSpreadingDeviceWaterEquivalentThickness', [TTypeVR.vrFL], 'Lateral Spreading Device Water Equivalent Thickness' );
     Add( $0340, 'NumberOfRangeModulators', [TTypeVR.vrIS], 'Number of Range Modulators' );
     Add( $0342, 'RangeModulatorSequence', [TTypeVR.vrSQ], 'Range Modulator Sequence' );
     Add( $0344, 'RangeModulatorNumber', [TTypeVR.vrIS], 'Range Modulator Number' );
     Add( $0346, 'RangeModulatorID', [TTypeVR.vrSH], 'Range Modulator ID' );
     Add( $0348, 'RangeModulatorType', [TTypeVR.vrCS], 'Range Modulator Type' );
     Add( $034A, 'RangeModulatorDescription', [TTypeVR.vrLO], 'Range Modulator Description' );
     Add( $034C, 'BeamCurrentModulationID', [TTypeVR.vrSH], 'Beam Current Modulation ID' );
     Add( $0350, 'PatientSupportType', [TTypeVR.vrCS], 'Patient Support Type' );
     Add( $0352, 'PatientSupportID', [TTypeVR.vrSH], 'Patient Support ID' );
     Add( $0354, 'PatientSupportAccessoryCode', [TTypeVR.vrLO], 'Patient Support Accessory Code' );
     Add( $0355, 'TrayAccessoryCode', [TTypeVR.vrLO], 'Tray Accessory Code' );
     Add( $0356, 'FixationLightAzimuthalAngle', [TTypeVR.vrFL], 'Fixation Light Azimuthal Angle' );
     Add( $0358, 'FixationLightPolarAngle', [TTypeVR.vrFL], 'Fixation Light Polar Angle' );
     Add( $035A, 'MetersetRate', [TTypeVR.vrFL], 'Meterset Rate' );
     Add( $0360, 'RangeShifterSettingsSequence', [TTypeVR.vrSQ], 'Range Shifter Settings Sequence' );
     Add( $0362, 'RangeShifterSetting', [TTypeVR.vrLO], 'Range Shifter Setting' );
     Add( $0364, 'IsocenterToRangeShifterDistance', [TTypeVR.vrFL], 'Isocenter to Range Shifter Distance' );
     Add( $0366, 'RangeShifterWaterEquivalentThickness', [TTypeVR.vrFL], 'Range Shifter Water Equivalent Thickness' );
     Add( $0370, 'LateralSpreadingDeviceSettingsSequence', [TTypeVR.vrSQ], 'Lateral Spreading Device Settings Sequence' );
     Add( $0372, 'LateralSpreadingDeviceSetting', [TTypeVR.vrLO], 'Lateral Spreading Device Setting' );
     Add( $0374, 'IsocenterToLateralSpreadingDeviceDistance', [TTypeVR.vrFL], 'Isocenter to Lateral Spreading Device Distance' );
     Add( $0380, 'RangeModulatorSettingsSequence', [TTypeVR.vrSQ], 'Range Modulator Settings Sequence' );
     Add( $0382, 'RangeModulatorGatingStartValue', [TTypeVR.vrFL], 'Range Modulator Gating Start Value' );
     Add( $0384, 'RangeModulatorGatingStopValue', [TTypeVR.vrFL], 'Range Modulator Gating Stop Value' );
     Add( $0386, 'RangeModulatorGatingStartWaterEquivalentThickness', [TTypeVR.vrFL], 'Range Modulator Gating Start Water Equivalent Thickness' );
     Add( $0388, 'RangeModulatorGatingStopWaterEquivalentThickness', [TTypeVR.vrFL], 'Range Modulator Gating Stop Water Equivalent Thickness' );
     Add( $038A, 'IsocenterToRangeModulatorDistance', [TTypeVR.vrFL], 'Isocenter to Range Modulator Distance' );
     Add( $038F, 'ScanSpotTimeOffset', [TTypeVR.vrFL], 'Scan Spot Time Offset' );
     Add( $0390, 'ScanSpotTuneID', [TTypeVR.vrSH], 'Scan Spot Tune ID' );
     Add( $0391, 'ScanSpotPrescribedIndices', [TTypeVR.vrIS], 'Scan Spot Prescribed Indices' );
     Add( $0392, 'NumberOfScanSpotPositions', [TTypeVR.vrIS], 'Number of Scan Spot Positions' );
     Add( $0393, 'ScanSpotReordered', [TTypeVR.vrCS], 'Scan Spot Reordered' );
     Add( $0394, 'ScanSpotPositionMap', [TTypeVR.vrFL], 'Scan Spot Position Map' );
     Add( $0395, 'ScanSpotReorderingAllowed', [TTypeVR.vrCS], 'Scan Spot Reordering Allowed' );
     Add( $0396, 'ScanSpotMetersetWeights', [TTypeVR.vrFL], 'Scan Spot Meterset Weights' );
     Add( $0398, 'ScanningSpotSize', [TTypeVR.vrFL], 'Scanning Spot Size' );
     Add( $039A, 'NumberOfPaintings', [TTypeVR.vrIS], 'Number of Paintings' );
     Add( $03A0, 'IonToleranceTableSequence', [TTypeVR.vrSQ], 'Ion Tolerance Table Sequence' );
     Add( $03A2, 'IonBeamSequence', [TTypeVR.vrSQ], 'Ion Beam Sequence' );
     Add( $03A4, 'IonBeamLimitingDeviceSequence', [TTypeVR.vrSQ], 'Ion Beam Limiting Device Sequence' );
     Add( $03A6, 'IonBlockSequence', [TTypeVR.vrSQ], 'Ion Block Sequence' );
     Add( $03A8, 'IonControlPointSequence', [TTypeVR.vrSQ], 'Ion Control Point Sequence' );
     Add( $03AA, 'IonWedgeSequence', [TTypeVR.vrSQ], 'Ion Wedge Sequence' );
     Add( $03AC, 'IonWedgePositionSequence', [TTypeVR.vrSQ], 'Ion Wedge Position Sequence' );
     Add( $0401, 'ReferencedSetupImageSequence', [TTypeVR.vrSQ], 'Referenced Setup Image Sequence' );
     Add( $0402, 'SetupImageComment', [TTypeVR.vrST], 'Setup Image Comment' );
     Add( $0410, 'MotionSynchronizationSequence', [TTypeVR.vrSQ], 'Motion Synchronization Sequence' );
     Add( $0412, 'ControlPointOrientation', [TTypeVR.vrFL], 'Control Point Orientation' );
     Add( $0420, 'GeneralAccessorySequence', [TTypeVR.vrSQ], 'General Accessory Sequence' );
     Add( $0421, 'GeneralAccessoryID', [TTypeVR.vrSH], 'General Accessory ID' );
     Add( $0422, 'GeneralAccessoryDescription', [TTypeVR.vrST], 'General Accessory Description' );
     Add( $0423, 'GeneralAccessoryType', [TTypeVR.vrCS], 'General Accessory Type' );
     Add( $0424, 'GeneralAccessoryNumber', [TTypeVR.vrIS], 'General Accessory Number' );
     Add( $0425, 'SourceToGeneralAccessoryDistance', [TTypeVR.vrFL], 'Source to General Accessory Distance' );
     Add( $0431, 'ApplicatorGeometrySequence', [TTypeVR.vrSQ], 'Applicator Geometry Sequence' );
     Add( $0432, 'ApplicatorApertureShape', [TTypeVR.vrCS], 'Applicator Aperture Shape' );
     Add( $0433, 'ApplicatorOpening', [TTypeVR.vrFL], 'Applicator Opening' );
     Add( $0434, 'ApplicatorOpeningX', [TTypeVR.vrFL], 'Applicator Opening X' );
     Add( $0435, 'ApplicatorOpeningY', [TTypeVR.vrFL], 'Applicator Opening Y' );
     Add( $0436, 'SourceToApplicatorMountingPositionDistance', [TTypeVR.vrFL], 'Source to Applicator Mounting Position Distance' );
     Add( $0440, 'NumberOfBlockSlabItems', [TTypeVR.vrIS], 'Number of Block Slab Items' );
     Add( $0441, 'BlockSlabSequence', [TTypeVR.vrSQ], 'Block Slab Sequence' );
     Add( $0442, 'BlockSlabThickness', [TTypeVR.vrDS], 'Block Slab Thickness' );
     Add( $0443, 'BlockSlabNumber', [TTypeVR.vrUS], 'Block Slab Number' );
     Add( $0450, 'DeviceMotionControlSequence', [TTypeVR.vrSQ], 'Device Motion Control Sequence' );
     Add( $0451, 'DeviceMotionExecutionMode', [TTypeVR.vrCS], 'Device Motion Execution Mode' );
     Add( $0452, 'DeviceMotionObservationMode', [TTypeVR.vrCS], 'Device Motion Observation Mode' );
     Add( $0453, 'DeviceMotionParameterCodeSequence', [TTypeVR.vrSQ], 'Device Motion Parameter Code Sequence' );
     Add( $0501, 'DistalDepthFraction', [TTypeVR.vrFL], 'Distal Depth Fraction' );
     Add( $0502, 'DistalDepth', [TTypeVR.vrFL], 'Distal Depth' );
     Add( $0503, 'NominalRangeModulationFractions', [TTypeVR.vrFL], 'Nominal Range Modulation Fractions' );
     Add( $0504, 'NominalRangeModulatedRegionDepths', [TTypeVR.vrFL], 'Nominal Range Modulated Region Depths' );
     Add( $0505, 'DepthDoseParametersSequence', [TTypeVR.vrSQ], 'Depth Dose Parameters Sequence' );
     Add( $0506, 'DeliveredDepthDoseParametersSequence', [TTypeVR.vrSQ], 'Delivered Depth Dose Parameters Sequence' );
     Add( $0507, 'DeliveredDistalDepthFraction', [TTypeVR.vrFL], 'Delivered Distal Depth Fraction' );
     Add( $0508, 'DeliveredDistalDepth', [TTypeVR.vrFL], 'Delivered Distal Depth' );
     Add( $0509, 'DeliveredNominalRangeModulationFractions', [TTypeVR.vrFL], 'Delivered Nominal Range Modulation Fractions' );
     Add( $0510, 'DeliveredNominalRangeModulatedRegionDepths', [TTypeVR.vrFL], 'Delivered Nominal Range Modulated Region Depths' );
     Add( $0511, 'DeliveredReferenceDoseDefinition', [TTypeVR.vrCS], 'Delivered Reference Dose Definition' );
     Add( $0512, 'ReferenceDoseDefinition', [TTypeVR.vrCS], 'Reference Dose Definition' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
