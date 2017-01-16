unit LUX.DICOM.Tags.G0068;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0068

     TdcmGrup0068 = class( TdcmGrup )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0068

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmGrup0068.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $6210, [TTypeVR.vrLO], 'Implant Size' );
     Add( $6221, [TTypeVR.vrLO], 'Implant Template Version' );
     Add( $6222, [TTypeVR.vrSQ], 'Replaced Implant Template Sequence' );
     Add( $6223, [TTypeVR.vrCS], 'Implant Type' );
     Add( $6224, [TTypeVR.vrSQ], 'Derivation Implant Template Sequence' );
     Add( $6225, [TTypeVR.vrSQ], 'Original Implant Template Sequence' );
     Add( $6226, [TTypeVR.vrDT], 'Effective DateTime' );
     Add( $6230, [TTypeVR.vrSQ], 'Implant Target Anatomy Sequence' );
     Add( $6260, [TTypeVR.vrSQ], 'Information From Manufacturer Sequence' );
     Add( $6265, [TTypeVR.vrSQ], 'Notification From Manufacturer Sequence' );
     Add( $6270, [TTypeVR.vrDT], 'Information Issue DateTime' );
     Add( $6280, [TTypeVR.vrST], 'Information Summary' );
     Add( $62A0, [TTypeVR.vrSQ], 'Implant Regulatory Disapproval Code Sequence' );
     Add( $62A5, [TTypeVR.vrFD], 'Overall Template Spatial Tolerance' );
     Add( $62C0, [TTypeVR.vrSQ], 'HPGL Document Sequence' );
     Add( $62D0, [TTypeVR.vrUS], 'HPGL Document ID' );
     Add( $62D5, [TTypeVR.vrLO], 'HPGL Document Label' );
     Add( $62E0, [TTypeVR.vrSQ], 'View Orientation Code Sequence' );
     Add( $62F0, [TTypeVR.vrFD], 'View Orientation Modifier' );
     Add( $62F2, [TTypeVR.vrFD], 'HPGL Document Scaling' );
     Add( $6300, [TTypeVR.vrOB], 'HPGL Document' );
     Add( $6310, [TTypeVR.vrUS], 'HPGL Contour Pen Number' );
     Add( $6320, [TTypeVR.vrSQ], 'HPGL Pen Sequence' );
     Add( $6330, [TTypeVR.vrUS], 'HPGL Pen Number' );
     Add( $6340, [TTypeVR.vrLO], 'HPGL Pen Label' );
     Add( $6345, [TTypeVR.vrST], 'HPGL Pen Description' );
     Add( $6346, [TTypeVR.vrFD], 'Recommended Rotation Point' );
     Add( $6347, [TTypeVR.vrFD], 'Bounding Rectangle' );
     Add( $6350, [TTypeVR.vrUS], 'Implant Template 3D Model Surface Number' );
     Add( $6360, [TTypeVR.vrSQ], 'Surface Model Description Sequence' );
     Add( $6380, [TTypeVR.vrLO], 'Surface Model Label' );
     Add( $6390, [TTypeVR.vrFD], 'Surface Model Scaling Factor' );
     Add( $63A0, [TTypeVR.vrSQ], 'Materials Code Sequence' );
     Add( $63A4, [TTypeVR.vrSQ], 'Coating Materials Code Sequence' );
     Add( $63A8, [TTypeVR.vrSQ], 'Implant Type Code Sequence' );
     Add( $63AC, [TTypeVR.vrSQ], 'Fixation Method Code Sequence' );
     Add( $63B0, [TTypeVR.vrSQ], 'Mating Feature Sets Sequence' );
     Add( $63C0, [TTypeVR.vrUS], 'Mating Feature Set ID' );
     Add( $63D0, [TTypeVR.vrLO], 'Mating Feature Set Label' );
     Add( $63E0, [TTypeVR.vrSQ], 'Mating Feature Sequence' );
     Add( $63F0, [TTypeVR.vrUS], 'Mating Feature ID' );
     Add( $6400, [TTypeVR.vrSQ], 'Mating Feature Degree of Freedom Sequence' );
     Add( $6410, [TTypeVR.vrUS], 'Degree of Freedom ID' );
     Add( $6420, [TTypeVR.vrCS], 'Degree of Freedom Type' );
     Add( $6430, [TTypeVR.vrSQ], '2D Mating Feature Coordinates Sequence' );
     Add( $6440, [TTypeVR.vrUS], 'Referenced HPGL Document ID' );
     Add( $6450, [TTypeVR.vrFD], '2D Mating Point' );
     Add( $6460, [TTypeVR.vrFD], '2D Mating Axes' );
     Add( $6470, [TTypeVR.vrSQ], '2D Degree of Freedom Sequence' );
     Add( $6490, [TTypeVR.vrFD], '3D Degree of Freedom Axis' );
     Add( $64A0, [TTypeVR.vrFD], 'Range of Freedom' );
     Add( $64C0, [TTypeVR.vrFD], '3D Mating Point' );
     Add( $64D0, [TTypeVR.vrFD], '3D Mating Axes' );
     Add( $64F0, [TTypeVR.vrFD], '2D Degree of Freedom Axis' );
     Add( $6500, [TTypeVR.vrSQ], 'Planning Landmark Point Sequence' );
     Add( $6510, [TTypeVR.vrSQ], 'Planning Landmark Line Sequence' );
     Add( $6520, [TTypeVR.vrSQ], 'Planning Landmark Plane Sequence' );
     Add( $6530, [TTypeVR.vrUS], 'Planning Landmark ID' );
     Add( $6540, [TTypeVR.vrLO], 'Planning Landmark Description' );
     Add( $6545, [TTypeVR.vrSQ], 'Planning Landmark Identification Code Sequence' );
     Add( $6550, [TTypeVR.vrSQ], '2D Point Coordinates Sequence' );
     Add( $6560, [TTypeVR.vrFD], '2D Point Coordinates' );
     Add( $6590, [TTypeVR.vrFD], '3D Point Coordinates' );
     Add( $65A0, [TTypeVR.vrSQ], '2D Line Coordinates Sequence' );
     Add( $65B0, [TTypeVR.vrFD], '2D Line Coordinates' );
     Add( $65D0, [TTypeVR.vrFD], '3D Line Coordinates' );
     Add( $65E0, [TTypeVR.vrSQ], '2D Plane Coordinates Sequence' );
     Add( $65F0, [TTypeVR.vrFD], '2D Plane Intersection' );
     Add( $6610, [TTypeVR.vrFD], '3D Plane Origin' );
     Add( $6620, [TTypeVR.vrFD], '3D Plane Normal' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
