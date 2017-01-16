unit LUX.DICOM.Tags.G0070;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0070

     TdcmGrup0070 = class( TdcmGrup )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0070

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmGrup0070.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0001, [TTypeVR.vrSQ], 'Graphic Annotation Sequence' );
     Add( $0002, [TTypeVR.vrCS], 'Graphic Layer' );
     Add( $0003, [TTypeVR.vrCS], 'Bounding Box Annotation Units' );
     Add( $0004, [TTypeVR.vrCS], 'Anchor Point Annotation Units' );
     Add( $0005, [TTypeVR.vrCS], 'Graphic Annotation Units' );
     Add( $0006, [TTypeVR.vrST], 'Unformatted Text Value' );
     Add( $0008, [TTypeVR.vrSQ], 'Text Object Sequence' );
     Add( $0009, [TTypeVR.vrSQ], 'Graphic Object Sequence' );
     Add( $0010, [TTypeVR.vrFL], 'Bounding Box Top Left Hand Corner' );
     Add( $0011, [TTypeVR.vrFL], 'Bounding Box Bottom Right Hand Corner' );
     Add( $0012, [TTypeVR.vrCS], 'Bounding Box Text Horizontal Justification' );
     Add( $0014, [TTypeVR.vrFL], 'Anchor Point' );
     Add( $0015, [TTypeVR.vrCS], 'Anchor Point Visibility' );
     Add( $0020, [TTypeVR.vrUS], 'Graphic Dimensions' );
     Add( $0021, [TTypeVR.vrUS], 'Number of Graphic Points' );
     Add( $0022, [TTypeVR.vrFL], 'Graphic Data' );
     Add( $0023, [TTypeVR.vrCS], 'Graphic Type' );
     Add( $0024, [TTypeVR.vrCS], 'Graphic Filled' );
     Add( $0040, [TTypeVR.vrIS], 'Image Rotation (Retired)' );
     Add( $0041, [TTypeVR.vrCS], 'Image Horizontal Flip' );
     Add( $0042, [TTypeVR.vrUS], 'Image Rotation' );
     Add( $0050, [TTypeVR.vrUS], 'Displayed Area Top Left Hand Corner (Trial)' );
     Add( $0051, [TTypeVR.vrUS], 'Displayed Area Bottom Right Hand Corner (Trial)' );
     Add( $0052, [TTypeVR.vrSL], 'Displayed Area Top Left Hand Corner' );
     Add( $0053, [TTypeVR.vrSL], 'Displayed Area Bottom Right Hand Corner' );
     Add( $005A, [TTypeVR.vrSQ], 'Displayed Area Selection Sequence' );
     Add( $0060, [TTypeVR.vrSQ], 'Graphic Layer Sequence' );
     Add( $0062, [TTypeVR.vrIS], 'Graphic Layer Order' );
     Add( $0066, [TTypeVR.vrUS], 'Graphic Layer Recommended Display Grayscale Value' );
     Add( $0067, [TTypeVR.vrUS], 'Graphic Layer Recommended Display RGB Value' );
     Add( $0068, [TTypeVR.vrLO], 'Graphic Layer Description' );
     Add( $0080, [TTypeVR.vrCS], 'Content Label' );
     Add( $0081, [TTypeVR.vrLO], 'Content Description' );
     Add( $0082, [TTypeVR.vrDA], 'Presentation Creation Date' );
     Add( $0083, [TTypeVR.vrTM], 'Presentation Creation Time' );
     Add( $0084, [TTypeVR.vrPN], 'Content Creator''s Name' );
     Add( $0086, [TTypeVR.vrSQ], 'Content Creator''s Identification Code Sequence' );
     Add( $0087, [TTypeVR.vrSQ], 'Alternate Content Description Sequence' );
     Add( $0100, [TTypeVR.vrCS], 'Presentation Size Mode' );
     Add( $0101, [TTypeVR.vrDS], 'Presentation Pixel Spacing' );
     Add( $0102, [TTypeVR.vrIS], 'Presentation Pixel Aspect Ratio' );
     Add( $0103, [TTypeVR.vrFL], 'Presentation Pixel Magnification Ratio' );
     Add( $0207, [TTypeVR.vrLO], 'Graphic Group Label' );
     Add( $0208, [TTypeVR.vrST], 'Graphic Group Description' );
     Add( $0209, [TTypeVR.vrSQ], 'Compound Graphic Sequence' );
     Add( $0226, [TTypeVR.vrUL], 'Compound Graphic Instance ID' );
     Add( $0227, [TTypeVR.vrLO], 'Font Name' );
     Add( $0228, [TTypeVR.vrCS], 'Font Name Type' );
     Add( $0229, [TTypeVR.vrLO], 'CSS Font Name' );
     Add( $0230, [TTypeVR.vrFD], 'Rotation Angle' );
     Add( $0231, [TTypeVR.vrSQ], 'Text Style Sequence' );
     Add( $0232, [TTypeVR.vrSQ], 'Line Style Sequence' );
     Add( $0233, [TTypeVR.vrSQ], 'Fill Style Sequence' );
     Add( $0234, [TTypeVR.vrSQ], 'Graphic Group Sequence' );
     Add( $0241, [TTypeVR.vrUS], 'Text Color CIELab Value' );
     Add( $0242, [TTypeVR.vrCS], 'Horizontal Alignment' );
     Add( $0243, [TTypeVR.vrCS], 'Vertical Alignment' );
     Add( $0244, [TTypeVR.vrCS], 'Shadow Style' );
     Add( $0245, [TTypeVR.vrFL], 'Shadow Offset X' );
     Add( $0246, [TTypeVR.vrFL], 'Shadow Offset Y' );
     Add( $0247, [TTypeVR.vrUS], 'Shadow Color CIELab Value' );
     Add( $0248, [TTypeVR.vrCS], 'Underlined' );
     Add( $0249, [TTypeVR.vrCS], 'Bold' );
     Add( $0250, [TTypeVR.vrCS], 'Italic' );
     Add( $0251, [TTypeVR.vrUS], 'Pattern On Color CIELab Value' );
     Add( $0252, [TTypeVR.vrUS], 'Pattern Off Color CIELab Value' );
     Add( $0253, [TTypeVR.vrFL], 'Line Thickness' );
     Add( $0254, [TTypeVR.vrCS], 'Line Dashing Style' );
     Add( $0255, [TTypeVR.vrUL], 'Line Pattern' );
     Add( $0256, [TTypeVR.vrOB], 'Fill Pattern' );
     Add( $0257, [TTypeVR.vrCS], 'Fill Mode' );
     Add( $0258, [TTypeVR.vrFL], 'Shadow Opacity' );
     Add( $0261, [TTypeVR.vrFL], 'Gap Length' );
     Add( $0262, [TTypeVR.vrFL], 'Diameter of Visibility' );
     Add( $0273, [TTypeVR.vrFL], 'Rotation Point' );
     Add( $0274, [TTypeVR.vrCS], 'Tick Alignment' );
     Add( $0278, [TTypeVR.vrCS], 'Show Tick Label' );
     Add( $0279, [TTypeVR.vrCS], 'Tick Label Alignment' );
     Add( $0282, [TTypeVR.vrCS], 'Compound Graphic Units' );
     Add( $0284, [TTypeVR.vrFL], 'Pattern On Opacity' );
     Add( $0285, [TTypeVR.vrFL], 'Pattern Off Opacity' );
     Add( $0287, [TTypeVR.vrSQ], 'Major Ticks Sequence' );
     Add( $0288, [TTypeVR.vrFL], 'Tick Position' );
     Add( $0289, [TTypeVR.vrSH], 'Tick Label' );
     Add( $0294, [TTypeVR.vrCS], 'Compound Graphic Type' );
     Add( $0295, [TTypeVR.vrUL], 'Graphic Group ID' );
     Add( $0306, [TTypeVR.vrCS], 'Shape Type' );
     Add( $0308, [TTypeVR.vrSQ], 'Registration Sequence' );
     Add( $0309, [TTypeVR.vrSQ], 'Matrix Registration Sequence' );
     Add( $030A, [TTypeVR.vrSQ], 'Matrix Sequence' );
     Add( $030B, [TTypeVR.vrFD], 'Frame of Reference to Displayed Coordinate System Transformation Matrix' );
     Add( $030C, [TTypeVR.vrCS], 'Frame of Reference Transformation Matrix Type' );
     Add( $030D, [TTypeVR.vrSQ], 'Registration Type Code Sequence' );
     Add( $030F, [TTypeVR.vrST], 'Fiducial Description' );
     Add( $0310, [TTypeVR.vrSH], 'Fiducial Identifier' );
     Add( $0311, [TTypeVR.vrSQ], 'Fiducial Identifier Code Sequence' );
     Add( $0312, [TTypeVR.vrFD], 'Contour Uncertainty Radius' );
     Add( $0314, [TTypeVR.vrSQ], 'Used Fiducials Sequence' );
     Add( $0318, [TTypeVR.vrSQ], 'Graphic Coordinates Data Sequence' );
     Add( $031A, [TTypeVR.vrUI], 'Fiducial UID' );
     Add( $031C, [TTypeVR.vrSQ], 'Fiducial Set Sequence' );
     Add( $031E, [TTypeVR.vrSQ], 'Fiducial Sequence' );
     Add( $031F, [TTypeVR.vrSQ], 'Fiducials Property Category Code Sequence' );
     Add( $0401, [TTypeVR.vrUS], 'Graphic Layer Recommended Display CIELab Value' );
     Add( $0402, [TTypeVR.vrSQ], 'Blending Sequence' );
     Add( $0403, [TTypeVR.vrFL], 'Relative Opacity' );
     Add( $0404, [TTypeVR.vrSQ], 'Referenced Spatial Registration Sequence' );
     Add( $0405, [TTypeVR.vrCS], 'Blending Position' );
     Add( $1101, [TTypeVR.vrUI], 'Presentation Display Collection UID' );
     Add( $1102, [TTypeVR.vrUI], 'Presentation Sequence Collection UID' );
     Add( $1103, [TTypeVR.vrUS], 'Presentation Sequence Position Index' );
     Add( $1104, [TTypeVR.vrSQ], 'Rendered Image Reference Sequence' );
     Add( $1201, [TTypeVR.vrSQ], 'Volumetric Presentation State Input Sequence' );
     Add( $1202, [TTypeVR.vrCS], 'Presentation Input Type' );
     Add( $1203, [TTypeVR.vrUS], 'Input Sequence Position Index' );
     Add( $1204, [TTypeVR.vrCS], 'Crop' );
     Add( $1205, [TTypeVR.vrUS], 'Cropping Specification Index' );
     Add( $1206, [TTypeVR.vrCS], 'Compositing Method' );
     Add( $1207, [TTypeVR.vrUS], 'Volumetric Presentation Input Number' );
     Add( $1208, [TTypeVR.vrCS], 'Image Volume Geometry' );
     Add( $1301, [TTypeVR.vrSQ], 'Volume Cropping Sequence' );
     Add( $1302, [TTypeVR.vrCS], 'Volume Cropping Method' );
     Add( $1303, [TTypeVR.vrFD], 'Bounding Box Crop' );
     Add( $1304, [TTypeVR.vrSQ], 'Oblique Cropping Plane Sequence' );
     Add( $1305, [TTypeVR.vrFD], 'Plane' );
     Add( $1306, [TTypeVR.vrFD], 'Plane Normal' );
     Add( $1309, [TTypeVR.vrUS], 'Cropping Specification Number' );
     Add( $1501, [TTypeVR.vrCS], 'Multi-Planar Reconstruction Style' );
     Add( $1502, [TTypeVR.vrCS], 'MPR Thickness Type' );
     Add( $1503, [TTypeVR.vrFD], 'MPR Slab Thickness' );
     Add( $1505, [TTypeVR.vrFD], 'MPR Top Left Hand Corner' );
     Add( $1507, [TTypeVR.vrFD], 'MPR View Width Direction' );
     Add( $1508, [TTypeVR.vrFD], 'MPR View Width' );
     Add( $150C, [TTypeVR.vrUL], 'Number of Volumetric Curve Points' );
     Add( $150D, [TTypeVR.vrOD], 'Volumetric Curve Points' );
     Add( $1511, [TTypeVR.vrFD], 'MPR View Height Direction' );
     Add( $1512, [TTypeVR.vrFD], 'MPR View Height' );
     Add( $1801, [TTypeVR.vrSQ], 'Presentation State Classification Component Sequence' );
     Add( $1802, [TTypeVR.vrCS], 'Component Type' );
     Add( $1803, [TTypeVR.vrSQ], 'Component Input Sequence' );
     Add( $1804, [TTypeVR.vrUS], 'Volumetric Presentation Input Index' );
     Add( $1805, [TTypeVR.vrSQ], 'Presentation State Compositor Component Sequence' );
     Add( $1806, [TTypeVR.vrSQ], 'Weighting Transfer Function Sequence' );
     Add( $1807, [TTypeVR.vrUS], 'Weighting Lookup Table Descriptor' );
     Add( $1808, [TTypeVR.vrOB], 'Weighting Lookup Table Data' );
     Add( $1901, [TTypeVR.vrSQ], 'Volumetric Annotation Sequence' );
     Add( $1903, [TTypeVR.vrSQ], 'Referenced Structured Context Sequence' );
     Add( $1904, [TTypeVR.vrUI], 'Referenced Content Item' );
     Add( $1905, [TTypeVR.vrSQ], 'Volumetric Presentation Input Annotation Sequence' );
     Add( $1907, [TTypeVR.vrCS], 'Annotation Clipping' );
     Add( $1A01, [TTypeVR.vrCS], 'Presentation Animation Style' );
     Add( $1A03, [TTypeVR.vrFD], 'Recommended Animation Rate' );
     Add( $1A04, [TTypeVR.vrSQ], 'Animation Curve Sequence' );
     Add( $1A05, [TTypeVR.vrFD], 'Animation Step Size' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
