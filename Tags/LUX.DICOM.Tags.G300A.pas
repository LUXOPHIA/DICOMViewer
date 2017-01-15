unit LUX.DICOM.Tags.G300A;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup300A

     TdcmGrup300A = class( TdcmGrup )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup300A

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmGrup300A.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0002, [TTypeVR.vrSH], 'RT Plan Label' );
     Add( $0003, [TTypeVR.vrLO], 'RT Plan Name' );
     Add( $0004, [TTypeVR.vrST], 'RT Plan Description' );
     Add( $0006, [TTypeVR.vrDA], 'RT Plan Date' );
     Add( $0007, [TTypeVR.vrTM], 'RT Plan Time' );
     Add( $0009, [TTypeVR.vrLO], 'Treatment Protocols' );
     Add( $000A, [TTypeVR.vrCS], 'Plan Intent' );
     Add( $000B, [TTypeVR.vrLO], 'Treatment Sites' );
     Add( $000C, [TTypeVR.vrCS], 'RT Plan Geometry' );
     Add( $000E, [TTypeVR.vrST], 'Prescription Description' );
     Add( $0010, [TTypeVR.vrSQ], 'Dose Reference Sequence' );
     Add( $0012, [TTypeVR.vrIS], 'Dose Reference Number' );
     Add( $0013, [TTypeVR.vrUI], 'Dose Reference UID' );
     Add( $0014, [TTypeVR.vrCS], 'Dose Reference Structure Type' );
     Add( $0015, [TTypeVR.vrCS], 'Nominal Beam Energy Unit' );
     Add( $0016, [TTypeVR.vrLO], 'Dose Reference Description' );
     Add( $0018, [TTypeVR.vrDS], 'Dose Reference Point Coordinates' );
     Add( $001A, [TTypeVR.vrDS], 'Nominal Prior Dose' );
     Add( $0020, [TTypeVR.vrCS], 'Dose Reference Type' );
     Add( $0021, [TTypeVR.vrDS], 'Constraint Weight' );
     Add( $0022, [TTypeVR.vrDS], 'Delivery Warning Dose' );
     Add( $0023, [TTypeVR.vrDS], 'Delivery Maximum Dose' );
     Add( $0025, [TTypeVR.vrDS], 'Target Minimum Dose' );
     Add( $0026, [TTypeVR.vrDS], 'Target Prescription Dose' );
     Add( $0027, [TTypeVR.vrDS], 'Target Maximum Dose' );
     Add( $0028, [TTypeVR.vrDS], 'Target Underdose Volume Fraction' );
     Add( $002A, [TTypeVR.vrDS], 'Organ at Risk Full-volume Dose' );
     Add( $002B, [TTypeVR.vrDS], 'Organ at Risk Limit Dose' );
     Add( $002C, [TTypeVR.vrDS], 'Organ at Risk Maximum Dose' );
     Add( $002D, [TTypeVR.vrDS], 'Organ at Risk Overdose Volume Fraction' );
     Add( $0040, [TTypeVR.vrSQ], 'Tolerance Table Sequence' );
     Add( $0042, [TTypeVR.vrIS], 'Tolerance Table Number' );
     Add( $0043, [TTypeVR.vrSH], 'Tolerance Table Label' );
     Add( $0044, [TTypeVR.vrDS], 'Gantry Angle Tolerance' );
     Add( $0046, [TTypeVR.vrDS], 'Beam Limiting Device Angle Tolerance' );
     Add( $0048, [TTypeVR.vrSQ], 'Beam Limiting Device Tolerance Sequence' );
     Add( $004A, [TTypeVR.vrDS], 'Beam Limiting Device Position Tolerance' );
     Add( $004B, [TTypeVR.vrFL], 'Snout Position Tolerance' );
     Add( $004C, [TTypeVR.vrDS], 'Patient Support Angle Tolerance' );
     Add( $004E, [TTypeVR.vrDS], 'Table Top Eccentric Angle Tolerance' );
     Add( $004F, [TTypeVR.vrFL], 'Table Top Pitch Angle Tolerance' );
     Add( $0050, [TTypeVR.vrFL], 'Table Top Roll Angle Tolerance' );
     Add( $0051, [TTypeVR.vrDS], 'Table Top Vertical Position Tolerance' );
     Add( $0052, [TTypeVR.vrDS], 'Table Top Longitudinal Position Tolerance' );
     Add( $0053, [TTypeVR.vrDS], 'Table Top Lateral Position Tolerance' );
     Add( $0055, [TTypeVR.vrCS], 'RT Plan Relationship' );
     Add( $0070, [TTypeVR.vrSQ], 'Fraction Group Sequence' );
     Add( $0071, [TTypeVR.vrIS], 'Fraction Group Number' );
     Add( $0072, [TTypeVR.vrLO], 'Fraction Group Description' );
     Add( $0078, [TTypeVR.vrIS], 'Number of Fractions Planned' );
     Add( $0079, [TTypeVR.vrIS], 'Number of Fraction Pattern Digits Per Day' );
     Add( $007A, [TTypeVR.vrIS], 'Repeat Fraction Cycle Length' );
     Add( $007B, [TTypeVR.vrLT], 'Fraction Pattern' );
     Add( $0080, [TTypeVR.vrIS], 'Number of Beams' );
     Add( $0082, [TTypeVR.vrDS], 'Beam Dose Specification Point' );
     Add( $0084, [TTypeVR.vrDS], 'Beam Dose' );
     Add( $0086, [TTypeVR.vrDS], 'Beam Meterset' );
     Add( $0088, [TTypeVR.vrFL], 'Beam Dose Point Depth' );
     Add( $0089, [TTypeVR.vrFL], 'Beam Dose Point Equivalent Depth' );
     Add( $008A, [TTypeVR.vrFL], 'Beam Dose Point SSD' );
     Add( $008B, [TTypeVR.vrCS], 'Beam Dose Meaning' );
     Add( $008C, [TTypeVR.vrSQ], 'Beam Dose Verification Control Point Sequence' );
     Add( $008D, [TTypeVR.vrFL], 'Average Beam Dose Point Depth' );
     Add( $008E, [TTypeVR.vrFL], 'Average Beam Dose Point Equivalent Depth' );
     Add( $008F, [TTypeVR.vrFL], 'Average Beam Dose Point SSD' );
     Add( $0090, [TTypeVR.vrCS], 'Beam Dose Type' );
     Add( $0091, [TTypeVR.vrDS], 'Alternate Beam Dose' );
     Add( $0092, [TTypeVR.vrCS], 'Alternate Beam Dose Type' );
     Add( $00A0, [TTypeVR.vrIS], 'Number of Brachy Application Setups' );
     Add( $00A2, [TTypeVR.vrDS], 'Brachy Application Setup Dose Specification Point' );
     Add( $00A4, [TTypeVR.vrDS], 'Brachy Application Setup Dose' );
     Add( $00B0, [TTypeVR.vrSQ], 'Beam Sequence' );
     Add( $00B2, [TTypeVR.vrSH], 'Treatment Machine Name' );
     Add( $00B3, [TTypeVR.vrCS], 'Primary Dosimeter Unit' );
     Add( $00B4, [TTypeVR.vrDS], 'Source-Axis Distance' );
     Add( $00B6, [TTypeVR.vrSQ], 'Beam Limiting Device Sequence' );
     Add( $00B8, [TTypeVR.vrCS], 'RT Beam Limiting Device Type' );
     Add( $00BA, [TTypeVR.vrDS], 'Source to Beam Limiting Device Distance' );
     Add( $00BB, [TTypeVR.vrFL], 'Isocenter to Beam Limiting Device Distance' );
     Add( $00BC, [TTypeVR.vrIS], 'Number of Leaf/Jaw Pairs' );
     Add( $00BE, [TTypeVR.vrDS], 'Leaf Position Boundaries' );
     Add( $00C0, [TTypeVR.vrIS], 'Beam Number' );
     Add( $00C2, [TTypeVR.vrLO], 'Beam Name' );
     Add( $00C3, [TTypeVR.vrST], 'Beam Description' );
     Add( $00C4, [TTypeVR.vrCS], 'Beam Type' );
     Add( $00C5, [TTypeVR.vrFD], 'Beam Delivery Duration Limit' );
     Add( $00C6, [TTypeVR.vrCS], 'Radiation Type' );
     Add( $00C7, [TTypeVR.vrCS], 'High-Dose Technique Type' );
     Add( $00C8, [TTypeVR.vrIS], 'Reference Image Number' );
     Add( $00CA, [TTypeVR.vrSQ], 'Planned Verification Image Sequence' );
     Add( $00CC, [TTypeVR.vrLO], 'Imaging Device-Specific Acquisition Parameters' );
     Add( $00CE, [TTypeVR.vrCS], 'Treatment Delivery Type' );
     Add( $00D0, [TTypeVR.vrIS], 'Number of Wedges' );
     Add( $00D1, [TTypeVR.vrSQ], 'Wedge Sequence' );
     Add( $00D2, [TTypeVR.vrIS], 'Wedge Number' );
     Add( $00D3, [TTypeVR.vrCS], 'Wedge Type' );
     Add( $00D4, [TTypeVR.vrSH], 'Wedge ID' );
     Add( $00D5, [TTypeVR.vrIS], 'Wedge Angle' );
     Add( $00D6, [TTypeVR.vrDS], 'Wedge Factor' );
     Add( $00D7, [TTypeVR.vrFL], 'Total Wedge Tray Water-Equivalent Thickness' );
     Add( $00D8, [TTypeVR.vrDS], 'Wedge Orientation' );
     Add( $00D9, [TTypeVR.vrFL], 'Isocenter to Wedge Tray Distance' );
     Add( $00DA, [TTypeVR.vrDS], 'Source to Wedge Tray Distance' );
     Add( $00DB, [TTypeVR.vrFL], 'Wedge Thin Edge Position' );
     Add( $00DC, [TTypeVR.vrSH], 'Bolus ID' );
     Add( $00DD, [TTypeVR.vrST], 'Bolus Description' );
     Add( $00DE, [TTypeVR.vrDS], 'Effective Wedge Angle' );
     Add( $00E0, [TTypeVR.vrIS], 'Number of Compensators' );
     Add( $00E1, [TTypeVR.vrSH], 'Material ID' );
     Add( $00E2, [TTypeVR.vrDS], 'Total Compensator Tray Factor' );
     Add( $00E3, [TTypeVR.vrSQ], 'Compensator Sequence' );
     Add( $00E4, [TTypeVR.vrIS], 'Compensator Number' );
     Add( $00E5, [TTypeVR.vrSH], 'Compensator ID' );
     Add( $00E6, [TTypeVR.vrDS], 'Source to Compensator Tray Distance' );
     Add( $00E7, [TTypeVR.vrIS], 'Compensator Rows' );
     Add( $00E8, [TTypeVR.vrIS], 'Compensator Columns' );
     Add( $00E9, [TTypeVR.vrDS], 'Compensator Pixel Spacing' );
     Add( $00EA, [TTypeVR.vrDS], 'Compensator Position' );
     Add( $00EB, [TTypeVR.vrDS], 'Compensator Transmission Data' );
     Add( $00EC, [TTypeVR.vrDS], 'Compensator Thickness Data' );
     Add( $00ED, [TTypeVR.vrIS], 'Number of Boli' );
     Add( $00EE, [TTypeVR.vrCS], 'Compensator Type' );
     Add( $00EF, [TTypeVR.vrSH], 'Compensator Tray ID' );
     Add( $00F0, [TTypeVR.vrIS], 'Number of Blocks' );
     Add( $00F2, [TTypeVR.vrDS], 'Total Block Tray Factor' );
     Add( $00F3, [TTypeVR.vrFL], 'Total Block Tray Water-Equivalent Thickness' );
     Add( $00F4, [TTypeVR.vrSQ], 'Block Sequence' );
     Add( $00F5, [TTypeVR.vrSH], 'Block Tray ID' );
     Add( $00F6, [TTypeVR.vrDS], 'Source to Block Tray Distance' );
     Add( $00F7, [TTypeVR.vrFL], 'Isocenter to Block Tray Distance' );
     Add( $00F8, [TTypeVR.vrCS], 'Block Type' );
     Add( $00F9, [TTypeVR.vrLO], 'Accessory Code' );
     Add( $00FA, [TTypeVR.vrCS], 'Block Divergence' );
     Add( $00FB, [TTypeVR.vrCS], 'Block Mounting Position' );
     Add( $00FC, [TTypeVR.vrIS], 'Block Number' );
     Add( $00FE, [TTypeVR.vrLO], 'Block Name' );
     Add( $0100, [TTypeVR.vrDS], 'Block Thickness' );
     Add( $0102, [TTypeVR.vrDS], 'Block Transmission' );
     Add( $0104, [TTypeVR.vrIS], 'Block Number of Points' );
     Add( $0106, [TTypeVR.vrDS], 'Block Data' );
     Add( $0107, [TTypeVR.vrSQ], 'Applicator Sequence' );
     Add( $0108, [TTypeVR.vrSH], 'Applicator ID' );
     Add( $0109, [TTypeVR.vrCS], 'Applicator Type' );
     Add( $010A, [TTypeVR.vrLO], 'Applicator Description' );
     Add( $010C, [TTypeVR.vrDS], 'Cumulative Dose Reference Coefficient' );
     Add( $010E, [TTypeVR.vrDS], 'Final Cumulative Meterset Weight' );
     Add( $0110, [TTypeVR.vrIS], 'Number of Control Points' );
     Add( $0111, [TTypeVR.vrSQ], 'Control Point Sequence' );
     Add( $0112, [TTypeVR.vrIS], 'Control Point Index' );
     Add( $0114, [TTypeVR.vrDS], 'Nominal Beam Energy' );
     Add( $0115, [TTypeVR.vrDS], 'Dose Rate Set' );
     Add( $0116, [TTypeVR.vrSQ], 'Wedge Position Sequence' );
     Add( $0118, [TTypeVR.vrCS], 'Wedge Position' );
     Add( $011A, [TTypeVR.vrSQ], 'Beam Limiting Device Position Sequence' );
     Add( $011C, [TTypeVR.vrDS], 'Leaf/Jaw Positions' );
     Add( $011E, [TTypeVR.vrDS], 'Gantry Angle' );
     Add( $011F, [TTypeVR.vrCS], 'Gantry Rotation Direction' );
     Add( $0120, [TTypeVR.vrDS], 'Beam Limiting Device Angle' );
     Add( $0121, [TTypeVR.vrCS], 'Beam Limiting Device Rotation Direction' );
     Add( $0122, [TTypeVR.vrDS], 'Patient Support Angle' );
     Add( $0123, [TTypeVR.vrCS], 'Patient Support Rotation Direction' );
     Add( $0124, [TTypeVR.vrDS], 'Table Top Eccentric Axis Distance' );
     Add( $0125, [TTypeVR.vrDS], 'Table Top Eccentric Angle' );
     Add( $0126, [TTypeVR.vrCS], 'Table Top Eccentric Rotation Direction' );
     Add( $0128, [TTypeVR.vrDS], 'Table Top Vertical Position' );
     Add( $0129, [TTypeVR.vrDS], 'Table Top Longitudinal Position' );
     Add( $012A, [TTypeVR.vrDS], 'Table Top Lateral Position' );
     Add( $012C, [TTypeVR.vrDS], 'Isocenter Position' );
     Add( $012E, [TTypeVR.vrDS], 'Surface Entry Point' );
     Add( $0130, [TTypeVR.vrDS], 'Source to Surface Distance' );
     Add( $0131, [TTypeVR.vrFL], 'Average Beam Dose Point Source to External Contour Distance' );
     Add( $0132, [TTypeVR.vrFL], 'Source to External Contour Distance' );
     Add( $0133, [TTypeVR.vrFL], 'External Contour Entry Point' );
     Add( $0134, [TTypeVR.vrDS], 'Cumulative Meterset Weight' );
     Add( $0140, [TTypeVR.vrFL], 'Table Top Pitch Angle' );
     Add( $0142, [TTypeVR.vrCS], 'Table Top Pitch Rotation Direction' );
     Add( $0144, [TTypeVR.vrFL], 'Table Top Roll Angle' );
     Add( $0146, [TTypeVR.vrCS], 'Table Top Roll Rotation Direction' );
     Add( $0148, [TTypeVR.vrFL], 'Head Fixation Angle' );
     Add( $014A, [TTypeVR.vrFL], 'Gantry Pitch Angle' );
     Add( $014C, [TTypeVR.vrCS], 'Gantry Pitch Rotation Direction' );
     Add( $014E, [TTypeVR.vrFL], 'Gantry Pitch Angle Tolerance' );
     Add( $0150, [TTypeVR.vrCS], 'Fixation Eye' );
     Add( $0151, [TTypeVR.vrDS], 'Chair Head Frame Position' );
     Add( $0152, [TTypeVR.vrDS], 'Head Fixation Angle Tolerance' );
     Add( $0153, [TTypeVR.vrDS], 'Chair Head Frame Position Tolerance' );
     Add( $0154, [TTypeVR.vrDS], 'Fixation Light Azimuthal Angle Tolerance' );
     Add( $0155, [TTypeVR.vrDS], 'Fixation Light Polar Angle Tolerance' );
     Add( $0180, [TTypeVR.vrSQ], 'Patient Setup Sequence' );
     Add( $0182, [TTypeVR.vrIS], 'Patient Setup Number' );
     Add( $0183, [TTypeVR.vrLO], 'Patient Setup Label' );
     Add( $0184, [TTypeVR.vrLO], 'Patient Additional Position' );
     Add( $0190, [TTypeVR.vrSQ], 'Fixation Device Sequence' );
     Add( $0192, [TTypeVR.vrCS], 'Fixation Device Type' );
     Add( $0194, [TTypeVR.vrSH], 'Fixation Device Label' );
     Add( $0196, [TTypeVR.vrST], 'Fixation Device Description' );
     Add( $0198, [TTypeVR.vrSH], 'Fixation Device Position' );
     Add( $0199, [TTypeVR.vrFL], 'Fixation Device Pitch Angle' );
     Add( $019A, [TTypeVR.vrFL], 'Fixation Device Roll Angle' );
     Add( $01A0, [TTypeVR.vrSQ], 'Shielding Device Sequence' );
     Add( $01A2, [TTypeVR.vrCS], 'Shielding Device Type' );
     Add( $01A4, [TTypeVR.vrSH], 'Shielding Device Label' );
     Add( $01A6, [TTypeVR.vrST], 'Shielding Device Description' );
     Add( $01A8, [TTypeVR.vrSH], 'Shielding Device Position' );
     Add( $01B0, [TTypeVR.vrCS], 'Setup Technique' );
     Add( $01B2, [TTypeVR.vrST], 'Setup Technique Description' );
     Add( $01B4, [TTypeVR.vrSQ], 'Setup Device Sequence' );
     Add( $01B6, [TTypeVR.vrCS], 'Setup Device Type' );
     Add( $01B8, [TTypeVR.vrSH], 'Setup Device Label' );
     Add( $01BA, [TTypeVR.vrST], 'Setup Device Description' );
     Add( $01BC, [TTypeVR.vrDS], 'Setup Device Parameter' );
     Add( $01D0, [TTypeVR.vrST], 'Setup Reference Description' );
     Add( $01D2, [TTypeVR.vrDS], 'Table Top Vertical Setup Displacement' );
     Add( $01D4, [TTypeVR.vrDS], 'Table Top Longitudinal Setup Displacement' );
     Add( $01D6, [TTypeVR.vrDS], 'Table Top Lateral Setup Displacement' );
     Add( $0200, [TTypeVR.vrCS], 'Brachy Treatment Technique' );
     Add( $0202, [TTypeVR.vrCS], 'Brachy Treatment Type' );
     Add( $0206, [TTypeVR.vrSQ], 'Treatment Machine Sequence' );
     Add( $0210, [TTypeVR.vrSQ], 'Source Sequence' );
     Add( $0212, [TTypeVR.vrIS], 'Source Number' );
     Add( $0214, [TTypeVR.vrCS], 'Source Type' );
     Add( $0216, [TTypeVR.vrLO], 'Source Manufacturer' );
     Add( $0218, [TTypeVR.vrDS], 'Active Source Diameter' );
     Add( $021A, [TTypeVR.vrDS], 'Active Source Length' );
     Add( $021B, [TTypeVR.vrSH], 'Source Model ID' );
     Add( $021C, [TTypeVR.vrLO], 'Source Description' );
     Add( $0222, [TTypeVR.vrDS], 'Source Encapsulation Nominal Thickness' );
     Add( $0224, [TTypeVR.vrDS], 'Source Encapsulation Nominal Transmission' );
     Add( $0226, [TTypeVR.vrLO], 'Source Isotope Name' );
     Add( $0228, [TTypeVR.vrDS], 'Source Isotope Half Life' );
     Add( $0229, [TTypeVR.vrCS], 'Source Strength Units' );
     Add( $022A, [TTypeVR.vrDS], 'Reference Air Kerma Rate' );
     Add( $022B, [TTypeVR.vrDS], 'Source Strength' );
     Add( $022C, [TTypeVR.vrDA], 'Source Strength Reference Date' );
     Add( $022E, [TTypeVR.vrTM], 'Source Strength Reference Time' );
     Add( $0230, [TTypeVR.vrSQ], 'Application Setup Sequence' );
     Add( $0232, [TTypeVR.vrCS], 'Application Setup Type' );
     Add( $0234, [TTypeVR.vrIS], 'Application Setup Number' );
     Add( $0236, [TTypeVR.vrLO], 'Application Setup Name' );
     Add( $0238, [TTypeVR.vrLO], 'Application Setup Manufacturer' );
     Add( $0240, [TTypeVR.vrIS], 'Template Number' );
     Add( $0242, [TTypeVR.vrSH], 'Template Type' );
     Add( $0244, [TTypeVR.vrLO], 'Template Name' );
     Add( $0250, [TTypeVR.vrDS], 'Total Reference Air Kerma' );
     Add( $0260, [TTypeVR.vrSQ], 'Brachy Accessory Device Sequence' );
     Add( $0262, [TTypeVR.vrIS], 'Brachy Accessory Device Number' );
     Add( $0263, [TTypeVR.vrSH], 'Brachy Accessory Device ID' );
     Add( $0264, [TTypeVR.vrCS], 'Brachy Accessory Device Type' );
     Add( $0266, [TTypeVR.vrLO], 'Brachy Accessory Device Name' );
     Add( $026A, [TTypeVR.vrDS], 'Brachy Accessory Device Nominal Thickness' );
     Add( $026C, [TTypeVR.vrDS], 'Brachy Accessory Device Nominal Transmission' );
     Add( $0280, [TTypeVR.vrSQ], 'Channel Sequence' );
     Add( $0282, [TTypeVR.vrIS], 'Channel Number' );
     Add( $0284, [TTypeVR.vrDS], 'Channel Length' );
     Add( $0286, [TTypeVR.vrDS], 'Channel Total Time' );
     Add( $0288, [TTypeVR.vrCS], 'Source Movement Type' );
     Add( $028A, [TTypeVR.vrIS], 'Number of Pulses' );
     Add( $028C, [TTypeVR.vrDS], 'Pulse Repetition Interval' );
     Add( $0290, [TTypeVR.vrIS], 'Source Applicator Number' );
     Add( $0291, [TTypeVR.vrSH], 'Source Applicator ID' );
     Add( $0292, [TTypeVR.vrCS], 'Source Applicator Type' );
     Add( $0294, [TTypeVR.vrLO], 'Source Applicator Name' );
     Add( $0296, [TTypeVR.vrDS], 'Source Applicator Length' );
     Add( $0298, [TTypeVR.vrLO], 'Source Applicator Manufacturer' );
     Add( $029C, [TTypeVR.vrDS], 'Source Applicator Wall Nominal Thickness' );
     Add( $029E, [TTypeVR.vrDS], 'Source Applicator Wall Nominal Transmission' );
     Add( $02A0, [TTypeVR.vrDS], 'Source Applicator Step Size' );
     Add( $02A2, [TTypeVR.vrIS], 'Transfer Tube Number' );
     Add( $02A4, [TTypeVR.vrDS], 'Transfer Tube Length' );
     Add( $02B0, [TTypeVR.vrSQ], 'Channel Shield Sequence' );
     Add( $02B2, [TTypeVR.vrIS], 'Channel Shield Number' );
     Add( $02B3, [TTypeVR.vrSH], 'Channel Shield ID' );
     Add( $02B4, [TTypeVR.vrLO], 'Channel Shield Name' );
     Add( $02B8, [TTypeVR.vrDS], 'Channel Shield Nominal Thickness' );
     Add( $02BA, [TTypeVR.vrDS], 'Channel Shield Nominal Transmission' );
     Add( $02C8, [TTypeVR.vrDS], 'Final Cumulative Time Weight' );
     Add( $02D0, [TTypeVR.vrSQ], 'Brachy Control Point Sequence' );
     Add( $02D2, [TTypeVR.vrDS], 'Control Point Relative Position' );
     Add( $02D4, [TTypeVR.vrDS], 'Control Point 3D Position' );
     Add( $02D6, [TTypeVR.vrDS], 'Cumulative Time Weight' );
     Add( $02E0, [TTypeVR.vrCS], 'Compensator Divergence' );
     Add( $02E1, [TTypeVR.vrCS], 'Compensator Mounting Position' );
     Add( $02E2, [TTypeVR.vrDS], 'Source to Compensator Distance' );
     Add( $02E3, [TTypeVR.vrFL], 'Total Compensator Tray Water-Equivalent Thickness' );
     Add( $02E4, [TTypeVR.vrFL], 'Isocenter to Compensator Tray Distance' );
     Add( $02E5, [TTypeVR.vrFL], 'Compensator Column Offset' );
     Add( $02E6, [TTypeVR.vrFL], 'Isocenter to Compensator Distances' );
     Add( $02E7, [TTypeVR.vrFL], 'Compensator Relative Stopping Power Ratio' );
     Add( $02E8, [TTypeVR.vrFL], 'Compensator Milling Tool Diameter' );
     Add( $02EA, [TTypeVR.vrSQ], 'Ion Range Compensator Sequence' );
     Add( $02EB, [TTypeVR.vrLT], 'Compensator Description' );
     Add( $0302, [TTypeVR.vrIS], 'Radiation Mass Number' );
     Add( $0304, [TTypeVR.vrIS], 'Radiation Atomic Number' );
     Add( $0306, [TTypeVR.vrSS], 'Radiation Charge State' );
     Add( $0308, [TTypeVR.vrCS], 'Scan Mode' );
     Add( $0309, [TTypeVR.vrCS], 'Modulated Scan Mode Type' );
     Add( $030A, [TTypeVR.vrFL], 'Virtual Source-Axis Distances' );
     Add( $030C, [TTypeVR.vrSQ], 'Snout Sequence' );
     Add( $030D, [TTypeVR.vrFL], 'Snout Position' );
     Add( $030F, [TTypeVR.vrSH], 'Snout ID' );
     Add( $0312, [TTypeVR.vrIS], 'Number of Range Shifters' );
     Add( $0314, [TTypeVR.vrSQ], 'Range Shifter Sequence' );
     Add( $0316, [TTypeVR.vrIS], 'Range Shifter Number' );
     Add( $0318, [TTypeVR.vrSH], 'Range Shifter ID' );
     Add( $0320, [TTypeVR.vrCS], 'Range Shifter Type' );
     Add( $0322, [TTypeVR.vrLO], 'Range Shifter Description' );
     Add( $0330, [TTypeVR.vrIS], 'Number of Lateral Spreading Devices' );
     Add( $0332, [TTypeVR.vrSQ], 'Lateral Spreading Device Sequence' );
     Add( $0334, [TTypeVR.vrIS], 'Lateral Spreading Device Number' );
     Add( $0336, [TTypeVR.vrSH], 'Lateral Spreading Device ID' );
     Add( $0338, [TTypeVR.vrCS], 'Lateral Spreading Device Type' );
     Add( $033A, [TTypeVR.vrLO], 'Lateral Spreading Device Description' );
     Add( $033C, [TTypeVR.vrFL], 'Lateral Spreading Device Water Equivalent Thickness' );
     Add( $0340, [TTypeVR.vrIS], 'Number of Range Modulators' );
     Add( $0342, [TTypeVR.vrSQ], 'Range Modulator Sequence' );
     Add( $0344, [TTypeVR.vrIS], 'Range Modulator Number' );
     Add( $0346, [TTypeVR.vrSH], 'Range Modulator ID' );
     Add( $0348, [TTypeVR.vrCS], 'Range Modulator Type' );
     Add( $034A, [TTypeVR.vrLO], 'Range Modulator Description' );
     Add( $034C, [TTypeVR.vrSH], 'Beam Current Modulation ID' );
     Add( $0350, [TTypeVR.vrCS], 'Patient Support Type' );
     Add( $0352, [TTypeVR.vrSH], 'Patient Support ID' );
     Add( $0354, [TTypeVR.vrLO], 'Patient Support Accessory Code' );
     Add( $0355, [TTypeVR.vrLO], 'Tray Accessory Code' );
     Add( $0356, [TTypeVR.vrFL], 'Fixation Light Azimuthal Angle' );
     Add( $0358, [TTypeVR.vrFL], 'Fixation Light Polar Angle' );
     Add( $035A, [TTypeVR.vrFL], 'Meterset Rate' );
     Add( $0360, [TTypeVR.vrSQ], 'Range Shifter Settings Sequence' );
     Add( $0362, [TTypeVR.vrLO], 'Range Shifter Setting' );
     Add( $0364, [TTypeVR.vrFL], 'Isocenter to Range Shifter Distance' );
     Add( $0366, [TTypeVR.vrFL], 'Range Shifter Water Equivalent Thickness' );
     Add( $0370, [TTypeVR.vrSQ], 'Lateral Spreading Device Settings Sequence' );
     Add( $0372, [TTypeVR.vrLO], 'Lateral Spreading Device Setting' );
     Add( $0374, [TTypeVR.vrFL], 'Isocenter to Lateral Spreading Device Distance' );
     Add( $0380, [TTypeVR.vrSQ], 'Range Modulator Settings Sequence' );
     Add( $0382, [TTypeVR.vrFL], 'Range Modulator Gating Start Value' );
     Add( $0384, [TTypeVR.vrFL], 'Range Modulator Gating Stop Value' );
     Add( $0386, [TTypeVR.vrFL], 'Range Modulator Gating Start Water Equivalent Thickness' );
     Add( $0388, [TTypeVR.vrFL], 'Range Modulator Gating Stop Water Equivalent Thickness' );
     Add( $038A, [TTypeVR.vrFL], 'Isocenter to Range Modulator Distance' );
     Add( $038F, [TTypeVR.vrFL], 'Scan Spot Time Offset' );
     Add( $0390, [TTypeVR.vrSH], 'Scan Spot Tune ID' );
     Add( $0391, [TTypeVR.vrIS], 'Scan Spot Prescribed Indices' );
     Add( $0392, [TTypeVR.vrIS], 'Number of Scan Spot Positions' );
     Add( $0393, [TTypeVR.vrCS], 'Scan Spot Reordered' );
     Add( $0394, [TTypeVR.vrFL], 'Scan Spot Position Map' );
     Add( $0395, [TTypeVR.vrCS], 'Scan Spot Reordering Allowed' );
     Add( $0396, [TTypeVR.vrFL], 'Scan Spot Meterset Weights' );
     Add( $0398, [TTypeVR.vrFL], 'Scanning Spot Size' );
     Add( $039A, [TTypeVR.vrIS], 'Number of Paintings' );
     Add( $03A0, [TTypeVR.vrSQ], 'Ion Tolerance Table Sequence' );
     Add( $03A2, [TTypeVR.vrSQ], 'Ion Beam Sequence' );
     Add( $03A4, [TTypeVR.vrSQ], 'Ion Beam Limiting Device Sequence' );
     Add( $03A6, [TTypeVR.vrSQ], 'Ion Block Sequence' );
     Add( $03A8, [TTypeVR.vrSQ], 'Ion Control Point Sequence' );
     Add( $03AA, [TTypeVR.vrSQ], 'Ion Wedge Sequence' );
     Add( $03AC, [TTypeVR.vrSQ], 'Ion Wedge Position Sequence' );
     Add( $0401, [TTypeVR.vrSQ], 'Referenced Setup Image Sequence' );
     Add( $0402, [TTypeVR.vrST], 'Setup Image Comment' );
     Add( $0410, [TTypeVR.vrSQ], 'Motion Synchronization Sequence' );
     Add( $0412, [TTypeVR.vrFL], 'Control Point Orientation' );
     Add( $0420, [TTypeVR.vrSQ], 'General Accessory Sequence' );
     Add( $0421, [TTypeVR.vrSH], 'General Accessory ID' );
     Add( $0422, [TTypeVR.vrST], 'General Accessory Description' );
     Add( $0423, [TTypeVR.vrCS], 'General Accessory Type' );
     Add( $0424, [TTypeVR.vrIS], 'General Accessory Number' );
     Add( $0425, [TTypeVR.vrFL], 'Source to General Accessory Distance' );
     Add( $0431, [TTypeVR.vrSQ], 'Applicator Geometry Sequence' );
     Add( $0432, [TTypeVR.vrCS], 'Applicator Aperture Shape' );
     Add( $0433, [TTypeVR.vrFL], 'Applicator Opening' );
     Add( $0434, [TTypeVR.vrFL], 'Applicator Opening X' );
     Add( $0435, [TTypeVR.vrFL], 'Applicator Opening Y' );
     Add( $0436, [TTypeVR.vrFL], 'Source to Applicator Mounting Position Distance' );
     Add( $0440, [TTypeVR.vrIS], 'Number of Block Slab Items' );
     Add( $0441, [TTypeVR.vrSQ], 'Block Slab Sequence' );
     Add( $0442, [TTypeVR.vrDS], 'Block Slab Thickness' );
     Add( $0443, [TTypeVR.vrUS], 'Block Slab Number' );
     Add( $0450, [TTypeVR.vrSQ], 'Device Motion Control Sequence' );
     Add( $0451, [TTypeVR.vrCS], 'Device Motion Execution Mode' );
     Add( $0452, [TTypeVR.vrCS], 'Device Motion Observation Mode' );
     Add( $0453, [TTypeVR.vrSQ], 'Device Motion Parameter Code Sequence' );
     Add( $0501, [TTypeVR.vrFL], 'Distal Depth Fraction' );
     Add( $0502, [TTypeVR.vrFL], 'Distal Depth' );
     Add( $0503, [TTypeVR.vrFL], 'Nominal Range Modulation Fractions' );
     Add( $0504, [TTypeVR.vrFL], 'Nominal Range Modulated Region Depths' );
     Add( $0505, [TTypeVR.vrSQ], 'Depth Dose Parameters Sequence' );
     Add( $0506, [TTypeVR.vrSQ], 'Delivered Depth Dose Parameters Sequence' );
     Add( $0507, [TTypeVR.vrFL], 'Delivered Distal Depth Fraction' );
     Add( $0508, [TTypeVR.vrFL], 'Delivered Distal Depth' );
     Add( $0509, [TTypeVR.vrFL], 'Delivered Nominal Range Modulation Fractions' );
     Add( $0510, [TTypeVR.vrFL], 'Delivered Nominal Range Modulated Region Depths' );
     Add( $0511, [TTypeVR.vrCS], 'Delivered Reference Dose Definition' );
     Add( $0512, [TTypeVR.vrCS], 'Reference Dose Definition' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
