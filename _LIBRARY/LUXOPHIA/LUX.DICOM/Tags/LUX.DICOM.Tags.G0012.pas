﻿unit LUX.DICOM.Tags.G0012;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0012

     TdcmGrup0012 = class( TdcmGrup )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0012

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmGrup0012.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0010, 'ClinicalTrialSponsorName', [TTypeVR.vrLO], 'Clinical Trial Sponsor Name' );
     Add( $0020, 'ClinicalTrialProtocolID', [TTypeVR.vrLO], 'Clinical Trial Protocol ID' );
     Add( $0021, 'ClinicalTrialProtocolName', [TTypeVR.vrLO], 'Clinical Trial Protocol Name' );
     Add( $0030, 'ClinicalTrialSiteID', [TTypeVR.vrLO], 'Clinical Trial Site ID' );
     Add( $0031, 'ClinicalTrialSiteName', [TTypeVR.vrLO], 'Clinical Trial Site Name' );
     Add( $0040, 'ClinicalTrialSubjectID', [TTypeVR.vrLO], 'Clinical Trial Subject ID' );
     Add( $0042, 'ClinicalTrialSubjectReadingID', [TTypeVR.vrLO], 'Clinical Trial Subject Reading ID' );
     Add( $0050, 'ClinicalTrialTimePointID', [TTypeVR.vrLO], 'Clinical Trial Time Point ID' );
     Add( $0051, 'ClinicalTrialTimePointDescription', [TTypeVR.vrST], 'Clinical Trial Time Point Description' );
     Add( $0060, 'ClinicalTrialCoordinatingCenterName', [TTypeVR.vrLO], 'Clinical Trial Coordinating Center Name' );
     Add( $0062, 'PatientIdentityRemoved', [TTypeVR.vrCS], 'Patient Identity Removed' );
     Add( $0063, 'DeidentificationMethod', [TTypeVR.vrLO], 'De-identification Method' );
     Add( $0064, 'DeidentificationMethodCodeSequence', [TTypeVR.vrSQ], 'De-identification Method Code Sequence' );
     Add( $0071, 'ClinicalTrialSeriesID', [TTypeVR.vrLO], 'Clinical Trial Series ID' );
     Add( $0072, 'ClinicalTrialSeriesDescription', [TTypeVR.vrLO], 'Clinical Trial Series Description' );
     Add( $0081, 'ClinicalTrialProtocolEthicsCommitteeName', [TTypeVR.vrLO], 'Clinical Trial Protocol Ethics Committee Name' );
     Add( $0082, 'ClinicalTrialProtocolEthicsCommitteeApprovalNumber', [TTypeVR.vrLO], 'Clinical Trial Protocol Ethics Committee Approval Number' );
     Add( $0083, 'ConsentForClinicalTrialUseSequence', [TTypeVR.vrSQ], 'Consent for Clinical Trial Use Sequence' );
     Add( $0084, 'DistributionType', [TTypeVR.vrCS], 'Distribution Type' );
     Add( $0085, 'ConsentForDistributionFlag', [TTypeVR.vrCS], 'Consent for Distribution Flag' );
     Add( $0086, 'EthicsCommitteeApprovalEffectivenessStartDate', [TTypeVR.vrDA], 'Ethics Committee Approval Effectiveness Start Date' );
     Add( $0087, 'EthicsCommitteeApprovalEffectivenessEndDate', [TTypeVR.vrDA], 'Ethics Committee Approval Effectiveness End Date' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
