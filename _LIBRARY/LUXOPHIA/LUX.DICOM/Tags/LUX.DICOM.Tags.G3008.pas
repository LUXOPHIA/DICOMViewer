unit LUX.DICOM.Tags.G3008;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup3008

     TdcmGrup3008 = class( TdcmGrup )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup3008

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmGrup3008.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0010, [TTypeVR.vrSQ], 'Measured Dose Reference Sequence' );
     Add( $0012, [TTypeVR.vrST], 'Measured Dose Description' );
     Add( $0014, [TTypeVR.vrCS], 'Measured Dose Type' );
     Add( $0016, [TTypeVR.vrDS], 'Measured Dose Value' );
     Add( $0020, [TTypeVR.vrSQ], 'Treatment Session Beam Sequence' );
     Add( $0021, [TTypeVR.vrSQ], 'Treatment Session Ion Beam Sequence' );
     Add( $0022, [TTypeVR.vrIS], 'Current Fraction Number' );
     Add( $0024, [TTypeVR.vrDA], 'Treatment Control Point Date' );
     Add( $0025, [TTypeVR.vrTM], 'Treatment Control Point Time' );
     Add( $002A, [TTypeVR.vrCS], 'Treatment Termination Status' );
     Add( $002B, [TTypeVR.vrSH], 'Treatment Termination Code' );
     Add( $002C, [TTypeVR.vrCS], 'Treatment Verification Status' );
     Add( $0030, [TTypeVR.vrSQ], 'Referenced Treatment Record Sequence' );
     Add( $0032, [TTypeVR.vrDS], 'Specified Primary Meterset' );
     Add( $0033, [TTypeVR.vrDS], 'Specified Secondary Meterset' );
     Add( $0036, [TTypeVR.vrDS], 'Delivered Primary Meterset' );
     Add( $0037, [TTypeVR.vrDS], 'Delivered Secondary Meterset' );
     Add( $003A, [TTypeVR.vrDS], 'Specified Treatment Time' );
     Add( $003B, [TTypeVR.vrDS], 'Delivered Treatment Time' );
     Add( $0040, [TTypeVR.vrSQ], 'Control Point Delivery Sequence' );
     Add( $0041, [TTypeVR.vrSQ], 'Ion Control Point Delivery Sequence' );
     Add( $0042, [TTypeVR.vrDS], 'Specified Meterset' );
     Add( $0044, [TTypeVR.vrDS], 'Delivered Meterset' );
     Add( $0045, [TTypeVR.vrFL], 'Meterset Rate Set' );
     Add( $0046, [TTypeVR.vrFL], 'Meterset Rate Delivered' );
     Add( $0047, [TTypeVR.vrFL], 'Scan Spot Metersets Delivered' );
     Add( $0048, [TTypeVR.vrDS], 'Dose Rate Delivered' );
     Add( $0050, [TTypeVR.vrSQ], 'Treatment Summary Calculated Dose Reference Sequence' );
     Add( $0052, [TTypeVR.vrDS], 'Cumulative Dose to Dose Reference' );
     Add( $0054, [TTypeVR.vrDA], 'First Treatment Date' );
     Add( $0056, [TTypeVR.vrDA], 'Most Recent Treatment Date' );
     Add( $005A, [TTypeVR.vrIS], 'Number of Fractions Delivered' );
     Add( $0060, [TTypeVR.vrSQ], 'Override Sequence' );
     Add( $0061, [TTypeVR.vrAT], 'Parameter Sequence Pointer' );
     Add( $0062, [TTypeVR.vrAT], 'Override Parameter Pointer' );
     Add( $0063, [TTypeVR.vrIS], 'Parameter Item Index' );
     Add( $0064, [TTypeVR.vrIS], 'Measured Dose Reference Number' );
     Add( $0065, [TTypeVR.vrAT], 'Parameter Pointer' );
     Add( $0066, [TTypeVR.vrST], 'Override Reason' );
     Add( $0067, [TTypeVR.vrUS], 'Parameter Value Number' );
     Add( $0068, [TTypeVR.vrSQ], 'Corrected Parameter Sequence' );
     Add( $006A, [TTypeVR.vrFL], 'Correction Value' );
     Add( $0070, [TTypeVR.vrSQ], 'Calculated Dose Reference Sequence' );
     Add( $0072, [TTypeVR.vrIS], 'Calculated Dose Reference Number' );
     Add( $0074, [TTypeVR.vrST], 'Calculated Dose Reference Description' );
     Add( $0076, [TTypeVR.vrDS], 'Calculated Dose Reference Dose Value' );
     Add( $0078, [TTypeVR.vrDS], 'Start Meterset' );
     Add( $007A, [TTypeVR.vrDS], 'End Meterset' );
     Add( $0080, [TTypeVR.vrSQ], 'Referenced Measured Dose Reference Sequence' );
     Add( $0082, [TTypeVR.vrIS], 'Referenced Measured Dose Reference Number' );
     Add( $0090, [TTypeVR.vrSQ], 'Referenced Calculated Dose Reference Sequence' );
     Add( $0092, [TTypeVR.vrIS], 'Referenced Calculated Dose Reference Number' );
     Add( $00A0, [TTypeVR.vrSQ], 'Beam Limiting Device Leaf Pairs Sequence' );
     Add( $00B0, [TTypeVR.vrSQ], 'Recorded Wedge Sequence' );
     Add( $00C0, [TTypeVR.vrSQ], 'Recorded Compensator Sequence' );
     Add( $00D0, [TTypeVR.vrSQ], 'Recorded Block Sequence' );
     Add( $00E0, [TTypeVR.vrSQ], 'Treatment Summary Measured Dose Reference Sequence' );
     Add( $00F0, [TTypeVR.vrSQ], 'Recorded Snout Sequence' );
     Add( $00F2, [TTypeVR.vrSQ], 'Recorded Range Shifter Sequence' );
     Add( $00F4, [TTypeVR.vrSQ], 'Recorded Lateral Spreading Device Sequence' );
     Add( $00F6, [TTypeVR.vrSQ], 'Recorded Range Modulator Sequence' );
     Add( $0100, [TTypeVR.vrSQ], 'Recorded Source Sequence' );
     Add( $0105, [TTypeVR.vrLO], 'Source Serial Number' );
     Add( $0110, [TTypeVR.vrSQ], 'Treatment Session Application Setup Sequence' );
     Add( $0116, [TTypeVR.vrCS], 'Application Setup Check' );
     Add( $0120, [TTypeVR.vrSQ], 'Recorded Brachy Accessory Device Sequence' );
     Add( $0122, [TTypeVR.vrIS], 'Referenced Brachy Accessory Device Number' );
     Add( $0130, [TTypeVR.vrSQ], 'Recorded Channel Sequence' );
     Add( $0132, [TTypeVR.vrDS], 'Specified Channel Total Time' );
     Add( $0134, [TTypeVR.vrDS], 'Delivered Channel Total Time' );
     Add( $0136, [TTypeVR.vrIS], 'Specified Number of Pulses' );
     Add( $0138, [TTypeVR.vrIS], 'Delivered Number of Pulses' );
     Add( $013A, [TTypeVR.vrDS], 'Specified Pulse Repetition Interval' );
     Add( $013C, [TTypeVR.vrDS], 'Delivered Pulse Repetition Interval' );
     Add( $0140, [TTypeVR.vrSQ], 'Recorded Source Applicator Sequence' );
     Add( $0142, [TTypeVR.vrIS], 'Referenced Source Applicator Number' );
     Add( $0150, [TTypeVR.vrSQ], 'Recorded Channel Shield Sequence' );
     Add( $0152, [TTypeVR.vrIS], 'Referenced Channel Shield Number' );
     Add( $0160, [TTypeVR.vrSQ], 'Brachy Control Point Delivered Sequence' );
     Add( $0162, [TTypeVR.vrDA], 'Safe Position Exit Date' );
     Add( $0164, [TTypeVR.vrTM], 'Safe Position Exit Time' );
     Add( $0166, [TTypeVR.vrDA], 'Safe Position Return Date' );
     Add( $0168, [TTypeVR.vrTM], 'Safe Position Return Time' );
     Add( $0171, [TTypeVR.vrSQ], 'Pulse Specific Brachy Control Point Delivered Sequence' );
     Add( $0172, [TTypeVR.vrUS], 'Pulse Number' );
     Add( $0173, [TTypeVR.vrSQ], 'Brachy Pulse Control Point Delivered Sequence' );
     Add( $0200, [TTypeVR.vrCS], 'Current Treatment Status' );
     Add( $0202, [TTypeVR.vrST], 'Treatment Status Comment' );
     Add( $0220, [TTypeVR.vrSQ], 'Fraction Group Summary Sequence' );
     Add( $0223, [TTypeVR.vrIS], 'Referenced Fraction Number' );
     Add( $0224, [TTypeVR.vrCS], 'Fraction Group Type' );
     Add( $0230, [TTypeVR.vrCS], 'Beam Stopper Position' );
     Add( $0240, [TTypeVR.vrSQ], 'Fraction Status Summary Sequence' );
     Add( $0250, [TTypeVR.vrDA], 'Treatment Date' );
     Add( $0251, [TTypeVR.vrTM], 'Treatment Time' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
