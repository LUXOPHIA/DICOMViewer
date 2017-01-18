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
     Add( $0001, 'NumberOfSurfaces', [TTypeVR.vrUL], 'Number of Surfaces' );
     Add( $0002, 'SurfaceSequence', [TTypeVR.vrSQ], 'Surface Sequence' );
     Add( $0003, 'SurfaceNumber', [TTypeVR.vrUL], 'Surface Number' );
     Add( $0004, 'SurfaceComments', [TTypeVR.vrLT], 'Surface Comments' );
     Add( $0009, 'SurfaceProcessing', [TTypeVR.vrCS], 'Surface Processing' );
     Add( $000A, 'SurfaceProcessingRatio', [TTypeVR.vrFL], 'Surface Processing Ratio' );
     Add( $000B, 'SurfaceProcessingDescription', [TTypeVR.vrLO], 'Surface Processing Description' );
     Add( $000C, 'RecommendedPresentationOpacity', [TTypeVR.vrFL], 'Recommended Presentation Opacity' );
     Add( $000D, 'RecommendedPresentationType', [TTypeVR.vrCS], 'Recommended Presentation Type' );
     Add( $000E, 'FiniteVolume', [TTypeVR.vrCS], 'Finite Volume' );
     Add( $0010, 'Manifold', [TTypeVR.vrCS], 'Manifold' );
     Add( $0011, 'SurfacePointsSequence', [TTypeVR.vrSQ], 'Surface Points Sequence' );
     Add( $0012, 'SurfacePointsNormalsSequence', [TTypeVR.vrSQ], 'Surface Points Normals Sequence' );
     Add( $0013, 'SurfaceMeshPrimitivesSequence', [TTypeVR.vrSQ], 'Surface Mesh Primitives Sequence' );
     Add( $0015, 'NumberOfSurfacePoints', [TTypeVR.vrUL], 'Number of Surface Points' );
     Add( $0016, 'PointCoordinatesData', [TTypeVR.vrOF], 'Point Coordinates Data' );
     Add( $0017, 'PointPositionAccuracy', [TTypeVR.vrFL], 'Point Position Accuracy' );
     Add( $0018, 'MeanPointDistance', [TTypeVR.vrFL], 'Mean Point Distance' );
     Add( $0019, 'MaximumPointDistance', [TTypeVR.vrFL], 'Maximum Point Distance' );
     Add( $001A, 'PointsBoundingBoxCoordinates', [TTypeVR.vrFL], 'Points Bounding Box Coordinates' );
     Add( $001B, 'AxisOfRotation', [TTypeVR.vrFL], 'Axis of Rotation' );
     Add( $001C, 'CenterOfRotation', [TTypeVR.vrFL], 'Center of Rotation' );
     Add( $001E, 'NumberOfVectors', [TTypeVR.vrUL], 'Number of Vectors' );
     Add( $001F, 'VectorDimensionality', [TTypeVR.vrUS], 'Vector Dimensionality' );
     Add( $0020, 'VectorAccuracy', [TTypeVR.vrFL], 'Vector Accuracy' );
     Add( $0021, 'VectorCoordinateData', [TTypeVR.vrOF], 'Vector Coordinate Data' );
     Add( $0023, 'TrianglePointIndexList', [TTypeVR.vrOW], 'Triangle Point Index List' );
     Add( $0024, 'EdgePointIndexList', [TTypeVR.vrOW], 'Edge Point Index List' );
     Add( $0025, 'VertexPointIndexList', [TTypeVR.vrOW], 'Vertex Point Index List' );
     Add( $0026, 'TriangleStripSequence', [TTypeVR.vrSQ], 'Triangle Strip Sequence' );
     Add( $0027, 'TriangleFanSequence', [TTypeVR.vrSQ], 'Triangle Fan Sequence' );
     Add( $0028, 'LineSequence', [TTypeVR.vrSQ], 'Line Sequence' );
     Add( $0029, 'PrimitivePointIndexList', [TTypeVR.vrOW], 'Primitive Point Index List' );
     Add( $002A, 'SurfaceCount', [TTypeVR.vrUL], 'Surface Count' );
     Add( $002B, 'ReferencedSurfaceSequence', [TTypeVR.vrSQ], 'Referenced Surface Sequence' );
     Add( $002C, 'ReferencedSurfaceNumber', [TTypeVR.vrUL], 'Referenced Surface Number' );
     Add( $002D, 'SegmentSurfaceGenerationAlgorithmIdentificationSequence', [TTypeVR.vrSQ], 'Segment Surface Generation Algorithm Identification Sequence' );
     Add( $002E, 'SegmentSurfaceSourceInstanceSequence', [TTypeVR.vrSQ], 'Segment Surface Source Instance Sequence' );
     Add( $002F, 'AlgorithmFamilyCodeSequence', [TTypeVR.vrSQ], 'Algorithm Family Code Sequence' );
     Add( $0030, 'AlgorithmNameCodeSequence', [TTypeVR.vrSQ], 'Algorithm Name Code Sequence' );
     Add( $0031, 'AlgorithmVersion', [TTypeVR.vrLO], 'Algorithm Version' );
     Add( $0032, 'AlgorithmParameters', [TTypeVR.vrLT], 'Algorithm Parameters' );
     Add( $0034, 'FacetSequence', [TTypeVR.vrSQ], 'Facet Sequence' );
     Add( $0035, 'SurfaceProcessingAlgorithmIdentificationSequence', [TTypeVR.vrSQ], 'Surface Processing Algorithm Identification Sequence' );
     Add( $0036, 'AlgorithmName', [TTypeVR.vrLO], 'Algorithm Name' );
     Add( $0037, 'RecommendedPointRadius', [TTypeVR.vrFL], 'Recommended Point Radius' );
     Add( $0038, 'RecommendedLineThickness', [TTypeVR.vrFL], 'Recommended Line Thickness' );
     Add( $0040, 'LongPrimitivePointIndexList', [TTypeVR.vrOL], 'Long Primitive Point Index List' );
     Add( $0041, 'LongTrianglePointIndexList', [TTypeVR.vrOL], 'Long Triangle Point Index List' );
     Add( $0042, 'LongEdgePointIndexList', [TTypeVR.vrOL], 'Long Edge Point Index List' );
     Add( $0043, 'LongVertexPointIndexList', [TTypeVR.vrOL], 'Long Vertex Point Index List' );
     Add( $0101, 'TrackSetSequence', [TTypeVR.vrSQ], 'Track Set Sequence' );
     Add( $0102, 'TrackSequence', [TTypeVR.vrSQ], 'Track Sequence' );
     Add( $0103, 'RecommendedDisplayCIELabValueList', [TTypeVR.vrOW], 'Recommended Display CIELab Value List' );
     Add( $0104, 'TrackingAlgorithmIdentificationSequence', [TTypeVR.vrSQ], 'Tracking Algorithm Identification Sequence' );
     Add( $0105, 'TrackSetNumber', [TTypeVR.vrUL], 'Track Set Number' );
     Add( $0106, 'TrackSetLabel', [TTypeVR.vrLO], 'Track Set Label' );
     Add( $0107, 'TrackSetDescription', [TTypeVR.vrUT], 'Track Set Description' );
     Add( $0108, 'TrackSetAnatomicalTypeCodeSequence', [TTypeVR.vrSQ], 'Track Set Anatomical Type Code Sequence' );
     Add( $0121, 'MeasurementsSequence', [TTypeVR.vrSQ], 'Measurements Sequence' );
     Add( $0124, 'TrackSetStatisticsSequence', [TTypeVR.vrSQ], 'Track Set Statistics Sequence' );
     Add( $0125, 'FloatingPointValues', [TTypeVR.vrOF], 'Floating Point Values' );
     Add( $0129, 'TrackPointIndexList', [TTypeVR.vrOL], 'Track Point Index List' );
     Add( $0130, 'TrackStatisticsSequence', [TTypeVR.vrSQ], 'Track Statistics Sequence' );
     Add( $0132, 'MeasurementValuesSequence', [TTypeVR.vrSQ], 'Measurement Values Sequence' );
     Add( $0133, 'DiffusionAcquisitionCodeSequence', [TTypeVR.vrSQ], 'Diffusion Acquisition Code Sequence' );
     Add( $0134, 'DiffusionModelCodeSequence', [TTypeVR.vrSQ], 'Diffusion Model Code Sequence' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
