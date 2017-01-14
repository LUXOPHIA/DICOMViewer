unit LUX.DICOM.Tags.G0038;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems0038

     TDICOMElems0038 = class( TDICOMElems )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems0038

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TDICOMElems0038.Create;
begin
     inherited;

     Add( $0000, TKindVR.vrUL, 'Visit Group Length' );

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0004, TKindVR.vrSQ, 'Referenced Patient Alias Sequence' );
     Add( $0008, TKindVR.vrCS, 'Visit Status ID' );
     Add( $0010, TKindVR.vrLO, 'Admission ID' );
     Add( $0011, TKindVR.vrLO, 'Issuer of Admission ID' );
     Add( $0014, TKindVR.vrSQ, 'Issuer of Admission ID Sequence' );
     Add( $0016, TKindVR.vrLO, 'Route of Admissions' );
     Add( $001A, TKindVR.vrDA, 'Scheduled Admission Date' );
     Add( $001B, TKindVR.vrTM, 'Scheduled Admission Time' );
     Add( $001C, TKindVR.vrDA, 'Scheduled Discharge Date' );
     Add( $001D, TKindVR.vrTM, 'Scheduled Discharge Time' );
     Add( $001E, TKindVR.vrLO, 'Scheduled Patient Institution Residence' );
     Add( $0020, TKindVR.vrDA, 'Admitting Date' );
     Add( $0021, TKindVR.vrTM, 'Admitting Time' );
     Add( $0030, TKindVR.vrDA, 'Discharge Date' );
     Add( $0032, TKindVR.vrTM, 'Discharge Time' );
     Add( $0040, TKindVR.vrLO, 'Discharge Diagnosis Description' );
     Add( $0044, TKindVR.vrSQ, 'Discharge Diagnosis Code Sequence' );
     Add( $0050, TKindVR.vrLO, 'Special Needs' );
     Add( $0060, TKindVR.vrLO, 'Service Episode ID' );
     Add( $0061, TKindVR.vrLO, 'Issuer of Service Episode ID' );
     Add( $0062, TKindVR.vrLO, 'Service Episode Description' );
     Add( $0064, TKindVR.vrSQ, 'Issuer of Service Episode ID Sequence' );
     Add( $0100, TKindVR.vrSQ, 'Pertinent Documents Sequence' );
     Add( $0101, TKindVR.vrSQ, 'Pertinent Resources Sequence' );
     Add( $0102, TKindVR.vrLO, 'Resource Description' );
     Add( $0300, TKindVR.vrLO, 'Current Patient Location' );
     Add( $0400, TKindVR.vrLO, 'Patient''s Institution Residence' );
     Add( $0500, TKindVR.vrLO, 'Patient State' );
     Add( $0502, TKindVR.vrSQ, 'Patient Clinical Trial Participation Sequence' );
     Add( $4000, TKindVR.vrLT, 'Visit Comments' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
