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
     Add( $0120, 'ContinuationStartMeterset', [TTypeVR.vrFD], 'Continuation Start Meterset' );
     Add( $0121, 'ContinuationEndMeterset', [TTypeVR.vrFD], 'Continuation End Meterset' );
     Add( $1000, 'ProcedureStepState', [TTypeVR.vrCS], 'Procedure Step State' );
     Add( $1002, 'ProcedureStepProgressInformationSequence', [TTypeVR.vrSQ], 'Procedure Step Progress Information Sequence' );
     Add( $1004, 'ProcedureStepProgress', [TTypeVR.vrDS], 'Procedure Step Progress' );
     Add( $1006, 'ProcedureStepProgressDescription', [TTypeVR.vrST], 'Procedure Step Progress Description' );
     Add( $1008, 'ProcedureStepCommunicationsURISequence', [TTypeVR.vrSQ], 'Procedure Step Communications URI Sequence' );
     Add( $100A, 'ContactURI', [TTypeVR.vrUR], 'Contact URI' );
     Add( $100C, 'ContactDisplayName', [TTypeVR.vrLO], 'Contact Display Name' );
     Add( $100E, 'ProcedureStepDiscontinuationReasonCodeSequence', [TTypeVR.vrSQ], 'Procedure Step Discontinuation Reason Code Sequence' );
     Add( $1020, 'BeamTaskSequence', [TTypeVR.vrSQ], 'Beam Task Sequence' );
     Add( $1022, 'BeamTaskType', [TTypeVR.vrCS], 'Beam Task Type' );
     Add( $1024, 'BeamOrderIndexTrial', [TTypeVR.vrIS], 'Beam Order Index (Trial)' );
     Add( $1025, 'AutosequenceFlag', [TTypeVR.vrCS], 'Autosequence Flag' );
     Add( $1026, 'TableTopVerticalAdjustedPosition', [TTypeVR.vrFD], 'Table Top Vertical Adjusted Position' );
     Add( $1027, 'TableTopLongitudinalAdjustedPosition', [TTypeVR.vrFD], 'Table Top Longitudinal Adjusted Position' );
     Add( $1028, 'TableTopLateralAdjustedPosition', [TTypeVR.vrFD], 'Table Top Lateral Adjusted Position' );
     Add( $102A, 'PatientSupportAdjustedAngle', [TTypeVR.vrFD], 'Patient Support Adjusted Angle' );
     Add( $102B, 'TableTopEccentricAdjustedAngle', [TTypeVR.vrFD], 'Table Top Eccentric Adjusted Angle' );
     Add( $102C, 'TableTopPitchAdjustedAngle', [TTypeVR.vrFD], 'Table Top Pitch Adjusted Angle' );
     Add( $102D, 'TableTopRollAdjustedAngle', [TTypeVR.vrFD], 'Table Top Roll Adjusted Angle' );
     Add( $1030, 'DeliveryVerificationImageSequence', [TTypeVR.vrSQ], 'Delivery Verification Image Sequence' );
     Add( $1032, 'VerificationImageTiming', [TTypeVR.vrCS], 'Verification Image Timing' );
     Add( $1034, 'DoubleExposureFlag', [TTypeVR.vrCS], 'Double Exposure Flag' );
     Add( $1036, 'DoubleExposureOrdering', [TTypeVR.vrCS], 'Double Exposure Ordering' );
     Add( $1038, 'DoubleExposureMetersetTrial', [TTypeVR.vrDS], 'Double Exposure Meterset (Trial)' );
     Add( $103A, 'DoubleExposureFieldDeltaTrial', [TTypeVR.vrDS], 'Double Exposure Field Delta (Trial)' );
     Add( $1040, 'RelatedReferenceRTImageSequence', [TTypeVR.vrSQ], 'Related Reference RT Image Sequence' );
     Add( $1042, 'GeneralMachineVerificationSequence', [TTypeVR.vrSQ], 'General Machine Verification Sequence' );
     Add( $1044, 'ConventionalMachineVerificationSequence', [TTypeVR.vrSQ], 'Conventional Machine Verification Sequence' );
     Add( $1046, 'IonMachineVerificationSequence', [TTypeVR.vrSQ], 'Ion Machine Verification Sequence' );
     Add( $1048, 'FailedAttributesSequence', [TTypeVR.vrSQ], 'Failed Attributes Sequence' );
     Add( $104A, 'OverriddenAttributesSequence', [TTypeVR.vrSQ], 'Overridden Attributes Sequence' );
     Add( $104C, 'ConventionalControlPointVerificationSequence', [TTypeVR.vrSQ], 'Conventional Control Point Verification Sequence' );
     Add( $104E, 'IonControlPointVerificationSequence', [TTypeVR.vrSQ], 'Ion Control Point Verification Sequence' );
     Add( $1050, 'AttributeOccurrenceSequence', [TTypeVR.vrSQ], 'Attribute Occurrence Sequence' );
     Add( $1052, 'AttributeOccurrencePointer', [TTypeVR.vrAT], 'Attribute Occurrence Pointer' );
     Add( $1054, 'AttributeItemSelector', [TTypeVR.vrUL], 'Attribute Item Selector' );
     Add( $1056, 'AttributeOccurrencePrivateCreator', [TTypeVR.vrLO], 'Attribute Occurrence Private Creator' );
     Add( $1057, 'SelectorSequencePointerItems', [TTypeVR.vrIS], 'Selector Sequence Pointer Items' );
     Add( $1200, 'ScheduledProcedureStepPriority', [TTypeVR.vrCS], 'Scheduled Procedure Step Priority' );
     Add( $1202, 'WorklistLabel', [TTypeVR.vrLO], 'Worklist Label' );
     Add( $1204, 'ProcedureStepLabel', [TTypeVR.vrLO], 'Procedure Step Label' );
     Add( $1210, 'ScheduledProcessingParametersSequence', [TTypeVR.vrSQ], 'Scheduled Processing Parameters Sequence' );
     Add( $1212, 'PerformedProcessingParametersSequence', [TTypeVR.vrSQ], 'Performed Processing Parameters Sequence' );
     Add( $1216, 'UnifiedProcedureStepPerformedProcedureSequence', [TTypeVR.vrSQ], 'Unified Procedure Step Performed Procedure Sequence' );
     Add( $1220, 'RelatedProcedureStepSequence', [TTypeVR.vrSQ], 'Related Procedure Step Sequence' );
     Add( $1222, 'ProcedureStepRelationshipType', [TTypeVR.vrLO], 'Procedure Step Relationship Type' );
     Add( $1224, 'ReplacedProcedureStepSequence', [TTypeVR.vrSQ], 'Replaced Procedure Step Sequence' );
     Add( $1230, 'DeletionLock', [TTypeVR.vrLO], 'Deletion Lock' );
     Add( $1234, 'ReceivingAE', [TTypeVR.vrAE], 'Receiving AE' );
     Add( $1236, 'RequestingAE', [TTypeVR.vrAE], 'Requesting AE' );
     Add( $1238, 'ReasonForCancellation', [TTypeVR.vrLT], 'Reason for Cancellation' );
     Add( $1242, 'SCPStatus', [TTypeVR.vrCS], 'SCP Status' );
     Add( $1244, 'SubscriptionListStatus', [TTypeVR.vrCS], 'Subscription List Status' );
     Add( $1246, 'UnifiedProcedureStepListStatus', [TTypeVR.vrCS], 'Unified Procedure Step List Status' );
     Add( $1324, 'BeamOrderIndex', [TTypeVR.vrUL], 'Beam Order Index' );
     Add( $1338, 'DoubleExposureMeterset', [TTypeVR.vrFD], 'Double Exposure Meterset' );
     Add( $133A, 'DoubleExposureFieldDelta', [TTypeVR.vrFD], 'Double Exposure Field Delta' );
     Add( $1401, 'BrachyTaskSequence', [TTypeVR.vrSQ], 'Brachy Task Sequence' );
     Add( $1402, 'ContinuationStartTotalReferenceAirKerma', [TTypeVR.vrDS], 'Continuation Start Total Reference Air Kerma' );
     Add( $1403, 'ContinuationEndTotalReferenceAirKerma', [TTypeVR.vrDS], 'Continuation End Total Reference Air Kerma' );
     Add( $1404, 'ContinuationPulseNumber', [TTypeVR.vrIS], 'Continuation Pulse Number' );
     Add( $1405, 'ChannelDeliveryOrderSequence', [TTypeVR.vrSQ], 'Channel Delivery Order Sequence' );
     Add( $1406, 'ReferencedChannelNumber', [TTypeVR.vrIS], 'Referenced Channel Number' );
     Add( $1407, 'StartCumulativeTimeWeight', [TTypeVR.vrDS], 'Start Cumulative Time Weight' );
     Add( $1408, 'EndCumulativeTimeWeight', [TTypeVR.vrDS], 'End Cumulative Time Weight' );
     Add( $1409, 'OmittedChannelSequence', [TTypeVR.vrSQ], 'Omitted Channel Sequence' );
     Add( $140A, 'ReasonForChannelOmission', [TTypeVR.vrCS], 'Reason for Channel Omission' );
     Add( $140B, 'ReasonForChannelOmissionDescription', [TTypeVR.vrLO], 'Reason for Channel Omission Description' );
     Add( $140C, 'ChannelDeliveryOrderIndex', [TTypeVR.vrIS], 'Channel Delivery Order Index' );
     Add( $140D, 'ChannelDeliveryContinuationSequence', [TTypeVR.vrSQ], 'Channel Delivery Continuation Sequence' );
     Add( $140E, 'OmittedApplicationSetupSequence', [TTypeVR.vrSQ], 'Omitted Application Setup Sequence' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
