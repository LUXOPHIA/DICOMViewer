unit LUX.DICOM.Tags.G0054;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems0054

     TDICOMElems0054 = class( TDICOMElems )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems0054

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TDICOMElems0054.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0010, [TTypeVR.vrUS], 'Energy Window Vector' );
     Add( $0011, [TTypeVR.vrUS], 'Number of Energy Windows' );
     Add( $0012, [TTypeVR.vrSQ], 'Energy Window Information Sequence' );
     Add( $0013, [TTypeVR.vrSQ], 'Energy Window Range Sequence' );
     Add( $0014, [TTypeVR.vrDS], 'Energy Window Lower Limit' );
     Add( $0015, [TTypeVR.vrDS], 'Energy Window Upper Limit' );
     Add( $0016, [TTypeVR.vrSQ], 'Radiopharmaceutical Information Sequence' );
     Add( $0017, [TTypeVR.vrIS], 'Residual Syringe Counts' );
     Add( $0018, [TTypeVR.vrSH], 'Energy Window Name' );
     Add( $0020, [TTypeVR.vrUS], 'Detector Vector' );
     Add( $0021, [TTypeVR.vrUS], 'Number of Detectors' );
     Add( $0022, [TTypeVR.vrSQ], 'Detector Information Sequence' );
     Add( $0030, [TTypeVR.vrUS], 'Phase Vector' );
     Add( $0031, [TTypeVR.vrUS], 'Number of Phases' );
     Add( $0032, [TTypeVR.vrSQ], 'Phase Information Sequence' );
     Add( $0033, [TTypeVR.vrUS], 'Number of Frames in Phase' );
     Add( $0036, [TTypeVR.vrIS], 'Phase Delay' );
     Add( $0038, [TTypeVR.vrIS], 'Pause Between Frames' );
     Add( $0039, [TTypeVR.vrCS], 'Phase Description' );
     Add( $0050, [TTypeVR.vrUS], 'Rotation Vector' );
     Add( $0051, [TTypeVR.vrUS], 'Number of Rotations' );
     Add( $0052, [TTypeVR.vrSQ], 'Rotation Information Sequence' );
     Add( $0053, [TTypeVR.vrUS], 'Number of Frames in Rotation' );
     Add( $0060, [TTypeVR.vrUS], 'R-R Interval Vector' );
     Add( $0061, [TTypeVR.vrUS], 'Number of R-R Intervals' );
     Add( $0062, [TTypeVR.vrSQ], 'Gated Information Sequence' );
     Add( $0063, [TTypeVR.vrSQ], 'Data Information Sequence' );
     Add( $0070, [TTypeVR.vrUS], 'Time Slot Vector' );
     Add( $0071, [TTypeVR.vrUS], 'Number of Time Slots' );
     Add( $0072, [TTypeVR.vrSQ], 'Time Slot Information Sequence' );
     Add( $0073, [TTypeVR.vrDS], 'Time Slot Time' );
     Add( $0080, [TTypeVR.vrUS], 'Slice Vector' );
     Add( $0081, [TTypeVR.vrUS], 'Number of Slices' );
     Add( $0090, [TTypeVR.vrUS], 'Angular View Vector' );
     Add( $0100, [TTypeVR.vrUS], 'Time Slice Vector' );
     Add( $0101, [TTypeVR.vrUS], 'Number of Time Slices' );
     Add( $0200, [TTypeVR.vrDS], 'Start Angle' );
     Add( $0202, [TTypeVR.vrCS], 'Type of Detector Motion' );
     Add( $0210, [TTypeVR.vrIS], 'Trigger Vector' );
     Add( $0211, [TTypeVR.vrUS], 'Number of Triggers in Phase' );
     Add( $0220, [TTypeVR.vrSQ], 'View Code Sequence' );
     Add( $0222, [TTypeVR.vrSQ], 'View Modifier Code Sequence' );
     Add( $0300, [TTypeVR.vrSQ], 'Radionuclide Code Sequence' );
     Add( $0302, [TTypeVR.vrSQ], 'Administration Route Code Sequence' );
     Add( $0304, [TTypeVR.vrSQ], 'Radiopharmaceutical Code Sequence' );
     Add( $0306, [TTypeVR.vrSQ], 'Calibration Data Sequence' );
     Add( $0308, [TTypeVR.vrUS], 'Energy Window Number' );
     Add( $0400, [TTypeVR.vrSH], 'Image ID' );
     Add( $0410, [TTypeVR.vrSQ], 'Patient Orientation Code Sequence' );
     Add( $0412, [TTypeVR.vrSQ], 'Patient Orientation Modifier Code Sequence' );
     Add( $0414, [TTypeVR.vrSQ], 'Patient Gantry Relationship Code Sequence' );
     Add( $0500, [TTypeVR.vrCS], 'Slice Progression Direction' );
     Add( $0501, [TTypeVR.vrCS], 'Scan Progression Direction' );
     Add( $1000, [TTypeVR.vrCS], 'Series Type' );
     Add( $1001, [TTypeVR.vrCS], 'Units' );
     Add( $1002, [TTypeVR.vrCS], 'Counts Source' );
     Add( $1004, [TTypeVR.vrCS], 'Reprojection Method' );
     Add( $1006, [TTypeVR.vrCS], 'SUV Type' );
     Add( $1100, [TTypeVR.vrCS], 'Randoms Correction Method' );
     Add( $1101, [TTypeVR.vrLO], 'Attenuation Correction Method' );
     Add( $1102, [TTypeVR.vrCS], 'Decay Correction' );
     Add( $1103, [TTypeVR.vrLO], 'Reconstruction Method' );
     Add( $1104, [TTypeVR.vrLO], 'Detector Lines of Response Used' );
     Add( $1105, [TTypeVR.vrLO], 'Scatter Correction Method' );
     Add( $1200, [TTypeVR.vrDS], 'Axial Acceptance' );
     Add( $1201, [TTypeVR.vrIS], 'Axial Mash' );
     Add( $1202, [TTypeVR.vrIS], 'Transverse Mash' );
     Add( $1203, [TTypeVR.vrDS], 'Detector Element Size' );
     Add( $1210, [TTypeVR.vrDS], 'Coincidence Window Width' );
     Add( $1220, [TTypeVR.vrCS], 'Secondary Counts Type' );
     Add( $1300, [TTypeVR.vrDS], 'Frame Reference Time' );
     Add( $1310, [TTypeVR.vrIS], 'Primary (Prompts) Counts Accumulated' );
     Add( $1311, [TTypeVR.vrIS], 'Secondary Counts Accumulated' );
     Add( $1320, [TTypeVR.vrDS], 'Slice Sensitivity Factor' );
     Add( $1321, [TTypeVR.vrDS], 'Decay Factor' );
     Add( $1322, [TTypeVR.vrDS], 'Dose Calibration Factor' );
     Add( $1323, [TTypeVR.vrDS], 'Scatter Fraction Factor' );
     Add( $1324, [TTypeVR.vrDS], 'Dead Time Factor' );
     Add( $1330, [TTypeVR.vrUS], 'Image Index' );
     Add( $1400, [TTypeVR.vrCS], 'Counts Included' );
     Add( $1401, [TTypeVR.vrCS], 'Dead Time Correction Flag' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
