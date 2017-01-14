unit LUX.DICOM.Tags.G0070;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems0070

     TDICOMElems0070 = class( TDICOMElems )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems0070

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TDICOMElems0070.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0001, TKindVR.vrSQ, 'Graphic Annotation Sequence' );
     Add( $0002, TKindVR.vrCS, 'Graphic Layer' );
     Add( $0003, TKindVR.vrCS, 'Bounding Box Annotation Units' );
     Add( $0004, TKindVR.vrCS, 'Anchor Point Annotation Units' );
     Add( $0005, TKindVR.vrCS, 'Graphic Annotation Units' );
     Add( $0006, TKindVR.vrST, 'Unformatted Text Value' );
     Add( $0008, TKindVR.vrSQ, 'Text Object Sequence' );
     Add( $0009, TKindVR.vrSQ, 'Graphic Object Sequence' );
     Add( $0010, TKindVR.vrFL, 'Bounding Box Top Left Hand Corner' );
     Add( $0011, TKindVR.vrFL, 'Bounding Box Bottom Right Hand Corner' );
     Add( $0012, TKindVR.vrCS, 'Bounding Box Text Horizontal Justification' );
     Add( $0014, TKindVR.vrFL, 'Anchor Point' );
     Add( $0015, TKindVR.vrCS, 'Anchor Point Visibility' );
     Add( $0020, TKindVR.vrUS, 'Graphic Dimensions' );
     Add( $0021, TKindVR.vrUS, 'Number of Graphic Points' );
     Add( $0022, TKindVR.vrFL, 'Graphic Data' );
     Add( $0023, TKindVR.vrCS, 'Graphic Type' );
     Add( $0024, TKindVR.vrCS, 'Graphic Filled' );
     Add( $0040, TKindVR.vrIS, 'Image Rotation (Retired)' );
     Add( $0041, TKindVR.vrCS, 'Image Horizontal Flip' );
     Add( $0042, TKindVR.vrUS, 'Image Rotation' );
     Add( $0050, TKindVR.vrUS, 'Displayed Area Top Left Hand Corner (Trial)' );
     Add( $0051, TKindVR.vrUS, 'Displayed Area Bottom Right Hand Corner (Trial)' );
     Add( $0052, TKindVR.vrSL, 'Displayed Area Top Left Hand Corner' );
     Add( $0053, TKindVR.vrSL, 'Displayed Area Bottom Right Hand Corner' );
     Add( $005A, TKindVR.vrSQ, 'Displayed Area Selection Sequence' );
     Add( $0060, TKindVR.vrSQ, 'Graphic Layer Sequence' );
     Add( $0062, TKindVR.vrIS, 'Graphic Layer Order' );
     Add( $0066, TKindVR.vrUS, 'Graphic Layer Recommended Display Grayscale Value' );
     Add( $0067, TKindVR.vrUS, 'Graphic Layer Recommended Display RGB Value' );
     Add( $0068, TKindVR.vrLO, 'Graphic Layer Description' );
     Add( $0080, TKindVR.vrCS, 'Content Label' );
     Add( $0081, TKindVR.vrLO, 'Content Description' );
     Add( $0082, TKindVR.vrDA, 'Presentation Creation Date' );
     Add( $0083, TKindVR.vrTM, 'Presentation Creation Time' );
     Add( $0084, TKindVR.vrPN, 'Content Creator''s Name' );
     Add( $0086, TKindVR.vrSQ, 'Content Creator''s Identification Code Sequence' );
     Add( $0087, TKindVR.vrSQ, 'Alternate Content Description Sequence' );
     Add( $0100, TKindVR.vrCS, 'Presentation Size Mode' );
     Add( $0101, TKindVR.vrDS, 'Presentation Pixel Spacing' );
     Add( $0102, TKindVR.vrIS, 'Presentation Pixel Aspect Ratio' );
     Add( $0103, TKindVR.vrFL, 'Presentation Pixel Magnification Ratio' );
     Add( $0207, TKindVR.vrLO, 'Graphic Group Label' );
     Add( $0208, TKindVR.vrST, 'Graphic Group Description' );
     Add( $0209, TKindVR.vrSQ, 'Compound Graphic Sequence' );
     Add( $0226, TKindVR.vrUL, 'Compound Graphic Instance ID' );
     Add( $0227, TKindVR.vrLO, 'Font Name' );
     Add( $0228, TKindVR.vrCS, 'Font Name Type' );
     Add( $0229, TKindVR.vrLO, 'CSS Font Name' );
     Add( $0230, TKindVR.vrFD, 'Rotation Angle' );
     Add( $0231, TKindVR.vrSQ, 'Text Style Sequence' );
     Add( $0232, TKindVR.vrSQ, 'Line Style Sequence' );
     Add( $0233, TKindVR.vrSQ, 'Fill Style Sequence' );
     Add( $0234, TKindVR.vrSQ, 'Graphic Group Sequence' );
     Add( $0241, TKindVR.vrUS, 'Text Color CIELab Value' );
     Add( $0242, TKindVR.vrCS, 'Horizontal Alignment' );
     Add( $0243, TKindVR.vrCS, 'Vertical Alignment' );
     Add( $0244, TKindVR.vrCS, 'Shadow Style' );
     Add( $0245, TKindVR.vrFL, 'Shadow Offset X' );
     Add( $0246, TKindVR.vrFL, 'Shadow Offset Y' );
     Add( $0247, TKindVR.vrUS, 'Shadow Color CIELab Value' );
     Add( $0248, TKindVR.vrCS, 'Underlined' );
     Add( $0249, TKindVR.vrCS, 'Bold' );
     Add( $0250, TKindVR.vrCS, 'Italic' );
     Add( $0251, TKindVR.vrUS, 'Pattern On Color CIELab Value' );
     Add( $0252, TKindVR.vrUS, 'Pattern Off Color CIELab Value' );
     Add( $0253, TKindVR.vrFL, 'Line Thickness' );
     Add( $0254, TKindVR.vrCS, 'Line Dashing Style' );
     Add( $0255, TKindVR.vrUL, 'Line Pattern' );
     Add( $0256, TKindVR.vrOB, 'Fill Pattern' );
     Add( $0257, TKindVR.vrCS, 'Fill Mode' );
     Add( $0258, TKindVR.vrFL, 'Shadow Opacity' );
     Add( $0261, TKindVR.vrFL, 'Gap Length' );
     Add( $0262, TKindVR.vrFL, 'Diameter of Visibility' );
     Add( $0273, TKindVR.vrFL, 'Rotation Point' );
     Add( $0274, TKindVR.vrCS, 'Tick Alignment' );
     Add( $0278, TKindVR.vrCS, 'Show Tick Label' );
     Add( $0279, TKindVR.vrCS, 'Tick Label Alignment' );
     Add( $0282, TKindVR.vrCS, 'Compound Graphic Units' );
     Add( $0284, TKindVR.vrFL, 'Pattern On Opacity' );
     Add( $0285, TKindVR.vrFL, 'Pattern Off Opacity' );
     Add( $0287, TKindVR.vrSQ, 'Major Ticks Sequence' );
     Add( $0288, TKindVR.vrFL, 'Tick Position' );
     Add( $0289, TKindVR.vrSH, 'Tick Label' );
     Add( $0294, TKindVR.vrCS, 'Compound Graphic Type' );
     Add( $0295, TKindVR.vrUL, 'Graphic Group ID' );
     Add( $0306, TKindVR.vrCS, 'Shape Type' );
     Add( $0308, TKindVR.vrSQ, 'Registration Sequence' );
     Add( $0309, TKindVR.vrSQ, 'Matrix Registration Sequence' );
     Add( $030A, TKindVR.vrSQ, 'Matrix Sequence' );
     Add( $030B, TKindVR.vrFD, 'Frame of Reference to Displayed Coordinate System Transformation Matrix' );
     Add( $030C, TKindVR.vrCS, 'Frame of Reference Transformation Matrix Type' );
     Add( $030D, TKindVR.vrSQ, 'Registration Type Code Sequence' );
     Add( $030F, TKindVR.vrST, 'Fiducial Description' );
     Add( $0310, TKindVR.vrSH, 'Fiducial Identifier' );
     Add( $0311, TKindVR.vrSQ, 'Fiducial Identifier Code Sequence' );
     Add( $0312, TKindVR.vrFD, 'Contour Uncertainty Radius' );
     Add( $0314, TKindVR.vrSQ, 'Used Fiducials Sequence' );
     Add( $0318, TKindVR.vrSQ, 'Graphic Coordinates Data Sequence' );
     Add( $031A, TKindVR.vrUI, 'Fiducial UID' );
     Add( $031C, TKindVR.vrSQ, 'Fiducial Set Sequence' );
     Add( $031E, TKindVR.vrSQ, 'Fiducial Sequence' );
     Add( $031F, TKindVR.vrSQ, 'Fiducials Property Category Code Sequence' );
     Add( $0401, TKindVR.vrUS, 'Graphic Layer Recommended Display CIELab Value' );
     Add( $0402, TKindVR.vrSQ, 'Blending Sequence' );
     Add( $0403, TKindVR.vrFL, 'Relative Opacity' );
     Add( $0404, TKindVR.vrSQ, 'Referenced Spatial Registration Sequence' );
     Add( $0405, TKindVR.vrCS, 'Blending Position' );
     Add( $1101, TKindVR.vrUI, 'Presentation Display Collection UID' );
     Add( $1102, TKindVR.vrUI, 'Presentation Sequence Collection UID' );
     Add( $1103, TKindVR.vrUS, 'Presentation Sequence Position Index' );
     Add( $1104, TKindVR.vrSQ, 'Rendered Image Reference Sequence' );
     Add( $1201, TKindVR.vrSQ, 'Volumetric Presentation State Input Sequence' );
     Add( $1202, TKindVR.vrCS, 'Presentation Input Type' );
     Add( $1203, TKindVR.vrUS, 'Input Sequence Position Index' );
     Add( $1204, TKindVR.vrCS, 'Crop' );
     Add( $1205, TKindVR.vrUS, 'Cropping Specification Index' );
     Add( $1206, TKindVR.vrCS, 'Compositing Method' );
     Add( $1207, TKindVR.vrUS, 'Volumetric Presentation Input Number' );
     Add( $1208, TKindVR.vrCS, 'Image Volume Geometry' );
     Add( $1301, TKindVR.vrSQ, 'Volume Cropping Sequence' );
     Add( $1302, TKindVR.vrCS, 'Volume Cropping Method' );
     Add( $1303, TKindVR.vrFD, 'Bounding Box Crop' );
     Add( $1304, TKindVR.vrSQ, 'Oblique Cropping Plane Sequence' );
     Add( $1305, TKindVR.vrFD, 'Plane' );
     Add( $1306, TKindVR.vrFD, 'Plane Normal' );
     Add( $1309, TKindVR.vrUS, 'Cropping Specification Number' );
     Add( $1501, TKindVR.vrCS, 'Multi-Planar Reconstruction Style' );
     Add( $1502, TKindVR.vrCS, 'MPR Thickness Type' );
     Add( $1503, TKindVR.vrFD, 'MPR Slab Thickness' );
     Add( $1505, TKindVR.vrFD, 'MPR Top Left Hand Corner' );
     Add( $1507, TKindVR.vrFD, 'MPR View Width Direction' );
     Add( $1508, TKindVR.vrFD, 'MPR View Width' );
     Add( $150C, TKindVR.vrUL, 'Number of Volumetric Curve Points' );
     Add( $150D, TKindVR.vrOD, 'Volumetric Curve Points' );
     Add( $1511, TKindVR.vrFD, 'MPR View Height Direction' );
     Add( $1512, TKindVR.vrFD, 'MPR View Height' );
     Add( $1801, TKindVR.vrSQ, 'Presentation State Classification Component Sequence' );
     Add( $1802, TKindVR.vrCS, 'Component Type' );
     Add( $1803, TKindVR.vrSQ, 'Component Input Sequence' );
     Add( $1804, TKindVR.vrUS, 'Volumetric Presentation Input Index' );
     Add( $1805, TKindVR.vrSQ, 'Presentation State Compositor Component Sequence' );
     Add( $1806, TKindVR.vrSQ, 'Weighting Transfer Function Sequence' );
     Add( $1807, TKindVR.vrUS, 'Weighting Lookup Table Descriptor' );
     Add( $1808, TKindVR.vrOB, 'Weighting Lookup Table Data' );
     Add( $1901, TKindVR.vrSQ, 'Volumetric Annotation Sequence' );
     Add( $1903, TKindVR.vrSQ, 'Referenced Structured Context Sequence' );
     Add( $1904, TKindVR.vrUI, 'Referenced Content Item' );
     Add( $1905, TKindVR.vrSQ, 'Volumetric Presentation Input Annotation Sequence' );
     Add( $1907, TKindVR.vrCS, 'Annotation Clipping' );
     Add( $1A01, TKindVR.vrCS, 'Presentation Animation Style' );
     Add( $1A03, TKindVR.vrFD, 'Recommended Animation Rate' );
     Add( $1A04, TKindVR.vrSQ, 'Animation Curve Sequence' );
     Add( $1A05, TKindVR.vrFD, 'Animation Step Size' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
