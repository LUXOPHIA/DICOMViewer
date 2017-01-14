unit LUX.DICOM.Tags.G0076;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems0076

     TDICOMElems0076 = class( TDICOMElems )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems0076

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TDICOMElems0076.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0001, TKindVR.vrLO, 'Implant Assembly Template Name' );
     Add( $0003, TKindVR.vrLO, 'Implant Assembly Template Issuer' );
     Add( $0006, TKindVR.vrLO, 'Implant Assembly Template Version' );
     Add( $0008, TKindVR.vrSQ, 'Replaced Implant Assembly Template Sequence' );
     Add( $000A, TKindVR.vrCS, 'Implant Assembly Template Type' );
     Add( $000C, TKindVR.vrSQ, 'Original Implant Assembly Template Sequence' );
     Add( $000E, TKindVR.vrSQ, 'Derivation Implant Assembly Template Sequence' );
     Add( $0010, TKindVR.vrSQ, 'Implant Assembly Template Target Anatomy Sequence' );
     Add( $0020, TKindVR.vrSQ, 'Procedure Type Code Sequence' );
     Add( $0030, TKindVR.vrLO, 'Surgical Technique' );
     Add( $0032, TKindVR.vrSQ, 'Component Types Sequence' );
     Add( $0034, TKindVR.vrCS, 'Component Type Code Sequence' );
     Add( $0036, TKindVR.vrCS, 'Exclusive Component Type' );
     Add( $0038, TKindVR.vrCS, 'Mandatory Component Type' );
     Add( $0040, TKindVR.vrSQ, 'Component Sequence' );
     Add( $0055, TKindVR.vrUS, 'Component ID' );
     Add( $0060, TKindVR.vrSQ, 'Component Assembly Sequence' );
     Add( $0070, TKindVR.vrUS, 'Component 1 Referenced ID' );
     Add( $0080, TKindVR.vrUS, 'Component 1 Referenced Mating Feature Set ID' );
     Add( $0090, TKindVR.vrUS, 'Component 1 Referenced Mating Feature ID' );
     Add( $00A0, TKindVR.vrUS, 'Component 2 Referenced ID' );
     Add( $00B0, TKindVR.vrUS, 'Component 2 Referenced Mating Feature Set ID' );
     Add( $00C0, TKindVR.vrUS, 'Component 2 Referenced Mating Feature ID' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
