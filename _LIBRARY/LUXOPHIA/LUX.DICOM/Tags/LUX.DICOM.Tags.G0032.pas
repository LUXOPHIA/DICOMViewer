unit LUX.DICOM.Tags.G0032;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0032

     TdcmGrup0032 = class( TdcmGrup )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0032

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmGrup0032.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $000A, 'StudyStatusID', [TKindVR.vrCS], 'Study Status ID' );
     Add( $000C, 'StudyPriorityID', [TKindVR.vrCS], 'Study Priority ID' );
     Add( $0012, 'StudyIDIssuer', [TKindVR.vrLO], 'Study ID Issuer' );
     Add( $0032, 'StudyVerifiedDate', [TKindVR.vrDA], 'Study Verified Date' );
     Add( $0033, 'StudyVerifiedTime', [TKindVR.vrTM], 'Study Verified Time' );
     Add( $0034, 'StudyReadDate', [TKindVR.vrDA], 'Study Read Date' );
     Add( $0035, 'StudyReadTime', [TKindVR.vrTM], 'Study Read Time' );
     Add( $1000, 'ScheduledStudyStartDate', [TKindVR.vrDA], 'Scheduled Study Start Date' );
     Add( $1001, 'ScheduledStudyStartTime', [TKindVR.vrTM], 'Scheduled Study Start Time' );
     Add( $1010, 'ScheduledStudyStopDate', [TKindVR.vrDA], 'Scheduled Study Stop Date' );
     Add( $1011, 'ScheduledStudyStopTime', [TKindVR.vrTM], 'Scheduled Study Stop Time' );
     Add( $1020, 'ScheduledStudyLocation', [TKindVR.vrLO], 'Scheduled Study Location' );
     Add( $1021, 'ScheduledStudyLocationAETitle', [TKindVR.vrAE], 'Scheduled Study Location AE Title' );
     Add( $1030, 'ReasonForStudy', [TKindVR.vrLO], 'Reason for Study' );
     Add( $1031, 'RequestingPhysicianIdentificationSequence', [TKindVR.vrSQ], 'Requesting Physician Identification Sequence' );
     Add( $1032, 'RequestingPhysician', [TKindVR.vrPN], 'Requesting Physician' );
     Add( $1033, 'RequestingService', [TKindVR.vrLO], 'Requesting Service' );
     Add( $1034, 'RequestingServiceCodeSequence', [TKindVR.vrSQ], 'Requesting Service Code Sequence' );
     Add( $1040, 'StudyArrivalDate', [TKindVR.vrDA], 'Study Arrival Date' );
     Add( $1041, 'StudyArrivalTime', [TKindVR.vrTM], 'Study Arrival Time' );
     Add( $1050, 'StudyCompletionDate', [TKindVR.vrDA], 'Study Completion Date' );
     Add( $1051, 'StudyCompletionTime', [TKindVR.vrTM], 'Study Completion Time' );
     Add( $1055, 'StudyComponentStatusID', [TKindVR.vrCS], 'Study Component Status ID' );
     Add( $1060, 'RequestedProcedureDescription', [TKindVR.vrLO], 'Requested Procedure Description' );
     Add( $1064, 'RequestedProcedureCodeSequence', [TKindVR.vrSQ], 'Requested Procedure Code Sequence' );
     Add( $1070, 'RequestedContrastAgent', [TKindVR.vrLO], 'Requested Contrast Agent' );
     Add( $4000, 'StudyComments', [TKindVR.vrLT], 'Study Comments' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
