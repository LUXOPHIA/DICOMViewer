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
     Add( $0002, 'ReferencedRTPlanSequence', [TTypeVR.vrSQ], 'Referenced RT Plan Sequence' );
     Add( $0004, 'ReferencedBeamSequence', [TTypeVR.vrSQ], 'Referenced Beam Sequence' );
     Add( $0006, 'ReferencedBeamNumber', [TTypeVR.vrIS], 'Referenced Beam Number' );
     Add( $0007, 'ReferencedReferenceImageNumber', [TTypeVR.vrIS], 'Referenced Reference Image Number' );
     Add( $0008, 'StartCumulativeMetersetWeight', [TTypeVR.vrDS], 'Start Cumulative Meterset Weight' );
     Add( $0009, 'EndCumulativeMetersetWeight', [TTypeVR.vrDS], 'End Cumulative Meterset Weight' );
     Add( $000A, 'ReferencedBrachyApplicationSetupSequence', [TTypeVR.vrSQ], 'Referenced Brachy Application Setup Sequence' );
     Add( $000C, 'ReferencedBrachyApplicationSetupNumber', [TTypeVR.vrIS], 'Referenced Brachy Application Setup Number' );
     Add( $000E, 'ReferencedSourceNumber', [TTypeVR.vrIS], 'Referenced Source Number' );
     Add( $0020, 'ReferencedFractionGroupSequence', [TTypeVR.vrSQ], 'Referenced Fraction Group Sequence' );
     Add( $0022, 'ReferencedFractionGroupNumber', [TTypeVR.vrIS], 'Referenced Fraction Group Number' );
     Add( $0040, 'ReferencedVerificationImageSequence', [TTypeVR.vrSQ], 'Referenced Verification Image Sequence' );
     Add( $0042, 'ReferencedReferenceImageSequence', [TTypeVR.vrSQ], 'Referenced Reference Image Sequence' );
     Add( $0050, 'ReferencedDoseReferenceSequence', [TTypeVR.vrSQ], 'Referenced Dose Reference Sequence' );
     Add( $0051, 'ReferencedDoseReferenceNumber', [TTypeVR.vrIS], 'Referenced Dose Reference Number' );
     Add( $0055, 'BrachyReferencedDoseReferenceSequence', [TTypeVR.vrSQ], 'Brachy Referenced Dose Reference Sequence' );
     Add( $0060, 'ReferencedStructureSetSequence', [TTypeVR.vrSQ], 'Referenced Structure Set Sequence' );
     Add( $006A, 'ReferencedPatientSetupNumber', [TTypeVR.vrIS], 'Referenced Patient Setup Number' );
     Add( $0080, 'ReferencedDoseSequence', [TTypeVR.vrSQ], 'Referenced Dose Sequence' );
     Add( $00A0, 'ReferencedToleranceTableNumber', [TTypeVR.vrIS], 'Referenced Tolerance Table Number' );
     Add( $00B0, 'ReferencedBolusSequence', [TTypeVR.vrSQ], 'Referenced Bolus Sequence' );
     Add( $00C0, 'ReferencedWedgeNumber', [TTypeVR.vrIS], 'Referenced Wedge Number' );
     Add( $00D0, 'ReferencedCompensatorNumber', [TTypeVR.vrIS], 'Referenced Compensator Number' );
     Add( $00E0, 'ReferencedBlockNumber', [TTypeVR.vrIS], 'Referenced Block Number' );
     Add( $00F0, 'ReferencedControlPointIndex', [TTypeVR.vrIS], 'Referenced Control Point Index' );
     Add( $00F2, 'ReferencedControlPointSequence', [TTypeVR.vrSQ], 'Referenced Control Point Sequence' );
     Add( $00F4, 'ReferencedStartControlPointIndex', [TTypeVR.vrIS], 'Referenced Start Control Point Index' );
     Add( $00F6, 'ReferencedStopControlPointIndex', [TTypeVR.vrIS], 'Referenced Stop Control Point Index' );
     Add( $0100, 'ReferencedRangeShifterNumber', [TTypeVR.vrIS], 'Referenced Range Shifter Number' );
     Add( $0102, 'ReferencedLateralSpreadingDeviceNumber', [TTypeVR.vrIS], 'Referenced Lateral Spreading Device Number' );
     Add( $0104, 'ReferencedRangeModulatorNumber', [TTypeVR.vrIS], 'Referenced Range Modulator Number' );
     Add( $0111, 'OmittedBeamTaskSequence', [TTypeVR.vrSQ], 'Omitted Beam Task Sequence' );
     Add( $0112, 'ReasonForOmission', [TTypeVR.vrCS], 'Reason for Omission' );
     Add( $0113, 'ReasonForOmissionDescription', [TTypeVR.vrLO], 'Reason for Omission Description' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
