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

     Add( $0000, [TTypeVR.vrUL], 'Visit Group Length' );

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0004, [TTypeVR.vrSQ], 'Referenced Patient Alias Sequence' );
     Add( $0008, [TTypeVR.vrCS], 'Visit Status ID' );
     Add( $0010, [TTypeVR.vrLO], 'Admission ID' );
     Add( $0011, [TTypeVR.vrLO], 'Issuer of Admission ID' );
     Add( $0014, [TTypeVR.vrSQ], 'Issuer of Admission ID Sequence' );
     Add( $0016, [TTypeVR.vrLO], 'Route of Admissions' );
     Add( $001A, [TTypeVR.vrDA], 'Scheduled Admission Date' );
     Add( $001B, [TTypeVR.vrTM], 'Scheduled Admission Time' );
     Add( $001C, [TTypeVR.vrDA], 'Scheduled Discharge Date' );
     Add( $001D, [TTypeVR.vrTM], 'Scheduled Discharge Time' );
     Add( $001E, [TTypeVR.vrLO], 'Scheduled Patient Institution Residence' );
     Add( $0020, [TTypeVR.vrDA], 'Admitting Date' );
     Add( $0021, [TTypeVR.vrTM], 'Admitting Time' );
     Add( $0030, [TTypeVR.vrDA], 'Discharge Date' );
     Add( $0032, [TTypeVR.vrTM], 'Discharge Time' );
     Add( $0040, [TTypeVR.vrLO], 'Discharge Diagnosis Description' );
     Add( $0044, [TTypeVR.vrSQ], 'Discharge Diagnosis Code Sequence' );
     Add( $0050, [TTypeVR.vrLO], 'Special Needs' );
     Add( $0060, [TTypeVR.vrLO], 'Service Episode ID' );
     Add( $0061, [TTypeVR.vrLO], 'Issuer of Service Episode ID' );
     Add( $0062, [TTypeVR.vrLO], 'Service Episode Description' );
     Add( $0064, [TTypeVR.vrSQ], 'Issuer of Service Episode ID Sequence' );
     Add( $0100, [TTypeVR.vrSQ], 'Pertinent Documents Sequence' );
     Add( $0101, [TTypeVR.vrSQ], 'Pertinent Resources Sequence' );
     Add( $0102, [TTypeVR.vrLO], 'Resource Description' );
     Add( $0300, [TTypeVR.vrLO], 'Current Patient Location' );
     Add( $0400, [TTypeVR.vrLO], 'Patient''s Institution Residence' );
     Add( $0500, [TTypeVR.vrLO], 'Patient State' );
     Add( $0502, [TTypeVR.vrSQ], 'Patient Clinical Trial Participation Sequence' );
     Add( $4000, [TTypeVR.vrLT], 'Visit Comments' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
