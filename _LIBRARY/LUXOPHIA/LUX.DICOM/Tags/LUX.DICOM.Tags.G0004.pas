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
     Add( $1130, [TTypeVR.vrCS], 'File-set ID' );
     Add( $1141, [TTypeVR.vrCS], 'File-set Descriptor File ID' );
     Add( $1142, [TTypeVR.vrCS], 'Specific Character Set of File-set Descriptor File' );
     Add( $1200, [TTypeVR.vrUL], 'Offset of the First Directory Record of the Root Directory Entity' );
     Add( $1202, [TTypeVR.vrUL], 'Offset of the Last Directory Record of the Root Directory Entity' );
     Add( $1212, [TTypeVR.vrUS], 'File-set Consistency Flag' );
     Add( $1220, [TTypeVR.vrSQ], 'Directory Record Sequence' );
     Add( $1400, [TTypeVR.vrUL], 'Offset of the Next Directory Record' );
     Add( $1410, [TTypeVR.vrUS], 'Record In-use Flag' );
     Add( $1420, [TTypeVR.vrUL], 'Offset of Referenced Lower-Level Directory Entity' );
     Add( $1430, [TTypeVR.vrCS], 'Directory Record Type' );
     Add( $1432, [TTypeVR.vrUI], 'Private Record UID' );
     Add( $1500, [TTypeVR.vrCS], 'Referenced File ID' );
     Add( $1504, [TTypeVR.vrUL], 'MRDR Directory Record Offset' );
     Add( $1510, [TTypeVR.vrUI], 'Referenced SOP Class UID in File' );
     Add( $1511, [TTypeVR.vrUI], 'Referenced SOP Instance UID in File' );
     Add( $1512, [TTypeVR.vrUI], 'Referenced Transfer Syntax UID in File' );
     Add( $151A, [TTypeVR.vrUI], 'Referenced Related General SOP Class UID in File' );
     Add( $1600, [TTypeVR.vrUL], 'Number of References' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
