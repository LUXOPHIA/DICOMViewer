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
     Add( $0040, 'ResultsID', [TTypeVR.vrSH], 'Results ID' );
     Add( $0042, 'ResultsIDIssuer', [TTypeVR.vrLO], 'Results ID Issuer' );
     Add( $0050, 'ReferencedInterpretationSequence', [TTypeVR.vrSQ], 'Referenced Interpretation Sequence' );
     Add( $00FF, 'ReportProductionStatusTrial', [TTypeVR.vrCS], 'Report Production Status (Trial)' );
     Add( $0100, 'InterpretationRecordedDate', [TTypeVR.vrDA], 'Interpretation Recorded Date' );
     Add( $0101, 'InterpretationRecordedTime', [TTypeVR.vrTM], 'Interpretation Recorded Time' );
     Add( $0102, 'InterpretationRecorder', [TTypeVR.vrPN], 'Interpretation Recorder' );
     Add( $0103, 'ReferenceToRecordedSound', [TTypeVR.vrLO], 'Reference to Recorded Sound' );
     Add( $0108, 'InterpretationTranscriptionDate', [TTypeVR.vrDA], 'Interpretation Transcription Date' );
     Add( $0109, 'InterpretationTranscriptionTime', [TTypeVR.vrTM], 'Interpretation Transcription Time' );
     Add( $010A, 'InterpretationTranscriber', [TTypeVR.vrPN], 'Interpretation Transcriber' );
     Add( $010B, 'InterpretationText', [TTypeVR.vrST], 'Interpretation Text' );
     Add( $010C, 'InterpretationAuthor', [TTypeVR.vrPN], 'Interpretation Author' );
     Add( $0111, 'InterpretationApproverSequence', [TTypeVR.vrSQ], 'Interpretation Approver Sequence' );
     Add( $0112, 'InterpretationApprovalDate', [TTypeVR.vrDA], 'Interpretation Approval Date' );
     Add( $0113, 'InterpretationApprovalTime', [TTypeVR.vrTM], 'Interpretation Approval Time' );
     Add( $0114, 'PhysicianApprovingInterpretation', [TTypeVR.vrPN], 'Physician Approving Interpretation' );
     Add( $0115, 'InterpretationDiagnosisDescription', [TTypeVR.vrLT], 'Interpretation Diagnosis Description' );
     Add( $0117, 'InterpretationDiagnosisCodeSequence', [TTypeVR.vrSQ], 'Interpretation Diagnosis Code Sequence' );
     Add( $0118, 'ResultsDistributionListSequence', [TTypeVR.vrSQ], 'Results Distribution List Sequence' );
     Add( $0119, 'DistributionName', [TTypeVR.vrPN], 'Distribution Name' );
     Add( $011A, 'DistributionAddress', [TTypeVR.vrLO], 'Distribution Address' );
     Add( $0200, 'InterpretationID', [TTypeVR.vrSH], 'Interpretation ID' );
     Add( $0202, 'InterpretationIDIssuer', [TTypeVR.vrLO], 'Interpretation ID Issuer' );
     Add( $0210, 'InterpretationTypeID', [TTypeVR.vrCS], 'Interpretation Type ID' );
     Add( $0212, 'InterpretationStatusID', [TTypeVR.vrCS], 'Interpretation Status ID' );
     Add( $0300, 'Impressions', [TTypeVR.vrST], 'Impressions' );
     Add( $4000, 'ResultsComments', [TTypeVR.vrST], 'Results Comments' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
