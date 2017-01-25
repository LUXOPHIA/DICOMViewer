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
     Add( $6210, 'ImplantSize', [TKindVR.vrLO], 'Implant Size' );
     Add( $6221, 'ImplantTemplateVersion', [TKindVR.vrLO], 'Implant Template Version' );
     Add( $6222, 'ReplacedImplantTemplateSequence', [TKindVR.vrSQ], 'Replaced Implant Template Sequence' );
     Add( $6223, 'ImplantType', [TKindVR.vrCS], 'Implant Type' );
     Add( $6224, 'DerivationImplantTemplateSequence', [TKindVR.vrSQ], 'Derivation Implant Template Sequence' );
     Add( $6225, 'OriginalImplantTemplateSequence', [TKindVR.vrSQ], 'Original Implant Template Sequence' );
     Add( $6226, 'EffectiveDateTime', [TKindVR.vrDT], 'Effective DateTime' );
     Add( $6230, 'ImplantTargetAnatomySequence', [TKindVR.vrSQ], 'Implant Target Anatomy Sequence' );
     Add( $6260, 'InformationFromManufacturerSequence', [TKindVR.vrSQ], 'Information From Manufacturer Sequence' );
     Add( $6265, 'NotificationFromManufacturerSequence', [TKindVR.vrSQ], 'Notification From Manufacturer Sequence' );
     Add( $6270, 'InformationIssueDateTime', [TKindVR.vrDT], 'Information Issue DateTime' );
     Add( $6280, 'InformationSummary', [TKindVR.vrST], 'Information Summary' );
     Add( $62A0, 'ImplantRegulatoryDisapprovalCodeSequence', [TKindVR.vrSQ], 'Implant Regulatory Disapproval Code Sequence' );
     Add( $62A5, 'OverallTemplateSpatialTolerance', [TKindVR.vrFD], 'Overall Template Spatial Tolerance' );
     Add( $62C0, 'HPGLDocumentSequence', [TKindVR.vrSQ], 'HPGL Document Sequence' );
     Add( $62D0, 'HPGLDocumentID', [TKindVR.vrUS], 'HPGL Document ID' );
     Add( $62D5, 'HPGLDocumentLabel', [TKindVR.vrLO], 'HPGL Document Label' );
     Add( $62E0, 'ViewOrientationCodeSequence', [TKindVR.vrSQ], 'View Orientation Code Sequence' );
     Add( $62F0, 'ViewOrientationModifier', [TKindVR.vrFD], 'View Orientation Modifier' );
     Add( $62F2, 'HPGLDocumentScaling', [TKindVR.vrFD], 'HPGL Document Scaling' );
     Add( $6300, 'HPGLDocument', [TKindVR.vrOB], 'HPGL Document' );
     Add( $6310, 'HPGLContourPenNumber', [TKindVR.vrUS], 'HPGL Contour Pen Number' );
     Add( $6320, 'HPGLPenSequence', [TKindVR.vrSQ], 'HPGL Pen Sequence' );
     Add( $6330, 'HPGLPenNumber', [TKindVR.vrUS], 'HPGL Pen Number' );
     Add( $6340, 'HPGLPenLabel', [TKindVR.vrLO], 'HPGL Pen Label' );
     Add( $6345, 'HPGLPenDescription', [TKindVR.vrST], 'HPGL Pen Description' );
     Add( $6346, 'RecommendedRotationPoint', [TKindVR.vrFD], 'Recommended Rotation Point' );
     Add( $6347, 'BoundingRectangle', [TKindVR.vrFD], 'Bounding Rectangle' );
     Add( $6350, 'ImplantTemplate3DModelSurfaceNumber', [TKindVR.vrUS], 'Implant Template 3D Model Surface Number' );
     Add( $6360, 'SurfaceModelDescriptionSequence', [TKindVR.vrSQ], 'Surface Model Description Sequence' );
     Add( $6380, 'SurfaceModelLabel', [TKindVR.vrLO], 'Surface Model Label' );
     Add( $6390, 'SurfaceModelScalingFactor', [TKindVR.vrFD], 'Surface Model Scaling Factor' );
     Add( $63A0, 'MaterialsCodeSequence', [TKindVR.vrSQ], 'Materials Code Sequence' );
     Add( $63A4, 'CoatingMaterialsCodeSequence', [TKindVR.vrSQ], 'Coating Materials Code Sequence' );
     Add( $63A8, 'ImplantTypeCodeSequence', [TKindVR.vrSQ], 'Implant Type Code Sequence' );
     Add( $63AC, 'FixationMethodCodeSequence', [TKindVR.vrSQ], 'Fixation Method Code Sequence' );
     Add( $63B0, 'MatingFeatureSetsSequence', [TKindVR.vrSQ], 'Mating Feature Sets Sequence' );
     Add( $63C0, 'MatingFeatureSetID', [TKindVR.vrUS], 'Mating Feature Set ID' );
     Add( $63D0, 'MatingFeatureSetLabel', [TKindVR.vrLO], 'Mating Feature Set Label' );
     Add( $63E0, 'MatingFeatureSequence', [TKindVR.vrSQ], 'Mating Feature Sequence' );
     Add( $63F0, 'MatingFeatureID', [TKindVR.vrUS], 'Mating Feature ID' );
     Add( $6400, 'MatingFeatureDegreeOfFreedomSequence', [TKindVR.vrSQ], 'Mating Feature Degree of Freedom Sequence' );
     Add( $6410, 'DegreeOfFreedomID', [TKindVR.vrUS], 'Degree of Freedom ID' );
     Add( $6420, 'DegreeOfFreedomType', [TKindVR.vrCS], 'Degree of Freedom Type' );
     Add( $6430, 'TwoDMatingFeatureCoordinatesSequence', [TKindVR.vrSQ], '2D Mating Feature Coordinates Sequence' );
     Add( $6440, 'ReferencedHPGLDocumentID', [TKindVR.vrUS], 'Referenced HPGL Document ID' );
     Add( $6450, 'TwoDMatingPoint', [TKindVR.vrFD], '2D Mating Point' );
     Add( $6460, 'TwoDMatingAxes', [TKindVR.vrFD], '2D Mating Axes' );
     Add( $6470, 'TwoDDegreeOfFreedomSequence', [TKindVR.vrSQ], '2D Degree of Freedom Sequence' );
     Add( $6490, 'ThreeDDegreeOfFreedomAxis', [TKindVR.vrFD], '3D Degree of Freedom Axis' );
     Add( $64A0, 'RangeOfFreedom', [TKindVR.vrFD], 'Range of Freedom' );
     Add( $64C0, 'ThreeDMatingPoint', [TKindVR.vrFD], '3D Mating Point' );
     Add( $64D0, 'ThreeDMatingAxes', [TKindVR.vrFD], '3D Mating Axes' );
     Add( $64F0, 'TwoDDegreeOfFreedomAxis', [TKindVR.vrFD], '2D Degree of Freedom Axis' );
     Add( $6500, 'PlanningLandmarkPointSequence', [TKindVR.vrSQ], 'Planning Landmark Point Sequence' );
     Add( $6510, 'PlanningLandmarkLineSequence', [TKindVR.vrSQ], 'Planning Landmark Line Sequence' );
     Add( $6520, 'PlanningLandmarkPlaneSequence', [TKindVR.vrSQ], 'Planning Landmark Plane Sequence' );
     Add( $6530, 'PlanningLandmarkID', [TKindVR.vrUS], 'Planning Landmark ID' );
     Add( $6540, 'PlanningLandmarkDescription', [TKindVR.vrLO], 'Planning Landmark Description' );
     Add( $6545, 'PlanningLandmarkIdentificationCodeSequence', [TKindVR.vrSQ], 'Planning Landmark Identification Code Sequence' );
     Add( $6550, 'TwoDPointCoordinatesSequence', [TKindVR.vrSQ], '2D Point Coordinates Sequence' );
     Add( $6560, 'TwoDPointCoordinates', [TKindVR.vrFD], '2D Point Coordinates' );
     Add( $6590, 'ThreeDPointCoordinates', [TKindVR.vrFD], '3D Point Coordinates' );
     Add( $65A0, 'TwoDLineCoordinatesSequence', [TKindVR.vrSQ], '2D Line Coordinates Sequence' );
     Add( $65B0, 'TwoDLineCoordinates', [TKindVR.vrFD], '2D Line Coordinates' );
     Add( $65D0, 'ThreeDLineCoordinates', [TKindVR.vrFD], '3D Line Coordinates' );
     Add( $65E0, 'TwoDPlaneCoordinatesSequence', [TKindVR.vrSQ], '2D Plane Coordinates Sequence' );
     Add( $65F0, 'TwoDPlaneIntersection', [TKindVR.vrFD], '2D Plane Intersection' );
     Add( $6610, 'ThreeDPlaneOrigin', [TKindVR.vrFD], '3D Plane Origin' );
     Add( $6620, 'ThreeDPlaneNormal', [TKindVR.vrFD], '3D Plane Normal' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
