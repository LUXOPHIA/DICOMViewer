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
     Add( $000D, 'StudyInstanceUID', [TTypeVR.vrUI], 'Study Instance UID' );
     Add( $000E, 'SeriesInstanceUID', [TTypeVR.vrUI], 'Series Instance UID' );
     Add( $0010, 'StudyID', [TTypeVR.vrSH], 'Study ID' );
     Add( $0011, 'SeriesNumber', [TTypeVR.vrIS], 'Series Number' );
     Add( $0012, 'AcquisitionNumber', [TTypeVR.vrIS], 'Acquisition Number' );
     Add( $0013, 'InstanceNumber', [TTypeVR.vrIS], 'Instance Number' );
     Add( $0014, 'IsotopeNumber', [TTypeVR.vrIS], 'Isotope Number' );
     Add( $0015, 'PhaseNumber', [TTypeVR.vrIS], 'Phase Number' );
     Add( $0016, 'IntervalNumber', [TTypeVR.vrIS], 'Interval Number' );
     Add( $0017, 'TimeSlotNumber', [TTypeVR.vrIS], 'Time Slot Number' );
     Add( $0018, 'AngleNumber', [TTypeVR.vrIS], 'Angle Number' );
     Add( $0019, 'ItemNumber', [TTypeVR.vrIS], 'Item Number' );
     Add( $0020, 'PatientOrientation', [TTypeVR.vrCS], 'Patient Orientation' );
     Add( $0022, 'OverlayNumber', [TTypeVR.vrIS], 'Overlay Number' );
     Add( $0024, 'CurveNumber', [TTypeVR.vrIS], 'Curve Number' );
     Add( $0026, 'LUTNumber', [TTypeVR.vrIS], 'LUT Number' );
     Add( $0030, 'ImagePosition', [TTypeVR.vrDS], 'Image Position' );
     Add( $0032, 'ImagePositionPatient', [TTypeVR.vrDS], 'Image Position (Patient)' );
     Add( $0035, 'ImageOrientation', [TTypeVR.vrDS], 'Image Orientation' );
     Add( $0037, 'ImageOrientationPatient', [TTypeVR.vrDS], 'Image Orientation (Patient)' );
     Add( $0050, 'Location', [TTypeVR.vrDS], 'Location' );
     Add( $0052, 'FrameOfReferenceUID', [TTypeVR.vrUI], 'Frame of Reference UID' );
     Add( $0060, 'Laterality', [TTypeVR.vrCS], 'Laterality' );
     Add( $0062, 'ImageLaterality', [TTypeVR.vrCS], 'Image Laterality' );
     Add( $0070, 'ImageGeometryType', [TTypeVR.vrLO], 'Image Geometry Type' );
     Add( $0080, 'MaskingImage', [TTypeVR.vrCS], 'Masking Image' );
     Add( $00AA, 'ReportNumber', [TTypeVR.vrIS], 'Report Number' );
     Add( $0100, 'TemporalPositionIdentifier', [TTypeVR.vrIS], 'Temporal Position Identifier' );
     Add( $0105, 'NumberOfTemporalPositions', [TTypeVR.vrIS], 'Number of Temporal Positions' );
     Add( $0110, 'TemporalResolution', [TTypeVR.vrDS], 'Temporal Resolution' );
     Add( $0200, 'SynchronizationFrameOfReferenceUID', [TTypeVR.vrUI], 'Synchronization Frame of Reference UID' );
     Add( $0242, 'SOPInstanceUIDOfConcatenationSource', [TTypeVR.vrUI], 'SOP Instance UID of Concatenation Source' );
     Add( $1000, 'SeriesInStudy', [TTypeVR.vrIS], 'Series in Study' );
     Add( $1001, 'AcquisitionsInSeries', [TTypeVR.vrIS], 'Acquisitions in Series' );
     Add( $1002, 'ImagesInAcquisition', [TTypeVR.vrIS], 'Images in Acquisition' );
     Add( $1003, 'ImagesInSeries', [TTypeVR.vrIS], 'Images in Series' );
     Add( $1004, 'AcquisitionsInStudy', [TTypeVR.vrIS], 'Acquisitions in Study' );
     Add( $1005, 'ImagesInStudy', [TTypeVR.vrIS], 'Images in Study' );
     Add( $1020, 'Reference', [TTypeVR.vrLO], 'Reference' );
     Add( $103F, 'TargetPositionReferenceIndicator', [TTypeVR.vrLO], 'Target Position Reference Indicator' );
     Add( $1040, 'PositionReferenceIndicator', [TTypeVR.vrLO], 'Position Reference Indicator' );
     Add( $1041, 'SliceLocation', [TTypeVR.vrDS], 'Slice Location' );
     Add( $1070, 'OtherStudyNumbers', [TTypeVR.vrIS], 'Other Study Numbers' );
     Add( $1200, 'NumberOfPatientRelatedStudies', [TTypeVR.vrIS], 'Number of Patient Related Studies' );
     Add( $1202, 'NumberOfPatientRelatedSeries', [TTypeVR.vrIS], 'Number of Patient Related Series' );
     Add( $1204, 'NumberOfPatientRelatedInstances', [TTypeVR.vrIS], 'Number of Patient Related Instances' );
     Add( $1206, 'NumberOfStudyRelatedSeries', [TTypeVR.vrIS], 'Number of Study Related Series' );
     Add( $1208, 'NumberOfStudyRelatedInstances', [TTypeVR.vrIS], 'Number of Study Related Instances' );
     Add( $1209, 'NumberOfSeriesRelatedInstances', [TTypeVR.vrIS], 'Number of Series Related Instances' );
   //Add( $31xx, 'SourceImageIDs', [TTypeVR.vrCS], 'Source Image IDs' );
     Add( $3401, 'ModifyingDeviceID', [TTypeVR.vrCS], 'Modifying Device ID' );
     Add( $3402, 'ModifiedImageID', [TTypeVR.vrCS], 'Modified Image ID' );
     Add( $3403, 'ModifiedImageDate', [TTypeVR.vrDA], 'Modified Image Date' );
     Add( $3404, 'ModifyingDeviceManufacturer', [TTypeVR.vrLO], 'Modifying Device Manufacturer' );
     Add( $3405, 'ModifiedImageTime', [TTypeVR.vrTM], 'Modified Image Time' );
     Add( $3406, 'ModifiedImageDescription', [TTypeVR.vrLO], 'Modified Image Description' );
     Add( $4000, 'ImageComments', [TTypeVR.vrLT], 'Image Comments' );
     Add( $5000, 'OriginalImageIdentification', [TTypeVR.vrAT], 'Original Image Identification' );
     Add( $5002, 'OriginalImageIdentificationNomenclature', [TTypeVR.vrLO], 'Original Image Identification Nomenclature' );
     Add( $9056, 'StackID', [TTypeVR.vrSH], 'Stack ID' );
     Add( $9057, 'InStackPositionNumber', [TTypeVR.vrUL], 'In-Stack Position Number' );
     Add( $9071, 'FrameAnatomySequence', [TTypeVR.vrSQ], 'Frame Anatomy Sequence' );
     Add( $9072, 'FrameLaterality', [TTypeVR.vrCS], 'Frame Laterality' );
     Add( $9111, 'FrameContentSequence', [TTypeVR.vrSQ], 'Frame Content Sequence' );
     Add( $9113, 'PlanePositionSequence', [TTypeVR.vrSQ], 'Plane Position Sequence' );
     Add( $9116, 'PlaneOrientationSequence', [TTypeVR.vrSQ], 'Plane Orientation Sequence' );
     Add( $9128, 'TemporalPositionIndex', [TTypeVR.vrUL], 'Temporal Position Index' );
     Add( $9153, 'NominalCardiacTriggerDelayTime', [TTypeVR.vrFD], 'Nominal Cardiac Trigger Delay Time' );
     Add( $9154, 'NominalCardiacTriggerTimePriorToRPeak', [TTypeVR.vrFL], 'Nominal Cardiac Trigger Time Prior To R-Peak' );
     Add( $9155, 'ActualCardiacTriggerTimePriorToRPeak', [TTypeVR.vrFL], 'Actual Cardiac Trigger Time Prior To R-Peak' );
     Add( $9156, 'FrameAcquisitionNumber', [TTypeVR.vrUS], 'Frame Acquisition Number' );
     Add( $9157, 'DimensionIndexValues', [TTypeVR.vrUL], 'Dimension Index Values' );
     Add( $9158, 'FrameComments', [TTypeVR.vrLT], 'Frame Comments' );
     Add( $9161, 'ConcatenationUID', [TTypeVR.vrUI], 'Concatenation UID' );
     Add( $9162, 'InConcatenationNumber', [TTypeVR.vrUS], 'In-concatenation Number' );
     Add( $9163, 'InConcatenationTotalNumber', [TTypeVR.vrUS], 'In-concatenation Total Number' );
     Add( $9164, 'DimensionOrganizationUID', [TTypeVR.vrUI], 'Dimension Organization UID' );
     Add( $9165, 'DimensionIndexPointer', [TTypeVR.vrAT], 'Dimension Index Pointer' );
     Add( $9167, 'FunctionalGroupPointer', [TTypeVR.vrAT], 'Functional Group Pointer' );
     Add( $9170, 'UnassignedSharedConvertedAttributesSequence', [TTypeVR.vrSQ], 'Unassigned Shared Converted Attributes Sequence' );
     Add( $9171, 'UnassignedPerFrameConvertedAttributesSequence', [TTypeVR.vrSQ], 'Unassigned Per-Frame Converted Attributes Sequence' );
     Add( $9172, 'ConversionSourceAttributesSequence', [TTypeVR.vrSQ], 'Conversion Source Attributes Sequence' );
     Add( $9213, 'DimensionIndexPrivateCreator', [TTypeVR.vrLO], 'Dimension Index Private Creator' );
     Add( $9221, 'DimensionOrganizationSequence', [TTypeVR.vrSQ], 'Dimension Organization Sequence' );
     Add( $9222, 'DimensionIndexSequence', [TTypeVR.vrSQ], 'Dimension Index Sequence' );
     Add( $9228, 'ConcatenationFrameOffsetNumber', [TTypeVR.vrUL], 'Concatenation Frame Offset Number' );
     Add( $9238, 'FunctionalGroupPrivateCreator', [TTypeVR.vrLO], 'Functional Group Private Creator' );
     Add( $9241, 'NominalPercentageOfCardiacPhase', [TTypeVR.vrFL], 'Nominal Percentage of Cardiac Phase' );
     Add( $9245, 'NominalPercentageOfRespiratoryPhase', [TTypeVR.vrFL], 'Nominal Percentage of Respiratory Phase' );
     Add( $9246, 'StartingRespiratoryAmplitude', [TTypeVR.vrFL], 'Starting Respiratory Amplitude' );
     Add( $9247, 'StartingRespiratoryPhase', [TTypeVR.vrCS], 'Starting Respiratory Phase' );
     Add( $9248, 'EndingRespiratoryAmplitude', [TTypeVR.vrFL], 'Ending Respiratory Amplitude' );
     Add( $9249, 'EndingRespiratoryPhase', [TTypeVR.vrCS], 'Ending Respiratory Phase' );
     Add( $9250, 'RespiratoryTriggerType', [TTypeVR.vrCS], 'Respiratory Trigger Type' );
     Add( $9251, 'RRIntervalTimeNominal', [TTypeVR.vrFD], 'R-R Interval Time Nominal' );
     Add( $9252, 'ActualCardiacTriggerDelayTime', [TTypeVR.vrFD], 'Actual Cardiac Trigger Delay Time' );
     Add( $9253, 'RespiratorySynchronizationSequence', [TTypeVR.vrSQ], 'Respiratory Synchronization Sequence' );
     Add( $9254, 'RespiratoryIntervalTime', [TTypeVR.vrFD], 'Respiratory Interval Time' );
     Add( $9255, 'NominalRespiratoryTriggerDelayTime', [TTypeVR.vrFD], 'Nominal Respiratory Trigger Delay Time' );
     Add( $9256, 'RespiratoryTriggerDelayThreshold', [TTypeVR.vrFD], 'Respiratory Trigger Delay Threshold' );
     Add( $9257, 'ActualRespiratoryTriggerDelayTime', [TTypeVR.vrFD], 'Actual Respiratory Trigger Delay Time' );
     Add( $9301, 'ImagePositionVolume', [TTypeVR.vrFD], 'Image Position (Volume)' );
     Add( $9302, 'ImageOrientationVolume', [TTypeVR.vrFD], 'Image Orientation (Volume)' );
     Add( $9307, 'UltrasoundAcquisitionGeometry', [TTypeVR.vrCS], 'Ultrasound Acquisition Geometry' );
     Add( $9308, 'ApexPosition', [TTypeVR.vrFD], 'Apex Position' );
     Add( $9309, 'VolumeToTransducerMappingMatrix', [TTypeVR.vrFD], 'Volume to Transducer Mapping Matrix' );
     Add( $930A, 'VolumeToTableMappingMatrix', [TTypeVR.vrFD], 'Volume to Table Mapping Matrix' );
     Add( $930B, 'VolumeToTransducerRelationship', [TTypeVR.vrCS], 'Volume to Transducer Relationship' );
     Add( $930C, 'PatientFrameOfReferenceSource', [TTypeVR.vrCS], 'Patient Frame of Reference Source' );
     Add( $930D, 'TemporalPositionTimeOffset', [TTypeVR.vrFD], 'Temporal Position Time Offset' );
     Add( $930E, 'PlanePositionVolumeSequence', [TTypeVR.vrSQ], 'Plane Position (Volume) Sequence' );
     Add( $930F, 'PlaneOrientationVolumeSequence', [TTypeVR.vrSQ], 'Plane Orientation (Volume) Sequence' );
     Add( $9310, 'TemporalPositionSequence', [TTypeVR.vrSQ], 'Temporal Position Sequence' );
     Add( $9311, 'DimensionOrganizationType', [TTypeVR.vrCS], 'Dimension Organization Type' );
     Add( $9312, 'VolumeFrameOfReferenceUID', [TTypeVR.vrUI], 'Volume Frame of Reference UID' );
     Add( $9313, 'TableFrameOfReferenceUID', [TTypeVR.vrUI], 'Table Frame of Reference UID' );
     Add( $9421, 'DimensionDescriptionLabel', [TTypeVR.vrLO], 'Dimension Description Label' );
     Add( $9450, 'PatientOrientationInFrameSequence', [TTypeVR.vrSQ], 'Patient Orientation in Frame Sequence' );
     Add( $9453, 'FrameLabel', [TTypeVR.vrLO], 'Frame Label' );
     Add( $9518, 'AcquisitionIndex', [TTypeVR.vrUS], 'Acquisition Index' );
     Add( $9529, 'ContributingSOPInstancesReferenceSequence', [TTypeVR.vrSQ], 'Contributing SOP Instances Reference Sequence' );
     Add( $9536, 'ReconstructionIndex', [TTypeVR.vrUS], 'Reconstruction Index' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
