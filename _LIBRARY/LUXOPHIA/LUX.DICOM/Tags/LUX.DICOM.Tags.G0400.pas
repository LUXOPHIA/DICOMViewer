unit LUX.DICOM.Tags.G0400;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0400

     TdcmGrup0400 = class( TdcmGrup )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0400

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmGrup0400.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0005, [TTypeVR.vrUS], 'MAC ID Number' );
     Add( $0010, [TTypeVR.vrUI], 'MAC Calculation Transfer Syntax UID' );
     Add( $0015, [TTypeVR.vrCS], 'MAC Algorithm' );
     Add( $0020, [TTypeVR.vrAT], 'Data Elements Signed' );
     Add( $0100, [TTypeVR.vrUI], 'Digital Signature UID' );
     Add( $0105, [TTypeVR.vrDT], 'Digital Signature DateTime' );
     Add( $0110, [TTypeVR.vrCS], 'Certificate Type' );
     Add( $0115, [TTypeVR.vrOB], 'Certificate of Signer' );
     Add( $0120, [TTypeVR.vrOB], 'Signature' );
     Add( $0305, [TTypeVR.vrCS], 'Certified Timestamp Type' );
     Add( $0310, [TTypeVR.vrOB], 'Certified Timestamp' );
     Add( $0315, [TTypeVR.vrFL], '' );
     Add( $0401, [TTypeVR.vrSQ], 'Digital Signature Purpose Code Sequence' );
     Add( $0402, [TTypeVR.vrSQ], 'Referenced Digital Signature Sequence' );
     Add( $0403, [TTypeVR.vrSQ], 'Referenced SOP Instance MAC Sequence' );
     Add( $0404, [TTypeVR.vrOB], 'MAC' );
     Add( $0500, [TTypeVR.vrSQ], 'Encrypted Attributes Sequence' );
     Add( $0510, [TTypeVR.vrUI], 'Encrypted Content Transfer Syntax UID' );
     Add( $0520, [TTypeVR.vrOB], 'Encrypted Content' );
     Add( $0550, [TTypeVR.vrSQ], 'Modified Attributes Sequence' );
     Add( $0561, [TTypeVR.vrSQ], 'Original Attributes Sequence' );
     Add( $0562, [TTypeVR.vrDT], 'Attribute Modification DateTime' );
     Add( $0563, [TTypeVR.vrLO], 'Modifying System' );
     Add( $0564, [TTypeVR.vrLO], 'Source of Previous Values' );
     Add( $0565, [TTypeVR.vrCS], 'Reason for the Attribute Modification' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
