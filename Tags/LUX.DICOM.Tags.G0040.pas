unit LUX.DICOM.Tags.G0040;

interface //#################################################################### ■

uses LUX, LUX.DICOM.VRs, LUX.DICOM.Tags;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0040

     TdcmGrup0040 = class( TdcmGrup )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0040

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

class procedure TdcmGrup0040.AddBook( const Book_:TdcmBookTag );
begin
     Create( Book_, $0040 );
end;

//------------------------------------------------------------------------------

constructor TdcmGrup0040.Create( const Book_:TdcmBookTag; const Code_:THex4 );
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0001, 'ScheduledStationAETitle', [TKindVR.vrAE], 'Scheduled Station AE Title' );
     Add( $0002, 'ScheduledProcedureStepStartDate', [TKindVR.vrDA], 'Scheduled Procedure Step Start Date' );
     Add( $0003, 'ScheduledProcedureStepStartTime', [TKindVR.vrTM], 'Scheduled Procedure Step Start Time' );
     Add( $0004, 'ScheduledProcedureStepEndDate', [TKindVR.vrDA], 'Scheduled Procedure Step End Date' );
     Add( $0005, 'ScheduledProcedureStepEndTime', [TKindVR.vrTM], 'Scheduled Procedure Step End Time' );
     Add( $0006, 'ScheduledPerformingPhysicianName', [TKindVR.vrPN], 'Scheduled Performing Physician''s Name' );
     Add( $0007, 'ScheduledProcedureStepDescription', [TKindVR.vrLO], 'Scheduled Procedure Step Description' );
     Add( $0008, 'ScheduledProtocolCodeSequence', [TKindVR.vrSQ], 'Scheduled Protocol Code Sequence' );
     Add( $0009, 'ScheduledProcedureStepID', [TKindVR.vrSH], 'Scheduled Procedure Step ID' );
     Add( $000A, 'StageCodeSequence', [TKindVR.vrSQ], 'Stage Code Sequence' );
     Add( $000B, 'ScheduledPerformingPhysicianIdentificationSequence', [TKindVR.vrSQ], 'Scheduled Performing Physician Identification Sequence' );
     Add( $0010, 'ScheduledStationName', [TKindVR.vrSH], 'Scheduled Station Name' );
     Add( $0011, 'ScheduledProcedureStepLocation', [TKindVR.vrSH], 'Scheduled Procedure Step Location' );
     Add( $0012, 'PreMedication', [TKindVR.vrLO], 'Pre-Medication' );
     Add( $0020, 'ScheduledProcedureStepStatus', [TKindVR.vrCS], 'Scheduled Procedure Step Status' );
     Add( $0026, 'OrderPlacerIdentifierSequence', [TKindVR.vrSQ], 'Order Placer Identifier Sequence' );
     Add( $0027, 'OrderFillerIdentifierSequence', [TKindVR.vrSQ], 'Order Filler Identifier Sequence' );
     Add( $0031, 'LocalNamespaceEntityID', [TKindVR.vrUT], 'Local Namespace Entity ID' );
     Add( $0032, 'UniversalEntityID', [TKindVR.vrUT], 'Universal Entity ID' );
     Add( $0033, 'UniversalEntityIDType', [TKindVR.vrCS], 'Universal Entity ID Type' );
     Add( $0035, 'IdentifierTypeCode', [TKindVR.vrCS], 'Identifier Type Code' );
     Add( $0036, 'AssigningFacilitySequence', [TKindVR.vrSQ], 'Assigning Facility Sequence' );
     Add( $0039, 'AssigningJurisdictionCodeSequence', [TKindVR.vrSQ], 'Assigning Jurisdiction Code Sequence' );
     Add( $003A, 'AssigningAgencyOrDepartmentCodeSequence', [TKindVR.vrSQ], 'Assigning Agency or Department Code Sequence' );
     Add( $0100, 'ScheduledProcedureStepSequence', [TKindVR.vrSQ], 'Scheduled Procedure Step Sequence' );
     Add( $0220, 'ReferencedNonImageCompositeSOPInstanceSequence', [TKindVR.vrSQ], 'Referenced Non-Image Composite SOP Instance Sequence' );
     Add( $0241, 'PerformedStationAETitle', [TKindVR.vrAE], 'Performed Station AE Title' );
     Add( $0242, 'PerformedStationName', [TKindVR.vrSH], 'Performed Station Name' );
     Add( $0243, 'PerformedLocation', [TKindVR.vrSH], 'Performed Location' );
     Add( $0244, 'PerformedProcedureStepStartDate', [TKindVR.vrDA], 'Performed Procedure Step Start Date' );
     Add( $0245, 'PerformedProcedureStepStartTime', [TKindVR.vrTM], 'Performed Procedure Step Start Time' );
     Add( $0250, 'PerformedProcedureStepEndDate', [TKindVR.vrDA], 'Performed Procedure Step End Date' );
     Add( $0251, 'PerformedProcedureStepEndTime', [TKindVR.vrTM], 'Performed Procedure Step End Time' );
     Add( $0252, 'PerformedProcedureStepStatus', [TKindVR.vrCS], 'Performed Procedure Step Status' );
     Add( $0253, 'PerformedProcedureStepID', [TKindVR.vrSH], 'Performed Procedure Step ID' );
     Add( $0254, 'PerformedProcedureStepDescription', [TKindVR.vrLO], 'Performed Procedure Step Description' );
     Add( $0255, 'PerformedProcedureTypeDescription', [TKindVR.vrLO], 'Performed Procedure Type Description' );
     Add( $0260, 'PerformedProtocolCodeSequence', [TKindVR.vrSQ], 'Performed Protocol Code Sequence' );
     Add( $0261, 'PerformedProtocolType', [TKindVR.vrCS], 'Performed Protocol Type' );
     Add( $0270, 'ScheduledStepAttributesSequence', [TKindVR.vrSQ], 'Scheduled Step Attributes Sequence' );
     Add( $0275, 'RequestAttributesSequence', [TKindVR.vrSQ], 'Request Attributes Sequence' );
     Add( $0280, 'CommentsOnThePerformedProcedureStep', [TKindVR.vrST], 'Comments on the Performed Procedure Step' );
     Add( $0281, 'PerformedProcedureStepDiscontinuationReasonCodeSequence', [TKindVR.vrSQ], 'Performed Procedure Step Discontinuation Reason Code Sequence' );
     Add( $0293, 'QuantitySequence', [TKindVR.vrSQ], 'Quantity Sequence' );
     Add( $0294, 'Quantity', [TKindVR.vrDS], 'Quantity' );
     Add( $0295, 'MeasuringUnitsSequence', [TKindVR.vrSQ], 'Measuring Units Sequence' );
     Add( $0296, 'BillingItemSequence', [TKindVR.vrSQ], 'Billing Item Sequence' );
     Add( $0300, 'TotalTimeOfFluoroscopy', [TKindVR.vrUS], 'Total Time of Fluoroscopy' );
     Add( $0301, 'TotalNumberOfExposures', [TKindVR.vrUS], 'Total Number of Exposures' );
     Add( $0302, 'EntranceDose', [TKindVR.vrUS], 'Entrance Dose' );
     Add( $0303, 'ExposedArea', [TKindVR.vrUS], 'Exposed Area' );
     Add( $0306, 'DistanceSourceToEntrance', [TKindVR.vrDS], 'Distance Source to Entrance' );
     Add( $0307, 'DistanceSourceToSupport', [TKindVR.vrDS], 'Distance Source to Support' );
     Add( $030E, 'ExposureDoseSequence', [TKindVR.vrSQ], 'Exposure Dose Sequence' );
     Add( $0310, 'CommentsOnRadiationDose', [TKindVR.vrST], 'Comments on Radiation Dose' );
     Add( $0312, 'XRayOutput', [TKindVR.vrDS], 'X-Ray Output' );
     Add( $0314, 'HalfValueLayer', [TKindVR.vrDS], 'Half Value Layer' );
     Add( $0316, 'OrganDose', [TKindVR.vrDS], 'Organ Dose' );
     Add( $0318, 'OrganExposed', [TKindVR.vrCS], 'Organ Exposed' );
     Add( $0320, 'BillingProcedureStepSequence', [TKindVR.vrSQ], 'Billing Procedure Step Sequence' );
     Add( $0321, 'FilmConsumptionSequence', [TKindVR.vrSQ], 'Film Consumption Sequence' );
     Add( $0324, 'BillingSuppliesAndDevicesSequence', [TKindVR.vrSQ], 'Billing Supplies and Devices Sequence' );
     Add( $0330, 'ReferencedProcedureStepSequence', [TKindVR.vrSQ], 'Referenced Procedure Step Sequence' );
     Add( $0340, 'PerformedSeriesSequence', [TKindVR.vrSQ], 'Performed Series Sequence' );
     Add( $0400, 'CommentsOnTheScheduledProcedureStep', [TKindVR.vrLT], 'Comments on the Scheduled Procedure Step' );
     Add( $0440, 'ProtocolContextSequence', [TKindVR.vrSQ], 'Protocol Context Sequence' );
     Add( $0441, 'ContentItemModifierSequence', [TKindVR.vrSQ], 'Content Item Modifier Sequence' );
     Add( $0500, 'ScheduledSpecimenSequence', [TKindVR.vrSQ], 'Scheduled Specimen Sequence' );
     Add( $050A, 'SpecimenAccessionNumber', [TKindVR.vrLO], 'Specimen Accession Number' );
     Add( $0512, 'ContainerIdentifier', [TKindVR.vrLO], 'Container Identifier' );
     Add( $0513, 'IssuerOfTheContainerIdentifierSequence', [TKindVR.vrSQ], 'Issuer of the Container Identifier Sequence' );
     Add( $0515, 'AlternateContainerIdentifierSequence', [TKindVR.vrSQ], 'Alternate Container Identifier Sequence' );
     Add( $0518, 'ContainerTypeCodeSequence', [TKindVR.vrSQ], 'Container Type Code Sequence' );
     Add( $051A, 'ContainerDescription', [TKindVR.vrLO], 'Container Description' );
     Add( $0520, 'ContainerComponentSequence', [TKindVR.vrSQ], 'Container Component Sequence' );
     Add( $0550, 'SpecimenSequence', [TKindVR.vrSQ], 'Specimen Sequence' );
     Add( $0551, 'SpecimenIdentifier', [TKindVR.vrLO], 'Specimen Identifier' );
     Add( $0552, 'SpecimenDescriptionSequenceTrial', [TKindVR.vrSQ], 'Specimen Description Sequence (Trial)' );
     Add( $0553, 'SpecimenDescriptionTrial', [TKindVR.vrST], 'Specimen Description (Trial)' );
     Add( $0554, 'SpecimenUID', [TKindVR.vrUI], 'Specimen UID' );
     Add( $0555, 'AcquisitionContextSequence', [TKindVR.vrSQ], 'Acquisition Context Sequence' );
     Add( $0556, 'AcquisitionContextDescription', [TKindVR.vrST], 'Acquisition Context Description' );
     Add( $059A, 'SpecimenTypeCodeSequence', [TKindVR.vrSQ], 'Specimen Type Code Sequence' );
     Add( $0560, 'SpecimenDescriptionSequence', [TKindVR.vrSQ], 'Specimen Description Sequence' );
     Add( $0562, 'IssuerOfTheSpecimenIdentifierSequence', [TKindVR.vrSQ], 'Issuer of the Specimen Identifier Sequence' );
     Add( $0600, 'SpecimenShortDescription', [TKindVR.vrLO], 'Specimen Short Description' );
     Add( $0602, 'SpecimenDetailedDescription', [TKindVR.vrUT], 'Specimen Detailed Description' );
     Add( $0610, 'SpecimenPreparationSequence', [TKindVR.vrSQ], 'Specimen Preparation Sequence' );
     Add( $0612, 'SpecimenPreparationStepContentItemSequence', [TKindVR.vrSQ], 'Specimen Preparation Step Content Item Sequence' );
     Add( $0620, 'SpecimenLocalizationContentItemSequence', [TKindVR.vrSQ], 'Specimen Localization Content Item Sequence' );
     Add( $06FA, 'SlideIdentifier', [TKindVR.vrLO], 'Slide Identifier' );
     Add( $071A, 'ImageCenterPointCoordinatesSequence', [TKindVR.vrSQ], 'Image Center Point Coordinates Sequence' );
     Add( $072A, 'XOffsetInSlideCoordinateSystem', [TKindVR.vrDS], 'X Offset in Slide Coordinate System' );
     Add( $073A, 'YOffsetInSlideCoordinateSystem', [TKindVR.vrDS], 'Y Offset in Slide Coordinate System' );
     Add( $074A, 'ZOffsetInSlideCoordinateSystem', [TKindVR.vrDS], 'Z Offset in Slide Coordinate System' );
     Add( $08D8, 'PixelSpacingSequence', [TKindVR.vrSQ], 'Pixel Spacing Sequence' );
     Add( $08DA, 'CoordinateSystemAxisCodeSequence', [TKindVR.vrSQ], 'Coordinate System Axis Code Sequence' );
     Add( $08EA, 'MeasurementUnitsCodeSequence', [TKindVR.vrSQ], 'Measurement Units Code Sequence' );
     Add( $09F8, 'VitalStainCodeSequenceTrial', [TKindVR.vrSQ], 'Vital Stain Code Sequence (Trial)' );
     Add( $1001, 'RequestedProcedureID', [TKindVR.vrSH], 'Requested Procedure ID' );
     Add( $1002, 'ReasonForTheRequestedProcedure', [TKindVR.vrLO], 'Reason for the Requested Procedure' );
     Add( $1003, 'RequestedProcedurePriority', [TKindVR.vrSH], 'Requested Procedure Priority' );
     Add( $1004, 'PatientTransportArrangements', [TKindVR.vrLO], 'Patient Transport Arrangements' );
     Add( $1005, 'RequestedProcedureLocation', [TKindVR.vrLO], 'Requested Procedure Location' );
     Add( $1006, 'PlacerOrderNumberProcedure', [TKindVR.vrSH], 'Placer Order Number / Procedure' );
     Add( $1007, 'FillerOrderNumberProcedure', [TKindVR.vrSH], 'Filler Order Number / Procedure' );
     Add( $1008, 'ConfidentialityCode', [TKindVR.vrLO], 'Confidentiality Code' );
     Add( $1009, 'ReportingPriority', [TKindVR.vrSH], 'Reporting Priority' );
     Add( $100A, 'ReasonForRequestedProcedureCodeSequence', [TKindVR.vrSQ], 'Reason for Requested Procedure Code Sequence' );
     Add( $1010, 'NamesOfIntendedRecipientsOfResults', [TKindVR.vrPN], 'Names of Intended Recipients of Results' );
     Add( $1011, 'IntendedRecipientsOfResultsIdentificationSequence', [TKindVR.vrSQ], 'Intended Recipients of Results Identification Sequence' );
     Add( $1012, 'ReasonForPerformedProcedureCodeSequence', [TKindVR.vrSQ], 'Reason For Performed Procedure Code Sequence' );
     Add( $1060, 'RequestedProcedureDescriptionTrial', [TKindVR.vrLO], 'Requested Procedure Description (Trial)' );
     Add( $1101, 'PersonIdentificationCodeSequence', [TKindVR.vrSQ], 'Person Identification Code Sequence' );
     Add( $1102, 'PersonAddress', [TKindVR.vrST], 'Person''s Address' );
     Add( $1103, 'PersonTelephoneNumbers', [TKindVR.vrLO], 'Person''s Telephone Numbers' );
     Add( $1104, 'PersonTelecomInformation', [TKindVR.vrLT], 'Person''s Telecom Information' );
     Add( $1400, 'RequestedProcedureComments', [TKindVR.vrLT], 'Requested Procedure Comments' );
     Add( $2001, 'ReasonForTheImagingServiceRequest', [TKindVR.vrLO], 'Reason for the Imaging Service Request' );
     Add( $2004, 'IssueDateOfImagingServiceRequest', [TKindVR.vrDA], 'Issue Date of Imaging Service Request' );
     Add( $2005, 'IssueTimeOfImagingServiceRequest', [TKindVR.vrTM], 'Issue Time of Imaging Service Request' );
     Add( $2006, 'PlacerOrderNumberImagingServiceRequestRetired', [TKindVR.vrSH], 'Placer Order Number / Imaging Service Request (Retired)' );
     Add( $2007, 'FillerOrderNumberImagingServiceRequestRetired', [TKindVR.vrSH], 'Filler Order Number / Imaging Service Request (Retired)' );
     Add( $2008, 'OrderEnteredBy', [TKindVR.vrPN], 'Order Entered By' );
     Add( $2009, 'OrderEntererLocation', [TKindVR.vrSH], 'Order Enterer''s Location' );
     Add( $2010, 'OrderCallbackPhoneNumber', [TKindVR.vrSH], 'Order Callback Phone Number' );
     Add( $2011, 'OrderCallbackTelecomInformation', [TKindVR.vrLT], 'Order Callback Telecom Information' );
     Add( $2016, 'PlacerOrderNumberImagingServiceRequest', [TKindVR.vrLO], 'Placer Order Number / Imaging Service Request' );
     Add( $2017, 'FillerOrderNumberImagingServiceRequest', [TKindVR.vrLO], 'Filler Order Number / Imaging Service Request' );
     Add( $2400, 'ImagingServiceRequestComments', [TKindVR.vrLT], 'Imaging Service Request Comments' );
     Add( $3001, 'ConfidentialityConstraintOnPatientDataDescription', [TKindVR.vrLO], 'Confidentiality Constraint on Patient Data Description' );
     Add( $4001, 'GeneralPurposeScheduledProcedureStepStatus', [TKindVR.vrCS], 'General Purpose Scheduled Procedure Step Status' );
     Add( $4002, 'GeneralPurposePerformedProcedureStepStatus', [TKindVR.vrCS], 'General Purpose Performed Procedure Step Status' );
     Add( $4003, 'GeneralPurposeScheduledProcedureStepPriority', [TKindVR.vrCS], 'General Purpose Scheduled Procedure Step Priority' );
     Add( $4004, 'ScheduledProcessingApplicationsCodeSequence', [TKindVR.vrSQ], 'Scheduled Processing Applications Code Sequence' );
     Add( $4005, 'ScheduledProcedureStepStartDateTime', [TKindVR.vrDT], 'Scheduled Procedure Step Start DateTime' );
     Add( $4006, 'MultipleCopiesFlag', [TKindVR.vrCS], 'Multiple Copies Flag' );
     Add( $4007, 'PerformedProcessingApplicationsCodeSequence', [TKindVR.vrSQ], 'Performed Processing Applications Code Sequence' );
     Add( $4009, 'HumanPerformerCodeSequence', [TKindVR.vrSQ], 'Human Performer Code Sequence' );
     Add( $4010, 'ScheduledProcedureStepModificationDateTime', [TKindVR.vrDT], 'Scheduled Procedure Step Modification DateTime' );
     Add( $4011, 'ExpectedCompletionDateTime', [TKindVR.vrDT], 'Expected Completion DateTime' );
     Add( $4015, 'ResultingGeneralPurposePerformedProcedureStepsSequence', [TKindVR.vrSQ], 'Resulting General Purpose Performed Procedure Steps Sequence' );
     Add( $4016, 'ReferencedGeneralPurposeScheduledProcedureStepSequence', [TKindVR.vrSQ], 'Referenced General Purpose Scheduled Procedure Step Sequence' );
     Add( $4018, 'ScheduledWorkitemCodeSequence', [TKindVR.vrSQ], 'Scheduled Workitem Code Sequence' );
     Add( $4019, 'PerformedWorkitemCodeSequence', [TKindVR.vrSQ], 'Performed Workitem Code Sequence' );
     Add( $4020, 'InputAvailabilityFlag', [TKindVR.vrCS], 'Input Availability Flag' );
     Add( $4021, 'InputInformationSequence', [TKindVR.vrSQ], 'Input Information Sequence' );
     Add( $4022, 'RelevantInformationSequence', [TKindVR.vrSQ], 'Relevant Information Sequence' );
     Add( $4023, 'ReferencedGeneralPurposeScheduledProcedureStepTransactionUID', [TKindVR.vrUI], 'Referenced General Purpose Scheduled Procedure Step Transaction UID' );
     Add( $4025, 'ScheduledStationNameCodeSequence', [TKindVR.vrSQ], 'Scheduled Station Name Code Sequence' );
     Add( $4026, 'ScheduledStationClassCodeSequence', [TKindVR.vrSQ], 'Scheduled Station Class Code Sequence' );
     Add( $4027, 'ScheduledStationGeographicLocationCodeSequence', [TKindVR.vrSQ], 'Scheduled Station Geographic Location Code Sequence' );
     Add( $4028, 'PerformedStationNameCodeSequence', [TKindVR.vrSQ], 'Performed Station Name Code Sequence' );
     Add( $4029, 'PerformedStationClassCodeSequence', [TKindVR.vrSQ], 'Performed Station Class Code Sequence' );
     Add( $4030, 'PerformedStationGeographicLocationCodeSequence', [TKindVR.vrSQ], 'Performed Station Geographic Location Code Sequence' );
     Add( $4031, 'RequestedSubsequentWorkitemCodeSequence', [TKindVR.vrSQ], 'Requested Subsequent Workitem Code Sequence' );
     Add( $4032, 'NonDICOMOutputCodeSequence', [TKindVR.vrSQ], 'Non-DICOM Output Code Sequence' );
     Add( $4033, 'OutputInformationSequence', [TKindVR.vrSQ], 'Output Information Sequence' );
     Add( $4034, 'ScheduledHumanPerformersSequence', [TKindVR.vrSQ], 'Scheduled Human Performers Sequence' );
     Add( $4035, 'ActualHumanPerformersSequence', [TKindVR.vrSQ], 'Actual Human Performers Sequence' );
     Add( $4036, 'HumanPerformerOrganization', [TKindVR.vrLO], 'Human Performer''s Organization' );
     Add( $4037, 'HumanPerformerName', [TKindVR.vrPN], 'Human Performer''s Name' );
     Add( $4040, 'RawDataHandling', [TKindVR.vrCS], 'Raw Data Handling' );
     Add( $4041, 'InputReadinessState', [TKindVR.vrCS], 'Input Readiness State' );
     Add( $4050, 'PerformedProcedureStepStartDateTime', [TKindVR.vrDT], 'Performed Procedure Step Start DateTime' );
     Add( $4051, 'PerformedProcedureStepEndDateTime', [TKindVR.vrDT], 'Performed Procedure Step End DateTime' );
     Add( $4052, 'ProcedureStepCancellationDateTime', [TKindVR.vrDT], 'Procedure Step Cancellation DateTime' );
     Add( $4070, 'OutputDestinationSequence', [TKindVR.vrSQ], 'Output Destination Sequence' );
     Add( $4071, 'DICOMStorageSequence', [TKindVR.vrSQ], 'DICOM Storage Sequence' );
     Add( $4072, 'STOWRSStorageSequence', [TKindVR.vrSQ], 'STOW-RS Storage Sequence' );
     Add( $4073, 'StorageURL', [TKindVR.vrUR], 'Storage URL' );
     Add( $4074, 'XDSStorageSequence', [TKindVR.vrSQ], 'XDS Storage Sequence' );
     Add( $8302, 'EntranceDoseInmGy', [TKindVR.vrDS], 'Entrance Dose in mGy' );
     Add( $9092, 'ParametricMapFrameTypeSequence', [TKindVR.vrSQ], 'Parametric Map Frame Type Sequence' );
     Add( $9094, 'ReferencedImageRealWorldValueMappingSequence', [TKindVR.vrSQ], 'Referenced Image Real World Value Mapping Sequence' );
     Add( $9096, 'RealWorldValueMappingSequence', [TKindVR.vrSQ], 'Real World Value Mapping Sequence' );
     Add( $9098, 'PixelValueMappingCodeSequence', [TKindVR.vrSQ], 'Pixel Value Mapping Code Sequence' );
     Add( $9210, 'LUTLabel', [TKindVR.vrSH], 'LUT Label' );
     Add( $9211, 'RealWorldValueLastValueMapped', [TKindVR.vrUS,TKindVR.vrSS], 'Real World Value Last Value Mapped' );
     Add( $9212, 'RealWorldValueLUTData', [TKindVR.vrFD], 'Real World Value LUT Data' );
     Add( $9213, 'DoubleFloatRealWorldValueLastValueMapped', [TKindVR.vrFD], 'Double Float Real World Value Last Value Mapped' );
     Add( $9214, 'DoubleFloatRealWorldValueFirstValueMapped', [TKindVR.vrFD], 'Double Float Real World Value First Value Mapped' );
     Add( $9216, 'RealWorldValueFirstValueMapped', [TKindVR.vrUS,TKindVR.vrSS], 'Real World Value First Value Mapped' );
     Add( $9220, 'QuantityDefinitionSequence', [TKindVR.vrSQ], 'Quantity Definition Sequence' );
     Add( $9224, 'RealWorldValueIntercept', [TKindVR.vrFD], 'Real World Value Intercept' );
     Add( $9225, 'RealWorldValueSlope', [TKindVR.vrFD], 'Real World Value Slope' );
     Add( $A007, 'FindingsFlagTrial', [TKindVR.vrCS], 'Findings Flag (Trial)' );
     Add( $A010, 'RelationshipType', [TKindVR.vrCS], 'Relationship Type' );
     Add( $A020, 'FindingsSequenceTrial', [TKindVR.vrSQ], 'Findings Sequence (Trial)' );
     Add( $A021, 'FindingsGroupUIDTrial', [TKindVR.vrUI], 'Findings Group UID (Trial)' );
     Add( $A022, 'ReferencedFindingsGroupUIDTrial', [TKindVR.vrUI], 'Referenced Findings Group UID (Trial)' );
     Add( $A023, 'FindingsGroupRecordingDateTrial', [TKindVR.vrDA], 'Findings Group Recording Date (Trial)' );
     Add( $A024, 'FindingsGroupRecordingTimeTrial', [TKindVR.vrTM], 'Findings Group Recording Time (Trial)' );
     Add( $A026, 'FindingsSourceCategoryCodeSequenceTrial', [TKindVR.vrSQ], 'Findings Source Category Code Sequence (Trial)' );
     Add( $A027, 'VerifyingOrganization', [TKindVR.vrLO], 'Verifying Organization' );
     Add( $A028, 'DocumentingOrganizationIdentifierCodeSequenceTrial', [TKindVR.vrSQ], 'Documenting Organization Identifier Code Sequence (Trial)' );
     Add( $A030, 'VerificationDateTime', [TKindVR.vrDT], 'Verification DateTime' );
     Add( $A032, 'ObservationDateTime', [TKindVR.vrDT], 'Observation DateTime' );
     Add( $A040, 'ValueType', [TKindVR.vrCS], 'Value Type' );
     Add( $A043, 'ConceptNameCodeSequence', [TKindVR.vrSQ], 'Concept Name Code Sequence' );
     Add( $A047, 'MeasurementPrecisionDescriptionTrial', [TKindVR.vrLO], 'Measurement Precision Description (Trial)' );
     Add( $A050, 'ContinuityOfContent', [TKindVR.vrCS], 'Continuity Of Content' );
     Add( $A057, 'UrgencyOrPriorityAlertsTrial', [TKindVR.vrCS], 'Urgency or Priority Alerts (Trial)' );
     Add( $A060, 'SequencingIndicatorTrial', [TKindVR.vrLO], 'Sequencing Indicator (Trial)' );
     Add( $A066, 'DocumentIdentifierCodeSequenceTrial', [TKindVR.vrSQ], 'Document Identifier Code Sequence (Trial)' );
     Add( $A067, 'DocumentAuthorTrial', [TKindVR.vrPN], 'Document Author (Trial)' );
     Add( $A068, 'DocumentAuthorIdentifierCodeSequenceTrial', [TKindVR.vrSQ], 'Document Author Identifier Code Sequence (Trial)' );
     Add( $A070, 'IdentifierCodeSequenceTrial', [TKindVR.vrSQ], 'Identifier Code Sequence (Trial)' );
     Add( $A073, 'VerifyingObserverSequence', [TKindVR.vrSQ], 'Verifying Observer Sequence' );
     Add( $A074, 'ObjectBinaryIdentifierTrial', [TKindVR.vrOB], 'Object Binary Identifier (Trial)' );
     Add( $A075, 'VerifyingObserverName', [TKindVR.vrPN], 'Verifying Observer Name' );
     Add( $A076, 'DocumentingObserverIdentifierCodeSequenceTrial', [TKindVR.vrSQ], 'Documenting Observer Identifier Code Sequence (Trial)' );
     Add( $A078, 'AuthorObserverSequence', [TKindVR.vrSQ], 'Author Observer Sequence' );
     Add( $A07A, 'ParticipantSequence', [TKindVR.vrSQ], 'Participant Sequence' );
     Add( $A07C, 'CustodialOrganizationSequence', [TKindVR.vrSQ], 'Custodial Organization Sequence' );
     Add( $A080, 'ParticipationType', [TKindVR.vrCS], 'Participation Type' );
     Add( $A082, 'ParticipationDateTime', [TKindVR.vrDT], 'Participation DateTime' );
     Add( $A084, 'ObserverType', [TKindVR.vrCS], 'Observer Type' );
     Add( $A085, 'ProcedureIdentifierCodeSequenceTrial', [TKindVR.vrSQ], 'Procedure Identifier Code Sequence (Trial)' );
     Add( $A088, 'VerifyingObserverIdentificationCodeSequence', [TKindVR.vrSQ], 'Verifying Observer Identification Code Sequence' );
     Add( $A089, 'ObjectDirectoryBinaryIdentifierTrial', [TKindVR.vrOB], 'Object Directory Binary Identifier (Trial)' );
     Add( $A090, 'EquivalentCDADocumentSequence', [TKindVR.vrSQ], 'Equivalent CDA Document Sequence' );
     Add( $A0B0, 'ReferencedWaveformChannels', [TKindVR.vrUS], 'Referenced Waveform Channels' );
     Add( $A110, 'DateOfDocumentOrVerbalTransactionTrial', [TKindVR.vrDA], 'Date of Document or Verbal Transaction (Trial)' );
     Add( $A112, 'TimeOfDocumentCreationOrVerbalTransactionTrial', [TKindVR.vrTM], 'Time of Document Creation or Verbal Transaction (Trial)' );
     Add( $A120, 'DateTime', [TKindVR.vrDT], 'DateTime' );
     Add( $A121, 'Date', [TKindVR.vrDA], 'Date' );
     Add( $A122, 'Time', [TKindVR.vrTM], 'Time' );
     Add( $A123, 'PersonName', [TKindVR.vrPN], 'Person Name' );
     Add( $A124, 'UID', [TKindVR.vrUI], 'UID' );
     Add( $A125, 'ReportStatusIDTrial', [TKindVR.vrCS], 'Report Status ID (Trial)' );
     Add( $A130, 'TemporalRangeType', [TKindVR.vrCS], 'Temporal Range Type' );
     Add( $A132, 'ReferencedSamplePositions', [TKindVR.vrUL], 'Referenced Sample Positions' );
     Add( $A136, 'ReferencedFrameNumbers', [TKindVR.vrUS], 'Referenced Frame Numbers' );
     Add( $A138, 'ReferencedTimeOffsets', [TKindVR.vrDS], 'Referenced Time Offsets' );
     Add( $A13A, 'ReferencedDateTime', [TKindVR.vrDT], 'Referenced DateTime' );
     Add( $A160, 'TextValue', [TKindVR.vrUT], 'Text Value' );
     Add( $A161, 'FloatingPointValue', [TKindVR.vrFD], 'Floating Point Value' );
     Add( $A162, 'RationalNumeratorValue', [TKindVR.vrSL], 'Rational Numerator Value' );
     Add( $A163, 'RationalDenominatorValue', [TKindVR.vrUL], 'Rational Denominator Value' );
     Add( $A167, 'ObservationCategoryCodeSequenceTrial', [TKindVR.vrSQ], 'Observation Category Code Sequence (Trial)' );
     Add( $A168, 'ConceptCodeSequence', [TKindVR.vrSQ], 'Concept Code Sequence' );
     Add( $A16A, 'BibliographicCitationTrial', [TKindVR.vrST], 'Bibliographic Citation (Trial)' );
     Add( $A170, 'PurposeOfReferenceCodeSequence', [TKindVR.vrSQ], 'Purpose of Reference Code Sequence' );
     Add( $A171, 'ObservationUID', [TKindVR.vrUI], 'Observation UID' );
     Add( $A172, 'ReferencedObservationUIDTrial', [TKindVR.vrUI], 'Referenced Observation UID (Trial)' );
     Add( $A173, 'ReferencedObservationClassTrial', [TKindVR.vrCS], 'Referenced Observation Class (Trial)' );
     Add( $A174, 'ReferencedObjectObservationClassTrial', [TKindVR.vrCS], 'Referenced Object Observation Class (Trial)' );
     Add( $A180, 'AnnotationGroupNumber', [TKindVR.vrUS], 'Annotation Group Number' );
     Add( $A192, 'ObservationDateTrial', [TKindVR.vrDA], 'Observation Date (Trial)' );
     Add( $A193, 'ObservationTimeTrial', [TKindVR.vrTM], 'Observation Time (Trial)' );
     Add( $A194, 'MeasurementAutomationTrial', [TKindVR.vrCS], 'Measurement Automation (Trial)' );
     Add( $A195, 'ModifierCodeSequence', [TKindVR.vrSQ], 'Modifier Code Sequence' );
     Add( $A224, 'IdentificationDescriptionTrial', [TKindVR.vrST], 'Identification Description (Trial)' );
     Add( $A290, 'CoordinatesSetGeometricTypeTrial', [TKindVR.vrCS], 'Coordinates Set Geometric Type (Trial)' );
     Add( $A296, 'AlgorithmCodeSequenceTrial', [TKindVR.vrSQ], 'Algorithm Code Sequence (Trial)' );
     Add( $A297, 'AlgorithmDescriptionTrial', [TKindVR.vrST], 'Algorithm Description (Trial)' );
     Add( $A29A, 'PixelCoordinatesSetTrial', [TKindVR.vrSL], 'Pixel Coordinates Set (Trial)' );
     Add( $A300, 'MeasuredValueSequence', [TKindVR.vrSQ], 'Measured Value Sequence' );
     Add( $A301, 'NumericValueQualifierCodeSequence', [TKindVR.vrSQ], 'Numeric Value Qualifier Code Sequence' );
     Add( $A307, 'CurrentObserverTrial', [TKindVR.vrPN], 'Current Observer (Trial)' );
     Add( $A30A, 'NumericValue', [TKindVR.vrDS], 'Numeric Value' );
     Add( $A313, 'ReferencedAccessionSequenceTrial', [TKindVR.vrSQ], 'Referenced Accession Sequence (Trial)' );
     Add( $A33A, 'ReportStatusCommentTrial', [TKindVR.vrST], 'Report Status Comment (Trial)' );
     Add( $A340, 'ProcedureContextSequenceTrial', [TKindVR.vrSQ], 'Procedure Context Sequence (Trial)' );
     Add( $A352, 'VerbalSourceTrial', [TKindVR.vrPN], 'Verbal Source (Trial)' );
     Add( $A353, 'AddressTrial', [TKindVR.vrST], 'Address (Trial)' );
     Add( $A354, 'TelephoneNumberTrial', [TKindVR.vrLO], 'Telephone Number (Trial)' );
     Add( $A358, 'VerbalSourceIdentifierCodeSequenceTrial', [TKindVR.vrSQ], 'Verbal Source Identifier Code Sequence (Trial)' );
     Add( $A360, 'PredecessorDocumentsSequence', [TKindVR.vrSQ], 'Predecessor Documents Sequence' );
     Add( $A370, 'ReferencedRequestSequence', [TKindVR.vrSQ], 'Referenced Request Sequence' );
     Add( $A372, 'PerformedProcedureCodeSequence', [TKindVR.vrSQ], 'Performed Procedure Code Sequence' );
     Add( $A375, 'CurrentRequestedProcedureEvidenceSequence', [TKindVR.vrSQ], 'Current Requested Procedure Evidence Sequence' );
     Add( $A380, 'ReportDetailSequenceTrial', [TKindVR.vrSQ], 'Report Detail Sequence (Trial)' );
     Add( $A385, 'PertinentOtherEvidenceSequence', [TKindVR.vrSQ], 'Pertinent Other Evidence Sequence' );
     Add( $A390, 'HL7StructuredDocumentReferenceSequence', [TKindVR.vrSQ], 'HL7 Structured Document Reference Sequence' );
     Add( $A402, 'ObservationSubjectUIDTrial', [TKindVR.vrUI], 'Observation Subject UID (Trial)' );
     Add( $A403, 'ObservationSubjectClassTrial', [TKindVR.vrCS], 'Observation Subject Class (Trial)' );
     Add( $A404, 'ObservationSubjectTypeCodeSequenceTrial', [TKindVR.vrSQ], 'Observation Subject Type Code Sequence (Trial)' );
     Add( $A491, 'CompletionFlag', [TKindVR.vrCS], 'Completion Flag' );
     Add( $A492, 'CompletionFlagDescription', [TKindVR.vrLO], 'Completion Flag Description' );
     Add( $A493, 'VerificationFlag', [TKindVR.vrCS], 'Verification Flag' );
     Add( $A494, 'ArchiveRequested', [TKindVR.vrCS], 'Archive Requested' );
     Add( $A496, 'PreliminaryFlag', [TKindVR.vrCS], 'Preliminary Flag' );
     Add( $A504, 'ContentTemplateSequence', [TKindVR.vrSQ], 'Content Template Sequence' );
     Add( $A525, 'IdenticalDocumentsSequence', [TKindVR.vrSQ], 'Identical Documents Sequence' );
     Add( $A600, 'ObservationSubjectContextFlagTrial', [TKindVR.vrCS], 'Observation Subject Context Flag (Trial)' );
     Add( $A601, 'ObserverContextFlagTrial', [TKindVR.vrCS], 'Observer Context Flag (Trial)' );
     Add( $A603, 'ProcedureContextFlagTrial', [TKindVR.vrCS], 'Procedure Context Flag (Trial)' );
     Add( $A730, 'ContentSequence', [TKindVR.vrSQ], 'Content Sequence' );
     Add( $A731, 'RelationshipSequenceTrial', [TKindVR.vrSQ], 'Relationship Sequence (Trial)' );
     Add( $A732, 'RelationshipTypeCodeSequenceTrial', [TKindVR.vrSQ], 'Relationship Type Code Sequence (Trial)' );
     Add( $A744, 'LanguageCodeSequenceTrial', [TKindVR.vrSQ], 'Language Code Sequence (Trial)' );
     Add( $A992, 'UniformResourceLocatorTrial', [TKindVR.vrST], 'Uniform Resource Locator (Trial)' );
     Add( $B020, 'WaveformAnnotationSequence', [TKindVR.vrSQ], 'Waveform Annotation Sequence' );
     Add( $DB00, 'TemplateIdentifier', [TKindVR.vrCS], 'Template Identifier' );
     Add( $DB06, 'TemplateVersion', [TKindVR.vrDT], 'Template Version' );
     Add( $DB07, 'TemplateLocalVersion', [TKindVR.vrDT], 'Template Local Version' );
     Add( $DB0B, 'TemplateExtensionFlag', [TKindVR.vrCS], 'Template Extension Flag' );
     Add( $DB0C, 'TemplateExtensionOrganizationUID', [TKindVR.vrUI], 'Template Extension Organization UID' );
     Add( $DB0D, 'TemplateExtensionCreatorUID', [TKindVR.vrUI], 'Template Extension Creator UID' );
     Add( $DB73, 'ReferencedContentItemIdentifier', [TKindVR.vrUL], 'Referenced Content Item Identifier' );
     Add( $E001, 'HL7InstanceIdentifier', [TKindVR.vrST], 'HL7 Instance Identifier' );
     Add( $E004, 'HL7DocumentEffectiveTime', [TKindVR.vrDT], 'HL7 Document Effective Time' );
     Add( $E006, 'HL7DocumentTypeCodeSequence', [TKindVR.vrSQ], 'HL7 Document Type Code Sequence' );
     Add( $E008, 'DocumentClassCodeSequence', [TKindVR.vrSQ], 'Document Class Code Sequence' );
     Add( $E010, 'RetrieveURI', [TKindVR.vrUR], 'Retrieve URI' );
     Add( $E011, 'RetrieveLocationUID', [TKindVR.vrUI], 'Retrieve Location UID' );
     Add( $E020, 'TypeOfInstances', [TKindVR.vrCS], 'Type of Instances' );
     Add( $E021, 'DICOMRetrievalSequence', [TKindVR.vrSQ], 'DICOM Retrieval Sequence' );
     Add( $E022, 'DICOMMediaRetrievalSequence', [TKindVR.vrSQ], 'DICOM Media Retrieval Sequence' );
     Add( $E023, 'WADORetrievalSequence', [TKindVR.vrSQ], 'WADO Retrieval Sequence' );
     Add( $E024, 'XDSRetrievalSequence', [TKindVR.vrSQ], 'XDS Retrieval Sequence' );
     Add( $E025, 'WADORSRetrievalSequence', [TKindVR.vrSQ], 'WADO-RS Retrieval Sequence' );
     Add( $E030, 'RepositoryUniqueID', [TKindVR.vrUI], 'Repository Unique ID' );
     Add( $E031, 'HomeCommunityID', [TKindVR.vrUI], 'Home Community ID' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
