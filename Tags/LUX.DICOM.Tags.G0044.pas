unit LUX.DICOM.Tags.G0044;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0044

     TdcmGrup0044 = class( TdcmGrup )
     private
     protected
     public
       constructor Create( const Code_:THex4 );
     end;

//const //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【定数】

//var //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【変数】

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

implementation //############################################################### ■

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0044

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmGrup0044.Create( const Code_:THex4 );
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0001, 'ProductPackageIdentifier', [TKindVR.vrST], 'Product Package Identifier' );
     Add( $0002, 'SubstanceAdministrationApproval', [TKindVR.vrCS], 'Substance Administration Approval' );
     Add( $0003, 'ApprovalStatusFurtherDescription', [TKindVR.vrLT], 'Approval Status Further Description' );
     Add( $0004, 'ApprovalStatusDateTime', [TKindVR.vrDT], 'Approval Status DateTime' );
     Add( $0007, 'ProductTypeCodeSequence', [TKindVR.vrSQ], 'Product Type Code Sequence' );
     Add( $0008, 'ProductName', [TKindVR.vrLO], 'Product Name' );
     Add( $0009, 'ProductDescription', [TKindVR.vrLT], 'Product Description' );
     Add( $000A, 'ProductLotIdentifier', [TKindVR.vrLO], 'Product Lot Identifier' );
     Add( $000B, 'ProductExpirationDateTime', [TKindVR.vrDT], 'Product Expiration DateTime' );
     Add( $0010, 'SubstanceAdministrationDateTime', [TKindVR.vrDT], 'Substance Administration DateTime' );
     Add( $0011, 'SubstanceAdministrationNotes', [TKindVR.vrLO], 'Substance Administration Notes' );
     Add( $0012, 'SubstanceAdministrationDeviceID', [TKindVR.vrLO], 'Substance Administration Device ID' );
     Add( $0013, 'ProductParameterSequence', [TKindVR.vrSQ], 'Product Parameter Sequence' );
     Add( $0019, 'SubstanceAdministrationParameterSequence', [TKindVR.vrSQ], 'Substance Administration Parameter Sequence' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
