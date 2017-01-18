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
     Add( $0010, 'EnergyWindowVector', [TTypeVR.vrUS], 'Energy Window Vector' );
     Add( $0011, 'NumberOfEnergyWindows', [TTypeVR.vrUS], 'Number of Energy Windows' );
     Add( $0012, 'EnergyWindowInformationSequence', [TTypeVR.vrSQ], 'Energy Window Information Sequence' );
     Add( $0013, 'EnergyWindowRangeSequence', [TTypeVR.vrSQ], 'Energy Window Range Sequence' );
     Add( $0014, 'EnergyWindowLowerLimit', [TTypeVR.vrDS], 'Energy Window Lower Limit' );
     Add( $0015, 'EnergyWindowUpperLimit', [TTypeVR.vrDS], 'Energy Window Upper Limit' );
     Add( $0016, 'RadiopharmaceuticalInformationSequence', [TTypeVR.vrSQ], 'Radiopharmaceutical Information Sequence' );
     Add( $0017, 'ResidualSyringeCounts', [TTypeVR.vrIS], 'Residual Syringe Counts' );
     Add( $0018, 'EnergyWindowName', [TTypeVR.vrSH], 'Energy Window Name' );
     Add( $0020, 'DetectorVector', [TTypeVR.vrUS], 'Detector Vector' );
     Add( $0021, 'NumberOfDetectors', [TTypeVR.vrUS], 'Number of Detectors' );
     Add( $0022, 'DetectorInformationSequence', [TTypeVR.vrSQ], 'Detector Information Sequence' );
     Add( $0030, 'PhaseVector', [TTypeVR.vrUS], 'Phase Vector' );
     Add( $0031, 'NumberOfPhases', [TTypeVR.vrUS], 'Number of Phases' );
     Add( $0032, 'PhaseInformationSequence', [TTypeVR.vrSQ], 'Phase Information Sequence' );
     Add( $0033, 'NumberOfFramesInPhase', [TTypeVR.vrUS], 'Number of Frames in Phase' );
     Add( $0036, 'PhaseDelay', [TTypeVR.vrIS], 'Phase Delay' );
     Add( $0038, 'PauseBetweenFrames', [TTypeVR.vrIS], 'Pause Between Frames' );
     Add( $0039, 'PhaseDescription', [TTypeVR.vrCS], 'Phase Description' );
     Add( $0050, 'RotationVector', [TTypeVR.vrUS], 'Rotation Vector' );
     Add( $0051, 'NumberOfRotations', [TTypeVR.vrUS], 'Number of Rotations' );
     Add( $0052, 'RotationInformationSequence', [TTypeVR.vrSQ], 'Rotation Information Sequence' );
     Add( $0053, 'NumberOfFramesInRotation', [TTypeVR.vrUS], 'Number of Frames in Rotation' );
     Add( $0060, 'RRIntervalVector', [TTypeVR.vrUS], 'R-R Interval Vector' );
     Add( $0061, 'NumberOfRRIntervals', [TTypeVR.vrUS], 'Number of R-R Intervals' );
     Add( $0062, 'GatedInformationSequence', [TTypeVR.vrSQ], 'Gated Information Sequence' );
     Add( $0063, 'DataInformationSequence', [TTypeVR.vrSQ], 'Data Information Sequence' );
     Add( $0070, 'TimeSlotVector', [TTypeVR.vrUS], 'Time Slot Vector' );
     Add( $0071, 'NumberOfTimeSlots', [TTypeVR.vrUS], 'Number of Time Slots' );
     Add( $0072, 'TimeSlotInformationSequence', [TTypeVR.vrSQ], 'Time Slot Information Sequence' );
     Add( $0073, 'TimeSlotTime', [TTypeVR.vrDS], 'Time Slot Time' );
     Add( $0080, 'SliceVector', [TTypeVR.vrUS], 'Slice Vector' );
     Add( $0081, 'NumberOfSlices', [TTypeVR.vrUS], 'Number of Slices' );
     Add( $0090, 'AngularViewVector', [TTypeVR.vrUS], 'Angular View Vector' );
     Add( $0100, 'TimeSliceVector', [TTypeVR.vrUS], 'Time Slice Vector' );
     Add( $0101, 'NumberOfTimeSlices', [TTypeVR.vrUS], 'Number of Time Slices' );
     Add( $0200, 'StartAngle', [TTypeVR.vrDS], 'Start Angle' );
     Add( $0202, 'TypeOfDetectorMotion', [TTypeVR.vrCS], 'Type of Detector Motion' );
     Add( $0210, 'TriggerVector', [TTypeVR.vrIS], 'Trigger Vector' );
     Add( $0211, 'NumberOfTriggersInPhase', [TTypeVR.vrUS], 'Number of Triggers in Phase' );
     Add( $0220, 'ViewCodeSequence', [TTypeVR.vrSQ], 'View Code Sequence' );
     Add( $0222, 'ViewModifierCodeSequence', [TTypeVR.vrSQ], 'View Modifier Code Sequence' );
     Add( $0300, 'RadionuclideCodeSequence', [TTypeVR.vrSQ], 'Radionuclide Code Sequence' );
     Add( $0302, 'AdministrationRouteCodeSequence', [TTypeVR.vrSQ], 'Administration Route Code Sequence' );
     Add( $0304, 'RadiopharmaceuticalCodeSequence', [TTypeVR.vrSQ], 'Radiopharmaceutical Code Sequence' );
     Add( $0306, 'CalibrationDataSequence', [TTypeVR.vrSQ], 'Calibration Data Sequence' );
     Add( $0308, 'EnergyWindowNumber', [TTypeVR.vrUS], 'Energy Window Number' );
     Add( $0400, 'ImageID', [TTypeVR.vrSH], 'Image ID' );
     Add( $0410, 'PatientOrientationCodeSequence', [TTypeVR.vrSQ], 'Patient Orientation Code Sequence' );
     Add( $0412, 'PatientOrientationModifierCodeSequence', [TTypeVR.vrSQ], 'Patient Orientation Modifier Code Sequence' );
     Add( $0414, 'PatientGantryRelationshipCodeSequence', [TTypeVR.vrSQ], 'Patient Gantry Relationship Code Sequence' );
     Add( $0500, 'SliceProgressionDirection', [TTypeVR.vrCS], 'Slice Progression Direction' );
     Add( $0501, 'ScanProgressionDirection', [TTypeVR.vrCS], 'Scan Progression Direction' );
     Add( $1000, 'SeriesType', [TTypeVR.vrCS], 'Series Type' );
     Add( $1001, 'Units', [TTypeVR.vrCS], 'Units' );
     Add( $1002, 'CountsSource', [TTypeVR.vrCS], 'Counts Source' );
     Add( $1004, 'ReprojectionMethod', [TTypeVR.vrCS], 'Reprojection Method' );
     Add( $1006, 'SUVType', [TTypeVR.vrCS], 'SUV Type' );
     Add( $1100, 'RandomsCorrectionMethod', [TTypeVR.vrCS], 'Randoms Correction Method' );
     Add( $1101, 'AttenuationCorrectionMethod', [TTypeVR.vrLO], 'Attenuation Correction Method' );
     Add( $1102, 'DecayCorrection', [TTypeVR.vrCS], 'Decay Correction' );
     Add( $1103, 'ReconstructionMethod', [TTypeVR.vrLO], 'Reconstruction Method' );
     Add( $1104, 'DetectorLinesOfResponseUsed', [TTypeVR.vrLO], 'Detector Lines of Response Used' );
     Add( $1105, 'ScatterCorrectionMethod', [TTypeVR.vrLO], 'Scatter Correction Method' );
     Add( $1200, 'AxialAcceptance', [TTypeVR.vrDS], 'Axial Acceptance' );
     Add( $1201, 'AxialMash', [TTypeVR.vrIS], 'Axial Mash' );
     Add( $1202, 'TransverseMash', [TTypeVR.vrIS], 'Transverse Mash' );
     Add( $1203, 'DetectorElementSize', [TTypeVR.vrDS], 'Detector Element Size' );
     Add( $1210, 'CoincidenceWindowWidth', [TTypeVR.vrDS], 'Coincidence Window Width' );
     Add( $1220, 'SecondaryCountsType', [TTypeVR.vrCS], 'Secondary Counts Type' );
     Add( $1300, 'FrameReferenceTime', [TTypeVR.vrDS], 'Frame Reference Time' );
     Add( $1310, 'PrimaryPromptsCountsAccumulated', [TTypeVR.vrIS], 'Primary (Prompts) Counts Accumulated' );
     Add( $1311, 'SecondaryCountsAccumulated', [TTypeVR.vrIS], 'Secondary Counts Accumulated' );
     Add( $1320, 'SliceSensitivityFactor', [TTypeVR.vrDS], 'Slice Sensitivity Factor' );
     Add( $1321, 'DecayFactor', [TTypeVR.vrDS], 'Decay Factor' );
     Add( $1322, 'DoseCalibrationFactor', [TTypeVR.vrDS], 'Dose Calibration Factor' );
     Add( $1323, 'ScatterFractionFactor', [TTypeVR.vrDS], 'Scatter Fraction Factor' );
     Add( $1324, 'DeadTimeFactor', [TTypeVR.vrDS], 'Dead Time Factor' );
     Add( $1330, 'ImageIndex', [TTypeVR.vrUS], 'Image Index' );
     Add( $1400, 'CountsIncluded', [TTypeVR.vrCS], 'Counts Included' );
     Add( $1401, 'DeadTimeCorrectionFlag', [TTypeVR.vrCS], 'Dead Time Correction Flag' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
