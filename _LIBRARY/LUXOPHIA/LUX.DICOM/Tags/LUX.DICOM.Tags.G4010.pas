unit LUX.DICOM.Tags.G4010;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup4010

     TdcmGrup4010 = class( TdcmGrup )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup4010

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmGrup4010.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0001, [TTypeVR.vrCS], 'Low Energy Detectors' );
     Add( $0002, [TTypeVR.vrCS], 'High Energy Detectors' );
     Add( $0004, [TTypeVR.vrSQ], 'Detector Geometry Sequence' );
     Add( $1001, [TTypeVR.vrSQ], 'Threat ROI Voxel Sequence' );
     Add( $1004, [TTypeVR.vrFL], 'Threat ROI Base' );
     Add( $1005, [TTypeVR.vrFL], 'Threat ROI Extents' );
     Add( $1006, [TTypeVR.vrOB], 'Threat ROI Bitmap' );
     Add( $1007, [TTypeVR.vrSH], 'Route Segment ID' );
     Add( $1008, [TTypeVR.vrCS], 'Gantry Type' );
     Add( $1009, [TTypeVR.vrCS], 'OOI Owner Type' );
     Add( $100A, [TTypeVR.vrSQ], 'Route Segment Sequence' );
     Add( $1010, [TTypeVR.vrUS], 'Potential Threat Object ID' );
     Add( $1011, [TTypeVR.vrSQ], 'Threat Sequence' );
     Add( $1012, [TTypeVR.vrCS], 'Threat Category' );
     Add( $1013, [TTypeVR.vrLT], 'Threat Category Description' );
     Add( $1014, [TTypeVR.vrCS], 'ATD Ability Assessment' );
     Add( $1015, [TTypeVR.vrCS], 'ATD Assessment Flag' );
     Add( $1016, [TTypeVR.vrFL], 'ATD Assessment Probability' );
     Add( $1017, [TTypeVR.vrFL], 'Mass' );
     Add( $1018, [TTypeVR.vrFL], 'Density' );
     Add( $1019, [TTypeVR.vrFL], 'Z Effective' );
     Add( $101A, [TTypeVR.vrSH], 'Boarding Pass ID' );
     Add( $101B, [TTypeVR.vrFL], 'Center of Mass' );
     Add( $101C, [TTypeVR.vrFL], 'Center of PTO' );
     Add( $101D, [TTypeVR.vrFL], 'Bounding Polygon' );
     Add( $101E, [TTypeVR.vrSH], 'Route Segment Start Location ID' );
     Add( $101F, [TTypeVR.vrSH], 'Route Segment End Location ID' );
     Add( $1020, [TTypeVR.vrCS], 'Route Segment Location ID Type' );
     Add( $1021, [TTypeVR.vrCS], 'Abort Reason' );
     Add( $1023, [TTypeVR.vrFL], 'Volume of PTO' );
     Add( $1024, [TTypeVR.vrCS], 'Abort Flag' );
     Add( $1025, [TTypeVR.vrDT], 'Route Segment Start Time' );
     Add( $1026, [TTypeVR.vrDT], 'Route Segment End Time' );
     Add( $1027, [TTypeVR.vrCS], 'TDR Type' );
     Add( $1028, [TTypeVR.vrCS], 'International Route Segment' );
     Add( $1029, [TTypeVR.vrLO], 'Threat Detection Algorithm and Version' );
     Add( $102A, [TTypeVR.vrSH], 'Assigned Location' );
     Add( $102B, [TTypeVR.vrDT], 'Alarm Decision Time' );
     Add( $1031, [TTypeVR.vrCS], 'Alarm Decision' );
     Add( $1033, [TTypeVR.vrUS], 'Number of Total Objects' );
     Add( $1034, [TTypeVR.vrUS], 'Number of Alarm Objects' );
     Add( $1037, [TTypeVR.vrSQ], 'PTO Representation Sequence' );
     Add( $1038, [TTypeVR.vrSQ], 'ATD Assessment Sequence' );
     Add( $1039, [TTypeVR.vrCS], 'TIP Type' );
     Add( $103A, [TTypeVR.vrCS], 'DICOS Version' );
     Add( $1041, [TTypeVR.vrDT], 'OOI Owner Creation Time' );
     Add( $1042, [TTypeVR.vrCS], 'OOI Type' );
     Add( $1043, [TTypeVR.vrFL], 'OOI Size' );
     Add( $1044, [TTypeVR.vrCS], 'Acquisition Status' );
     Add( $1045, [TTypeVR.vrSQ], 'Basis Materials Code Sequence' );
     Add( $1046, [TTypeVR.vrCS], 'Phantom Type' );
     Add( $1047, [TTypeVR.vrSQ], 'OOI Owner Sequence' );
     Add( $1048, [TTypeVR.vrCS], 'Scan Type' );
     Add( $1051, [TTypeVR.vrLO], 'Itinerary ID' );
     Add( $1052, [TTypeVR.vrSH], 'Itinerary ID Type' );
     Add( $1053, [TTypeVR.vrLO], 'Itinerary ID Assigning Authority' );
     Add( $1054, [TTypeVR.vrSH], 'Route ID' );
     Add( $1055, [TTypeVR.vrSH], 'Route ID Assigning Authority' );
     Add( $1056, [TTypeVR.vrCS], 'Inbound Arrival Type' );
     Add( $1058, [TTypeVR.vrSH], 'Carrier ID' );
     Add( $1059, [TTypeVR.vrCS], 'Carrier ID Assigning Authority' );
     Add( $1060, [TTypeVR.vrFL], 'Source Orientation' );
     Add( $1061, [TTypeVR.vrFL], 'Source Position' );
     Add( $1062, [TTypeVR.vrFL], 'Belt Height' );
     Add( $1064, [TTypeVR.vrSQ], 'Algorithm Routing Code Sequence' );
     Add( $1067, [TTypeVR.vrCS], 'Transport Classification' );
     Add( $1068, [TTypeVR.vrLT], 'OOI Type Descriptor' );
     Add( $1069, [TTypeVR.vrFL], 'Total Processing Time' );
     Add( $106C, [TTypeVR.vrOB], 'Detector Calibration Data' );
     Add( $106D, [TTypeVR.vrCS], 'Additional Screening Performed' );
     Add( $106E, [TTypeVR.vrCS], 'Additional Inspection Selection Criteria' );
     Add( $106F, [TTypeVR.vrSQ], 'Additional Inspection Method Sequence' );
     Add( $1070, [TTypeVR.vrCS], 'AIT Device Type' );
     Add( $1071, [TTypeVR.vrSQ], 'QR Measurements Sequence' );
     Add( $1072, [TTypeVR.vrSQ], 'Target Material Sequence' );
     Add( $1073, [TTypeVR.vrFD], 'SNR Threshold' );
     Add( $1075, [TTypeVR.vrDS], 'Image Scale Representation' );
     Add( $1076, [TTypeVR.vrSQ], 'Referenced PTO Sequence' );
     Add( $1077, [TTypeVR.vrSQ], 'Referenced TDR Instance Sequence' );
     Add( $1078, [TTypeVR.vrST], 'PTO Location Description' );
     Add( $1079, [TTypeVR.vrSQ], 'Anomaly Locator Indicator Sequence' );
     Add( $107A, [TTypeVR.vrFL], 'Anomaly Locator Indicator' );
     Add( $107B, [TTypeVR.vrSQ], 'PTO Region Sequence' );
     Add( $107C, [TTypeVR.vrCS], 'Inspection Selection Criteria' );
     Add( $107D, [TTypeVR.vrSQ], 'Secondary Inspection Method Sequence' );
     Add( $107E, [TTypeVR.vrDS], 'PRCS to RCS Orientation' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
