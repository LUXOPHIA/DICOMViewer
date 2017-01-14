unit LUX.DICOM.Tags.G0066;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems0066

     TDICOMElems0066 = class( TDICOMElems )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems0066

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TDICOMElems0066.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0001, TKindVR.vrUL, 'Number of Surfaces' );
     Add( $0002, TKindVR.vrSQ, 'Surface Sequence' );
     Add( $0003, TKindVR.vrUL, 'Surface Number' );
     Add( $0004, TKindVR.vrLT, 'Surface Comments' );
     Add( $0009, TKindVR.vrCS, 'Surface Processing' );
     Add( $000A, TKindVR.vrFL, 'Surface Processing Ratio' );
     Add( $000B, TKindVR.vrLO, 'Surface Processing Description' );
     Add( $000C, TKindVR.vrFL, 'Recommended Presentation Opacity' );
     Add( $000D, TKindVR.vrCS, 'Recommended Presentation Type' );
     Add( $000E, TKindVR.vrCS, 'Finite Volume' );
     Add( $0010, TKindVR.vrCS, 'Manifold' );
     Add( $0011, TKindVR.vrSQ, 'Surface Points Sequence' );
     Add( $0012, TKindVR.vrSQ, 'Surface Points Normals Sequence' );
     Add( $0013, TKindVR.vrSQ, 'Surface Mesh Primitives Sequence' );
     Add( $0015, TKindVR.vrUL, 'Number of Surface Points' );
     Add( $0016, TKindVR.vrOF, 'Point Coordinates Data' );
     Add( $0017, TKindVR.vrFL, 'Point Position Accuracy' );
     Add( $0018, TKindVR.vrFL, 'Mean Point Distance' );
     Add( $0019, TKindVR.vrFL, 'Maximum Point Distance' );
     Add( $001A, TKindVR.vrFL, 'Points Bounding Box Coordinates' );
     Add( $001B, TKindVR.vrFL, 'Axis of Rotation' );
     Add( $001C, TKindVR.vrFL, 'Center of Rotation' );
     Add( $001E, TKindVR.vrUL, 'Number of Vectors' );
     Add( $001F, TKindVR.vrUS, 'Vector Dimensionality' );
     Add( $0020, TKindVR.vrFL, 'Vector Accuracy' );
     Add( $0021, TKindVR.vrOF, 'Vector Coordinate Data' );
     Add( $0023, TKindVR.vrOW, 'Triangle Point Index List' );
     Add( $0024, TKindVR.vrOW, 'Edge Point Index List' );
     Add( $0025, TKindVR.vrOW, 'Vertex Point Index List' );
     Add( $0026, TKindVR.vrSQ, 'Triangle Strip Sequence' );
     Add( $0027, TKindVR.vrSQ, 'Triangle Fan Sequence' );
     Add( $0028, TKindVR.vrSQ, 'Line Sequence' );
     Add( $0029, TKindVR.vrOW, 'Primitive Point Index List' );
     Add( $002A, TKindVR.vrUL, 'Surface Count' );
     Add( $002B, TKindVR.vrSQ, 'Referenced Surface Sequence' );
     Add( $002C, TKindVR.vrUL, 'Referenced Surface Number' );
     Add( $002D, TKindVR.vrSQ, 'Segment Surface Generation Algorithm Identification Sequence' );
     Add( $002E, TKindVR.vrSQ, 'Segment Surface Source Instance Sequence' );
     Add( $002F, TKindVR.vrSQ, 'Algorithm Family Code Sequence' );
     Add( $0030, TKindVR.vrSQ, 'Algorithm Name Code Sequence' );
     Add( $0031, TKindVR.vrLO, 'Algorithm Version' );
     Add( $0032, TKindVR.vrLT, 'Algorithm Parameters' );
     Add( $0034, TKindVR.vrSQ, 'Facet Sequence' );
     Add( $0035, TKindVR.vrSQ, 'Surface Processing Algorithm Identification Sequence' );
     Add( $0036, TKindVR.vrLO, 'Algorithm Name' );
     Add( $0037, TKindVR.vrFL, 'Recommended Point Radius' );
     Add( $0038, TKindVR.vrFL, 'Recommended Line Thickness' );
     Add( $0040, TKindVR.vrOL, 'Long Primitive Point Index List' );
     Add( $0041, TKindVR.vrOL, 'Long Triangle Point Index List' );
     Add( $0042, TKindVR.vrOL, 'Long Edge Point Index List' );
     Add( $0043, TKindVR.vrOL, 'Long Vertex Point Index List' );
     Add( $0101, TKindVR.vrSQ, 'Track Set Sequence' );
     Add( $0102, TKindVR.vrSQ, 'Track Sequence' );
     Add( $0103, TKindVR.vrOW, 'Recommended Display CIELab Value List' );
     Add( $0104, TKindVR.vrSQ, 'Tracking Algorithm Identification Sequence' );
     Add( $0105, TKindVR.vrUL, 'Track Set Number' );
     Add( $0106, TKindVR.vrLO, 'Track Set Label' );
     Add( $0107, TKindVR.vrUT, 'Track Set Description' );
     Add( $0108, TKindVR.vrSQ, 'Track Set Anatomical Type Code Sequence' );
     Add( $0121, TKindVR.vrSQ, 'Measurements Sequence' );
     Add( $0124, TKindVR.vrSQ, 'Track Set Statistics Sequence' );
     Add( $0125, TKindVR.vrOF, 'Floating Point Values' );
     Add( $0129, TKindVR.vrOL, 'Track Point Index List' );
     Add( $0130, TKindVR.vrSQ, 'Track Statistics Sequence' );
     Add( $0132, TKindVR.vrSQ, 'Measurement Values Sequence' );
     Add( $0133, TKindVR.vrSQ, 'Diffusion Acquisition Code Sequence' );
     Add( $0134, TKindVR.vrSQ, 'Diffusion Model Code Sequence' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
