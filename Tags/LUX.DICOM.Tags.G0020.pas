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

     Add( $0000, TKindVR.vrUL, 'RelationshipGroupLength' );

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $000D, TKindVR.vrUI, 'Study Instance UID' );
     Add( $000E, TKindVR.vrUI, 'Series Instance UID' );
     Add( $0010, TKindVR.vrSH, 'Study ID' );
     Add( $0011, TKindVR.vrIS, 'Series Number' );
     Add( $0012, TKindVR.vrIS, 'Acquisition Number' );
     Add( $0013, TKindVR.vrIS, 'Instance Number' );
     Add( $0014, TKindVR.vrIS, 'Isotope Number' );
     Add( $0015, TKindVR.vrIS, 'Phase Number' );
     Add( $0016, TKindVR.vrIS, 'Interval Number' );
     Add( $0017, TKindVR.vrIS, 'Time Slot Number' );
     Add( $0018, TKindVR.vrIS, 'Angle Number' );
     Add( $0019, TKindVR.vrIS, 'Item Number' );
     Add( $0020, TKindVR.vrCS, 'Patient Orientation' );
     Add( $0022, TKindVR.vrIS, 'Overlay Number' );
     Add( $0024, TKindVR.vrIS, 'Curve Number' );
     Add( $0026, TKindVR.vrIS, 'LUT Number' );
     Add( $0030, TKindVR.vrDS, 'Image Position' );
     Add( $0032, TKindVR.vrDS, 'Image Position (Patient)' );
     Add( $0035, TKindVR.vrDS, 'Image Orientation' );
     Add( $0037, TKindVR.vrDS, 'Image Orientation (Patient)' );
     Add( $0050, TKindVR.vrDS, 'Location' );
     Add( $0052, TKindVR.vrUI, 'Frame of Reference UID' );
     Add( $0060, TKindVR.vrCS, 'Laterality' );
     Add( $0062, TKindVR.vrCS, 'Image Laterality' );
     Add( $0070, TKindVR.vrLO, 'Image Geometry Type' );
     Add( $0080, TKindVR.vrCS, 'Masking Image' );
     Add( $00AA, TKindVR.vrIS, 'Report Number' );
     Add( $0100, TKindVR.vrIS, 'Temporal Position Identifier' );
     Add( $0105, TKindVR.vrIS, 'Number of Temporal Positions' );
     Add( $0110, TKindVR.vrDS, 'Temporal Resolution' );
     Add( $0200, TKindVR.vrUI, 'Synchronization Frame of Reference UID' );
     Add( $0242, TKindVR.vrUI, 'SOP Instance UID of Concatenation Source' );
     Add( $1000, TKindVR.vrIS, 'Series in Study' );
     Add( $1001, TKindVR.vrIS, 'Acquisitions in Series' );
     Add( $1002, TKindVR.vrIS, 'Images in Acquisition' );
     Add( $1003, TKindVR.vrIS, 'Images in Series' );
     Add( $1004, TKindVR.vrIS, 'Acquisitions in Study' );
     Add( $1005, TKindVR.vrIS, 'Images in Study' );
     Add( $1020, TKindVR.vrLO, 'Reference' );
     Add( $103F, TKindVR.vrLO, 'Target Position Reference Indicator' );
     Add( $1040, TKindVR.vrLO, 'Position Reference Indicator' );
     Add( $1041, TKindVR.vrDS, 'Slice Location' );
     Add( $1070, TKindVR.vrIS, 'Other Study Numbers' );
     Add( $1200, TKindVR.vrIS, 'Number of Patient Related Studies' );
     Add( $1202, TKindVR.vrIS, 'Number of Patient Related Series' );
     Add( $1204, TKindVR.vrIS, 'Number of Patient Related Instances' );
     Add( $1206, TKindVR.vrIS, 'Number of Study Related Series' );
     Add( $1208, TKindVR.vrIS, 'Number of Study Related Instances' );
     Add( $1209, TKindVR.vrIS, 'Number of Series Related Instances' );
   //Add( $31xx, TKindVR.vrCS, 'Source Image IDs' );
     Add( $3401, TKindVR.vrCS, 'Modifying Device ID' );
     Add( $3402, TKindVR.vrCS, 'Modified Image ID' );
     Add( $3403, TKindVR.vrDA, 'Modified Image Date' );
     Add( $3404, TKindVR.vrLO, 'Modifying Device Manufacturer' );
     Add( $3405, TKindVR.vrTM, 'Modified Image Time' );
     Add( $3406, TKindVR.vrLO, 'Modified Image Description' );
     Add( $4000, TKindVR.vrLT, 'Image Comments' );
     Add( $5000, TKindVR.vrAT, 'Original Image Identification' );
     Add( $5002, TKindVR.vrLO, 'Original Image Identification Nomenclature' );
     Add( $9056, TKindVR.vrSH, 'Stack ID' );
     Add( $9057, TKindVR.vrUL, 'In-Stack Position Number' );
     Add( $9071, TKindVR.vrSQ, 'Frame Anatomy Sequence' );
     Add( $9072, TKindVR.vrCS, 'Frame Laterality' );
     Add( $9111, TKindVR.vrSQ, 'Frame Content Sequence' );
     Add( $9113, TKindVR.vrSQ, 'Plane Position Sequence' );
     Add( $9116, TKindVR.vrSQ, 'Plane Orientation Sequence' );
     Add( $9128, TKindVR.vrUL, 'Temporal Position Index' );
     Add( $9153, TKindVR.vrFD, 'Nominal Cardiac Trigger Delay Time' );
     Add( $9154, TKindVR.vrFL, 'Nominal Cardiac Trigger Time Prior To R-Peak' );
     Add( $9155, TKindVR.vrFL, 'Actual Cardiac Trigger Time Prior To R-Peak' );
     Add( $9156, TKindVR.vrUS, 'Frame Acquisition Number' );
     Add( $9157, TKindVR.vrUL, 'Dimension Index Values' );
     Add( $9158, TKindVR.vrLT, 'Frame Comments' );
     Add( $9161, TKindVR.vrUI, 'Concatenation UID' );
     Add( $9162, TKindVR.vrUS, 'In-concatenation Number' );
     Add( $9163, TKindVR.vrUS, 'In-concatenation Total Number' );
     Add( $9164, TKindVR.vrUI, 'Dimension Organization UID' );
     Add( $9165, TKindVR.vrAT, 'Dimension Index Pointer' );
     Add( $9167, TKindVR.vrAT, 'Functional Group Pointer' );
     Add( $9170, TKindVR.vrSQ, 'Unassigned Shared Converted Attributes Sequence' );
     Add( $9171, TKindVR.vrSQ, 'Unassigned Per-Frame Converted Attributes Sequence' );
     Add( $9172, TKindVR.vrSQ, 'Conversion Source Attributes Sequence' );
     Add( $9213, TKindVR.vrLO, 'Dimension Index Private Creator' );
     Add( $9221, TKindVR.vrSQ, 'Dimension Organization Sequence' );
     Add( $9222, TKindVR.vrSQ, 'Dimension Index Sequence' );
     Add( $9228, TKindVR.vrUL, 'Concatenation Frame Offset Number' );
     Add( $9238, TKindVR.vrLO, 'Functional Group Private Creator' );
     Add( $9241, TKindVR.vrFL, 'Nominal Percentage of Cardiac Phase' );
     Add( $9245, TKindVR.vrFL, 'Nominal Percentage of Respiratory Phase' );
     Add( $9246, TKindVR.vrFL, 'Starting Respiratory Amplitude' );
     Add( $9247, TKindVR.vrCS, 'Starting Respiratory Phase' );
     Add( $9248, TKindVR.vrFL, 'Ending Respiratory Amplitude' );
     Add( $9249, TKindVR.vrCS, 'Ending Respiratory Phase' );
     Add( $9250, TKindVR.vrCS, 'Respiratory Trigger Type' );
     Add( $9251, TKindVR.vrFD, 'R-R Interval Time Nominal' );
     Add( $9252, TKindVR.vrFD, 'Actual Cardiac Trigger Delay Time' );
     Add( $9253, TKindVR.vrSQ, 'Respiratory Synchronization Sequence' );
     Add( $9254, TKindVR.vrFD, 'Respiratory Interval Time' );
     Add( $9255, TKindVR.vrFD, 'Nominal Respiratory Trigger Delay Time' );
     Add( $9256, TKindVR.vrFD, 'Respiratory Trigger Delay Threshold' );
     Add( $9257, TKindVR.vrFD, 'Actual Respiratory Trigger Delay Time' );
     Add( $9301, TKindVR.vrFD, 'Image Position (Volume)' );
     Add( $9302, TKindVR.vrFD, 'Image Orientation (Volume)' );
     Add( $9307, TKindVR.vrCS, 'Ultrasound Acquisition Geometry' );
     Add( $9308, TKindVR.vrFD, 'Apex Position' );
     Add( $9309, TKindVR.vrFD, 'Volume to Transducer Mapping Matrix' );
     Add( $930A, TKindVR.vrFD, 'Volume to Table Mapping Matrix' );
     Add( $930B, TKindVR.vrCS, 'Volume to Transducer Relationship' );
     Add( $930C, TKindVR.vrCS, 'Patient Frame of Reference Source' );
     Add( $930D, TKindVR.vrFD, 'Temporal Position Time Offset' );
     Add( $930E, TKindVR.vrSQ, 'Plane Position (Volume) Sequence' );
     Add( $930F, TKindVR.vrSQ, 'Plane Orientation (Volume) Sequence' );
     Add( $9310, TKindVR.vrSQ, 'Temporal Position Sequence' );
     Add( $9311, TKindVR.vrCS, 'Dimension Organization Type' );
     Add( $9312, TKindVR.vrUI, 'Volume Frame of Reference UID' );
     Add( $9313, TKindVR.vrUI, 'Table Frame of Reference UID' );
     Add( $9421, TKindVR.vrLO, 'Dimension Description Label' );
     Add( $9450, TKindVR.vrSQ, 'Patient Orientation in Frame Sequence' );
     Add( $9453, TKindVR.vrLO, 'Frame Label' );
     Add( $9518, TKindVR.vrUS, 'Acquisition Index' );
     Add( $9529, TKindVR.vrSQ, 'Contributing SOP Instances Reference Sequence' );
     Add( $9536, TKindVR.vrUS, 'Reconstruction Index' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
