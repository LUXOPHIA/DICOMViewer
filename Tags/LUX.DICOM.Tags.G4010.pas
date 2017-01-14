unit LUX.DICOM.Tags.G4010;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems4010

     TDICOMElems4010 = class( TDICOMElems )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems4010

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TDICOMElems4010.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0001, TKindVR.vrCS, 'Low Energy Detectors' );
     Add( $0002, TKindVR.vrCS, 'High Energy Detectors' );
     Add( $0004, TKindVR.vrSQ, 'Detector Geometry Sequence' );
     Add( $1001, TKindVR.vrSQ, 'Threat ROI Voxel Sequence' );
     Add( $1004, TKindVR.vrFL, 'Threat ROI Base' );
     Add( $1005, TKindVR.vrFL, 'Threat ROI Extents' );
     Add( $1006, TKindVR.vrOB, 'Threat ROI Bitmap' );
     Add( $1007, TKindVR.vrSH, 'Route Segment ID' );
     Add( $1008, TKindVR.vrCS, 'Gantry Type' );
     Add( $1009, TKindVR.vrCS, 'OOI Owner Type' );
     Add( $100A, TKindVR.vrSQ, 'Route Segment Sequence' );
     Add( $1010, TKindVR.vrUS, 'Potential Threat Object ID' );
     Add( $1011, TKindVR.vrSQ, 'Threat Sequence' );
     Add( $1012, TKindVR.vrCS, 'Threat Category' );
     Add( $1013, TKindVR.vrLT, 'Threat Category Description' );
     Add( $1014, TKindVR.vrCS, 'ATD Ability Assessment' );
     Add( $1015, TKindVR.vrCS, 'ATD Assessment Flag' );
     Add( $1016, TKindVR.vrFL, 'ATD Assessment Probability' );
     Add( $1017, TKindVR.vrFL, 'Mass' );
     Add( $1018, TKindVR.vrFL, 'Density' );
     Add( $1019, TKindVR.vrFL, 'Z Effective' );
     Add( $101A, TKindVR.vrSH, 'Boarding Pass ID' );
     Add( $101B, TKindVR.vrFL, 'Center of Mass' );
     Add( $101C, TKindVR.vrFL, 'Center of PTO' );
     Add( $101D, TKindVR.vrFL, 'Bounding Polygon' );
     Add( $101E, TKindVR.vrSH, 'Route Segment Start Location ID' );
     Add( $101F, TKindVR.vrSH, 'Route Segment End Location ID' );
     Add( $1020, TKindVR.vrCS, 'Route Segment Location ID Type' );
     Add( $1021, TKindVR.vrCS, 'Abort Reason' );
     Add( $1023, TKindVR.vrFL, 'Volume of PTO' );
     Add( $1024, TKindVR.vrCS, 'Abort Flag' );
     Add( $1025, TKindVR.vrDT, 'Route Segment Start Time' );
     Add( $1026, TKindVR.vrDT, 'Route Segment End Time' );
     Add( $1027, TKindVR.vrCS, 'TDR Type' );
     Add( $1028, TKindVR.vrCS, 'International Route Segment' );
     Add( $1029, TKindVR.vrLO, 'Threat Detection Algorithm and Version' );
     Add( $102A, TKindVR.vrSH, 'Assigned Location' );
     Add( $102B, TKindVR.vrDT, 'Alarm Decision Time' );
     Add( $1031, TKindVR.vrCS, 'Alarm Decision' );
     Add( $1033, TKindVR.vrUS, 'Number of Total Objects' );
     Add( $1034, TKindVR.vrUS, 'Number of Alarm Objects' );
     Add( $1037, TKindVR.vrSQ, 'PTO Representation Sequence' );
     Add( $1038, TKindVR.vrSQ, 'ATD Assessment Sequence' );
     Add( $1039, TKindVR.vrCS, 'TIP Type' );
     Add( $103A, TKindVR.vrCS, 'DICOS Version' );
     Add( $1041, TKindVR.vrDT, 'OOI Owner Creation Time' );
     Add( $1042, TKindVR.vrCS, 'OOI Type' );
     Add( $1043, TKindVR.vrFL, 'OOI Size' );
     Add( $1044, TKindVR.vrCS, 'Acquisition Status' );
     Add( $1045, TKindVR.vrSQ, 'Basis Materials Code Sequence' );
     Add( $1046, TKindVR.vrCS, 'Phantom Type' );
     Add( $1047, TKindVR.vrSQ, 'OOI Owner Sequence' );
     Add( $1048, TKindVR.vrCS, 'Scan Type' );
     Add( $1051, TKindVR.vrLO, 'Itinerary ID' );
     Add( $1052, TKindVR.vrSH, 'Itinerary ID Type' );
     Add( $1053, TKindVR.vrLO, 'Itinerary ID Assigning Authority' );
     Add( $1054, TKindVR.vrSH, 'Route ID' );
     Add( $1055, TKindVR.vrSH, 'Route ID Assigning Authority' );
     Add( $1056, TKindVR.vrCS, 'Inbound Arrival Type' );
     Add( $1058, TKindVR.vrSH, 'Carrier ID' );
     Add( $1059, TKindVR.vrCS, 'Carrier ID Assigning Authority' );
     Add( $1060, TKindVR.vrFL, 'Source Orientation' );
     Add( $1061, TKindVR.vrFL, 'Source Position' );
     Add( $1062, TKindVR.vrFL, 'Belt Height' );
     Add( $1064, TKindVR.vrSQ, 'Algorithm Routing Code Sequence' );
     Add( $1067, TKindVR.vrCS, 'Transport Classification' );
     Add( $1068, TKindVR.vrLT, 'OOI Type Descriptor' );
     Add( $1069, TKindVR.vrFL, 'Total Processing Time' );
     Add( $106C, TKindVR.vrOB, 'Detector Calibration Data' );
     Add( $106D, TKindVR.vrCS, 'Additional Screening Performed' );
     Add( $106E, TKindVR.vrCS, 'Additional Inspection Selection Criteria' );
     Add( $106F, TKindVR.vrSQ, 'Additional Inspection Method Sequence' );
     Add( $1070, TKindVR.vrCS, 'AIT Device Type' );
     Add( $1071, TKindVR.vrSQ, 'QR Measurements Sequence' );
     Add( $1072, TKindVR.vrSQ, 'Target Material Sequence' );
     Add( $1073, TKindVR.vrFD, 'SNR Threshold' );
     Add( $1075, TKindVR.vrDS, 'Image Scale Representation' );
     Add( $1076, TKindVR.vrSQ, 'Referenced PTO Sequence' );
     Add( $1077, TKindVR.vrSQ, 'Referenced TDR Instance Sequence' );
     Add( $1078, TKindVR.vrST, 'PTO Location Description' );
     Add( $1079, TKindVR.vrSQ, 'Anomaly Locator Indicator Sequence' );
     Add( $107A, TKindVR.vrFL, 'Anomaly Locator Indicator' );
     Add( $107B, TKindVR.vrSQ, 'PTO Region Sequence' );
     Add( $107C, TKindVR.vrCS, 'Inspection Selection Criteria' );
     Add( $107D, TKindVR.vrSQ, 'Secondary Inspection Method Sequence' );
     Add( $107E, TKindVR.vrDS, 'PRCS to RCS Orientation' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
