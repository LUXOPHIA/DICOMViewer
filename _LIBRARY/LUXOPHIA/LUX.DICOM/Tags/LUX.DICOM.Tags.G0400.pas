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
     Add( $0005, 'MACIDNumber', [TTypeVR.vrUS], 'MAC ID Number' );
     Add( $0010, 'MACCalculationTransferSyntaxUID', [TTypeVR.vrUI], 'MAC Calculation Transfer Syntax UID' );
     Add( $0015, 'MACAlgorithm', [TTypeVR.vrCS], 'MAC Algorithm' );
     Add( $0020, 'DataElementsSigned', [TTypeVR.vrAT], 'Data Elements Signed' );
     Add( $0100, 'DigitalSignatureUID', [TTypeVR.vrUI], 'Digital Signature UID' );
     Add( $0105, 'DigitalSignatureDateTime', [TTypeVR.vrDT], 'Digital Signature DateTime' );
     Add( $0110, 'CertificateType', [TTypeVR.vrCS], 'Certificate Type' );
     Add( $0115, 'CertificateOfSigner', [TTypeVR.vrOB], 'Certificate of Signer' );
     Add( $0120, 'Signature', [TTypeVR.vrOB], 'Signature' );
     Add( $0305, 'CertifiedTimestampType', [TTypeVR.vrCS], 'Certified Timestamp Type' );
     Add( $0310, 'CertifiedTimestamp', [TTypeVR.vrOB], 'Certified Timestamp' );
     Add( $0315, '', [TTypeVR.vrFL], '' );
     Add( $0401, 'DigitalSignaturePurposeCodeSequence', [TTypeVR.vrSQ], 'Digital Signature Purpose Code Sequence' );
     Add( $0402, 'ReferencedDigitalSignatureSequence', [TTypeVR.vrSQ], 'Referenced Digital Signature Sequence' );
     Add( $0403, 'ReferencedSOPInstanceMACSequence', [TTypeVR.vrSQ], 'Referenced SOP Instance MAC Sequence' );
     Add( $0404, 'MAC', [TTypeVR.vrOB], 'MAC' );
     Add( $0500, 'EncryptedAttributesSequence', [TTypeVR.vrSQ], 'Encrypted Attributes Sequence' );
     Add( $0510, 'EncryptedContentTransferSyntaxUID', [TTypeVR.vrUI], 'Encrypted Content Transfer Syntax UID' );
     Add( $0520, 'EncryptedContent', [TTypeVR.vrOB], 'Encrypted Content' );
     Add( $0550, 'ModifiedAttributesSequence', [TTypeVR.vrSQ], 'Modified Attributes Sequence' );
     Add( $0561, 'OriginalAttributesSequence', [TTypeVR.vrSQ], 'Original Attributes Sequence' );
     Add( $0562, 'AttributeModificationDateTime', [TTypeVR.vrDT], 'Attribute Modification DateTime' );
     Add( $0563, 'ModifyingSystem', [TTypeVR.vrLO], 'Modifying System' );
     Add( $0564, 'SourceOfPreviousValues', [TTypeVR.vrLO], 'Source of Previous Values' );
     Add( $0565, 'ReasonForTheAttributeModification', [TTypeVR.vrCS], 'Reason for the Attribute Modification' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
