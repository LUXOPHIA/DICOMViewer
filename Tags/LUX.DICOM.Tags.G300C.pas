unit LUX.DICOM.Tags.G300C;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems300C

     TDICOMElems300C = class( TDICOMElems )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems300C

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TDICOMElems300C.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0002, TKindVR.vrSQ, 'Referenced RT Plan Sequence' );
     Add( $0004, TKindVR.vrSQ, 'Referenced Beam Sequence' );
     Add( $0006, TKindVR.vrIS, 'Referenced Beam Number' );
     Add( $0007, TKindVR.vrIS, 'Referenced Reference Image Number' );
     Add( $0008, TKindVR.vrDS, 'Start Cumulative Meterset Weight' );
     Add( $0009, TKindVR.vrDS, 'End Cumulative Meterset Weight' );
     Add( $000A, TKindVR.vrSQ, 'Referenced Brachy Application Setup Sequence' );
     Add( $000C, TKindVR.vrIS, 'Referenced Brachy Application Setup Number' );
     Add( $000E, TKindVR.vrIS, 'Referenced Source Number' );
     Add( $0020, TKindVR.vrSQ, 'Referenced Fraction Group Sequence' );
     Add( $0022, TKindVR.vrIS, 'Referenced Fraction Group Number' );
     Add( $0040, TKindVR.vrSQ, 'Referenced Verification Image Sequence' );
     Add( $0042, TKindVR.vrSQ, 'Referenced Reference Image Sequence' );
     Add( $0050, TKindVR.vrSQ, 'Referenced Dose Reference Sequence' );
     Add( $0051, TKindVR.vrIS, 'Referenced Dose Reference Number' );
     Add( $0055, TKindVR.vrSQ, 'Brachy Referenced Dose Reference Sequence' );
     Add( $0060, TKindVR.vrSQ, 'Referenced Structure Set Sequence' );
     Add( $006A, TKindVR.vrIS, 'Referenced Patient Setup Number' );
     Add( $0080, TKindVR.vrSQ, 'Referenced Dose Sequence' );
     Add( $00A0, TKindVR.vrIS, 'Referenced Tolerance Table Number' );
     Add( $00B0, TKindVR.vrSQ, 'Referenced Bolus Sequence' );
     Add( $00C0, TKindVR.vrIS, 'Referenced Wedge Number' );
     Add( $00D0, TKindVR.vrIS, 'Referenced Compensator Number' );
     Add( $00E0, TKindVR.vrIS, 'Referenced Block Number' );
     Add( $00F0, TKindVR.vrIS, 'Referenced Control Point Index' );
     Add( $00F2, TKindVR.vrSQ, 'Referenced Control Point Sequence' );
     Add( $00F4, TKindVR.vrIS, 'Referenced Start Control Point Index' );
     Add( $00F6, TKindVR.vrIS, 'Referenced Stop Control Point Index' );
     Add( $0100, TKindVR.vrIS, 'Referenced Range Shifter Number' );
     Add( $0102, TKindVR.vrIS, 'Referenced Lateral Spreading Device Number' );
     Add( $0104, TKindVR.vrIS, 'Referenced Range Modulator Number' );
     Add( $0111, TKindVR.vrSQ, 'Omitted Beam Task Sequence' );
     Add( $0112, TKindVR.vrCS, 'Reason for Omission' );
     Add( $0113, TKindVR.vrLO, 'Reason for Omission Description' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
