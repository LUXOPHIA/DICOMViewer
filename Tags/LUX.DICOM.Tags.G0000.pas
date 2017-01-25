unit LUX.DICOM.Tags.G0000;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0000

     TdcmGrup0000 = class( TdcmGrup )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0000

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmGrup0000.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part07.html#sect_E.1
     Add( $0000, 'CommandGroupLength', [TKindVR.vrUL], 'Command Group Length' );
     Add( $0002, 'AffectedSOPClassUID', [TKindVR.vrUI], 'Affected SOP Class UID' );
     Add( $0003, 'RequestedSOPClassUID', [TKindVR.vrUI], 'Requested SOP Class UID' );
     Add( $0100, 'CommandField', [TKindVR.vrUS], 'Command Field' );
     Add( $0110, 'MessageID', [TKindVR.vrUS], 'Message ID' );
     Add( $0120, 'MessageIDBeingRespondedTo', [TKindVR.vrUS], 'Message ID Being Responded To' );
     Add( $0600, 'MoveDestination', [TKindVR.vrAE], 'Move Destination' );
     Add( $0700, 'Priority', [TKindVR.vrUS], 'Priority' );
     Add( $0800, 'CommandDataSetType', [TKindVR.vrUS], 'Command Data Set Type' );
     Add( $0900, 'Status', [TKindVR.vrUS], 'Status' );
     Add( $0901, 'OffendingElement', [TKindVR.vrAT], 'Offending Element' );
     Add( $0902, 'ErrorComment', [TKindVR.vrLO], 'Error Comment' );
     Add( $0903, 'ErrorID', [TKindVR.vrUS], 'Error ID' );
     Add( $1000, 'AffectedSOPInstanceUID', [TKindVR.vrUI], 'Affected SOP Instance UID' );
     Add( $1001, 'RequestedSOPInstanceUID', [TKindVR.vrUI], 'Requested SOP Instance UID' );
     Add( $1002, 'EventTypeID', [TKindVR.vrUS], 'Event Type ID' );
     Add( $1005, 'AttributeIdentifierList', [TKindVR.vrAT], 'Attribute Identifier List' );
     Add( $1008, 'ActionTypeID', [TKindVR.vrUS], 'Action Type ID' );
     Add( $1020, 'NumberOfRemainingSuboperations', [TKindVR.vrUS], 'Number of Remaining Sub-operations' );
     Add( $1021, 'NumberOfCompletedSuboperations', [TKindVR.vrUS], 'Number of Completed Sub-operations' );
     Add( $1022, 'NumberOfFailedSuboperations', [TKindVR.vrUS], 'Number of Failed Sub-operations' );
     Add( $1023, 'NumberOfWarningSuboperations', [TKindVR.vrUS], 'Number of Warning Sub-operations' );
     Add( $1030, 'MoveOriginatorApplicationEntityTitle', [TKindVR.vrAE], 'Move Originator Application Entity Title' );
     Add( $1031, 'MoveOriginatorMessageID', [TKindVR.vrUS], 'Move Originator Message ID' );

     // http://dicom.nema.org/medical/dicom/current/output/html/part07.html#sect_E.2
     // E.2 Retired Command Fields
     // The following command fields have been retired but are listed here for compatibility with previous versions of this Standard. Reference PS3.5 for more information on retired Data Elements and Command Elements.
     Add( $0001, 'CommandLengthToEnd', [TKindVR.vrUL], 'Command Length to End' );
     Add( $0010, 'CommandRecognitionCode', [TKindVR.vrSH], 'Command Recognition Code' );
     Add( $0200, 'Initiator', [TKindVR.vrAE], 'Initiator' );
     Add( $0300, 'Receiver', [TKindVR.vrAE], 'Receiver' );
     Add( $0400, 'FindLocation', [TKindVR.vrAE], 'Find Location' );
     Add( $0850, 'NumberOfMatches', [TKindVR.vrUS], 'Number of Matches' );
     Add( $0860, 'ResponseSequenceNumber', [TKindVR.vrUS], 'Response Sequence Number' );
     Add( $4000, 'DialogReceiver', [TKindVR.vrLT], 'Dialog Receiver' );
     Add( $4010, 'TerminalType', [TKindVR.vrLT], 'Terminal Type' );
     Add( $5010, 'MessageSetID', [TKindVR.vrSH], 'Message Set ID' );
     Add( $5020, 'EndMessageID', [TKindVR.vrSH], 'End Message ID' );
     Add( $5110, 'DisplayFormat', [TKindVR.vrLT], 'Display Format' );
     Add( $5120, 'PagePositionID', [TKindVR.vrLT], 'Page Position ID' );
     Add( $5130, 'TextFormatID', [TKindVR.vrCS], 'Text Format ID' );
     Add( $5140, 'NormalReverse', [TKindVR.vrCS], 'Normal/Reverse' );
     Add( $5150, 'AddGrayScale', [TKindVR.vrCS], 'Add Gray Scale' );
     Add( $5160, 'Borders', [TKindVR.vrCS], 'Borders' );
     Add( $5170, 'Copies', [TKindVR.vrIS], 'Copies' );
     Add( $5180, 'CommandMagnificationType', [TKindVR.vrCS], 'Command Magnification Type' );
     Add( $5190, 'Erase', [TKindVR.vrCS], 'Erase' );
     Add( $51A0, 'Print', [TKindVR.vrCS], 'Print' );
     Add( $51B0, 'Overlays', [TKindVR.vrUS], 'Overlays' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
