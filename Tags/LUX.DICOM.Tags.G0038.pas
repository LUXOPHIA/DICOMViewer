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
     Add( $0004, 'ReferencedPatientAliasSequence', [TKindVR.vrSQ], 'Referenced Patient Alias Sequence' );
     Add( $0008, 'VisitStatusID', [TKindVR.vrCS], 'Visit Status ID' );
     Add( $0010, 'AdmissionID', [TKindVR.vrLO], 'Admission ID' );
     Add( $0011, 'IssuerOfAdmissionID', [TKindVR.vrLO], 'Issuer of Admission ID' );
     Add( $0014, 'IssuerOfAdmissionIDSequence', [TKindVR.vrSQ], 'Issuer of Admission ID Sequence' );
     Add( $0016, 'RouteOfAdmissions', [TKindVR.vrLO], 'Route of Admissions' );
     Add( $001A, 'ScheduledAdmissionDate', [TKindVR.vrDA], 'Scheduled Admission Date' );
     Add( $001B, 'ScheduledAdmissionTime', [TKindVR.vrTM], 'Scheduled Admission Time' );
     Add( $001C, 'ScheduledDischargeDate', [TKindVR.vrDA], 'Scheduled Discharge Date' );
     Add( $001D, 'ScheduledDischargeTime', [TKindVR.vrTM], 'Scheduled Discharge Time' );
     Add( $001E, 'ScheduledPatientInstitutionResidence', [TKindVR.vrLO], 'Scheduled Patient Institution Residence' );
     Add( $0020, 'AdmittingDate', [TKindVR.vrDA], 'Admitting Date' );
     Add( $0021, 'AdmittingTime', [TKindVR.vrTM], 'Admitting Time' );
     Add( $0030, 'DischargeDate', [TKindVR.vrDA], 'Discharge Date' );
     Add( $0032, 'DischargeTime', [TKindVR.vrTM], 'Discharge Time' );
     Add( $0040, 'DischargeDiagnosisDescription', [TKindVR.vrLO], 'Discharge Diagnosis Description' );
     Add( $0044, 'DischargeDiagnosisCodeSequence', [TKindVR.vrSQ], 'Discharge Diagnosis Code Sequence' );
     Add( $0050, 'SpecialNeeds', [TKindVR.vrLO], 'Special Needs' );
     Add( $0060, 'ServiceEpisodeID', [TKindVR.vrLO], 'Service Episode ID' );
     Add( $0061, 'IssuerOfServiceEpisodeID', [TKindVR.vrLO], 'Issuer of Service Episode ID' );
     Add( $0062, 'ServiceEpisodeDescription', [TKindVR.vrLO], 'Service Episode Description' );
     Add( $0064, 'IssuerOfServiceEpisodeIDSequence', [TKindVR.vrSQ], 'Issuer of Service Episode ID Sequence' );
     Add( $0100, 'PertinentDocumentsSequence', [TKindVR.vrSQ], 'Pertinent Documents Sequence' );
     Add( $0101, 'PertinentResourcesSequence', [TKindVR.vrSQ], 'Pertinent Resources Sequence' );
     Add( $0102, 'ResourceDescription', [TKindVR.vrLO], 'Resource Description' );
     Add( $0300, 'CurrentPatientLocation', [TKindVR.vrLO], 'Current Patient Location' );
     Add( $0400, 'PatientInstitutionResidence', [TKindVR.vrLO], 'Patient''s Institution Residence' );
     Add( $0500, 'PatientState', [TKindVR.vrLO], 'Patient State' );
     Add( $0502, 'PatientClinicalTrialParticipationSequence', [TKindVR.vrSQ], 'Patient Clinical Trial Participation Sequence' );
     Add( $4000, 'VisitComments', [TKindVR.vrLT], 'Visit Comments' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
