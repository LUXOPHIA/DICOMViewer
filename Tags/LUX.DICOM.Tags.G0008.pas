unit LUX.DICOM.Tags.G0008;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0008

     TdcmGrup0008 = class( TdcmGrup )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0008

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmGrup0008.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0001, 'LengthToEnd', [TKindVR.vrUL], 'Length to End' );
     Add( $0005, 'SpecificCharacterSet', [TKindVR.vrCS], 'Specific Character Set' );
     Add( $0006, 'LanguageCodeSequence', [TKindVR.vrSQ], 'Language Code Sequence' );
     Add( $0008, 'ImageType', [TKindVR.vrCS], 'Image Type' );
     Add( $0010, 'RecognitionCode', [TKindVR.vrSH], 'Recognition Code' );
     Add( $0012, 'InstanceCreationDate', [TKindVR.vrDA], 'Instance Creation Date' );
     Add( $0013, 'InstanceCreationTime', [TKindVR.vrTM], 'Instance Creation Time' );
     Add( $0014, 'InstanceCreatorUID', [TKindVR.vrUI], 'Instance Creator UID' );
     Add( $0015, 'InstanceCoercionDateTime', [TKindVR.vrDT], 'Instance Coercion DateTime' );
     Add( $0016, 'SOPClassUID', [TKindVR.vrUI], 'SOP Class UID' );
     Add( $0018, 'SOPInstanceUID', [TKindVR.vrUI], 'SOP Instance UID' );
     Add( $001A, 'RelatedGeneralSOPClassUID', [TKindVR.vrUI], 'Related General SOP Class UID' );
     Add( $001B, 'OriginalSpecializedSOPClassUID', [TKindVR.vrUI], 'Original Specialized SOP Class UID' );
     Add( $0020, 'StudyDate', [TKindVR.vrDA], 'Study Date' );
     Add( $0021, 'SeriesDate', [TKindVR.vrDA], 'Series Date' );
     Add( $0022, 'AcquisitionDate', [TKindVR.vrDA], 'Acquisition Date' );
     Add( $0023, 'ContentDate', [TKindVR.vrDA], 'Content Date' );
     Add( $0024, 'OverlayDate', [TKindVR.vrDA], 'Overlay Date' );
     Add( $0025, 'CurveDate', [TKindVR.vrDA], 'Curve Date' );
     Add( $002A, 'AcquisitionDateTime', [TKindVR.vrDT], 'Acquisition DateTime' );
     Add( $0030, 'StudyTime', [TKindVR.vrTM], 'Study Time' );
     Add( $0031, 'SeriesTime', [TKindVR.vrTM], 'Series Time' );
     Add( $0032, 'AcquisitionTime', [TKindVR.vrTM], 'Acquisition Time' );
     Add( $0033, 'ContentTime', [TKindVR.vrTM], 'Content Time' );
     Add( $0034, 'OverlayTime', [TKindVR.vrTM], 'Overlay Time' );
     Add( $0035, 'CurveTime', [TKindVR.vrTM], 'Curve Time' );
     Add( $0040, 'DataSetType', [TKindVR.vrUS], 'Data Set Type' );
     Add( $0041, 'DataSetSubtype', [TKindVR.vrLO], 'Data Set Subtype' );
     Add( $0042, 'NuclearMedicineSeriesType', [TKindVR.vrCS], 'Nuclear Medicine Series Type' );
     Add( $0050, 'AccessionNumber', [TKindVR.vrSH], 'Accession Number' );
     Add( $0051, 'IssuerOfAccessionNumberSequence', [TKindVR.vrSQ], 'Issuer of Accession Number Sequence' );
     Add( $0052, 'QueryRetrieveLevel', [TKindVR.vrCS], 'Query/Retrieve Level' );
     Add( $0053, 'QueryRetrieveView', [TKindVR.vrCS], 'Query/Retrieve View' );
     Add( $0054, 'RetrieveAETitle', [TKindVR.vrAE], 'Retrieve AE Title' );
     Add( $0055, 'StationAETitle', [TKindVR.vrAE], 'Station AE Title' );
     Add( $0056, 'InstanceAvailability', [TKindVR.vrCS], 'Instance Availability' );
     Add( $0058, 'FailedSOPInstanceUIDList', [TKindVR.vrUI], 'Failed SOP Instance UID List' );
     Add( $0060, 'Modality', [TKindVR.vrCS], 'Modality' );
     Add( $0061, 'ModalitiesInStudy', [TKindVR.vrCS], 'Modalities in Study' );
     Add( $0062, 'SOPClassesInStudy', [TKindVR.vrUI], 'SOP Classes in Study' );
     Add( $0064, 'ConversionType', [TKindVR.vrCS], 'Conversion Type' );
     Add( $0068, 'PresentationIntentType', [TKindVR.vrCS], 'Presentation Intent Type' );
     Add( $0070, 'Manufacturer', [TKindVR.vrLO], 'Manufacturer' );
     Add( $0080, 'InstitutionName', [TKindVR.vrLO], 'Institution Name' );
     Add( $0081, 'InstitutionAddress', [TKindVR.vrST], 'Institution Address' );
     Add( $0082, 'InstitutionCodeSequence', [TKindVR.vrSQ], 'Institution Code Sequence' );
     Add( $0090, 'ReferringPhysicianName', [TKindVR.vrPN], 'Referring Physician''s Name' );
     Add( $0092, 'ReferringPhysicianAddress', [TKindVR.vrST], 'Referring Physician''s Address' );
     Add( $0094, 'ReferringPhysicianTelephoneNumbers', [TKindVR.vrSH], 'Referring Physician''s Telephone Numbers' );
     Add( $0096, 'ReferringPhysicianIdentificationSequence', [TKindVR.vrSQ], 'Referring Physician Identification Sequence' );
     Add( $009C, 'ConsultingPhysicianName', [TKindVR.vrPN], 'Consulting Physician''s Name' );
     Add( $009D, 'ConsultingPhysicianIdentificationSequence', [TKindVR.vrSQ], 'Consulting Physician Identification Sequence' );
     Add( $0100, 'CodeValue', [TKindVR.vrSH], 'Code Value' );
     Add( $0101, 'ExtendedCodeValue', [TKindVR.vrLO], 'Extended Code Value' );
     Add( $0102, 'CodingSchemeDesignator', [TKindVR.vrSH], 'Coding Scheme Designator' );
     Add( $0103, 'CodingSchemeVersion', [TKindVR.vrSH], 'Coding Scheme Version' );
     Add( $0104, 'CodeMeaning', [TKindVR.vrLO], 'Code Meaning' );
     Add( $0105, 'MappingResource', [TKindVR.vrCS], 'Mapping Resource' );
     Add( $0106, 'ContextGroupVersion', [TKindVR.vrDT], 'Context Group Version' );
     Add( $0107, 'ContextGroupLocalVersion', [TKindVR.vrDT], 'Context Group Local Version' );
     Add( $0108, 'ExtendedCodeMeaning', [TKindVR.vrLT], 'Extended Code Meaning' );
     Add( $010B, 'ContextGroupExtensionFlag', [TKindVR.vrCS], 'Context Group Extension Flag' );
     Add( $010C, 'CodingSchemeUID', [TKindVR.vrUI], 'Coding Scheme UID' );
     Add( $010D, 'ContextGroupExtensionCreatorUID', [TKindVR.vrUI], 'Context Group Extension Creator UID' );
     Add( $010F, 'ContextIdentifier', [TKindVR.vrCS], 'Context Identifier' );
     Add( $0110, 'CodingSchemeIdentificationSequence', [TKindVR.vrSQ], 'Coding Scheme Identification Sequence' );
     Add( $0112, 'CodingSchemeRegistry', [TKindVR.vrLO], 'Coding Scheme Registry' );
     Add( $0114, 'CodingSchemeExternalID', [TKindVR.vrST], 'Coding Scheme External ID' );
     Add( $0115, 'CodingSchemeName', [TKindVR.vrST], 'Coding Scheme Name' );
     Add( $0116, 'CodingSchemeResponsibleOrganization', [TKindVR.vrST], 'Coding Scheme Responsible Organization' );
     Add( $0117, 'ContextUID', [TKindVR.vrUI], 'Context UID' );
     Add( $0118, 'MappingResourceUID', [TKindVR.vrUI], 'Mapping Resource UID' );
     Add( $0119, 'LongCodeValue', [TKindVR.vrUC], 'Long Code Value' );
     Add( $0120, 'URNCodeValue', [TKindVR.vrUR], 'URN Code Value' );
     Add( $0121, 'EquivalentCodeSequence', [TKindVR.vrSQ], 'Equivalent Code Sequence' );
     Add( $0122, 'MappingResourceName', [TKindVR.vrLO], 'Mapping Resource Name' );
     Add( $0123, 'ContextGroupIdentificationSequence', [TKindVR.vrSQ], 'Context Group Identification Sequence' );
     Add( $0124, 'MappingResourceIdentificationSequence', [TKindVR.vrSQ], 'Mapping Resource Identification Sequence' );
     Add( $0201, 'TimezoneOffsetFromUTC', [TKindVR.vrSH], 'Timezone Offset From UTC' );
     Add( $0220, 'ResponsibleGroupCodeSequence', [TKindVR.vrSQ], 'Responsible Group Code Sequence' );
     Add( $0221, 'EquipmentModality', [TKindVR.vrCS], 'Equipment Modality' );
     Add( $0222, 'ManufacturerRelatedModelGroup', [TKindVR.vrLO], 'Manufacturer''s Related Model Group' );
     Add( $0300, 'PrivateDataElementCharacteristicsSequence', [TKindVR.vrSQ], 'Private Data Element Characteristics Sequence' );
     Add( $0301, 'PrivateGroupReference', [TKindVR.vrUS], 'Private Group Reference' );
     Add( $0302, 'PrivateCreatorReference', [TKindVR.vrLO], 'Private Creator Reference' );
     Add( $0303, 'BlockIdentifyingInformationStatus', [TKindVR.vrCS], 'Block Identifying Information Status' );
     Add( $0304, 'NonidentifyingPrivateElements', [TKindVR.vrUS], 'Nonidentifying Private Elements' );
     Add( $0306, 'IdentifyingPrivateElements', [TKindVR.vrUS], 'Identifying Private Elements' );
     Add( $0305, 'DeidentificationActionSequence', [TKindVR.vrSQ], 'Deidentification Action Sequence' );
     Add( $0307, 'DeidentificationAction', [TKindVR.vrCS], 'Deidentification Action' );
     Add( $0308, 'PrivateDataElement', [TKindVR.vrUS], 'Private Data Element' );
     Add( $0309, 'PrivateDataElementValueMultiplicity', [TKindVR.vrUL], 'Private Data Element Value Multiplicity' );
     Add( $030A, 'PrivateDataElementValueRepresentation', [TKindVR.vrCS], 'Private Data Element Value Representation' );
     Add( $030B, 'PrivateDataElementNumberOfItems', [TKindVR.vrUL], 'Private Data Element Number of Items' );
     Add( $030C, 'PrivateDataElementName', [TKindVR.vrUC], 'Private Data Element Name' );
     Add( $030D, 'PrivateDataElementKeyword', [TKindVR.vrUC], 'Private Data Element Keyword' );
     Add( $030E, 'PrivateDataElementDescription', [TKindVR.vrUT], 'Private Data Element Description' );
     Add( $030F, 'PrivateDataElementEncoding', [TKindVR.vrUT], 'Private Data Element Encoding' );
     Add( $0310, 'PrivateDataElementDefinitionSequence', [TKindVR.vrSQ], 'Private Data Element Definition Sequence' );
     Add( $1000, 'NetworkID', [TKindVR.vrAE], 'Network ID' );
     Add( $1010, 'StationName', [TKindVR.vrSH], 'Station Name' );
     Add( $1030, 'StudyDescription', [TKindVR.vrLO], 'Study Description' );
     Add( $1032, 'ProcedureCodeSequence', [TKindVR.vrSQ], 'Procedure Code Sequence' );
     Add( $103E, 'SeriesDescription', [TKindVR.vrLO], 'Series Description' );
     Add( $103F, 'SeriesDescriptionCodeSequence', [TKindVR.vrSQ], 'Series Description Code Sequence' );
     Add( $1040, 'InstitutionalDepartmentName', [TKindVR.vrLO], 'Institutional Department Name' );
     Add( $1048, 'PhysiciansOfRecord', [TKindVR.vrPN], 'Physician(s) of Record' );
     Add( $1049, 'PhysiciansOfRecordIdentificationSequence', [TKindVR.vrSQ], 'Physician(s) of Record Identification Sequence' );
     Add( $1050, 'PerformingPhysicianName', [TKindVR.vrPN], 'Performing Physician''s Name' );
     Add( $1052, 'PerformingPhysicianIdentificationSequence', [TKindVR.vrSQ], 'Performing Physician Identification Sequence' );
     Add( $1060, 'NameOfPhysiciansReadingStudy', [TKindVR.vrPN], 'Name of Physician(s) Reading Study' );
     Add( $1062, 'PhysiciansReadingStudyIdentificationSequence', [TKindVR.vrSQ], 'Physician(s) Reading Study Identification Sequence' );
     Add( $1070, 'OperatorsName', [TKindVR.vrPN], 'Operators'' Name' );
     Add( $1072, 'OperatorIdentificationSequence', [TKindVR.vrSQ], 'Operator Identification Sequence' );
     Add( $1080, 'AdmittingDiagnosesDescription', [TKindVR.vrLO], 'Admitting Diagnoses Description' );
     Add( $1084, 'AdmittingDiagnosesCodeSequence', [TKindVR.vrSQ], 'Admitting Diagnoses Code Sequence' );
     Add( $1090, 'ManufacturerModelName', [TKindVR.vrLO], 'Manufacturer''s Model Name' );
     Add( $1100, 'ReferencedResultsSequence', [TKindVR.vrSQ], 'Referenced Results Sequence' );
     Add( $1110, 'ReferencedStudySequence', [TKindVR.vrSQ], 'Referenced Study Sequence' );
     Add( $1111, 'ReferencedPerformedProcedureStepSequence', [TKindVR.vrSQ], 'Referenced Performed Procedure Step Sequence' );
     Add( $1115, 'ReferencedSeriesSequence', [TKindVR.vrSQ], 'Referenced Series Sequence' );
     Add( $1120, 'ReferencedPatientSequence', [TKindVR.vrSQ], 'Referenced Patient Sequence' );
     Add( $1125, 'ReferencedVisitSequence', [TKindVR.vrSQ], 'Referenced Visit Sequence' );
     Add( $1130, 'ReferencedOverlaySequence', [TKindVR.vrSQ], 'Referenced Overlay Sequence' );
     Add( $1134, 'ReferencedStereometricInstanceSequence', [TKindVR.vrSQ], 'Referenced Stereometric Instance Sequence' );
     Add( $113A, 'ReferencedWaveformSequence', [TKindVR.vrSQ], 'Referenced Waveform Sequence' );
     Add( $1140, 'ReferencedImageSequence', [TKindVR.vrSQ], 'Referenced Image Sequence' );
     Add( $1145, 'ReferencedCurveSequence', [TKindVR.vrSQ], 'Referenced Curve Sequence' );
     Add( $114A, 'ReferencedInstanceSequence', [TKindVR.vrSQ], 'Referenced Instance Sequence' );
     Add( $114B, 'ReferencedRealWorldValueMappingInstanceSequence', [TKindVR.vrSQ], 'Referenced Real World Value Mapping Instance Sequence' );
     Add( $1150, 'ReferencedSOPClassUID', [TKindVR.vrUI], 'Referenced SOP Class UID' );
     Add( $1155, 'ReferencedSOPInstanceUID', [TKindVR.vrUI], 'Referenced SOP Instance UID' );
     Add( $115A, 'SOPClassesSupported', [TKindVR.vrUI], 'SOP Classes Supported' );
     Add( $1160, 'ReferencedFrameNumber', [TKindVR.vrIS], 'Referenced Frame Number' );
     Add( $1161, 'SimpleFrameList', [TKindVR.vrUL], 'Simple Frame List' );
     Add( $1162, 'CalculatedFrameList', [TKindVR.vrUL], 'Calculated Frame List' );
     Add( $1163, 'TimeRange', [TKindVR.vrFD], 'Time Range' );
     Add( $1164, 'FrameExtractionSequence', [TKindVR.vrSQ], 'Frame Extraction Sequence' );
     Add( $1167, 'MultiFrameSourceSOPInstanceUID', [TKindVR.vrUI], 'Multi-frame Source SOP Instance UID' );
     Add( $1190, 'RetrieveURL', [TKindVR.vrUR], 'Retrieve URL' );
     Add( $1195, 'TransactionUID', [TKindVR.vrUI], 'Transaction UID' );
     Add( $1196, 'WarningReason', [TKindVR.vrUS], 'Warning Reason' );
     Add( $1197, 'FailureReason', [TKindVR.vrUS], 'Failure Reason' );
     Add( $1198, 'FailedSOPSequence', [TKindVR.vrSQ], 'Failed SOP Sequence' );
     Add( $1199, 'ReferencedSOPSequence', [TKindVR.vrSQ], 'Referenced SOP Sequence' );
     Add( $119A, 'OtherFailuresSequence', [TKindVR.vrSQ], 'Other Failures Sequence' );
     Add( $1200, 'StudiesContainingOtherReferencedInstancesSequence', [TKindVR.vrSQ], 'Studies Containing Other Referenced Instances Sequence' );
     Add( $1250, 'RelatedSeriesSequence', [TKindVR.vrSQ], 'Related Series Sequence' );
     Add( $2110, 'LossyImageCompressionRetired', [TKindVR.vrCS], 'Lossy Image Compression (Retired)' );
     Add( $2111, 'DerivationDescription', [TKindVR.vrST], 'Derivation Description' );
     Add( $2112, 'SourceImageSequence', [TKindVR.vrSQ], 'Source Image Sequence' );
     Add( $2120, 'StageName', [TKindVR.vrSH], 'Stage Name' );
     Add( $2122, 'StageNumber', [TKindVR.vrIS], 'Stage Number' );
     Add( $2124, 'NumberOfStages', [TKindVR.vrIS], 'Number of Stages' );
     Add( $2127, 'ViewName', [TKindVR.vrSH], 'View Name' );
     Add( $2128, 'ViewNumber', [TKindVR.vrIS], 'View Number' );
     Add( $2129, 'NumberOfEventTimers', [TKindVR.vrIS], 'Number of Event Timers' );
     Add( $212A, 'NumberOfViewsInStage', [TKindVR.vrIS], 'Number of Views in Stage' );
     Add( $2130, 'EventElapsedTimes', [TKindVR.vrDS], 'Event Elapsed Time(s)' );
     Add( $2132, 'EventTimerNames', [TKindVR.vrLO], 'Event Timer Name(s)' );
     Add( $2133, 'EventTimerSequence', [TKindVR.vrSQ], 'Event Timer Sequence' );
     Add( $2134, 'EventTimeOffset', [TKindVR.vrFD], 'Event Time Offset' );
     Add( $2135, 'EventCodeSequence', [TKindVR.vrSQ], 'Event Code Sequence' );
     Add( $2142, 'StartTrim', [TKindVR.vrIS], 'Start Trim' );
     Add( $2143, 'StopTrim', [TKindVR.vrIS], 'Stop Trim' );
     Add( $2144, 'RecommendedDisplayFrameRate', [TKindVR.vrIS], 'Recommended Display Frame Rate' );
     Add( $2200, 'TransducerPosition', [TKindVR.vrCS], 'Transducer Position' );
     Add( $2204, 'TransducerOrientation', [TKindVR.vrCS], 'Transducer Orientation' );
     Add( $2208, 'AnatomicStructure', [TKindVR.vrCS], 'Anatomic Structure' );
     Add( $2218, 'AnatomicRegionSequence', [TKindVR.vrSQ], 'Anatomic Region Sequence' );
     Add( $2220, 'AnatomicRegionModifierSequence', [TKindVR.vrSQ], 'Anatomic Region Modifier Sequence' );
     Add( $2228, 'PrimaryAnatomicStructureSequence', [TKindVR.vrSQ], 'Primary Anatomic Structure Sequence' );
     Add( $2229, 'AnatomicStructureSpaceOrRegionSequence', [TKindVR.vrSQ], 'Anatomic Structure, Space or Region Sequence' );
     Add( $2230, 'PrimaryAnatomicStructureModifierSequence', [TKindVR.vrSQ], 'Primary Anatomic Structure Modifier Sequence' );
     Add( $2240, 'TransducerPositionSequence', [TKindVR.vrSQ], 'Transducer Position Sequence' );
     Add( $2242, 'TransducerPositionModifierSequence', [TKindVR.vrSQ], 'Transducer Position Modifier Sequence' );
     Add( $2244, 'TransducerOrientationSequence', [TKindVR.vrSQ], 'Transducer Orientation Sequence' );
     Add( $2246, 'TransducerOrientationModifierSequence', [TKindVR.vrSQ], 'Transducer Orientation Modifier Sequence' );
     Add( $2251, 'AnatomicStructureSpaceOrRegionCodeSequenceTrial', [TKindVR.vrSQ], 'Anatomic Structure Space Or Region Code Sequence (Trial)' );
     Add( $2253, 'AnatomicPortalOfEntranceCodeSequenceTrial', [TKindVR.vrSQ], 'Anatomic Portal Of Entrance Code Sequence (Trial)' );
     Add( $2255, 'AnatomicApproachDirectionCodeSequenceTrial', [TKindVR.vrSQ], 'Anatomic Approach Direction Code Sequence (Trial)' );
     Add( $2256, 'AnatomicPerspectiveDescriptionTrial', [TKindVR.vrST], 'Anatomic Perspective Description (Trial)' );
     Add( $2257, 'AnatomicPerspectiveCodeSequenceTrial', [TKindVR.vrSQ], 'Anatomic Perspective Code Sequence (Trial)' );
     Add( $2258, 'AnatomicLocationOfExaminingInstrumentDescriptionTrial', [TKindVR.vrST], 'Anatomic Location Of Examining Instrument Description (Trial)' );
     Add( $2259, 'AnatomicLocationOfExaminingInstrumentCodeSequenceTrial', [TKindVR.vrSQ], 'Anatomic Location Of Examining Instrument Code Sequence (Trial)' );
     Add( $225A, 'AnatomicStructureSpaceOrRegionModifierCodeSequenceTrial', [TKindVR.vrSQ], 'Anatomic Structure Space Or Region Modifier Code Sequence (Trial)' );
     Add( $225C, 'OnAxisBackgroundAnatomicStructureCodeSequenceTrial', [TKindVR.vrSQ], 'On Axis Background Anatomic Structure Code Sequence (Trial)' );
     Add( $3001, 'AlternateRepresentationSequence', [TKindVR.vrSQ], 'Alternate Representation Sequence' );
     Add( $3010, 'IrradiationEventUID', [TKindVR.vrUI], 'Irradiation Event UID' );
     Add( $3011, 'SourceIrradiationEventSequence', [TKindVR.vrSQ], 'Source Irradiation Event Sequence' );
     Add( $3012, 'RadiopharmaceuticalAdministrationEventUID', [TKindVR.vrUI], 'Radiopharmaceutical Administration Event UID' );
     Add( $4000, 'IdentifyingComments', [TKindVR.vrLT], 'Identifying Comments' );
     Add( $9007, 'FrameType', [TKindVR.vrCS], 'Frame Type' );
     Add( $9092, 'ReferencedImageEvidenceSequence', [TKindVR.vrSQ], 'Referenced Image Evidence Sequence' );
     Add( $9121, 'ReferencedRawDataSequence', [TKindVR.vrSQ], 'Referenced Raw Data Sequence' );
     Add( $9123, 'CreatorVersionUID', [TKindVR.vrUI], 'Creator-Version UID' );
     Add( $9124, 'DerivationImageSequence', [TKindVR.vrSQ], 'Derivation Image Sequence' );
     Add( $9154, 'SourceImageEvidenceSequence', [TKindVR.vrSQ], 'Source Image Evidence Sequence' );
     Add( $9205, 'PixelPresentation', [TKindVR.vrCS], 'Pixel Presentation' );
     Add( $9206, 'VolumetricProperties', [TKindVR.vrCS], 'Volumetric Properties' );
     Add( $9207, 'VolumeBasedCalculationTechnique', [TKindVR.vrCS], 'Volume Based Calculation Technique' );
     Add( $9208, 'ComplexImageComponent', [TKindVR.vrCS], 'Complex Image Component' );
     Add( $9209, 'AcquisitionContrast', [TKindVR.vrCS], 'Acquisition Contrast' );
     Add( $9215, 'DerivationCodeSequence', [TKindVR.vrSQ], 'Derivation Code Sequence' );
     Add( $9237, 'ReferencedPresentationStateSequence', [TKindVR.vrSQ], 'Referenced Presentation State Sequence' );
     Add( $9410, 'ReferencedOtherPlaneSequence', [TKindVR.vrSQ], 'Referenced Other Plane Sequence' );
     Add( $9458, 'FrameDisplaySequence', [TKindVR.vrSQ], 'Frame Display Sequence' );
     Add( $9459, 'RecommendedDisplayFrameRateInFloat', [TKindVR.vrFL], 'Recommended Display Frame Rate in Float' );
     Add( $9460, 'SkipFrameRangeFlag', [TKindVR.vrCS], 'Skip Frame Range Flag' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
