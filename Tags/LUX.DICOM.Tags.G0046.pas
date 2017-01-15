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
     Add( $0012, [TTypeVR.vrLO], 'Lens Description' );
     Add( $0014, [TTypeVR.vrSQ], 'Right Lens Sequence' );
     Add( $0015, [TTypeVR.vrSQ], 'Left Lens Sequence' );
     Add( $0016, [TTypeVR.vrSQ], 'Unspecified Laterality Lens Sequence' );
     Add( $0018, [TTypeVR.vrSQ], 'Cylinder Sequence' );
     Add( $0028, [TTypeVR.vrSQ], 'Prism Sequence' );
     Add( $0030, [TTypeVR.vrFD], 'Horizontal Prism Power' );
     Add( $0032, [TTypeVR.vrCS], 'Horizontal Prism Base' );
     Add( $0034, [TTypeVR.vrFD], 'Vertical Prism Power' );
     Add( $0036, [TTypeVR.vrCS], 'Vertical Prism Base' );
     Add( $0038, [TTypeVR.vrCS], 'Lens Segment Type' );
     Add( $0040, [TTypeVR.vrFD], 'Optical Transmittance' );
     Add( $0042, [TTypeVR.vrFD], 'Channel Width' );
     Add( $0044, [TTypeVR.vrFD], 'Pupil Size' );
     Add( $0046, [TTypeVR.vrFD], 'Corneal Size' );
     Add( $0050, [TTypeVR.vrSQ], 'Autorefraction Right Eye Sequence' );
     Add( $0052, [TTypeVR.vrSQ], 'Autorefraction Left Eye Sequence' );
     Add( $0060, [TTypeVR.vrFD], 'Distance Pupillary Distance' );
     Add( $0062, [TTypeVR.vrFD], 'Near Pupillary Distance' );
     Add( $0063, [TTypeVR.vrFD], 'Intermediate Pupillary Distance' );
     Add( $0064, [TTypeVR.vrFD], 'Other Pupillary Distance' );
     Add( $0070, [TTypeVR.vrSQ], 'Keratometry Right Eye Sequence' );
     Add( $0071, [TTypeVR.vrSQ], 'Keratometry Left Eye Sequence' );
     Add( $0074, [TTypeVR.vrSQ], 'Steep Keratometric Axis Sequence' );
     Add( $0075, [TTypeVR.vrFD], 'Radius of Curvature' );
     Add( $0076, [TTypeVR.vrFD], 'Keratometric Power' );
     Add( $0077, [TTypeVR.vrFD], 'Keratometric Axis' );
     Add( $0080, [TTypeVR.vrSQ], 'Flat Keratometric Axis Sequence' );
     Add( $0092, [TTypeVR.vrCS], 'Background Color' );
     Add( $0094, [TTypeVR.vrCS], 'Optotype' );
     Add( $0095, [TTypeVR.vrCS], 'Optotype Presentation' );
     Add( $0097, [TTypeVR.vrSQ], 'Subjective Refraction Right Eye Sequence' );
     Add( $0098, [TTypeVR.vrSQ], 'Subjective Refraction Left Eye Sequence' );
     Add( $0100, [TTypeVR.vrSQ], 'Add Near Sequence' );
     Add( $0101, [TTypeVR.vrSQ], 'Add Intermediate Sequence' );
     Add( $0102, [TTypeVR.vrSQ], 'Add Other Sequence' );
     Add( $0104, [TTypeVR.vrFD], 'Add Power' );
     Add( $0106, [TTypeVR.vrFD], 'Viewing Distance' );
     Add( $0121, [TTypeVR.vrSQ], 'Visual Acuity Type Code Sequence' );
     Add( $0122, [TTypeVR.vrSQ], 'Visual Acuity Right Eye Sequence' );
     Add( $0123, [TTypeVR.vrSQ], 'Visual Acuity Left Eye Sequence' );
     Add( $0124, [TTypeVR.vrSQ], 'Visual Acuity Both Eyes Open Sequence' );
     Add( $0125, [TTypeVR.vrCS], 'Viewing Distance Type' );
     Add( $0135, [TTypeVR.vrSS], 'Visual Acuity Modifiers' );
     Add( $0137, [TTypeVR.vrFD], 'Decimal Visual Acuity' );
     Add( $0139, [TTypeVR.vrLO], 'Optotype Detailed Definition' );
     Add( $0145, [TTypeVR.vrSQ], 'Referenced Refractive Measurements Sequence' );
     Add( $0146, [TTypeVR.vrFD], 'Sphere Power' );
     Add( $0147, [TTypeVR.vrFD], 'Cylinder Power' );
     Add( $0201, [TTypeVR.vrCS], 'Corneal Topography Surface' );
     Add( $0202, [TTypeVR.vrFL], 'Corneal Vertex Location' );
     Add( $0203, [TTypeVR.vrFL], 'Pupil Centroid X-Coordinate' );
     Add( $0204, [TTypeVR.vrFL], 'Pupil Centroid Y-Coordinate' );
     Add( $0205, [TTypeVR.vrFL], 'Equivalent Pupil Radius' );
     Add( $0207, [TTypeVR.vrSQ], 'Corneal Topography Map Type Code Sequence' );
     Add( $0208, [TTypeVR.vrIS], 'Vertices of the Outline of Pupil' );
     Add( $0210, [TTypeVR.vrSQ], 'Corneal Topography Mapping Normals Sequence' );
     Add( $0211, [TTypeVR.vrSQ], 'Maximum Corneal Curvature Sequence' );
     Add( $0212, [TTypeVR.vrFL], 'Maximum Corneal Curvature' );
     Add( $0213, [TTypeVR.vrFL], 'Maximum Corneal Curvature Location' );
     Add( $0215, [TTypeVR.vrSQ], 'Minimum Keratometric Sequence' );
     Add( $0218, [TTypeVR.vrSQ], 'Simulated Keratometric Cylinder Sequence' );
     Add( $0220, [TTypeVR.vrFL], 'Average Corneal Power' );
     Add( $0224, [TTypeVR.vrFL], 'Corneal I-S Value' );
     Add( $0227, [TTypeVR.vrFL], 'Analyzed Area' );
     Add( $0230, [TTypeVR.vrFL], 'Surface Regularity Index' );
     Add( $0232, [TTypeVR.vrFL], 'Surface Asymmetry Index' );
     Add( $0234, [TTypeVR.vrFL], 'Corneal Eccentricity Index' );
     Add( $0236, [TTypeVR.vrFL], 'Keratoconus Prediction Index' );
     Add( $0238, [TTypeVR.vrFL], 'Decimal Potential Visual Acuity' );
     Add( $0242, [TTypeVR.vrCS], 'Corneal Topography Map Quality Evaluation' );
     Add( $0244, [TTypeVR.vrSQ], 'Source Image Corneal Processed Data Sequence' );
     Add( $0247, [TTypeVR.vrFL], 'Corneal Point Location' );
     Add( $0248, [TTypeVR.vrCS], 'Corneal Point Estimated' );
     Add( $0249, [TTypeVR.vrFL], 'Axial Power' );
     Add( $0250, [TTypeVR.vrFL], 'Tangential Power' );
     Add( $0251, [TTypeVR.vrFL], 'Refractive Power' );
     Add( $0252, [TTypeVR.vrFL], 'Relative Elevation' );
     Add( $0253, [TTypeVR.vrFL], 'Corneal Wavefront' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
