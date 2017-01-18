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
     Add( $0000, 'CommandGroupLength', [TTypeVR.vrUL], 'Command Group Length' );
     Add( $0002, 'AffectedSOPClassUID', [TTypeVR.vrUI], 'Affected SOP Class UID' );
     Add( $0003, 'RequestedSOPClassUID', [TTypeVR.vrUI], 'Requested SOP Class UID' );
     Add( $0100, 'CommandField', [TTypeVR.vrUS], 'Command Field' );
     Add( $0110, 'MessageID', [TTypeVR.vrUS], 'Message ID' );
     Add( $0120, 'MessageIDBeingRespondedTo', [TTypeVR.vrUS], 'Message ID Being Responded To' );
     Add( $0600, 'MoveDestination', [TTypeVR.vrAE], 'Move Destination' );
     Add( $0700, 'Priority', [TTypeVR.vrUS], 'Priority' );
     Add( $0800, 'CommandDataSetType', [TTypeVR.vrUS], 'Command Data Set Type' );
     Add( $0900, 'Status', [TTypeVR.vrUS], 'Status' );
     Add( $0901, 'OffendingElement', [TTypeVR.vrAT], 'Offending Element' );
     Add( $0902, 'ErrorComment', [TTypeVR.vrLO], 'Error Comment' );
     Add( $0903, 'ErrorID', [TTypeVR.vrUS], 'Error ID' );
     Add( $1000, 'AffectedSOPInstanceUID', [TTypeVR.vrUI], 'Affected SOP Instance UID' );
     Add( $1001, 'RequestedSOPInstanceUID', [TTypeVR.vrUI], 'Requested SOP Instance UID' );
     Add( $1002, 'EventTypeID', [TTypeVR.vrUS], 'Event Type ID' );
     Add( $1005, 'AttributeIdentifierList', [TTypeVR.vrAT], 'Attribute Identifier List' );
     Add( $1008, 'ActionTypeID', [TTypeVR.vrUS], 'Action Type ID' );
     Add( $1020, 'NumberOfRemainingSuboperations', [TTypeVR.vrUS], 'Number of Remaining Sub-operations' );
     Add( $1021, 'NumberOfCompletedSuboperations', [TTypeVR.vrUS], 'Number of Completed Sub-operations' );
     Add( $1022, 'NumberOfFailedSuboperations', [TTypeVR.vrUS], 'Number of Failed Sub-operations' );
     Add( $1023, 'NumberOfWarningSuboperations', [TTypeVR.vrUS], 'Number of Warning Sub-operations' );
     Add( $1030, 'MoveOriginatorApplicationEntityTitle', [TTypeVR.vrAE], 'Move Originator Application Entity Title' );
     Add( $1031, 'MoveOriginatorMessageID', [TTypeVR.vrUS], 'Move Originator Message ID' );

     // http://dicom.nema.org/medical/dicom/current/output/html/part07.html#sect_E.2
     // E.2 Retired Command Fields
     // The following command fields have been retired but are listed here for compatibility with previous versions of this Standard. Reference PS3.5 for more information on retired Data Elements and Command Elements.
     Add( $0001, 'CommandLengthToEnd', [TTypeVR.vrUL], 'Command Length to End' );
     Add( $0010, 'CommandRecognitionCode', [TTypeVR.vrSH], 'Command Recognition Code' );
     Add( $0200, 'Initiator', [TTypeVR.vrAE], 'Initiator' );
     Add( $0300, 'Receiver', [TTypeVR.vrAE], 'Receiver' );
     Add( $0400, 'FindLocation', [TTypeVR.vrAE], 'Find Location' );
     Add( $0850, 'NumberOfMatches', [TTypeVR.vrUS], 'Number of Matches' );
     Add( $0860, 'ResponseSequenceNumber', [TTypeVR.vrUS], 'Response Sequence Number' );
     Add( $4000, 'DialogReceiver', [TTypeVR.vrLT], 'Dialog Receiver' );
     Add( $4010, 'TerminalType', [TTypeVR.vrLT], 'Terminal Type' );
     Add( $5010, 'MessageSetID', [TTypeVR.vrSH], 'Message Set ID' );
     Add( $5020, 'EndMessageID', [TTypeVR.vrSH], 'End Message ID' );
     Add( $5110, 'DisplayFormat', [TTypeVR.vrLT], 'Display Format' );
     Add( $5120, 'PagePositionID', [TTypeVR.vrLT], 'Page Position ID' );
     Add( $5130, 'TextFormatID', [TTypeVR.vrCS], 'Text Format ID' );
     Add( $5140, 'NormalReverse', [TTypeVR.vrCS], 'Normal/Reverse' );
     Add( $5150, 'AddGrayScale', [TTypeVR.vrCS], 'Add Gray Scale' );
     Add( $5160, 'Borders', [TTypeVR.vrCS], 'Borders' );
     Add( $5170, 'Copies', [TTypeVR.vrIS], 'Copies' );
     Add( $5180, 'CommandMagnificationType', [TTypeVR.vrCS], 'Command Magnification Type' );
     Add( $5190, 'Erase', [TTypeVR.vrCS], 'Erase' );
     Add( $51A0, 'Print', [TTypeVR.vrCS], 'Print' );
     Add( $51B0, 'Overlays', [TTypeVR.vrUS], 'Overlays' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
