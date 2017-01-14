unit LUX.DICOM.Tags.G0012;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems0012

     TDICOMElems0012 = class( TDICOMElems )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems0012

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TDICOMElems0012.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0010, TKindVR.vrLO, 'Clinical Trial Sponsor Name' );
     Add( $0020, TKindVR.vrLO, 'Clinical Trial Protocol ID' );
     Add( $0021, TKindVR.vrLO, 'Clinical Trial Protocol Name' );
     Add( $0030, TKindVR.vrLO, 'Clinical Trial Site ID' );
     Add( $0031, TKindVR.vrLO, 'Clinical Trial Site Name' );
     Add( $0040, TKindVR.vrLO, 'Clinical Trial Subject ID' );
     Add( $0042, TKindVR.vrLO, 'Clinical Trial Subject Reading ID' );
     Add( $0050, TKindVR.vrLO, 'Clinical Trial Time Point ID' );
     Add( $0051, TKindVR.vrST, 'Clinical Trial Time Point Description' );
     Add( $0060, TKindVR.vrLO, 'Clinical Trial Coordinating Center Name' );
     Add( $0062, TKindVR.vrCS, 'Patient Identity Removed' );
     Add( $0063, TKindVR.vrLO, 'De-identification Method' );
     Add( $0064, TKindVR.vrSQ, 'De-identification Method Code Sequence' );
     Add( $0071, TKindVR.vrLO, 'Clinical Trial Series ID' );
     Add( $0072, TKindVR.vrLO, 'Clinical Trial Series Description' );
     Add( $0081, TKindVR.vrLO, 'Clinical Trial Protocol Ethics Committee Name' );
     Add( $0082, TKindVR.vrLO, 'Clinical Trial Protocol Ethics Committee Approval Number' );
     Add( $0083, TKindVR.vrSQ, 'Consent for Clinical Trial Use Sequence' );
     Add( $0084, TKindVR.vrCS, 'Distribution Type' );
     Add( $0085, TKindVR.vrCS, 'Consent for Distribution Flag' );
     Add( $0086, TKindVR.vrDA, 'Ethics Committee Approval Effectiveness Start Date' );
     Add( $0087, TKindVR.vrDA, 'Ethics Committee Approval Effectiveness End Date' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
