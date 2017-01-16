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
     Add( $000A, [TTypeVR.vrCS], 'Study Status ID' );
     Add( $000C, [TTypeVR.vrCS], 'Study Priority ID' );
     Add( $0012, [TTypeVR.vrLO], 'Study ID Issuer' );
     Add( $0032, [TTypeVR.vrDA], 'Study Verified Date' );
     Add( $0033, [TTypeVR.vrTM], 'Study Verified Time' );
     Add( $0034, [TTypeVR.vrDA], 'Study Read Date' );
     Add( $0035, [TTypeVR.vrTM], 'Study Read Time' );
     Add( $1000, [TTypeVR.vrDA], 'Scheduled Study Start Date' );
     Add( $1001, [TTypeVR.vrTM], 'Scheduled Study Start Time' );
     Add( $1010, [TTypeVR.vrDA], 'Scheduled Study Stop Date' );
     Add( $1011, [TTypeVR.vrTM], 'Scheduled Study Stop Time' );
     Add( $1020, [TTypeVR.vrLO], 'Scheduled Study Location' );
     Add( $1021, [TTypeVR.vrAE], 'Scheduled Study Location AE Title' );
     Add( $1030, [TTypeVR.vrLO], 'Reason for Study' );
     Add( $1031, [TTypeVR.vrSQ], 'Requesting Physician Identification Sequence' );
     Add( $1032, [TTypeVR.vrPN], 'Requesting Physician' );
     Add( $1033, [TTypeVR.vrLO], 'Requesting Service' );
     Add( $1034, [TTypeVR.vrSQ], 'Requesting Service Code Sequence' );
     Add( $1040, [TTypeVR.vrDA], 'Study Arrival Date' );
     Add( $1041, [TTypeVR.vrTM], 'Study Arrival Time' );
     Add( $1050, [TTypeVR.vrDA], 'Study Completion Date' );
     Add( $1051, [TTypeVR.vrTM], 'Study Completion Time' );
     Add( $1055, [TTypeVR.vrCS], 'Study Component Status ID' );
     Add( $1060, [TTypeVR.vrLO], 'Requested Procedure Description' );
     Add( $1064, [TTypeVR.vrSQ], 'Requested Procedure Code Sequence' );
     Add( $1070, [TTypeVR.vrLO], 'Requested Contrast Agent' );
     Add( $4000, [TTypeVR.vrLT], 'Study Comments' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
