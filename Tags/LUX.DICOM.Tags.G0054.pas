unit LUX.DICOM.Tags.G0054;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0054

     TdcmGrup0054 = class( TdcmGrup )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0054

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmGrup0054.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0010, 'EnergyWindowVector', [TKindVR.vrUS], 'Energy Window Vector' );
     Add( $0011, 'NumberOfEnergyWindows', [TKindVR.vrUS], 'Number of Energy Windows' );
     Add( $0012, 'EnergyWindowInformationSequence', [TKindVR.vrSQ], 'Energy Window Information Sequence' );
     Add( $0013, 'EnergyWindowRangeSequence', [TKindVR.vrSQ], 'Energy Window Range Sequence' );
     Add( $0014, 'EnergyWindowLowerLimit', [TKindVR.vrDS], 'Energy Window Lower Limit' );
     Add( $0015, 'EnergyWindowUpperLimit', [TKindVR.vrDS], 'Energy Window Upper Limit' );
     Add( $0016, 'RadiopharmaceuticalInformationSequence', [TKindVR.vrSQ], 'Radiopharmaceutical Information Sequence' );
     Add( $0017, 'ResidualSyringeCounts', [TKindVR.vrIS], 'Residual Syringe Counts' );
     Add( $0018, 'EnergyWindowName', [TKindVR.vrSH], 'Energy Window Name' );
     Add( $0020, 'DetectorVector', [TKindVR.vrUS], 'Detector Vector' );
     Add( $0021, 'NumberOfDetectors', [TKindVR.vrUS], 'Number of Detectors' );
     Add( $0022, 'DetectorInformationSequence', [TKindVR.vrSQ], 'Detector Information Sequence' );
     Add( $0030, 'PhaseVector', [TKindVR.vrUS], 'Phase Vector' );
     Add( $0031, 'NumberOfPhases', [TKindVR.vrUS], 'Number of Phases' );
     Add( $0032, 'PhaseInformationSequence', [TKindVR.vrSQ], 'Phase Information Sequence' );
     Add( $0033, 'NumberOfFramesInPhase', [TKindVR.vrUS], 'Number of Frames in Phase' );
     Add( $0036, 'PhaseDelay', [TKindVR.vrIS], 'Phase Delay' );
     Add( $0038, 'PauseBetweenFrames', [TKindVR.vrIS], 'Pause Between Frames' );
     Add( $0039, 'PhaseDescription', [TKindVR.vrCS], 'Phase Description' );
     Add( $0050, 'RotationVector', [TKindVR.vrUS], 'Rotation Vector' );
     Add( $0051, 'NumberOfRotations', [TKindVR.vrUS], 'Number of Rotations' );
     Add( $0052, 'RotationInformationSequence', [TKindVR.vrSQ], 'Rotation Information Sequence' );
     Add( $0053, 'NumberOfFramesInRotation', [TKindVR.vrUS], 'Number of Frames in Rotation' );
     Add( $0060, 'RRIntervalVector', [TKindVR.vrUS], 'R-R Interval Vector' );
     Add( $0061, 'NumberOfRRIntervals', [TKindVR.vrUS], 'Number of R-R Intervals' );
     Add( $0062, 'GatedInformationSequence', [TKindVR.vrSQ], 'Gated Information Sequence' );
     Add( $0063, 'DataInformationSequence', [TKindVR.vrSQ], 'Data Information Sequence' );
     Add( $0070, 'TimeSlotVector', [TKindVR.vrUS], 'Time Slot Vector' );
     Add( $0071, 'NumberOfTimeSlots', [TKindVR.vrUS], 'Number of Time Slots' );
     Add( $0072, 'TimeSlotInformationSequence', [TKindVR.vrSQ], 'Time Slot Information Sequence' );
     Add( $0073, 'TimeSlotTime', [TKindVR.vrDS], 'Time Slot Time' );
     Add( $0080, 'SliceVector', [TKindVR.vrUS], 'Slice Vector' );
     Add( $0081, 'NumberOfSlices', [TKindVR.vrUS], 'Number of Slices' );
     Add( $0090, 'AngularViewVector', [TKindVR.vrUS], 'Angular View Vector' );
     Add( $0100, 'TimeSliceVector', [TKindVR.vrUS], 'Time Slice Vector' );
     Add( $0101, 'NumberOfTimeSlices', [TKindVR.vrUS], 'Number of Time Slices' );
     Add( $0200, 'StartAngle', [TKindVR.vrDS], 'Start Angle' );
     Add( $0202, 'TypeOfDetectorMotion', [TKindVR.vrCS], 'Type of Detector Motion' );
     Add( $0210, 'TriggerVector', [TKindVR.vrIS], 'Trigger Vector' );
     Add( $0211, 'NumberOfTriggersInPhase', [TKindVR.vrUS], 'Number of Triggers in Phase' );
     Add( $0220, 'ViewCodeSequence', [TKindVR.vrSQ], 'View Code Sequence' );
     Add( $0222, 'ViewModifierCodeSequence', [TKindVR.vrSQ], 'View Modifier Code Sequence' );
     Add( $0300, 'RadionuclideCodeSequence', [TKindVR.vrSQ], 'Radionuclide Code Sequence' );
     Add( $0302, 'AdministrationRouteCodeSequence', [TKindVR.vrSQ], 'Administration Route Code Sequence' );
     Add( $0304, 'RadiopharmaceuticalCodeSequence', [TKindVR.vrSQ], 'Radiopharmaceutical Code Sequence' );
     Add( $0306, 'CalibrationDataSequence', [TKindVR.vrSQ], 'Calibration Data Sequence' );
     Add( $0308, 'EnergyWindowNumber', [TKindVR.vrUS], 'Energy Window Number' );
     Add( $0400, 'ImageID', [TKindVR.vrSH], 'Image ID' );
     Add( $0410, 'PatientOrientationCodeSequence', [TKindVR.vrSQ], 'Patient Orientation Code Sequence' );
     Add( $0412, 'PatientOrientationModifierCodeSequence', [TKindVR.vrSQ], 'Patient Orientation Modifier Code Sequence' );
     Add( $0414, 'PatientGantryRelationshipCodeSequence', [TKindVR.vrSQ], 'Patient Gantry Relationship Code Sequence' );
     Add( $0500, 'SliceProgressionDirection', [TKindVR.vrCS], 'Slice Progression Direction' );
     Add( $0501, 'ScanProgressionDirection', [TKindVR.vrCS], 'Scan Progression Direction' );
     Add( $1000, 'SeriesType', [TKindVR.vrCS], 'Series Type' );
     Add( $1001, 'Units', [TKindVR.vrCS], 'Units' );
     Add( $1002, 'CountsSource', [TKindVR.vrCS], 'Counts Source' );
     Add( $1004, 'ReprojectionMethod', [TKindVR.vrCS], 'Reprojection Method' );
     Add( $1006, 'SUVType', [TKindVR.vrCS], 'SUV Type' );
     Add( $1100, 'RandomsCorrectionMethod', [TKindVR.vrCS], 'Randoms Correction Method' );
     Add( $1101, 'AttenuationCorrectionMethod', [TKindVR.vrLO], 'Attenuation Correction Method' );
     Add( $1102, 'DecayCorrection', [TKindVR.vrCS], 'Decay Correction' );
     Add( $1103, 'ReconstructionMethod', [TKindVR.vrLO], 'Reconstruction Method' );
     Add( $1104, 'DetectorLinesOfResponseUsed', [TKindVR.vrLO], 'Detector Lines of Response Used' );
     Add( $1105, 'ScatterCorrectionMethod', [TKindVR.vrLO], 'Scatter Correction Method' );
     Add( $1200, 'AxialAcceptance', [TKindVR.vrDS], 'Axial Acceptance' );
     Add( $1201, 'AxialMash', [TKindVR.vrIS], 'Axial Mash' );
     Add( $1202, 'TransverseMash', [TKindVR.vrIS], 'Transverse Mash' );
     Add( $1203, 'DetectorElementSize', [TKindVR.vrDS], 'Detector Element Size' );
     Add( $1210, 'CoincidenceWindowWidth', [TKindVR.vrDS], 'Coincidence Window Width' );
     Add( $1220, 'SecondaryCountsType', [TKindVR.vrCS], 'Secondary Counts Type' );
     Add( $1300, 'FrameReferenceTime', [TKindVR.vrDS], 'Frame Reference Time' );
     Add( $1310, 'PrimaryPromptsCountsAccumulated', [TKindVR.vrIS], 'Primary (Prompts) Counts Accumulated' );
     Add( $1311, 'SecondaryCountsAccumulated', [TKindVR.vrIS], 'Secondary Counts Accumulated' );
     Add( $1320, 'SliceSensitivityFactor', [TKindVR.vrDS], 'Slice Sensitivity Factor' );
     Add( $1321, 'DecayFactor', [TKindVR.vrDS], 'Decay Factor' );
     Add( $1322, 'DoseCalibrationFactor', [TKindVR.vrDS], 'Dose Calibration Factor' );
     Add( $1323, 'ScatterFractionFactor', [TKindVR.vrDS], 'Scatter Fraction Factor' );
     Add( $1324, 'DeadTimeFactor', [TKindVR.vrDS], 'Dead Time Factor' );
     Add( $1330, 'ImageIndex', [TKindVR.vrUS], 'Image Index' );
     Add( $1400, 'CountsIncluded', [TKindVR.vrCS], 'Counts Included' );
     Add( $1401, 'DeadTimeCorrectionFlag', [TKindVR.vrCS], 'Dead Time Correction Flag' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
