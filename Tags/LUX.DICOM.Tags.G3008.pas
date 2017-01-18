unit LUX.DICOM.Tags.G3008;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup3008

     TdcmGrup3008 = class( TdcmGrup )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup3008

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmGrup3008.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0010, 'MeasuredDoseReferenceSequence', [TTypeVR.vrSQ], 'Measured Dose Reference Sequence' );
     Add( $0012, 'MeasuredDoseDescription', [TTypeVR.vrST], 'Measured Dose Description' );
     Add( $0014, 'MeasuredDoseType', [TTypeVR.vrCS], 'Measured Dose Type' );
     Add( $0016, 'MeasuredDoseValue', [TTypeVR.vrDS], 'Measured Dose Value' );
     Add( $0020, 'TreatmentSessionBeamSequence', [TTypeVR.vrSQ], 'Treatment Session Beam Sequence' );
     Add( $0021, 'TreatmentSessionIonBeamSequence', [TTypeVR.vrSQ], 'Treatment Session Ion Beam Sequence' );
     Add( $0022, 'CurrentFractionNumber', [TTypeVR.vrIS], 'Current Fraction Number' );
     Add( $0024, 'TreatmentControlPointDate', [TTypeVR.vrDA], 'Treatment Control Point Date' );
     Add( $0025, 'TreatmentControlPointTime', [TTypeVR.vrTM], 'Treatment Control Point Time' );
     Add( $002A, 'TreatmentTerminationStatus', [TTypeVR.vrCS], 'Treatment Termination Status' );
     Add( $002B, 'TreatmentTerminationCode', [TTypeVR.vrSH], 'Treatment Termination Code' );
     Add( $002C, 'TreatmentVerificationStatus', [TTypeVR.vrCS], 'Treatment Verification Status' );
     Add( $0030, 'ReferencedTreatmentRecordSequence', [TTypeVR.vrSQ], 'Referenced Treatment Record Sequence' );
     Add( $0032, 'SpecifiedPrimaryMeterset', [TTypeVR.vrDS], 'Specified Primary Meterset' );
     Add( $0033, 'SpecifiedSecondaryMeterset', [TTypeVR.vrDS], 'Specified Secondary Meterset' );
     Add( $0036, 'DeliveredPrimaryMeterset', [TTypeVR.vrDS], 'Delivered Primary Meterset' );
     Add( $0037, 'DeliveredSecondaryMeterset', [TTypeVR.vrDS], 'Delivered Secondary Meterset' );
     Add( $003A, 'SpecifiedTreatmentTime', [TTypeVR.vrDS], 'Specified Treatment Time' );
     Add( $003B, 'DeliveredTreatmentTime', [TTypeVR.vrDS], 'Delivered Treatment Time' );
     Add( $0040, 'ControlPointDeliverySequence', [TTypeVR.vrSQ], 'Control Point Delivery Sequence' );
     Add( $0041, 'IonControlPointDeliverySequence', [TTypeVR.vrSQ], 'Ion Control Point Delivery Sequence' );
     Add( $0042, 'SpecifiedMeterset', [TTypeVR.vrDS], 'Specified Meterset' );
     Add( $0044, 'DeliveredMeterset', [TTypeVR.vrDS], 'Delivered Meterset' );
     Add( $0045, 'MetersetRateSet', [TTypeVR.vrFL], 'Meterset Rate Set' );
     Add( $0046, 'MetersetRateDelivered', [TTypeVR.vrFL], 'Meterset Rate Delivered' );
     Add( $0047, 'ScanSpotMetersetsDelivered', [TTypeVR.vrFL], 'Scan Spot Metersets Delivered' );
     Add( $0048, 'DoseRateDelivered', [TTypeVR.vrDS], 'Dose Rate Delivered' );
     Add( $0050, 'TreatmentSummaryCalculatedDoseReferenceSequence', [TTypeVR.vrSQ], 'Treatment Summary Calculated Dose Reference Sequence' );
     Add( $0052, 'CumulativeDoseToDoseReference', [TTypeVR.vrDS], 'Cumulative Dose to Dose Reference' );
     Add( $0054, 'FirstTreatmentDate', [TTypeVR.vrDA], 'First Treatment Date' );
     Add( $0056, 'MostRecentTreatmentDate', [TTypeVR.vrDA], 'Most Recent Treatment Date' );
     Add( $005A, 'NumberOfFractionsDelivered', [TTypeVR.vrIS], 'Number of Fractions Delivered' );
     Add( $0060, 'OverrideSequence', [TTypeVR.vrSQ], 'Override Sequence' );
     Add( $0061, 'ParameterSequencePointer', [TTypeVR.vrAT], 'Parameter Sequence Pointer' );
     Add( $0062, 'OverrideParameterPointer', [TTypeVR.vrAT], 'Override Parameter Pointer' );
     Add( $0063, 'ParameterItemIndex', [TTypeVR.vrIS], 'Parameter Item Index' );
     Add( $0064, 'MeasuredDoseReferenceNumber', [TTypeVR.vrIS], 'Measured Dose Reference Number' );
     Add( $0065, 'ParameterPointer', [TTypeVR.vrAT], 'Parameter Pointer' );
     Add( $0066, 'OverrideReason', [TTypeVR.vrST], 'Override Reason' );
     Add( $0067, 'ParameterValueNumber', [TTypeVR.vrUS], 'Parameter Value Number' );
     Add( $0068, 'CorrectedParameterSequence', [TTypeVR.vrSQ], 'Corrected Parameter Sequence' );
     Add( $006A, 'CorrectionValue', [TTypeVR.vrFL], 'Correction Value' );
     Add( $0070, 'CalculatedDoseReferenceSequence', [TTypeVR.vrSQ], 'Calculated Dose Reference Sequence' );
     Add( $0072, 'CalculatedDoseReferenceNumber', [TTypeVR.vrIS], 'Calculated Dose Reference Number' );
     Add( $0074, 'CalculatedDoseReferenceDescription', [TTypeVR.vrST], 'Calculated Dose Reference Description' );
     Add( $0076, 'CalculatedDoseReferenceDoseValue', [TTypeVR.vrDS], 'Calculated Dose Reference Dose Value' );
     Add( $0078, 'StartMeterset', [TTypeVR.vrDS], 'Start Meterset' );
     Add( $007A, 'EndMeterset', [TTypeVR.vrDS], 'End Meterset' );
     Add( $0080, 'ReferencedMeasuredDoseReferenceSequence', [TTypeVR.vrSQ], 'Referenced Measured Dose Reference Sequence' );
     Add( $0082, 'ReferencedMeasuredDoseReferenceNumber', [TTypeVR.vrIS], 'Referenced Measured Dose Reference Number' );
     Add( $0090, 'ReferencedCalculatedDoseReferenceSequence', [TTypeVR.vrSQ], 'Referenced Calculated Dose Reference Sequence' );
     Add( $0092, 'ReferencedCalculatedDoseReferenceNumber', [TTypeVR.vrIS], 'Referenced Calculated Dose Reference Number' );
     Add( $00A0, 'BeamLimitingDeviceLeafPairsSequence', [TTypeVR.vrSQ], 'Beam Limiting Device Leaf Pairs Sequence' );
     Add( $00B0, 'RecordedWedgeSequence', [TTypeVR.vrSQ], 'Recorded Wedge Sequence' );
     Add( $00C0, 'RecordedCompensatorSequence', [TTypeVR.vrSQ], 'Recorded Compensator Sequence' );
     Add( $00D0, 'RecordedBlockSequence', [TTypeVR.vrSQ], 'Recorded Block Sequence' );
     Add( $00E0, 'TreatmentSummaryMeasuredDoseReferenceSequence', [TTypeVR.vrSQ], 'Treatment Summary Measured Dose Reference Sequence' );
     Add( $00F0, 'RecordedSnoutSequence', [TTypeVR.vrSQ], 'Recorded Snout Sequence' );
     Add( $00F2, 'RecordedRangeShifterSequence', [TTypeVR.vrSQ], 'Recorded Range Shifter Sequence' );
     Add( $00F4, 'RecordedLateralSpreadingDeviceSequence', [TTypeVR.vrSQ], 'Recorded Lateral Spreading Device Sequence' );
     Add( $00F6, 'RecordedRangeModulatorSequence', [TTypeVR.vrSQ], 'Recorded Range Modulator Sequence' );
     Add( $0100, 'RecordedSourceSequence', [TTypeVR.vrSQ], 'Recorded Source Sequence' );
     Add( $0105, 'SourceSerialNumber', [TTypeVR.vrLO], 'Source Serial Number' );
     Add( $0110, 'TreatmentSessionApplicationSetupSequence', [TTypeVR.vrSQ], 'Treatment Session Application Setup Sequence' );
     Add( $0116, 'ApplicationSetupCheck', [TTypeVR.vrCS], 'Application Setup Check' );
     Add( $0120, 'RecordedBrachyAccessoryDeviceSequence', [TTypeVR.vrSQ], 'Recorded Brachy Accessory Device Sequence' );
     Add( $0122, 'ReferencedBrachyAccessoryDeviceNumber', [TTypeVR.vrIS], 'Referenced Brachy Accessory Device Number' );
     Add( $0130, 'RecordedChannelSequence', [TTypeVR.vrSQ], 'Recorded Channel Sequence' );
     Add( $0132, 'SpecifiedChannelTotalTime', [TTypeVR.vrDS], 'Specified Channel Total Time' );
     Add( $0134, 'DeliveredChannelTotalTime', [TTypeVR.vrDS], 'Delivered Channel Total Time' );
     Add( $0136, 'SpecifiedNumberOfPulses', [TTypeVR.vrIS], 'Specified Number of Pulses' );
     Add( $0138, 'DeliveredNumberOfPulses', [TTypeVR.vrIS], 'Delivered Number of Pulses' );
     Add( $013A, 'SpecifiedPulseRepetitionInterval', [TTypeVR.vrDS], 'Specified Pulse Repetition Interval' );
     Add( $013C, 'DeliveredPulseRepetitionInterval', [TTypeVR.vrDS], 'Delivered Pulse Repetition Interval' );
     Add( $0140, 'RecordedSourceApplicatorSequence', [TTypeVR.vrSQ], 'Recorded Source Applicator Sequence' );
     Add( $0142, 'ReferencedSourceApplicatorNumber', [TTypeVR.vrIS], 'Referenced Source Applicator Number' );
     Add( $0150, 'RecordedChannelShieldSequence', [TTypeVR.vrSQ], 'Recorded Channel Shield Sequence' );
     Add( $0152, 'ReferencedChannelShieldNumber', [TTypeVR.vrIS], 'Referenced Channel Shield Number' );
     Add( $0160, 'BrachyControlPointDeliveredSequence', [TTypeVR.vrSQ], 'Brachy Control Point Delivered Sequence' );
     Add( $0162, 'SafePositionExitDate', [TTypeVR.vrDA], 'Safe Position Exit Date' );
     Add( $0164, 'SafePositionExitTime', [TTypeVR.vrTM], 'Safe Position Exit Time' );
     Add( $0166, 'SafePositionReturnDate', [TTypeVR.vrDA], 'Safe Position Return Date' );
     Add( $0168, 'SafePositionReturnTime', [TTypeVR.vrTM], 'Safe Position Return Time' );
     Add( $0171, 'PulseSpecificBrachyControlPointDeliveredSequence', [TTypeVR.vrSQ], 'Pulse Specific Brachy Control Point Delivered Sequence' );
     Add( $0172, 'PulseNumber', [TTypeVR.vrUS], 'Pulse Number' );
     Add( $0173, 'BrachyPulseControlPointDeliveredSequence', [TTypeVR.vrSQ], 'Brachy Pulse Control Point Delivered Sequence' );
     Add( $0200, 'CurrentTreatmentStatus', [TTypeVR.vrCS], 'Current Treatment Status' );
     Add( $0202, 'TreatmentStatusComment', [TTypeVR.vrST], 'Treatment Status Comment' );
     Add( $0220, 'FractionGroupSummarySequence', [TTypeVR.vrSQ], 'Fraction Group Summary Sequence' );
     Add( $0223, 'ReferencedFractionNumber', [TTypeVR.vrIS], 'Referenced Fraction Number' );
     Add( $0224, 'FractionGroupType', [TTypeVR.vrCS], 'Fraction Group Type' );
     Add( $0230, 'BeamStopperPosition', [TTypeVR.vrCS], 'Beam Stopper Position' );
     Add( $0240, 'FractionStatusSummarySequence', [TTypeVR.vrSQ], 'Fraction Status Summary Sequence' );
     Add( $0250, 'TreatmentDate', [TTypeVR.vrDA], 'Treatment Date' );
     Add( $0251, 'TreatmentTime', [TTypeVR.vrTM], 'Treatment Time' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
