unit LUX.DICOM.Tags.G0032;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems0032

     TDICOMElems0032 = class( TDICOMElems )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems0032

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TDICOMElems0032.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $000A, TKindVR.vrCS, 'Study Status ID' );
     Add( $000C, TKindVR.vrCS, 'Study Priority ID' );
     Add( $0012, TKindVR.vrLO, 'Study ID Issuer' );
     Add( $0032, TKindVR.vrDA, 'Study Verified Date' );
     Add( $0033, TKindVR.vrTM, 'Study Verified Time' );
     Add( $0034, TKindVR.vrDA, 'Study Read Date' );
     Add( $0035, TKindVR.vrTM, 'Study Read Time' );
     Add( $1000, TKindVR.vrDA, 'Scheduled Study Start Date' );
     Add( $1001, TKindVR.vrTM, 'Scheduled Study Start Time' );
     Add( $1010, TKindVR.vrDA, 'Scheduled Study Stop Date' );
     Add( $1011, TKindVR.vrTM, 'Scheduled Study Stop Time' );
     Add( $1020, TKindVR.vrLO, 'Scheduled Study Location' );
     Add( $1021, TKindVR.vrAE, 'Scheduled Study Location AE Title' );
     Add( $1030, TKindVR.vrLO, 'Reason for Study' );
     Add( $1031, TKindVR.vrSQ, 'Requesting Physician Identification Sequence' );
     Add( $1032, TKindVR.vrPN, 'Requesting Physician' );
     Add( $1033, TKindVR.vrLO, 'Requesting Service' );
     Add( $1034, TKindVR.vrSQ, 'Requesting Service Code Sequence' );
     Add( $1040, TKindVR.vrDA, 'Study Arrival Date' );
     Add( $1041, TKindVR.vrTM, 'Study Arrival Time' );
     Add( $1050, TKindVR.vrDA, 'Study Completion Date' );
     Add( $1051, TKindVR.vrTM, 'Study Completion Time' );
     Add( $1055, TKindVR.vrCS, 'Study Component Status ID' );
     Add( $1060, TKindVR.vrLO, 'Requested Procedure Description' );
     Add( $1064, TKindVR.vrSQ, 'Requested Procedure Code Sequence' );
     Add( $1070, TKindVR.vrLO, 'Requested Contrast Agent' );
     Add( $4000, TKindVR.vrLT, 'Study Comments' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
