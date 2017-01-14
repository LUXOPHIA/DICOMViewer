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
     Add( $0001, TKindVR.vrUS, 'Light Path Filter Pass-Through Wavelength' );
     Add( $0002, TKindVR.vrUS, 'Light Path Filter Pass Band' );
     Add( $0003, TKindVR.vrUS, 'Image Path Filter Pass-Through Wavelength' );
     Add( $0004, TKindVR.vrUS, 'Image Path Filter Pass Band' );
     Add( $0005, TKindVR.vrCS, 'Patient Eye Movement Commanded' );
     Add( $0006, TKindVR.vrSQ, 'Patient Eye Movement Command Code Sequence' );
     Add( $0007, TKindVR.vrFL, 'Spherical Lens Power' );
     Add( $0008, TKindVR.vrFL, 'Cylinder Lens Power' );
     Add( $0009, TKindVR.vrFL, 'Cylinder Axis' );
     Add( $000A, TKindVR.vrFL, 'Emmetropic Magnification' );
     Add( $000B, TKindVR.vrFL, 'Intra Ocular Pressure' );
     Add( $000C, TKindVR.vrFL, 'Horizontal Field of View' );
     Add( $000D, TKindVR.vrCS, 'Pupil Dilated' );
     Add( $000E, TKindVR.vrFL, 'Degree of Dilation' );
     Add( $0010, TKindVR.vrFL, 'Stereo Baseline Angle' );
     Add( $0011, TKindVR.vrFL, 'Stereo Baseline Displacement' );
     Add( $0012, TKindVR.vrFL, 'Stereo Horizontal Pixel Offset' );
     Add( $0013, TKindVR.vrFL, 'Stereo Vertical Pixel Offset' );
     Add( $0014, TKindVR.vrFL, 'Stereo Rotation' );
     Add( $0015, TKindVR.vrSQ, 'Acquisition Device Type Code Sequence' );
     Add( $0016, TKindVR.vrSQ, 'Illumination Type Code Sequence' );
     Add( $0017, TKindVR.vrSQ, 'Light Path Filter Type Stack Code Sequence' );
     Add( $0018, TKindVR.vrSQ, 'Image Path Filter Type Stack Code Sequence' );
     Add( $0019, TKindVR.vrSQ, 'Lenses Code Sequence' );
     Add( $001A, TKindVR.vrSQ, 'Channel Description Code Sequence' );
     Add( $001B, TKindVR.vrSQ, 'Refractive State Sequence' );
     Add( $001C, TKindVR.vrSQ, 'Mydriatic Agent Code Sequence' );
     Add( $001D, TKindVR.vrSQ, 'Relative Image Position Code Sequence' );
     Add( $001E, TKindVR.vrFL, 'Camera Angle of View' );
     Add( $0020, TKindVR.vrSQ, 'Stereo Pairs Sequence' );
     Add( $0021, TKindVR.vrSQ, 'Left Image Sequence' );
     Add( $0022, TKindVR.vrSQ, 'Right Image Sequence' );
     Add( $0028, TKindVR.vrCS, 'Stereo Pairs Present' );
     Add( $0030, TKindVR.vrFL, 'Axial Length of the Eye' );
     Add( $0031, TKindVR.vrSQ, 'Ophthalmic Frame Location Sequence' );
     Add( $0032, TKindVR.vrFL, 'Reference Coordinates' );
     Add( $0035, TKindVR.vrFL, 'Depth Spatial Resolution' );
     Add( $0036, TKindVR.vrFL, 'Maximum Depth Distortion' );
     Add( $0037, TKindVR.vrFL, 'Along-scan Spatial Resolution' );
     Add( $0038, TKindVR.vrFL, 'Maximum Along-scan Distortion' );
     Add( $0039, TKindVR.vrCS, 'Ophthalmic Image Orientation' );
     Add( $0041, TKindVR.vrFL, 'Depth of Transverse Image' );
     Add( $0042, TKindVR.vrSQ, 'Mydriatic Agent Concentration Units Sequence' );
     Add( $0048, TKindVR.vrFL, 'Across-scan Spatial Resolution' );
     Add( $0049, TKindVR.vrFL, 'Maximum Across-scan Distortion' );
     Add( $004E, TKindVR.vrDS, 'Mydriatic Agent Concentration' );
     Add( $0055, TKindVR.vrFL, 'Illumination Wave Length' );
     Add( $0056, TKindVR.vrFL, 'Illumination Power' );
     Add( $0057, TKindVR.vrFL, 'Illumination Bandwidth' );
     Add( $0058, TKindVR.vrSQ, 'Mydriatic Agent Sequence' );
     Add( $1007, TKindVR.vrSQ, 'Ophthalmic Axial Measurements Right Eye Sequence' );
     Add( $1008, TKindVR.vrSQ, 'Ophthalmic Axial Measurements Left Eye Sequence' );
     Add( $1009, TKindVR.vrCS, 'Ophthalmic Axial Measurements Device Type' );
     Add( $1010, TKindVR.vrCS, 'Ophthalmic Axial Length Measurements Type' );
     Add( $1012, TKindVR.vrSQ, 'Ophthalmic Axial Length Sequence' );
     Add( $1019, TKindVR.vrFL, 'Ophthalmic Axial Length' );
     Add( $1024, TKindVR.vrSQ, 'Lens Status Code Sequence' );
     Add( $1025, TKindVR.vrSQ, 'Vitreous Status Code Sequence' );
     Add( $1028, TKindVR.vrSQ, 'IOL Formula Code Sequence' );
     Add( $1029, TKindVR.vrLO, 'IOL Formula Detail' );
     Add( $1033, TKindVR.vrFL, 'Keratometer Index' );
     Add( $1035, TKindVR.vrSQ, 'Source of Ophthalmic Axial Length Code Sequence' );
     Add( $1037, TKindVR.vrFL, 'Target Refraction' );
     Add( $1039, TKindVR.vrCS, 'Refractive Procedure Occurred' );
     Add( $1040, TKindVR.vrSQ, 'Refractive Surgery Type Code Sequence' );
     Add( $1044, TKindVR.vrSQ, 'Ophthalmic Ultrasound Method Code Sequence' );
     Add( $1050, TKindVR.vrSQ, 'Ophthalmic Axial Length Measurements Sequence' );
     Add( $1053, TKindVR.vrFL, 'IOL Power' );
     Add( $1054, TKindVR.vrFL, 'Predicted Refractive Error' );
     Add( $1059, TKindVR.vrFL, 'Ophthalmic Axial Length Velocity' );
     Add( $1065, TKindVR.vrLO, 'Lens Status Description' );
     Add( $1066, TKindVR.vrLO, 'Vitreous Status Description' );
     Add( $1090, TKindVR.vrSQ, 'IOL Power Sequence' );
     Add( $1092, TKindVR.vrSQ, 'Lens Constant Sequence' );
     Add( $1093, TKindVR.vrLO, 'IOL Manufacturer' );
     Add( $1094, TKindVR.vrLO, 'Lens Constant Description' );
     Add( $1095, TKindVR.vrLO, 'Implant Name' );
     Add( $1096, TKindVR.vrSQ, 'Keratometry Measurement Type Code Sequence' );
     Add( $1097, TKindVR.vrLO, 'Implant Part Number' );
     Add( $1100, TKindVR.vrSQ, 'Referenced Ophthalmic Axial Measurements Sequence' );
     Add( $1101, TKindVR.vrSQ, 'Ophthalmic Axial Length Measurements Segment Name Code Sequence' );
     Add( $1103, TKindVR.vrSQ, 'Refractive Error Before Refractive Surgery Code Sequence' );
     Add( $1121, TKindVR.vrFL, 'IOL Power For Exact Emmetropia' );
     Add( $1122, TKindVR.vrFL, 'IOL Power For Exact Target Refraction' );
     Add( $1125, TKindVR.vrSQ, 'Anterior Chamber Depth Definition Code Sequence' );
     Add( $1127, TKindVR.vrSQ, 'Lens Thickness Sequence' );
     Add( $1128, TKindVR.vrSQ, 'Anterior Chamber Depth Sequence' );
     Add( $1130, TKindVR.vrFL, 'Lens Thickness' );
     Add( $1131, TKindVR.vrFL, 'Anterior Chamber Depth' );
     Add( $1132, TKindVR.vrSQ, 'Source of Lens Thickness Data Code Sequence' );
     Add( $1133, TKindVR.vrSQ, 'Source of Anterior Chamber Depth Data Code Sequence' );
     Add( $1134, TKindVR.vrSQ, 'Source of Refractive Measurements Sequence' );
     Add( $1135, TKindVR.vrSQ, 'Source of Refractive Measurements Code Sequence' );
     Add( $1140, TKindVR.vrCS, 'Ophthalmic Axial Length Measurement Modified' );
     Add( $1150, TKindVR.vrSQ, 'Ophthalmic Axial Length Data Source Code Sequence' );
     Add( $1153, TKindVR.vrSQ, 'Ophthalmic Axial Length Acquisition Method Code Sequence' );
     Add( $1155, TKindVR.vrFL, 'Signal to Noise Ratio' );
     Add( $1159, TKindVR.vrLO, 'Ophthalmic Axial Length Data Source Description' );
     Add( $1210, TKindVR.vrSQ, 'Ophthalmic Axial Length Measurements Total Length Sequence' );
     Add( $1211, TKindVR.vrSQ, 'Ophthalmic Axial Length Measurements Segmental Length Sequence' );
     Add( $1212, TKindVR.vrSQ, 'Ophthalmic Axial Length Measurements Length Summation Sequence' );
     Add( $1220, TKindVR.vrSQ, 'Ultrasound Ophthalmic Axial Length Measurements Sequence' );
     Add( $1225, TKindVR.vrSQ, 'Optical Ophthalmic Axial Length Measurements Sequence' );
     Add( $1230, TKindVR.vrSQ, 'Ultrasound Selected Ophthalmic Axial Length Sequence' );
     Add( $1250, TKindVR.vrSQ, 'Ophthalmic Axial Length Selection Method Code Sequence' );
     Add( $1255, TKindVR.vrSQ, 'Optical Selected Ophthalmic Axial Length Sequence' );
     Add( $1257, TKindVR.vrSQ, 'Selected Segmental Ophthalmic Axial Length Sequence' );
     Add( $1260, TKindVR.vrSQ, 'Selected Total Ophthalmic Axial Length Sequence' );
     Add( $1262, TKindVR.vrSQ, 'Ophthalmic Axial Length Quality Metric Sequence' );
     Add( $1265, TKindVR.vrSQ, 'Ophthalmic Axial Length Quality Metric Type Code Sequence' );
     Add( $1273, TKindVR.vrLO, 'Ophthalmic Axial Length Quality Metric Type Description' );
     Add( $1300, TKindVR.vrSQ, 'Intraocular Lens Calculations Right Eye Sequence' );
     Add( $1310, TKindVR.vrSQ, 'Intraocular Lens Calculations Left Eye Sequence' );
     Add( $1330, TKindVR.vrSQ, 'Referenced Ophthalmic Axial Length Measurement QC Image Sequence' );
     Add( $1415, TKindVR.vrCS, 'Ophthalmic Mapping Device Type' );
     Add( $1420, TKindVR.vrSQ, 'Acquisition Method Code Sequence' );
     Add( $1423, TKindVR.vrSQ, 'Acquisition Method Algorithm Sequence' );
     Add( $1436, TKindVR.vrSQ, 'Ophthalmic Thickness Map Type Code Sequence' );
     Add( $1443, TKindVR.vrSQ, 'Ophthalmic Thickness Mapping Normals Sequence' );
     Add( $1445, TKindVR.vrSQ, 'Retinal Thickness Definition Code Sequence' );
     Add( $1450, TKindVR.vrSQ, 'Pixel Value Mapping to Coded Concept Sequence' );
     Add( $1452, TKindVR.vrUSSS, 'Mapped Pixel Value' );
     Add( $1454, TKindVR.vrLO, 'Pixel Value Mapping Explanation' );
     Add( $1458, TKindVR.vrSQ, 'Ophthalmic Thickness Map Quality Threshold Sequence' );
     Add( $1460, TKindVR.vrFL, 'Ophthalmic Thickness Map Threshold Quality Rating' );
     Add( $1463, TKindVR.vrFL, 'Anatomic Structure Reference Point' );
     Add( $1465, TKindVR.vrSQ, 'Registration to Localizer Sequence' );
     Add( $1466, TKindVR.vrCS, 'Registered Localizer Units' );
     Add( $1467, TKindVR.vrFL, 'Registered Localizer Top Left Hand Corner' );
     Add( $1468, TKindVR.vrFL, 'Registered Localizer Bottom Right Hand Corner' );
     Add( $1470, TKindVR.vrSQ, 'Ophthalmic Thickness Map Quality Rating Sequence' );
     Add( $1472, TKindVR.vrSQ, 'Relevant OPT Attributes Sequence' );
     Add( $1512, TKindVR.vrSQ, 'Transformation Method Code Sequence' );
     Add( $1513, TKindVR.vrSQ, 'Transformation Algorithm Sequence' );
     Add( $1515, TKindVR.vrCS, 'Ophthalmic Axial Length Method' );
     Add( $1517, TKindVR.vrFL, 'Ophthalmic FOV' );
     Add( $1518, TKindVR.vrSQ, 'Two Dimensional to Three Dimensional Map Sequence' );
     Add( $1525, TKindVR.vrSQ, 'Wide Field Ophthalmic Photography Quality Rating Sequence' );
     Add( $1526, TKindVR.vrSQ, 'Wide Field Ophthalmic Photography Quality Threshold Sequence' );
     Add( $1527, TKindVR.vrFL, 'Wide Field Ophthalmic Photography Threshold Quality Rating' );
     Add( $1528, TKindVR.vrFL, 'X Coordinates Center Pixel View Angle' );
     Add( $1529, TKindVR.vrFL, 'Y Coordinates Center Pixel View Angle' );
     Add( $1530, TKindVR.vrUL, 'Number of Map Points' );
     Add( $1531, TKindVR.vrOF, 'Two Dimensional to Three Dimensional Map Data' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
