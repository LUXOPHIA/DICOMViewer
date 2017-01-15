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
     Add( $0001, [TTypeVR.vrLO], 'Implant Assembly Template Name' );
     Add( $0003, [TTypeVR.vrLO], 'Implant Assembly Template Issuer' );
     Add( $0006, [TTypeVR.vrLO], 'Implant Assembly Template Version' );
     Add( $0008, [TTypeVR.vrSQ], 'Replaced Implant Assembly Template Sequence' );
     Add( $000A, [TTypeVR.vrCS], 'Implant Assembly Template Type' );
     Add( $000C, [TTypeVR.vrSQ], 'Original Implant Assembly Template Sequence' );
     Add( $000E, [TTypeVR.vrSQ], 'Derivation Implant Assembly Template Sequence' );
     Add( $0010, [TTypeVR.vrSQ], 'Implant Assembly Template Target Anatomy Sequence' );
     Add( $0020, [TTypeVR.vrSQ], 'Procedure Type Code Sequence' );
     Add( $0030, [TTypeVR.vrLO], 'Surgical Technique' );
     Add( $0032, [TTypeVR.vrSQ], 'Component Types Sequence' );
     Add( $0034, [TTypeVR.vrCS], 'Component Type Code Sequence' );
     Add( $0036, [TTypeVR.vrCS], 'Exclusive Component Type' );
     Add( $0038, [TTypeVR.vrCS], 'Mandatory Component Type' );
     Add( $0040, [TTypeVR.vrSQ], 'Component Sequence' );
     Add( $0055, [TTypeVR.vrUS], 'Component ID' );
     Add( $0060, [TTypeVR.vrSQ], 'Component Assembly Sequence' );
     Add( $0070, [TTypeVR.vrUS], 'Component 1 Referenced ID' );
     Add( $0080, [TTypeVR.vrUS], 'Component 1 Referenced Mating Feature Set ID' );
     Add( $0090, [TTypeVR.vrUS], 'Component 1 Referenced Mating Feature ID' );
     Add( $00A0, [TTypeVR.vrUS], 'Component 2 Referenced ID' );
     Add( $00B0, [TTypeVR.vrUS], 'Component 2 Referenced Mating Feature Set ID' );
     Add( $00C0, [TTypeVR.vrUS], 'Component 2 Referenced Mating Feature ID' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
