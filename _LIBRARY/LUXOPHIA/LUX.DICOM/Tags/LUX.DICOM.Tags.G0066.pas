unit LUX.DICOM.Tags.G0066;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0066

     TdcmGrup0066 = class( TdcmGrup )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0066

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmGrup0066.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0001, 'NumberOfSurfaces', [TKindVR.vrUL], 'Number of Surfaces' );
     Add( $0002, 'SurfaceSequence', [TKindVR.vrSQ], 'Surface Sequence' );
     Add( $0003, 'SurfaceNumber', [TKindVR.vrUL], 'Surface Number' );
     Add( $0004, 'SurfaceComments', [TKindVR.vrLT], 'Surface Comments' );
     Add( $0009, 'SurfaceProcessing', [TKindVR.vrCS], 'Surface Processing' );
     Add( $000A, 'SurfaceProcessingRatio', [TKindVR.vrFL], 'Surface Processing Ratio' );
     Add( $000B, 'SurfaceProcessingDescription', [TKindVR.vrLO], 'Surface Processing Description' );
     Add( $000C, 'RecommendedPresentationOpacity', [TKindVR.vrFL], 'Recommended Presentation Opacity' );
     Add( $000D, 'RecommendedPresentationType', [TKindVR.vrCS], 'Recommended Presentation Type' );
     Add( $000E, 'FiniteVolume', [TKindVR.vrCS], 'Finite Volume' );
     Add( $0010, 'Manifold', [TKindVR.vrCS], 'Manifold' );
     Add( $0011, 'SurfacePointsSequence', [TKindVR.vrSQ], 'Surface Points Sequence' );
     Add( $0012, 'SurfacePointsNormalsSequence', [TKindVR.vrSQ], 'Surface Points Normals Sequence' );
     Add( $0013, 'SurfaceMeshPrimitivesSequence', [TKindVR.vrSQ], 'Surface Mesh Primitives Sequence' );
     Add( $0015, 'NumberOfSurfacePoints', [TKindVR.vrUL], 'Number of Surface Points' );
     Add( $0016, 'PointCoordinatesData', [TKindVR.vrOF], 'Point Coordinates Data' );
     Add( $0017, 'PointPositionAccuracy', [TKindVR.vrFL], 'Point Position Accuracy' );
     Add( $0018, 'MeanPointDistance', [TKindVR.vrFL], 'Mean Point Distance' );
     Add( $0019, 'MaximumPointDistance', [TKindVR.vrFL], 'Maximum Point Distance' );
     Add( $001A, 'PointsBoundingBoxCoordinates', [TKindVR.vrFL], 'Points Bounding Box Coordinates' );
     Add( $001B, 'AxisOfRotation', [TKindVR.vrFL], 'Axis of Rotation' );
     Add( $001C, 'CenterOfRotation', [TKindVR.vrFL], 'Center of Rotation' );
     Add( $001E, 'NumberOfVectors', [TKindVR.vrUL], 'Number of Vectors' );
     Add( $001F, 'VectorDimensionality', [TKindVR.vrUS], 'Vector Dimensionality' );
     Add( $0020, 'VectorAccuracy', [TKindVR.vrFL], 'Vector Accuracy' );
     Add( $0021, 'VectorCoordinateData', [TKindVR.vrOF], 'Vector Coordinate Data' );
     Add( $0023, 'TrianglePointIndexList', [TKindVR.vrOW], 'Triangle Point Index List' );
     Add( $0024, 'EdgePointIndexList', [TKindVR.vrOW], 'Edge Point Index List' );
     Add( $0025, 'VertexPointIndexList', [TKindVR.vrOW], 'Vertex Point Index List' );
     Add( $0026, 'TriangleStripSequence', [TKindVR.vrSQ], 'Triangle Strip Sequence' );
     Add( $0027, 'TriangleFanSequence', [TKindVR.vrSQ], 'Triangle Fan Sequence' );
     Add( $0028, 'LineSequence', [TKindVR.vrSQ], 'Line Sequence' );
     Add( $0029, 'PrimitivePointIndexList', [TKindVR.vrOW], 'Primitive Point Index List' );
     Add( $002A, 'SurfaceCount', [TKindVR.vrUL], 'Surface Count' );
     Add( $002B, 'ReferencedSurfaceSequence', [TKindVR.vrSQ], 'Referenced Surface Sequence' );
     Add( $002C, 'ReferencedSurfaceNumber', [TKindVR.vrUL], 'Referenced Surface Number' );
     Add( $002D, 'SegmentSurfaceGenerationAlgorithmIdentificationSequence', [TKindVR.vrSQ], 'Segment Surface Generation Algorithm Identification Sequence' );
     Add( $002E, 'SegmentSurfaceSourceInstanceSequence', [TKindVR.vrSQ], 'Segment Surface Source Instance Sequence' );
     Add( $002F, 'AlgorithmFamilyCodeSequence', [TKindVR.vrSQ], 'Algorithm Family Code Sequence' );
     Add( $0030, 'AlgorithmNameCodeSequence', [TKindVR.vrSQ], 'Algorithm Name Code Sequence' );
     Add( $0031, 'AlgorithmVersion', [TKindVR.vrLO], 'Algorithm Version' );
     Add( $0032, 'AlgorithmParameters', [TKindVR.vrLT], 'Algorithm Parameters' );
     Add( $0034, 'FacetSequence', [TKindVR.vrSQ], 'Facet Sequence' );
     Add( $0035, 'SurfaceProcessingAlgorithmIdentificationSequence', [TKindVR.vrSQ], 'Surface Processing Algorithm Identification Sequence' );
     Add( $0036, 'AlgorithmName', [TKindVR.vrLO], 'Algorithm Name' );
     Add( $0037, 'RecommendedPointRadius', [TKindVR.vrFL], 'Recommended Point Radius' );
     Add( $0038, 'RecommendedLineThickness', [TKindVR.vrFL], 'Recommended Line Thickness' );
     Add( $0040, 'LongPrimitivePointIndexList', [TKindVR.vrOL], 'Long Primitive Point Index List' );
     Add( $0041, 'LongTrianglePointIndexList', [TKindVR.vrOL], 'Long Triangle Point Index List' );
     Add( $0042, 'LongEdgePointIndexList', [TKindVR.vrOL], 'Long Edge Point Index List' );
     Add( $0043, 'LongVertexPointIndexList', [TKindVR.vrOL], 'Long Vertex Point Index List' );
     Add( $0101, 'TrackSetSequence', [TKindVR.vrSQ], 'Track Set Sequence' );
     Add( $0102, 'TrackSequence', [TKindVR.vrSQ], 'Track Sequence' );
     Add( $0103, 'RecommendedDisplayCIELabValueList', [TKindVR.vrOW], 'Recommended Display CIELab Value List' );
     Add( $0104, 'TrackingAlgorithmIdentificationSequence', [TKindVR.vrSQ], 'Tracking Algorithm Identification Sequence' );
     Add( $0105, 'TrackSetNumber', [TKindVR.vrUL], 'Track Set Number' );
     Add( $0106, 'TrackSetLabel', [TKindVR.vrLO], 'Track Set Label' );
     Add( $0107, 'TrackSetDescription', [TKindVR.vrUT], 'Track Set Description' );
     Add( $0108, 'TrackSetAnatomicalTypeCodeSequence', [TKindVR.vrSQ], 'Track Set Anatomical Type Code Sequence' );
     Add( $0121, 'MeasurementsSequence', [TKindVR.vrSQ], 'Measurements Sequence' );
     Add( $0124, 'TrackSetStatisticsSequence', [TKindVR.vrSQ], 'Track Set Statistics Sequence' );
     Add( $0125, 'FloatingPointValues', [TKindVR.vrOF], 'Floating Point Values' );
     Add( $0129, 'TrackPointIndexList', [TKindVR.vrOL], 'Track Point Index List' );
     Add( $0130, 'TrackStatisticsSequence', [TKindVR.vrSQ], 'Track Statistics Sequence' );
     Add( $0132, 'MeasurementValuesSequence', [TKindVR.vrSQ], 'Measurement Values Sequence' );
     Add( $0133, 'DiffusionAcquisitionCodeSequence', [TKindVR.vrSQ], 'Diffusion Acquisition Code Sequence' );
     Add( $0134, 'DiffusionModelCodeSequence', [TKindVR.vrSQ], 'Diffusion Model Code Sequence' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
