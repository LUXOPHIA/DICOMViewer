unit LUX.DICOM.Tags.G0028;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0028

     TdcmGrup0028 = class( TdcmGrup )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0028

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmGrup0028.Create;
begin
     inherited;

     Add( $0000, [TTypeVR.vrUL], 'Image Presentation Group Length' );
     Add( $0030, [TTypeVR.vrDS], 'Pixel Spacing' );

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0002, [TTypeVR.vrUS], 'Samples per Pixel' );
     Add( $0003, [TTypeVR.vrUS], 'Samples per Pixel Used' );
     Add( $0004, [TTypeVR.vrCS], 'Photometric Interpretation' );
     Add( $0005, [TTypeVR.vrUS], 'Image Dimensions' );
     Add( $0006, [TTypeVR.vrUS], 'Planar Configuration' );
     Add( $0008, [TTypeVR.vrIS], 'Number of Frames' );
     Add( $0009, [TTypeVR.vrAT], 'Frame Increment Pointer' );
     Add( $000A, [TTypeVR.vrAT], 'Frame Dimension Pointer' );
     Add( $0010, [TTypeVR.vrUS], 'Rows' );
     Add( $0011, [TTypeVR.vrUS], 'Columns' );
     Add( $0012, [TTypeVR.vrUS], 'Planes' );
     Add( $0014, [TTypeVR.vrUS], 'Ultrasound Color Data Present' );
     Add( $0020, [], '' );  //For some Data Elements, no Name or Keyword or VR or VM is specified; these are "placeholders" that are not assigned but will not be reused.
     Add( $0031, [TTypeVR.vrDS], 'Zoom Factor' );
     Add( $0032, [TTypeVR.vrDS], 'Zoom Center' );
     Add( $0034, [TTypeVR.vrIS], 'Pixel Aspect Ratio' );
     Add( $0040, [TTypeVR.vrCS], 'Image Format' );
     Add( $0050, [TTypeVR.vrLO], 'Manipulated Image' );
     Add( $0051, [TTypeVR.vrCS], 'Corrected Image' );
     Add( $005F, [TTypeVR.vrLO], 'Compression Recognition Code' );
     Add( $0060, [TTypeVR.vrCS], 'Compression Code' );
     Add( $0061, [TTypeVR.vrSH], 'Compression Originator' );
     Add( $0062, [TTypeVR.vrLO], 'Compression Label' );
     Add( $0063, [TTypeVR.vrSH], 'Compression Description' );
     Add( $0065, [TTypeVR.vrCS], 'Compression Sequence' );
     Add( $0066, [TTypeVR.vrAT], 'Compression Step Pointers' );
     Add( $0068, [TTypeVR.vrUS], 'Repeat Interval' );
     Add( $0069, [TTypeVR.vrUS], 'Bits Grouped' );
     Add( $0070, [TTypeVR.vrUS], 'Perimeter Table' );
     Add( $0071, [TTypeVR.vrUS,TTypeVR.vrSS], 'Perimeter Value' );
     Add( $0080, [TTypeVR.vrUS], 'Predictor Rows' );
     Add( $0081, [TTypeVR.vrUS], 'Predictor Columns' );
     Add( $0082, [TTypeVR.vrUS], 'Predictor Constants' );
     Add( $0090, [TTypeVR.vrCS], 'Blocked Pixels' );
     Add( $0091, [TTypeVR.vrUS], 'Block Rows' );
     Add( $0092, [TTypeVR.vrUS], 'Block Columns' );
     Add( $0093, [TTypeVR.vrUS], 'Row Overlap' );
     Add( $0094, [TTypeVR.vrUS], 'Column Overlap' );
     Add( $0100, [TTypeVR.vrUS], 'Bits Allocated' );
     Add( $0101, [TTypeVR.vrUS], 'Bits Stored' );
     Add( $0102, [TTypeVR.vrUS], 'High Bit' );
     Add( $0103, [TTypeVR.vrUS], 'Pixel Representation' );
     Add( $0104, [TTypeVR.vrUS,TTypeVR.vrSS], 'Smallest Valid Pixel Value' );
     Add( $0105, [TTypeVR.vrUS,TTypeVR.vrSS], 'Largest Valid Pixel Value' );
     Add( $0106, [TTypeVR.vrUS,TTypeVR.vrSS], 'Smallest Image Pixel Value' );
     Add( $0107, [TTypeVR.vrUS,TTypeVR.vrSS], 'Largest Image Pixel Value' );
     Add( $0108, [TTypeVR.vrUS,TTypeVR.vrSS], 'Smallest Pixel Value in Series' );
     Add( $0109, [TTypeVR.vrUS,TTypeVR.vrSS], 'Largest Pixel Value in Series' );
     Add( $0110, [TTypeVR.vrUS,TTypeVR.vrSS], 'Smallest Image Pixel Value in Plane' );
     Add( $0111, [TTypeVR.vrUS,TTypeVR.vrSS], 'Largest Image Pixel Value in Plane' );
     Add( $0120, [TTypeVR.vrUS,TTypeVR.vrSS], 'Pixel Padding Value' );
     Add( $0121, [TTypeVR.vrUS,TTypeVR.vrSS], 'Pixel Padding Range Limit' );
     Add( $0122, [TTypeVR.vrFL], 'Float Pixel Padding Value' );
     Add( $0123, [TTypeVR.vrFD], 'Double Float Pixel Padding Value' );
     Add( $0124, [TTypeVR.vrFL], 'Float Pixel Padding Range Limit' );
     Add( $0125, [TTypeVR.vrFD], 'Double Float Pixel Padding Range Limit' );
     Add( $0200, [TTypeVR.vrUS], 'Image Location' );
     Add( $0300, [TTypeVR.vrCS], 'Quality Control Image' );
     Add( $0301, [TTypeVR.vrCS], 'Burned In Annotation' );
     Add( $0302, [TTypeVR.vrCS], 'Recognizable Visual Features' );
     Add( $0303, [TTypeVR.vrCS], 'Longitudinal Temporal Information Modified' );
     Add( $0304, [TTypeVR.vrUI], 'Referenced Color Palette Instance UID' );
     Add( $0400, [TTypeVR.vrLO], 'Transform Label' );
     Add( $0401, [TTypeVR.vrLO], 'Transform Version Number' );
     Add( $0402, [TTypeVR.vrUS], 'Number of Transform Steps' );
     Add( $0403, [TTypeVR.vrLO], 'Sequence of Compressed Data' );
     Add( $0404, [TTypeVR.vrAT], 'Details of Coefficients' );
   //Add( $04x0, [TTypeVR.vrUS], 'Rows For Nth Order Coefficients' );
   //Add( $04x1, [TTypeVR.vrUS], 'Columns For Nth Order Coefficients' );
   //Add( $04x2, [TTypeVR.vrLO], 'Coefficient Coding' );
   //Add( $04x3, [TTypeVR.vrAT], 'Coefficient Coding Pointers' );
     Add( $0700, [TTypeVR.vrLO], 'DCT Label' );
     Add( $0701, [TTypeVR.vrCS], 'Data Block Description' );
     Add( $0702, [TTypeVR.vrAT], 'Data Block' );
     Add( $0710, [TTypeVR.vrUS], 'Normalization Factor Format' );
     Add( $0720, [TTypeVR.vrUS], 'Zonal Map Number Format' );
     Add( $0721, [TTypeVR.vrAT], 'Zonal Map Location' );
     Add( $0722, [TTypeVR.vrUS], 'Zonal Map Format' );
     Add( $0730, [TTypeVR.vrUS], 'Adaptive Map Format' );
     Add( $0740, [TTypeVR.vrUS], 'Code Number Format' );
   //Add( $08x0, [TTypeVR.vrCS], 'Code Label' );
   //Add( $08x2, [TTypeVR.vrUS], 'Number of Tables' );
   //Add( $08x3, [TTypeVR.vrAT], 'Code Table Location' );
   //Add( $08x4, [TTypeVR.vrUS], 'Bits For Code Word' );
   //Add( $08x8, [TTypeVR.vrAT], 'Image Data Location' );
     Add( $0A02, [TTypeVR.vrCS], 'Pixel Spacing Calibration Type' );
     Add( $0A04, [TTypeVR.vrLO], 'Pixel Spacing Calibration Description' );
     Add( $1040, [TTypeVR.vrCS], 'Pixel Intensity Relationship' );
     Add( $1041, [TTypeVR.vrSS], 'Pixel Intensity Relationship Sign' );
     Add( $1050, [TTypeVR.vrDS], 'Window Center' );
     Add( $1051, [TTypeVR.vrDS], 'Window Width' );
     Add( $1052, [TTypeVR.vrDS], 'Rescale Intercept' );
     Add( $1053, [TTypeVR.vrDS], 'Rescale Slope' );
     Add( $1054, [TTypeVR.vrLO], 'Rescale Type' );
     Add( $1055, [TTypeVR.vrLO], 'Window Center & Width Explanation' );
     Add( $1056, [TTypeVR.vrCS], 'VOI LUT Function' );
     Add( $1080, [TTypeVR.vrCS], 'Gray Scale' );
     Add( $1090, [TTypeVR.vrCS], 'Recommended Viewing Mode' );
     Add( $1100, [TTypeVR.vrUS,TTypeVR.vrSS], 'Gray Lookup Table Descriptor' );
     Add( $1101, [TTypeVR.vrUS,TTypeVR.vrSS], 'Red Palette Color Lookup Table Descriptor' );
     Add( $1102, [TTypeVR.vrUS,TTypeVR.vrSS], 'Green Palette Color Lookup Table Descriptor' );
     Add( $1103, [TTypeVR.vrUS,TTypeVR.vrSS], 'Blue Palette Color Lookup Table Descriptor' );
     Add( $1104, [TTypeVR.vrUS], 'Alpha Palette Color Lookup Table Descriptor' );
     Add( $1111, [TTypeVR.vrUS,TTypeVR.vrSS], 'Large Red Palette Color Lookup Table Descriptor' );
     Add( $1112, [TTypeVR.vrUS,TTypeVR.vrSS], 'Large Green Palette Color Lookup Table Descriptor' );
     Add( $1113, [TTypeVR.vrUS,TTypeVR.vrSS], 'Large Blue Palette Color Lookup Table Descriptor' );
     Add( $1199, [TTypeVR.vrUI], 'Palette Color Lookup Table UID' );
     Add( $1200, [TTypeVR.vrUS,TTypeVR.vrSS,TTypeVR.vrOW], 'Gray Lookup Table Data' );
     Add( $1201, [TTypeVR.vrOW], 'Red Palette Color Lookup Table Data' );
     Add( $1202, [TTypeVR.vrOW], 'Green Palette Color Lookup Table Data' );
     Add( $1203, [TTypeVR.vrOW], 'Blue Palette Color Lookup Table Data' );
     Add( $1204, [TTypeVR.vrOW], 'Alpha Palette Color Lookup Table Data' );
     Add( $1211, [TTypeVR.vrOW], 'Large Red Palette Color Lookup Table Data' );
     Add( $1212, [TTypeVR.vrOW], 'Large Green Palette Color Lookup Table Data' );
     Add( $1213, [TTypeVR.vrOW], 'Large Blue Palette Color Lookup Table Data' );
     Add( $1214, [TTypeVR.vrUI], 'Large Palette Color Lookup Table UID' );
     Add( $1221, [TTypeVR.vrOW], 'Segmented Red Palette Color Lookup Table Data' );
     Add( $1222, [TTypeVR.vrOW], 'Segmented Green Palette Color Lookup Table Data' );
     Add( $1223, [TTypeVR.vrOW], 'Segmented Blue Palette Color Lookup Table Data' );
     Add( $1224, [TTypeVR.vrOW], 'Segmented Alpha Palette Color Lookup Table Data' );
     Add( $1230, [TTypeVR.vrSQ], 'Stored Value Color Range Sequence' );
     Add( $1231, [TTypeVR.vrFD], 'Minimum Stored Value Mapped' );
     Add( $1232, [TTypeVR.vrFD], 'Maximum Stored Value Mapped' );
     Add( $1300, [TTypeVR.vrCS], 'Breast Implant Present' );
     Add( $1350, [TTypeVR.vrCS], 'Partial View' );
     Add( $1351, [TTypeVR.vrST], 'Partial View Description' );
     Add( $1352, [TTypeVR.vrSQ], 'Partial View Code Sequence' );
     Add( $135A, [TTypeVR.vrCS], 'Spatial Locations Preserved' );
     Add( $1401, [TTypeVR.vrSQ], 'Data Frame Assignment Sequence' );
     Add( $1402, [TTypeVR.vrCS], 'Data Path Assignment' );
     Add( $1403, [TTypeVR.vrUS], 'Bits Mapped to Color Lookup Table' );
     Add( $1404, [TTypeVR.vrSQ], 'Blending LUT 1 Sequence' );
     Add( $1405, [TTypeVR.vrCS], 'Blending LUT 1 Transfer Function' );
     Add( $1406, [TTypeVR.vrFD], 'Blending Weight Constant' );
     Add( $1407, [TTypeVR.vrUS], 'Blending Lookup Table Descriptor' );
     Add( $1408, [TTypeVR.vrOW], 'Blending Lookup Table Data' );
     Add( $140B, [TTypeVR.vrSQ], 'Enhanced Palette Color Lookup Table Sequence' );
     Add( $140C, [TTypeVR.vrSQ], 'Blending LUT 2 Sequence' );
     Add( $140D, [TTypeVR.vrCS], 'Blending LUT 2 Transfer Function' );
     Add( $140E, [TTypeVR.vrCS], 'Data Path ID' );
     Add( $140F, [TTypeVR.vrCS], 'RGB LUT Transfer Function' );
     Add( $1410, [TTypeVR.vrCS], 'Alpha LUT Transfer Function' );
     Add( $2000, [TTypeVR.vrOB], 'ICC Profile' );
     Add( $2002, [TTypeVR.vrCS], 'Color Space' );
     Add( $2110, [TTypeVR.vrCS], 'Lossy Image Compression' );
     Add( $2112, [TTypeVR.vrDS], 'Lossy Image Compression Ratio' );
     Add( $2114, [TTypeVR.vrCS], 'Lossy Image Compression Method' );
     Add( $3000, [TTypeVR.vrSQ], 'Modality LUT Sequence' );
     Add( $3002, [TTypeVR.vrUS,TTypeVR.vrSS], 'LUT Descriptor' );
     Add( $3003, [TTypeVR.vrLO], 'LUT Explanation' );
     Add( $3004, [TTypeVR.vrLO], 'Modality LUT Type' );
     Add( $3006, [TTypeVR.vrUS,TTypeVR.vrOW], 'LUT Data' );
     Add( $3010, [TTypeVR.vrSQ], 'VOI LUT Sequence' );
     Add( $3110, [TTypeVR.vrSQ], 'Softcopy VOI LUT Sequence' );
     Add( $4000, [TTypeVR.vrLT], 'Image Presentation Comments' );
     Add( $5000, [TTypeVR.vrSQ], 'Bi-Plane Acquisition Sequence' );
     Add( $6010, [TTypeVR.vrUS], 'Representative Frame Number' );
     Add( $6020, [TTypeVR.vrUS], 'Frame Numbers of Interest (FOI)' );
     Add( $6022, [TTypeVR.vrLO], 'Frame of Interest Description' );
     Add( $6023, [TTypeVR.vrCS], 'Frame of Interest Type' );
     Add( $6030, [TTypeVR.vrUS], 'Mask Pointer(s)' );
     Add( $6040, [TTypeVR.vrUS], 'R Wave Pointer' );
     Add( $6100, [TTypeVR.vrSQ], 'Mask Subtraction Sequence' );
     Add( $6101, [TTypeVR.vrCS], 'Mask Operation' );
     Add( $6102, [TTypeVR.vrUS], 'Applicable Frame Range' );
     Add( $6110, [TTypeVR.vrUS], 'Mask Frame Numbers' );
     Add( $6112, [TTypeVR.vrUS], 'Contrast Frame Averaging' );
     Add( $6114, [TTypeVR.vrFL], 'Mask Sub-pixel Shift' );
     Add( $6120, [TTypeVR.vrSS], 'TID Offset' );
     Add( $6190, [TTypeVR.vrST], 'Mask Operation Explanation' );
     Add( $7000, [TTypeVR.vrSQ], 'Equipment Administrator Sequence' );
     Add( $7001, [TTypeVR.vrUS], 'Number of Display Subsystems' );
     Add( $7002, [TTypeVR.vrUS], 'Current Configuration ID' );
     Add( $7003, [TTypeVR.vrUS], 'Display Subsystem ID' );
     Add( $7004, [TTypeVR.vrSH], 'Display Subsystem Name' );
     Add( $7005, [TTypeVR.vrLO], 'Display Subsystem Description' );
     Add( $7006, [TTypeVR.vrCS], 'System Status' );
     Add( $7007, [TTypeVR.vrLO], 'System Status Comment' );
     Add( $7008, [TTypeVR.vrSQ], 'Target Luminance Characteristics Sequence' );
     Add( $7009, [TTypeVR.vrUS], 'Luminance Characteristics ID' );
     Add( $700A, [TTypeVR.vrSQ], 'Display Subsystem Configuration Sequence' );
     Add( $700B, [TTypeVR.vrUS], 'Configuration ID' );
     Add( $700C, [TTypeVR.vrSH], 'Configuration Name' );
     Add( $700D, [TTypeVR.vrLO], 'Configuration Description' );
     Add( $700E, [TTypeVR.vrUS], 'Referenced Target Luminance Characteristics ID' );
     Add( $700F, [TTypeVR.vrSQ], 'QA Results Sequence' );
     Add( $7010, [TTypeVR.vrSQ], 'Display Subsystem QA Results Sequence' );
     Add( $7011, [TTypeVR.vrSQ], 'Configuration QA Results Sequence' );
     Add( $7012, [TTypeVR.vrSQ], 'Measurement Equipment Sequence' );
     Add( $7013, [TTypeVR.vrCS], 'Measurement Functions' );
     Add( $7014, [TTypeVR.vrCS], 'Measurement Equipment Type' );
     Add( $7015, [TTypeVR.vrSQ], 'Visual Evaluation Result Sequence' );
     Add( $7016, [TTypeVR.vrSQ], 'Display Calibration Result Sequence' );
     Add( $7017, [TTypeVR.vrUS], 'DDL Value' );
     Add( $7018, [TTypeVR.vrFL], 'CIExy White Point' );
     Add( $7019, [TTypeVR.vrCS], 'Display Function Type' );
     Add( $701A, [TTypeVR.vrFL], 'Gamma Value' );
     Add( $701B, [TTypeVR.vrUS], 'Number of Luminance Points' );
     Add( $701C, [TTypeVR.vrSQ], 'Luminance Response Sequence' );
     Add( $701D, [TTypeVR.vrFL], 'Target Minimum Luminance' );
     Add( $701E, [TTypeVR.vrFL], 'Target Maximum Luminance' );
     Add( $701F, [TTypeVR.vrFL], 'Luminance Value' );
     Add( $7020, [TTypeVR.vrLO], 'Luminance Response Description' );
     Add( $7021, [TTypeVR.vrCS], 'White Point Flag' );
     Add( $7022, [TTypeVR.vrSQ], 'Display Device Type Code Sequence' );
     Add( $7023, [TTypeVR.vrSQ], 'Display Subsystem Sequence' );
     Add( $7024, [TTypeVR.vrSQ], 'Luminance Result Sequence' );
     Add( $7025, [TTypeVR.vrCS], 'Ambient Light Value Source' );
     Add( $7026, [TTypeVR.vrCS], 'Measured Characteristics' );
     Add( $7027, [TTypeVR.vrSQ], 'Luminance Uniformity Result Sequence' );
     Add( $7028, [TTypeVR.vrSQ], 'Visual Evaluation Test Sequence' );
     Add( $7029, [TTypeVR.vrCS], 'Test Result' );
     Add( $702A, [TTypeVR.vrLO], 'Test Result Comment' );
     Add( $702B, [TTypeVR.vrCS], 'Test Image Validation' );
     Add( $702C, [TTypeVR.vrSQ], 'Test Pattern Code Sequence' );
     Add( $702D, [TTypeVR.vrSQ], 'Measurement Pattern Code Sequence' );
     Add( $702E, [TTypeVR.vrSQ], 'Visual Evaluation Method Code Sequence' );
     Add( $7FE0, [TTypeVR.vrUR], 'Pixel Data Provider URL' );
     Add( $9001, [TTypeVR.vrUL], 'Data Point Rows' );
     Add( $9002, [TTypeVR.vrUL], 'Data Point Columns' );
     Add( $9003, [TTypeVR.vrCS], 'Signal Domain Columns' );
     Add( $9099, [TTypeVR.vrUS], 'Largest Monochrome Pixel Value' );
     Add( $9108, [TTypeVR.vrCS], 'Data Representation' );
     Add( $9110, [TTypeVR.vrSQ], 'Pixel Measures Sequence' );
     Add( $9132, [TTypeVR.vrSQ], 'Frame VOI LUT Sequence' );
     Add( $9145, [TTypeVR.vrSQ], 'Pixel Value Transformation Sequence' );
     Add( $9235, [TTypeVR.vrCS], 'Signal Domain Rows' );
     Add( $9411, [TTypeVR.vrFL], 'Display Filter Percentage' );
     Add( $9415, [TTypeVR.vrSQ], 'Frame Pixel Shift Sequence' );
     Add( $9416, [TTypeVR.vrUS], 'Subtraction Item ID' );
     Add( $9422, [TTypeVR.vrSQ], 'Pixel Intensity Relationship LUT Sequence' );
     Add( $9443, [TTypeVR.vrSQ], 'Frame Pixel Data Properties Sequence' );
     Add( $9444, [TTypeVR.vrCS], 'Geometrical Properties' );
     Add( $9445, [TTypeVR.vrFL], 'Geometric Maximum Distortion' );
     Add( $9446, [TTypeVR.vrCS], 'Image Processing Applied' );
     Add( $9454, [TTypeVR.vrCS], 'Mask Selection Mode' );
     Add( $9474, [TTypeVR.vrCS], 'LUT Function' );
     Add( $9478, [TTypeVR.vrFL], 'Mask Visibility Percentage' );
     Add( $9501, [TTypeVR.vrSQ], 'Pixel Shift Sequence' );
     Add( $9502, [TTypeVR.vrSQ], 'Region Pixel Shift Sequence' );
     Add( $9503, [TTypeVR.vrSS], 'Vertices of the Region' );
     Add( $9505, [TTypeVR.vrSQ], 'Multi-frame Presentation Sequence' );
     Add( $9506, [TTypeVR.vrUS], 'Pixel Shift Frame Range' );
     Add( $9507, [TTypeVR.vrUS], 'LUT Frame Range' );
     Add( $9520, [TTypeVR.vrDS], 'Image to Equipment Mapping Matrix' );
     Add( $9537, [TTypeVR.vrCS], 'Equipment Coordinate System Identification' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
