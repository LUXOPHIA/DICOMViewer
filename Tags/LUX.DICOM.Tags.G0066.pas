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
     Add( $0001, [TTypeVR.vrUL], 'Number of Surfaces' );
     Add( $0002, [TTypeVR.vrSQ], 'Surface Sequence' );
     Add( $0003, [TTypeVR.vrUL], 'Surface Number' );
     Add( $0004, [TTypeVR.vrLT], 'Surface Comments' );
     Add( $0009, [TTypeVR.vrCS], 'Surface Processing' );
     Add( $000A, [TTypeVR.vrFL], 'Surface Processing Ratio' );
     Add( $000B, [TTypeVR.vrLO], 'Surface Processing Description' );
     Add( $000C, [TTypeVR.vrFL], 'Recommended Presentation Opacity' );
     Add( $000D, [TTypeVR.vrCS], 'Recommended Presentation Type' );
     Add( $000E, [TTypeVR.vrCS], 'Finite Volume' );
     Add( $0010, [TTypeVR.vrCS], 'Manifold' );
     Add( $0011, [TTypeVR.vrSQ], 'Surface Points Sequence' );
     Add( $0012, [TTypeVR.vrSQ], 'Surface Points Normals Sequence' );
     Add( $0013, [TTypeVR.vrSQ], 'Surface Mesh Primitives Sequence' );
     Add( $0015, [TTypeVR.vrUL], 'Number of Surface Points' );
     Add( $0016, [TTypeVR.vrOF], 'Point Coordinates Data' );
     Add( $0017, [TTypeVR.vrFL], 'Point Position Accuracy' );
     Add( $0018, [TTypeVR.vrFL], 'Mean Point Distance' );
     Add( $0019, [TTypeVR.vrFL], 'Maximum Point Distance' );
     Add( $001A, [TTypeVR.vrFL], 'Points Bounding Box Coordinates' );
     Add( $001B, [TTypeVR.vrFL], 'Axis of Rotation' );
     Add( $001C, [TTypeVR.vrFL], 'Center of Rotation' );
     Add( $001E, [TTypeVR.vrUL], 'Number of Vectors' );
     Add( $001F, [TTypeVR.vrUS], 'Vector Dimensionality' );
     Add( $0020, [TTypeVR.vrFL], 'Vector Accuracy' );
     Add( $0021, [TTypeVR.vrOF], 'Vector Coordinate Data' );
     Add( $0023, [TTypeVR.vrOW], 'Triangle Point Index List' );
     Add( $0024, [TTypeVR.vrOW], 'Edge Point Index List' );
     Add( $0025, [TTypeVR.vrOW], 'Vertex Point Index List' );
     Add( $0026, [TTypeVR.vrSQ], 'Triangle Strip Sequence' );
     Add( $0027, [TTypeVR.vrSQ], 'Triangle Fan Sequence' );
     Add( $0028, [TTypeVR.vrSQ], 'Line Sequence' );
     Add( $0029, [TTypeVR.vrOW], 'Primitive Point Index List' );
     Add( $002A, [TTypeVR.vrUL], 'Surface Count' );
     Add( $002B, [TTypeVR.vrSQ], 'Referenced Surface Sequence' );
     Add( $002C, [TTypeVR.vrUL], 'Referenced Surface Number' );
     Add( $002D, [TTypeVR.vrSQ], 'Segment Surface Generation Algorithm Identification Sequence' );
     Add( $002E, [TTypeVR.vrSQ], 'Segment Surface Source Instance Sequence' );
     Add( $002F, [TTypeVR.vrSQ], 'Algorithm Family Code Sequence' );
     Add( $0030, [TTypeVR.vrSQ], 'Algorithm Name Code Sequence' );
     Add( $0031, [TTypeVR.vrLO], 'Algorithm Version' );
     Add( $0032, [TTypeVR.vrLT], 'Algorithm Parameters' );
     Add( $0034, [TTypeVR.vrSQ], 'Facet Sequence' );
     Add( $0035, [TTypeVR.vrSQ], 'Surface Processing Algorithm Identification Sequence' );
     Add( $0036, [TTypeVR.vrLO], 'Algorithm Name' );
     Add( $0037, [TTypeVR.vrFL], 'Recommended Point Radius' );
     Add( $0038, [TTypeVR.vrFL], 'Recommended Line Thickness' );
     Add( $0040, [TTypeVR.vrOL], 'Long Primitive Point Index List' );
     Add( $0041, [TTypeVR.vrOL], 'Long Triangle Point Index List' );
     Add( $0042, [TTypeVR.vrOL], 'Long Edge Point Index List' );
     Add( $0043, [TTypeVR.vrOL], 'Long Vertex Point Index List' );
     Add( $0101, [TTypeVR.vrSQ], 'Track Set Sequence' );
     Add( $0102, [TTypeVR.vrSQ], 'Track Sequence' );
     Add( $0103, [TTypeVR.vrOW], 'Recommended Display CIELab Value List' );
     Add( $0104, [TTypeVR.vrSQ], 'Tracking Algorithm Identification Sequence' );
     Add( $0105, [TTypeVR.vrUL], 'Track Set Number' );
     Add( $0106, [TTypeVR.vrLO], 'Track Set Label' );
     Add( $0107, [TTypeVR.vrUT], 'Track Set Description' );
     Add( $0108, [TTypeVR.vrSQ], 'Track Set Anatomical Type Code Sequence' );
     Add( $0121, [TTypeVR.vrSQ], 'Measurements Sequence' );
     Add( $0124, [TTypeVR.vrSQ], 'Track Set Statistics Sequence' );
     Add( $0125, [TTypeVR.vrOF], 'Floating Point Values' );
     Add( $0129, [TTypeVR.vrOL], 'Track Point Index List' );
     Add( $0130, [TTypeVR.vrSQ], 'Track Statistics Sequence' );
     Add( $0132, [TTypeVR.vrSQ], 'Measurement Values Sequence' );
     Add( $0133, [TTypeVR.vrSQ], 'Diffusion Acquisition Code Sequence' );
     Add( $0134, [TTypeVR.vrSQ], 'Diffusion Model Code Sequence' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
