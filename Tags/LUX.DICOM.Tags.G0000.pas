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
     Add( $0000, [TTypeVR.vrUL], 'Command Group Length' );
     Add( $0002, [TTypeVR.vrUI], 'Affected SOP Class UID' );
     Add( $0003, [TTypeVR.vrUI], 'Requested SOP Class UID' );
     Add( $0100, [TTypeVR.vrUS], 'Command Field' );
     Add( $0110, [TTypeVR.vrUS], 'Message ID' );
     Add( $0120, [TTypeVR.vrUS], 'Message ID Being Responded To' );
     Add( $0600, [TTypeVR.vrAE], 'Move Destination' );
     Add( $0700, [TTypeVR.vrUS], 'Priority' );
     Add( $0800, [TTypeVR.vrUS], 'Command Data Set Type' );
     Add( $0900, [TTypeVR.vrUS], 'Status' );
     Add( $0901, [TTypeVR.vrAT], 'Offending Element' );
     Add( $0902, [TTypeVR.vrLO], 'Error Comment' );
     Add( $0903, [TTypeVR.vrUS], 'Error ID' );
     Add( $1000, [TTypeVR.vrUI], 'Affected SOP Instance UID' );
     Add( $1001, [TTypeVR.vrUI], 'Requested SOP Instance UID' );
     Add( $1002, [TTypeVR.vrUS], 'Event Type ID' );
     Add( $1005, [TTypeVR.vrAT], 'Attribute Identifier List' );
     Add( $1008, [TTypeVR.vrUS], 'Action Type ID' );
     Add( $1020, [TTypeVR.vrUS], 'Number of Remaining Sub-operations' );
     Add( $1021, [TTypeVR.vrUS], 'Number of Completed Sub-operations' );
     Add( $1022, [TTypeVR.vrUS], 'Number of Failed Sub-operations' );
     Add( $1023, [TTypeVR.vrUS], 'Number of Warning Sub-operations' );
     Add( $1030, [TTypeVR.vrAE], 'Move Originator Application Entity Title' );
     Add( $1031, [TTypeVR.vrUS], 'Move Originator Message ID' );

     // http://dicom.nema.org/medical/dicom/current/output/html/part07.html#sect_E.2
     // E.2 Retired Command Fields
     // The following command fields have been retired but are listed here for compatibility with previous versions of this Standard. Reference PS3.5 for more information on retired Data Elements and Command Elements.
     Add( $0001, [TTypeVR.vrUL], 'Command Length to End' );
     Add( $0010, [TTypeVR.vrSH], 'Command Recognition Code' );
     Add( $0200, [TTypeVR.vrAE], 'Initiator' );
     Add( $0300, [TTypeVR.vrAE], 'Receiver' );
     Add( $0400, [TTypeVR.vrAE], 'Find Location' );
     Add( $0850, [TTypeVR.vrUS], 'Number of Matches' );
     Add( $0860, [TTypeVR.vrUS], 'Response Sequence Number' );
     Add( $4000, [TTypeVR.vrLT], 'Dialog Receiver' );
     Add( $4010, [TTypeVR.vrLT], 'Terminal Type' );
     Add( $5010, [TTypeVR.vrSH], 'Message Set ID' );
     Add( $5020, [TTypeVR.vrSH], 'End Message ID' );
     Add( $5110, [TTypeVR.vrLT], 'Display Format' );
     Add( $5120, [TTypeVR.vrLT], 'Page Position ID' );
     Add( $5130, [TTypeVR.vrCS], 'Text Format ID' );
     Add( $5140, [TTypeVR.vrCS], 'Normal/Reverse' );
     Add( $5150, [TTypeVR.vrCS], 'Add Gray Scale' );
     Add( $5160, [TTypeVR.vrCS], 'Borders' );
     Add( $5170, [TTypeVR.vrIS], 'Copies' );
     Add( $5180, [TTypeVR.vrCS], 'Command Magnification Type' );
     Add( $5190, [TTypeVR.vrCS], 'Erase' );
     Add( $51A0, [TTypeVR.vrCS], 'Print' );
     Add( $51B0, [TTypeVR.vrUS], 'Overlays' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
