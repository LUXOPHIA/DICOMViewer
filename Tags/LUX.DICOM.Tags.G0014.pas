unit LUX.DICOM.Tags.G0014;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems0014

     TDICOMElems0014 = class( TDICOMElems )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems0014

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TDICOMElems0014.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0023, TKindVR.vrST, 'CAD File Format' );
     Add( $0024, TKindVR.vrST, 'Component Reference System' );
     Add( $0025, TKindVR.vrST, 'Component Manufacturing Procedure' );
     Add( $0028, TKindVR.vrST, 'Component Manufacturer' );
     Add( $0030, TKindVR.vrDS, 'Material Thickness' );
     Add( $0032, TKindVR.vrDS, 'Material Pipe Diameter' );
     Add( $0034, TKindVR.vrDS, 'Material Isolation Diameter' );
     Add( $0042, TKindVR.vrST, 'Material Grade' );
     Add( $0044, TKindVR.vrST, 'Material Properties Description' );
     Add( $0045, TKindVR.vrST, 'Material Properties File Format (Retired)' );
     Add( $0046, TKindVR.vrLT, 'Material Notes' );
     Add( $0050, TKindVR.vrCS, 'Component Shape' );
     Add( $0052, TKindVR.vrCS, 'Curvature Type' );
     Add( $0054, TKindVR.vrDS, 'Outer Diameter' );
     Add( $0056, TKindVR.vrDS, 'Inner Diameter' );
     Add( $0100, TKindVR.vrLO, 'Component Welder IDs' );
     Add( $0101, TKindVR.vrCS, 'Secondary Approval Status' );
     Add( $0102, TKindVR.vrDA, 'Secondary Review Date' );
     Add( $0103, TKindVR.vrTM, 'Secondary Review Time' );
     Add( $0104, TKindVR.vrPN, 'Secondary Reviewer Name' );
     Add( $0105, TKindVR.vrST, 'Repair ID' );
     Add( $0106, TKindVR.vrSQ, 'Multiple Component Approval Sequence' );
     Add( $0107, TKindVR.vrCS, 'Other Approval Status' );
     Add( $0108, TKindVR.vrCS, 'Other Secondary Approval Status' );
     Add( $1010, TKindVR.vrST, 'Actual Environmental Conditions' );
     Add( $1020, TKindVR.vrDA, 'Expiry Date' );
     Add( $1040, TKindVR.vrST, 'Environmental Conditions' );
     Add( $2002, TKindVR.vrSQ, 'Evaluator Sequence' );
     Add( $2004, TKindVR.vrIS, 'Evaluator Number' );
     Add( $2006, TKindVR.vrPN, 'Evaluator Name' );
     Add( $2008, TKindVR.vrIS, 'Evaluation Attempt' );
     Add( $2012, TKindVR.vrSQ, 'Indication Sequence' );
     Add( $2014, TKindVR.vrIS, 'Indication Number' );
     Add( $2016, TKindVR.vrSH, 'Indication Label' );
     Add( $2018, TKindVR.vrST, 'Indication Description' );
     Add( $201A, TKindVR.vrCS, 'Indication Type' );
     Add( $201C, TKindVR.vrCS, 'Indication Disposition' );
     Add( $201E, TKindVR.vrSQ, 'Indication ROI Sequence' );
     Add( $2030, TKindVR.vrSQ, 'Indication Physical Property Sequence' );
     Add( $2032, TKindVR.vrSH, 'Property Label' );
     Add( $2202, TKindVR.vrIS, 'Coordinate System Number of Axes' );
     Add( $2204, TKindVR.vrSQ, 'Coordinate System Axes Sequence' );
     Add( $2206, TKindVR.vrST, 'Coordinate System Axis Description' );
     Add( $2208, TKindVR.vrCS, 'Coordinate System Data Set Mapping' );
     Add( $220A, TKindVR.vrIS, 'Coordinate System Axis Number' );
     Add( $220C, TKindVR.vrCS, 'Coordinate System Axis Type' );
     Add( $220E, TKindVR.vrCS, 'Coordinate System Axis Units' );
     Add( $2210, TKindVR.vrOB, 'Coordinate System Axis Values' );
     Add( $2220, TKindVR.vrSQ, 'Coordinate System Transform Sequence' );
     Add( $2222, TKindVR.vrST, 'Transform Description' );
     Add( $2224, TKindVR.vrIS, 'Transform Number of Axes' );
     Add( $2226, TKindVR.vrIS, 'Transform Order of Axes' );
     Add( $2228, TKindVR.vrCS, 'Transformed Axis Units' );
     Add( $222A, TKindVR.vrDS, 'Coordinate System Transform Rotation and Scale Matrix' );
     Add( $222C, TKindVR.vrDS, 'Coordinate System Transform Translation Matrix' );
     Add( $3011, TKindVR.vrDS, 'Internal Detector Frame Time' );
     Add( $3012, TKindVR.vrDS, 'Number of Frames Integrated' );
     Add( $3020, TKindVR.vrSQ, 'Detector Temperature Sequence' );
     Add( $3022, TKindVR.vrST, 'Sensor Name' );
     Add( $3024, TKindVR.vrDS, 'Horizontal Offset of Sensor' );
     Add( $3026, TKindVR.vrDS, 'Vertical Offset of Sensor' );
     Add( $3028, TKindVR.vrDS, 'Sensor Temperature' );
     Add( $3040, TKindVR.vrSQ, 'Dark Current Sequence' );
     Add( $3050, TKindVR.vrOBOW, 'Dark Current Counts' );
     Add( $3060, TKindVR.vrSQ, 'Gain Correction Reference Sequence' );
     Add( $3070, TKindVR.vrOBOW, 'Air Counts' );
     Add( $3071, TKindVR.vrDS, 'KV Used in Gain Calibration' );
     Add( $3072, TKindVR.vrDS, 'MA Used in Gain Calibration' );
     Add( $3073, TKindVR.vrDS, 'Number of Frames Used for Integration' );
     Add( $3074, TKindVR.vrLO, 'Filter Material Used in Gain Calibration' );
     Add( $3075, TKindVR.vrDS, 'Filter Thickness Used in Gain Calibration' );
     Add( $3076, TKindVR.vrDA, 'Date of Gain Calibration' );
     Add( $3077, TKindVR.vrTM, 'Time of Gain Calibration' );
     Add( $3080, TKindVR.vrOB, 'Bad Pixel Image' );
     Add( $3099, TKindVR.vrLT, 'Calibration Notes' );
     Add( $4002, TKindVR.vrSQ, 'Pulser Equipment Sequence' );
     Add( $4004, TKindVR.vrCS, 'Pulser Type' );
     Add( $4006, TKindVR.vrLT, 'Pulser Notes' );
     Add( $4008, TKindVR.vrSQ, 'Receiver Equipment Sequence' );
     Add( $400A, TKindVR.vrCS, 'Amplifier Type' );
     Add( $400C, TKindVR.vrLT, 'Receiver Notes' );
     Add( $400E, TKindVR.vrSQ, 'Pre-Amplifier Equipment Sequence' );
     Add( $400F, TKindVR.vrLT, 'Pre-Amplifier Notes' );
     Add( $4010, TKindVR.vrSQ, 'Transmit Transducer Sequence' );
     Add( $4011, TKindVR.vrSQ, 'Receive Transducer Sequence' );
     Add( $4012, TKindVR.vrUS, 'Number of Elements' );
     Add( $4013, TKindVR.vrCS, 'Element Shape' );
     Add( $4014, TKindVR.vrDS, 'Element Dimension A' );
     Add( $4015, TKindVR.vrDS, 'Element Dimension B' );
     Add( $4016, TKindVR.vrDS, 'Element Pitch A' );
     Add( $4017, TKindVR.vrDS, 'Measured Beam Dimension A' );
     Add( $4018, TKindVR.vrDS, 'Measured Beam Dimension B' );
     Add( $4019, TKindVR.vrDS, 'Location of Measured Beam Diameter' );
     Add( $401A, TKindVR.vrDS, 'Nominal Frequency' );
     Add( $401B, TKindVR.vrDS, 'Measured Center Frequency' );
     Add( $401C, TKindVR.vrDS, 'Measured Bandwidth' );
     Add( $401D, TKindVR.vrDS, 'Element Pitch B' );
     Add( $4020, TKindVR.vrSQ, 'Pulser Settings Sequence' );
     Add( $4022, TKindVR.vrDS, 'Pulse Width' );
     Add( $4024, TKindVR.vrDS, 'Excitation Frequency' );
     Add( $4026, TKindVR.vrCS, 'Modulation Type' );
     Add( $4028, TKindVR.vrDS, 'Damping' );
     Add( $4030, TKindVR.vrSQ, 'Receiver Settings Sequence' );
     Add( $4031, TKindVR.vrDS, 'Acquired Soundpath Length' );
     Add( $4032, TKindVR.vrCS, 'Acquisition Compression Type' );
     Add( $4033, TKindVR.vrIS, 'Acquisition Sample Size' );
     Add( $4034, TKindVR.vrDS, 'Rectifier Smoothing' );
     Add( $4035, TKindVR.vrSQ, 'DAC Sequence' );
     Add( $4036, TKindVR.vrCS, 'DAC Type' );
     Add( $4038, TKindVR.vrDS, 'DAC Gain Points' );
     Add( $403A, TKindVR.vrDS, 'DAC Time Points' );
     Add( $403C, TKindVR.vrDS, 'DAC Amplitude' );
     Add( $4040, TKindVR.vrSQ, 'Pre-Amplifier Settings Sequence' );
     Add( $4050, TKindVR.vrSQ, 'Transmit Transducer Settings Sequence' );
     Add( $4051, TKindVR.vrSQ, 'Receive Transducer Settings Sequence' );
     Add( $4052, TKindVR.vrDS, 'Incident Angle' );
     Add( $4054, TKindVR.vrST, 'Coupling Technique' );
     Add( $4056, TKindVR.vrST, 'Coupling Medium' );
     Add( $4057, TKindVR.vrDS, 'Coupling Velocity' );
     Add( $4058, TKindVR.vrDS, 'Probe Center Location X' );
     Add( $4059, TKindVR.vrDS, 'Probe Center Location Z' );
     Add( $405A, TKindVR.vrDS, 'Sound Path Length' );
     Add( $405C, TKindVR.vrST, 'Delay Law Identifier' );
     Add( $4060, TKindVR.vrSQ, 'Gate Settings Sequence' );
     Add( $4062, TKindVR.vrDS, 'Gate Threshold' );
     Add( $4064, TKindVR.vrDS, 'Velocity of Sound' );
     Add( $4070, TKindVR.vrSQ, 'Calibration Settings Sequence' );
     Add( $4072, TKindVR.vrST, 'Calibration Procedure' );
     Add( $4074, TKindVR.vrSH, 'Procedure Version' );
     Add( $4076, TKindVR.vrDA, 'Procedure Creation Date' );
     Add( $4078, TKindVR.vrDA, 'Procedure Expiration Date' );
     Add( $407A, TKindVR.vrDA, 'Procedure Last Modified Date' );
     Add( $407C, TKindVR.vrTM, 'Calibration Time' );
     Add( $407E, TKindVR.vrDA, 'Calibration Date' );
     Add( $4080, TKindVR.vrSQ, 'Probe Drive Equipment Sequence' );
     Add( $4081, TKindVR.vrCS, 'Drive Type' );
     Add( $4082, TKindVR.vrLT, 'Probe Drive Notes' );
     Add( $4083, TKindVR.vrSQ, 'Drive Probe Sequence' );
     Add( $4084, TKindVR.vrDS, 'Probe Inductance' );
     Add( $4085, TKindVR.vrDS, 'Probe Resistance' );
     Add( $4086, TKindVR.vrSQ, 'Receive Probe Sequence' );
     Add( $4087, TKindVR.vrSQ, 'Probe Drive Settings Sequence' );
     Add( $4088, TKindVR.vrDS, 'Bridge Resistors' );
     Add( $4089, TKindVR.vrDS, 'Probe Orientation Angle' );
     Add( $408B, TKindVR.vrDS, 'User Selected Gain Y' );
     Add( $408C, TKindVR.vrDS, 'User Selected Phase' );
     Add( $408D, TKindVR.vrDS, 'User Selected Offset X' );
     Add( $408E, TKindVR.vrDS, 'User Selected Offset Y' );
     Add( $4091, TKindVR.vrSQ, 'Channel Settings Sequence' );
     Add( $4092, TKindVR.vrDS, 'Channel Threshold' );
     Add( $409A, TKindVR.vrSQ, 'Scanner Settings Sequence' );
     Add( $409B, TKindVR.vrST, 'Scan Procedure' );
     Add( $409C, TKindVR.vrDS, 'Translation Rate X' );
     Add( $409D, TKindVR.vrDS, 'Translation Rate Y' );
     Add( $409F, TKindVR.vrDS, 'Channel Overlap' );
     Add( $40A0, TKindVR.vrLO, 'Image Quality Indicator Type' );
     Add( $40A1, TKindVR.vrLO, 'Image Quality Indicator Material' );
     Add( $40A2, TKindVR.vrLO, 'Image Quality Indicator Size' );
     Add( $5002, TKindVR.vrIS, 'LINAC Energy' );
     Add( $5004, TKindVR.vrIS, 'LINAC Output' );
     Add( $5100, TKindVR.vrUS, 'Active Aperture' );
     Add( $5101, TKindVR.vrDS, 'Total Aperture' );
     Add( $5102, TKindVR.vrDS, 'Aperture Elevation' );
     Add( $5103, TKindVR.vrDS, 'Main Lobe Angle' );
     Add( $5104, TKindVR.vrDS, 'Main Roof Angle' );
     Add( $5105, TKindVR.vrCS, 'Connector Type' );
     Add( $5106, TKindVR.vrSH, 'Wedge Model Number' );
     Add( $5107, TKindVR.vrDS, 'Wedge Angle Float' );
     Add( $5108, TKindVR.vrDS, 'Wedge Roof Angle' );
     Add( $5109, TKindVR.vrCS, 'Wedge Element 1 Position' );
     Add( $510A, TKindVR.vrDS, 'Wedge Material Velocity' );
     Add( $510B, TKindVR.vrSH, 'Wedge Material' );
     Add( $510C, TKindVR.vrDS, 'Wedge Offset Z' );
     Add( $510D, TKindVR.vrDS, 'Wedge Origin Offset X' );
     Add( $510E, TKindVR.vrDS, 'Wedge Time Delay' );
     Add( $510F, TKindVR.vrSH, 'Wedge Name' );
     Add( $5110, TKindVR.vrSH, 'Wedge Manufacturer Name' );
     Add( $5111, TKindVR.vrLO, 'Wedge Description' );
     Add( $5112, TKindVR.vrDS, 'Nominal Beam Angle' );
     Add( $5113, TKindVR.vrDS, 'Wedge Offset X' );
     Add( $5114, TKindVR.vrDS, 'Wedge Offset Y' );
     Add( $5115, TKindVR.vrDS, 'Wedge Total Length' );
     Add( $5116, TKindVR.vrDS, 'Wedge In Contact Length' );
     Add( $5117, TKindVR.vrDS, 'Wedge Front Gap' );
     Add( $5118, TKindVR.vrDS, 'Wedge Total Height' );
     Add( $5119, TKindVR.vrDS, 'Wedge Front Height' );
     Add( $511A, TKindVR.vrDS, 'Wedge Rear Height' );
     Add( $511B, TKindVR.vrDS, 'Wedge Total Width' );
     Add( $511C, TKindVR.vrDS, 'Wedge In Contact Width' );
     Add( $511D, TKindVR.vrDS, 'Wedge Chamfer Height' );
     Add( $511E, TKindVR.vrCS, 'Wedge Curve' );
     Add( $511F, TKindVR.vrDS, 'Radius Along the Wedge' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
