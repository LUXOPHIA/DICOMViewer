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
       constructor Create;
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

constructor TdcmGrup0044.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0001, 'ProductPackageIdentifier', [TTypeVR.vrST], 'Product Package Identifier' );
     Add( $0002, 'SubstanceAdministrationApproval', [TTypeVR.vrCS], 'Substance Administration Approval' );
     Add( $0003, 'ApprovalStatusFurtherDescription', [TTypeVR.vrLT], 'Approval Status Further Description' );
     Add( $0004, 'ApprovalStatusDateTime', [TTypeVR.vrDT], 'Approval Status DateTime' );
     Add( $0007, 'ProductTypeCodeSequence', [TTypeVR.vrSQ], 'Product Type Code Sequence' );
     Add( $0008, 'ProductName', [TTypeVR.vrLO], 'Product Name' );
     Add( $0009, 'ProductDescription', [TTypeVR.vrLT], 'Product Description' );
     Add( $000A, 'ProductLotIdentifier', [TTypeVR.vrLO], 'Product Lot Identifier' );
     Add( $000B, 'ProductExpirationDateTime', [TTypeVR.vrDT], 'Product Expiration DateTime' );
     Add( $0010, 'SubstanceAdministrationDateTime', [TTypeVR.vrDT], 'Substance Administration DateTime' );
     Add( $0011, 'SubstanceAdministrationNotes', [TTypeVR.vrLO], 'Substance Administration Notes' );
     Add( $0012, 'SubstanceAdministrationDeviceID', [TTypeVR.vrLO], 'Substance Administration Device ID' );
     Add( $0013, 'ProductParameterSequence', [TTypeVR.vrSQ], 'Product Parameter Sequence' );
     Add( $0019, 'SubstanceAdministrationParameterSequence', [TTypeVR.vrSQ], 'Substance Administration Parameter Sequence' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
