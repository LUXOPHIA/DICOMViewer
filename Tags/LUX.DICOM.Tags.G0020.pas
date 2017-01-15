unit LUX.DICOM.Tags.G0020;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems0020

     TDICOMElems0020 = class( TDICOMElems )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems0020

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TDICOMElems0020.Create;
begin
     inherited;

     Add( $0000, [TTypeVR.vrUL], 'RelationshipGroupLength' );

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $000D, [TTypeVR.vrUI], 'Study Instance UID' );
     Add( $000E, [TTypeVR.vrUI], 'Series Instance UID' );
     Add( $0010, [TTypeVR.vrSH], 'Study ID' );
     Add( $0011, [TTypeVR.vrIS], 'Series Number' );
     Add( $0012, [TTypeVR.vrIS], 'Acquisition Number' );
     Add( $0013, [TTypeVR.vrIS], 'Instance Number' );
     Add( $0014, [TTypeVR.vrIS], 'Isotope Number' );
     Add( $0015, [TTypeVR.vrIS], 'Phase Number' );
     Add( $0016, [TTypeVR.vrIS], 'Interval Number' );
     Add( $0017, [TTypeVR.vrIS], 'Time Slot Number' );
     Add( $0018, [TTypeVR.vrIS], 'Angle Number' );
     Add( $0019, [TTypeVR.vrIS], 'Item Number' );
     Add( $0020, [TTypeVR.vrCS], 'Patient Orientation' );
     Add( $0022, [TTypeVR.vrIS], 'Overlay Number' );
     Add( $0024, [TTypeVR.vrIS], 'Curve Number' );
     Add( $0026, [TTypeVR.vrIS], 'LUT Number' );
     Add( $0030, [TTypeVR.vrDS], 'Image Position' );
     Add( $0032, [TTypeVR.vrDS], 'Image Position (Patient)' );
     Add( $0035, [TTypeVR.vrDS], 'Image Orientation' );
     Add( $0037, [TTypeVR.vrDS], 'Image Orientation (Patient)' );
     Add( $0050, [TTypeVR.vrDS], 'Location' );
     Add( $0052, [TTypeVR.vrUI], 'Frame of Reference UID' );
     Add( $0060, [TTypeVR.vrCS], 'Laterality' );
     Add( $0062, [TTypeVR.vrCS], 'Image Laterality' );
     Add( $0070, [TTypeVR.vrLO], 'Image Geometry Type' );
     Add( $0080, [TTypeVR.vrCS], 'Masking Image' );
     Add( $00AA, [TTypeVR.vrIS], 'Report Number' );
     Add( $0100, [TTypeVR.vrIS], 'Temporal Position Identifier' );
     Add( $0105, [TTypeVR.vrIS], 'Number of Temporal Positions' );
     Add( $0110, [TTypeVR.vrDS], 'Temporal Resolution' );
     Add( $0200, [TTypeVR.vrUI], 'Synchronization Frame of Reference UID' );
     Add( $0242, [TTypeVR.vrUI], 'SOP Instance UID of Concatenation Source' );
     Add( $1000, [TTypeVR.vrIS], 'Series in Study' );
     Add( $1001, [TTypeVR.vrIS], 'Acquisitions in Series' );
     Add( $1002, [TTypeVR.vrIS], 'Images in Acquisition' );
     Add( $1003, [TTypeVR.vrIS], 'Images in Series' );
     Add( $1004, [TTypeVR.vrIS], 'Acquisitions in Study' );
     Add( $1005, [TTypeVR.vrIS], 'Images in Study' );
     Add( $1020, [TTypeVR.vrLO], 'Reference' );
     Add( $103F, [TTypeVR.vrLO], 'Target Position Reference Indicator' );
     Add( $1040, [TTypeVR.vrLO], 'Position Reference Indicator' );
     Add( $1041, [TTypeVR.vrDS], 'Slice Location' );
     Add( $1070, [TTypeVR.vrIS], 'Other Study Numbers' );
     Add( $1200, [TTypeVR.vrIS], 'Number of Patient Related Studies' );
     Add( $1202, [TTypeVR.vrIS], 'Number of Patient Related Series' );
     Add( $1204, [TTypeVR.vrIS], 'Number of Patient Related Instances' );
     Add( $1206, [TTypeVR.vrIS], 'Number of Study Related Series' );
     Add( $1208, [TTypeVR.vrIS], 'Number of Study Related Instances' );
     Add( $1209, [TTypeVR.vrIS], 'Number of Series Related Instances' );
   //Add( $31xx, [TTypeVR.vrCS], 'Source Image IDs' );
     Add( $3401, [TTypeVR.vrCS], 'Modifying Device ID' );
     Add( $3402, [TTypeVR.vrCS], 'Modified Image ID' );
     Add( $3403, [TTypeVR.vrDA], 'Modified Image Date' );
     Add( $3404, [TTypeVR.vrLO], 'Modifying Device Manufacturer' );
     Add( $3405, [TTypeVR.vrTM], 'Modified Image Time' );
     Add( $3406, [TTypeVR.vrLO], 'Modified Image Description' );
     Add( $4000, [TTypeVR.vrLT], 'Image Comments' );
     Add( $5000, [TTypeVR.vrAT], 'Original Image Identification' );
     Add( $5002, [TTypeVR.vrLO], 'Original Image Identification Nomenclature' );
     Add( $9056, [TTypeVR.vrSH], 'Stack ID' );
     Add( $9057, [TTypeVR.vrUL], 'In-Stack Position Number' );
     Add( $9071, [TTypeVR.vrSQ], 'Frame Anatomy Sequence' );
     Add( $9072, [TTypeVR.vrCS], 'Frame Laterality' );
     Add( $9111, [TTypeVR.vrSQ], 'Frame Content Sequence' );
     Add( $9113, [TTypeVR.vrSQ], 'Plane Position Sequence' );
     Add( $9116, [TTypeVR.vrSQ], 'Plane Orientation Sequence' );
     Add( $9128, [TTypeVR.vrUL], 'Temporal Position Index' );
     Add( $9153, [TTypeVR.vrFD], 'Nominal Cardiac Trigger Delay Time' );
     Add( $9154, [TTypeVR.vrFL], 'Nominal Cardiac Trigger Time Prior To R-Peak' );
     Add( $9155, [TTypeVR.vrFL], 'Actual Cardiac Trigger Time Prior To R-Peak' );
     Add( $9156, [TTypeVR.vrUS], 'Frame Acquisition Number' );
     Add( $9157, [TTypeVR.vrUL], 'Dimension Index Values' );
     Add( $9158, [TTypeVR.vrLT], 'Frame Comments' );
     Add( $9161, [TTypeVR.vrUI], 'Concatenation UID' );
     Add( $9162, [TTypeVR.vrUS], 'In-concatenation Number' );
     Add( $9163, [TTypeVR.vrUS], 'In-concatenation Total Number' );
     Add( $9164, [TTypeVR.vrUI], 'Dimension Organization UID' );
     Add( $9165, [TTypeVR.vrAT], 'Dimension Index Pointer' );
     Add( $9167, [TTypeVR.vrAT], 'Functional Group Pointer' );
     Add( $9170, [TTypeVR.vrSQ], 'Unassigned Shared Converted Attributes Sequence' );
     Add( $9171, [TTypeVR.vrSQ], 'Unassigned Per-Frame Converted Attributes Sequence' );
     Add( $9172, [TTypeVR.vrSQ], 'Conversion Source Attributes Sequence' );
     Add( $9213, [TTypeVR.vrLO], 'Dimension Index Private Creator' );
     Add( $9221, [TTypeVR.vrSQ], 'Dimension Organization Sequence' );
     Add( $9222, [TTypeVR.vrSQ], 'Dimension Index Sequence' );
     Add( $9228, [TTypeVR.vrUL], 'Concatenation Frame Offset Number' );
     Add( $9238, [TTypeVR.vrLO], 'Functional Group Private Creator' );
     Add( $9241, [TTypeVR.vrFL], 'Nominal Percentage of Cardiac Phase' );
     Add( $9245, [TTypeVR.vrFL], 'Nominal Percentage of Respiratory Phase' );
     Add( $9246, [TTypeVR.vrFL], 'Starting Respiratory Amplitude' );
     Add( $9247, [TTypeVR.vrCS], 'Starting Respiratory Phase' );
     Add( $9248, [TTypeVR.vrFL], 'Ending Respiratory Amplitude' );
     Add( $9249, [TTypeVR.vrCS], 'Ending Respiratory Phase' );
     Add( $9250, [TTypeVR.vrCS], 'Respiratory Trigger Type' );
     Add( $9251, [TTypeVR.vrFD], 'R-R Interval Time Nominal' );
     Add( $9252, [TTypeVR.vrFD], 'Actual Cardiac Trigger Delay Time' );
     Add( $9253, [TTypeVR.vrSQ], 'Respiratory Synchronization Sequence' );
     Add( $9254, [TTypeVR.vrFD], 'Respiratory Interval Time' );
     Add( $9255, [TTypeVR.vrFD], 'Nominal Respiratory Trigger Delay Time' );
     Add( $9256, [TTypeVR.vrFD], 'Respiratory Trigger Delay Threshold' );
     Add( $9257, [TTypeVR.vrFD], 'Actual Respiratory Trigger Delay Time' );
     Add( $9301, [TTypeVR.vrFD], 'Image Position (Volume)' );
     Add( $9302, [TTypeVR.vrFD], 'Image Orientation (Volume)' );
     Add( $9307, [TTypeVR.vrCS], 'Ultrasound Acquisition Geometry' );
     Add( $9308, [TTypeVR.vrFD], 'Apex Position' );
     Add( $9309, [TTypeVR.vrFD], 'Volume to Transducer Mapping Matrix' );
     Add( $930A, [TTypeVR.vrFD], 'Volume to Table Mapping Matrix' );
     Add( $930B, [TTypeVR.vrCS], 'Volume to Transducer Relationship' );
     Add( $930C, [TTypeVR.vrCS], 'Patient Frame of Reference Source' );
     Add( $930D, [TTypeVR.vrFD], 'Temporal Position Time Offset' );
     Add( $930E, [TTypeVR.vrSQ], 'Plane Position (Volume) Sequence' );
     Add( $930F, [TTypeVR.vrSQ], 'Plane Orientation (Volume) Sequence' );
     Add( $9310, [TTypeVR.vrSQ], 'Temporal Position Sequence' );
     Add( $9311, [TTypeVR.vrCS], 'Dimension Organization Type' );
     Add( $9312, [TTypeVR.vrUI], 'Volume Frame of Reference UID' );
     Add( $9313, [TTypeVR.vrUI], 'Table Frame of Reference UID' );
     Add( $9421, [TTypeVR.vrLO], 'Dimension Description Label' );
     Add( $9450, [TTypeVR.vrSQ], 'Patient Orientation in Frame Sequence' );
     Add( $9453, [TTypeVR.vrLO], 'Frame Label' );
     Add( $9518, [TTypeVR.vrUS], 'Acquisition Index' );
     Add( $9529, [TTypeVR.vrSQ], 'Contributing SOP Instances Reference Sequence' );
     Add( $9536, [TTypeVR.vrUS], 'Reconstruction Index' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
