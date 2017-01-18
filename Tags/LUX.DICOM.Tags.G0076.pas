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
       constructor Create;
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

constructor TdcmGrup0076.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0001, 'ImplantAssemblyTemplateName', [TTypeVR.vrLO], 'Implant Assembly Template Name' );
     Add( $0003, 'ImplantAssemblyTemplateIssuer', [TTypeVR.vrLO], 'Implant Assembly Template Issuer' );
     Add( $0006, 'ImplantAssemblyTemplateVersion', [TTypeVR.vrLO], 'Implant Assembly Template Version' );
     Add( $0008, 'ReplacedImplantAssemblyTemplateSequence', [TTypeVR.vrSQ], 'Replaced Implant Assembly Template Sequence' );
     Add( $000A, 'ImplantAssemblyTemplateType', [TTypeVR.vrCS], 'Implant Assembly Template Type' );
     Add( $000C, 'OriginalImplantAssemblyTemplateSequence', [TTypeVR.vrSQ], 'Original Implant Assembly Template Sequence' );
     Add( $000E, 'DerivationImplantAssemblyTemplateSequence', [TTypeVR.vrSQ], 'Derivation Implant Assembly Template Sequence' );
     Add( $0010, 'ImplantAssemblyTemplateTargetAnatomySequence', [TTypeVR.vrSQ], 'Implant Assembly Template Target Anatomy Sequence' );
     Add( $0020, 'ProcedureTypeCodeSequence', [TTypeVR.vrSQ], 'Procedure Type Code Sequence' );
     Add( $0030, 'SurgicalTechnique', [TTypeVR.vrLO], 'Surgical Technique' );
     Add( $0032, 'ComponentTypesSequence', [TTypeVR.vrSQ], 'Component Types Sequence' );
     Add( $0034, 'ComponentTypeCodeSequence', [TTypeVR.vrCS], 'Component Type Code Sequence' );
     Add( $0036, 'ExclusiveComponentType', [TTypeVR.vrCS], 'Exclusive Component Type' );
     Add( $0038, 'MandatoryComponentType', [TTypeVR.vrCS], 'Mandatory Component Type' );
     Add( $0040, 'ComponentSequence', [TTypeVR.vrSQ], 'Component Sequence' );
     Add( $0055, 'ComponentID', [TTypeVR.vrUS], 'Component ID' );
     Add( $0060, 'ComponentAssemblySequence', [TTypeVR.vrSQ], 'Component Assembly Sequence' );
     Add( $0070, 'Component1ReferencedID', [TTypeVR.vrUS], 'Component 1 Referenced ID' );
     Add( $0080, 'Component1ReferencedMatingFeatureSetID', [TTypeVR.vrUS], 'Component 1 Referenced Mating Feature Set ID' );
     Add( $0090, 'Component1ReferencedMatingFeatureID', [TTypeVR.vrUS], 'Component 1 Referenced Mating Feature ID' );
     Add( $00A0, 'Component2ReferencedID', [TTypeVR.vrUS], 'Component 2 Referenced ID' );
     Add( $00B0, 'Component2ReferencedMatingFeatureSetID', [TTypeVR.vrUS], 'Component 2 Referenced Mating Feature Set ID' );
     Add( $00C0, 'Component2ReferencedMatingFeatureID', [TTypeVR.vrUS], 'Component 2 Referenced Mating Feature ID' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
