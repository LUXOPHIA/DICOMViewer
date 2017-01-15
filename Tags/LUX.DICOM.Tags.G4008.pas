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
     Add( $0040, [TTypeVR.vrSH], 'Results ID' );
     Add( $0042, [TTypeVR.vrLO], 'Results ID Issuer' );
     Add( $0050, [TTypeVR.vrSQ], 'Referenced Interpretation Sequence' );
     Add( $00FF, [TTypeVR.vrCS], 'Report Production Status (Trial)' );
     Add( $0100, [TTypeVR.vrDA], 'Interpretation Recorded Date' );
     Add( $0101, [TTypeVR.vrTM], 'Interpretation Recorded Time' );
     Add( $0102, [TTypeVR.vrPN], 'Interpretation Recorder' );
     Add( $0103, [TTypeVR.vrLO], 'Reference to Recorded Sound' );
     Add( $0108, [TTypeVR.vrDA], 'Interpretation Transcription Date' );
     Add( $0109, [TTypeVR.vrTM], 'Interpretation Transcription Time' );
     Add( $010A, [TTypeVR.vrPN], 'Interpretation Transcriber' );
     Add( $010B, [TTypeVR.vrST], 'Interpretation Text' );
     Add( $010C, [TTypeVR.vrPN], 'Interpretation Author' );
     Add( $0111, [TTypeVR.vrSQ], 'Interpretation Approver Sequence' );
     Add( $0112, [TTypeVR.vrDA], 'Interpretation Approval Date' );
     Add( $0113, [TTypeVR.vrTM], 'Interpretation Approval Time' );
     Add( $0114, [TTypeVR.vrPN], 'Physician Approving Interpretation' );
     Add( $0115, [TTypeVR.vrLT], 'Interpretation Diagnosis Description' );
     Add( $0117, [TTypeVR.vrSQ], 'Interpretation Diagnosis Code Sequence' );
     Add( $0118, [TTypeVR.vrSQ], 'Results Distribution List Sequence' );
     Add( $0119, [TTypeVR.vrPN], 'Distribution Name' );
     Add( $011A, [TTypeVR.vrLO], 'Distribution Address' );
     Add( $0200, [TTypeVR.vrSH], 'Interpretation ID' );
     Add( $0202, [TTypeVR.vrLO], 'Interpretation ID Issuer' );
     Add( $0210, [TTypeVR.vrCS], 'Interpretation Type ID' );
     Add( $0212, [TTypeVR.vrCS], 'Interpretation Status ID' );
     Add( $0300, [TTypeVR.vrST], 'Impressions' );
     Add( $4000, [TTypeVR.vrST], 'Results Comments' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
