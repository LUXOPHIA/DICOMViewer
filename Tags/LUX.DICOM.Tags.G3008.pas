unit LUX.DICOM.Tags.G3008;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems3008

     TDICOMElems3008 = class( TDICOMElems )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems3008

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TDICOMElems3008.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0010, TKindVR.vrSQ, 'Measured Dose Reference Sequence' );
     Add( $0012, TKindVR.vrST, 'Measured Dose Description' );
     Add( $0014, TKindVR.vrCS, 'Measured Dose Type' );
     Add( $0016, TKindVR.vrDS, 'Measured Dose Value' );
     Add( $0020, TKindVR.vrSQ, 'Treatment Session Beam Sequence' );
     Add( $0021, TKindVR.vrSQ, 'Treatment Session Ion Beam Sequence' );
     Add( $0022, TKindVR.vrIS, 'Current Fraction Number' );
     Add( $0024, TKindVR.vrDA, 'Treatment Control Point Date' );
     Add( $0025, TKindVR.vrTM, 'Treatment Control Point Time' );
     Add( $002A, TKindVR.vrCS, 'Treatment Termination Status' );
     Add( $002B, TKindVR.vrSH, 'Treatment Termination Code' );
     Add( $002C, TKindVR.vrCS, 'Treatment Verification Status' );
     Add( $0030, TKindVR.vrSQ, 'Referenced Treatment Record Sequence' );
     Add( $0032, TKindVR.vrDS, 'Specified Primary Meterset' );
     Add( $0033, TKindVR.vrDS, 'Specified Secondary Meterset' );
     Add( $0036, TKindVR.vrDS, 'Delivered Primary Meterset' );
     Add( $0037, TKindVR.vrDS, 'Delivered Secondary Meterset' );
     Add( $003A, TKindVR.vrDS, 'Specified Treatment Time' );
     Add( $003B, TKindVR.vrDS, 'Delivered Treatment Time' );
     Add( $0040, TKindVR.vrSQ, 'Control Point Delivery Sequence' );
     Add( $0041, TKindVR.vrSQ, 'Ion Control Point Delivery Sequence' );
     Add( $0042, TKindVR.vrDS, 'Specified Meterset' );
     Add( $0044, TKindVR.vrDS, 'Delivered Meterset' );
     Add( $0045, TKindVR.vrFL, 'Meterset Rate Set' );
     Add( $0046, TKindVR.vrFL, 'Meterset Rate Delivered' );
     Add( $0047, TKindVR.vrFL, 'Scan Spot Metersets Delivered' );
     Add( $0048, TKindVR.vrDS, 'Dose Rate Delivered' );
     Add( $0050, TKindVR.vrSQ, 'Treatment Summary Calculated Dose Reference Sequence' );
     Add( $0052, TKindVR.vrDS, 'Cumulative Dose to Dose Reference' );
     Add( $0054, TKindVR.vrDA, 'First Treatment Date' );
     Add( $0056, TKindVR.vrDA, 'Most Recent Treatment Date' );
     Add( $005A, TKindVR.vrIS, 'Number of Fractions Delivered' );
     Add( $0060, TKindVR.vrSQ, 'Override Sequence' );
     Add( $0061, TKindVR.vrAT, 'Parameter Sequence Pointer' );
     Add( $0062, TKindVR.vrAT, 'Override Parameter Pointer' );
     Add( $0063, TKindVR.vrIS, 'Parameter Item Index' );
     Add( $0064, TKindVR.vrIS, 'Measured Dose Reference Number' );
     Add( $0065, TKindVR.vrAT, 'Parameter Pointer' );
     Add( $0066, TKindVR.vrST, 'Override Reason' );
     Add( $0067, TKindVR.vrUS, 'Parameter Value Number' );
     Add( $0068, TKindVR.vrSQ, 'Corrected Parameter Sequence' );
     Add( $006A, TKindVR.vrFL, 'Correction Value' );
     Add( $0070, TKindVR.vrSQ, 'Calculated Dose Reference Sequence' );
     Add( $0072, TKindVR.vrIS, 'Calculated Dose Reference Number' );
     Add( $0074, TKindVR.vrST, 'Calculated Dose Reference Description' );
     Add( $0076, TKindVR.vrDS, 'Calculated Dose Reference Dose Value' );
     Add( $0078, TKindVR.vrDS, 'Start Meterset' );
     Add( $007A, TKindVR.vrDS, 'End Meterset' );
     Add( $0080, TKindVR.vrSQ, 'Referenced Measured Dose Reference Sequence' );
     Add( $0082, TKindVR.vrIS, 'Referenced Measured Dose Reference Number' );
     Add( $0090, TKindVR.vrSQ, 'Referenced Calculated Dose Reference Sequence' );
     Add( $0092, TKindVR.vrIS, 'Referenced Calculated Dose Reference Number' );
     Add( $00A0, TKindVR.vrSQ, 'Beam Limiting Device Leaf Pairs Sequence' );
     Add( $00B0, TKindVR.vrSQ, 'Recorded Wedge Sequence' );
     Add( $00C0, TKindVR.vrSQ, 'Recorded Compensator Sequence' );
     Add( $00D0, TKindVR.vrSQ, 'Recorded Block Sequence' );
     Add( $00E0, TKindVR.vrSQ, 'Treatment Summary Measured Dose Reference Sequence' );
     Add( $00F0, TKindVR.vrSQ, 'Recorded Snout Sequence' );
     Add( $00F2, TKindVR.vrSQ, 'Recorded Range Shifter Sequence' );
     Add( $00F4, TKindVR.vrSQ, 'Recorded Lateral Spreading Device Sequence' );
     Add( $00F6, TKindVR.vrSQ, 'Recorded Range Modulator Sequence' );
     Add( $0100, TKindVR.vrSQ, 'Recorded Source Sequence' );
     Add( $0105, TKindVR.vrLO, 'Source Serial Number' );
     Add( $0110, TKindVR.vrSQ, 'Treatment Session Application Setup Sequence' );
     Add( $0116, TKindVR.vrCS, 'Application Setup Check' );
     Add( $0120, TKindVR.vrSQ, 'Recorded Brachy Accessory Device Sequence' );
     Add( $0122, TKindVR.vrIS, 'Referenced Brachy Accessory Device Number' );
     Add( $0130, TKindVR.vrSQ, 'Recorded Channel Sequence' );
     Add( $0132, TKindVR.vrDS, 'Specified Channel Total Time' );
     Add( $0134, TKindVR.vrDS, 'Delivered Channel Total Time' );
     Add( $0136, TKindVR.vrIS, 'Specified Number of Pulses' );
     Add( $0138, TKindVR.vrIS, 'Delivered Number of Pulses' );
     Add( $013A, TKindVR.vrDS, 'Specified Pulse Repetition Interval' );
     Add( $013C, TKindVR.vrDS, 'Delivered Pulse Repetition Interval' );
     Add( $0140, TKindVR.vrSQ, 'Recorded Source Applicator Sequence' );
     Add( $0142, TKindVR.vrIS, 'Referenced Source Applicator Number' );
     Add( $0150, TKindVR.vrSQ, 'Recorded Channel Shield Sequence' );
     Add( $0152, TKindVR.vrIS, 'Referenced Channel Shield Number' );
     Add( $0160, TKindVR.vrSQ, 'Brachy Control Point Delivered Sequence' );
     Add( $0162, TKindVR.vrDA, 'Safe Position Exit Date' );
     Add( $0164, TKindVR.vrTM, 'Safe Position Exit Time' );
     Add( $0166, TKindVR.vrDA, 'Safe Position Return Date' );
     Add( $0168, TKindVR.vrTM, 'Safe Position Return Time' );
     Add( $0171, TKindVR.vrSQ, 'Pulse Specific Brachy Control Point Delivered Sequence' );
     Add( $0172, TKindVR.vrUS, 'Pulse Number' );
     Add( $0173, TKindVR.vrSQ, 'Brachy Pulse Control Point Delivered Sequence' );
     Add( $0200, TKindVR.vrCS, 'Current Treatment Status' );
     Add( $0202, TKindVR.vrST, 'Treatment Status Comment' );
     Add( $0220, TKindVR.vrSQ, 'Fraction Group Summary Sequence' );
     Add( $0223, TKindVR.vrIS, 'Referenced Fraction Number' );
     Add( $0224, TKindVR.vrCS, 'Fraction Group Type' );
     Add( $0230, TKindVR.vrCS, 'Beam Stopper Position' );
     Add( $0240, TKindVR.vrSQ, 'Fraction Status Summary Sequence' );
     Add( $0250, TKindVR.vrDA, 'Treatment Date' );
     Add( $0251, TKindVR.vrTM, 'Treatment Time' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
