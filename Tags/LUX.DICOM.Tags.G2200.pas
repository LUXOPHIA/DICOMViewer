unit LUX.DICOM.Tags.G2200;

interface //#################################################################### ■

uses LUX, LUX.DICOM.VRs, LUX.DICOM.Tags;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup2200

     TdcmGrup2200 = class( TdcmGrup )
     private
     protected
     public
       class procedure AddBook( const Book_:TdcmBookTag );
       constructor Create( const Book_:TdcmBookTag; const Code_:THex4 );
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

class procedure TdcmGrup2200.AddBook( const Book_:TdcmBookTag );
begin
     Create( Book_, $2200 );
end;

//------------------------------------------------------------------------------

constructor TdcmGrup2200.Create( const Book_:TdcmBookTag; const Code_:THex4 );
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0001, 'LabelUsingInformationExtractedFromInstances', [TKindVR.vrCS], 'Label Using Information Extracted From Instances' );
     Add( $0002, 'LabelText', [TKindVR.vrUT], 'Label Text' );
     Add( $0003, 'LabelStyleSelection', [TKindVR.vrCS], 'Label Style Selection' );
     Add( $0004, 'MediaDisposition', [TKindVR.vrLT], 'Media Disposition' );
     Add( $0005, 'BarcodeValue', [TKindVR.vrLT], 'Barcode Value' );
     Add( $0006, 'BarcodeSymbology', [TKindVR.vrCS], 'Barcode Symbology' );
     Add( $0007, 'AllowMediaSplitting', [TKindVR.vrCS], 'Allow Media Splitting' );
     Add( $0008, 'IncludeNonDICOMObjects', [TKindVR.vrCS], 'Include Non-DICOM Objects' );
     Add( $0009, 'IncludeDisplayApplication', [TKindVR.vrCS], 'Include Display Application' );
     Add( $000A, 'PreserveCompositeInstancesAfterMediaCreation', [TKindVR.vrCS], 'Preserve Composite Instances After Media Creation' );
     Add( $000B, 'TotalNumberOfPiecesOfMediaCreated', [TKindVR.vrUS], 'Total Number of Pieces of Media Created' );
     Add( $000C, 'RequestedMediaApplicationProfile', [TKindVR.vrLO], 'Requested Media Application Profile' );
     Add( $000D, 'ReferencedStorageMediaSequence', [TKindVR.vrSQ], 'Referenced Storage Media Sequence' );
     Add( $000E, 'FailureAttributes', [TKindVR.vrAT], 'Failure Attributes' );
     Add( $000F, 'AllowLossyCompression', [TKindVR.vrCS], 'Allow Lossy Compression' );
     Add( $0020, 'RequestPriority', [TKindVR.vrCS], 'Request Priority' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
