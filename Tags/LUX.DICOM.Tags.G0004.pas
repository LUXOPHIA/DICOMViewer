unit LUX.DICOM.Tags.G0004;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems0004

     TDICOMElems0004 = class( TDICOMElems )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems0004

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TDICOMElems0004.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_8
     // 8 Registry of DICOM Directory Structuring Elements
     Add( $1130, TKindVR.vrCS, 'File-set ID' );
     Add( $1141, TKindVR.vrCS, 'File-set Descriptor File ID' );
     Add( $1142, TKindVR.vrCS, 'Specific Character Set of File-set Descriptor File' );
     Add( $1200, TKindVR.vrUL, 'Offset of the First Directory Record of the Root Directory Entity' );
     Add( $1202, TKindVR.vrUL, 'Offset of the Last Directory Record of the Root Directory Entity' );
     Add( $1212, TKindVR.vrUS, 'File-set Consistency Flag' );
     Add( $1220, TKindVR.vrSQ, 'Directory Record Sequence' );
     Add( $1400, TKindVR.vrUL, 'Offset of the Next Directory Record' );
     Add( $1410, TKindVR.vrUS, 'Record In-use Flag' );
     Add( $1420, TKindVR.vrUL, 'Offset of Referenced Lower-Level Directory Entity' );
     Add( $1430, TKindVR.vrCS, 'Directory Record Type' );
     Add( $1432, TKindVR.vrUI, 'Private Record UID' );
     Add( $1500, TKindVR.vrCS, 'Referenced File ID' );
     Add( $1504, TKindVR.vrUL, 'MRDR Directory Record Offset' );
     Add( $1510, TKindVR.vrUI, 'Referenced SOP Class UID in File' );
     Add( $1511, TKindVR.vrUI, 'Referenced SOP Instance UID in File' );
     Add( $1512, TKindVR.vrUI, 'Referenced Transfer Syntax UID in File' );
     Add( $151A, TKindVR.vrUI, 'Referenced Related General SOP Class UID in File' );
     Add( $1600, TKindVR.vrUL, 'Number of References' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
