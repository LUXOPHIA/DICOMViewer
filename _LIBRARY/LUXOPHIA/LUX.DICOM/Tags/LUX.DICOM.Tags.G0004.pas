unit LUX.DICOM.Tags.G0004;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0004

     TdcmGrup0004 = class( TdcmGrup )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0004

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmGrup0004.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_8
     // 8 Registry of DICOM Directory Structuring Elements
     Add( $1130, 'FileSetID', [TTypeVR.vrCS], 'File-set ID' );
     Add( $1141, 'FileSetDescriptorFileID', [TTypeVR.vrCS], 'File-set Descriptor File ID' );
     Add( $1142, 'SpecificCharacterSetOfFileSetDescriptorFile', [TTypeVR.vrCS], 'Specific Character Set of File-set Descriptor File' );
     Add( $1200, 'OffsetOfTheFirstDirectoryRecordOfTheRootDirectoryEntity', [TTypeVR.vrUL], 'Offset of the First Directory Record of the Root Directory Entity' );
     Add( $1202, 'OffsetOfTheLastDirectoryRecordOfTheRootDirectoryEntity', [TTypeVR.vrUL], 'Offset of the Last Directory Record of the Root Directory Entity' );
     Add( $1212, 'FileSetConsistencyFlag', [TTypeVR.vrUS], 'File-set Consistency Flag' );
     Add( $1220, 'DirectoryRecordSequence', [TTypeVR.vrSQ], 'Directory Record Sequence' );
     Add( $1400, 'OffsetOfTheNextDirectoryRecord', [TTypeVR.vrUL], 'Offset of the Next Directory Record' );
     Add( $1410, 'RecordInUseFlag', [TTypeVR.vrUS], 'Record In-use Flag' );
     Add( $1420, 'OffsetOfReferencedLowerLevelDirectoryEntity', [TTypeVR.vrUL], 'Offset of Referenced Lower-Level Directory Entity' );
     Add( $1430, 'DirectoryRecordType', [TTypeVR.vrCS], 'Directory Record Type' );
     Add( $1432, 'PrivateRecordUID', [TTypeVR.vrUI], 'Private Record UID' );
     Add( $1500, 'ReferencedFileID', [TTypeVR.vrCS], 'Referenced File ID' );
     Add( $1504, 'MRDRDirectoryRecordOffset', [TTypeVR.vrUL], 'MRDR Directory Record Offset' );
     Add( $1510, 'ReferencedSOPClassUIDInFile', [TTypeVR.vrUI], 'Referenced SOP Class UID in File' );
     Add( $1511, 'ReferencedSOPInstanceUIDInFile', [TTypeVR.vrUI], 'Referenced SOP Instance UID in File' );
     Add( $1512, 'ReferencedTransferSyntaxUIDInFile', [TTypeVR.vrUI], 'Referenced Transfer Syntax UID in File' );
     Add( $151A, 'ReferencedRelatedGeneralSOPClassUIDInFile', [TTypeVR.vrUI], 'Referenced Related General SOP Class UID in File' );
     Add( $1600, 'NumberOfReferences', [TTypeVR.vrUL], 'Number of References' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
