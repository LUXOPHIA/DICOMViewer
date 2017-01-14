unit LUX.DICOM.Tags.G0028;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems0028

     TDICOMElems0028 = class( TDICOMElems )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems0028

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TDICOMElems0028.Create;
begin
     inherited;

     Add( $0000, TKindVR.vrUL, 'Image Presentation Group Length' );
     Add( $0030, TKindVR.vrDS, 'Pixel Spacing' );

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0002, TKindVR.vrUS, 'Samples per Pixel' );
     Add( $0003, TKindVR.vrUS, 'Samples per Pixel Used' );
     Add( $0004, TKindVR.vrCS, 'Photometric Interpretation' );
     Add( $0005, TKindVR.vrUS, 'Image Dimensions' );
     Add( $0006, TKindVR.vrUS, 'Planar Configuration' );
     Add( $0008, TKindVR.vrIS, 'Number of Frames' );
     Add( $0009, TKindVR.vrAT, 'Frame Increment Pointer' );
     Add( $000A, TKindVR.vrAT, 'Frame Dimension Pointer' );
     Add( $0010, TKindVR.vrUS, 'Rows' );
     Add( $0011, TKindVR.vrUS, 'Columns' );
     Add( $0012, TKindVR.vrUS, 'Planes' );
     Add( $0014, TKindVR.vrUS, 'Ultrasound Color Data Present' );
     Add( $0020, TKindVR.vr00, '' );  //For some Data Elements, no Name or Keyword or VR or VM is specified; these are "placeholders" that are not assigned but will not be reused.
     Add( $0031, TKindVR.vrDS, 'Zoom Factor' );
     Add( $0032, TKindVR.vrDS, 'Zoom Center' );
     Add( $0034, TKindVR.vrIS, 'Pixel Aspect Ratio' );
     Add( $0040, TKindVR.vrCS, 'Image Format' );
     Add( $0050, TKindVR.vrLO, 'Manipulated Image' );
     Add( $0051, TKindVR.vrCS, 'Corrected Image' );
     Add( $005F, TKindVR.vrLO, 'Compression Recognition Code' );
     Add( $0060, TKindVR.vrCS, 'Compression Code' );
     Add( $0061, TKindVR.vrSH, 'Compression Originator' );
     Add( $0062, TKindVR.vrLO, 'Compression Label' );
     Add( $0063, TKindVR.vrSH, 'Compression Description' );
     Add( $0065, TKindVR.vrCS, 'Compression Sequence' );
     Add( $0066, TKindVR.vrAT, 'Compression Step Pointers' );
     Add( $0068, TKindVR.vrUS, 'Repeat Interval' );
     Add( $0069, TKindVR.vrUS, 'Bits Grouped' );
     Add( $0070, TKindVR.vrUS, 'Perimeter Table' );
     Add( $0071, TKindVR.vrUSSS, 'Perimeter Value' );
     Add( $0080, TKindVR.vrUS, 'Predictor Rows' );
     Add( $0081, TKindVR.vrUS, 'Predictor Columns' );
     Add( $0082, TKindVR.vrUS, 'Predictor Constants' );
     Add( $0090, TKindVR.vrCS, 'Blocked Pixels' );
     Add( $0091, TKindVR.vrUS, 'Block Rows' );
     Add( $0092, TKindVR.vrUS, 'Block Columns' );
     Add( $0093, TKindVR.vrUS, 'Row Overlap' );
     Add( $0094, TKindVR.vrUS, 'Column Overlap' );
     Add( $0100, TKindVR.vrUS, 'Bits Allocated' );
     Add( $0101, TKindVR.vrUS, 'Bits Stored' );
     Add( $0102, TKindVR.vrUS, 'High Bit' );
     Add( $0103, TKindVR.vrUS, 'Pixel Representation' );
     Add( $0104, TKindVR.vrUSSS, 'Smallest Valid Pixel Value' );
     Add( $0105, TKindVR.vrUSSS, 'Largest Valid Pixel Value' );
     Add( $0106, TKindVR.vrUSSS, 'Smallest Image Pixel Value' );
     Add( $0107, TKindVR.vrUSSS, 'Largest Image Pixel Value' );
     Add( $0108, TKindVR.vrUSSS, 'Smallest Pixel Value in Series' );
     Add( $0109, TKindVR.vrUSSS, 'Largest Pixel Value in Series' );
     Add( $0110, TKindVR.vrUSSS, 'Smallest Image Pixel Value in Plane' );
     Add( $0111, TKindVR.vrUSSS, 'Largest Image Pixel Value in Plane' );
     Add( $0120, TKindVR.vrUSSS, 'Pixel Padding Value' );
     Add( $0121, TKindVR.vrUSSS, 'Pixel Padding Range Limit' );
     Add( $0122, TKindVR.vrFL, 'Float Pixel Padding Value' );
     Add( $0123, TKindVR.vrFD, 'Double Float Pixel Padding Value' );
     Add( $0124, TKindVR.vrFL, 'Float Pixel Padding Range Limit' );
     Add( $0125, TKindVR.vrFD, 'Double Float Pixel Padding Range Limit' );
     Add( $0200, TKindVR.vrUS, 'Image Location' );
     Add( $0300, TKindVR.vrCS, 'Quality Control Image' );
     Add( $0301, TKindVR.vrCS, 'Burned In Annotation' );
     Add( $0302, TKindVR.vrCS, 'Recognizable Visual Features' );
     Add( $0303, TKindVR.vrCS, 'Longitudinal Temporal Information Modified' );
     Add( $0304, TKindVR.vrUI, 'Referenced Color Palette Instance UID' );
     Add( $0400, TKindVR.vrLO, 'Transform Label' );
     Add( $0401, TKindVR.vrLO, 'Transform Version Number' );
     Add( $0402, TKindVR.vrUS, 'Number of Transform Steps' );
     Add( $0403, TKindVR.vrLO, 'Sequence of Compressed Data' );
     Add( $0404, TKindVR.vrAT, 'Details of Coefficients' );
   //Add( $04x0, TKindVR.vrUS, 'Rows For Nth Order Coefficients' );
   //Add( $04x1, TKindVR.vrUS, 'Columns For Nth Order Coefficients' );
   //Add( $04x2, TKindVR.vrLO, 'Coefficient Coding' );
   //Add( $04x3, TKindVR.vrAT, 'Coefficient Coding Pointers' );
     Add( $0700, TKindVR.vrLO, 'DCT Label' );
     Add( $0701, TKindVR.vrCS, 'Data Block Description' );
     Add( $0702, TKindVR.vrAT, 'Data Block' );
     Add( $0710, TKindVR.vrUS, 'Normalization Factor Format' );
     Add( $0720, TKindVR.vrUS, 'Zonal Map Number Format' );
     Add( $0721, TKindVR.vrAT, 'Zonal Map Location' );
     Add( $0722, TKindVR.vrUS, 'Zonal Map Format' );
     Add( $0730, TKindVR.vrUS, 'Adaptive Map Format' );
     Add( $0740, TKindVR.vrUS, 'Code Number Format' );
   //Add( $08x0, TKindVR.vrCS, 'Code Label' );
   //Add( $08x2, TKindVR.vrUS, 'Number of Tables' );
   //Add( $08x3, TKindVR.vrAT, 'Code Table Location' );
   //Add( $08x4, TKindVR.vrUS, 'Bits For Code Word' );
   //Add( $08x8, TKindVR.vrAT, 'Image Data Location' );
     Add( $0A02, TKindVR.vrCS, 'Pixel Spacing Calibration Type' );
     Add( $0A04, TKindVR.vrLO, 'Pixel Spacing Calibration Description' );
     Add( $1040, TKindVR.vrCS, 'Pixel Intensity Relationship' );
     Add( $1041, TKindVR.vrSS, 'Pixel Intensity Relationship Sign' );
     Add( $1050, TKindVR.vrDS, 'Window Center' );
     Add( $1051, TKindVR.vrDS, 'Window Width' );
     Add( $1052, TKindVR.vrDS, 'Rescale Intercept' );
     Add( $1053, TKindVR.vrDS, 'Rescale Slope' );
     Add( $1054, TKindVR.vrLO, 'Rescale Type' );
     Add( $1055, TKindVR.vrLO, 'Window Center & Width Explanation' );
     Add( $1056, TKindVR.vrCS, 'VOI LUT Function' );
     Add( $1080, TKindVR.vrCS, 'Gray Scale' );
     Add( $1090, TKindVR.vrCS, 'Recommended Viewing Mode' );
     Add( $1100, TKindVR.vrUSSS, 'Gray Lookup Table Descriptor' );
     Add( $1101, TKindVR.vrUSSS, 'Red Palette Color Lookup Table Descriptor' );
     Add( $1102, TKindVR.vrUSSS, 'Green Palette Color Lookup Table Descriptor' );
     Add( $1103, TKindVR.vrUSSS, 'Blue Palette Color Lookup Table Descriptor' );
     Add( $1104, TKindVR.vrUS, 'Alpha Palette Color Lookup Table Descriptor' );
     Add( $1111, TKindVR.vrUSSS, 'Large Red Palette Color Lookup Table Descriptor' );
     Add( $1112, TKindVR.vrUSSS, 'Large Green Palette Color Lookup Table Descriptor' );
     Add( $1113, TKindVR.vrUSSS, 'Large Blue Palette Color Lookup Table Descriptor' );
     Add( $1199, TKindVR.vrUI, 'Palette Color Lookup Table UID' );
     Add( $1200, TKindVR.vrUSSSOW, 'Gray Lookup Table Data' );
     Add( $1201, TKindVR.vrOW, 'Red Palette Color Lookup Table Data' );
     Add( $1202, TKindVR.vrOW, 'Green Palette Color Lookup Table Data' );
     Add( $1203, TKindVR.vrOW, 'Blue Palette Color Lookup Table Data' );
     Add( $1204, TKindVR.vrOW, 'Alpha Palette Color Lookup Table Data' );
     Add( $1211, TKindVR.vrOW, 'Large Red Palette Color Lookup Table Data' );
     Add( $1212, TKindVR.vrOW, 'Large Green Palette Color Lookup Table Data' );
     Add( $1213, TKindVR.vrOW, 'Large Blue Palette Color Lookup Table Data' );
     Add( $1214, TKindVR.vrUI, 'Large Palette Color Lookup Table UID' );
     Add( $1221, TKindVR.vrOW, 'Segmented Red Palette Color Lookup Table Data' );
     Add( $1222, TKindVR.vrOW, 'Segmented Green Palette Color Lookup Table Data' );
     Add( $1223, TKindVR.vrOW, 'Segmented Blue Palette Color Lookup Table Data' );
     Add( $1224, TKindVR.vrOW, 'Segmented Alpha Palette Color Lookup Table Data' );
     Add( $1230, TKindVR.vrSQ, 'Stored Value Color Range Sequence' );
     Add( $1231, TKindVR.vrFD, 'Minimum Stored Value Mapped' );
     Add( $1232, TKindVR.vrFD, 'Maximum Stored Value Mapped' );
     Add( $1300, TKindVR.vrCS, 'Breast Implant Present' );
     Add( $1350, TKindVR.vrCS, 'Partial View' );
     Add( $1351, TKindVR.vrST, 'Partial View Description' );
     Add( $1352, TKindVR.vrSQ, 'Partial View Code Sequence' );
     Add( $135A, TKindVR.vrCS, 'Spatial Locations Preserved' );
     Add( $1401, TKindVR.vrSQ, 'Data Frame Assignment Sequence' );
     Add( $1402, TKindVR.vrCS, 'Data Path Assignment' );
     Add( $1403, TKindVR.vrUS, 'Bits Mapped to Color Lookup Table' );
     Add( $1404, TKindVR.vrSQ, 'Blending LUT 1 Sequence' );
     Add( $1405, TKindVR.vrCS, 'Blending LUT 1 Transfer Function' );
     Add( $1406, TKindVR.vrFD, 'Blending Weight Constant' );
     Add( $1407, TKindVR.vrUS, 'Blending Lookup Table Descriptor' );
     Add( $1408, TKindVR.vrOW, 'Blending Lookup Table Data' );
     Add( $140B, TKindVR.vrSQ, 'Enhanced Palette Color Lookup Table Sequence' );
     Add( $140C, TKindVR.vrSQ, 'Blending LUT 2 Sequence' );
     Add( $140D, TKindVR.vrCS, 'Blending LUT 2 Transfer Function' );
     Add( $140E, TKindVR.vrCS, 'Data Path ID' );
     Add( $140F, TKindVR.vrCS, 'RGB LUT Transfer Function' );
     Add( $1410, TKindVR.vrCS, 'Alpha LUT Transfer Function' );
     Add( $2000, TKindVR.vrOB, 'ICC Profile' );
     Add( $2002, TKindVR.vrCS, 'Color Space' );
     Add( $2110, TKindVR.vrCS, 'Lossy Image Compression' );
     Add( $2112, TKindVR.vrDS, 'Lossy Image Compression Ratio' );
     Add( $2114, TKindVR.vrCS, 'Lossy Image Compression Method' );
     Add( $3000, TKindVR.vrSQ, 'Modality LUT Sequence' );
     Add( $3002, TKindVR.vrUSSS, 'LUT Descriptor' );
     Add( $3003, TKindVR.vrLO, 'LUT Explanation' );
     Add( $3004, TKindVR.vrLO, 'Modality LUT Type' );
     Add( $3006, TKindVR.vrUSOW, 'LUT Data' );
     Add( $3010, TKindVR.vrSQ, 'VOI LUT Sequence' );
     Add( $3110, TKindVR.vrSQ, 'Softcopy VOI LUT Sequence' );
     Add( $4000, TKindVR.vrLT, 'Image Presentation Comments' );
     Add( $5000, TKindVR.vrSQ, 'Bi-Plane Acquisition Sequence' );
     Add( $6010, TKindVR.vrUS, 'Representative Frame Number' );
     Add( $6020, TKindVR.vrUS, 'Frame Numbers of Interest (FOI)' );
     Add( $6022, TKindVR.vrLO, 'Frame of Interest Description' );
     Add( $6023, TKindVR.vrCS, 'Frame of Interest Type' );
     Add( $6030, TKindVR.vrUS, 'Mask Pointer(s)' );
     Add( $6040, TKindVR.vrUS, 'R Wave Pointer' );
     Add( $6100, TKindVR.vrSQ, 'Mask Subtraction Sequence' );
     Add( $6101, TKindVR.vrCS, 'Mask Operation' );
     Add( $6102, TKindVR.vrUS, 'Applicable Frame Range' );
     Add( $6110, TKindVR.vrUS, 'Mask Frame Numbers' );
     Add( $6112, TKindVR.vrUS, 'Contrast Frame Averaging' );
     Add( $6114, TKindVR.vrFL, 'Mask Sub-pixel Shift' );
     Add( $6120, TKindVR.vrSS, 'TID Offset' );
     Add( $6190, TKindVR.vrST, 'Mask Operation Explanation' );
     Add( $7000, TKindVR.vrSQ, 'Equipment Administrator Sequence' );
     Add( $7001, TKindVR.vrUS, 'Number of Display Subsystems' );
     Add( $7002, TKindVR.vrUS, 'Current Configuration ID' );
     Add( $7003, TKindVR.vrUS, 'Display Subsystem ID' );
     Add( $7004, TKindVR.vrSH, 'Display Subsystem Name' );
     Add( $7005, TKindVR.vrLO, 'Display Subsystem Description' );
     Add( $7006, TKindVR.vrCS, 'System Status' );
     Add( $7007, TKindVR.vrLO, 'System Status Comment' );
     Add( $7008, TKindVR.vrSQ, 'Target Luminance Characteristics Sequence' );
     Add( $7009, TKindVR.vrUS, 'Luminance Characteristics ID' );
     Add( $700A, TKindVR.vrSQ, 'Display Subsystem Configuration Sequence' );
     Add( $700B, TKindVR.vrUS, 'Configuration ID' );
     Add( $700C, TKindVR.vrSH, 'Configuration Name' );
     Add( $700D, TKindVR.vrLO, 'Configuration Description' );
     Add( $700E, TKindVR.vrUS, 'Referenced Target Luminance Characteristics ID' );
     Add( $700F, TKindVR.vrSQ, 'QA Results Sequence' );
     Add( $7010, TKindVR.vrSQ, 'Display Subsystem QA Results Sequence' );
     Add( $7011, TKindVR.vrSQ, 'Configuration QA Results Sequence' );
     Add( $7012, TKindVR.vrSQ, 'Measurement Equipment Sequence' );
     Add( $7013, TKindVR.vrCS, 'Measurement Functions' );
     Add( $7014, TKindVR.vrCS, 'Measurement Equipment Type' );
     Add( $7015, TKindVR.vrSQ, 'Visual Evaluation Result Sequence' );
     Add( $7016, TKindVR.vrSQ, 'Display Calibration Result Sequence' );
     Add( $7017, TKindVR.vrUS, 'DDL Value' );
     Add( $7018, TKindVR.vrFL, 'CIExy White Point' );
     Add( $7019, TKindVR.vrCS, 'Display Function Type' );
     Add( $701A, TKindVR.vrFL, 'Gamma Value' );
     Add( $701B, TKindVR.vrUS, 'Number of Luminance Points' );
     Add( $701C, TKindVR.vrSQ, 'Luminance Response Sequence' );
     Add( $701D, TKindVR.vrFL, 'Target Minimum Luminance' );
     Add( $701E, TKindVR.vrFL, 'Target Maximum Luminance' );
     Add( $701F, TKindVR.vrFL, 'Luminance Value' );
     Add( $7020, TKindVR.vrLO, 'Luminance Response Description' );
     Add( $7021, TKindVR.vrCS, 'White Point Flag' );
     Add( $7022, TKindVR.vrSQ, 'Display Device Type Code Sequence' );
     Add( $7023, TKindVR.vrSQ, 'Display Subsystem Sequence' );
     Add( $7024, TKindVR.vrSQ, 'Luminance Result Sequence' );
     Add( $7025, TKindVR.vrCS, 'Ambient Light Value Source' );
     Add( $7026, TKindVR.vrCS, 'Measured Characteristics' );
     Add( $7027, TKindVR.vrSQ, 'Luminance Uniformity Result Sequence' );
     Add( $7028, TKindVR.vrSQ, 'Visual Evaluation Test Sequence' );
     Add( $7029, TKindVR.vrCS, 'Test Result' );
     Add( $702A, TKindVR.vrLO, 'Test Result Comment' );
     Add( $702B, TKindVR.vrCS, 'Test Image Validation' );
     Add( $702C, TKindVR.vrSQ, 'Test Pattern Code Sequence' );
     Add( $702D, TKindVR.vrSQ, 'Measurement Pattern Code Sequence' );
     Add( $702E, TKindVR.vrSQ, 'Visual Evaluation Method Code Sequence' );
     Add( $7FE0, TKindVR.vrUR, 'Pixel Data Provider URL' );
     Add( $9001, TKindVR.vrUL, 'Data Point Rows' );
     Add( $9002, TKindVR.vrUL, 'Data Point Columns' );
     Add( $9003, TKindVR.vrCS, 'Signal Domain Columns' );
     Add( $9099, TKindVR.vrUS, 'Largest Monochrome Pixel Value' );
     Add( $9108, TKindVR.vrCS, 'Data Representation' );
     Add( $9110, TKindVR.vrSQ, 'Pixel Measures Sequence' );
     Add( $9132, TKindVR.vrSQ, 'Frame VOI LUT Sequence' );
     Add( $9145, TKindVR.vrSQ, 'Pixel Value Transformation Sequence' );
     Add( $9235, TKindVR.vrCS, 'Signal Domain Rows' );
     Add( $9411, TKindVR.vrFL, 'Display Filter Percentage' );
     Add( $9415, TKindVR.vrSQ, 'Frame Pixel Shift Sequence' );
     Add( $9416, TKindVR.vrUS, 'Subtraction Item ID' );
     Add( $9422, TKindVR.vrSQ, 'Pixel Intensity Relationship LUT Sequence' );
     Add( $9443, TKindVR.vrSQ, 'Frame Pixel Data Properties Sequence' );
     Add( $9444, TKindVR.vrCS, 'Geometrical Properties' );
     Add( $9445, TKindVR.vrFL, 'Geometric Maximum Distortion' );
     Add( $9446, TKindVR.vrCS, 'Image Processing Applied' );
     Add( $9454, TKindVR.vrCS, 'Mask Selection Mode' );
     Add( $9474, TKindVR.vrCS, 'LUT Function' );
     Add( $9478, TKindVR.vrFL, 'Mask Visibility Percentage' );
     Add( $9501, TKindVR.vrSQ, 'Pixel Shift Sequence' );
     Add( $9502, TKindVR.vrSQ, 'Region Pixel Shift Sequence' );
     Add( $9503, TKindVR.vrSS, 'Vertices of the Region' );
     Add( $9505, TKindVR.vrSQ, 'Multi-frame Presentation Sequence' );
     Add( $9506, TKindVR.vrUS, 'Pixel Shift Frame Range' );
     Add( $9507, TKindVR.vrUS, 'LUT Frame Range' );
     Add( $9520, TKindVR.vrDS, 'Image to Equipment Mapping Matrix' );
     Add( $9537, TKindVR.vrCS, 'Equipment Coordinate System Identification' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
