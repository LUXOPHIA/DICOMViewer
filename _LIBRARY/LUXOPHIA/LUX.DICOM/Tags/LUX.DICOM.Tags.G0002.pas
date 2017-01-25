unit LUX.DICOM.Tags.G0002;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0002

     TdcmGrup0002 = class( TdcmGrup )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0002

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmGrup0002.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_7
     // 7 Registry of DICOM File Meta Elements
     //   This section specifies the File Meta Elements needed to support the formatting of the File Meta Information of the DICOM File Format (see PS3.10).
     Add( $0000, 'FileMetaInformationGroupLength', [TKindVR.vrUL], 'File Meta Information Group Length' );
     Add( $0001, 'FileMetaInformationVersion', [TKindVR.vrOB], 'File Meta Information Version' );
     Add( $0002, 'MediaStorageSOPClassUID', [TKindVR.vrUI], 'Media Storage SOP Class UID' );
     Add( $0003, 'MediaStorageSOPInstanceUID', [TKindVR.vrUI], 'Media Storage SOP Instance UID' );
     Add( $0010, 'TransferSyntaxUID', [TKindVR.vrUI], 'Transfer Syntax UID' );
     Add( $0012, 'ImplementationClassUID', [TKindVR.vrUI], 'Implementation Class UID' );
     Add( $0013, 'ImplementationVersionName', [TKindVR.vrSH], 'Implementation Version Name' );
     Add( $0016, 'SourceApplicationEntityTitle', [TKindVR.vrAE], 'Source Application Entity Title' );
     Add( $0017, 'SendingApplicationEntityTitle', [TKindVR.vrAE], 'Sending Application Entity Title' );
     Add( $0018, 'ReceivingApplicationEntityTitle', [TKindVR.vrAE], 'Receiving Application Entity Title' );
     Add( $0100, 'PrivateInformationCreatorUID', [TKindVR.vrUI], 'Private Information Creator UID' );
     Add( $0102, 'PrivateInformation', [TKindVR.vrOB], 'Private Information' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
