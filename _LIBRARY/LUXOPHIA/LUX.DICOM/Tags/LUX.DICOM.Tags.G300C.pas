unit LUX.DICOM.Tags.G300C;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup300C

     TdcmGrup300C = class( TdcmGrup )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup300C

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmGrup300C.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0002, 'ReferencedRTPlanSequence', [TKindVR.vrSQ], 'Referenced RT Plan Sequence' );
     Add( $0004, 'ReferencedBeamSequence', [TKindVR.vrSQ], 'Referenced Beam Sequence' );
     Add( $0006, 'ReferencedBeamNumber', [TKindVR.vrIS], 'Referenced Beam Number' );
     Add( $0007, 'ReferencedReferenceImageNumber', [TKindVR.vrIS], 'Referenced Reference Image Number' );
     Add( $0008, 'StartCumulativeMetersetWeight', [TKindVR.vrDS], 'Start Cumulative Meterset Weight' );
     Add( $0009, 'EndCumulativeMetersetWeight', [TKindVR.vrDS], 'End Cumulative Meterset Weight' );
     Add( $000A, 'ReferencedBrachyApplicationSetupSequence', [TKindVR.vrSQ], 'Referenced Brachy Application Setup Sequence' );
     Add( $000C, 'ReferencedBrachyApplicationSetupNumber', [TKindVR.vrIS], 'Referenced Brachy Application Setup Number' );
     Add( $000E, 'ReferencedSourceNumber', [TKindVR.vrIS], 'Referenced Source Number' );
     Add( $0020, 'ReferencedFractionGroupSequence', [TKindVR.vrSQ], 'Referenced Fraction Group Sequence' );
     Add( $0022, 'ReferencedFractionGroupNumber', [TKindVR.vrIS], 'Referenced Fraction Group Number' );
     Add( $0040, 'ReferencedVerificationImageSequence', [TKindVR.vrSQ], 'Referenced Verification Image Sequence' );
     Add( $0042, 'ReferencedReferenceImageSequence', [TKindVR.vrSQ], 'Referenced Reference Image Sequence' );
     Add( $0050, 'ReferencedDoseReferenceSequence', [TKindVR.vrSQ], 'Referenced Dose Reference Sequence' );
     Add( $0051, 'ReferencedDoseReferenceNumber', [TKindVR.vrIS], 'Referenced Dose Reference Number' );
     Add( $0055, 'BrachyReferencedDoseReferenceSequence', [TKindVR.vrSQ], 'Brachy Referenced Dose Reference Sequence' );
     Add( $0060, 'ReferencedStructureSetSequence', [TKindVR.vrSQ], 'Referenced Structure Set Sequence' );
     Add( $006A, 'ReferencedPatientSetupNumber', [TKindVR.vrIS], 'Referenced Patient Setup Number' );
     Add( $0080, 'ReferencedDoseSequence', [TKindVR.vrSQ], 'Referenced Dose Sequence' );
     Add( $00A0, 'ReferencedToleranceTableNumber', [TKindVR.vrIS], 'Referenced Tolerance Table Number' );
     Add( $00B0, 'ReferencedBolusSequence', [TKindVR.vrSQ], 'Referenced Bolus Sequence' );
     Add( $00C0, 'ReferencedWedgeNumber', [TKindVR.vrIS], 'Referenced Wedge Number' );
     Add( $00D0, 'ReferencedCompensatorNumber', [TKindVR.vrIS], 'Referenced Compensator Number' );
     Add( $00E0, 'ReferencedBlockNumber', [TKindVR.vrIS], 'Referenced Block Number' );
     Add( $00F0, 'ReferencedControlPointIndex', [TKindVR.vrIS], 'Referenced Control Point Index' );
     Add( $00F2, 'ReferencedControlPointSequence', [TKindVR.vrSQ], 'Referenced Control Point Sequence' );
     Add( $00F4, 'ReferencedStartControlPointIndex', [TKindVR.vrIS], 'Referenced Start Control Point Index' );
     Add( $00F6, 'ReferencedStopControlPointIndex', [TKindVR.vrIS], 'Referenced Stop Control Point Index' );
     Add( $0100, 'ReferencedRangeShifterNumber', [TKindVR.vrIS], 'Referenced Range Shifter Number' );
     Add( $0102, 'ReferencedLateralSpreadingDeviceNumber', [TKindVR.vrIS], 'Referenced Lateral Spreading Device Number' );
     Add( $0104, 'ReferencedRangeModulatorNumber', [TKindVR.vrIS], 'Referenced Range Modulator Number' );
     Add( $0111, 'OmittedBeamTaskSequence', [TKindVR.vrSQ], 'Omitted Beam Task Sequence' );
     Add( $0112, 'ReasonForOmission', [TKindVR.vrCS], 'Reason for Omission' );
     Add( $0113, 'ReasonForOmissionDescription', [TKindVR.vrLO], 'Reason for Omission Description' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
