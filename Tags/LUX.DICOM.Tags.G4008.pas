unit LUX.DICOM.Tags.G4008;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup4008

     TdcmGrup4008 = class( TdcmGrup )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup4008

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmGrup4008.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0040, 'ResultsID', [TKindVR.vrSH], 'Results ID' );
     Add( $0042, 'ResultsIDIssuer', [TKindVR.vrLO], 'Results ID Issuer' );
     Add( $0050, 'ReferencedInterpretationSequence', [TKindVR.vrSQ], 'Referenced Interpretation Sequence' );
     Add( $00FF, 'ReportProductionStatusTrial', [TKindVR.vrCS], 'Report Production Status (Trial)' );
     Add( $0100, 'InterpretationRecordedDate', [TKindVR.vrDA], 'Interpretation Recorded Date' );
     Add( $0101, 'InterpretationRecordedTime', [TKindVR.vrTM], 'Interpretation Recorded Time' );
     Add( $0102, 'InterpretationRecorder', [TKindVR.vrPN], 'Interpretation Recorder' );
     Add( $0103, 'ReferenceToRecordedSound', [TKindVR.vrLO], 'Reference to Recorded Sound' );
     Add( $0108, 'InterpretationTranscriptionDate', [TKindVR.vrDA], 'Interpretation Transcription Date' );
     Add( $0109, 'InterpretationTranscriptionTime', [TKindVR.vrTM], 'Interpretation Transcription Time' );
     Add( $010A, 'InterpretationTranscriber', [TKindVR.vrPN], 'Interpretation Transcriber' );
     Add( $010B, 'InterpretationText', [TKindVR.vrST], 'Interpretation Text' );
     Add( $010C, 'InterpretationAuthor', [TKindVR.vrPN], 'Interpretation Author' );
     Add( $0111, 'InterpretationApproverSequence', [TKindVR.vrSQ], 'Interpretation Approver Sequence' );
     Add( $0112, 'InterpretationApprovalDate', [TKindVR.vrDA], 'Interpretation Approval Date' );
     Add( $0113, 'InterpretationApprovalTime', [TKindVR.vrTM], 'Interpretation Approval Time' );
     Add( $0114, 'PhysicianApprovingInterpretation', [TKindVR.vrPN], 'Physician Approving Interpretation' );
     Add( $0115, 'InterpretationDiagnosisDescription', [TKindVR.vrLT], 'Interpretation Diagnosis Description' );
     Add( $0117, 'InterpretationDiagnosisCodeSequence', [TKindVR.vrSQ], 'Interpretation Diagnosis Code Sequence' );
     Add( $0118, 'ResultsDistributionListSequence', [TKindVR.vrSQ], 'Results Distribution List Sequence' );
     Add( $0119, 'DistributionName', [TKindVR.vrPN], 'Distribution Name' );
     Add( $011A, 'DistributionAddress', [TKindVR.vrLO], 'Distribution Address' );
     Add( $0200, 'InterpretationID', [TKindVR.vrSH], 'Interpretation ID' );
     Add( $0202, 'InterpretationIDIssuer', [TKindVR.vrLO], 'Interpretation ID Issuer' );
     Add( $0210, 'InterpretationTypeID', [TKindVR.vrCS], 'Interpretation Type ID' );
     Add( $0212, 'InterpretationStatusID', [TKindVR.vrCS], 'Interpretation Status ID' );
     Add( $0300, 'Impressions', [TKindVR.vrST], 'Impressions' );
     Add( $4000, 'ResultsComments', [TKindVR.vrST], 'Results Comments' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
