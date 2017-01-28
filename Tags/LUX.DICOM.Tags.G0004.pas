unit LUX.DICOM.Tags.G0004;

interface //#################################################################### ■

uses LUX, LUX.DICOM.VRs, LUX.DICOM.Tags;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0004

     TdcmGrup0004 = class( TdcmGrup )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0004

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

class procedure TdcmGrup0004.AddBook( const Book_:TdcmBookTag );
begin
     Create( Book_, $0004 );
end;

//------------------------------------------------------------------------------

constructor TdcmGrup0004.Create( const Book_:TdcmBookTag; const Code_:THex4 );
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_8
     // 8 Registry of DICOM Directory Structuring Elements
     Add( $1130, 'FileSetID', [TKindVR.vrCS], 'File-set ID' );
     Add( $1141, 'FileSetDescriptorFileID', [TKindVR.vrCS], 'File-set Descriptor File ID' );
     Add( $1142, 'SpecificCharacterSetOfFileSetDescriptorFile', [TKindVR.vrCS], 'Specific Character Set of File-set Descriptor File' );
     Add( $1200, 'OffsetOfTheFirstDirectoryRecordOfTheRootDirectoryEntity', [TKindVR.vrUL], 'Offset of the First Directory Record of the Root Directory Entity' );
     Add( $1202, 'OffsetOfTheLastDirectoryRecordOfTheRootDirectoryEntity', [TKindVR.vrUL], 'Offset of the Last Directory Record of the Root Directory Entity' );
     Add( $1212, 'FileSetConsistencyFlag', [TKindVR.vrUS], 'File-set Consistency Flag' );
     Add( $1220, 'DirectoryRecordSequence', [TKindVR.vrSQ], 'Directory Record Sequence' );
     Add( $1400, 'OffsetOfTheNextDirectoryRecord', [TKindVR.vrUL], 'Offset of the Next Directory Record' );
     Add( $1410, 'RecordInUseFlag', [TKindVR.vrUS], 'Record In-use Flag' );
     Add( $1420, 'OffsetOfReferencedLowerLevelDirectoryEntity', [TKindVR.vrUL], 'Offset of Referenced Lower-Level Directory Entity' );
     Add( $1430, 'DirectoryRecordType', [TKindVR.vrCS], 'Directory Record Type' );
     Add( $1432, 'PrivateRecordUID', [TKindVR.vrUI], 'Private Record UID' );
     Add( $1500, 'ReferencedFileID', [TKindVR.vrCS], 'Referenced File ID' );
     Add( $1504, 'MRDRDirectoryRecordOffset', [TKindVR.vrUL], 'MRDR Directory Record Offset' );
     Add( $1510, 'ReferencedSOPClassUIDInFile', [TKindVR.vrUI], 'Referenced SOP Class UID in File' );
     Add( $1511, 'ReferencedSOPInstanceUIDInFile', [TKindVR.vrUI], 'Referenced SOP Instance UID in File' );
     Add( $1512, 'ReferencedTransferSyntaxUIDInFile', [TKindVR.vrUI], 'Referenced Transfer Syntax UID in File' );
     Add( $151A, 'ReferencedRelatedGeneralSOPClassUIDInFile', [TKindVR.vrUI], 'Referenced Related General SOP Class UID in File' );
     Add( $1600, 'NumberOfReferences', [TKindVR.vrUL], 'Number of References' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
