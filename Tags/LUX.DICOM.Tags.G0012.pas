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
     Add( $0010, [TTypeVR.vrLO], 'Clinical Trial Sponsor Name' );
     Add( $0020, [TTypeVR.vrLO], 'Clinical Trial Protocol ID' );
     Add( $0021, [TTypeVR.vrLO], 'Clinical Trial Protocol Name' );
     Add( $0030, [TTypeVR.vrLO], 'Clinical Trial Site ID' );
     Add( $0031, [TTypeVR.vrLO], 'Clinical Trial Site Name' );
     Add( $0040, [TTypeVR.vrLO], 'Clinical Trial Subject ID' );
     Add( $0042, [TTypeVR.vrLO], 'Clinical Trial Subject Reading ID' );
     Add( $0050, [TTypeVR.vrLO], 'Clinical Trial Time Point ID' );
     Add( $0051, [TTypeVR.vrST], 'Clinical Trial Time Point Description' );
     Add( $0060, [TTypeVR.vrLO], 'Clinical Trial Coordinating Center Name' );
     Add( $0062, [TTypeVR.vrCS], 'Patient Identity Removed' );
     Add( $0063, [TTypeVR.vrLO], 'De-identification Method' );
     Add( $0064, [TTypeVR.vrSQ], 'De-identification Method Code Sequence' );
     Add( $0071, [TTypeVR.vrLO], 'Clinical Trial Series ID' );
     Add( $0072, [TTypeVR.vrLO], 'Clinical Trial Series Description' );
     Add( $0081, [TTypeVR.vrLO], 'Clinical Trial Protocol Ethics Committee Name' );
     Add( $0082, [TTypeVR.vrLO], 'Clinical Trial Protocol Ethics Committee Approval Number' );
     Add( $0083, [TTypeVR.vrSQ], 'Consent for Clinical Trial Use Sequence' );
     Add( $0084, [TTypeVR.vrCS], 'Distribution Type' );
     Add( $0085, [TTypeVR.vrCS], 'Consent for Distribution Flag' );
     Add( $0086, [TTypeVR.vrDA], 'Ethics Committee Approval Effectiveness Start Date' );
     Add( $0087, [TTypeVR.vrDA], 'Ethics Committee Approval Effectiveness End Date' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
