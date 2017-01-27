unit LUX.DICOM.Tags.G0076;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0076

     TdcmGrup0076 = class( TdcmGrup )
     private
     protected
     public
       constructor Create( const Code_:THex4 );
     end;

//const //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【定数】

//var //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【変数】

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

implementation //############################################################### ■

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0076

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmGrup0076.Create( const Code_:THex4 );
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0001, 'ImplantAssemblyTemplateName', [TKindVR.vrLO], 'Implant Assembly Template Name' );
     Add( $0003, 'ImplantAssemblyTemplateIssuer', [TKindVR.vrLO], 'Implant Assembly Template Issuer' );
     Add( $0006, 'ImplantAssemblyTemplateVersion', [TKindVR.vrLO], 'Implant Assembly Template Version' );
     Add( $0008, 'ReplacedImplantAssemblyTemplateSequence', [TKindVR.vrSQ], 'Replaced Implant Assembly Template Sequence' );
     Add( $000A, 'ImplantAssemblyTemplateType', [TKindVR.vrCS], 'Implant Assembly Template Type' );
     Add( $000C, 'OriginalImplantAssemblyTemplateSequence', [TKindVR.vrSQ], 'Original Implant Assembly Template Sequence' );
     Add( $000E, 'DerivationImplantAssemblyTemplateSequence', [TKindVR.vrSQ], 'Derivation Implant Assembly Template Sequence' );
     Add( $0010, 'ImplantAssemblyTemplateTargetAnatomySequence', [TKindVR.vrSQ], 'Implant Assembly Template Target Anatomy Sequence' );
     Add( $0020, 'ProcedureTypeCodeSequence', [TKindVR.vrSQ], 'Procedure Type Code Sequence' );
     Add( $0030, 'SurgicalTechnique', [TKindVR.vrLO], 'Surgical Technique' );
     Add( $0032, 'ComponentTypesSequence', [TKindVR.vrSQ], 'Component Types Sequence' );
     Add( $0034, 'ComponentTypeCodeSequence', [TKindVR.vrCS], 'Component Type Code Sequence' );
     Add( $0036, 'ExclusiveComponentType', [TKindVR.vrCS], 'Exclusive Component Type' );
     Add( $0038, 'MandatoryComponentType', [TKindVR.vrCS], 'Mandatory Component Type' );
     Add( $0040, 'ComponentSequence', [TKindVR.vrSQ], 'Component Sequence' );
     Add( $0055, 'ComponentID', [TKindVR.vrUS], 'Component ID' );
     Add( $0060, 'ComponentAssemblySequence', [TKindVR.vrSQ], 'Component Assembly Sequence' );
     Add( $0070, 'Component1ReferencedID', [TKindVR.vrUS], 'Component 1 Referenced ID' );
     Add( $0080, 'Component1ReferencedMatingFeatureSetID', [TKindVR.vrUS], 'Component 1 Referenced Mating Feature Set ID' );
     Add( $0090, 'Component1ReferencedMatingFeatureID', [TKindVR.vrUS], 'Component 1 Referenced Mating Feature ID' );
     Add( $00A0, 'Component2ReferencedID', [TKindVR.vrUS], 'Component 2 Referenced ID' );
     Add( $00B0, 'Component2ReferencedMatingFeatureSetID', [TKindVR.vrUS], 'Component 2 Referenced Mating Feature Set ID' );
     Add( $00C0, 'Component2ReferencedMatingFeatureID', [TKindVR.vrUS], 'Component 2 Referenced Mating Feature ID' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
