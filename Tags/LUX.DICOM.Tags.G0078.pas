unit LUX.DICOM.Tags.G0078;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems0078

     TDICOMElems0078 = class( TDICOMElems )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems0078

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TDICOMElems0078.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0001, [TTypeVR.vrLO], 'Implant Template Group Name' );
     Add( $0010, [TTypeVR.vrST], 'Implant Template Group Description' );
     Add( $0020, [TTypeVR.vrLO], 'Implant Template Group Issuer' );
     Add( $0024, [TTypeVR.vrLO], 'Implant Template Group Version' );
     Add( $0026, [TTypeVR.vrSQ], 'Replaced Implant Template Group Sequence' );
     Add( $0028, [TTypeVR.vrSQ], 'Implant Template Group Target Anatomy Sequence' );
     Add( $002A, [TTypeVR.vrSQ], 'Implant Template Group Members Sequence' );
     Add( $002E, [TTypeVR.vrUS], 'Implant Template Group Member ID' );
     Add( $0050, [TTypeVR.vrFD], '3D Implant Template Group Member Matching Point' );
     Add( $0060, [TTypeVR.vrFD], '3D Implant Template Group Member Matching Axes' );
     Add( $0070, [TTypeVR.vrSQ], 'Implant Template Group Member Matching 2D Coordinates Sequence' );
     Add( $0090, [TTypeVR.vrFD], '2D Implant Template Group Member Matching Point' );
     Add( $00A0, [TTypeVR.vrFD], '2D Implant Template Group Member Matching Axes' );
     Add( $00B0, [TTypeVR.vrSQ], 'Implant Template Group Variation Dimension Sequence' );
     Add( $00B2, [TTypeVR.vrLO], 'Implant Template Group Variation Dimension Name' );
     Add( $00B4, [TTypeVR.vrSQ], 'Implant Template Group Variation Dimension Rank Sequence' );
     Add( $00B6, [TTypeVR.vrUS], 'Referenced Implant Template Group Member ID' );
     Add( $00B8, [TTypeVR.vrUS], 'Implant Template Group Variation Dimension Rank' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
