unit LUX.DICOM.Tags.G0074;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0074

     TdcmGrup0074 = class( TdcmGrup )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0074

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmGrup0074.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0120, 'ContinuationStartMeterset', [TKindVR.vrFD], 'Continuation Start Meterset' );
     Add( $0121, 'ContinuationEndMeterset', [TKindVR.vrFD], 'Continuation End Meterset' );
     Add( $1000, 'ProcedureStepState', [TKindVR.vrCS], 'Procedure Step State' );
     Add( $1002, 'ProcedureStepProgressInformationSequence', [TKindVR.vrSQ], 'Procedure Step Progress Information Sequence' );
     Add( $1004, 'ProcedureStepProgress', [TKindVR.vrDS], 'Procedure Step Progress' );
     Add( $1006, 'ProcedureStepProgressDescription', [TKindVR.vrST], 'Procedure Step Progress Description' );
     Add( $1008, 'ProcedureStepCommunicationsURISequence', [TKindVR.vrSQ], 'Procedure Step Communications URI Sequence' );
     Add( $100A, 'ContactURI', [TKindVR.vrUR], 'Contact URI' );
     Add( $100C, 'ContactDisplayName', [TKindVR.vrLO], 'Contact Display Name' );
     Add( $100E, 'ProcedureStepDiscontinuationReasonCodeSequence', [TKindVR.vrSQ], 'Procedure Step Discontinuation Reason Code Sequence' );
     Add( $1020, 'BeamTaskSequence', [TKindVR.vrSQ], 'Beam Task Sequence' );
     Add( $1022, 'BeamTaskType', [TKindVR.vrCS], 'Beam Task Type' );
     Add( $1024, 'BeamOrderIndexTrial', [TKindVR.vrIS], 'Beam Order Index (Trial)' );
     Add( $1025, 'AutosequenceFlag', [TKindVR.vrCS], 'Autosequence Flag' );
     Add( $1026, 'TableTopVerticalAdjustedPosition', [TKindVR.vrFD], 'Table Top Vertical Adjusted Position' );
     Add( $1027, 'TableTopLongitudinalAdjustedPosition', [TKindVR.vrFD], 'Table Top Longitudinal Adjusted Position' );
     Add( $1028, 'TableTopLateralAdjustedPosition', [TKindVR.vrFD], 'Table Top Lateral Adjusted Position' );
     Add( $102A, 'PatientSupportAdjustedAngle', [TKindVR.vrFD], 'Patient Support Adjusted Angle' );
     Add( $102B, 'TableTopEccentricAdjustedAngle', [TKindVR.vrFD], 'Table Top Eccentric Adjusted Angle' );
     Add( $102C, 'TableTopPitchAdjustedAngle', [TKindVR.vrFD], 'Table Top Pitch Adjusted Angle' );
     Add( $102D, 'TableTopRollAdjustedAngle', [TKindVR.vrFD], 'Table Top Roll Adjusted Angle' );
     Add( $1030, 'DeliveryVerificationImageSequence', [TKindVR.vrSQ], 'Delivery Verification Image Sequence' );
     Add( $1032, 'VerificationImageTiming', [TKindVR.vrCS], 'Verification Image Timing' );
     Add( $1034, 'DoubleExposureFlag', [TKindVR.vrCS], 'Double Exposure Flag' );
     Add( $1036, 'DoubleExposureOrdering', [TKindVR.vrCS], 'Double Exposure Ordering' );
     Add( $1038, 'DoubleExposureMetersetTrial', [TKindVR.vrDS], 'Double Exposure Meterset (Trial)' );
     Add( $103A, 'DoubleExposureFieldDeltaTrial', [TKindVR.vrDS], 'Double Exposure Field Delta (Trial)' );
     Add( $1040, 'RelatedReferenceRTImageSequence', [TKindVR.vrSQ], 'Related Reference RT Image Sequence' );
     Add( $1042, 'GeneralMachineVerificationSequence', [TKindVR.vrSQ], 'General Machine Verification Sequence' );
     Add( $1044, 'ConventionalMachineVerificationSequence', [TKindVR.vrSQ], 'Conventional Machine Verification Sequence' );
     Add( $1046, 'IonMachineVerificationSequence', [TKindVR.vrSQ], 'Ion Machine Verification Sequence' );
     Add( $1048, 'FailedAttributesSequence', [TKindVR.vrSQ], 'Failed Attributes Sequence' );
     Add( $104A, 'OverriddenAttributesSequence', [TKindVR.vrSQ], 'Overridden Attributes Sequence' );
     Add( $104C, 'ConventionalControlPointVerificationSequence', [TKindVR.vrSQ], 'Conventional Control Point Verification Sequence' );
     Add( $104E, 'IonControlPointVerificationSequence', [TKindVR.vrSQ], 'Ion Control Point Verification Sequence' );
     Add( $1050, 'AttributeOccurrenceSequence', [TKindVR.vrSQ], 'Attribute Occurrence Sequence' );
     Add( $1052, 'AttributeOccurrencePointer', [TKindVR.vrAT], 'Attribute Occurrence Pointer' );
     Add( $1054, 'AttributeItemSelector', [TKindVR.vrUL], 'Attribute Item Selector' );
     Add( $1056, 'AttributeOccurrencePrivateCreator', [TKindVR.vrLO], 'Attribute Occurrence Private Creator' );
     Add( $1057, 'SelectorSequencePointerItems', [TKindVR.vrIS], 'Selector Sequence Pointer Items' );
     Add( $1200, 'ScheduledProcedureStepPriority', [TKindVR.vrCS], 'Scheduled Procedure Step Priority' );
     Add( $1202, 'WorklistLabel', [TKindVR.vrLO], 'Worklist Label' );
     Add( $1204, 'ProcedureStepLabel', [TKindVR.vrLO], 'Procedure Step Label' );
     Add( $1210, 'ScheduledProcessingParametersSequence', [TKindVR.vrSQ], 'Scheduled Processing Parameters Sequence' );
     Add( $1212, 'PerformedProcessingParametersSequence', [TKindVR.vrSQ], 'Performed Processing Parameters Sequence' );
     Add( $1216, 'UnifiedProcedureStepPerformedProcedureSequence', [TKindVR.vrSQ], 'Unified Procedure Step Performed Procedure Sequence' );
     Add( $1220, 'RelatedProcedureStepSequence', [TKindVR.vrSQ], 'Related Procedure Step Sequence' );
     Add( $1222, 'ProcedureStepRelationshipType', [TKindVR.vrLO], 'Procedure Step Relationship Type' );
     Add( $1224, 'ReplacedProcedureStepSequence', [TKindVR.vrSQ], 'Replaced Procedure Step Sequence' );
     Add( $1230, 'DeletionLock', [TKindVR.vrLO], 'Deletion Lock' );
     Add( $1234, 'ReceivingAE', [TKindVR.vrAE], 'Receiving AE' );
     Add( $1236, 'RequestingAE', [TKindVR.vrAE], 'Requesting AE' );
     Add( $1238, 'ReasonForCancellation', [TKindVR.vrLT], 'Reason for Cancellation' );
     Add( $1242, 'SCPStatus', [TKindVR.vrCS], 'SCP Status' );
     Add( $1244, 'SubscriptionListStatus', [TKindVR.vrCS], 'Subscription List Status' );
     Add( $1246, 'UnifiedProcedureStepListStatus', [TKindVR.vrCS], 'Unified Procedure Step List Status' );
     Add( $1324, 'BeamOrderIndex', [TKindVR.vrUL], 'Beam Order Index' );
     Add( $1338, 'DoubleExposureMeterset', [TKindVR.vrFD], 'Double Exposure Meterset' );
     Add( $133A, 'DoubleExposureFieldDelta', [TKindVR.vrFD], 'Double Exposure Field Delta' );
     Add( $1401, 'BrachyTaskSequence', [TKindVR.vrSQ], 'Brachy Task Sequence' );
     Add( $1402, 'ContinuationStartTotalReferenceAirKerma', [TKindVR.vrDS], 'Continuation Start Total Reference Air Kerma' );
     Add( $1403, 'ContinuationEndTotalReferenceAirKerma', [TKindVR.vrDS], 'Continuation End Total Reference Air Kerma' );
     Add( $1404, 'ContinuationPulseNumber', [TKindVR.vrIS], 'Continuation Pulse Number' );
     Add( $1405, 'ChannelDeliveryOrderSequence', [TKindVR.vrSQ], 'Channel Delivery Order Sequence' );
     Add( $1406, 'ReferencedChannelNumber', [TKindVR.vrIS], 'Referenced Channel Number' );
     Add( $1407, 'StartCumulativeTimeWeight', [TKindVR.vrDS], 'Start Cumulative Time Weight' );
     Add( $1408, 'EndCumulativeTimeWeight', [TKindVR.vrDS], 'End Cumulative Time Weight' );
     Add( $1409, 'OmittedChannelSequence', [TKindVR.vrSQ], 'Omitted Channel Sequence' );
     Add( $140A, 'ReasonForChannelOmission', [TKindVR.vrCS], 'Reason for Channel Omission' );
     Add( $140B, 'ReasonForChannelOmissionDescription', [TKindVR.vrLO], 'Reason for Channel Omission Description' );
     Add( $140C, 'ChannelDeliveryOrderIndex', [TKindVR.vrIS], 'Channel Delivery Order Index' );
     Add( $140D, 'ChannelDeliveryContinuationSequence', [TKindVR.vrSQ], 'Channel Delivery Continuation Sequence' );
     Add( $140E, 'OmittedApplicationSetupSequence', [TKindVR.vrSQ], 'Omitted Application Setup Sequence' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
