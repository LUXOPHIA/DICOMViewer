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

     Add( $0000, [TTypeVR.vrUL], 'Patient Group Length' );

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0010, [TTypeVR.vrPN], 'Patient''s Name' );
     Add( $0020, [TTypeVR.vrLO], 'Patient ID' );
     Add( $0021, [TTypeVR.vrLO], 'Issuer of Patient ID' );
     Add( $0022, [TTypeVR.vrCS], 'Type of Patient ID' );
     Add( $0024, [TTypeVR.vrSQ], 'Issuer of Patient ID Qualifiers Sequence' );
     Add( $0026, [TTypeVR.vrSQ], 'Source Patient Group Identification Sequence' );
     Add( $0027, [TTypeVR.vrSQ], 'Group of Patients Identification Sequence' );
     Add( $0028, [TTypeVR.vrUS], 'Subject Relative Position in Image' );
     Add( $0030, [TTypeVR.vrDA], 'Patient''s Birth Date' );
     Add( $0032, [TTypeVR.vrTM], 'Patient''s Birth Time' );
     Add( $0033, [TTypeVR.vrLO], 'Patient''s Birth Date in Alternative Calendar' );
     Add( $0034, [TTypeVR.vrLO], 'Patient''s Death Date in Alternative Calendar' );
     Add( $0035, [TTypeVR.vrCS], 'Patient''s Alternative Calendar' );
     Add( $0040, [TTypeVR.vrCS], 'Patient''s Sex' );
     Add( $0050, [TTypeVR.vrSQ], 'Patient''s Insurance Plan Code Sequence' );
     Add( $0101, [TTypeVR.vrSQ], 'Patient''s Primary Language Code Sequence' );
     Add( $0102, [TTypeVR.vrSQ], 'Patient''s Primary Language Modifier Code Sequence' );
     Add( $0200, [TTypeVR.vrCS], 'Quality Control Subject' );
     Add( $0201, [TTypeVR.vrSQ], 'Quality Control Subject Type Code Sequence' );
     Add( $0212, [TTypeVR.vrUC], 'Strain Description' );
     Add( $0213, [TTypeVR.vrLO], 'Strain Nomenclature' );
     Add( $0214, [TTypeVR.vrLO], 'Strain Stock Number' );
     Add( $0215, [TTypeVR.vrSQ], 'Strain Source Registry Code Sequence' );
     Add( $0216, [TTypeVR.vrSQ], 'Strain Stock Sequence' );
     Add( $0217, [TTypeVR.vrLO], 'Strain Source' );
     Add( $0218, [TTypeVR.vrUT], 'Strain Additional Information' );
     Add( $0219, [TTypeVR.vrSQ], 'Strain Code Sequence' );
     Add( $1000, [TTypeVR.vrLO], 'Other Patient IDs' );
     Add( $1001, [TTypeVR.vrPN], 'Other Patient Names' );
     Add( $1002, [TTypeVR.vrSQ], 'Other Patient IDs Sequence' );
     Add( $1005, [TTypeVR.vrPN], 'Patient''s Birth Name' );
     Add( $1010, [TTypeVR.vrAS], 'Patient''s Age' );
     Add( $1020, [TTypeVR.vrDS], 'Patient''s Size' );
     Add( $1021, [TTypeVR.vrSQ], 'Patient''s Size Code Sequence' );
     Add( $1022, [TTypeVR.vrDS], 'Patient''s Body Mass Index' );
     Add( $1023, [TTypeVR.vrDS], 'Measured AP Dimension' );
     Add( $1024, [TTypeVR.vrDS], 'Measured Lateral Dimension' );
     Add( $1030, [TTypeVR.vrDS], 'Patient''s Weight' );
     Add( $1040, [TTypeVR.vrLO], 'Patient''s Address' );
     Add( $1050, [TTypeVR.vrLO], 'Insurance Plan Identification' );
     Add( $1060, [TTypeVR.vrPN], 'Patient''s Mother''s Birth Name' );
     Add( $1080, [TTypeVR.vrLO], 'Military Rank' );
     Add( $1081, [TTypeVR.vrLO], 'Branch of Service' );
     Add( $1090, [TTypeVR.vrLO], 'Medical Record Locator' );
     Add( $1100, [TTypeVR.vrSQ], 'Referenced Patient Photo Sequence' );
     Add( $2000, [TTypeVR.vrLO], 'Medical Alerts' );
     Add( $2110, [TTypeVR.vrLO], 'Allergies' );
     Add( $2150, [TTypeVR.vrLO], 'Country of Residence' );
     Add( $2152, [TTypeVR.vrLO], 'Region of Residence' );
     Add( $2154, [TTypeVR.vrSH], 'Patient''s Telephone Numbers' );
     Add( $2155, [TTypeVR.vrLT], 'Patient''s Telecom Information' );
     Add( $2160, [TTypeVR.vrSH], 'Ethnic Group' );
     Add( $2180, [TTypeVR.vrSH], 'Occupation' );
     Add( $21A0, [TTypeVR.vrCS], 'Smoking Status' );
     Add( $21B0, [TTypeVR.vrLT], 'Additional Patient History' );
     Add( $21C0, [TTypeVR.vrUS], 'Pregnancy Status' );
     Add( $21D0, [TTypeVR.vrDA], 'Last Menstrual Date' );
     Add( $21F0, [TTypeVR.vrLO], 'Patient''s Religious Preference' );
     Add( $2201, [TTypeVR.vrLO], 'Patient Species Description' );
     Add( $2202, [TTypeVR.vrSQ], 'Patient Species Code Sequence' );
     Add( $2203, [TTypeVR.vrCS], 'Patient''s Sex Neutered' );
     Add( $2210, [TTypeVR.vrCS], 'Anatomical Orientation Type' );
     Add( $2292, [TTypeVR.vrLO], 'Patient Breed Description' );
     Add( $2293, [TTypeVR.vrSQ], 'Patient Breed Code Sequence' );
     Add( $2294, [TTypeVR.vrSQ], 'Breed Registration Sequence' );
     Add( $2295, [TTypeVR.vrLO], 'Breed Registration Number' );
     Add( $2296, [TTypeVR.vrSQ], 'Breed Registry Code Sequence' );
     Add( $2297, [TTypeVR.vrPN], 'Responsible Person' );
     Add( $2298, [TTypeVR.vrCS], 'Responsible Person Role' );
     Add( $2299, [TTypeVR.vrLO], 'Responsible Organization' );
     Add( $4000, [TTypeVR.vrLT], 'Patient Comments' );
     Add( $9431, [TTypeVR.vrFL], 'Examined Body Thickness' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
