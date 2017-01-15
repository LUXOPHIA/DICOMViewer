unit LUX.DICOM.Tags.G0074;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0074

     TdcmGrup0074 = class( TdcmGrup )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0074

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmGrup0074.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0120, [TTypeVR.vrFD], 'Continuation Start Meterset' );
     Add( $0121, [TTypeVR.vrFD], 'Continuation End Meterset' );
     Add( $1000, [TTypeVR.vrCS], 'Procedure Step State' );
     Add( $1002, [TTypeVR.vrSQ], 'Procedure Step Progress Information Sequence' );
     Add( $1004, [TTypeVR.vrDS], 'Procedure Step Progress' );
     Add( $1006, [TTypeVR.vrST], 'Procedure Step Progress Description' );
     Add( $1008, [TTypeVR.vrSQ], 'Procedure Step Communications URI Sequence' );
     Add( $100A, [TTypeVR.vrUR], 'Contact URI' );
     Add( $100C, [TTypeVR.vrLO], 'Contact Display Name' );
     Add( $100E, [TTypeVR.vrSQ], 'Procedure Step Discontinuation Reason Code Sequence' );
     Add( $1020, [TTypeVR.vrSQ], 'Beam Task Sequence' );
     Add( $1022, [TTypeVR.vrCS], 'Beam Task Type' );
     Add( $1024, [TTypeVR.vrIS], 'Beam Order Index (Trial)' );
     Add( $1025, [TTypeVR.vrCS], 'Autosequence Flag' );
     Add( $1026, [TTypeVR.vrFD], 'Table Top Vertical Adjusted Position' );
     Add( $1027, [TTypeVR.vrFD], 'Table Top Longitudinal Adjusted Position' );
     Add( $1028, [TTypeVR.vrFD], 'Table Top Lateral Adjusted Position' );
     Add( $102A, [TTypeVR.vrFD], 'Patient Support Adjusted Angle' );
     Add( $102B, [TTypeVR.vrFD], 'Table Top Eccentric Adjusted Angle' );
     Add( $102C, [TTypeVR.vrFD], 'Table Top Pitch Adjusted Angle' );
     Add( $102D, [TTypeVR.vrFD], 'Table Top Roll Adjusted Angle' );
     Add( $1030, [TTypeVR.vrSQ], 'Delivery Verification Image Sequence' );
     Add( $1032, [TTypeVR.vrCS], 'Verification Image Timing' );
     Add( $1034, [TTypeVR.vrCS], 'Double Exposure Flag' );
     Add( $1036, [TTypeVR.vrCS], 'Double Exposure Ordering' );
     Add( $1038, [TTypeVR.vrDS], 'Double Exposure Meterset (Trial)' );
     Add( $103A, [TTypeVR.vrDS], 'Double Exposure Field Delta (Trial)' );
     Add( $1040, [TTypeVR.vrSQ], 'Related Reference RT Image Sequence' );
     Add( $1042, [TTypeVR.vrSQ], 'General Machine Verification Sequence' );
     Add( $1044, [TTypeVR.vrSQ], 'Conventional Machine Verification Sequence' );
     Add( $1046, [TTypeVR.vrSQ], 'Ion Machine Verification Sequence' );
     Add( $1048, [TTypeVR.vrSQ], 'Failed Attributes Sequence' );
     Add( $104A, [TTypeVR.vrSQ], 'Overridden Attributes Sequence' );
     Add( $104C, [TTypeVR.vrSQ], 'Conventional Control Point Verification Sequence' );
     Add( $104E, [TTypeVR.vrSQ], 'Ion Control Point Verification Sequence' );
     Add( $1050, [TTypeVR.vrSQ], 'Attribute Occurrence Sequence' );
     Add( $1052, [TTypeVR.vrAT], 'Attribute Occurrence Pointer' );
     Add( $1054, [TTypeVR.vrUL], 'Attribute Item Selector' );
     Add( $1056, [TTypeVR.vrLO], 'Attribute Occurrence Private Creator' );
     Add( $1057, [TTypeVR.vrIS], 'Selector Sequence Pointer Items' );
     Add( $1200, [TTypeVR.vrCS], 'Scheduled Procedure Step Priority' );
     Add( $1202, [TTypeVR.vrLO], 'Worklist Label' );
     Add( $1204, [TTypeVR.vrLO], 'Procedure Step Label' );
     Add( $1210, [TTypeVR.vrSQ], 'Scheduled Processing Parameters Sequence' );
     Add( $1212, [TTypeVR.vrSQ], 'Performed Processing Parameters Sequence' );
     Add( $1216, [TTypeVR.vrSQ], 'Unified Procedure Step Performed Procedure Sequence' );
     Add( $1220, [TTypeVR.vrSQ], 'Related Procedure Step Sequence' );
     Add( $1222, [TTypeVR.vrLO], 'Procedure Step Relationship Type' );
     Add( $1224, [TTypeVR.vrSQ], 'Replaced Procedure Step Sequence' );
     Add( $1230, [TTypeVR.vrLO], 'Deletion Lock' );
     Add( $1234, [TTypeVR.vrAE], 'Receiving AE' );
     Add( $1236, [TTypeVR.vrAE], 'Requesting AE' );
     Add( $1238, [TTypeVR.vrLT], 'Reason for Cancellation' );
     Add( $1242, [TTypeVR.vrCS], 'SCP Status' );
     Add( $1244, [TTypeVR.vrCS], 'Subscription List Status' );
     Add( $1246, [TTypeVR.vrCS], 'Unified Procedure Step List Status' );
     Add( $1324, [TTypeVR.vrUL], 'Beam Order Index' );
     Add( $1338, [TTypeVR.vrFD], 'Double Exposure Meterset' );
     Add( $133A, [TTypeVR.vrFD], 'Double Exposure Field Delta' );
     Add( $1401, [TTypeVR.vrSQ], 'Brachy Task Sequence' );
     Add( $1402, [TTypeVR.vrDS], 'Continuation Start Total Reference Air Kerma' );
     Add( $1403, [TTypeVR.vrDS], 'Continuation End Total Reference Air Kerma' );
     Add( $1404, [TTypeVR.vrIS], 'Continuation Pulse Number' );
     Add( $1405, [TTypeVR.vrSQ], 'Channel Delivery Order Sequence' );
     Add( $1406, [TTypeVR.vrIS], 'Referenced Channel Number' );
     Add( $1407, [TTypeVR.vrDS], 'Start Cumulative Time Weight' );
     Add( $1408, [TTypeVR.vrDS], 'End Cumulative Time Weight' );
     Add( $1409, [TTypeVR.vrSQ], 'Omitted Channel Sequence' );
     Add( $140A, [TTypeVR.vrCS], 'Reason for Channel Omission' );
     Add( $140B, [TTypeVR.vrLO], 'Reason for Channel Omission Description' );
     Add( $140C, [TTypeVR.vrIS], 'Channel Delivery Order Index' );
     Add( $140D, [TTypeVR.vrSQ], 'Channel Delivery Continuation Sequence' );
     Add( $140E, [TTypeVR.vrSQ], 'Omitted Application Setup Sequence' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
