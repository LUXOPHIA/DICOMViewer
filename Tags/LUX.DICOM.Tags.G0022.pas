unit LUX.DICOM.Tags.G0022;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems0022

     TDICOMElems0022 = class( TDICOMElems )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems0022

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TDICOMElems0022.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0001, [TTypeVR.vrUS], 'Light Path Filter Pass-Through Wavelength' );
     Add( $0002, [TTypeVR.vrUS], 'Light Path Filter Pass Band' );
     Add( $0003, [TTypeVR.vrUS], 'Image Path Filter Pass-Through Wavelength' );
     Add( $0004, [TTypeVR.vrUS], 'Image Path Filter Pass Band' );
     Add( $0005, [TTypeVR.vrCS], 'Patient Eye Movement Commanded' );
     Add( $0006, [TTypeVR.vrSQ], 'Patient Eye Movement Command Code Sequence' );
     Add( $0007, [TTypeVR.vrFL], 'Spherical Lens Power' );
     Add( $0008, [TTypeVR.vrFL], 'Cylinder Lens Power' );
     Add( $0009, [TTypeVR.vrFL], 'Cylinder Axis' );
     Add( $000A, [TTypeVR.vrFL], 'Emmetropic Magnification' );
     Add( $000B, [TTypeVR.vrFL], 'Intra Ocular Pressure' );
     Add( $000C, [TTypeVR.vrFL], 'Horizontal Field of View' );
     Add( $000D, [TTypeVR.vrCS], 'Pupil Dilated' );
     Add( $000E, [TTypeVR.vrFL], 'Degree of Dilation' );
     Add( $0010, [TTypeVR.vrFL], 'Stereo Baseline Angle' );
     Add( $0011, [TTypeVR.vrFL], 'Stereo Baseline Displacement' );
     Add( $0012, [TTypeVR.vrFL], 'Stereo Horizontal Pixel Offset' );
     Add( $0013, [TTypeVR.vrFL], 'Stereo Vertical Pixel Offset' );
     Add( $0014, [TTypeVR.vrFL], 'Stereo Rotation' );
     Add( $0015, [TTypeVR.vrSQ], 'Acquisition Device Type Code Sequence' );
     Add( $0016, [TTypeVR.vrSQ], 'Illumination Type Code Sequence' );
     Add( $0017, [TTypeVR.vrSQ], 'Light Path Filter Type Stack Code Sequence' );
     Add( $0018, [TTypeVR.vrSQ], 'Image Path Filter Type Stack Code Sequence' );
     Add( $0019, [TTypeVR.vrSQ], 'Lenses Code Sequence' );
     Add( $001A, [TTypeVR.vrSQ], 'Channel Description Code Sequence' );
     Add( $001B, [TTypeVR.vrSQ], 'Refractive State Sequence' );
     Add( $001C, [TTypeVR.vrSQ], 'Mydriatic Agent Code Sequence' );
     Add( $001D, [TTypeVR.vrSQ], 'Relative Image Position Code Sequence' );
     Add( $001E, [TTypeVR.vrFL], 'Camera Angle of View' );
     Add( $0020, [TTypeVR.vrSQ], 'Stereo Pairs Sequence' );
     Add( $0021, [TTypeVR.vrSQ], 'Left Image Sequence' );
     Add( $0022, [TTypeVR.vrSQ], 'Right Image Sequence' );
     Add( $0028, [TTypeVR.vrCS], 'Stereo Pairs Present' );
     Add( $0030, [TTypeVR.vrFL], 'Axial Length of the Eye' );
     Add( $0031, [TTypeVR.vrSQ], 'Ophthalmic Frame Location Sequence' );
     Add( $0032, [TTypeVR.vrFL], 'Reference Coordinates' );
     Add( $0035, [TTypeVR.vrFL], 'Depth Spatial Resolution' );
     Add( $0036, [TTypeVR.vrFL], 'Maximum Depth Distortion' );
     Add( $0037, [TTypeVR.vrFL], 'Along-scan Spatial Resolution' );
     Add( $0038, [TTypeVR.vrFL], 'Maximum Along-scan Distortion' );
     Add( $0039, [TTypeVR.vrCS], 'Ophthalmic Image Orientation' );
     Add( $0041, [TTypeVR.vrFL], 'Depth of Transverse Image' );
     Add( $0042, [TTypeVR.vrSQ], 'Mydriatic Agent Concentration Units Sequence' );
     Add( $0048, [TTypeVR.vrFL], 'Across-scan Spatial Resolution' );
     Add( $0049, [TTypeVR.vrFL], 'Maximum Across-scan Distortion' );
     Add( $004E, [TTypeVR.vrDS], 'Mydriatic Agent Concentration' );
     Add( $0055, [TTypeVR.vrFL], 'Illumination Wave Length' );
     Add( $0056, [TTypeVR.vrFL], 'Illumination Power' );
     Add( $0057, [TTypeVR.vrFL], 'Illumination Bandwidth' );
     Add( $0058, [TTypeVR.vrSQ], 'Mydriatic Agent Sequence' );
     Add( $1007, [TTypeVR.vrSQ], 'Ophthalmic Axial Measurements Right Eye Sequence' );
     Add( $1008, [TTypeVR.vrSQ], 'Ophthalmic Axial Measurements Left Eye Sequence' );
     Add( $1009, [TTypeVR.vrCS], 'Ophthalmic Axial Measurements Device Type' );
     Add( $1010, [TTypeVR.vrCS], 'Ophthalmic Axial Length Measurements Type' );
     Add( $1012, [TTypeVR.vrSQ], 'Ophthalmic Axial Length Sequence' );
     Add( $1019, [TTypeVR.vrFL], 'Ophthalmic Axial Length' );
     Add( $1024, [TTypeVR.vrSQ], 'Lens Status Code Sequence' );
     Add( $1025, [TTypeVR.vrSQ], 'Vitreous Status Code Sequence' );
     Add( $1028, [TTypeVR.vrSQ], 'IOL Formula Code Sequence' );
     Add( $1029, [TTypeVR.vrLO], 'IOL Formula Detail' );
     Add( $1033, [TTypeVR.vrFL], 'Keratometer Index' );
     Add( $1035, [TTypeVR.vrSQ], 'Source of Ophthalmic Axial Length Code Sequence' );
     Add( $1037, [TTypeVR.vrFL], 'Target Refraction' );
     Add( $1039, [TTypeVR.vrCS], 'Refractive Procedure Occurred' );
     Add( $1040, [TTypeVR.vrSQ], 'Refractive Surgery Type Code Sequence' );
     Add( $1044, [TTypeVR.vrSQ], 'Ophthalmic Ultrasound Method Code Sequence' );
     Add( $1050, [TTypeVR.vrSQ], 'Ophthalmic Axial Length Measurements Sequence' );
     Add( $1053, [TTypeVR.vrFL], 'IOL Power' );
     Add( $1054, [TTypeVR.vrFL], 'Predicted Refractive Error' );
     Add( $1059, [TTypeVR.vrFL], 'Ophthalmic Axial Length Velocity' );
     Add( $1065, [TTypeVR.vrLO], 'Lens Status Description' );
     Add( $1066, [TTypeVR.vrLO], 'Vitreous Status Description' );
     Add( $1090, [TTypeVR.vrSQ], 'IOL Power Sequence' );
     Add( $1092, [TTypeVR.vrSQ], 'Lens Constant Sequence' );
     Add( $1093, [TTypeVR.vrLO], 'IOL Manufacturer' );
     Add( $1094, [TTypeVR.vrLO], 'Lens Constant Description' );
     Add( $1095, [TTypeVR.vrLO], 'Implant Name' );
     Add( $1096, [TTypeVR.vrSQ], 'Keratometry Measurement Type Code Sequence' );
     Add( $1097, [TTypeVR.vrLO], 'Implant Part Number' );
     Add( $1100, [TTypeVR.vrSQ], 'Referenced Ophthalmic Axial Measurements Sequence' );
     Add( $1101, [TTypeVR.vrSQ], 'Ophthalmic Axial Length Measurements Segment Name Code Sequence' );
     Add( $1103, [TTypeVR.vrSQ], 'Refractive Error Before Refractive Surgery Code Sequence' );
     Add( $1121, [TTypeVR.vrFL], 'IOL Power For Exact Emmetropia' );
     Add( $1122, [TTypeVR.vrFL], 'IOL Power For Exact Target Refraction' );
     Add( $1125, [TTypeVR.vrSQ], 'Anterior Chamber Depth Definition Code Sequence' );
     Add( $1127, [TTypeVR.vrSQ], 'Lens Thickness Sequence' );
     Add( $1128, [TTypeVR.vrSQ], 'Anterior Chamber Depth Sequence' );
     Add( $1130, [TTypeVR.vrFL], 'Lens Thickness' );
     Add( $1131, [TTypeVR.vrFL], 'Anterior Chamber Depth' );
     Add( $1132, [TTypeVR.vrSQ], 'Source of Lens Thickness Data Code Sequence' );
     Add( $1133, [TTypeVR.vrSQ], 'Source of Anterior Chamber Depth Data Code Sequence' );
     Add( $1134, [TTypeVR.vrSQ], 'Source of Refractive Measurements Sequence' );
     Add( $1135, [TTypeVR.vrSQ], 'Source of Refractive Measurements Code Sequence' );
     Add( $1140, [TTypeVR.vrCS], 'Ophthalmic Axial Length Measurement Modified' );
     Add( $1150, [TTypeVR.vrSQ], 'Ophthalmic Axial Length Data Source Code Sequence' );
     Add( $1153, [TTypeVR.vrSQ], 'Ophthalmic Axial Length Acquisition Method Code Sequence' );
     Add( $1155, [TTypeVR.vrFL], 'Signal to Noise Ratio' );
     Add( $1159, [TTypeVR.vrLO], 'Ophthalmic Axial Length Data Source Description' );
     Add( $1210, [TTypeVR.vrSQ], 'Ophthalmic Axial Length Measurements Total Length Sequence' );
     Add( $1211, [TTypeVR.vrSQ], 'Ophthalmic Axial Length Measurements Segmental Length Sequence' );
     Add( $1212, [TTypeVR.vrSQ], 'Ophthalmic Axial Length Measurements Length Summation Sequence' );
     Add( $1220, [TTypeVR.vrSQ], 'Ultrasound Ophthalmic Axial Length Measurements Sequence' );
     Add( $1225, [TTypeVR.vrSQ], 'Optical Ophthalmic Axial Length Measurements Sequence' );
     Add( $1230, [TTypeVR.vrSQ], 'Ultrasound Selected Ophthalmic Axial Length Sequence' );
     Add( $1250, [TTypeVR.vrSQ], 'Ophthalmic Axial Length Selection Method Code Sequence' );
     Add( $1255, [TTypeVR.vrSQ], 'Optical Selected Ophthalmic Axial Length Sequence' );
     Add( $1257, [TTypeVR.vrSQ], 'Selected Segmental Ophthalmic Axial Length Sequence' );
     Add( $1260, [TTypeVR.vrSQ], 'Selected Total Ophthalmic Axial Length Sequence' );
     Add( $1262, [TTypeVR.vrSQ], 'Ophthalmic Axial Length Quality Metric Sequence' );
     Add( $1265, [TTypeVR.vrSQ], 'Ophthalmic Axial Length Quality Metric Type Code Sequence' );
     Add( $1273, [TTypeVR.vrLO], 'Ophthalmic Axial Length Quality Metric Type Description' );
     Add( $1300, [TTypeVR.vrSQ], 'Intraocular Lens Calculations Right Eye Sequence' );
     Add( $1310, [TTypeVR.vrSQ], 'Intraocular Lens Calculations Left Eye Sequence' );
     Add( $1330, [TTypeVR.vrSQ], 'Referenced Ophthalmic Axial Length Measurement QC Image Sequence' );
     Add( $1415, [TTypeVR.vrCS], 'Ophthalmic Mapping Device Type' );
     Add( $1420, [TTypeVR.vrSQ], 'Acquisition Method Code Sequence' );
     Add( $1423, [TTypeVR.vrSQ], 'Acquisition Method Algorithm Sequence' );
     Add( $1436, [TTypeVR.vrSQ], 'Ophthalmic Thickness Map Type Code Sequence' );
     Add( $1443, [TTypeVR.vrSQ], 'Ophthalmic Thickness Mapping Normals Sequence' );
     Add( $1445, [TTypeVR.vrSQ], 'Retinal Thickness Definition Code Sequence' );
     Add( $1450, [TTypeVR.vrSQ], 'Pixel Value Mapping to Coded Concept Sequence' );
     Add( $1452, [TTypeVR.vrUS,TTypeVR.vrSS], 'Mapped Pixel Value' );
     Add( $1454, [TTypeVR.vrLO], 'Pixel Value Mapping Explanation' );
     Add( $1458, [TTypeVR.vrSQ], 'Ophthalmic Thickness Map Quality Threshold Sequence' );
     Add( $1460, [TTypeVR.vrFL], 'Ophthalmic Thickness Map Threshold Quality Rating' );
     Add( $1463, [TTypeVR.vrFL], 'Anatomic Structure Reference Point' );
     Add( $1465, [TTypeVR.vrSQ], 'Registration to Localizer Sequence' );
     Add( $1466, [TTypeVR.vrCS], 'Registered Localizer Units' );
     Add( $1467, [TTypeVR.vrFL], 'Registered Localizer Top Left Hand Corner' );
     Add( $1468, [TTypeVR.vrFL], 'Registered Localizer Bottom Right Hand Corner' );
     Add( $1470, [TTypeVR.vrSQ], 'Ophthalmic Thickness Map Quality Rating Sequence' );
     Add( $1472, [TTypeVR.vrSQ], 'Relevant OPT Attributes Sequence' );
     Add( $1512, [TTypeVR.vrSQ], 'Transformation Method Code Sequence' );
     Add( $1513, [TTypeVR.vrSQ], 'Transformation Algorithm Sequence' );
     Add( $1515, [TTypeVR.vrCS], 'Ophthalmic Axial Length Method' );
     Add( $1517, [TTypeVR.vrFL], 'Ophthalmic FOV' );
     Add( $1518, [TTypeVR.vrSQ], 'Two Dimensional to Three Dimensional Map Sequence' );
     Add( $1525, [TTypeVR.vrSQ], 'Wide Field Ophthalmic Photography Quality Rating Sequence' );
     Add( $1526, [TTypeVR.vrSQ], 'Wide Field Ophthalmic Photography Quality Threshold Sequence' );
     Add( $1527, [TTypeVR.vrFL], 'Wide Field Ophthalmic Photography Threshold Quality Rating' );
     Add( $1528, [TTypeVR.vrFL], 'X Coordinates Center Pixel View Angle' );
     Add( $1529, [TTypeVR.vrFL], 'Y Coordinates Center Pixel View Angle' );
     Add( $1530, [TTypeVR.vrUL], 'Number of Map Points' );
     Add( $1531, [TTypeVR.vrOF], 'Two Dimensional to Three Dimensional Map Data' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
