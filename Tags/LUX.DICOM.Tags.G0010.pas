unit LUX.DICOM.Tags.G0010;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems0010

     TDICOMElems0010 = class( TDICOMElems )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems0010

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TDICOMElems0010.Create;
begin
     inherited;

     Add( $0000, TKindVR.vrUL, 'Patient Group Length' );

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0010, TKindVR.vrPN, 'Patient''s Name' );
     Add( $0020, TKindVR.vrLO, 'Patient ID' );
     Add( $0021, TKindVR.vrLO, 'Issuer of Patient ID' );
     Add( $0022, TKindVR.vrCS, 'Type of Patient ID' );
     Add( $0024, TKindVR.vrSQ, 'Issuer of Patient ID Qualifiers Sequence' );
     Add( $0026, TKindVR.vrSQ, 'Source Patient Group Identification Sequence' );
     Add( $0027, TKindVR.vrSQ, 'Group of Patients Identification Sequence' );
     Add( $0028, TKindVR.vrUS, 'Subject Relative Position in Image' );
     Add( $0030, TKindVR.vrDA, 'Patient''s Birth Date' );
     Add( $0032, TKindVR.vrTM, 'Patient''s Birth Time' );
     Add( $0033, TKindVR.vrLO, 'Patient''s Birth Date in Alternative Calendar' );
     Add( $0034, TKindVR.vrLO, 'Patient''s Death Date in Alternative Calendar' );
     Add( $0035, TKindVR.vrCS, 'Patient''s Alternative Calendar' );
     Add( $0040, TKindVR.vrCS, 'Patient''s Sex' );
     Add( $0050, TKindVR.vrSQ, 'Patient''s Insurance Plan Code Sequence' );
     Add( $0101, TKindVR.vrSQ, 'Patient''s Primary Language Code Sequence' );
     Add( $0102, TKindVR.vrSQ, 'Patient''s Primary Language Modifier Code Sequence' );
     Add( $0200, TKindVR.vrCS, 'Quality Control Subject' );
     Add( $0201, TKindVR.vrSQ, 'Quality Control Subject Type Code Sequence' );
     Add( $0212, TKindVR.vrUC, 'Strain Description' );
     Add( $0213, TKindVR.vrLO, 'Strain Nomenclature' );
     Add( $0214, TKindVR.vrLO, 'Strain Stock Number' );
     Add( $0215, TKindVR.vrSQ, 'Strain Source Registry Code Sequence' );
     Add( $0216, TKindVR.vrSQ, 'Strain Stock Sequence' );
     Add( $0217, TKindVR.vrLO, 'Strain Source' );
     Add( $0218, TKindVR.vrUT, 'Strain Additional Information' );
     Add( $0219, TKindVR.vrSQ, 'Strain Code Sequence' );
     Add( $1000, TKindVR.vrLO, 'Other Patient IDs' );
     Add( $1001, TKindVR.vrPN, 'Other Patient Names' );
     Add( $1002, TKindVR.vrSQ, 'Other Patient IDs Sequence' );
     Add( $1005, TKindVR.vrPN, 'Patient''s Birth Name' );
     Add( $1010, TKindVR.vrAS, 'Patient''s Age' );
     Add( $1020, TKindVR.vrDS, 'Patient''s Size' );
     Add( $1021, TKindVR.vrSQ, 'Patient''s Size Code Sequence' );
     Add( $1022, TKindVR.vrDS, 'Patient''s Body Mass Index' );
     Add( $1023, TKindVR.vrDS, 'Measured AP Dimension' );
     Add( $1024, TKindVR.vrDS, 'Measured Lateral Dimension' );
     Add( $1030, TKindVR.vrDS, 'Patient''s Weight' );
     Add( $1040, TKindVR.vrLO, 'Patient''s Address' );
     Add( $1050, TKindVR.vrLO, 'Insurance Plan Identification' );
     Add( $1060, TKindVR.vrPN, 'Patient''s Mother''s Birth Name' );
     Add( $1080, TKindVR.vrLO, 'Military Rank' );
     Add( $1081, TKindVR.vrLO, 'Branch of Service' );
     Add( $1090, TKindVR.vrLO, 'Medical Record Locator' );
     Add( $1100, TKindVR.vrSQ, 'Referenced Patient Photo Sequence' );
     Add( $2000, TKindVR.vrLO, 'Medical Alerts' );
     Add( $2110, TKindVR.vrLO, 'Allergies' );
     Add( $2150, TKindVR.vrLO, 'Country of Residence' );
     Add( $2152, TKindVR.vrLO, 'Region of Residence' );
     Add( $2154, TKindVR.vrSH, 'Patient''s Telephone Numbers' );
     Add( $2155, TKindVR.vrLT, 'Patient''s Telecom Information' );
     Add( $2160, TKindVR.vrSH, 'Ethnic Group' );
     Add( $2180, TKindVR.vrSH, 'Occupation' );
     Add( $21A0, TKindVR.vrCS, 'Smoking Status' );
     Add( $21B0, TKindVR.vrLT, 'Additional Patient History' );
     Add( $21C0, TKindVR.vrUS, 'Pregnancy Status' );
     Add( $21D0, TKindVR.vrDA, 'Last Menstrual Date' );
     Add( $21F0, TKindVR.vrLO, 'Patient''s Religious Preference' );
     Add( $2201, TKindVR.vrLO, 'Patient Species Description' );
     Add( $2202, TKindVR.vrSQ, 'Patient Species Code Sequence' );
     Add( $2203, TKindVR.vrCS, 'Patient''s Sex Neutered' );
     Add( $2210, TKindVR.vrCS, 'Anatomical Orientation Type' );
     Add( $2292, TKindVR.vrLO, 'Patient Breed Description' );
     Add( $2293, TKindVR.vrSQ, 'Patient Breed Code Sequence' );
     Add( $2294, TKindVR.vrSQ, 'Breed Registration Sequence' );
     Add( $2295, TKindVR.vrLO, 'Breed Registration Number' );
     Add( $2296, TKindVR.vrSQ, 'Breed Registry Code Sequence' );
     Add( $2297, TKindVR.vrPN, 'Responsible Person' );
     Add( $2298, TKindVR.vrCS, 'Responsible Person Role' );
     Add( $2299, TKindVR.vrLO, 'Responsible Organization' );
     Add( $4000, TKindVR.vrLT, 'Patient Comments' );
     Add( $9431, TKindVR.vrFL, 'Examined Body Thickness' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
