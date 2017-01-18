unit LUX.DICOM.Tags.G0040;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0040

     TdcmGrup0040 = class( TdcmGrup )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0040

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmGrup0040.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0001, 'ScheduledStationAETitle', [TTypeVR.vrAE], 'Scheduled Station AE Title' );
     Add( $0002, 'ScheduledProcedureStepStartDate', [TTypeVR.vrDA], 'Scheduled Procedure Step Start Date' );
     Add( $0003, 'ScheduledProcedureStepStartTime', [TTypeVR.vrTM], 'Scheduled Procedure Step Start Time' );
     Add( $0004, 'ScheduledProcedureStepEndDate', [TTypeVR.vrDA], 'Scheduled Procedure Step End Date' );
     Add( $0005, 'ScheduledProcedureStepEndTime', [TTypeVR.vrTM], 'Scheduled Procedure Step End Time' );
     Add( $0006, 'ScheduledPerformingPhysicianName', [TTypeVR.vrPN], 'Scheduled Performing Physician''s Name' );
     Add( $0007, 'ScheduledProcedureStepDescription', [TTypeVR.vrLO], 'Scheduled Procedure Step Description' );
     Add( $0008, 'ScheduledProtocolCodeSequence', [TTypeVR.vrSQ], 'Scheduled Protocol Code Sequence' );
     Add( $0009, 'ScheduledProcedureStepID', [TTypeVR.vrSH], 'Scheduled Procedure Step ID' );
     Add( $000A, 'StageCodeSequence', [TTypeVR.vrSQ], 'Stage Code Sequence' );
     Add( $000B, 'ScheduledPerformingPhysicianIdentificationSequence', [TTypeVR.vrSQ], 'Scheduled Performing Physician Identification Sequence' );
     Add( $0010, 'ScheduledStationName', [TTypeVR.vrSH], 'Scheduled Station Name' );
     Add( $0011, 'ScheduledProcedureStepLocation', [TTypeVR.vrSH], 'Scheduled Procedure Step Location' );
     Add( $0012, 'PreMedication', [TTypeVR.vrLO], 'Pre-Medication' );
     Add( $0020, 'ScheduledProcedureStepStatus', [TTypeVR.vrCS], 'Scheduled Procedure Step Status' );
     Add( $0026, 'OrderPlacerIdentifierSequence', [TTypeVR.vrSQ], 'Order Placer Identifier Sequence' );
     Add( $0027, 'OrderFillerIdentifierSequence', [TTypeVR.vrSQ], 'Order Filler Identifier Sequence' );
     Add( $0031, 'LocalNamespaceEntityID', [TTypeVR.vrUT], 'Local Namespace Entity ID' );
     Add( $0032, 'UniversalEntityID', [TTypeVR.vrUT], 'Universal Entity ID' );
     Add( $0033, 'UniversalEntityIDType', [TTypeVR.vrCS], 'Universal Entity ID Type' );
     Add( $0035, 'IdentifierTypeCode', [TTypeVR.vrCS], 'Identifier Type Code' );
     Add( $0036, 'AssigningFacilitySequence', [TTypeVR.vrSQ], 'Assigning Facility Sequence' );
     Add( $0039, 'AssigningJurisdictionCodeSequence', [TTypeVR.vrSQ], 'Assigning Jurisdiction Code Sequence' );
     Add( $003A, 'AssigningAgencyOrDepartmentCodeSequence', [TTypeVR.vrSQ], 'Assigning Agency or Department Code Sequence' );
     Add( $0100, 'ScheduledProcedureStepSequence', [TTypeVR.vrSQ], 'Scheduled Procedure Step Sequence' );
     Add( $0220, 'ReferencedNonImageCompositeSOPInstanceSequence', [TTypeVR.vrSQ], 'Referenced Non-Image Composite SOP Instance Sequence' );
     Add( $0241, 'PerformedStationAETitle', [TTypeVR.vrAE], 'Performed Station AE Title' );
     Add( $0242, 'PerformedStationName', [TTypeVR.vrSH], 'Performed Station Name' );
     Add( $0243, 'PerformedLocation', [TTypeVR.vrSH], 'Performed Location' );
     Add( $0244, 'PerformedProcedureStepStartDate', [TTypeVR.vrDA], 'Performed Procedure Step Start Date' );
     Add( $0245, 'PerformedProcedureStepStartTime', [TTypeVR.vrTM], 'Performed Procedure Step Start Time' );
     Add( $0250, 'PerformedProcedureStepEndDate', [TTypeVR.vrDA], 'Performed Procedure Step End Date' );
     Add( $0251, 'PerformedProcedureStepEndTime', [TTypeVR.vrTM], 'Performed Procedure Step End Time' );
     Add( $0252, 'PerformedProcedureStepStatus', [TTypeVR.vrCS], 'Performed Procedure Step Status' );
     Add( $0253, 'PerformedProcedureStepID', [TTypeVR.vrSH], 'Performed Procedure Step ID' );
     Add( $0254, 'PerformedProcedureStepDescription', [TTypeVR.vrLO], 'Performed Procedure Step Description' );
     Add( $0255, 'PerformedProcedureTypeDescription', [TTypeVR.vrLO], 'Performed Procedure Type Description' );
     Add( $0260, 'PerformedProtocolCodeSequence', [TTypeVR.vrSQ], 'Performed Protocol Code Sequence' );
     Add( $0261, 'PerformedProtocolType', [TTypeVR.vrCS], 'Performed Protocol Type' );
     Add( $0270, 'ScheduledStepAttributesSequence', [TTypeVR.vrSQ], 'Scheduled Step Attributes Sequence' );
     Add( $0275, 'RequestAttributesSequence', [TTypeVR.vrSQ], 'Request Attributes Sequence' );
     Add( $0280, 'CommentsOnThePerformedProcedureStep', [TTypeVR.vrST], 'Comments on the Performed Procedure Step' );
     Add( $0281, 'PerformedProcedureStepDiscontinuationReasonCodeSequence', [TTypeVR.vrSQ], 'Performed Procedure Step Discontinuation Reason Code Sequence' );
     Add( $0293, 'QuantitySequence', [TTypeVR.vrSQ], 'Quantity Sequence' );
     Add( $0294, 'Quantity', [TTypeVR.vrDS], 'Quantity' );
     Add( $0295, 'MeasuringUnitsSequence', [TTypeVR.vrSQ], 'Measuring Units Sequence' );
     Add( $0296, 'BillingItemSequence', [TTypeVR.vrSQ], 'Billing Item Sequence' );
     Add( $0300, 'TotalTimeOfFluoroscopy', [TTypeVR.vrUS], 'Total Time of Fluoroscopy' );
     Add( $0301, 'TotalNumberOfExposures', [TTypeVR.vrUS], 'Total Number of Exposures' );
     Add( $0302, 'EntranceDose', [TTypeVR.vrUS], 'Entrance Dose' );
     Add( $0303, 'ExposedArea', [TTypeVR.vrUS], 'Exposed Area' );
     Add( $0306, 'DistanceSourceToEntrance', [TTypeVR.vrDS], 'Distance Source to Entrance' );
     Add( $0307, 'DistanceSourceToSupport', [TTypeVR.vrDS], 'Distance Source to Support' );
     Add( $030E, 'ExposureDoseSequence', [TTypeVR.vrSQ], 'Exposure Dose Sequence' );
     Add( $0310, 'CommentsOnRadiationDose', [TTypeVR.vrST], 'Comments on Radiation Dose' );
     Add( $0312, 'XRayOutput', [TTypeVR.vrDS], 'X-Ray Output' );
     Add( $0314, 'HalfValueLayer', [TTypeVR.vrDS], 'Half Value Layer' );
     Add( $0316, 'OrganDose', [TTypeVR.vrDS], 'Organ Dose' );
     Add( $0318, 'OrganExposed', [TTypeVR.vrCS], 'Organ Exposed' );
     Add( $0320, 'BillingProcedureStepSequence', [TTypeVR.vrSQ], 'Billing Procedure Step Sequence' );
     Add( $0321, 'FilmConsumptionSequence', [TTypeVR.vrSQ], 'Film Consumption Sequence' );
     Add( $0324, 'BillingSuppliesAndDevicesSequence', [TTypeVR.vrSQ], 'Billing Supplies and Devices Sequence' );
     Add( $0330, 'ReferencedProcedureStepSequence', [TTypeVR.vrSQ], 'Referenced Procedure Step Sequence' );
     Add( $0340, 'PerformedSeriesSequence', [TTypeVR.vrSQ], 'Performed Series Sequence' );
     Add( $0400, 'CommentsOnTheScheduledProcedureStep', [TTypeVR.vrLT], 'Comments on the Scheduled Procedure Step' );
     Add( $0440, 'ProtocolContextSequence', [TTypeVR.vrSQ], 'Protocol Context Sequence' );
     Add( $0441, 'ContentItemModifierSequence', [TTypeVR.vrSQ], 'Content Item Modifier Sequence' );
     Add( $0500, 'ScheduledSpecimenSequence', [TTypeVR.vrSQ], 'Scheduled Specimen Sequence' );
     Add( $050A, 'SpecimenAccessionNumber', [TTypeVR.vrLO], 'Specimen Accession Number' );
     Add( $0512, 'ContainerIdentifier', [TTypeVR.vrLO], 'Container Identifier' );
     Add( $0513, 'IssuerOfTheContainerIdentifierSequence', [TTypeVR.vrSQ], 'Issuer of the Container Identifier Sequence' );
     Add( $0515, 'AlternateContainerIdentifierSequence', [TTypeVR.vrSQ], 'Alternate Container Identifier Sequence' );
     Add( $0518, 'ContainerTypeCodeSequence', [TTypeVR.vrSQ], 'Container Type Code Sequence' );
     Add( $051A, 'ContainerDescription', [TTypeVR.vrLO], 'Container Description' );
     Add( $0520, 'ContainerComponentSequence', [TTypeVR.vrSQ], 'Container Component Sequence' );
     Add( $0550, 'SpecimenSequence', [TTypeVR.vrSQ], 'Specimen Sequence' );
     Add( $0551, 'SpecimenIdentifier', [TTypeVR.vrLO], 'Specimen Identifier' );
     Add( $0552, 'SpecimenDescriptionSequenceTrial', [TTypeVR.vrSQ], 'Specimen Description Sequence (Trial)' );
     Add( $0553, 'SpecimenDescriptionTrial', [TTypeVR.vrST], 'Specimen Description (Trial)' );
     Add( $0554, 'SpecimenUID', [TTypeVR.vrUI], 'Specimen UID' );
     Add( $0555, 'AcquisitionContextSequence', [TTypeVR.vrSQ], 'Acquisition Context Sequence' );
     Add( $0556, 'AcquisitionContextDescription', [TTypeVR.vrST], 'Acquisition Context Description' );
     Add( $059A, 'SpecimenTypeCodeSequence', [TTypeVR.vrSQ], 'Specimen Type Code Sequence' );
     Add( $0560, 'SpecimenDescriptionSequence', [TTypeVR.vrSQ], 'Specimen Description Sequence' );
     Add( $0562, 'IssuerOfTheSpecimenIdentifierSequence', [TTypeVR.vrSQ], 'Issuer of the Specimen Identifier Sequence' );
     Add( $0600, 'SpecimenShortDescription', [TTypeVR.vrLO], 'Specimen Short Description' );
     Add( $0602, 'SpecimenDetailedDescription', [TTypeVR.vrUT], 'Specimen Detailed Description' );
     Add( $0610, 'SpecimenPreparationSequence', [TTypeVR.vrSQ], 'Specimen Preparation Sequence' );
     Add( $0612, 'SpecimenPreparationStepContentItemSequence', [TTypeVR.vrSQ], 'Specimen Preparation Step Content Item Sequence' );
     Add( $0620, 'SpecimenLocalizationContentItemSequence', [TTypeVR.vrSQ], 'Specimen Localization Content Item Sequence' );
     Add( $06FA, 'SlideIdentifier', [TTypeVR.vrLO], 'Slide Identifier' );
     Add( $071A, 'ImageCenterPointCoordinatesSequence', [TTypeVR.vrSQ], 'Image Center Point Coordinates Sequence' );
     Add( $072A, 'XOffsetInSlideCoordinateSystem', [TTypeVR.vrDS], 'X Offset in Slide Coordinate System' );
     Add( $073A, 'YOffsetInSlideCoordinateSystem', [TTypeVR.vrDS], 'Y Offset in Slide Coordinate System' );
     Add( $074A, 'ZOffsetInSlideCoordinateSystem', [TTypeVR.vrDS], 'Z Offset in Slide Coordinate System' );
     Add( $08D8, 'PixelSpacingSequence', [TTypeVR.vrSQ], 'Pixel Spacing Sequence' );
     Add( $08DA, 'CoordinateSystemAxisCodeSequence', [TTypeVR.vrSQ], 'Coordinate System Axis Code Sequence' );
     Add( $08EA, 'MeasurementUnitsCodeSequence', [TTypeVR.vrSQ], 'Measurement Units Code Sequence' );
     Add( $09F8, 'VitalStainCodeSequenceTrial', [TTypeVR.vrSQ], 'Vital Stain Code Sequence (Trial)' );
     Add( $1001, 'RequestedProcedureID', [TTypeVR.vrSH], 'Requested Procedure ID' );
     Add( $1002, 'ReasonForTheRequestedProcedure', [TTypeVR.vrLO], 'Reason for the Requested Procedure' );
     Add( $1003, 'RequestedProcedurePriority', [TTypeVR.vrSH], 'Requested Procedure Priority' );
     Add( $1004, 'PatientTransportArrangements', [TTypeVR.vrLO], 'Patient Transport Arrangements' );
     Add( $1005, 'RequestedProcedureLocation', [TTypeVR.vrLO], 'Requested Procedure Location' );
     Add( $1006, 'PlacerOrderNumberProcedure', [TTypeVR.vrSH], 'Placer Order Number / Procedure' );
     Add( $1007, 'FillerOrderNumberProcedure', [TTypeVR.vrSH], 'Filler Order Number / Procedure' );
     Add( $1008, 'ConfidentialityCode', [TTypeVR.vrLO], 'Confidentiality Code' );
     Add( $1009, 'ReportingPriority', [TTypeVR.vrSH], 'Reporting Priority' );
     Add( $100A, 'ReasonForRequestedProcedureCodeSequence', [TTypeVR.vrSQ], 'Reason for Requested Procedure Code Sequence' );
     Add( $1010, 'NamesOfIntendedRecipientsOfResults', [TTypeVR.vrPN], 'Names of Intended Recipients of Results' );
     Add( $1011, 'IntendedRecipientsOfResultsIdentificationSequence', [TTypeVR.vrSQ], 'Intended Recipients of Results Identification Sequence' );
     Add( $1012, 'ReasonForPerformedProcedureCodeSequence', [TTypeVR.vrSQ], 'Reason For Performed Procedure Code Sequence' );
     Add( $1060, 'RequestedProcedureDescriptionTrial', [TTypeVR.vrLO], 'Requested Procedure Description (Trial)' );
     Add( $1101, 'PersonIdentificationCodeSequence', [TTypeVR.vrSQ], 'Person Identification Code Sequence' );
     Add( $1102, 'PersonAddress', [TTypeVR.vrST], 'Person''s Address' );
     Add( $1103, 'PersonTelephoneNumbers', [TTypeVR.vrLO], 'Person''s Telephone Numbers' );
     Add( $1104, 'PersonTelecomInformation', [TTypeVR.vrLT], 'Person''s Telecom Information' );
     Add( $1400, 'RequestedProcedureComments', [TTypeVR.vrLT], 'Requested Procedure Comments' );
     Add( $2001, 'ReasonForTheImagingServiceRequest', [TTypeVR.vrLO], 'Reason for the Imaging Service Request' );
     Add( $2004, 'IssueDateOfImagingServiceRequest', [TTypeVR.vrDA], 'Issue Date of Imaging Service Request' );
     Add( $2005, 'IssueTimeOfImagingServiceRequest', [TTypeVR.vrTM], 'Issue Time of Imaging Service Request' );
     Add( $2006, 'PlacerOrderNumberImagingServiceRequestRetired', [TTypeVR.vrSH], 'Placer Order Number / Imaging Service Request (Retired)' );
     Add( $2007, 'FillerOrderNumberImagingServiceRequestRetired', [TTypeVR.vrSH], 'Filler Order Number / Imaging Service Request (Retired)' );
     Add( $2008, 'OrderEnteredBy', [TTypeVR.vrPN], 'Order Entered By' );
     Add( $2009, 'OrderEntererLocation', [TTypeVR.vrSH], 'Order Enterer''s Location' );
     Add( $2010, 'OrderCallbackPhoneNumber', [TTypeVR.vrSH], 'Order Callback Phone Number' );
     Add( $2011, 'OrderCallbackTelecomInformation', [TTypeVR.vrLT], 'Order Callback Telecom Information' );
     Add( $2016, 'PlacerOrderNumberImagingServiceRequest', [TTypeVR.vrLO], 'Placer Order Number / Imaging Service Request' );
     Add( $2017, 'FillerOrderNumberImagingServiceRequest', [TTypeVR.vrLO], 'Filler Order Number / Imaging Service Request' );
     Add( $2400, 'ImagingServiceRequestComments', [TTypeVR.vrLT], 'Imaging Service Request Comments' );
     Add( $3001, 'ConfidentialityConstraintOnPatientDataDescription', [TTypeVR.vrLO], 'Confidentiality Constraint on Patient Data Description' );
     Add( $4001, 'GeneralPurposeScheduledProcedureStepStatus', [TTypeVR.vrCS], 'General Purpose Scheduled Procedure Step Status' );
     Add( $4002, 'GeneralPurposePerformedProcedureStepStatus', [TTypeVR.vrCS], 'General Purpose Performed Procedure Step Status' );
     Add( $4003, 'GeneralPurposeScheduledProcedureStepPriority', [TTypeVR.vrCS], 'General Purpose Scheduled Procedure Step Priority' );
     Add( $4004, 'ScheduledProcessingApplicationsCodeSequence', [TTypeVR.vrSQ], 'Scheduled Processing Applications Code Sequence' );
     Add( $4005, 'ScheduledProcedureStepStartDateTime', [TTypeVR.vrDT], 'Scheduled Procedure Step Start DateTime' );
     Add( $4006, 'MultipleCopiesFlag', [TTypeVR.vrCS], 'Multiple Copies Flag' );
     Add( $4007, 'PerformedProcessingApplicationsCodeSequence', [TTypeVR.vrSQ], 'Performed Processing Applications Code Sequence' );
     Add( $4009, 'HumanPerformerCodeSequence', [TTypeVR.vrSQ], 'Human Performer Code Sequence' );
     Add( $4010, 'ScheduledProcedureStepModificationDateTime', [TTypeVR.vrDT], 'Scheduled Procedure Step Modification DateTime' );
     Add( $4011, 'ExpectedCompletionDateTime', [TTypeVR.vrDT], 'Expected Completion DateTime' );
     Add( $4015, 'ResultingGeneralPurposePerformedProcedureStepsSequence', [TTypeVR.vrSQ], 'Resulting General Purpose Performed Procedure Steps Sequence' );
     Add( $4016, 'ReferencedGeneralPurposeScheduledProcedureStepSequence', [TTypeVR.vrSQ], 'Referenced General Purpose Scheduled Procedure Step Sequence' );
     Add( $4018, 'ScheduledWorkitemCodeSequence', [TTypeVR.vrSQ], 'Scheduled Workitem Code Sequence' );
     Add( $4019, 'PerformedWorkitemCodeSequence', [TTypeVR.vrSQ], 'Performed Workitem Code Sequence' );
     Add( $4020, 'InputAvailabilityFlag', [TTypeVR.vrCS], 'Input Availability Flag' );
     Add( $4021, 'InputInformationSequence', [TTypeVR.vrSQ], 'Input Information Sequence' );
     Add( $4022, 'RelevantInformationSequence', [TTypeVR.vrSQ], 'Relevant Information Sequence' );
     Add( $4023, 'ReferencedGeneralPurposeScheduledProcedureStepTransactionUID', [TTypeVR.vrUI], 'Referenced General Purpose Scheduled Procedure Step Transaction UID' );
     Add( $4025, 'ScheduledStationNameCodeSequence', [TTypeVR.vrSQ], 'Scheduled Station Name Code Sequence' );
     Add( $4026, 'ScheduledStationClassCodeSequence', [TTypeVR.vrSQ], 'Scheduled Station Class Code Sequence' );
     Add( $4027, 'ScheduledStationGeographicLocationCodeSequence', [TTypeVR.vrSQ], 'Scheduled Station Geographic Location Code Sequence' );
     Add( $4028, 'PerformedStationNameCodeSequence', [TTypeVR.vrSQ], 'Performed Station Name Code Sequence' );
     Add( $4029, 'PerformedStationClassCodeSequence', [TTypeVR.vrSQ], 'Performed Station Class Code Sequence' );
     Add( $4030, 'PerformedStationGeographicLocationCodeSequence', [TTypeVR.vrSQ], 'Performed Station Geographic Location Code Sequence' );
     Add( $4031, 'RequestedSubsequentWorkitemCodeSequence', [TTypeVR.vrSQ], 'Requested Subsequent Workitem Code Sequence' );
     Add( $4032, 'NonDICOMOutputCodeSequence', [TTypeVR.vrSQ], 'Non-DICOM Output Code Sequence' );
     Add( $4033, 'OutputInformationSequence', [TTypeVR.vrSQ], 'Output Information Sequence' );
     Add( $4034, 'ScheduledHumanPerformersSequence', [TTypeVR.vrSQ], 'Scheduled Human Performers Sequence' );
     Add( $4035, 'ActualHumanPerformersSequence', [TTypeVR.vrSQ], 'Actual Human Performers Sequence' );
     Add( $4036, 'HumanPerformerOrganization', [TTypeVR.vrLO], 'Human Performer''s Organization' );
     Add( $4037, 'HumanPerformerName', [TTypeVR.vrPN], 'Human Performer''s Name' );
     Add( $4040, 'RawDataHandling', [TTypeVR.vrCS], 'Raw Data Handling' );
     Add( $4041, 'InputReadinessState', [TTypeVR.vrCS], 'Input Readiness State' );
     Add( $4050, 'PerformedProcedureStepStartDateTime', [TTypeVR.vrDT], 'Performed Procedure Step Start DateTime' );
     Add( $4051, 'PerformedProcedureStepEndDateTime', [TTypeVR.vrDT], 'Performed Procedure Step End DateTime' );
     Add( $4052, 'ProcedureStepCancellationDateTime', [TTypeVR.vrDT], 'Procedure Step Cancellation DateTime' );
     Add( $4070, 'OutputDestinationSequence', [TTypeVR.vrSQ], 'Output Destination Sequence' );
     Add( $4071, 'DICOMStorageSequence', [TTypeVR.vrSQ], 'DICOM Storage Sequence' );
     Add( $4072, 'STOWRSStorageSequence', [TTypeVR.vrSQ], 'STOW-RS Storage Sequence' );
     Add( $4073, 'StorageURL', [TTypeVR.vrUR], 'Storage URL' );
     Add( $4074, 'XDSStorageSequence', [TTypeVR.vrSQ], 'XDS Storage Sequence' );
     Add( $8302, 'EntranceDoseInmGy', [TTypeVR.vrDS], 'Entrance Dose in mGy' );
     Add( $9092, 'ParametricMapFrameTypeSequence', [TTypeVR.vrSQ], 'Parametric Map Frame Type Sequence' );
     Add( $9094, 'ReferencedImageRealWorldValueMappingSequence', [TTypeVR.vrSQ], 'Referenced Image Real World Value Mapping Sequence' );
     Add( $9096, 'RealWorldValueMappingSequence', [TTypeVR.vrSQ], 'Real World Value Mapping Sequence' );
     Add( $9098, 'PixelValueMappingCodeSequence', [TTypeVR.vrSQ], 'Pixel Value Mapping Code Sequence' );
     Add( $9210, 'LUTLabel', [TTypeVR.vrSH], 'LUT Label' );
     Add( $9211, 'RealWorldValueLastValueMapped', [TTypeVR.vrUS,TTypeVR.vrSS], 'Real World Value Last Value Mapped' );
     Add( $9212, 'RealWorldValueLUTData', [TTypeVR.vrFD], 'Real World Value LUT Data' );
     Add( $9213, 'DoubleFloatRealWorldValueLastValueMapped', [TTypeVR.vrFD], 'Double Float Real World Value Last Value Mapped' );
     Add( $9214, 'DoubleFloatRealWorldValueFirstValueMapped', [TTypeVR.vrFD], 'Double Float Real World Value First Value Mapped' );
     Add( $9216, 'RealWorldValueFirstValueMapped', [TTypeVR.vrUS,TTypeVR.vrSS], 'Real World Value First Value Mapped' );
     Add( $9220, 'QuantityDefinitionSequence', [TTypeVR.vrSQ], 'Quantity Definition Sequence' );
     Add( $9224, 'RealWorldValueIntercept', [TTypeVR.vrFD], 'Real World Value Intercept' );
     Add( $9225, 'RealWorldValueSlope', [TTypeVR.vrFD], 'Real World Value Slope' );
     Add( $A007, 'FindingsFlagTrial', [TTypeVR.vrCS], 'Findings Flag (Trial)' );
     Add( $A010, 'RelationshipType', [TTypeVR.vrCS], 'Relationship Type' );
     Add( $A020, 'FindingsSequenceTrial', [TTypeVR.vrSQ], 'Findings Sequence (Trial)' );
     Add( $A021, 'FindingsGroupUIDTrial', [TTypeVR.vrUI], 'Findings Group UID (Trial)' );
     Add( $A022, 'ReferencedFindingsGroupUIDTrial', [TTypeVR.vrUI], 'Referenced Findings Group UID (Trial)' );
     Add( $A023, 'FindingsGroupRecordingDateTrial', [TTypeVR.vrDA], 'Findings Group Recording Date (Trial)' );
     Add( $A024, 'FindingsGroupRecordingTimeTrial', [TTypeVR.vrTM], 'Findings Group Recording Time (Trial)' );
     Add( $A026, 'FindingsSourceCategoryCodeSequenceTrial', [TTypeVR.vrSQ], 'Findings Source Category Code Sequence (Trial)' );
     Add( $A027, 'VerifyingOrganization', [TTypeVR.vrLO], 'Verifying Organization' );
     Add( $A028, 'DocumentingOrganizationIdentifierCodeSequenceTrial', [TTypeVR.vrSQ], 'Documenting Organization Identifier Code Sequence (Trial)' );
     Add( $A030, 'VerificationDateTime', [TTypeVR.vrDT], 'Verification DateTime' );
     Add( $A032, 'ObservationDateTime', [TTypeVR.vrDT], 'Observation DateTime' );
     Add( $A040, 'ValueType', [TTypeVR.vrCS], 'Value Type' );
     Add( $A043, 'ConceptNameCodeSequence', [TTypeVR.vrSQ], 'Concept Name Code Sequence' );
     Add( $A047, 'MeasurementPrecisionDescriptionTrial', [TTypeVR.vrLO], 'Measurement Precision Description (Trial)' );
     Add( $A050, 'ContinuityOfContent', [TTypeVR.vrCS], 'Continuity Of Content' );
     Add( $A057, 'UrgencyOrPriorityAlertsTrial', [TTypeVR.vrCS], 'Urgency or Priority Alerts (Trial)' );
     Add( $A060, 'SequencingIndicatorTrial', [TTypeVR.vrLO], 'Sequencing Indicator (Trial)' );
     Add( $A066, 'DocumentIdentifierCodeSequenceTrial', [TTypeVR.vrSQ], 'Document Identifier Code Sequence (Trial)' );
     Add( $A067, 'DocumentAuthorTrial', [TTypeVR.vrPN], 'Document Author (Trial)' );
     Add( $A068, 'DocumentAuthorIdentifierCodeSequenceTrial', [TTypeVR.vrSQ], 'Document Author Identifier Code Sequence (Trial)' );
     Add( $A070, 'IdentifierCodeSequenceTrial', [TTypeVR.vrSQ], 'Identifier Code Sequence (Trial)' );
     Add( $A073, 'VerifyingObserverSequence', [TTypeVR.vrSQ], 'Verifying Observer Sequence' );
     Add( $A074, 'ObjectBinaryIdentifierTrial', [TTypeVR.vrOB], 'Object Binary Identifier (Trial)' );
     Add( $A075, 'VerifyingObserverName', [TTypeVR.vrPN], 'Verifying Observer Name' );
     Add( $A076, 'DocumentingObserverIdentifierCodeSequenceTrial', [TTypeVR.vrSQ], 'Documenting Observer Identifier Code Sequence (Trial)' );
     Add( $A078, 'AuthorObserverSequence', [TTypeVR.vrSQ], 'Author Observer Sequence' );
     Add( $A07A, 'ParticipantSequence', [TTypeVR.vrSQ], 'Participant Sequence' );
     Add( $A07C, 'CustodialOrganizationSequence', [TTypeVR.vrSQ], 'Custodial Organization Sequence' );
     Add( $A080, 'ParticipationType', [TTypeVR.vrCS], 'Participation Type' );
     Add( $A082, 'ParticipationDateTime', [TTypeVR.vrDT], 'Participation DateTime' );
     Add( $A084, 'ObserverType', [TTypeVR.vrCS], 'Observer Type' );
     Add( $A085, 'ProcedureIdentifierCodeSequenceTrial', [TTypeVR.vrSQ], 'Procedure Identifier Code Sequence (Trial)' );
     Add( $A088, 'VerifyingObserverIdentificationCodeSequence', [TTypeVR.vrSQ], 'Verifying Observer Identification Code Sequence' );
     Add( $A089, 'ObjectDirectoryBinaryIdentifierTrial', [TTypeVR.vrOB], 'Object Directory Binary Identifier (Trial)' );
     Add( $A090, 'EquivalentCDADocumentSequence', [TTypeVR.vrSQ], 'Equivalent CDA Document Sequence' );
     Add( $A0B0, 'ReferencedWaveformChannels', [TTypeVR.vrUS], 'Referenced Waveform Channels' );
     Add( $A110, 'DateOfDocumentOrVerbalTransactionTrial', [TTypeVR.vrDA], 'Date of Document or Verbal Transaction (Trial)' );
     Add( $A112, 'TimeOfDocumentCreationOrVerbalTransactionTrial', [TTypeVR.vrTM], 'Time of Document Creation or Verbal Transaction (Trial)' );
     Add( $A120, 'DateTime', [TTypeVR.vrDT], 'DateTime' );
     Add( $A121, 'Date', [TTypeVR.vrDA], 'Date' );
     Add( $A122, 'Time', [TTypeVR.vrTM], 'Time' );
     Add( $A123, 'PersonName', [TTypeVR.vrPN], 'Person Name' );
     Add( $A124, 'UID', [TTypeVR.vrUI], 'UID' );
     Add( $A125, 'ReportStatusIDTrial', [TTypeVR.vrCS], 'Report Status ID (Trial)' );
     Add( $A130, 'TemporalRangeType', [TTypeVR.vrCS], 'Temporal Range Type' );
     Add( $A132, 'ReferencedSamplePositions', [TTypeVR.vrUL], 'Referenced Sample Positions' );
     Add( $A136, 'ReferencedFrameNumbers', [TTypeVR.vrUS], 'Referenced Frame Numbers' );
     Add( $A138, 'ReferencedTimeOffsets', [TTypeVR.vrDS], 'Referenced Time Offsets' );
     Add( $A13A, 'ReferencedDateTime', [TTypeVR.vrDT], 'Referenced DateTime' );
     Add( $A160, 'TextValue', [TTypeVR.vrUT], 'Text Value' );
     Add( $A161, 'FloatingPointValue', [TTypeVR.vrFD], 'Floating Point Value' );
     Add( $A162, 'RationalNumeratorValue', [TTypeVR.vrSL], 'Rational Numerator Value' );
     Add( $A163, 'RationalDenominatorValue', [TTypeVR.vrUL], 'Rational Denominator Value' );
     Add( $A167, 'ObservationCategoryCodeSequenceTrial', [TTypeVR.vrSQ], 'Observation Category Code Sequence (Trial)' );
     Add( $A168, 'ConceptCodeSequence', [TTypeVR.vrSQ], 'Concept Code Sequence' );
     Add( $A16A, 'BibliographicCitationTrial', [TTypeVR.vrST], 'Bibliographic Citation (Trial)' );
     Add( $A170, 'PurposeOfReferenceCodeSequence', [TTypeVR.vrSQ], 'Purpose of Reference Code Sequence' );
     Add( $A171, 'ObservationUID', [TTypeVR.vrUI], 'Observation UID' );
     Add( $A172, 'ReferencedObservationUIDTrial', [TTypeVR.vrUI], 'Referenced Observation UID (Trial)' );
     Add( $A173, 'ReferencedObservationClassTrial', [TTypeVR.vrCS], 'Referenced Observation Class (Trial)' );
     Add( $A174, 'ReferencedObjectObservationClassTrial', [TTypeVR.vrCS], 'Referenced Object Observation Class (Trial)' );
     Add( $A180, 'AnnotationGroupNumber', [TTypeVR.vrUS], 'Annotation Group Number' );
     Add( $A192, 'ObservationDateTrial', [TTypeVR.vrDA], 'Observation Date (Trial)' );
     Add( $A193, 'ObservationTimeTrial', [TTypeVR.vrTM], 'Observation Time (Trial)' );
     Add( $A194, 'MeasurementAutomationTrial', [TTypeVR.vrCS], 'Measurement Automation (Trial)' );
     Add( $A195, 'ModifierCodeSequence', [TTypeVR.vrSQ], 'Modifier Code Sequence' );
     Add( $A224, 'IdentificationDescriptionTrial', [TTypeVR.vrST], 'Identification Description (Trial)' );
     Add( $A290, 'CoordinatesSetGeometricTypeTrial', [TTypeVR.vrCS], 'Coordinates Set Geometric Type (Trial)' );
     Add( $A296, 'AlgorithmCodeSequenceTrial', [TTypeVR.vrSQ], 'Algorithm Code Sequence (Trial)' );
     Add( $A297, 'AlgorithmDescriptionTrial', [TTypeVR.vrST], 'Algorithm Description (Trial)' );
     Add( $A29A, 'PixelCoordinatesSetTrial', [TTypeVR.vrSL], 'Pixel Coordinates Set (Trial)' );
     Add( $A300, 'MeasuredValueSequence', [TTypeVR.vrSQ], 'Measured Value Sequence' );
     Add( $A301, 'NumericValueQualifierCodeSequence', [TTypeVR.vrSQ], 'Numeric Value Qualifier Code Sequence' );
     Add( $A307, 'CurrentObserverTrial', [TTypeVR.vrPN], 'Current Observer (Trial)' );
     Add( $A30A, 'NumericValue', [TTypeVR.vrDS], 'Numeric Value' );
     Add( $A313, 'ReferencedAccessionSequenceTrial', [TTypeVR.vrSQ], 'Referenced Accession Sequence (Trial)' );
     Add( $A33A, 'ReportStatusCommentTrial', [TTypeVR.vrST], 'Report Status Comment (Trial)' );
     Add( $A340, 'ProcedureContextSequenceTrial', [TTypeVR.vrSQ], 'Procedure Context Sequence (Trial)' );
     Add( $A352, 'VerbalSourceTrial', [TTypeVR.vrPN], 'Verbal Source (Trial)' );
     Add( $A353, 'AddressTrial', [TTypeVR.vrST], 'Address (Trial)' );
     Add( $A354, 'TelephoneNumberTrial', [TTypeVR.vrLO], 'Telephone Number (Trial)' );
     Add( $A358, 'VerbalSourceIdentifierCodeSequenceTrial', [TTypeVR.vrSQ], 'Verbal Source Identifier Code Sequence (Trial)' );
     Add( $A360, 'PredecessorDocumentsSequence', [TTypeVR.vrSQ], 'Predecessor Documents Sequence' );
     Add( $A370, 'ReferencedRequestSequence', [TTypeVR.vrSQ], 'Referenced Request Sequence' );
     Add( $A372, 'PerformedProcedureCodeSequence', [TTypeVR.vrSQ], 'Performed Procedure Code Sequence' );
     Add( $A375, 'CurrentRequestedProcedureEvidenceSequence', [TTypeVR.vrSQ], 'Current Requested Procedure Evidence Sequence' );
     Add( $A380, 'ReportDetailSequenceTrial', [TTypeVR.vrSQ], 'Report Detail Sequence (Trial)' );
     Add( $A385, 'PertinentOtherEvidenceSequence', [TTypeVR.vrSQ], 'Pertinent Other Evidence Sequence' );
     Add( $A390, 'HL7StructuredDocumentReferenceSequence', [TTypeVR.vrSQ], 'HL7 Structured Document Reference Sequence' );
     Add( $A402, 'ObservationSubjectUIDTrial', [TTypeVR.vrUI], 'Observation Subject UID (Trial)' );
     Add( $A403, 'ObservationSubjectClassTrial', [TTypeVR.vrCS], 'Observation Subject Class (Trial)' );
     Add( $A404, 'ObservationSubjectTypeCodeSequenceTrial', [TTypeVR.vrSQ], 'Observation Subject Type Code Sequence (Trial)' );
     Add( $A491, 'CompletionFlag', [TTypeVR.vrCS], 'Completion Flag' );
     Add( $A492, 'CompletionFlagDescription', [TTypeVR.vrLO], 'Completion Flag Description' );
     Add( $A493, 'VerificationFlag', [TTypeVR.vrCS], 'Verification Flag' );
     Add( $A494, 'ArchiveRequested', [TTypeVR.vrCS], 'Archive Requested' );
     Add( $A496, 'PreliminaryFlag', [TTypeVR.vrCS], 'Preliminary Flag' );
     Add( $A504, 'ContentTemplateSequence', [TTypeVR.vrSQ], 'Content Template Sequence' );
     Add( $A525, 'IdenticalDocumentsSequence', [TTypeVR.vrSQ], 'Identical Documents Sequence' );
     Add( $A600, 'ObservationSubjectContextFlagTrial', [TTypeVR.vrCS], 'Observation Subject Context Flag (Trial)' );
     Add( $A601, 'ObserverContextFlagTrial', [TTypeVR.vrCS], 'Observer Context Flag (Trial)' );
     Add( $A603, 'ProcedureContextFlagTrial', [TTypeVR.vrCS], 'Procedure Context Flag (Trial)' );
     Add( $A730, 'ContentSequence', [TTypeVR.vrSQ], 'Content Sequence' );
     Add( $A731, 'RelationshipSequenceTrial', [TTypeVR.vrSQ], 'Relationship Sequence (Trial)' );
     Add( $A732, 'RelationshipTypeCodeSequenceTrial', [TTypeVR.vrSQ], 'Relationship Type Code Sequence (Trial)' );
     Add( $A744, 'LanguageCodeSequenceTrial', [TTypeVR.vrSQ], 'Language Code Sequence (Trial)' );
     Add( $A992, 'UniformResourceLocatorTrial', [TTypeVR.vrST], 'Uniform Resource Locator (Trial)' );
     Add( $B020, 'WaveformAnnotationSequence', [TTypeVR.vrSQ], 'Waveform Annotation Sequence' );
     Add( $DB00, 'TemplateIdentifier', [TTypeVR.vrCS], 'Template Identifier' );
     Add( $DB06, 'TemplateVersion', [TTypeVR.vrDT], 'Template Version' );
     Add( $DB07, 'TemplateLocalVersion', [TTypeVR.vrDT], 'Template Local Version' );
     Add( $DB0B, 'TemplateExtensionFlag', [TTypeVR.vrCS], 'Template Extension Flag' );
     Add( $DB0C, 'TemplateExtensionOrganizationUID', [TTypeVR.vrUI], 'Template Extension Organization UID' );
     Add( $DB0D, 'TemplateExtensionCreatorUID', [TTypeVR.vrUI], 'Template Extension Creator UID' );
     Add( $DB73, 'ReferencedContentItemIdentifier', [TTypeVR.vrUL], 'Referenced Content Item Identifier' );
     Add( $E001, 'HL7InstanceIdentifier', [TTypeVR.vrST], 'HL7 Instance Identifier' );
     Add( $E004, 'HL7DocumentEffectiveTime', [TTypeVR.vrDT], 'HL7 Document Effective Time' );
     Add( $E006, 'HL7DocumentTypeCodeSequence', [TTypeVR.vrSQ], 'HL7 Document Type Code Sequence' );
     Add( $E008, 'DocumentClassCodeSequence', [TTypeVR.vrSQ], 'Document Class Code Sequence' );
     Add( $E010, 'RetrieveURI', [TTypeVR.vrUR], 'Retrieve URI' );
     Add( $E011, 'RetrieveLocationUID', [TTypeVR.vrUI], 'Retrieve Location UID' );
     Add( $E020, 'TypeOfInstances', [TTypeVR.vrCS], 'Type of Instances' );
     Add( $E021, 'DICOMRetrievalSequence', [TTypeVR.vrSQ], 'DICOM Retrieval Sequence' );
     Add( $E022, 'DICOMMediaRetrievalSequence', [TTypeVR.vrSQ], 'DICOM Media Retrieval Sequence' );
     Add( $E023, 'WADORetrievalSequence', [TTypeVR.vrSQ], 'WADO Retrieval Sequence' );
     Add( $E024, 'XDSRetrievalSequence', [TTypeVR.vrSQ], 'XDS Retrieval Sequence' );
     Add( $E025, 'WADORSRetrievalSequence', [TTypeVR.vrSQ], 'WADO-RS Retrieval Sequence' );
     Add( $E030, 'RepositoryUniqueID', [TTypeVR.vrUI], 'Repository Unique ID' );
     Add( $E031, 'HomeCommunityID', [TTypeVR.vrUI], 'Home Community ID' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
