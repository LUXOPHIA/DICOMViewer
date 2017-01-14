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
     Add( $0010, TKindVR.vrUS, 'Energy Window Vector' );
     Add( $0011, TKindVR.vrUS, 'Number of Energy Windows' );
     Add( $0012, TKindVR.vrSQ, 'Energy Window Information Sequence' );
     Add( $0013, TKindVR.vrSQ, 'Energy Window Range Sequence' );
     Add( $0014, TKindVR.vrDS, 'Energy Window Lower Limit' );
     Add( $0015, TKindVR.vrDS, 'Energy Window Upper Limit' );
     Add( $0016, TKindVR.vrSQ, 'Radiopharmaceutical Information Sequence' );
     Add( $0017, TKindVR.vrIS, 'Residual Syringe Counts' );
     Add( $0018, TKindVR.vrSH, 'Energy Window Name' );
     Add( $0020, TKindVR.vrUS, 'Detector Vector' );
     Add( $0021, TKindVR.vrUS, 'Number of Detectors' );
     Add( $0022, TKindVR.vrSQ, 'Detector Information Sequence' );
     Add( $0030, TKindVR.vrUS, 'Phase Vector' );
     Add( $0031, TKindVR.vrUS, 'Number of Phases' );
     Add( $0032, TKindVR.vrSQ, 'Phase Information Sequence' );
     Add( $0033, TKindVR.vrUS, 'Number of Frames in Phase' );
     Add( $0036, TKindVR.vrIS, 'Phase Delay' );
     Add( $0038, TKindVR.vrIS, 'Pause Between Frames' );
     Add( $0039, TKindVR.vrCS, 'Phase Description' );
     Add( $0050, TKindVR.vrUS, 'Rotation Vector' );
     Add( $0051, TKindVR.vrUS, 'Number of Rotations' );
     Add( $0052, TKindVR.vrSQ, 'Rotation Information Sequence' );
     Add( $0053, TKindVR.vrUS, 'Number of Frames in Rotation' );
     Add( $0060, TKindVR.vrUS, 'R-R Interval Vector' );
     Add( $0061, TKindVR.vrUS, 'Number of R-R Intervals' );
     Add( $0062, TKindVR.vrSQ, 'Gated Information Sequence' );
     Add( $0063, TKindVR.vrSQ, 'Data Information Sequence' );
     Add( $0070, TKindVR.vrUS, 'Time Slot Vector' );
     Add( $0071, TKindVR.vrUS, 'Number of Time Slots' );
     Add( $0072, TKindVR.vrSQ, 'Time Slot Information Sequence' );
     Add( $0073, TKindVR.vrDS, 'Time Slot Time' );
     Add( $0080, TKindVR.vrUS, 'Slice Vector' );
     Add( $0081, TKindVR.vrUS, 'Number of Slices' );
     Add( $0090, TKindVR.vrUS, 'Angular View Vector' );
     Add( $0100, TKindVR.vrUS, 'Time Slice Vector' );
     Add( $0101, TKindVR.vrUS, 'Number of Time Slices' );
     Add( $0200, TKindVR.vrDS, 'Start Angle' );
     Add( $0202, TKindVR.vrCS, 'Type of Detector Motion' );
     Add( $0210, TKindVR.vrIS, 'Trigger Vector' );
     Add( $0211, TKindVR.vrUS, 'Number of Triggers in Phase' );
     Add( $0220, TKindVR.vrSQ, 'View Code Sequence' );
     Add( $0222, TKindVR.vrSQ, 'View Modifier Code Sequence' );
     Add( $0300, TKindVR.vrSQ, 'Radionuclide Code Sequence' );
     Add( $0302, TKindVR.vrSQ, 'Administration Route Code Sequence' );
     Add( $0304, TKindVR.vrSQ, 'Radiopharmaceutical Code Sequence' );
     Add( $0306, TKindVR.vrSQ, 'Calibration Data Sequence' );
     Add( $0308, TKindVR.vrUS, 'Energy Window Number' );
     Add( $0400, TKindVR.vrSH, 'Image ID' );
     Add( $0410, TKindVR.vrSQ, 'Patient Orientation Code Sequence' );
     Add( $0412, TKindVR.vrSQ, 'Patient Orientation Modifier Code Sequence' );
     Add( $0414, TKindVR.vrSQ, 'Patient Gantry Relationship Code Sequence' );
     Add( $0500, TKindVR.vrCS, 'Slice Progression Direction' );
     Add( $0501, TKindVR.vrCS, 'Scan Progression Direction' );
     Add( $1000, TKindVR.vrCS, 'Series Type' );
     Add( $1001, TKindVR.vrCS, 'Units' );
     Add( $1002, TKindVR.vrCS, 'Counts Source' );
     Add( $1004, TKindVR.vrCS, 'Reprojection Method' );
     Add( $1006, TKindVR.vrCS, 'SUV Type' );
     Add( $1100, TKindVR.vrCS, 'Randoms Correction Method' );
     Add( $1101, TKindVR.vrLO, 'Attenuation Correction Method' );
     Add( $1102, TKindVR.vrCS, 'Decay Correction' );
     Add( $1103, TKindVR.vrLO, 'Reconstruction Method' );
     Add( $1104, TKindVR.vrLO, 'Detector Lines of Response Used' );
     Add( $1105, TKindVR.vrLO, 'Scatter Correction Method' );
     Add( $1200, TKindVR.vrDS, 'Axial Acceptance' );
     Add( $1201, TKindVR.vrIS, 'Axial Mash' );
     Add( $1202, TKindVR.vrIS, 'Transverse Mash' );
     Add( $1203, TKindVR.vrDS, 'Detector Element Size' );
     Add( $1210, TKindVR.vrDS, 'Coincidence Window Width' );
     Add( $1220, TKindVR.vrCS, 'Secondary Counts Type' );
     Add( $1300, TKindVR.vrDS, 'Frame Reference Time' );
     Add( $1310, TKindVR.vrIS, 'Primary (Prompts) Counts Accumulated' );
     Add( $1311, TKindVR.vrIS, 'Secondary Counts Accumulated' );
     Add( $1320, TKindVR.vrDS, 'Slice Sensitivity Factor' );
     Add( $1321, TKindVR.vrDS, 'Decay Factor' );
     Add( $1322, TKindVR.vrDS, 'Dose Calibration Factor' );
     Add( $1323, TKindVR.vrDS, 'Scatter Fraction Factor' );
     Add( $1324, TKindVR.vrDS, 'Dead Time Factor' );
     Add( $1330, TKindVR.vrUS, 'Image Index' );
     Add( $1400, TKindVR.vrCS, 'Counts Included' );
     Add( $1401, TKindVR.vrCS, 'Dead Time Correction Flag' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
