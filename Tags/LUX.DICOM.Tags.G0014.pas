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
     Add( $0023, [TTypeVR.vrST], 'CAD File Format' );
     Add( $0024, [TTypeVR.vrST], 'Component Reference System' );
     Add( $0025, [TTypeVR.vrST], 'Component Manufacturing Procedure' );
     Add( $0028, [TTypeVR.vrST], 'Component Manufacturer' );
     Add( $0030, [TTypeVR.vrDS], 'Material Thickness' );
     Add( $0032, [TTypeVR.vrDS], 'Material Pipe Diameter' );
     Add( $0034, [TTypeVR.vrDS], 'Material Isolation Diameter' );
     Add( $0042, [TTypeVR.vrST], 'Material Grade' );
     Add( $0044, [TTypeVR.vrST], 'Material Properties Description' );
     Add( $0045, [TTypeVR.vrST], 'Material Properties File Format (Retired)' );
     Add( $0046, [TTypeVR.vrLT], 'Material Notes' );
     Add( $0050, [TTypeVR.vrCS], 'Component Shape' );
     Add( $0052, [TTypeVR.vrCS], 'Curvature Type' );
     Add( $0054, [TTypeVR.vrDS], 'Outer Diameter' );
     Add( $0056, [TTypeVR.vrDS], 'Inner Diameter' );
     Add( $0100, [TTypeVR.vrLO], 'Component Welder IDs' );
     Add( $0101, [TTypeVR.vrCS], 'Secondary Approval Status' );
     Add( $0102, [TTypeVR.vrDA], 'Secondary Review Date' );
     Add( $0103, [TTypeVR.vrTM], 'Secondary Review Time' );
     Add( $0104, [TTypeVR.vrPN], 'Secondary Reviewer Name' );
     Add( $0105, [TTypeVR.vrST], 'Repair ID' );
     Add( $0106, [TTypeVR.vrSQ], 'Multiple Component Approval Sequence' );
     Add( $0107, [TTypeVR.vrCS], 'Other Approval Status' );
     Add( $0108, [TTypeVR.vrCS], 'Other Secondary Approval Status' );
     Add( $1010, [TTypeVR.vrST], 'Actual Environmental Conditions' );
     Add( $1020, [TTypeVR.vrDA], 'Expiry Date' );
     Add( $1040, [TTypeVR.vrST], 'Environmental Conditions' );
     Add( $2002, [TTypeVR.vrSQ], 'Evaluator Sequence' );
     Add( $2004, [TTypeVR.vrIS], 'Evaluator Number' );
     Add( $2006, [TTypeVR.vrPN], 'Evaluator Name' );
     Add( $2008, [TTypeVR.vrIS], 'Evaluation Attempt' );
     Add( $2012, [TTypeVR.vrSQ], 'Indication Sequence' );
     Add( $2014, [TTypeVR.vrIS], 'Indication Number' );
     Add( $2016, [TTypeVR.vrSH], 'Indication Label' );
     Add( $2018, [TTypeVR.vrST], 'Indication Description' );
     Add( $201A, [TTypeVR.vrCS], 'Indication Type' );
     Add( $201C, [TTypeVR.vrCS], 'Indication Disposition' );
     Add( $201E, [TTypeVR.vrSQ], 'Indication ROI Sequence' );
     Add( $2030, [TTypeVR.vrSQ], 'Indication Physical Property Sequence' );
     Add( $2032, [TTypeVR.vrSH], 'Property Label' );
     Add( $2202, [TTypeVR.vrIS], 'Coordinate System Number of Axes' );
     Add( $2204, [TTypeVR.vrSQ], 'Coordinate System Axes Sequence' );
     Add( $2206, [TTypeVR.vrST], 'Coordinate System Axis Description' );
     Add( $2208, [TTypeVR.vrCS], 'Coordinate System Data Set Mapping' );
     Add( $220A, [TTypeVR.vrIS], 'Coordinate System Axis Number' );
     Add( $220C, [TTypeVR.vrCS], 'Coordinate System Axis Type' );
     Add( $220E, [TTypeVR.vrCS], 'Coordinate System Axis Units' );
     Add( $2210, [TTypeVR.vrOB], 'Coordinate System Axis Values' );
     Add( $2220, [TTypeVR.vrSQ], 'Coordinate System Transform Sequence' );
     Add( $2222, [TTypeVR.vrST], 'Transform Description' );
     Add( $2224, [TTypeVR.vrIS], 'Transform Number of Axes' );
     Add( $2226, [TTypeVR.vrIS], 'Transform Order of Axes' );
     Add( $2228, [TTypeVR.vrCS], 'Transformed Axis Units' );
     Add( $222A, [TTypeVR.vrDS], 'Coordinate System Transform Rotation and Scale Matrix' );
     Add( $222C, [TTypeVR.vrDS], 'Coordinate System Transform Translation Matrix' );
     Add( $3011, [TTypeVR.vrDS], 'Internal Detector Frame Time' );
     Add( $3012, [TTypeVR.vrDS], 'Number of Frames Integrated' );
     Add( $3020, [TTypeVR.vrSQ], 'Detector Temperature Sequence' );
     Add( $3022, [TTypeVR.vrST], 'Sensor Name' );
     Add( $3024, [TTypeVR.vrDS], 'Horizontal Offset of Sensor' );
     Add( $3026, [TTypeVR.vrDS], 'Vertical Offset of Sensor' );
     Add( $3028, [TTypeVR.vrDS], 'Sensor Temperature' );
     Add( $3040, [TTypeVR.vrSQ], 'Dark Current Sequence' );
     Add( $3050, [TTypeVR.vrOB,TTypeVR.vrOW], 'Dark Current Counts' );
     Add( $3060, [TTypeVR.vrSQ], 'Gain Correction Reference Sequence' );
     Add( $3070, [TTypeVR.vrOB,TTypeVR.vrOW], 'Air Counts' );
     Add( $3071, [TTypeVR.vrDS], 'KV Used in Gain Calibration' );
     Add( $3072, [TTypeVR.vrDS], 'MA Used in Gain Calibration' );
     Add( $3073, [TTypeVR.vrDS], 'Number of Frames Used for Integration' );
     Add( $3074, [TTypeVR.vrLO], 'Filter Material Used in Gain Calibration' );
     Add( $3075, [TTypeVR.vrDS], 'Filter Thickness Used in Gain Calibration' );
     Add( $3076, [TTypeVR.vrDA], 'Date of Gain Calibration' );
     Add( $3077, [TTypeVR.vrTM], 'Time of Gain Calibration' );
     Add( $3080, [TTypeVR.vrOB], 'Bad Pixel Image' );
     Add( $3099, [TTypeVR.vrLT], 'Calibration Notes' );
     Add( $4002, [TTypeVR.vrSQ], 'Pulser Equipment Sequence' );
     Add( $4004, [TTypeVR.vrCS], 'Pulser Type' );
     Add( $4006, [TTypeVR.vrLT], 'Pulser Notes' );
     Add( $4008, [TTypeVR.vrSQ], 'Receiver Equipment Sequence' );
     Add( $400A, [TTypeVR.vrCS], 'Amplifier Type' );
     Add( $400C, [TTypeVR.vrLT], 'Receiver Notes' );
     Add( $400E, [TTypeVR.vrSQ], 'Pre-Amplifier Equipment Sequence' );
     Add( $400F, [TTypeVR.vrLT], 'Pre-Amplifier Notes' );
     Add( $4010, [TTypeVR.vrSQ], 'Transmit Transducer Sequence' );
     Add( $4011, [TTypeVR.vrSQ], 'Receive Transducer Sequence' );
     Add( $4012, [TTypeVR.vrUS], 'Number of Elements' );
     Add( $4013, [TTypeVR.vrCS], 'Element Shape' );
     Add( $4014, [TTypeVR.vrDS], 'Element Dimension A' );
     Add( $4015, [TTypeVR.vrDS], 'Element Dimension B' );
     Add( $4016, [TTypeVR.vrDS], 'Element Pitch A' );
     Add( $4017, [TTypeVR.vrDS], 'Measured Beam Dimension A' );
     Add( $4018, [TTypeVR.vrDS], 'Measured Beam Dimension B' );
     Add( $4019, [TTypeVR.vrDS], 'Location of Measured Beam Diameter' );
     Add( $401A, [TTypeVR.vrDS], 'Nominal Frequency' );
     Add( $401B, [TTypeVR.vrDS], 'Measured Center Frequency' );
     Add( $401C, [TTypeVR.vrDS], 'Measured Bandwidth' );
     Add( $401D, [TTypeVR.vrDS], 'Element Pitch B' );
     Add( $4020, [TTypeVR.vrSQ], 'Pulser Settings Sequence' );
     Add( $4022, [TTypeVR.vrDS], 'Pulse Width' );
     Add( $4024, [TTypeVR.vrDS], 'Excitation Frequency' );
     Add( $4026, [TTypeVR.vrCS], 'Modulation Type' );
     Add( $4028, [TTypeVR.vrDS], 'Damping' );
     Add( $4030, [TTypeVR.vrSQ], 'Receiver Settings Sequence' );
     Add( $4031, [TTypeVR.vrDS], 'Acquired Soundpath Length' );
     Add( $4032, [TTypeVR.vrCS], 'Acquisition Compression Type' );
     Add( $4033, [TTypeVR.vrIS], 'Acquisition Sample Size' );
     Add( $4034, [TTypeVR.vrDS], 'Rectifier Smoothing' );
     Add( $4035, [TTypeVR.vrSQ], 'DAC Sequence' );
     Add( $4036, [TTypeVR.vrCS], 'DAC Type' );
     Add( $4038, [TTypeVR.vrDS], 'DAC Gain Points' );
     Add( $403A, [TTypeVR.vrDS], 'DAC Time Points' );
     Add( $403C, [TTypeVR.vrDS], 'DAC Amplitude' );
     Add( $4040, [TTypeVR.vrSQ], 'Pre-Amplifier Settings Sequence' );
     Add( $4050, [TTypeVR.vrSQ], 'Transmit Transducer Settings Sequence' );
     Add( $4051, [TTypeVR.vrSQ], 'Receive Transducer Settings Sequence' );
     Add( $4052, [TTypeVR.vrDS], 'Incident Angle' );
     Add( $4054, [TTypeVR.vrST], 'Coupling Technique' );
     Add( $4056, [TTypeVR.vrST], 'Coupling Medium' );
     Add( $4057, [TTypeVR.vrDS], 'Coupling Velocity' );
     Add( $4058, [TTypeVR.vrDS], 'Probe Center Location X' );
     Add( $4059, [TTypeVR.vrDS], 'Probe Center Location Z' );
     Add( $405A, [TTypeVR.vrDS], 'Sound Path Length' );
     Add( $405C, [TTypeVR.vrST], 'Delay Law Identifier' );
     Add( $4060, [TTypeVR.vrSQ], 'Gate Settings Sequence' );
     Add( $4062, [TTypeVR.vrDS], 'Gate Threshold' );
     Add( $4064, [TTypeVR.vrDS], 'Velocity of Sound' );
     Add( $4070, [TTypeVR.vrSQ], 'Calibration Settings Sequence' );
     Add( $4072, [TTypeVR.vrST], 'Calibration Procedure' );
     Add( $4074, [TTypeVR.vrSH], 'Procedure Version' );
     Add( $4076, [TTypeVR.vrDA], 'Procedure Creation Date' );
     Add( $4078, [TTypeVR.vrDA], 'Procedure Expiration Date' );
     Add( $407A, [TTypeVR.vrDA], 'Procedure Last Modified Date' );
     Add( $407C, [TTypeVR.vrTM], 'Calibration Time' );
     Add( $407E, [TTypeVR.vrDA], 'Calibration Date' );
     Add( $4080, [TTypeVR.vrSQ], 'Probe Drive Equipment Sequence' );
     Add( $4081, [TTypeVR.vrCS], 'Drive Type' );
     Add( $4082, [TTypeVR.vrLT], 'Probe Drive Notes' );
     Add( $4083, [TTypeVR.vrSQ], 'Drive Probe Sequence' );
     Add( $4084, [TTypeVR.vrDS], 'Probe Inductance' );
     Add( $4085, [TTypeVR.vrDS], 'Probe Resistance' );
     Add( $4086, [TTypeVR.vrSQ], 'Receive Probe Sequence' );
     Add( $4087, [TTypeVR.vrSQ], 'Probe Drive Settings Sequence' );
     Add( $4088, [TTypeVR.vrDS], 'Bridge Resistors' );
     Add( $4089, [TTypeVR.vrDS], 'Probe Orientation Angle' );
     Add( $408B, [TTypeVR.vrDS], 'User Selected Gain Y' );
     Add( $408C, [TTypeVR.vrDS], 'User Selected Phase' );
     Add( $408D, [TTypeVR.vrDS], 'User Selected Offset X' );
     Add( $408E, [TTypeVR.vrDS], 'User Selected Offset Y' );
     Add( $4091, [TTypeVR.vrSQ], 'Channel Settings Sequence' );
     Add( $4092, [TTypeVR.vrDS], 'Channel Threshold' );
     Add( $409A, [TTypeVR.vrSQ], 'Scanner Settings Sequence' );
     Add( $409B, [TTypeVR.vrST], 'Scan Procedure' );
     Add( $409C, [TTypeVR.vrDS], 'Translation Rate X' );
     Add( $409D, [TTypeVR.vrDS], 'Translation Rate Y' );
     Add( $409F, [TTypeVR.vrDS], 'Channel Overlap' );
     Add( $40A0, [TTypeVR.vrLO], 'Image Quality Indicator Type' );
     Add( $40A1, [TTypeVR.vrLO], 'Image Quality Indicator Material' );
     Add( $40A2, [TTypeVR.vrLO], 'Image Quality Indicator Size' );
     Add( $5002, [TTypeVR.vrIS], 'LINAC Energy' );
     Add( $5004, [TTypeVR.vrIS], 'LINAC Output' );
     Add( $5100, [TTypeVR.vrUS], 'Active Aperture' );
     Add( $5101, [TTypeVR.vrDS], 'Total Aperture' );
     Add( $5102, [TTypeVR.vrDS], 'Aperture Elevation' );
     Add( $5103, [TTypeVR.vrDS], 'Main Lobe Angle' );
     Add( $5104, [TTypeVR.vrDS], 'Main Roof Angle' );
     Add( $5105, [TTypeVR.vrCS], 'Connector Type' );
     Add( $5106, [TTypeVR.vrSH], 'Wedge Model Number' );
     Add( $5107, [TTypeVR.vrDS], 'Wedge Angle Float' );
     Add( $5108, [TTypeVR.vrDS], 'Wedge Roof Angle' );
     Add( $5109, [TTypeVR.vrCS], 'Wedge Element 1 Position' );
     Add( $510A, [TTypeVR.vrDS], 'Wedge Material Velocity' );
     Add( $510B, [TTypeVR.vrSH], 'Wedge Material' );
     Add( $510C, [TTypeVR.vrDS], 'Wedge Offset Z' );
     Add( $510D, [TTypeVR.vrDS], 'Wedge Origin Offset X' );
     Add( $510E, [TTypeVR.vrDS], 'Wedge Time Delay' );
     Add( $510F, [TTypeVR.vrSH], 'Wedge Name' );
     Add( $5110, [TTypeVR.vrSH], 'Wedge Manufacturer Name' );
     Add( $5111, [TTypeVR.vrLO], 'Wedge Description' );
     Add( $5112, [TTypeVR.vrDS], 'Nominal Beam Angle' );
     Add( $5113, [TTypeVR.vrDS], 'Wedge Offset X' );
     Add( $5114, [TTypeVR.vrDS], 'Wedge Offset Y' );
     Add( $5115, [TTypeVR.vrDS], 'Wedge Total Length' );
     Add( $5116, [TTypeVR.vrDS], 'Wedge In Contact Length' );
     Add( $5117, [TTypeVR.vrDS], 'Wedge Front Gap' );
     Add( $5118, [TTypeVR.vrDS], 'Wedge Total Height' );
     Add( $5119, [TTypeVR.vrDS], 'Wedge Front Height' );
     Add( $511A, [TTypeVR.vrDS], 'Wedge Rear Height' );
     Add( $511B, [TTypeVR.vrDS], 'Wedge Total Width' );
     Add( $511C, [TTypeVR.vrDS], 'Wedge In Contact Width' );
     Add( $511D, [TTypeVR.vrDS], 'Wedge Chamfer Height' );
     Add( $511E, [TTypeVR.vrCS], 'Wedge Curve' );
     Add( $511F, [TTypeVR.vrDS], 'Radius Along the Wedge' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
