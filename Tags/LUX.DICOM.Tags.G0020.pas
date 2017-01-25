unit LUX.DICOM.Tags.G0020;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0020

     TdcmGrup0020 = class( TdcmGrup )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0020

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmGrup0020.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $000D, 'StudyInstanceUID', [TKindVR.vrUI], 'Study Instance UID' );
     Add( $000E, 'SeriesInstanceUID', [TKindVR.vrUI], 'Series Instance UID' );
     Add( $0010, 'StudyID', [TKindVR.vrSH], 'Study ID' );
     Add( $0011, 'SeriesNumber', [TKindVR.vrIS], 'Series Number' );
     Add( $0012, 'AcquisitionNumber', [TKindVR.vrIS], 'Acquisition Number' );
     Add( $0013, 'InstanceNumber', [TKindVR.vrIS], 'Instance Number' );
     Add( $0014, 'IsotopeNumber', [TKindVR.vrIS], 'Isotope Number' );
     Add( $0015, 'PhaseNumber', [TKindVR.vrIS], 'Phase Number' );
     Add( $0016, 'IntervalNumber', [TKindVR.vrIS], 'Interval Number' );
     Add( $0017, 'TimeSlotNumber', [TKindVR.vrIS], 'Time Slot Number' );
     Add( $0018, 'AngleNumber', [TKindVR.vrIS], 'Angle Number' );
     Add( $0019, 'ItemNumber', [TKindVR.vrIS], 'Item Number' );
     Add( $0020, 'PatientOrientation', [TKindVR.vrCS], 'Patient Orientation' );
     Add( $0022, 'OverlayNumber', [TKindVR.vrIS], 'Overlay Number' );
     Add( $0024, 'CurveNumber', [TKindVR.vrIS], 'Curve Number' );
     Add( $0026, 'LUTNumber', [TKindVR.vrIS], 'LUT Number' );
     Add( $0030, 'ImagePosition', [TKindVR.vrDS], 'Image Position' );
     Add( $0032, 'ImagePositionPatient', [TKindVR.vrDS], 'Image Position (Patient)' );
     Add( $0035, 'ImageOrientation', [TKindVR.vrDS], 'Image Orientation' );
     Add( $0037, 'ImageOrientationPatient', [TKindVR.vrDS], 'Image Orientation (Patient)' );
     Add( $0050, 'Location', [TKindVR.vrDS], 'Location' );
     Add( $0052, 'FrameOfReferenceUID', [TKindVR.vrUI], 'Frame of Reference UID' );
     Add( $0060, 'Laterality', [TKindVR.vrCS], 'Laterality' );
     Add( $0062, 'ImageLaterality', [TKindVR.vrCS], 'Image Laterality' );
     Add( $0070, 'ImageGeometryType', [TKindVR.vrLO], 'Image Geometry Type' );
     Add( $0080, 'MaskingImage', [TKindVR.vrCS], 'Masking Image' );
     Add( $00AA, 'ReportNumber', [TKindVR.vrIS], 'Report Number' );
     Add( $0100, 'TemporalPositionIdentifier', [TKindVR.vrIS], 'Temporal Position Identifier' );
     Add( $0105, 'NumberOfTemporalPositions', [TKindVR.vrIS], 'Number of Temporal Positions' );
     Add( $0110, 'TemporalResolution', [TKindVR.vrDS], 'Temporal Resolution' );
     Add( $0200, 'SynchronizationFrameOfReferenceUID', [TKindVR.vrUI], 'Synchronization Frame of Reference UID' );
     Add( $0242, 'SOPInstanceUIDOfConcatenationSource', [TKindVR.vrUI], 'SOP Instance UID of Concatenation Source' );
     Add( $1000, 'SeriesInStudy', [TKindVR.vrIS], 'Series in Study' );
     Add( $1001, 'AcquisitionsInSeries', [TKindVR.vrIS], 'Acquisitions in Series' );
     Add( $1002, 'ImagesInAcquisition', [TKindVR.vrIS], 'Images in Acquisition' );
     Add( $1003, 'ImagesInSeries', [TKindVR.vrIS], 'Images in Series' );
     Add( $1004, 'AcquisitionsInStudy', [TKindVR.vrIS], 'Acquisitions in Study' );
     Add( $1005, 'ImagesInStudy', [TKindVR.vrIS], 'Images in Study' );
     Add( $1020, 'Reference', [TKindVR.vrLO], 'Reference' );
     Add( $103F, 'TargetPositionReferenceIndicator', [TKindVR.vrLO], 'Target Position Reference Indicator' );
     Add( $1040, 'PositionReferenceIndicator', [TKindVR.vrLO], 'Position Reference Indicator' );
     Add( $1041, 'SliceLocation', [TKindVR.vrDS], 'Slice Location' );
     Add( $1070, 'OtherStudyNumbers', [TKindVR.vrIS], 'Other Study Numbers' );
     Add( $1200, 'NumberOfPatientRelatedStudies', [TKindVR.vrIS], 'Number of Patient Related Studies' );
     Add( $1202, 'NumberOfPatientRelatedSeries', [TKindVR.vrIS], 'Number of Patient Related Series' );
     Add( $1204, 'NumberOfPatientRelatedInstances', [TKindVR.vrIS], 'Number of Patient Related Instances' );
     Add( $1206, 'NumberOfStudyRelatedSeries', [TKindVR.vrIS], 'Number of Study Related Series' );
     Add( $1208, 'NumberOfStudyRelatedInstances', [TKindVR.vrIS], 'Number of Study Related Instances' );
     Add( $1209, 'NumberOfSeriesRelatedInstances', [TKindVR.vrIS], 'Number of Series Related Instances' );
   //Add( $31xx, 'SourceImageIDs', [TKindVR.vrCS], 'Source Image IDs' );
     Add( $3401, 'ModifyingDeviceID', [TKindVR.vrCS], 'Modifying Device ID' );
     Add( $3402, 'ModifiedImageID', [TKindVR.vrCS], 'Modified Image ID' );
     Add( $3403, 'ModifiedImageDate', [TKindVR.vrDA], 'Modified Image Date' );
     Add( $3404, 'ModifyingDeviceManufacturer', [TKindVR.vrLO], 'Modifying Device Manufacturer' );
     Add( $3405, 'ModifiedImageTime', [TKindVR.vrTM], 'Modified Image Time' );
     Add( $3406, 'ModifiedImageDescription', [TKindVR.vrLO], 'Modified Image Description' );
     Add( $4000, 'ImageComments', [TKindVR.vrLT], 'Image Comments' );
     Add( $5000, 'OriginalImageIdentification', [TKindVR.vrAT], 'Original Image Identification' );
     Add( $5002, 'OriginalImageIdentificationNomenclature', [TKindVR.vrLO], 'Original Image Identification Nomenclature' );
     Add( $9056, 'StackID', [TKindVR.vrSH], 'Stack ID' );
     Add( $9057, 'InStackPositionNumber', [TKindVR.vrUL], 'In-Stack Position Number' );
     Add( $9071, 'FrameAnatomySequence', [TKindVR.vrSQ], 'Frame Anatomy Sequence' );
     Add( $9072, 'FrameLaterality', [TKindVR.vrCS], 'Frame Laterality' );
     Add( $9111, 'FrameContentSequence', [TKindVR.vrSQ], 'Frame Content Sequence' );
     Add( $9113, 'PlanePositionSequence', [TKindVR.vrSQ], 'Plane Position Sequence' );
     Add( $9116, 'PlaneOrientationSequence', [TKindVR.vrSQ], 'Plane Orientation Sequence' );
     Add( $9128, 'TemporalPositionIndex', [TKindVR.vrUL], 'Temporal Position Index' );
     Add( $9153, 'NominalCardiacTriggerDelayTime', [TKindVR.vrFD], 'Nominal Cardiac Trigger Delay Time' );
     Add( $9154, 'NominalCardiacTriggerTimePriorToRPeak', [TKindVR.vrFL], 'Nominal Cardiac Trigger Time Prior To R-Peak' );
     Add( $9155, 'ActualCardiacTriggerTimePriorToRPeak', [TKindVR.vrFL], 'Actual Cardiac Trigger Time Prior To R-Peak' );
     Add( $9156, 'FrameAcquisitionNumber', [TKindVR.vrUS], 'Frame Acquisition Number' );
     Add( $9157, 'DimensionIndexValues', [TKindVR.vrUL], 'Dimension Index Values' );
     Add( $9158, 'FrameComments', [TKindVR.vrLT], 'Frame Comments' );
     Add( $9161, 'ConcatenationUID', [TKindVR.vrUI], 'Concatenation UID' );
     Add( $9162, 'InConcatenationNumber', [TKindVR.vrUS], 'In-concatenation Number' );
     Add( $9163, 'InConcatenationTotalNumber', [TKindVR.vrUS], 'In-concatenation Total Number' );
     Add( $9164, 'DimensionOrganizationUID', [TKindVR.vrUI], 'Dimension Organization UID' );
     Add( $9165, 'DimensionIndexPointer', [TKindVR.vrAT], 'Dimension Index Pointer' );
     Add( $9167, 'FunctionalGroupPointer', [TKindVR.vrAT], 'Functional Group Pointer' );
     Add( $9170, 'UnassignedSharedConvertedAttributesSequence', [TKindVR.vrSQ], 'Unassigned Shared Converted Attributes Sequence' );
     Add( $9171, 'UnassignedPerFrameConvertedAttributesSequence', [TKindVR.vrSQ], 'Unassigned Per-Frame Converted Attributes Sequence' );
     Add( $9172, 'ConversionSourceAttributesSequence', [TKindVR.vrSQ], 'Conversion Source Attributes Sequence' );
     Add( $9213, 'DimensionIndexPrivateCreator', [TKindVR.vrLO], 'Dimension Index Private Creator' );
     Add( $9221, 'DimensionOrganizationSequence', [TKindVR.vrSQ], 'Dimension Organization Sequence' );
     Add( $9222, 'DimensionIndexSequence', [TKindVR.vrSQ], 'Dimension Index Sequence' );
     Add( $9228, 'ConcatenationFrameOffsetNumber', [TKindVR.vrUL], 'Concatenation Frame Offset Number' );
     Add( $9238, 'FunctionalGroupPrivateCreator', [TKindVR.vrLO], 'Functional Group Private Creator' );
     Add( $9241, 'NominalPercentageOfCardiacPhase', [TKindVR.vrFL], 'Nominal Percentage of Cardiac Phase' );
     Add( $9245, 'NominalPercentageOfRespiratoryPhase', [TKindVR.vrFL], 'Nominal Percentage of Respiratory Phase' );
     Add( $9246, 'StartingRespiratoryAmplitude', [TKindVR.vrFL], 'Starting Respiratory Amplitude' );
     Add( $9247, 'StartingRespiratoryPhase', [TKindVR.vrCS], 'Starting Respiratory Phase' );
     Add( $9248, 'EndingRespiratoryAmplitude', [TKindVR.vrFL], 'Ending Respiratory Amplitude' );
     Add( $9249, 'EndingRespiratoryPhase', [TKindVR.vrCS], 'Ending Respiratory Phase' );
     Add( $9250, 'RespiratoryTriggerType', [TKindVR.vrCS], 'Respiratory Trigger Type' );
     Add( $9251, 'RRIntervalTimeNominal', [TKindVR.vrFD], 'R-R Interval Time Nominal' );
     Add( $9252, 'ActualCardiacTriggerDelayTime', [TKindVR.vrFD], 'Actual Cardiac Trigger Delay Time' );
     Add( $9253, 'RespiratorySynchronizationSequence', [TKindVR.vrSQ], 'Respiratory Synchronization Sequence' );
     Add( $9254, 'RespiratoryIntervalTime', [TKindVR.vrFD], 'Respiratory Interval Time' );
     Add( $9255, 'NominalRespiratoryTriggerDelayTime', [TKindVR.vrFD], 'Nominal Respiratory Trigger Delay Time' );
     Add( $9256, 'RespiratoryTriggerDelayThreshold', [TKindVR.vrFD], 'Respiratory Trigger Delay Threshold' );
     Add( $9257, 'ActualRespiratoryTriggerDelayTime', [TKindVR.vrFD], 'Actual Respiratory Trigger Delay Time' );
     Add( $9301, 'ImagePositionVolume', [TKindVR.vrFD], 'Image Position (Volume)' );
     Add( $9302, 'ImageOrientationVolume', [TKindVR.vrFD], 'Image Orientation (Volume)' );
     Add( $9307, 'UltrasoundAcquisitionGeometry', [TKindVR.vrCS], 'Ultrasound Acquisition Geometry' );
     Add( $9308, 'ApexPosition', [TKindVR.vrFD], 'Apex Position' );
     Add( $9309, 'VolumeToTransducerMappingMatrix', [TKindVR.vrFD], 'Volume to Transducer Mapping Matrix' );
     Add( $930A, 'VolumeToTableMappingMatrix', [TKindVR.vrFD], 'Volume to Table Mapping Matrix' );
     Add( $930B, 'VolumeToTransducerRelationship', [TKindVR.vrCS], 'Volume to Transducer Relationship' );
     Add( $930C, 'PatientFrameOfReferenceSource', [TKindVR.vrCS], 'Patient Frame of Reference Source' );
     Add( $930D, 'TemporalPositionTimeOffset', [TKindVR.vrFD], 'Temporal Position Time Offset' );
     Add( $930E, 'PlanePositionVolumeSequence', [TKindVR.vrSQ], 'Plane Position (Volume) Sequence' );
     Add( $930F, 'PlaneOrientationVolumeSequence', [TKindVR.vrSQ], 'Plane Orientation (Volume) Sequence' );
     Add( $9310, 'TemporalPositionSequence', [TKindVR.vrSQ], 'Temporal Position Sequence' );
     Add( $9311, 'DimensionOrganizationType', [TKindVR.vrCS], 'Dimension Organization Type' );
     Add( $9312, 'VolumeFrameOfReferenceUID', [TKindVR.vrUI], 'Volume Frame of Reference UID' );
     Add( $9313, 'TableFrameOfReferenceUID', [TKindVR.vrUI], 'Table Frame of Reference UID' );
     Add( $9421, 'DimensionDescriptionLabel', [TKindVR.vrLO], 'Dimension Description Label' );
     Add( $9450, 'PatientOrientationInFrameSequence', [TKindVR.vrSQ], 'Patient Orientation in Frame Sequence' );
     Add( $9453, 'FrameLabel', [TKindVR.vrLO], 'Frame Label' );
     Add( $9518, 'AcquisitionIndex', [TKindVR.vrUS], 'Acquisition Index' );
     Add( $9529, 'ContributingSOPInstancesReferenceSequence', [TKindVR.vrSQ], 'Contributing SOP Instances Reference Sequence' );
     Add( $9536, 'ReconstructionIndex', [TKindVR.vrUS], 'Reconstruction Index' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
