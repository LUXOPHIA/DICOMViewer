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
       constructor Create( const Code_:THex4 );
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

constructor TdcmGrup3008.Create( const Code_:THex4 );
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0010, 'MeasuredDoseReferenceSequence', [TKindVR.vrSQ], 'Measured Dose Reference Sequence' );
     Add( $0012, 'MeasuredDoseDescription', [TKindVR.vrST], 'Measured Dose Description' );
     Add( $0014, 'MeasuredDoseType', [TKindVR.vrCS], 'Measured Dose Type' );
     Add( $0016, 'MeasuredDoseValue', [TKindVR.vrDS], 'Measured Dose Value' );
     Add( $0020, 'TreatmentSessionBeamSequence', [TKindVR.vrSQ], 'Treatment Session Beam Sequence' );
     Add( $0021, 'TreatmentSessionIonBeamSequence', [TKindVR.vrSQ], 'Treatment Session Ion Beam Sequence' );
     Add( $0022, 'CurrentFractionNumber', [TKindVR.vrIS], 'Current Fraction Number' );
     Add( $0024, 'TreatmentControlPointDate', [TKindVR.vrDA], 'Treatment Control Point Date' );
     Add( $0025, 'TreatmentControlPointTime', [TKindVR.vrTM], 'Treatment Control Point Time' );
     Add( $002A, 'TreatmentTerminationStatus', [TKindVR.vrCS], 'Treatment Termination Status' );
     Add( $002B, 'TreatmentTerminationCode', [TKindVR.vrSH], 'Treatment Termination Code' );
     Add( $002C, 'TreatmentVerificationStatus', [TKindVR.vrCS], 'Treatment Verification Status' );
     Add( $0030, 'ReferencedTreatmentRecordSequence', [TKindVR.vrSQ], 'Referenced Treatment Record Sequence' );
     Add( $0032, 'SpecifiedPrimaryMeterset', [TKindVR.vrDS], 'Specified Primary Meterset' );
     Add( $0033, 'SpecifiedSecondaryMeterset', [TKindVR.vrDS], 'Specified Secondary Meterset' );
     Add( $0036, 'DeliveredPrimaryMeterset', [TKindVR.vrDS], 'Delivered Primary Meterset' );
     Add( $0037, 'DeliveredSecondaryMeterset', [TKindVR.vrDS], 'Delivered Secondary Meterset' );
     Add( $003A, 'SpecifiedTreatmentTime', [TKindVR.vrDS], 'Specified Treatment Time' );
     Add( $003B, 'DeliveredTreatmentTime', [TKindVR.vrDS], 'Delivered Treatment Time' );
     Add( $0040, 'ControlPointDeliverySequence', [TKindVR.vrSQ], 'Control Point Delivery Sequence' );
     Add( $0041, 'IonControlPointDeliverySequence', [TKindVR.vrSQ], 'Ion Control Point Delivery Sequence' );
     Add( $0042, 'SpecifiedMeterset', [TKindVR.vrDS], 'Specified Meterset' );
     Add( $0044, 'DeliveredMeterset', [TKindVR.vrDS], 'Delivered Meterset' );
     Add( $0045, 'MetersetRateSet', [TKindVR.vrFL], 'Meterset Rate Set' );
     Add( $0046, 'MetersetRateDelivered', [TKindVR.vrFL], 'Meterset Rate Delivered' );
     Add( $0047, 'ScanSpotMetersetsDelivered', [TKindVR.vrFL], 'Scan Spot Metersets Delivered' );
     Add( $0048, 'DoseRateDelivered', [TKindVR.vrDS], 'Dose Rate Delivered' );
     Add( $0050, 'TreatmentSummaryCalculatedDoseReferenceSequence', [TKindVR.vrSQ], 'Treatment Summary Calculated Dose Reference Sequence' );
     Add( $0052, 'CumulativeDoseToDoseReference', [TKindVR.vrDS], 'Cumulative Dose to Dose Reference' );
     Add( $0054, 'FirstTreatmentDate', [TKindVR.vrDA], 'First Treatment Date' );
     Add( $0056, 'MostRecentTreatmentDate', [TKindVR.vrDA], 'Most Recent Treatment Date' );
     Add( $005A, 'NumberOfFractionsDelivered', [TKindVR.vrIS], 'Number of Fractions Delivered' );
     Add( $0060, 'OverrideSequence', [TKindVR.vrSQ], 'Override Sequence' );
     Add( $0061, 'ParameterSequencePointer', [TKindVR.vrAT], 'Parameter Sequence Pointer' );
     Add( $0062, 'OverrideParameterPointer', [TKindVR.vrAT], 'Override Parameter Pointer' );
     Add( $0063, 'ParameterItemIndex', [TKindVR.vrIS], 'Parameter Item Index' );
     Add( $0064, 'MeasuredDoseReferenceNumber', [TKindVR.vrIS], 'Measured Dose Reference Number' );
     Add( $0065, 'ParameterPointer', [TKindVR.vrAT], 'Parameter Pointer' );
     Add( $0066, 'OverrideReason', [TKindVR.vrST], 'Override Reason' );
     Add( $0067, 'ParameterValueNumber', [TKindVR.vrUS], 'Parameter Value Number' );
     Add( $0068, 'CorrectedParameterSequence', [TKindVR.vrSQ], 'Corrected Parameter Sequence' );
     Add( $006A, 'CorrectionValue', [TKindVR.vrFL], 'Correction Value' );
     Add( $0070, 'CalculatedDoseReferenceSequence', [TKindVR.vrSQ], 'Calculated Dose Reference Sequence' );
     Add( $0072, 'CalculatedDoseReferenceNumber', [TKindVR.vrIS], 'Calculated Dose Reference Number' );
     Add( $0074, 'CalculatedDoseReferenceDescription', [TKindVR.vrST], 'Calculated Dose Reference Description' );
     Add( $0076, 'CalculatedDoseReferenceDoseValue', [TKindVR.vrDS], 'Calculated Dose Reference Dose Value' );
     Add( $0078, 'StartMeterset', [TKindVR.vrDS], 'Start Meterset' );
     Add( $007A, 'EndMeterset', [TKindVR.vrDS], 'End Meterset' );
     Add( $0080, 'ReferencedMeasuredDoseReferenceSequence', [TKindVR.vrSQ], 'Referenced Measured Dose Reference Sequence' );
     Add( $0082, 'ReferencedMeasuredDoseReferenceNumber', [TKindVR.vrIS], 'Referenced Measured Dose Reference Number' );
     Add( $0090, 'ReferencedCalculatedDoseReferenceSequence', [TKindVR.vrSQ], 'Referenced Calculated Dose Reference Sequence' );
     Add( $0092, 'ReferencedCalculatedDoseReferenceNumber', [TKindVR.vrIS], 'Referenced Calculated Dose Reference Number' );
     Add( $00A0, 'BeamLimitingDeviceLeafPairsSequence', [TKindVR.vrSQ], 'Beam Limiting Device Leaf Pairs Sequence' );
     Add( $00B0, 'RecordedWedgeSequence', [TKindVR.vrSQ], 'Recorded Wedge Sequence' );
     Add( $00C0, 'RecordedCompensatorSequence', [TKindVR.vrSQ], 'Recorded Compensator Sequence' );
     Add( $00D0, 'RecordedBlockSequence', [TKindVR.vrSQ], 'Recorded Block Sequence' );
     Add( $00E0, 'TreatmentSummaryMeasuredDoseReferenceSequence', [TKindVR.vrSQ], 'Treatment Summary Measured Dose Reference Sequence' );
     Add( $00F0, 'RecordedSnoutSequence', [TKindVR.vrSQ], 'Recorded Snout Sequence' );
     Add( $00F2, 'RecordedRangeShifterSequence', [TKindVR.vrSQ], 'Recorded Range Shifter Sequence' );
     Add( $00F4, 'RecordedLateralSpreadingDeviceSequence', [TKindVR.vrSQ], 'Recorded Lateral Spreading Device Sequence' );
     Add( $00F6, 'RecordedRangeModulatorSequence', [TKindVR.vrSQ], 'Recorded Range Modulator Sequence' );
     Add( $0100, 'RecordedSourceSequence', [TKindVR.vrSQ], 'Recorded Source Sequence' );
     Add( $0105, 'SourceSerialNumber', [TKindVR.vrLO], 'Source Serial Number' );
     Add( $0110, 'TreatmentSessionApplicationSetupSequence', [TKindVR.vrSQ], 'Treatment Session Application Setup Sequence' );
     Add( $0116, 'ApplicationSetupCheck', [TKindVR.vrCS], 'Application Setup Check' );
     Add( $0120, 'RecordedBrachyAccessoryDeviceSequence', [TKindVR.vrSQ], 'Recorded Brachy Accessory Device Sequence' );
     Add( $0122, 'ReferencedBrachyAccessoryDeviceNumber', [TKindVR.vrIS], 'Referenced Brachy Accessory Device Number' );
     Add( $0130, 'RecordedChannelSequence', [TKindVR.vrSQ], 'Recorded Channel Sequence' );
     Add( $0132, 'SpecifiedChannelTotalTime', [TKindVR.vrDS], 'Specified Channel Total Time' );
     Add( $0134, 'DeliveredChannelTotalTime', [TKindVR.vrDS], 'Delivered Channel Total Time' );
     Add( $0136, 'SpecifiedNumberOfPulses', [TKindVR.vrIS], 'Specified Number of Pulses' );
     Add( $0138, 'DeliveredNumberOfPulses', [TKindVR.vrIS], 'Delivered Number of Pulses' );
     Add( $013A, 'SpecifiedPulseRepetitionInterval', [TKindVR.vrDS], 'Specified Pulse Repetition Interval' );
     Add( $013C, 'DeliveredPulseRepetitionInterval', [TKindVR.vrDS], 'Delivered Pulse Repetition Interval' );
     Add( $0140, 'RecordedSourceApplicatorSequence', [TKindVR.vrSQ], 'Recorded Source Applicator Sequence' );
     Add( $0142, 'ReferencedSourceApplicatorNumber', [TKindVR.vrIS], 'Referenced Source Applicator Number' );
     Add( $0150, 'RecordedChannelShieldSequence', [TKindVR.vrSQ], 'Recorded Channel Shield Sequence' );
     Add( $0152, 'ReferencedChannelShieldNumber', [TKindVR.vrIS], 'Referenced Channel Shield Number' );
     Add( $0160, 'BrachyControlPointDeliveredSequence', [TKindVR.vrSQ], 'Brachy Control Point Delivered Sequence' );
     Add( $0162, 'SafePositionExitDate', [TKindVR.vrDA], 'Safe Position Exit Date' );
     Add( $0164, 'SafePositionExitTime', [TKindVR.vrTM], 'Safe Position Exit Time' );
     Add( $0166, 'SafePositionReturnDate', [TKindVR.vrDA], 'Safe Position Return Date' );
     Add( $0168, 'SafePositionReturnTime', [TKindVR.vrTM], 'Safe Position Return Time' );
     Add( $0171, 'PulseSpecificBrachyControlPointDeliveredSequence', [TKindVR.vrSQ], 'Pulse Specific Brachy Control Point Delivered Sequence' );
     Add( $0172, 'PulseNumber', [TKindVR.vrUS], 'Pulse Number' );
     Add( $0173, 'BrachyPulseControlPointDeliveredSequence', [TKindVR.vrSQ], 'Brachy Pulse Control Point Delivered Sequence' );
     Add( $0200, 'CurrentTreatmentStatus', [TKindVR.vrCS], 'Current Treatment Status' );
     Add( $0202, 'TreatmentStatusComment', [TKindVR.vrST], 'Treatment Status Comment' );
     Add( $0220, 'FractionGroupSummarySequence', [TKindVR.vrSQ], 'Fraction Group Summary Sequence' );
     Add( $0223, 'ReferencedFractionNumber', [TKindVR.vrIS], 'Referenced Fraction Number' );
     Add( $0224, 'FractionGroupType', [TKindVR.vrCS], 'Fraction Group Type' );
     Add( $0230, 'BeamStopperPosition', [TKindVR.vrCS], 'Beam Stopper Position' );
     Add( $0240, 'FractionStatusSummarySequence', [TKindVR.vrSQ], 'Fraction Status Summary Sequence' );
     Add( $0250, 'TreatmentDate', [TKindVR.vrDA], 'Treatment Date' );
     Add( $0251, 'TreatmentTime', [TKindVR.vrTM], 'Treatment Time' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
