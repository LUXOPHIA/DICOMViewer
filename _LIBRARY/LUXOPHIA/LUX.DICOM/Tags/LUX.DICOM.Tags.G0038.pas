unit LUX.DICOM.Tags.G0038;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0038

     TdcmGrup0038 = class( TdcmGrup )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0038

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmGrup0038.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0004, 'ReferencedPatientAliasSequence', [TTypeVR.vrSQ], 'Referenced Patient Alias Sequence' );
     Add( $0008, 'VisitStatusID', [TTypeVR.vrCS], 'Visit Status ID' );
     Add( $0010, 'AdmissionID', [TTypeVR.vrLO], 'Admission ID' );
     Add( $0011, 'IssuerOfAdmissionID', [TTypeVR.vrLO], 'Issuer of Admission ID' );
     Add( $0014, 'IssuerOfAdmissionIDSequence', [TTypeVR.vrSQ], 'Issuer of Admission ID Sequence' );
     Add( $0016, 'RouteOfAdmissions', [TTypeVR.vrLO], 'Route of Admissions' );
     Add( $001A, 'ScheduledAdmissionDate', [TTypeVR.vrDA], 'Scheduled Admission Date' );
     Add( $001B, 'ScheduledAdmissionTime', [TTypeVR.vrTM], 'Scheduled Admission Time' );
     Add( $001C, 'ScheduledDischargeDate', [TTypeVR.vrDA], 'Scheduled Discharge Date' );
     Add( $001D, 'ScheduledDischargeTime', [TTypeVR.vrTM], 'Scheduled Discharge Time' );
     Add( $001E, 'ScheduledPatientInstitutionResidence', [TTypeVR.vrLO], 'Scheduled Patient Institution Residence' );
     Add( $0020, 'AdmittingDate', [TTypeVR.vrDA], 'Admitting Date' );
     Add( $0021, 'AdmittingTime', [TTypeVR.vrTM], 'Admitting Time' );
     Add( $0030, 'DischargeDate', [TTypeVR.vrDA], 'Discharge Date' );
     Add( $0032, 'DischargeTime', [TTypeVR.vrTM], 'Discharge Time' );
     Add( $0040, 'DischargeDiagnosisDescription', [TTypeVR.vrLO], 'Discharge Diagnosis Description' );
     Add( $0044, 'DischargeDiagnosisCodeSequence', [TTypeVR.vrSQ], 'Discharge Diagnosis Code Sequence' );
     Add( $0050, 'SpecialNeeds', [TTypeVR.vrLO], 'Special Needs' );
     Add( $0060, 'ServiceEpisodeID', [TTypeVR.vrLO], 'Service Episode ID' );
     Add( $0061, 'IssuerOfServiceEpisodeID', [TTypeVR.vrLO], 'Issuer of Service Episode ID' );
     Add( $0062, 'ServiceEpisodeDescription', [TTypeVR.vrLO], 'Service Episode Description' );
     Add( $0064, 'IssuerOfServiceEpisodeIDSequence', [TTypeVR.vrSQ], 'Issuer of Service Episode ID Sequence' );
     Add( $0100, 'PertinentDocumentsSequence', [TTypeVR.vrSQ], 'Pertinent Documents Sequence' );
     Add( $0101, 'PertinentResourcesSequence', [TTypeVR.vrSQ], 'Pertinent Resources Sequence' );
     Add( $0102, 'ResourceDescription', [TTypeVR.vrLO], 'Resource Description' );
     Add( $0300, 'CurrentPatientLocation', [TTypeVR.vrLO], 'Current Patient Location' );
     Add( $0400, 'PatientInstitutionResidence', [TTypeVR.vrLO], 'Patient''s Institution Residence' );
     Add( $0500, 'PatientState', [TTypeVR.vrLO], 'Patient State' );
     Add( $0502, 'PatientClinicalTrialParticipationSequence', [TTypeVR.vrSQ], 'Patient Clinical Trial Participation Sequence' );
     Add( $4000, 'VisitComments', [TTypeVR.vrLT], 'Visit Comments' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
