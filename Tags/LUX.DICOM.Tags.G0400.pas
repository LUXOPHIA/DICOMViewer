unit LUX.DICOM.Tags.G0400;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems0400

     TDICOMElems0400 = class( TDICOMElems )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems0400

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TDICOMElems0400.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0005, TKindVR.vrUS, 'MAC ID Number' );
     Add( $0010, TKindVR.vrUI, 'MAC Calculation Transfer Syntax UID' );
     Add( $0015, TKindVR.vrCS, 'MAC Algorithm' );
     Add( $0020, TKindVR.vrAT, 'Data Elements Signed' );
     Add( $0100, TKindVR.vrUI, 'Digital Signature UID' );
     Add( $0105, TKindVR.vrDT, 'Digital Signature DateTime' );
     Add( $0110, TKindVR.vrCS, 'Certificate Type' );
     Add( $0115, TKindVR.vrOB, 'Certificate of Signer' );
     Add( $0120, TKindVR.vrOB, 'Signature' );
     Add( $0305, TKindVR.vrCS, 'Certified Timestamp Type' );
     Add( $0310, TKindVR.vrOB, 'Certified Timestamp' );
     Add( $0315, TKindVR.vrFL, '' );
     Add( $0401, TKindVR.vrSQ, 'Digital Signature Purpose Code Sequence' );
     Add( $0402, TKindVR.vrSQ, 'Referenced Digital Signature Sequence' );
     Add( $0403, TKindVR.vrSQ, 'Referenced SOP Instance MAC Sequence' );
     Add( $0404, TKindVR.vrOB, 'MAC' );
     Add( $0500, TKindVR.vrSQ, 'Encrypted Attributes Sequence' );
     Add( $0510, TKindVR.vrUI, 'Encrypted Content Transfer Syntax UID' );
     Add( $0520, TKindVR.vrOB, 'Encrypted Content' );
     Add( $0550, TKindVR.vrSQ, 'Modified Attributes Sequence' );
     Add( $0561, TKindVR.vrSQ, 'Original Attributes Sequence' );
     Add( $0562, TKindVR.vrDT, 'Attribute Modification DateTime' );
     Add( $0563, TKindVR.vrLO, 'Modifying System' );
     Add( $0564, TKindVR.vrLO, 'Source of Previous Values' );
     Add( $0565, TKindVR.vrCS, 'Reason for the Attribute Modification' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
