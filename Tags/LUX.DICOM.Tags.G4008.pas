unit LUX.DICOM.Tags.G4008;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems4008

     TDICOMElems4008 = class( TDICOMElems )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems4008

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TDICOMElems4008.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0040, TKindVR.vrSH, 'Results ID' );
     Add( $0042, TKindVR.vrLO, 'Results ID Issuer' );
     Add( $0050, TKindVR.vrSQ, 'Referenced Interpretation Sequence' );
     Add( $00FF, TKindVR.vrCS, 'Report Production Status (Trial)' );
     Add( $0100, TKindVR.vrDA, 'Interpretation Recorded Date' );
     Add( $0101, TKindVR.vrTM, 'Interpretation Recorded Time' );
     Add( $0102, TKindVR.vrPN, 'Interpretation Recorder' );
     Add( $0103, TKindVR.vrLO, 'Reference to Recorded Sound' );
     Add( $0108, TKindVR.vrDA, 'Interpretation Transcription Date' );
     Add( $0109, TKindVR.vrTM, 'Interpretation Transcription Time' );
     Add( $010A, TKindVR.vrPN, 'Interpretation Transcriber' );
     Add( $010B, TKindVR.vrST, 'Interpretation Text' );
     Add( $010C, TKindVR.vrPN, 'Interpretation Author' );
     Add( $0111, TKindVR.vrSQ, 'Interpretation Approver Sequence' );
     Add( $0112, TKindVR.vrDA, 'Interpretation Approval Date' );
     Add( $0113, TKindVR.vrTM, 'Interpretation Approval Time' );
     Add( $0114, TKindVR.vrPN, 'Physician Approving Interpretation' );
     Add( $0115, TKindVR.vrLT, 'Interpretation Diagnosis Description' );
     Add( $0117, TKindVR.vrSQ, 'Interpretation Diagnosis Code Sequence' );
     Add( $0118, TKindVR.vrSQ, 'Results Distribution List Sequence' );
     Add( $0119, TKindVR.vrPN, 'Distribution Name' );
     Add( $011A, TKindVR.vrLO, 'Distribution Address' );
     Add( $0200, TKindVR.vrSH, 'Interpretation ID' );
     Add( $0202, TKindVR.vrLO, 'Interpretation ID Issuer' );
     Add( $0210, TKindVR.vrCS, 'Interpretation Type ID' );
     Add( $0212, TKindVR.vrCS, 'Interpretation Status ID' );
     Add( $0300, TKindVR.vrST, 'Impressions' );
     Add( $4000, TKindVR.vrST, 'Results Comments' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
