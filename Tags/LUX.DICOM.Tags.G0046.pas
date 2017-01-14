unit LUX.DICOM.Tags.G0046;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems0046

     TDICOMElems0046 = class( TDICOMElems )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems0046

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TDICOMElems0046.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0012, TKindVR.vrLO, 'Lens Description' );
     Add( $0014, TKindVR.vrSQ, 'Right Lens Sequence' );
     Add( $0015, TKindVR.vrSQ, 'Left Lens Sequence' );
     Add( $0016, TKindVR.vrSQ, 'Unspecified Laterality Lens Sequence' );
     Add( $0018, TKindVR.vrSQ, 'Cylinder Sequence' );
     Add( $0028, TKindVR.vrSQ, 'Prism Sequence' );
     Add( $0030, TKindVR.vrFD, 'Horizontal Prism Power' );
     Add( $0032, TKindVR.vrCS, 'Horizontal Prism Base' );
     Add( $0034, TKindVR.vrFD, 'Vertical Prism Power' );
     Add( $0036, TKindVR.vrCS, 'Vertical Prism Base' );
     Add( $0038, TKindVR.vrCS, 'Lens Segment Type' );
     Add( $0040, TKindVR.vrFD, 'Optical Transmittance' );
     Add( $0042, TKindVR.vrFD, 'Channel Width' );
     Add( $0044, TKindVR.vrFD, 'Pupil Size' );
     Add( $0046, TKindVR.vrFD, 'Corneal Size' );
     Add( $0050, TKindVR.vrSQ, 'Autorefraction Right Eye Sequence' );
     Add( $0052, TKindVR.vrSQ, 'Autorefraction Left Eye Sequence' );
     Add( $0060, TKindVR.vrFD, 'Distance Pupillary Distance' );
     Add( $0062, TKindVR.vrFD, 'Near Pupillary Distance' );
     Add( $0063, TKindVR.vrFD, 'Intermediate Pupillary Distance' );
     Add( $0064, TKindVR.vrFD, 'Other Pupillary Distance' );
     Add( $0070, TKindVR.vrSQ, 'Keratometry Right Eye Sequence' );
     Add( $0071, TKindVR.vrSQ, 'Keratometry Left Eye Sequence' );
     Add( $0074, TKindVR.vrSQ, 'Steep Keratometric Axis Sequence' );
     Add( $0075, TKindVR.vrFD, 'Radius of Curvature' );
     Add( $0076, TKindVR.vrFD, 'Keratometric Power' );
     Add( $0077, TKindVR.vrFD, 'Keratometric Axis' );
     Add( $0080, TKindVR.vrSQ, 'Flat Keratometric Axis Sequence' );
     Add( $0092, TKindVR.vrCS, 'Background Color' );
     Add( $0094, TKindVR.vrCS, 'Optotype' );
     Add( $0095, TKindVR.vrCS, 'Optotype Presentation' );
     Add( $0097, TKindVR.vrSQ, 'Subjective Refraction Right Eye Sequence' );
     Add( $0098, TKindVR.vrSQ, 'Subjective Refraction Left Eye Sequence' );
     Add( $0100, TKindVR.vrSQ, 'Add Near Sequence' );
     Add( $0101, TKindVR.vrSQ, 'Add Intermediate Sequence' );
     Add( $0102, TKindVR.vrSQ, 'Add Other Sequence' );
     Add( $0104, TKindVR.vrFD, 'Add Power' );
     Add( $0106, TKindVR.vrFD, 'Viewing Distance' );
     Add( $0121, TKindVR.vrSQ, 'Visual Acuity Type Code Sequence' );
     Add( $0122, TKindVR.vrSQ, 'Visual Acuity Right Eye Sequence' );
     Add( $0123, TKindVR.vrSQ, 'Visual Acuity Left Eye Sequence' );
     Add( $0124, TKindVR.vrSQ, 'Visual Acuity Both Eyes Open Sequence' );
     Add( $0125, TKindVR.vrCS, 'Viewing Distance Type' );
     Add( $0135, TKindVR.vrSS, 'Visual Acuity Modifiers' );
     Add( $0137, TKindVR.vrFD, 'Decimal Visual Acuity' );
     Add( $0139, TKindVR.vrLO, 'Optotype Detailed Definition' );
     Add( $0145, TKindVR.vrSQ, 'Referenced Refractive Measurements Sequence' );
     Add( $0146, TKindVR.vrFD, 'Sphere Power' );
     Add( $0147, TKindVR.vrFD, 'Cylinder Power' );
     Add( $0201, TKindVR.vrCS, 'Corneal Topography Surface' );
     Add( $0202, TKindVR.vrFL, 'Corneal Vertex Location' );
     Add( $0203, TKindVR.vrFL, 'Pupil Centroid X-Coordinate' );
     Add( $0204, TKindVR.vrFL, 'Pupil Centroid Y-Coordinate' );
     Add( $0205, TKindVR.vrFL, 'Equivalent Pupil Radius' );
     Add( $0207, TKindVR.vrSQ, 'Corneal Topography Map Type Code Sequence' );
     Add( $0208, TKindVR.vrIS, 'Vertices of the Outline of Pupil' );
     Add( $0210, TKindVR.vrSQ, 'Corneal Topography Mapping Normals Sequence' );
     Add( $0211, TKindVR.vrSQ, 'Maximum Corneal Curvature Sequence' );
     Add( $0212, TKindVR.vrFL, 'Maximum Corneal Curvature' );
     Add( $0213, TKindVR.vrFL, 'Maximum Corneal Curvature Location' );
     Add( $0215, TKindVR.vrSQ, 'Minimum Keratometric Sequence' );
     Add( $0218, TKindVR.vrSQ, 'Simulated Keratometric Cylinder Sequence' );
     Add( $0220, TKindVR.vrFL, 'Average Corneal Power' );
     Add( $0224, TKindVR.vrFL, 'Corneal I-S Value' );
     Add( $0227, TKindVR.vrFL, 'Analyzed Area' );
     Add( $0230, TKindVR.vrFL, 'Surface Regularity Index' );
     Add( $0232, TKindVR.vrFL, 'Surface Asymmetry Index' );
     Add( $0234, TKindVR.vrFL, 'Corneal Eccentricity Index' );
     Add( $0236, TKindVR.vrFL, 'Keratoconus Prediction Index' );
     Add( $0238, TKindVR.vrFL, 'Decimal Potential Visual Acuity' );
     Add( $0242, TKindVR.vrCS, 'Corneal Topography Map Quality Evaluation' );
     Add( $0244, TKindVR.vrSQ, 'Source Image Corneal Processed Data Sequence' );
     Add( $0247, TKindVR.vrFL, 'Corneal Point Location' );
     Add( $0248, TKindVR.vrCS, 'Corneal Point Estimated' );
     Add( $0249, TKindVR.vrFL, 'Axial Power' );
     Add( $0250, TKindVR.vrFL, 'Tangential Power' );
     Add( $0251, TKindVR.vrFL, 'Refractive Power' );
     Add( $0252, TKindVR.vrFL, 'Relative Elevation' );
     Add( $0253, TKindVR.vrFL, 'Corneal Wavefront' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
