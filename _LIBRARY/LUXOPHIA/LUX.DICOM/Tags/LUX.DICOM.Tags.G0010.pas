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
     Add( $0010, 'PatientName', [TTypeVR.vrPN], 'Patient''s Name' );
     Add( $0020, 'PatientID', [TTypeVR.vrLO], 'Patient ID' );
     Add( $0021, 'IssuerOfPatientID', [TTypeVR.vrLO], 'Issuer of Patient ID' );
     Add( $0022, 'TypeOfPatientID', [TTypeVR.vrCS], 'Type of Patient ID' );
     Add( $0024, 'IssuerOfPatientIDQualifiersSequence', [TTypeVR.vrSQ], 'Issuer of Patient ID Qualifiers Sequence' );
     Add( $0026, 'SourcePatientGroupIdentificationSequence', [TTypeVR.vrSQ], 'Source Patient Group Identification Sequence' );
     Add( $0027, 'GroupOfPatientsIdentificationSequence', [TTypeVR.vrSQ], 'Group of Patients Identification Sequence' );
     Add( $0028, 'SubjectRelativePositionInImage', [TTypeVR.vrUS], 'Subject Relative Position in Image' );
     Add( $0030, 'PatientBirthDate', [TTypeVR.vrDA], 'Patient''s Birth Date' );
     Add( $0032, 'PatientBirthTime', [TTypeVR.vrTM], 'Patient''s Birth Time' );
     Add( $0033, 'PatientBirthDateInAlternativeCalendar', [TTypeVR.vrLO], 'Patient''s Birth Date in Alternative Calendar' );
     Add( $0034, 'PatientDeathDateInAlternativeCalendar', [TTypeVR.vrLO], 'Patient''s Death Date in Alternative Calendar' );
     Add( $0035, 'PatientAlternativeCalendar', [TTypeVR.vrCS], 'Patient''s Alternative Calendar' );
     Add( $0040, 'PatientSex', [TTypeVR.vrCS], 'Patient''s Sex' );
     Add( $0050, 'PatientInsurancePlanCodeSequence', [TTypeVR.vrSQ], 'Patient''s Insurance Plan Code Sequence' );
     Add( $0101, 'PatientPrimaryLanguageCodeSequence', [TTypeVR.vrSQ], 'Patient''s Primary Language Code Sequence' );
     Add( $0102, 'PatientPrimaryLanguageModifierCodeSequence', [TTypeVR.vrSQ], 'Patient''s Primary Language Modifier Code Sequence' );
     Add( $0200, 'QualityControlSubject', [TTypeVR.vrCS], 'Quality Control Subject' );
     Add( $0201, 'QualityControlSubjectTypeCodeSequence', [TTypeVR.vrSQ], 'Quality Control Subject Type Code Sequence' );
     Add( $0212, 'StrainDescription', [TTypeVR.vrUC], 'Strain Description' );
     Add( $0213, 'StrainNomenclature', [TTypeVR.vrLO], 'Strain Nomenclature' );
     Add( $0214, 'StrainStockNumber', [TTypeVR.vrLO], 'Strain Stock Number' );
     Add( $0215, 'StrainSourceRegistryCodeSequence', [TTypeVR.vrSQ], 'Strain Source Registry Code Sequence' );
     Add( $0216, 'StrainStockSequence', [TTypeVR.vrSQ], 'Strain Stock Sequence' );
     Add( $0217, 'StrainSource', [TTypeVR.vrLO], 'Strain Source' );
     Add( $0218, 'StrainAdditionalInformation', [TTypeVR.vrUT], 'Strain Additional Information' );
     Add( $0219, 'StrainCodeSequence', [TTypeVR.vrSQ], 'Strain Code Sequence' );
     Add( $1000, 'OtherPatientIDs', [TTypeVR.vrLO], 'Other Patient IDs' );
     Add( $1001, 'OtherPatientNames', [TTypeVR.vrPN], 'Other Patient Names' );
     Add( $1002, 'OtherPatientIDsSequence', [TTypeVR.vrSQ], 'Other Patient IDs Sequence' );
     Add( $1005, 'PatientBirthName', [TTypeVR.vrPN], 'Patient''s Birth Name' );
     Add( $1010, 'PatientAge', [TTypeVR.vrAS], 'Patient''s Age' );
     Add( $1020, 'PatientSize', [TTypeVR.vrDS], 'Patient''s Size' );
     Add( $1021, 'PatientSizeCodeSequence', [TTypeVR.vrSQ], 'Patient''s Size Code Sequence' );
     Add( $1022, 'PatientBodyMassIndex', [TTypeVR.vrDS], 'Patient''s Body Mass Index' );
     Add( $1023, 'MeasuredAPDimension', [TTypeVR.vrDS], 'Measured AP Dimension' );
     Add( $1024, 'MeasuredLateralDimension', [TTypeVR.vrDS], 'Measured Lateral Dimension' );
     Add( $1030, 'PatientWeight', [TTypeVR.vrDS], 'Patient''s Weight' );
     Add( $1040, 'PatientAddress', [TTypeVR.vrLO], 'Patient''s Address' );
     Add( $1050, 'InsurancePlanIdentification', [TTypeVR.vrLO], 'Insurance Plan Identification' );
     Add( $1060, 'PatientMotherBirthName', [TTypeVR.vrPN], 'Patient''s Mother''s Birth Name' );
     Add( $1080, 'MilitaryRank', [TTypeVR.vrLO], 'Military Rank' );
     Add( $1081, 'BranchOfService', [TTypeVR.vrLO], 'Branch of Service' );
     Add( $1090, 'MedicalRecordLocator', [TTypeVR.vrLO], 'Medical Record Locator' );
     Add( $1100, 'ReferencedPatientPhotoSequence', [TTypeVR.vrSQ], 'Referenced Patient Photo Sequence' );
     Add( $2000, 'MedicalAlerts', [TTypeVR.vrLO], 'Medical Alerts' );
     Add( $2110, 'Allergies', [TTypeVR.vrLO], 'Allergies' );
     Add( $2150, 'CountryOfResidence', [TTypeVR.vrLO], 'Country of Residence' );
     Add( $2152, 'RegionOfResidence', [TTypeVR.vrLO], 'Region of Residence' );
     Add( $2154, 'PatientTelephoneNumbers', [TTypeVR.vrSH], 'Patient''s Telephone Numbers' );
     Add( $2155, 'PatientTelecomInformation', [TTypeVR.vrLT], 'Patient''s Telecom Information' );
     Add( $2160, 'EthnicGroup', [TTypeVR.vrSH], 'Ethnic Group' );
     Add( $2180, 'Occupation', [TTypeVR.vrSH], 'Occupation' );
     Add( $21A0, 'SmokingStatus', [TTypeVR.vrCS], 'Smoking Status' );
     Add( $21B0, 'AdditionalPatientHistory', [TTypeVR.vrLT], 'Additional Patient History' );
     Add( $21C0, 'PregnancyStatus', [TTypeVR.vrUS], 'Pregnancy Status' );
     Add( $21D0, 'LastMenstrualDate', [TTypeVR.vrDA], 'Last Menstrual Date' );
     Add( $21F0, 'PatientReligiousPreference', [TTypeVR.vrLO], 'Patient''s Religious Preference' );
     Add( $2201, 'PatientSpeciesDescription', [TTypeVR.vrLO], 'Patient Species Description' );
     Add( $2202, 'PatientSpeciesCodeSequence', [TTypeVR.vrSQ], 'Patient Species Code Sequence' );
     Add( $2203, 'PatientSexNeutered', [TTypeVR.vrCS], 'Patient''s Sex Neutered' );
     Add( $2210, 'AnatomicalOrientationType', [TTypeVR.vrCS], 'Anatomical Orientation Type' );
     Add( $2292, 'PatientBreedDescription', [TTypeVR.vrLO], 'Patient Breed Description' );
     Add( $2293, 'PatientBreedCodeSequence', [TTypeVR.vrSQ], 'Patient Breed Code Sequence' );
     Add( $2294, 'BreedRegistrationSequence', [TTypeVR.vrSQ], 'Breed Registration Sequence' );
     Add( $2295, 'BreedRegistrationNumber', [TTypeVR.vrLO], 'Breed Registration Number' );
     Add( $2296, 'BreedRegistryCodeSequence', [TTypeVR.vrSQ], 'Breed Registry Code Sequence' );
     Add( $2297, 'ResponsiblePerson', [TTypeVR.vrPN], 'Responsible Person' );
     Add( $2298, 'ResponsiblePersonRole', [TTypeVR.vrCS], 'Responsible Person Role' );
     Add( $2299, 'ResponsibleOrganization', [TTypeVR.vrLO], 'Responsible Organization' );
     Add( $4000, 'PatientComments', [TTypeVR.vrLT], 'Patient Comments' );
     Add( $9431, 'ExaminedBodyThickness', [TTypeVR.vrFL], 'Examined Body Thickness' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
