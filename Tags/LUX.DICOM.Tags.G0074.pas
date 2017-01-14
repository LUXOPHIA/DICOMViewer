unit LUX.DICOM.Tags.G0074;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems0074

     TDICOMElems0074 = class( TDICOMElems )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems0074

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TDICOMElems0074.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0120, TKindVR.vrFD, 'Continuation Start Meterset' );
     Add( $0121, TKindVR.vrFD, 'Continuation End Meterset' );
     Add( $1000, TKindVR.vrCS, 'Procedure Step State' );
     Add( $1002, TKindVR.vrSQ, 'Procedure Step Progress Information Sequence' );
     Add( $1004, TKindVR.vrDS, 'Procedure Step Progress' );
     Add( $1006, TKindVR.vrST, 'Procedure Step Progress Description' );
     Add( $1008, TKindVR.vrSQ, 'Procedure Step Communications URI Sequence' );
     Add( $100A, TKindVR.vrUR, 'Contact URI' );
     Add( $100C, TKindVR.vrLO, 'Contact Display Name' );
     Add( $100E, TKindVR.vrSQ, 'Procedure Step Discontinuation Reason Code Sequence' );
     Add( $1020, TKindVR.vrSQ, 'Beam Task Sequence' );
     Add( $1022, TKindVR.vrCS, 'Beam Task Type' );
     Add( $1024, TKindVR.vrIS, 'Beam Order Index (Trial)' );
     Add( $1025, TKindVR.vrCS, 'Autosequence Flag' );
     Add( $1026, TKindVR.vrFD, 'Table Top Vertical Adjusted Position' );
     Add( $1027, TKindVR.vrFD, 'Table Top Longitudinal Adjusted Position' );
     Add( $1028, TKindVR.vrFD, 'Table Top Lateral Adjusted Position' );
     Add( $102A, TKindVR.vrFD, 'Patient Support Adjusted Angle' );
     Add( $102B, TKindVR.vrFD, 'Table Top Eccentric Adjusted Angle' );
     Add( $102C, TKindVR.vrFD, 'Table Top Pitch Adjusted Angle' );
     Add( $102D, TKindVR.vrFD, 'Table Top Roll Adjusted Angle' );
     Add( $1030, TKindVR.vrSQ, 'Delivery Verification Image Sequence' );
     Add( $1032, TKindVR.vrCS, 'Verification Image Timing' );
     Add( $1034, TKindVR.vrCS, 'Double Exposure Flag' );
     Add( $1036, TKindVR.vrCS, 'Double Exposure Ordering' );
     Add( $1038, TKindVR.vrDS, 'Double Exposure Meterset (Trial)' );
     Add( $103A, TKindVR.vrDS, 'Double Exposure Field Delta (Trial)' );
     Add( $1040, TKindVR.vrSQ, 'Related Reference RT Image Sequence' );
     Add( $1042, TKindVR.vrSQ, 'General Machine Verification Sequence' );
     Add( $1044, TKindVR.vrSQ, 'Conventional Machine Verification Sequence' );
     Add( $1046, TKindVR.vrSQ, 'Ion Machine Verification Sequence' );
     Add( $1048, TKindVR.vrSQ, 'Failed Attributes Sequence' );
     Add( $104A, TKindVR.vrSQ, 'Overridden Attributes Sequence' );
     Add( $104C, TKindVR.vrSQ, 'Conventional Control Point Verification Sequence' );
     Add( $104E, TKindVR.vrSQ, 'Ion Control Point Verification Sequence' );
     Add( $1050, TKindVR.vrSQ, 'Attribute Occurrence Sequence' );
     Add( $1052, TKindVR.vrAT, 'Attribute Occurrence Pointer' );
     Add( $1054, TKindVR.vrUL, 'Attribute Item Selector' );
     Add( $1056, TKindVR.vrLO, 'Attribute Occurrence Private Creator' );
     Add( $1057, TKindVR.vrIS, 'Selector Sequence Pointer Items' );
     Add( $1200, TKindVR.vrCS, 'Scheduled Procedure Step Priority' );
     Add( $1202, TKindVR.vrLO, 'Worklist Label' );
     Add( $1204, TKindVR.vrLO, 'Procedure Step Label' );
     Add( $1210, TKindVR.vrSQ, 'Scheduled Processing Parameters Sequence' );
     Add( $1212, TKindVR.vrSQ, 'Performed Processing Parameters Sequence' );
     Add( $1216, TKindVR.vrSQ, 'Unified Procedure Step Performed Procedure Sequence' );
     Add( $1220, TKindVR.vrSQ, 'Related Procedure Step Sequence' );
     Add( $1222, TKindVR.vrLO, 'Procedure Step Relationship Type' );
     Add( $1224, TKindVR.vrSQ, 'Replaced Procedure Step Sequence' );
     Add( $1230, TKindVR.vrLO, 'Deletion Lock' );
     Add( $1234, TKindVR.vrAE, 'Receiving AE' );
     Add( $1236, TKindVR.vrAE, 'Requesting AE' );
     Add( $1238, TKindVR.vrLT, 'Reason for Cancellation' );
     Add( $1242, TKindVR.vrCS, 'SCP Status' );
     Add( $1244, TKindVR.vrCS, 'Subscription List Status' );
     Add( $1246, TKindVR.vrCS, 'Unified Procedure Step List Status' );
     Add( $1324, TKindVR.vrUL, 'Beam Order Index' );
     Add( $1338, TKindVR.vrFD, 'Double Exposure Meterset' );
     Add( $133A, TKindVR.vrFD, 'Double Exposure Field Delta' );
     Add( $1401, TKindVR.vrSQ, 'Brachy Task Sequence' );
     Add( $1402, TKindVR.vrDS, 'Continuation Start Total Reference Air Kerma' );
     Add( $1403, TKindVR.vrDS, 'Continuation End Total Reference Air Kerma' );
     Add( $1404, TKindVR.vrIS, 'Continuation Pulse Number' );
     Add( $1405, TKindVR.vrSQ, 'Channel Delivery Order Sequence' );
     Add( $1406, TKindVR.vrIS, 'Referenced Channel Number' );
     Add( $1407, TKindVR.vrDS, 'Start Cumulative Time Weight' );
     Add( $1408, TKindVR.vrDS, 'End Cumulative Time Weight' );
     Add( $1409, TKindVR.vrSQ, 'Omitted Channel Sequence' );
     Add( $140A, TKindVR.vrCS, 'Reason for Channel Omission' );
     Add( $140B, TKindVR.vrLO, 'Reason for Channel Omission Description' );
     Add( $140C, TKindVR.vrIS, 'Channel Delivery Order Index' );
     Add( $140D, TKindVR.vrSQ, 'Channel Delivery Continuation Sequence' );
     Add( $140E, TKindVR.vrSQ, 'Omitted Application Setup Sequence' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
