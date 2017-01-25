unit LUX.DICOM.Tags.G0010;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0010

     TdcmGrup0010 = class( TdcmGrup )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0010

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmGrup0010.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0010, 'PatientName', [TKindVR.vrPN], 'Patient''s Name' );
     Add( $0020, 'PatientID', [TKindVR.vrLO], 'Patient ID' );
     Add( $0021, 'IssuerOfPatientID', [TKindVR.vrLO], 'Issuer of Patient ID' );
     Add( $0022, 'TypeOfPatientID', [TKindVR.vrCS], 'Type of Patient ID' );
     Add( $0024, 'IssuerOfPatientIDQualifiersSequence', [TKindVR.vrSQ], 'Issuer of Patient ID Qualifiers Sequence' );
     Add( $0026, 'SourcePatientGroupIdentificationSequence', [TKindVR.vrSQ], 'Source Patient Group Identification Sequence' );
     Add( $0027, 'GroupOfPatientsIdentificationSequence', [TKindVR.vrSQ], 'Group of Patients Identification Sequence' );
     Add( $0028, 'SubjectRelativePositionInImage', [TKindVR.vrUS], 'Subject Relative Position in Image' );
     Add( $0030, 'PatientBirthDate', [TKindVR.vrDA], 'Patient''s Birth Date' );
     Add( $0032, 'PatientBirthTime', [TKindVR.vrTM], 'Patient''s Birth Time' );
     Add( $0033, 'PatientBirthDateInAlternativeCalendar', [TKindVR.vrLO], 'Patient''s Birth Date in Alternative Calendar' );
     Add( $0034, 'PatientDeathDateInAlternativeCalendar', [TKindVR.vrLO], 'Patient''s Death Date in Alternative Calendar' );
     Add( $0035, 'PatientAlternativeCalendar', [TKindVR.vrCS], 'Patient''s Alternative Calendar' );
     Add( $0040, 'PatientSex', [TKindVR.vrCS], 'Patient''s Sex' );
     Add( $0050, 'PatientInsurancePlanCodeSequence', [TKindVR.vrSQ], 'Patient''s Insurance Plan Code Sequence' );
     Add( $0101, 'PatientPrimaryLanguageCodeSequence', [TKindVR.vrSQ], 'Patient''s Primary Language Code Sequence' );
     Add( $0102, 'PatientPrimaryLanguageModifierCodeSequence', [TKindVR.vrSQ], 'Patient''s Primary Language Modifier Code Sequence' );
     Add( $0200, 'QualityControlSubject', [TKindVR.vrCS], 'Quality Control Subject' );
     Add( $0201, 'QualityControlSubjectTypeCodeSequence', [TKindVR.vrSQ], 'Quality Control Subject Type Code Sequence' );
     Add( $0212, 'StrainDescription', [TKindVR.vrUC], 'Strain Description' );
     Add( $0213, 'StrainNomenclature', [TKindVR.vrLO], 'Strain Nomenclature' );
     Add( $0214, 'StrainStockNumber', [TKindVR.vrLO], 'Strain Stock Number' );
     Add( $0215, 'StrainSourceRegistryCodeSequence', [TKindVR.vrSQ], 'Strain Source Registry Code Sequence' );
     Add( $0216, 'StrainStockSequence', [TKindVR.vrSQ], 'Strain Stock Sequence' );
     Add( $0217, 'StrainSource', [TKindVR.vrLO], 'Strain Source' );
     Add( $0218, 'StrainAdditionalInformation', [TKindVR.vrUT], 'Strain Additional Information' );
     Add( $0219, 'StrainCodeSequence', [TKindVR.vrSQ], 'Strain Code Sequence' );
     Add( $1000, 'OtherPatientIDs', [TKindVR.vrLO], 'Other Patient IDs' );
     Add( $1001, 'OtherPatientNames', [TKindVR.vrPN], 'Other Patient Names' );
     Add( $1002, 'OtherPatientIDsSequence', [TKindVR.vrSQ], 'Other Patient IDs Sequence' );
     Add( $1005, 'PatientBirthName', [TKindVR.vrPN], 'Patient''s Birth Name' );
     Add( $1010, 'PatientAge', [TKindVR.vrAS], 'Patient''s Age' );
     Add( $1020, 'PatientSize', [TKindVR.vrDS], 'Patient''s Size' );
     Add( $1021, 'PatientSizeCodeSequence', [TKindVR.vrSQ], 'Patient''s Size Code Sequence' );
     Add( $1022, 'PatientBodyMassIndex', [TKindVR.vrDS], 'Patient''s Body Mass Index' );
     Add( $1023, 'MeasuredAPDimension', [TKindVR.vrDS], 'Measured AP Dimension' );
     Add( $1024, 'MeasuredLateralDimension', [TKindVR.vrDS], 'Measured Lateral Dimension' );
     Add( $1030, 'PatientWeight', [TKindVR.vrDS], 'Patient''s Weight' );
     Add( $1040, 'PatientAddress', [TKindVR.vrLO], 'Patient''s Address' );
     Add( $1050, 'InsurancePlanIdentification', [TKindVR.vrLO], 'Insurance Plan Identification' );
     Add( $1060, 'PatientMotherBirthName', [TKindVR.vrPN], 'Patient''s Mother''s Birth Name' );
     Add( $1080, 'MilitaryRank', [TKindVR.vrLO], 'Military Rank' );
     Add( $1081, 'BranchOfService', [TKindVR.vrLO], 'Branch of Service' );
     Add( $1090, 'MedicalRecordLocator', [TKindVR.vrLO], 'Medical Record Locator' );
     Add( $1100, 'ReferencedPatientPhotoSequence', [TKindVR.vrSQ], 'Referenced Patient Photo Sequence' );
     Add( $2000, 'MedicalAlerts', [TKindVR.vrLO], 'Medical Alerts' );
     Add( $2110, 'Allergies', [TKindVR.vrLO], 'Allergies' );
     Add( $2150, 'CountryOfResidence', [TKindVR.vrLO], 'Country of Residence' );
     Add( $2152, 'RegionOfResidence', [TKindVR.vrLO], 'Region of Residence' );
     Add( $2154, 'PatientTelephoneNumbers', [TKindVR.vrSH], 'Patient''s Telephone Numbers' );
     Add( $2155, 'PatientTelecomInformation', [TKindVR.vrLT], 'Patient''s Telecom Information' );
     Add( $2160, 'EthnicGroup', [TKindVR.vrSH], 'Ethnic Group' );
     Add( $2180, 'Occupation', [TKindVR.vrSH], 'Occupation' );
     Add( $21A0, 'SmokingStatus', [TKindVR.vrCS], 'Smoking Status' );
     Add( $21B0, 'AdditionalPatientHistory', [TKindVR.vrLT], 'Additional Patient History' );
     Add( $21C0, 'PregnancyStatus', [TKindVR.vrUS], 'Pregnancy Status' );
     Add( $21D0, 'LastMenstrualDate', [TKindVR.vrDA], 'Last Menstrual Date' );
     Add( $21F0, 'PatientReligiousPreference', [TKindVR.vrLO], 'Patient''s Religious Preference' );
     Add( $2201, 'PatientSpeciesDescription', [TKindVR.vrLO], 'Patient Species Description' );
     Add( $2202, 'PatientSpeciesCodeSequence', [TKindVR.vrSQ], 'Patient Species Code Sequence' );
     Add( $2203, 'PatientSexNeutered', [TKindVR.vrCS], 'Patient''s Sex Neutered' );
     Add( $2210, 'AnatomicalOrientationType', [TKindVR.vrCS], 'Anatomical Orientation Type' );
     Add( $2292, 'PatientBreedDescription', [TKindVR.vrLO], 'Patient Breed Description' );
     Add( $2293, 'PatientBreedCodeSequence', [TKindVR.vrSQ], 'Patient Breed Code Sequence' );
     Add( $2294, 'BreedRegistrationSequence', [TKindVR.vrSQ], 'Breed Registration Sequence' );
     Add( $2295, 'BreedRegistrationNumber', [TKindVR.vrLO], 'Breed Registration Number' );
     Add( $2296, 'BreedRegistryCodeSequence', [TKindVR.vrSQ], 'Breed Registry Code Sequence' );
     Add( $2297, 'ResponsiblePerson', [TKindVR.vrPN], 'Responsible Person' );
     Add( $2298, 'ResponsiblePersonRole', [TKindVR.vrCS], 'Responsible Person Role' );
     Add( $2299, 'ResponsibleOrganization', [TKindVR.vrLO], 'Responsible Organization' );
     Add( $4000, 'PatientComments', [TKindVR.vrLT], 'Patient Comments' );
     Add( $9431, 'ExaminedBodyThickness', [TKindVR.vrFL], 'Examined Body Thickness' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
