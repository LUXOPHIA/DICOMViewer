unit LUX.DICOM.Tags.G0078;

interface //#################################################################### ■

uses LUX, LUX.DICOM.VRs, LUX.DICOM.Tags;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0078

     TdcmGrup0078 = class( TdcmGrup )
     private
     protected
     public
       class procedure AddBook( const Book_:TdcmBookTag );
       constructor Create( const Book_:TdcmBookTag; const Code_:THex4 );
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

class procedure TdcmGrup0078.AddBook( const Book_:TdcmBookTag );
begin
     Create( Book_, $0078 );
end;

//------------------------------------------------------------------------------

constructor TdcmGrup0078.Create( const Book_:TdcmBookTag; const Code_:THex4 );
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0001, 'ImplantTemplateGroupName', [TKindVR.vrLO], 'Implant Template Group Name' );
     Add( $0010, 'ImplantTemplateGroupDescription', [TKindVR.vrST], 'Implant Template Group Description' );
     Add( $0020, 'ImplantTemplateGroupIssuer', [TKindVR.vrLO], 'Implant Template Group Issuer' );
     Add( $0024, 'ImplantTemplateGroupVersion', [TKindVR.vrLO], 'Implant Template Group Version' );
     Add( $0026, 'ReplacedImplantTemplateGroupSequence', [TKindVR.vrSQ], 'Replaced Implant Template Group Sequence' );
     Add( $0028, 'ImplantTemplateGroupTargetAnatomySequence', [TKindVR.vrSQ], 'Implant Template Group Target Anatomy Sequence' );
     Add( $002A, 'ImplantTemplateGroupMembersSequence', [TKindVR.vrSQ], 'Implant Template Group Members Sequence' );
     Add( $002E, 'ImplantTemplateGroupMemberID', [TKindVR.vrUS], 'Implant Template Group Member ID' );
     Add( $0050, 'ThreeDImplantTemplateGroupMemberMatchingPoint', [TKindVR.vrFD], '3D Implant Template Group Member Matching Point' );
     Add( $0060, 'ThreeDImplantTemplateGroupMemberMatchingAxes', [TKindVR.vrFD], '3D Implant Template Group Member Matching Axes' );
     Add( $0070, 'ImplantTemplateGroupMemberMatching2DCoordinatesSequence', [TKindVR.vrSQ], 'Implant Template Group Member Matching 2D Coordinates Sequence' );
     Add( $0090, 'TwoDImplantTemplateGroupMemberMatchingPoint', [TKindVR.vrFD], '2D Implant Template Group Member Matching Point' );
     Add( $00A0, 'TwoDImplantTemplateGroupMemberMatchingAxes', [TKindVR.vrFD], '2D Implant Template Group Member Matching Axes' );
     Add( $00B0, 'ImplantTemplateGroupVariationDimensionSequence', [TKindVR.vrSQ], 'Implant Template Group Variation Dimension Sequence' );
     Add( $00B2, 'ImplantTemplateGroupVariationDimensionName', [TKindVR.vrLO], 'Implant Template Group Variation Dimension Name' );
     Add( $00B4, 'ImplantTemplateGroupVariationDimensionRankSequence', [TKindVR.vrSQ], 'Implant Template Group Variation Dimension Rank Sequence' );
     Add( $00B6, 'ReferencedImplantTemplateGroupMemberID', [TKindVR.vrUS], 'Referenced Implant Template Group Member ID' );
     Add( $00B8, 'ImplantTemplateGroupVariationDimensionRank', [TKindVR.vrUS], 'Implant Template Group Variation Dimension Rank' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
