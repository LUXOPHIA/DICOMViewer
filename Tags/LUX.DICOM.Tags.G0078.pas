unit LUX.DICOM.Tags.G0078;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0078

     TdcmGrup0078 = class( TdcmGrup )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0078

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmGrup0078.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0001, 'ImplantTemplateGroupName', [TTypeVR.vrLO], 'Implant Template Group Name' );
     Add( $0010, 'ImplantTemplateGroupDescription', [TTypeVR.vrST], 'Implant Template Group Description' );
     Add( $0020, 'ImplantTemplateGroupIssuer', [TTypeVR.vrLO], 'Implant Template Group Issuer' );
     Add( $0024, 'ImplantTemplateGroupVersion', [TTypeVR.vrLO], 'Implant Template Group Version' );
     Add( $0026, 'ReplacedImplantTemplateGroupSequence', [TTypeVR.vrSQ], 'Replaced Implant Template Group Sequence' );
     Add( $0028, 'ImplantTemplateGroupTargetAnatomySequence', [TTypeVR.vrSQ], 'Implant Template Group Target Anatomy Sequence' );
     Add( $002A, 'ImplantTemplateGroupMembersSequence', [TTypeVR.vrSQ], 'Implant Template Group Members Sequence' );
     Add( $002E, 'ImplantTemplateGroupMemberID', [TTypeVR.vrUS], 'Implant Template Group Member ID' );
     Add( $0050, 'ThreeDImplantTemplateGroupMemberMatchingPoint', [TTypeVR.vrFD], '3D Implant Template Group Member Matching Point' );
     Add( $0060, 'ThreeDImplantTemplateGroupMemberMatchingAxes', [TTypeVR.vrFD], '3D Implant Template Group Member Matching Axes' );
     Add( $0070, 'ImplantTemplateGroupMemberMatching2DCoordinatesSequence', [TTypeVR.vrSQ], 'Implant Template Group Member Matching 2D Coordinates Sequence' );
     Add( $0090, 'TwoDImplantTemplateGroupMemberMatchingPoint', [TTypeVR.vrFD], '2D Implant Template Group Member Matching Point' );
     Add( $00A0, 'TwoDImplantTemplateGroupMemberMatchingAxes', [TTypeVR.vrFD], '2D Implant Template Group Member Matching Axes' );
     Add( $00B0, 'ImplantTemplateGroupVariationDimensionSequence', [TTypeVR.vrSQ], 'Implant Template Group Variation Dimension Sequence' );
     Add( $00B2, 'ImplantTemplateGroupVariationDimensionName', [TTypeVR.vrLO], 'Implant Template Group Variation Dimension Name' );
     Add( $00B4, 'ImplantTemplateGroupVariationDimensionRankSequence', [TTypeVR.vrSQ], 'Implant Template Group Variation Dimension Rank Sequence' );
     Add( $00B6, 'ReferencedImplantTemplateGroupMemberID', [TTypeVR.vrUS], 'Referenced Implant Template Group Member ID' );
     Add( $00B8, 'ImplantTemplateGroupVariationDimensionRank', [TTypeVR.vrUS], 'Implant Template Group Variation Dimension Rank' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
