unit LUX.DICOM.Tags.G0000;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems0000

     TDICOMElems0000 = class( TDICOMElems )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems0000

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TDICOMElems0000.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part07.html#sect_E.1
     Add( $0000, TKindVR.vrUL, 'Command Group Length' );
     Add( $0002, TKindVR.vrUI, 'Affected SOP Class UID' );
     Add( $0003, TKindVR.vrUI, 'Requested SOP Class UID' );
     Add( $0100, TKindVR.vrUS, 'Command Field' );
     Add( $0110, TKindVR.vrUS, 'Message ID' );
     Add( $0120, TKindVR.vrUS, 'Message ID Being Responded To' );
     Add( $0600, TKindVR.vrAE, 'Move Destination' );
     Add( $0700, TKindVR.vrUS, 'Priority' );
     Add( $0800, TKindVR.vrUS, 'Command Data Set Type' );
     Add( $0900, TKindVR.vrUS, 'Status' );
     Add( $0901, TKindVR.vrAT, 'Offending Element' );
     Add( $0902, TKindVR.vrLO, 'Error Comment' );
     Add( $0903, TKindVR.vrUS, 'Error ID' );
     Add( $1000, TKindVR.vrUI, 'Affected SOP Instance UID' );
     Add( $1001, TKindVR.vrUI, 'Requested SOP Instance UID' );
     Add( $1002, TKindVR.vrUS, 'Event Type ID' );
     Add( $1005, TKindVR.vrAT, 'Attribute Identifier List' );
     Add( $1008, TKindVR.vrUS, 'Action Type ID' );
     Add( $1020, TKindVR.vrUS, 'Number of Remaining Sub-operations' );
     Add( $1021, TKindVR.vrUS, 'Number of Completed Sub-operations' );
     Add( $1022, TKindVR.vrUS, 'Number of Failed Sub-operations' );
     Add( $1023, TKindVR.vrUS, 'Number of Warning Sub-operations' );
     Add( $1030, TKindVR.vrAE, 'Move Originator Application Entity Title' );
     Add( $1031, TKindVR.vrUS, 'Move Originator Message ID' );

     // http://dicom.nema.org/medical/dicom/current/output/html/part07.html#sect_E.2
     // E.2 Retired Command Fields
     // The following command fields have been retired but are listed here for compatibility with previous versions of this Standard. Reference PS3.5 for more information on retired Data Elements and Command Elements.
     Add( $0001, TKindVR.vrUL, 'Command Length to End' );
     Add( $0010, TKindVR.vrSH, 'Command Recognition Code' );
     Add( $0200, TKindVR.vrAE, 'Initiator' );
     Add( $0300, TKindVR.vrAE, 'Receiver' );
     Add( $0400, TKindVR.vrAE, 'Find Location' );
     Add( $0850, TKindVR.vrUS, 'Number of Matches' );
     Add( $0860, TKindVR.vrUS, 'Response Sequence Number' );
     Add( $4000, TKindVR.vrLT, 'Dialog Receiver' );
     Add( $4010, TKindVR.vrLT, 'Terminal Type' );
     Add( $5010, TKindVR.vrSH, 'Message Set ID' );
     Add( $5020, TKindVR.vrSH, 'End Message ID' );
     Add( $5110, TKindVR.vrLT, 'Display Format' );
     Add( $5120, TKindVR.vrLT, 'Page Position ID' );
     Add( $5130, TKindVR.vrCS, 'Text Format ID' );
     Add( $5140, TKindVR.vrCS, 'Normal/Reverse' );
     Add( $5150, TKindVR.vrCS, 'Add Gray Scale' );
     Add( $5160, TKindVR.vrCS, 'Borders' );
     Add( $5170, TKindVR.vrIS, 'Copies' );
     Add( $5180, TKindVR.vrCS, 'Command Magnification Type' );
     Add( $5190, TKindVR.vrCS, 'Erase' );
     Add( $51A0, TKindVR.vrCS, 'Print' );
     Add( $51B0, TKindVR.vrUS, 'Overlays' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
