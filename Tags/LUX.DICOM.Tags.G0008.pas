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
     Add( $0001, 'LengthToEnd', [TTypeVR.vrUL], 'Length to End' );
     Add( $0005, 'SpecificCharacterSet', [TTypeVR.vrCS], 'Specific Character Set' );
     Add( $0006, 'LanguageCodeSequence', [TTypeVR.vrSQ], 'Language Code Sequence' );
     Add( $0008, 'ImageType', [TTypeVR.vrCS], 'Image Type' );
     Add( $0010, 'RecognitionCode', [TTypeVR.vrSH], 'Recognition Code' );
     Add( $0012, 'InstanceCreationDate', [TTypeVR.vrDA], 'Instance Creation Date' );
     Add( $0013, 'InstanceCreationTime', [TTypeVR.vrTM], 'Instance Creation Time' );
     Add( $0014, 'InstanceCreatorUID', [TTypeVR.vrUI], 'Instance Creator UID' );
     Add( $0015, 'InstanceCoercionDateTime', [TTypeVR.vrDT], 'Instance Coercion DateTime' );
     Add( $0016, 'SOPClassUID', [TTypeVR.vrUI], 'SOP Class UID' );
     Add( $0018, 'SOPInstanceUID', [TTypeVR.vrUI], 'SOP Instance UID' );
     Add( $001A, 'RelatedGeneralSOPClassUID', [TTypeVR.vrUI], 'Related General SOP Class UID' );
     Add( $001B, 'OriginalSpecializedSOPClassUID', [TTypeVR.vrUI], 'Original Specialized SOP Class UID' );
     Add( $0020, 'StudyDate', [TTypeVR.vrDA], 'Study Date' );
     Add( $0021, 'SeriesDate', [TTypeVR.vrDA], 'Series Date' );
     Add( $0022, 'AcquisitionDate', [TTypeVR.vrDA], 'Acquisition Date' );
     Add( $0023, 'ContentDate', [TTypeVR.vrDA], 'Content Date' );
     Add( $0024, 'OverlayDate', [TTypeVR.vrDA], 'Overlay Date' );
     Add( $0025, 'CurveDate', [TTypeVR.vrDA], 'Curve Date' );
     Add( $002A, 'AcquisitionDateTime', [TTypeVR.vrDT], 'Acquisition DateTime' );
     Add( $0030, 'StudyTime', [TTypeVR.vrTM], 'Study Time' );
     Add( $0031, 'SeriesTime', [TTypeVR.vrTM], 'Series Time' );
     Add( $0032, 'AcquisitionTime', [TTypeVR.vrTM], 'Acquisition Time' );
     Add( $0033, 'ContentTime', [TTypeVR.vrTM], 'Content Time' );
     Add( $0034, 'OverlayTime', [TTypeVR.vrTM], 'Overlay Time' );
     Add( $0035, 'CurveTime', [TTypeVR.vrTM], 'Curve Time' );
     Add( $0040, 'DataSetType', [TTypeVR.vrUS], 'Data Set Type' );
     Add( $0041, 'DataSetSubtype', [TTypeVR.vrLO], 'Data Set Subtype' );
     Add( $0042, 'NuclearMedicineSeriesType', [TTypeVR.vrCS], 'Nuclear Medicine Series Type' );
     Add( $0050, 'AccessionNumber', [TTypeVR.vrSH], 'Accession Number' );
     Add( $0051, 'IssuerOfAccessionNumberSequence', [TTypeVR.vrSQ], 'Issuer of Accession Number Sequence' );
     Add( $0052, 'QueryRetrieveLevel', [TTypeVR.vrCS], 'Query/Retrieve Level' );
     Add( $0053, 'QueryRetrieveView', [TTypeVR.vrCS], 'Query/Retrieve View' );
     Add( $0054, 'RetrieveAETitle', [TTypeVR.vrAE], 'Retrieve AE Title' );
     Add( $0055, 'StationAETitle', [TTypeVR.vrAE], 'Station AE Title' );
     Add( $0056, 'InstanceAvailability', [TTypeVR.vrCS], 'Instance Availability' );
     Add( $0058, 'FailedSOPInstanceUIDList', [TTypeVR.vrUI], 'Failed SOP Instance UID List' );
     Add( $0060, 'Modality', [TTypeVR.vrCS], 'Modality' );
     Add( $0061, 'ModalitiesInStudy', [TTypeVR.vrCS], 'Modalities in Study' );
     Add( $0062, 'SOPClassesInStudy', [TTypeVR.vrUI], 'SOP Classes in Study' );
     Add( $0064, 'ConversionType', [TTypeVR.vrCS], 'Conversion Type' );
     Add( $0068, 'PresentationIntentType', [TTypeVR.vrCS], 'Presentation Intent Type' );
     Add( $0070, 'Manufacturer', [TTypeVR.vrLO], 'Manufacturer' );
     Add( $0080, 'InstitutionName', [TTypeVR.vrLO], 'Institution Name' );
     Add( $0081, 'InstitutionAddress', [TTypeVR.vrST], 'Institution Address' );
     Add( $0082, 'InstitutionCodeSequence', [TTypeVR.vrSQ], 'Institution Code Sequence' );
     Add( $0090, 'ReferringPhysicianName', [TTypeVR.vrPN], 'Referring Physician''s Name' );
     Add( $0092, 'ReferringPhysicianAddress', [TTypeVR.vrST], 'Referring Physician''s Address' );
     Add( $0094, 'ReferringPhysicianTelephoneNumbers', [TTypeVR.vrSH], 'Referring Physician''s Telephone Numbers' );
     Add( $0096, 'ReferringPhysicianIdentificationSequence', [TTypeVR.vrSQ], 'Referring Physician Identification Sequence' );
     Add( $009C, 'ConsultingPhysicianName', [TTypeVR.vrPN], 'Consulting Physician''s Name' );
     Add( $009D, 'ConsultingPhysicianIdentificationSequence', [TTypeVR.vrSQ], 'Consulting Physician Identification Sequence' );
     Add( $0100, 'CodeValue', [TTypeVR.vrSH], 'Code Value' );
     Add( $0101, 'ExtendedCodeValue', [TTypeVR.vrLO], 'Extended Code Value' );
     Add( $0102, 'CodingSchemeDesignator', [TTypeVR.vrSH], 'Coding Scheme Designator' );
     Add( $0103, 'CodingSchemeVersion', [TTypeVR.vrSH], 'Coding Scheme Version' );
     Add( $0104, 'CodeMeaning', [TTypeVR.vrLO], 'Code Meaning' );
     Add( $0105, 'MappingResource', [TTypeVR.vrCS], 'Mapping Resource' );
     Add( $0106, 'ContextGroupVersion', [TTypeVR.vrDT], 'Context Group Version' );
     Add( $0107, 'ContextGroupLocalVersion', [TTypeVR.vrDT], 'Context Group Local Version' );
     Add( $0108, 'ExtendedCodeMeaning', [TTypeVR.vrLT], 'Extended Code Meaning' );
     Add( $010B, 'ContextGroupExtensionFlag', [TTypeVR.vrCS], 'Context Group Extension Flag' );
     Add( $010C, 'CodingSchemeUID', [TTypeVR.vrUI], 'Coding Scheme UID' );
     Add( $010D, 'ContextGroupExtensionCreatorUID', [TTypeVR.vrUI], 'Context Group Extension Creator UID' );
     Add( $010F, 'ContextIdentifier', [TTypeVR.vrCS], 'Context Identifier' );
     Add( $0110, 'CodingSchemeIdentificationSequence', [TTypeVR.vrSQ], 'Coding Scheme Identification Sequence' );
     Add( $0112, 'CodingSchemeRegistry', [TTypeVR.vrLO], 'Coding Scheme Registry' );
     Add( $0114, 'CodingSchemeExternalID', [TTypeVR.vrST], 'Coding Scheme External ID' );
     Add( $0115, 'CodingSchemeName', [TTypeVR.vrST], 'Coding Scheme Name' );
     Add( $0116, 'CodingSchemeResponsibleOrganization', [TTypeVR.vrST], 'Coding Scheme Responsible Organization' );
     Add( $0117, 'ContextUID', [TTypeVR.vrUI], 'Context UID' );
     Add( $0118, 'MappingResourceUID', [TTypeVR.vrUI], 'Mapping Resource UID' );
     Add( $0119, 'LongCodeValue', [TTypeVR.vrUC], 'Long Code Value' );
     Add( $0120, 'URNCodeValue', [TTypeVR.vrUR], 'URN Code Value' );
     Add( $0121, 'EquivalentCodeSequence', [TTypeVR.vrSQ], 'Equivalent Code Sequence' );
     Add( $0122, 'MappingResourceName', [TTypeVR.vrLO], 'Mapping Resource Name' );
     Add( $0123, 'ContextGroupIdentificationSequence', [TTypeVR.vrSQ], 'Context Group Identification Sequence' );
     Add( $0124, 'MappingResourceIdentificationSequence', [TTypeVR.vrSQ], 'Mapping Resource Identification Sequence' );
     Add( $0201, 'TimezoneOffsetFromUTC', [TTypeVR.vrSH], 'Timezone Offset From UTC' );
     Add( $0220, 'ResponsibleGroupCodeSequence', [TTypeVR.vrSQ], 'Responsible Group Code Sequence' );
     Add( $0221, 'EquipmentModality', [TTypeVR.vrCS], 'Equipment Modality' );
     Add( $0222, 'ManufacturerRelatedModelGroup', [TTypeVR.vrLO], 'Manufacturer''s Related Model Group' );
     Add( $0300, 'PrivateDataElementCharacteristicsSequence', [TTypeVR.vrSQ], 'Private Data Element Characteristics Sequence' );
     Add( $0301, 'PrivateGroupReference', [TTypeVR.vrUS], 'Private Group Reference' );
     Add( $0302, 'PrivateCreatorReference', [TTypeVR.vrLO], 'Private Creator Reference' );
     Add( $0303, 'BlockIdentifyingInformationStatus', [TTypeVR.vrCS], 'Block Identifying Information Status' );
     Add( $0304, 'NonidentifyingPrivateElements', [TTypeVR.vrUS], 'Nonidentifying Private Elements' );
     Add( $0306, 'IdentifyingPrivateElements', [TTypeVR.vrUS], 'Identifying Private Elements' );
     Add( $0305, 'DeidentificationActionSequence', [TTypeVR.vrSQ], 'Deidentification Action Sequence' );
     Add( $0307, 'DeidentificationAction', [TTypeVR.vrCS], 'Deidentification Action' );
     Add( $0308, 'PrivateDataElement', [TTypeVR.vrUS], 'Private Data Element' );
     Add( $0309, 'PrivateDataElementValueMultiplicity', [TTypeVR.vrUL], 'Private Data Element Value Multiplicity' );
     Add( $030A, 'PrivateDataElementValueRepresentation', [TTypeVR.vrCS], 'Private Data Element Value Representation' );
     Add( $030B, 'PrivateDataElementNumberOfItems', [TTypeVR.vrUL], 'Private Data Element Number of Items' );
     Add( $030C, 'PrivateDataElementName', [TTypeVR.vrUC], 'Private Data Element Name' );
     Add( $030D, 'PrivateDataElementKeyword', [TTypeVR.vrUC], 'Private Data Element Keyword' );
     Add( $030E, 'PrivateDataElementDescription', [TTypeVR.vrUT], 'Private Data Element Description' );
     Add( $030F, 'PrivateDataElementEncoding', [TTypeVR.vrUT], 'Private Data Element Encoding' );
     Add( $0310, 'PrivateDataElementDefinitionSequence', [TTypeVR.vrSQ], 'Private Data Element Definition Sequence' );
     Add( $1000, 'NetworkID', [TTypeVR.vrAE], 'Network ID' );
     Add( $1010, 'StationName', [TTypeVR.vrSH], 'Station Name' );
     Add( $1030, 'StudyDescription', [TTypeVR.vrLO], 'Study Description' );
     Add( $1032, 'ProcedureCodeSequence', [TTypeVR.vrSQ], 'Procedure Code Sequence' );
     Add( $103E, 'SeriesDescription', [TTypeVR.vrLO], 'Series Description' );
     Add( $103F, 'SeriesDescriptionCodeSequence', [TTypeVR.vrSQ], 'Series Description Code Sequence' );
     Add( $1040, 'InstitutionalDepartmentName', [TTypeVR.vrLO], 'Institutional Department Name' );
     Add( $1048, 'PhysiciansOfRecord', [TTypeVR.vrPN], 'Physician(s) of Record' );
     Add( $1049, 'PhysiciansOfRecordIdentificationSequence', [TTypeVR.vrSQ], 'Physician(s) of Record Identification Sequence' );
     Add( $1050, 'PerformingPhysicianName', [TTypeVR.vrPN], 'Performing Physician''s Name' );
     Add( $1052, 'PerformingPhysicianIdentificationSequence', [TTypeVR.vrSQ], 'Performing Physician Identification Sequence' );
     Add( $1060, 'NameOfPhysiciansReadingStudy', [TTypeVR.vrPN], 'Name of Physician(s) Reading Study' );
     Add( $1062, 'PhysiciansReadingStudyIdentificationSequence', [TTypeVR.vrSQ], 'Physician(s) Reading Study Identification Sequence' );
     Add( $1070, 'OperatorsName', [TTypeVR.vrPN], 'Operators'' Name' );
     Add( $1072, 'OperatorIdentificationSequence', [TTypeVR.vrSQ], 'Operator Identification Sequence' );
     Add( $1080, 'AdmittingDiagnosesDescription', [TTypeVR.vrLO], 'Admitting Diagnoses Description' );
     Add( $1084, 'AdmittingDiagnosesCodeSequence', [TTypeVR.vrSQ], 'Admitting Diagnoses Code Sequence' );
     Add( $1090, 'ManufacturerModelName', [TTypeVR.vrLO], 'Manufacturer''s Model Name' );
     Add( $1100, 'ReferencedResultsSequence', [TTypeVR.vrSQ], 'Referenced Results Sequence' );
     Add( $1110, 'ReferencedStudySequence', [TTypeVR.vrSQ], 'Referenced Study Sequence' );
     Add( $1111, 'ReferencedPerformedProcedureStepSequence', [TTypeVR.vrSQ], 'Referenced Performed Procedure Step Sequence' );
     Add( $1115, 'ReferencedSeriesSequence', [TTypeVR.vrSQ], 'Referenced Series Sequence' );
     Add( $1120, 'ReferencedPatientSequence', [TTypeVR.vrSQ], 'Referenced Patient Sequence' );
     Add( $1125, 'ReferencedVisitSequence', [TTypeVR.vrSQ], 'Referenced Visit Sequence' );
     Add( $1130, 'ReferencedOverlaySequence', [TTypeVR.vrSQ], 'Referenced Overlay Sequence' );
     Add( $1134, 'ReferencedStereometricInstanceSequence', [TTypeVR.vrSQ], 'Referenced Stereometric Instance Sequence' );
     Add( $113A, 'ReferencedWaveformSequence', [TTypeVR.vrSQ], 'Referenced Waveform Sequence' );
     Add( $1140, 'ReferencedImageSequence', [TTypeVR.vrSQ], 'Referenced Image Sequence' );
     Add( $1145, 'ReferencedCurveSequence', [TTypeVR.vrSQ], 'Referenced Curve Sequence' );
     Add( $114A, 'ReferencedInstanceSequence', [TTypeVR.vrSQ], 'Referenced Instance Sequence' );
     Add( $114B, 'ReferencedRealWorldValueMappingInstanceSequence', [TTypeVR.vrSQ], 'Referenced Real World Value Mapping Instance Sequence' );
     Add( $1150, 'ReferencedSOPClassUID', [TTypeVR.vrUI], 'Referenced SOP Class UID' );
     Add( $1155, 'ReferencedSOPInstanceUID', [TTypeVR.vrUI], 'Referenced SOP Instance UID' );
     Add( $115A, 'SOPClassesSupported', [TTypeVR.vrUI], 'SOP Classes Supported' );
     Add( $1160, 'ReferencedFrameNumber', [TTypeVR.vrIS], 'Referenced Frame Number' );
     Add( $1161, 'SimpleFrameList', [TTypeVR.vrUL], 'Simple Frame List' );
     Add( $1162, 'CalculatedFrameList', [TTypeVR.vrUL], 'Calculated Frame List' );
     Add( $1163, 'TimeRange', [TTypeVR.vrFD], 'Time Range' );
     Add( $1164, 'FrameExtractionSequence', [TTypeVR.vrSQ], 'Frame Extraction Sequence' );
     Add( $1167, 'MultiFrameSourceSOPInstanceUID', [TTypeVR.vrUI], 'Multi-frame Source SOP Instance UID' );
     Add( $1190, 'RetrieveURL', [TTypeVR.vrUR], 'Retrieve URL' );
     Add( $1195, 'TransactionUID', [TTypeVR.vrUI], 'Transaction UID' );
     Add( $1196, 'WarningReason', [TTypeVR.vrUS], 'Warning Reason' );
     Add( $1197, 'FailureReason', [TTypeVR.vrUS], 'Failure Reason' );
     Add( $1198, 'FailedSOPSequence', [TTypeVR.vrSQ], 'Failed SOP Sequence' );
     Add( $1199, 'ReferencedSOPSequence', [TTypeVR.vrSQ], 'Referenced SOP Sequence' );
     Add( $119A, 'OtherFailuresSequence', [TTypeVR.vrSQ], 'Other Failures Sequence' );
     Add( $1200, 'StudiesContainingOtherReferencedInstancesSequence', [TTypeVR.vrSQ], 'Studies Containing Other Referenced Instances Sequence' );
     Add( $1250, 'RelatedSeriesSequence', [TTypeVR.vrSQ], 'Related Series Sequence' );
     Add( $2110, 'LossyImageCompressionRetired', [TTypeVR.vrCS], 'Lossy Image Compression (Retired)' );
     Add( $2111, 'DerivationDescription', [TTypeVR.vrST], 'Derivation Description' );
     Add( $2112, 'SourceImageSequence', [TTypeVR.vrSQ], 'Source Image Sequence' );
     Add( $2120, 'StageName', [TTypeVR.vrSH], 'Stage Name' );
     Add( $2122, 'StageNumber', [TTypeVR.vrIS], 'Stage Number' );
     Add( $2124, 'NumberOfStages', [TTypeVR.vrIS], 'Number of Stages' );
     Add( $2127, 'ViewName', [TTypeVR.vrSH], 'View Name' );
     Add( $2128, 'ViewNumber', [TTypeVR.vrIS], 'View Number' );
     Add( $2129, 'NumberOfEventTimers', [TTypeVR.vrIS], 'Number of Event Timers' );
     Add( $212A, 'NumberOfViewsInStage', [TTypeVR.vrIS], 'Number of Views in Stage' );
     Add( $2130, 'EventElapsedTimes', [TTypeVR.vrDS], 'Event Elapsed Time(s)' );
     Add( $2132, 'EventTimerNames', [TTypeVR.vrLO], 'Event Timer Name(s)' );
     Add( $2133, 'EventTimerSequence', [TTypeVR.vrSQ], 'Event Timer Sequence' );
     Add( $2134, 'EventTimeOffset', [TTypeVR.vrFD], 'Event Time Offset' );
     Add( $2135, 'EventCodeSequence', [TTypeVR.vrSQ], 'Event Code Sequence' );
     Add( $2142, 'StartTrim', [TTypeVR.vrIS], 'Start Trim' );
     Add( $2143, 'StopTrim', [TTypeVR.vrIS], 'Stop Trim' );
     Add( $2144, 'RecommendedDisplayFrameRate', [TTypeVR.vrIS], 'Recommended Display Frame Rate' );
     Add( $2200, 'TransducerPosition', [TTypeVR.vrCS], 'Transducer Position' );
     Add( $2204, 'TransducerOrientation', [TTypeVR.vrCS], 'Transducer Orientation' );
     Add( $2208, 'AnatomicStructure', [TTypeVR.vrCS], 'Anatomic Structure' );
     Add( $2218, 'AnatomicRegionSequence', [TTypeVR.vrSQ], 'Anatomic Region Sequence' );
     Add( $2220, 'AnatomicRegionModifierSequence', [TTypeVR.vrSQ], 'Anatomic Region Modifier Sequence' );
     Add( $2228, 'PrimaryAnatomicStructureSequence', [TTypeVR.vrSQ], 'Primary Anatomic Structure Sequence' );
     Add( $2229, 'AnatomicStructureSpaceOrRegionSequence', [TTypeVR.vrSQ], 'Anatomic Structure, Space or Region Sequence' );
     Add( $2230, 'PrimaryAnatomicStructureModifierSequence', [TTypeVR.vrSQ], 'Primary Anatomic Structure Modifier Sequence' );
     Add( $2240, 'TransducerPositionSequence', [TTypeVR.vrSQ], 'Transducer Position Sequence' );
     Add( $2242, 'TransducerPositionModifierSequence', [TTypeVR.vrSQ], 'Transducer Position Modifier Sequence' );
     Add( $2244, 'TransducerOrientationSequence', [TTypeVR.vrSQ], 'Transducer Orientation Sequence' );
     Add( $2246, 'TransducerOrientationModifierSequence', [TTypeVR.vrSQ], 'Transducer Orientation Modifier Sequence' );
     Add( $2251, 'AnatomicStructureSpaceOrRegionCodeSequenceTrial', [TTypeVR.vrSQ], 'Anatomic Structure Space Or Region Code Sequence (Trial)' );
     Add( $2253, 'AnatomicPortalOfEntranceCodeSequenceTrial', [TTypeVR.vrSQ], 'Anatomic Portal Of Entrance Code Sequence (Trial)' );
     Add( $2255, 'AnatomicApproachDirectionCodeSequenceTrial', [TTypeVR.vrSQ], 'Anatomic Approach Direction Code Sequence (Trial)' );
     Add( $2256, 'AnatomicPerspectiveDescriptionTrial', [TTypeVR.vrST], 'Anatomic Perspective Description (Trial)' );
     Add( $2257, 'AnatomicPerspectiveCodeSequenceTrial', [TTypeVR.vrSQ], 'Anatomic Perspective Code Sequence (Trial)' );
     Add( $2258, 'AnatomicLocationOfExaminingInstrumentDescriptionTrial', [TTypeVR.vrST], 'Anatomic Location Of Examining Instrument Description (Trial)' );
     Add( $2259, 'AnatomicLocationOfExaminingInstrumentCodeSequenceTrial', [TTypeVR.vrSQ], 'Anatomic Location Of Examining Instrument Code Sequence (Trial)' );
     Add( $225A, 'AnatomicStructureSpaceOrRegionModifierCodeSequenceTrial', [TTypeVR.vrSQ], 'Anatomic Structure Space Or Region Modifier Code Sequence (Trial)' );
     Add( $225C, 'OnAxisBackgroundAnatomicStructureCodeSequenceTrial', [TTypeVR.vrSQ], 'On Axis Background Anatomic Structure Code Sequence (Trial)' );
     Add( $3001, 'AlternateRepresentationSequence', [TTypeVR.vrSQ], 'Alternate Representation Sequence' );
     Add( $3010, 'IrradiationEventUID', [TTypeVR.vrUI], 'Irradiation Event UID' );
     Add( $3011, 'SourceIrradiationEventSequence', [TTypeVR.vrSQ], 'Source Irradiation Event Sequence' );
     Add( $3012, 'RadiopharmaceuticalAdministrationEventUID', [TTypeVR.vrUI], 'Radiopharmaceutical Administration Event UID' );
     Add( $4000, 'IdentifyingComments', [TTypeVR.vrLT], 'Identifying Comments' );
     Add( $9007, 'FrameType', [TTypeVR.vrCS], 'Frame Type' );
     Add( $9092, 'ReferencedImageEvidenceSequence', [TTypeVR.vrSQ], 'Referenced Image Evidence Sequence' );
     Add( $9121, 'ReferencedRawDataSequence', [TTypeVR.vrSQ], 'Referenced Raw Data Sequence' );
     Add( $9123, 'CreatorVersionUID', [TTypeVR.vrUI], 'Creator-Version UID' );
     Add( $9124, 'DerivationImageSequence', [TTypeVR.vrSQ], 'Derivation Image Sequence' );
     Add( $9154, 'SourceImageEvidenceSequence', [TTypeVR.vrSQ], 'Source Image Evidence Sequence' );
     Add( $9205, 'PixelPresentation', [TTypeVR.vrCS], 'Pixel Presentation' );
     Add( $9206, 'VolumetricProperties', [TTypeVR.vrCS], 'Volumetric Properties' );
     Add( $9207, 'VolumeBasedCalculationTechnique', [TTypeVR.vrCS], 'Volume Based Calculation Technique' );
     Add( $9208, 'ComplexImageComponent', [TTypeVR.vrCS], 'Complex Image Component' );
     Add( $9209, 'AcquisitionContrast', [TTypeVR.vrCS], 'Acquisition Contrast' );
     Add( $9215, 'DerivationCodeSequence', [TTypeVR.vrSQ], 'Derivation Code Sequence' );
     Add( $9237, 'ReferencedPresentationStateSequence', [TTypeVR.vrSQ], 'Referenced Presentation State Sequence' );
     Add( $9410, 'ReferencedOtherPlaneSequence', [TTypeVR.vrSQ], 'Referenced Other Plane Sequence' );
     Add( $9458, 'FrameDisplaySequence', [TTypeVR.vrSQ], 'Frame Display Sequence' );
     Add( $9459, 'RecommendedDisplayFrameRateInFloat', [TTypeVR.vrFL], 'Recommended Display Frame Rate in Float' );
     Add( $9460, 'SkipFrameRangeFlag', [TTypeVR.vrCS], 'Skip Frame Range Flag' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
