unit LUX.DICOM.Tags.G300A;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems300A

     TDICOMElems300A = class( TDICOMElems )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems300A

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TDICOMElems300A.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0002, TKindVR.vrSH, 'RT Plan Label' );
     Add( $0003, TKindVR.vrLO, 'RT Plan Name' );
     Add( $0004, TKindVR.vrST, 'RT Plan Description' );
     Add( $0006, TKindVR.vrDA, 'RT Plan Date' );
     Add( $0007, TKindVR.vrTM, 'RT Plan Time' );
     Add( $0009, TKindVR.vrLO, 'Treatment Protocols' );
     Add( $000A, TKindVR.vrCS, 'Plan Intent' );
     Add( $000B, TKindVR.vrLO, 'Treatment Sites' );
     Add( $000C, TKindVR.vrCS, 'RT Plan Geometry' );
     Add( $000E, TKindVR.vrST, 'Prescription Description' );
     Add( $0010, TKindVR.vrSQ, 'Dose Reference Sequence' );
     Add( $0012, TKindVR.vrIS, 'Dose Reference Number' );
     Add( $0013, TKindVR.vrUI, 'Dose Reference UID' );
     Add( $0014, TKindVR.vrCS, 'Dose Reference Structure Type' );
     Add( $0015, TKindVR.vrCS, 'Nominal Beam Energy Unit' );
     Add( $0016, TKindVR.vrLO, 'Dose Reference Description' );
     Add( $0018, TKindVR.vrDS, 'Dose Reference Point Coordinates' );
     Add( $001A, TKindVR.vrDS, 'Nominal Prior Dose' );
     Add( $0020, TKindVR.vrCS, 'Dose Reference Type' );
     Add( $0021, TKindVR.vrDS, 'Constraint Weight' );
     Add( $0022, TKindVR.vrDS, 'Delivery Warning Dose' );
     Add( $0023, TKindVR.vrDS, 'Delivery Maximum Dose' );
     Add( $0025, TKindVR.vrDS, 'Target Minimum Dose' );
     Add( $0026, TKindVR.vrDS, 'Target Prescription Dose' );
     Add( $0027, TKindVR.vrDS, 'Target Maximum Dose' );
     Add( $0028, TKindVR.vrDS, 'Target Underdose Volume Fraction' );
     Add( $002A, TKindVR.vrDS, 'Organ at Risk Full-volume Dose' );
     Add( $002B, TKindVR.vrDS, 'Organ at Risk Limit Dose' );
     Add( $002C, TKindVR.vrDS, 'Organ at Risk Maximum Dose' );
     Add( $002D, TKindVR.vrDS, 'Organ at Risk Overdose Volume Fraction' );
     Add( $0040, TKindVR.vrSQ, 'Tolerance Table Sequence' );
     Add( $0042, TKindVR.vrIS, 'Tolerance Table Number' );
     Add( $0043, TKindVR.vrSH, 'Tolerance Table Label' );
     Add( $0044, TKindVR.vrDS, 'Gantry Angle Tolerance' );
     Add( $0046, TKindVR.vrDS, 'Beam Limiting Device Angle Tolerance' );
     Add( $0048, TKindVR.vrSQ, 'Beam Limiting Device Tolerance Sequence' );
     Add( $004A, TKindVR.vrDS, 'Beam Limiting Device Position Tolerance' );
     Add( $004B, TKindVR.vrFL, 'Snout Position Tolerance' );
     Add( $004C, TKindVR.vrDS, 'Patient Support Angle Tolerance' );
     Add( $004E, TKindVR.vrDS, 'Table Top Eccentric Angle Tolerance' );
     Add( $004F, TKindVR.vrFL, 'Table Top Pitch Angle Tolerance' );
     Add( $0050, TKindVR.vrFL, 'Table Top Roll Angle Tolerance' );
     Add( $0051, TKindVR.vrDS, 'Table Top Vertical Position Tolerance' );
     Add( $0052, TKindVR.vrDS, 'Table Top Longitudinal Position Tolerance' );
     Add( $0053, TKindVR.vrDS, 'Table Top Lateral Position Tolerance' );
     Add( $0055, TKindVR.vrCS, 'RT Plan Relationship' );
     Add( $0070, TKindVR.vrSQ, 'Fraction Group Sequence' );
     Add( $0071, TKindVR.vrIS, 'Fraction Group Number' );
     Add( $0072, TKindVR.vrLO, 'Fraction Group Description' );
     Add( $0078, TKindVR.vrIS, 'Number of Fractions Planned' );
     Add( $0079, TKindVR.vrIS, 'Number of Fraction Pattern Digits Per Day' );
     Add( $007A, TKindVR.vrIS, 'Repeat Fraction Cycle Length' );
     Add( $007B, TKindVR.vrLT, 'Fraction Pattern' );
     Add( $0080, TKindVR.vrIS, 'Number of Beams' );
     Add( $0082, TKindVR.vrDS, 'Beam Dose Specification Point' );
     Add( $0084, TKindVR.vrDS, 'Beam Dose' );
     Add( $0086, TKindVR.vrDS, 'Beam Meterset' );
     Add( $0088, TKindVR.vrFL, 'Beam Dose Point Depth' );
     Add( $0089, TKindVR.vrFL, 'Beam Dose Point Equivalent Depth' );
     Add( $008A, TKindVR.vrFL, 'Beam Dose Point SSD' );
     Add( $008B, TKindVR.vrCS, 'Beam Dose Meaning' );
     Add( $008C, TKindVR.vrSQ, 'Beam Dose Verification Control Point Sequence' );
     Add( $008D, TKindVR.vrFL, 'Average Beam Dose Point Depth' );
     Add( $008E, TKindVR.vrFL, 'Average Beam Dose Point Equivalent Depth' );
     Add( $008F, TKindVR.vrFL, 'Average Beam Dose Point SSD' );
     Add( $0090, TKindVR.vrCS, 'Beam Dose Type' );
     Add( $0091, TKindVR.vrDS, 'Alternate Beam Dose' );
     Add( $0092, TKindVR.vrCS, 'Alternate Beam Dose Type' );
     Add( $00A0, TKindVR.vrIS, 'Number of Brachy Application Setups' );
     Add( $00A2, TKindVR.vrDS, 'Brachy Application Setup Dose Specification Point' );
     Add( $00A4, TKindVR.vrDS, 'Brachy Application Setup Dose' );
     Add( $00B0, TKindVR.vrSQ, 'Beam Sequence' );
     Add( $00B2, TKindVR.vrSH, 'Treatment Machine Name' );
     Add( $00B3, TKindVR.vrCS, 'Primary Dosimeter Unit' );
     Add( $00B4, TKindVR.vrDS, 'Source-Axis Distance' );
     Add( $00B6, TKindVR.vrSQ, 'Beam Limiting Device Sequence' );
     Add( $00B8, TKindVR.vrCS, 'RT Beam Limiting Device Type' );
     Add( $00BA, TKindVR.vrDS, 'Source to Beam Limiting Device Distance' );
     Add( $00BB, TKindVR.vrFL, 'Isocenter to Beam Limiting Device Distance' );
     Add( $00BC, TKindVR.vrIS, 'Number of Leaf/Jaw Pairs' );
     Add( $00BE, TKindVR.vrDS, 'Leaf Position Boundaries' );
     Add( $00C0, TKindVR.vrIS, 'Beam Number' );
     Add( $00C2, TKindVR.vrLO, 'Beam Name' );
     Add( $00C3, TKindVR.vrST, 'Beam Description' );
     Add( $00C4, TKindVR.vrCS, 'Beam Type' );
     Add( $00C5, TKindVR.vrFD, 'Beam Delivery Duration Limit' );
     Add( $00C6, TKindVR.vrCS, 'Radiation Type' );
     Add( $00C7, TKindVR.vrCS, 'High-Dose Technique Type' );
     Add( $00C8, TKindVR.vrIS, 'Reference Image Number' );
     Add( $00CA, TKindVR.vrSQ, 'Planned Verification Image Sequence' );
     Add( $00CC, TKindVR.vrLO, 'Imaging Device-Specific Acquisition Parameters' );
     Add( $00CE, TKindVR.vrCS, 'Treatment Delivery Type' );
     Add( $00D0, TKindVR.vrIS, 'Number of Wedges' );
     Add( $00D1, TKindVR.vrSQ, 'Wedge Sequence' );
     Add( $00D2, TKindVR.vrIS, 'Wedge Number' );
     Add( $00D3, TKindVR.vrCS, 'Wedge Type' );
     Add( $00D4, TKindVR.vrSH, 'Wedge ID' );
     Add( $00D5, TKindVR.vrIS, 'Wedge Angle' );
     Add( $00D6, TKindVR.vrDS, 'Wedge Factor' );
     Add( $00D7, TKindVR.vrFL, 'Total Wedge Tray Water-Equivalent Thickness' );
     Add( $00D8, TKindVR.vrDS, 'Wedge Orientation' );
     Add( $00D9, TKindVR.vrFL, 'Isocenter to Wedge Tray Distance' );
     Add( $00DA, TKindVR.vrDS, 'Source to Wedge Tray Distance' );
     Add( $00DB, TKindVR.vrFL, 'Wedge Thin Edge Position' );
     Add( $00DC, TKindVR.vrSH, 'Bolus ID' );
     Add( $00DD, TKindVR.vrST, 'Bolus Description' );
     Add( $00DE, TKindVR.vrDS, 'Effective Wedge Angle' );
     Add( $00E0, TKindVR.vrIS, 'Number of Compensators' );
     Add( $00E1, TKindVR.vrSH, 'Material ID' );
     Add( $00E2, TKindVR.vrDS, 'Total Compensator Tray Factor' );
     Add( $00E3, TKindVR.vrSQ, 'Compensator Sequence' );
     Add( $00E4, TKindVR.vrIS, 'Compensator Number' );
     Add( $00E5, TKindVR.vrSH, 'Compensator ID' );
     Add( $00E6, TKindVR.vrDS, 'Source to Compensator Tray Distance' );
     Add( $00E7, TKindVR.vrIS, 'Compensator Rows' );
     Add( $00E8, TKindVR.vrIS, 'Compensator Columns' );
     Add( $00E9, TKindVR.vrDS, 'Compensator Pixel Spacing' );
     Add( $00EA, TKindVR.vrDS, 'Compensator Position' );
     Add( $00EB, TKindVR.vrDS, 'Compensator Transmission Data' );
     Add( $00EC, TKindVR.vrDS, 'Compensator Thickness Data' );
     Add( $00ED, TKindVR.vrIS, 'Number of Boli' );
     Add( $00EE, TKindVR.vrCS, 'Compensator Type' );
     Add( $00EF, TKindVR.vrSH, 'Compensator Tray ID' );
     Add( $00F0, TKindVR.vrIS, 'Number of Blocks' );
     Add( $00F2, TKindVR.vrDS, 'Total Block Tray Factor' );
     Add( $00F3, TKindVR.vrFL, 'Total Block Tray Water-Equivalent Thickness' );
     Add( $00F4, TKindVR.vrSQ, 'Block Sequence' );
     Add( $00F5, TKindVR.vrSH, 'Block Tray ID' );
     Add( $00F6, TKindVR.vrDS, 'Source to Block Tray Distance' );
     Add( $00F7, TKindVR.vrFL, 'Isocenter to Block Tray Distance' );
     Add( $00F8, TKindVR.vrCS, 'Block Type' );
     Add( $00F9, TKindVR.vrLO, 'Accessory Code' );
     Add( $00FA, TKindVR.vrCS, 'Block Divergence' );
     Add( $00FB, TKindVR.vrCS, 'Block Mounting Position' );
     Add( $00FC, TKindVR.vrIS, 'Block Number' );
     Add( $00FE, TKindVR.vrLO, 'Block Name' );
     Add( $0100, TKindVR.vrDS, 'Block Thickness' );
     Add( $0102, TKindVR.vrDS, 'Block Transmission' );
     Add( $0104, TKindVR.vrIS, 'Block Number of Points' );
     Add( $0106, TKindVR.vrDS, 'Block Data' );
     Add( $0107, TKindVR.vrSQ, 'Applicator Sequence' );
     Add( $0108, TKindVR.vrSH, 'Applicator ID' );
     Add( $0109, TKindVR.vrCS, 'Applicator Type' );
     Add( $010A, TKindVR.vrLO, 'Applicator Description' );
     Add( $010C, TKindVR.vrDS, 'Cumulative Dose Reference Coefficient' );
     Add( $010E, TKindVR.vrDS, 'Final Cumulative Meterset Weight' );
     Add( $0110, TKindVR.vrIS, 'Number of Control Points' );
     Add( $0111, TKindVR.vrSQ, 'Control Point Sequence' );
     Add( $0112, TKindVR.vrIS, 'Control Point Index' );
     Add( $0114, TKindVR.vrDS, 'Nominal Beam Energy' );
     Add( $0115, TKindVR.vrDS, 'Dose Rate Set' );
     Add( $0116, TKindVR.vrSQ, 'Wedge Position Sequence' );
     Add( $0118, TKindVR.vrCS, 'Wedge Position' );
     Add( $011A, TKindVR.vrSQ, 'Beam Limiting Device Position Sequence' );
     Add( $011C, TKindVR.vrDS, 'Leaf/Jaw Positions' );
     Add( $011E, TKindVR.vrDS, 'Gantry Angle' );
     Add( $011F, TKindVR.vrCS, 'Gantry Rotation Direction' );
     Add( $0120, TKindVR.vrDS, 'Beam Limiting Device Angle' );
     Add( $0121, TKindVR.vrCS, 'Beam Limiting Device Rotation Direction' );
     Add( $0122, TKindVR.vrDS, 'Patient Support Angle' );
     Add( $0123, TKindVR.vrCS, 'Patient Support Rotation Direction' );
     Add( $0124, TKindVR.vrDS, 'Table Top Eccentric Axis Distance' );
     Add( $0125, TKindVR.vrDS, 'Table Top Eccentric Angle' );
     Add( $0126, TKindVR.vrCS, 'Table Top Eccentric Rotation Direction' );
     Add( $0128, TKindVR.vrDS, 'Table Top Vertical Position' );
     Add( $0129, TKindVR.vrDS, 'Table Top Longitudinal Position' );
     Add( $012A, TKindVR.vrDS, 'Table Top Lateral Position' );
     Add( $012C, TKindVR.vrDS, 'Isocenter Position' );
     Add( $012E, TKindVR.vrDS, 'Surface Entry Point' );
     Add( $0130, TKindVR.vrDS, 'Source to Surface Distance' );
     Add( $0131, TKindVR.vrFL, 'Average Beam Dose Point Source to External Contour Distance' );
     Add( $0132, TKindVR.vrFL, 'Source to External Contour Distance' );
     Add( $0133, TKindVR.vrFL, 'External Contour Entry Point' );
     Add( $0134, TKindVR.vrDS, 'Cumulative Meterset Weight' );
     Add( $0140, TKindVR.vrFL, 'Table Top Pitch Angle' );
     Add( $0142, TKindVR.vrCS, 'Table Top Pitch Rotation Direction' );
     Add( $0144, TKindVR.vrFL, 'Table Top Roll Angle' );
     Add( $0146, TKindVR.vrCS, 'Table Top Roll Rotation Direction' );
     Add( $0148, TKindVR.vrFL, 'Head Fixation Angle' );
     Add( $014A, TKindVR.vrFL, 'Gantry Pitch Angle' );
     Add( $014C, TKindVR.vrCS, 'Gantry Pitch Rotation Direction' );
     Add( $014E, TKindVR.vrFL, 'Gantry Pitch Angle Tolerance' );
     Add( $0150, TKindVR.vrCS, 'Fixation Eye' );
     Add( $0151, TKindVR.vrDS, 'Chair Head Frame Position' );
     Add( $0152, TKindVR.vrDS, 'Head Fixation Angle Tolerance' );
     Add( $0153, TKindVR.vrDS, 'Chair Head Frame Position Tolerance' );
     Add( $0154, TKindVR.vrDS, 'Fixation Light Azimuthal Angle Tolerance' );
     Add( $0155, TKindVR.vrDS, 'Fixation Light Polar Angle Tolerance' );
     Add( $0180, TKindVR.vrSQ, 'Patient Setup Sequence' );
     Add( $0182, TKindVR.vrIS, 'Patient Setup Number' );
     Add( $0183, TKindVR.vrLO, 'Patient Setup Label' );
     Add( $0184, TKindVR.vrLO, 'Patient Additional Position' );
     Add( $0190, TKindVR.vrSQ, 'Fixation Device Sequence' );
     Add( $0192, TKindVR.vrCS, 'Fixation Device Type' );
     Add( $0194, TKindVR.vrSH, 'Fixation Device Label' );
     Add( $0196, TKindVR.vrST, 'Fixation Device Description' );
     Add( $0198, TKindVR.vrSH, 'Fixation Device Position' );
     Add( $0199, TKindVR.vrFL, 'Fixation Device Pitch Angle' );
     Add( $019A, TKindVR.vrFL, 'Fixation Device Roll Angle' );
     Add( $01A0, TKindVR.vrSQ, 'Shielding Device Sequence' );
     Add( $01A2, TKindVR.vrCS, 'Shielding Device Type' );
     Add( $01A4, TKindVR.vrSH, 'Shielding Device Label' );
     Add( $01A6, TKindVR.vrST, 'Shielding Device Description' );
     Add( $01A8, TKindVR.vrSH, 'Shielding Device Position' );
     Add( $01B0, TKindVR.vrCS, 'Setup Technique' );
     Add( $01B2, TKindVR.vrST, 'Setup Technique Description' );
     Add( $01B4, TKindVR.vrSQ, 'Setup Device Sequence' );
     Add( $01B6, TKindVR.vrCS, 'Setup Device Type' );
     Add( $01B8, TKindVR.vrSH, 'Setup Device Label' );
     Add( $01BA, TKindVR.vrST, 'Setup Device Description' );
     Add( $01BC, TKindVR.vrDS, 'Setup Device Parameter' );
     Add( $01D0, TKindVR.vrST, 'Setup Reference Description' );
     Add( $01D2, TKindVR.vrDS, 'Table Top Vertical Setup Displacement' );
     Add( $01D4, TKindVR.vrDS, 'Table Top Longitudinal Setup Displacement' );
     Add( $01D6, TKindVR.vrDS, 'Table Top Lateral Setup Displacement' );
     Add( $0200, TKindVR.vrCS, 'Brachy Treatment Technique' );
     Add( $0202, TKindVR.vrCS, 'Brachy Treatment Type' );
     Add( $0206, TKindVR.vrSQ, 'Treatment Machine Sequence' );
     Add( $0210, TKindVR.vrSQ, 'Source Sequence' );
     Add( $0212, TKindVR.vrIS, 'Source Number' );
     Add( $0214, TKindVR.vrCS, 'Source Type' );
     Add( $0216, TKindVR.vrLO, 'Source Manufacturer' );
     Add( $0218, TKindVR.vrDS, 'Active Source Diameter' );
     Add( $021A, TKindVR.vrDS, 'Active Source Length' );
     Add( $021B, TKindVR.vrSH, 'Source Model ID' );
     Add( $021C, TKindVR.vrLO, 'Source Description' );
     Add( $0222, TKindVR.vrDS, 'Source Encapsulation Nominal Thickness' );
     Add( $0224, TKindVR.vrDS, 'Source Encapsulation Nominal Transmission' );
     Add( $0226, TKindVR.vrLO, 'Source Isotope Name' );
     Add( $0228, TKindVR.vrDS, 'Source Isotope Half Life' );
     Add( $0229, TKindVR.vrCS, 'Source Strength Units' );
     Add( $022A, TKindVR.vrDS, 'Reference Air Kerma Rate' );
     Add( $022B, TKindVR.vrDS, 'Source Strength' );
     Add( $022C, TKindVR.vrDA, 'Source Strength Reference Date' );
     Add( $022E, TKindVR.vrTM, 'Source Strength Reference Time' );
     Add( $0230, TKindVR.vrSQ, 'Application Setup Sequence' );
     Add( $0232, TKindVR.vrCS, 'Application Setup Type' );
     Add( $0234, TKindVR.vrIS, 'Application Setup Number' );
     Add( $0236, TKindVR.vrLO, 'Application Setup Name' );
     Add( $0238, TKindVR.vrLO, 'Application Setup Manufacturer' );
     Add( $0240, TKindVR.vrIS, 'Template Number' );
     Add( $0242, TKindVR.vrSH, 'Template Type' );
     Add( $0244, TKindVR.vrLO, 'Template Name' );
     Add( $0250, TKindVR.vrDS, 'Total Reference Air Kerma' );
     Add( $0260, TKindVR.vrSQ, 'Brachy Accessory Device Sequence' );
     Add( $0262, TKindVR.vrIS, 'Brachy Accessory Device Number' );
     Add( $0263, TKindVR.vrSH, 'Brachy Accessory Device ID' );
     Add( $0264, TKindVR.vrCS, 'Brachy Accessory Device Type' );
     Add( $0266, TKindVR.vrLO, 'Brachy Accessory Device Name' );
     Add( $026A, TKindVR.vrDS, 'Brachy Accessory Device Nominal Thickness' );
     Add( $026C, TKindVR.vrDS, 'Brachy Accessory Device Nominal Transmission' );
     Add( $0280, TKindVR.vrSQ, 'Channel Sequence' );
     Add( $0282, TKindVR.vrIS, 'Channel Number' );
     Add( $0284, TKindVR.vrDS, 'Channel Length' );
     Add( $0286, TKindVR.vrDS, 'Channel Total Time' );
     Add( $0288, TKindVR.vrCS, 'Source Movement Type' );
     Add( $028A, TKindVR.vrIS, 'Number of Pulses' );
     Add( $028C, TKindVR.vrDS, 'Pulse Repetition Interval' );
     Add( $0290, TKindVR.vrIS, 'Source Applicator Number' );
     Add( $0291, TKindVR.vrSH, 'Source Applicator ID' );
     Add( $0292, TKindVR.vrCS, 'Source Applicator Type' );
     Add( $0294, TKindVR.vrLO, 'Source Applicator Name' );
     Add( $0296, TKindVR.vrDS, 'Source Applicator Length' );
     Add( $0298, TKindVR.vrLO, 'Source Applicator Manufacturer' );
     Add( $029C, TKindVR.vrDS, 'Source Applicator Wall Nominal Thickness' );
     Add( $029E, TKindVR.vrDS, 'Source Applicator Wall Nominal Transmission' );
     Add( $02A0, TKindVR.vrDS, 'Source Applicator Step Size' );
     Add( $02A2, TKindVR.vrIS, 'Transfer Tube Number' );
     Add( $02A4, TKindVR.vrDS, 'Transfer Tube Length' );
     Add( $02B0, TKindVR.vrSQ, 'Channel Shield Sequence' );
     Add( $02B2, TKindVR.vrIS, 'Channel Shield Number' );
     Add( $02B3, TKindVR.vrSH, 'Channel Shield ID' );
     Add( $02B4, TKindVR.vrLO, 'Channel Shield Name' );
     Add( $02B8, TKindVR.vrDS, 'Channel Shield Nominal Thickness' );
     Add( $02BA, TKindVR.vrDS, 'Channel Shield Nominal Transmission' );
     Add( $02C8, TKindVR.vrDS, 'Final Cumulative Time Weight' );
     Add( $02D0, TKindVR.vrSQ, 'Brachy Control Point Sequence' );
     Add( $02D2, TKindVR.vrDS, 'Control Point Relative Position' );
     Add( $02D4, TKindVR.vrDS, 'Control Point 3D Position' );
     Add( $02D6, TKindVR.vrDS, 'Cumulative Time Weight' );
     Add( $02E0, TKindVR.vrCS, 'Compensator Divergence' );
     Add( $02E1, TKindVR.vrCS, 'Compensator Mounting Position' );
     Add( $02E2, TKindVR.vrDS, 'Source to Compensator Distance' );
     Add( $02E3, TKindVR.vrFL, 'Total Compensator Tray Water-Equivalent Thickness' );
     Add( $02E4, TKindVR.vrFL, 'Isocenter to Compensator Tray Distance' );
     Add( $02E5, TKindVR.vrFL, 'Compensator Column Offset' );
     Add( $02E6, TKindVR.vrFL, 'Isocenter to Compensator Distances' );
     Add( $02E7, TKindVR.vrFL, 'Compensator Relative Stopping Power Ratio' );
     Add( $02E8, TKindVR.vrFL, 'Compensator Milling Tool Diameter' );
     Add( $02EA, TKindVR.vrSQ, 'Ion Range Compensator Sequence' );
     Add( $02EB, TKindVR.vrLT, 'Compensator Description' );
     Add( $0302, TKindVR.vrIS, 'Radiation Mass Number' );
     Add( $0304, TKindVR.vrIS, 'Radiation Atomic Number' );
     Add( $0306, TKindVR.vrSS, 'Radiation Charge State' );
     Add( $0308, TKindVR.vrCS, 'Scan Mode' );
     Add( $0309, TKindVR.vrCS, 'Modulated Scan Mode Type' );
     Add( $030A, TKindVR.vrFL, 'Virtual Source-Axis Distances' );
     Add( $030C, TKindVR.vrSQ, 'Snout Sequence' );
     Add( $030D, TKindVR.vrFL, 'Snout Position' );
     Add( $030F, TKindVR.vrSH, 'Snout ID' );
     Add( $0312, TKindVR.vrIS, 'Number of Range Shifters' );
     Add( $0314, TKindVR.vrSQ, 'Range Shifter Sequence' );
     Add( $0316, TKindVR.vrIS, 'Range Shifter Number' );
     Add( $0318, TKindVR.vrSH, 'Range Shifter ID' );
     Add( $0320, TKindVR.vrCS, 'Range Shifter Type' );
     Add( $0322, TKindVR.vrLO, 'Range Shifter Description' );
     Add( $0330, TKindVR.vrIS, 'Number of Lateral Spreading Devices' );
     Add( $0332, TKindVR.vrSQ, 'Lateral Spreading Device Sequence' );
     Add( $0334, TKindVR.vrIS, 'Lateral Spreading Device Number' );
     Add( $0336, TKindVR.vrSH, 'Lateral Spreading Device ID' );
     Add( $0338, TKindVR.vrCS, 'Lateral Spreading Device Type' );
     Add( $033A, TKindVR.vrLO, 'Lateral Spreading Device Description' );
     Add( $033C, TKindVR.vrFL, 'Lateral Spreading Device Water Equivalent Thickness' );
     Add( $0340, TKindVR.vrIS, 'Number of Range Modulators' );
     Add( $0342, TKindVR.vrSQ, 'Range Modulator Sequence' );
     Add( $0344, TKindVR.vrIS, 'Range Modulator Number' );
     Add( $0346, TKindVR.vrSH, 'Range Modulator ID' );
     Add( $0348, TKindVR.vrCS, 'Range Modulator Type' );
     Add( $034A, TKindVR.vrLO, 'Range Modulator Description' );
     Add( $034C, TKindVR.vrSH, 'Beam Current Modulation ID' );
     Add( $0350, TKindVR.vrCS, 'Patient Support Type' );
     Add( $0352, TKindVR.vrSH, 'Patient Support ID' );
     Add( $0354, TKindVR.vrLO, 'Patient Support Accessory Code' );
     Add( $0355, TKindVR.vrLO, 'Tray Accessory Code' );
     Add( $0356, TKindVR.vrFL, 'Fixation Light Azimuthal Angle' );
     Add( $0358, TKindVR.vrFL, 'Fixation Light Polar Angle' );
     Add( $035A, TKindVR.vrFL, 'Meterset Rate' );
     Add( $0360, TKindVR.vrSQ, 'Range Shifter Settings Sequence' );
     Add( $0362, TKindVR.vrLO, 'Range Shifter Setting' );
     Add( $0364, TKindVR.vrFL, 'Isocenter to Range Shifter Distance' );
     Add( $0366, TKindVR.vrFL, 'Range Shifter Water Equivalent Thickness' );
     Add( $0370, TKindVR.vrSQ, 'Lateral Spreading Device Settings Sequence' );
     Add( $0372, TKindVR.vrLO, 'Lateral Spreading Device Setting' );
     Add( $0374, TKindVR.vrFL, 'Isocenter to Lateral Spreading Device Distance' );
     Add( $0380, TKindVR.vrSQ, 'Range Modulator Settings Sequence' );
     Add( $0382, TKindVR.vrFL, 'Range Modulator Gating Start Value' );
     Add( $0384, TKindVR.vrFL, 'Range Modulator Gating Stop Value' );
     Add( $0386, TKindVR.vrFL, 'Range Modulator Gating Start Water Equivalent Thickness' );
     Add( $0388, TKindVR.vrFL, 'Range Modulator Gating Stop Water Equivalent Thickness' );
     Add( $038A, TKindVR.vrFL, 'Isocenter to Range Modulator Distance' );
     Add( $038F, TKindVR.vrFL, 'Scan Spot Time Offset' );
     Add( $0390, TKindVR.vrSH, 'Scan Spot Tune ID' );
     Add( $0391, TKindVR.vrIS, 'Scan Spot Prescribed Indices' );
     Add( $0392, TKindVR.vrIS, 'Number of Scan Spot Positions' );
     Add( $0393, TKindVR.vrCS, 'Scan Spot Reordered' );
     Add( $0394, TKindVR.vrFL, 'Scan Spot Position Map' );
     Add( $0395, TKindVR.vrCS, 'Scan Spot Reordering Allowed' );
     Add( $0396, TKindVR.vrFL, 'Scan Spot Meterset Weights' );
     Add( $0398, TKindVR.vrFL, 'Scanning Spot Size' );
     Add( $039A, TKindVR.vrIS, 'Number of Paintings' );
     Add( $03A0, TKindVR.vrSQ, 'Ion Tolerance Table Sequence' );
     Add( $03A2, TKindVR.vrSQ, 'Ion Beam Sequence' );
     Add( $03A4, TKindVR.vrSQ, 'Ion Beam Limiting Device Sequence' );
     Add( $03A6, TKindVR.vrSQ, 'Ion Block Sequence' );
     Add( $03A8, TKindVR.vrSQ, 'Ion Control Point Sequence' );
     Add( $03AA, TKindVR.vrSQ, 'Ion Wedge Sequence' );
     Add( $03AC, TKindVR.vrSQ, 'Ion Wedge Position Sequence' );
     Add( $0401, TKindVR.vrSQ, 'Referenced Setup Image Sequence' );
     Add( $0402, TKindVR.vrST, 'Setup Image Comment' );
     Add( $0410, TKindVR.vrSQ, 'Motion Synchronization Sequence' );
     Add( $0412, TKindVR.vrFL, 'Control Point Orientation' );
     Add( $0420, TKindVR.vrSQ, 'General Accessory Sequence' );
     Add( $0421, TKindVR.vrSH, 'General Accessory ID' );
     Add( $0422, TKindVR.vrST, 'General Accessory Description' );
     Add( $0423, TKindVR.vrCS, 'General Accessory Type' );
     Add( $0424, TKindVR.vrIS, 'General Accessory Number' );
     Add( $0425, TKindVR.vrFL, 'Source to General Accessory Distance' );
     Add( $0431, TKindVR.vrSQ, 'Applicator Geometry Sequence' );
     Add( $0432, TKindVR.vrCS, 'Applicator Aperture Shape' );
     Add( $0433, TKindVR.vrFL, 'Applicator Opening' );
     Add( $0434, TKindVR.vrFL, 'Applicator Opening X' );
     Add( $0435, TKindVR.vrFL, 'Applicator Opening Y' );
     Add( $0436, TKindVR.vrFL, 'Source to Applicator Mounting Position Distance' );
     Add( $0440, TKindVR.vrIS, 'Number of Block Slab Items' );
     Add( $0441, TKindVR.vrSQ, 'Block Slab Sequence' );
     Add( $0442, TKindVR.vrDS, 'Block Slab Thickness' );
     Add( $0443, TKindVR.vrUS, 'Block Slab Number' );
     Add( $0450, TKindVR.vrSQ, 'Device Motion Control Sequence' );
     Add( $0451, TKindVR.vrCS, 'Device Motion Execution Mode' );
     Add( $0452, TKindVR.vrCS, 'Device Motion Observation Mode' );
     Add( $0453, TKindVR.vrSQ, 'Device Motion Parameter Code Sequence' );
     Add( $0501, TKindVR.vrFL, 'Distal Depth Fraction' );
     Add( $0502, TKindVR.vrFL, 'Distal Depth' );
     Add( $0503, TKindVR.vrFL, 'Nominal Range Modulation Fractions' );
     Add( $0504, TKindVR.vrFL, 'Nominal Range Modulated Region Depths' );
     Add( $0505, TKindVR.vrSQ, 'Depth Dose Parameters Sequence' );
     Add( $0506, TKindVR.vrSQ, 'Delivered Depth Dose Parameters Sequence' );
     Add( $0507, TKindVR.vrFL, 'Delivered Distal Depth Fraction' );
     Add( $0508, TKindVR.vrFL, 'Delivered Distal Depth' );
     Add( $0509, TKindVR.vrFL, 'Delivered Nominal Range Modulation Fractions' );
     Add( $0510, TKindVR.vrFL, 'Delivered Nominal Range Modulated Region Depths' );
     Add( $0511, TKindVR.vrCS, 'Delivered Reference Dose Definition' );
     Add( $0512, TKindVR.vrCS, 'Reference Dose Definition' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
