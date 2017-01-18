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
     Add( $6210, 'ImplantSize', [TTypeVR.vrLO], 'Implant Size' );
     Add( $6221, 'ImplantTemplateVersion', [TTypeVR.vrLO], 'Implant Template Version' );
     Add( $6222, 'ReplacedImplantTemplateSequence', [TTypeVR.vrSQ], 'Replaced Implant Template Sequence' );
     Add( $6223, 'ImplantType', [TTypeVR.vrCS], 'Implant Type' );
     Add( $6224, 'DerivationImplantTemplateSequence', [TTypeVR.vrSQ], 'Derivation Implant Template Sequence' );
     Add( $6225, 'OriginalImplantTemplateSequence', [TTypeVR.vrSQ], 'Original Implant Template Sequence' );
     Add( $6226, 'EffectiveDateTime', [TTypeVR.vrDT], 'Effective DateTime' );
     Add( $6230, 'ImplantTargetAnatomySequence', [TTypeVR.vrSQ], 'Implant Target Anatomy Sequence' );
     Add( $6260, 'InformationFromManufacturerSequence', [TTypeVR.vrSQ], 'Information From Manufacturer Sequence' );
     Add( $6265, 'NotificationFromManufacturerSequence', [TTypeVR.vrSQ], 'Notification From Manufacturer Sequence' );
     Add( $6270, 'InformationIssueDateTime', [TTypeVR.vrDT], 'Information Issue DateTime' );
     Add( $6280, 'InformationSummary', [TTypeVR.vrST], 'Information Summary' );
     Add( $62A0, 'ImplantRegulatoryDisapprovalCodeSequence', [TTypeVR.vrSQ], 'Implant Regulatory Disapproval Code Sequence' );
     Add( $62A5, 'OverallTemplateSpatialTolerance', [TTypeVR.vrFD], 'Overall Template Spatial Tolerance' );
     Add( $62C0, 'HPGLDocumentSequence', [TTypeVR.vrSQ], 'HPGL Document Sequence' );
     Add( $62D0, 'HPGLDocumentID', [TTypeVR.vrUS], 'HPGL Document ID' );
     Add( $62D5, 'HPGLDocumentLabel', [TTypeVR.vrLO], 'HPGL Document Label' );
     Add( $62E0, 'ViewOrientationCodeSequence', [TTypeVR.vrSQ], 'View Orientation Code Sequence' );
     Add( $62F0, 'ViewOrientationModifier', [TTypeVR.vrFD], 'View Orientation Modifier' );
     Add( $62F2, 'HPGLDocumentScaling', [TTypeVR.vrFD], 'HPGL Document Scaling' );
     Add( $6300, 'HPGLDocument', [TTypeVR.vrOB], 'HPGL Document' );
     Add( $6310, 'HPGLContourPenNumber', [TTypeVR.vrUS], 'HPGL Contour Pen Number' );
     Add( $6320, 'HPGLPenSequence', [TTypeVR.vrSQ], 'HPGL Pen Sequence' );
     Add( $6330, 'HPGLPenNumber', [TTypeVR.vrUS], 'HPGL Pen Number' );
     Add( $6340, 'HPGLPenLabel', [TTypeVR.vrLO], 'HPGL Pen Label' );
     Add( $6345, 'HPGLPenDescription', [TTypeVR.vrST], 'HPGL Pen Description' );
     Add( $6346, 'RecommendedRotationPoint', [TTypeVR.vrFD], 'Recommended Rotation Point' );
     Add( $6347, 'BoundingRectangle', [TTypeVR.vrFD], 'Bounding Rectangle' );
     Add( $6350, 'ImplantTemplate3DModelSurfaceNumber', [TTypeVR.vrUS], 'Implant Template 3D Model Surface Number' );
     Add( $6360, 'SurfaceModelDescriptionSequence', [TTypeVR.vrSQ], 'Surface Model Description Sequence' );
     Add( $6380, 'SurfaceModelLabel', [TTypeVR.vrLO], 'Surface Model Label' );
     Add( $6390, 'SurfaceModelScalingFactor', [TTypeVR.vrFD], 'Surface Model Scaling Factor' );
     Add( $63A0, 'MaterialsCodeSequence', [TTypeVR.vrSQ], 'Materials Code Sequence' );
     Add( $63A4, 'CoatingMaterialsCodeSequence', [TTypeVR.vrSQ], 'Coating Materials Code Sequence' );
     Add( $63A8, 'ImplantTypeCodeSequence', [TTypeVR.vrSQ], 'Implant Type Code Sequence' );
     Add( $63AC, 'FixationMethodCodeSequence', [TTypeVR.vrSQ], 'Fixation Method Code Sequence' );
     Add( $63B0, 'MatingFeatureSetsSequence', [TTypeVR.vrSQ], 'Mating Feature Sets Sequence' );
     Add( $63C0, 'MatingFeatureSetID', [TTypeVR.vrUS], 'Mating Feature Set ID' );
     Add( $63D0, 'MatingFeatureSetLabel', [TTypeVR.vrLO], 'Mating Feature Set Label' );
     Add( $63E0, 'MatingFeatureSequence', [TTypeVR.vrSQ], 'Mating Feature Sequence' );
     Add( $63F0, 'MatingFeatureID', [TTypeVR.vrUS], 'Mating Feature ID' );
     Add( $6400, 'MatingFeatureDegreeOfFreedomSequence', [TTypeVR.vrSQ], 'Mating Feature Degree of Freedom Sequence' );
     Add( $6410, 'DegreeOfFreedomID', [TTypeVR.vrUS], 'Degree of Freedom ID' );
     Add( $6420, 'DegreeOfFreedomType', [TTypeVR.vrCS], 'Degree of Freedom Type' );
     Add( $6430, 'TwoDMatingFeatureCoordinatesSequence', [TTypeVR.vrSQ], '2D Mating Feature Coordinates Sequence' );
     Add( $6440, 'ReferencedHPGLDocumentID', [TTypeVR.vrUS], 'Referenced HPGL Document ID' );
     Add( $6450, 'TwoDMatingPoint', [TTypeVR.vrFD], '2D Mating Point' );
     Add( $6460, 'TwoDMatingAxes', [TTypeVR.vrFD], '2D Mating Axes' );
     Add( $6470, 'TwoDDegreeOfFreedomSequence', [TTypeVR.vrSQ], '2D Degree of Freedom Sequence' );
     Add( $6490, 'ThreeDDegreeOfFreedomAxis', [TTypeVR.vrFD], '3D Degree of Freedom Axis' );
     Add( $64A0, 'RangeOfFreedom', [TTypeVR.vrFD], 'Range of Freedom' );
     Add( $64C0, 'ThreeDMatingPoint', [TTypeVR.vrFD], '3D Mating Point' );
     Add( $64D0, 'ThreeDMatingAxes', [TTypeVR.vrFD], '3D Mating Axes' );
     Add( $64F0, 'TwoDDegreeOfFreedomAxis', [TTypeVR.vrFD], '2D Degree of Freedom Axis' );
     Add( $6500, 'PlanningLandmarkPointSequence', [TTypeVR.vrSQ], 'Planning Landmark Point Sequence' );
     Add( $6510, 'PlanningLandmarkLineSequence', [TTypeVR.vrSQ], 'Planning Landmark Line Sequence' );
     Add( $6520, 'PlanningLandmarkPlaneSequence', [TTypeVR.vrSQ], 'Planning Landmark Plane Sequence' );
     Add( $6530, 'PlanningLandmarkID', [TTypeVR.vrUS], 'Planning Landmark ID' );
     Add( $6540, 'PlanningLandmarkDescription', [TTypeVR.vrLO], 'Planning Landmark Description' );
     Add( $6545, 'PlanningLandmarkIdentificationCodeSequence', [TTypeVR.vrSQ], 'Planning Landmark Identification Code Sequence' );
     Add( $6550, 'TwoDPointCoordinatesSequence', [TTypeVR.vrSQ], '2D Point Coordinates Sequence' );
     Add( $6560, 'TwoDPointCoordinates', [TTypeVR.vrFD], '2D Point Coordinates' );
     Add( $6590, 'ThreeDPointCoordinates', [TTypeVR.vrFD], '3D Point Coordinates' );
     Add( $65A0, 'TwoDLineCoordinatesSequence', [TTypeVR.vrSQ], '2D Line Coordinates Sequence' );
     Add( $65B0, 'TwoDLineCoordinates', [TTypeVR.vrFD], '2D Line Coordinates' );
     Add( $65D0, 'ThreeDLineCoordinates', [TTypeVR.vrFD], '3D Line Coordinates' );
     Add( $65E0, 'TwoDPlaneCoordinatesSequence', [TTypeVR.vrSQ], '2D Plane Coordinates Sequence' );
     Add( $65F0, 'TwoDPlaneIntersection', [TTypeVR.vrFD], '2D Plane Intersection' );
     Add( $6610, 'ThreeDPlaneOrigin', [TTypeVR.vrFD], '3D Plane Origin' );
     Add( $6620, 'ThreeDPlaneNormal', [TTypeVR.vrFD], '3D Plane Normal' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
