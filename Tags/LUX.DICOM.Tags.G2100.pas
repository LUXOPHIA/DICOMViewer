unit LUX.DICOM.Tags.G2100;

interface //#################################################################### ■

uses LUX, LUX.DICOM.VRs, LUX.DICOM.Tags;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup2100

     TdcmGrup2100 = class( TdcmGrup )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup2100

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

class procedure TdcmGrup2100.AddBook( const Book_:TdcmBookTag );
begin
     Create( Book_, $2100 );
end;

//------------------------------------------------------------------------------

constructor TdcmGrup2100.Create( const Book_:TdcmBookTag; const Code_:THex4 );
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0010, 'PrintJobID', [TKindVR.vrSH], 'Print Job ID' );
     Add( $0020, 'ExecutionStatus', [TKindVR.vrCS], 'Execution Status' );
     Add( $0030, 'ExecutionStatusInfo', [TKindVR.vrCS], 'Execution Status Info' );
     Add( $0040, 'CreationDate', [TKindVR.vrDA], 'Creation Date' );
     Add( $0050, 'CreationTime', [TKindVR.vrTM], 'Creation Time' );
     Add( $0070, 'Originator', [TKindVR.vrAE], 'Originator' );
     Add( $0140, 'DestinationAE', [TKindVR.vrAE], 'Destination AE' );
     Add( $0160, 'OwnerID', [TKindVR.vrSH], 'Owner ID' );
     Add( $0170, 'NumberOfFilms', [TKindVR.vrIS], 'Number of Films' );
     Add( $0500, 'ReferencedPrintJobSequencePullStoredPrint', [TKindVR.vrSQ], 'Referenced Print Job Sequence (Pull Stored Print)' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
