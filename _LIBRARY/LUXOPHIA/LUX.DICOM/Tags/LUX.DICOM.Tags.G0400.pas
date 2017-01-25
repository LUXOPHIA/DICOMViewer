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
     Add( $0005, 'MACIDNumber', [TKindVR.vrUS], 'MAC ID Number' );
     Add( $0010, 'MACCalculationTransferSyntaxUID', [TKindVR.vrUI], 'MAC Calculation Transfer Syntax UID' );
     Add( $0015, 'MACAlgorithm', [TKindVR.vrCS], 'MAC Algorithm' );
     Add( $0020, 'DataElementsSigned', [TKindVR.vrAT], 'Data Elements Signed' );
     Add( $0100, 'DigitalSignatureUID', [TKindVR.vrUI], 'Digital Signature UID' );
     Add( $0105, 'DigitalSignatureDateTime', [TKindVR.vrDT], 'Digital Signature DateTime' );
     Add( $0110, 'CertificateType', [TKindVR.vrCS], 'Certificate Type' );
     Add( $0115, 'CertificateOfSigner', [TKindVR.vrOB], 'Certificate of Signer' );
     Add( $0120, 'Signature', [TKindVR.vrOB], 'Signature' );
     Add( $0305, 'CertifiedTimestampType', [TKindVR.vrCS], 'Certified Timestamp Type' );
     Add( $0310, 'CertifiedTimestamp', [TKindVR.vrOB], 'Certified Timestamp' );
     Add( $0315, '', [TKindVR.vrFL], '' );
     Add( $0401, 'DigitalSignaturePurposeCodeSequence', [TKindVR.vrSQ], 'Digital Signature Purpose Code Sequence' );
     Add( $0402, 'ReferencedDigitalSignatureSequence', [TKindVR.vrSQ], 'Referenced Digital Signature Sequence' );
     Add( $0403, 'ReferencedSOPInstanceMACSequence', [TKindVR.vrSQ], 'Referenced SOP Instance MAC Sequence' );
     Add( $0404, 'MAC', [TKindVR.vrOB], 'MAC' );
     Add( $0500, 'EncryptedAttributesSequence', [TKindVR.vrSQ], 'Encrypted Attributes Sequence' );
     Add( $0510, 'EncryptedContentTransferSyntaxUID', [TKindVR.vrUI], 'Encrypted Content Transfer Syntax UID' );
     Add( $0520, 'EncryptedContent', [TKindVR.vrOB], 'Encrypted Content' );
     Add( $0550, 'ModifiedAttributesSequence', [TKindVR.vrSQ], 'Modified Attributes Sequence' );
     Add( $0561, 'OriginalAttributesSequence', [TKindVR.vrSQ], 'Original Attributes Sequence' );
     Add( $0562, 'AttributeModificationDateTime', [TKindVR.vrDT], 'Attribute Modification DateTime' );
     Add( $0563, 'ModifyingSystem', [TKindVR.vrLO], 'Modifying System' );
     Add( $0564, 'SourceOfPreviousValues', [TKindVR.vrLO], 'Source of Previous Values' );
     Add( $0565, 'ReasonForTheAttributeModification', [TKindVR.vrCS], 'Reason for the Attribute Modification' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
