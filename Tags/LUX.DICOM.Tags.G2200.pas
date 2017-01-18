unit LUX.DICOM.Tags.G2200;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup2200

     TdcmGrup2200 = class( TdcmGrup )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup2200

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmGrup2200.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0001, 'LabelUsingInformationExtractedFromInstances', [TTypeVR.vrCS], 'Label Using Information Extracted From Instances' );
     Add( $0002, 'LabelText', [TTypeVR.vrUT], 'Label Text' );
     Add( $0003, 'LabelStyleSelection', [TTypeVR.vrCS], 'Label Style Selection' );
     Add( $0004, 'MediaDisposition', [TTypeVR.vrLT], 'Media Disposition' );
     Add( $0005, 'BarcodeValue', [TTypeVR.vrLT], 'Barcode Value' );
     Add( $0006, 'BarcodeSymbology', [TTypeVR.vrCS], 'Barcode Symbology' );
     Add( $0007, 'AllowMediaSplitting', [TTypeVR.vrCS], 'Allow Media Splitting' );
     Add( $0008, 'IncludeNonDICOMObjects', [TTypeVR.vrCS], 'Include Non-DICOM Objects' );
     Add( $0009, 'IncludeDisplayApplication', [TTypeVR.vrCS], 'Include Display Application' );
     Add( $000A, 'PreserveCompositeInstancesAfterMediaCreation', [TTypeVR.vrCS], 'Preserve Composite Instances After Media Creation' );
     Add( $000B, 'TotalNumberOfPiecesOfMediaCreated', [TTypeVR.vrUS], 'Total Number of Pieces of Media Created' );
     Add( $000C, 'RequestedMediaApplicationProfile', [TTypeVR.vrLO], 'Requested Media Application Profile' );
     Add( $000D, 'ReferencedStorageMediaSequence', [TTypeVR.vrSQ], 'Referenced Storage Media Sequence' );
     Add( $000E, 'FailureAttributes', [TTypeVR.vrAT], 'Failure Attributes' );
     Add( $000F, 'AllowLossyCompression', [TTypeVR.vrCS], 'Allow Lossy Compression' );
     Add( $0020, 'RequestPriority', [TTypeVR.vrCS], 'Request Priority' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
