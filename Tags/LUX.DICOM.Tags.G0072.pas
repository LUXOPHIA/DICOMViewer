unit LUX.DICOM.Tags.G0072;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems0072

     TDICOMElems0072 = class( TDICOMElems )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems0072

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TDICOMElems0072.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0002, [TTypeVR.vrSH], 'Hanging Protocol Name' );
     Add( $0004, [TTypeVR.vrLO], 'Hanging Protocol Description' );
     Add( $0006, [TTypeVR.vrCS], 'Hanging Protocol Level' );
     Add( $0008, [TTypeVR.vrLO], 'Hanging Protocol Creator' );
     Add( $000A, [TTypeVR.vrDT], 'Hanging Protocol Creation Date​Time' );
     Add( $000C, [TTypeVR.vrSQ], 'Hanging Protocol Definition Sequence' );
     Add( $000E, [TTypeVR.vrSQ], 'Hanging Protocol User Identification Code Sequence' );
     Add( $0010, [TTypeVR.vrLO], 'Hanging Protocol User Group Name' );
     Add( $0012, [TTypeVR.vrSQ], 'Source Hanging Protocol Sequence' );
     Add( $0014, [TTypeVR.vrUS], 'Number of Priors Referenced' );
     Add( $0020, [TTypeVR.vrSQ], 'Image Sets Sequence' );
     Add( $0022, [TTypeVR.vrSQ], 'Image Set Selector Sequence' );
     Add( $0024, [TTypeVR.vrCS], 'Image Set Selector Usage Flag' );
     Add( $0026, [TTypeVR.vrAT], 'Selector Attribute' );
     Add( $0028, [TTypeVR.vrUS], 'Selector Value Number' );
     Add( $0030, [TTypeVR.vrSQ], 'Time Based Image Sets Sequence' );
     Add( $0032, [TTypeVR.vrUS], 'Image Set Number' );
     Add( $0034, [TTypeVR.vrCS], 'Image Set Selector Category' );
     Add( $0038, [TTypeVR.vrUS], 'Relative Time' );
     Add( $003A, [TTypeVR.vrCS], 'Relative Time Units' );
     Add( $003C, [TTypeVR.vrSS], 'Abstract Prior Value' );
     Add( $003E, [TTypeVR.vrSQ], 'Abstract Prior Code Sequence' );
     Add( $0040, [TTypeVR.vrLO], 'Image Set Label' );
     Add( $0050, [TTypeVR.vrCS], 'Selector Attribute VR' );
     Add( $0052, [TTypeVR.vrAT], 'Selector Sequence Pointer' );
     Add( $0054, [TTypeVR.vrLO], 'Selector Sequence Pointer Private Creator' );
     Add( $0056, [TTypeVR.vrLO], 'Selector Attribute Private Creator' );
     Add( $005E, [TTypeVR.vrAE], 'Selector AE Value' );
     Add( $005F, [TTypeVR.vrAS], 'Selector AS Value' );
     Add( $0060, [TTypeVR.vrAT], 'Selector AT Value' );
     Add( $0061, [TTypeVR.vrDA], 'Selector DA Value' );
     Add( $0062, [TTypeVR.vrCS], 'Selector CS Value' );
     Add( $0063, [TTypeVR.vrDT], 'Selector DT Value' );
     Add( $0064, [TTypeVR.vrIS], 'Selector IS Value' );
     Add( $0065, [TTypeVR.vrOB], 'Selector OB Value' );
     Add( $0066, [TTypeVR.vrLO], 'Selector LO Value' );
     Add( $0067, [TTypeVR.vrOF], 'Selector OF Value' );
     Add( $0068, [TTypeVR.vrLT], 'Selector LT Value' );
     Add( $0069, [TTypeVR.vrOW], 'Selector OW Value' );
     Add( $006A, [TTypeVR.vrPN], 'Selector PN Value' );
     Add( $006B, [TTypeVR.vrTM], 'Selector TM Value' );
     Add( $006C, [TTypeVR.vrSH], 'Selector SH Value' );
     Add( $006D, [TTypeVR.vrUN], 'Selector UN Value' );
     Add( $006E, [TTypeVR.vrST], 'Selector ST Value' );
     Add( $006F, [TTypeVR.vrUC], 'Selector UC Value' );
     Add( $0070, [TTypeVR.vrUT], 'Selector UT Value' );
     Add( $0071, [TTypeVR.vrUR], 'Selector UR Value' );
     Add( $0072, [TTypeVR.vrDS], 'Selector DS Value' );
     Add( $0073, [TTypeVR.vrOD], 'Selector OD Value' );
     Add( $0074, [TTypeVR.vrFD], 'Selector FD Value' );
     Add( $0075, [TTypeVR.vrOL], 'Selector OL Value' );
     Add( $0076, [TTypeVR.vrFL], 'Selector FL Value' );
     Add( $0078, [TTypeVR.vrUL], 'Selector UL Value' );
     Add( $007A, [TTypeVR.vrUS], 'Selector US Value' );
     Add( $007C, [TTypeVR.vrSL], 'Selector SL Value' );
     Add( $007E, [TTypeVR.vrSS], 'Selector SS Value' );
     Add( $007F, [TTypeVR.vrUI], 'Selector UI Value' );
     Add( $0080, [TTypeVR.vrSQ], 'Selector Code Sequence Value' );
     Add( $0100, [TTypeVR.vrUS], 'Number of Screens' );
     Add( $0102, [TTypeVR.vrSQ], 'Nominal Screen Definition Sequence' );
     Add( $0104, [TTypeVR.vrUS], 'Number of Vertical Pixels' );
     Add( $0106, [TTypeVR.vrUS], 'Number of Horizontal Pixels' );
     Add( $0108, [TTypeVR.vrFD], 'Display Environment Spatial Position' );
     Add( $010A, [TTypeVR.vrUS], 'Screen Minimum Grayscale Bit Depth' );
     Add( $010C, [TTypeVR.vrUS], 'Screen Minimum Color Bit Depth' );
     Add( $010E, [TTypeVR.vrUS], 'Application Maximum Repaint Time' );
     Add( $0200, [TTypeVR.vrSQ], 'Display Sets Sequence' );
     Add( $0202, [TTypeVR.vrUS], 'Display Set Number' );
     Add( $0203, [TTypeVR.vrLO], 'Display Set Label' );
     Add( $0204, [TTypeVR.vrUS], 'Display Set Presentation Group' );
     Add( $0206, [TTypeVR.vrLO], 'Display Set Presentation Group Description' );
     Add( $0208, [TTypeVR.vrCS], 'Partial Data Display Handling' );
     Add( $0210, [TTypeVR.vrSQ], 'Synchronized Scrolling Sequence' );
     Add( $0212, [TTypeVR.vrUS], 'Display Set Scrolling Group' );
     Add( $0214, [TTypeVR.vrSQ], 'Navigation Indicator Sequence' );
     Add( $0216, [TTypeVR.vrUS], 'Navigation Display Set' );
     Add( $0218, [TTypeVR.vrUS], 'Reference Display Sets' );
     Add( $0300, [TTypeVR.vrSQ], 'Image Boxes Sequence' );
     Add( $0302, [TTypeVR.vrUS], 'Image Box Number' );
     Add( $0304, [TTypeVR.vrCS], 'Image Box Layout Type' );
     Add( $0306, [TTypeVR.vrUS], 'Image Box Tile Horizontal Dimension' );
     Add( $0308, [TTypeVR.vrUS], 'Image Box Tile Vertical Dimension' );
     Add( $0310, [TTypeVR.vrCS], 'Image Box Scroll Direction' );
     Add( $0312, [TTypeVR.vrCS], 'Image Box Small Scroll Type' );
     Add( $0314, [TTypeVR.vrUS], 'Image Box Small Scroll Amount' );
     Add( $0316, [TTypeVR.vrCS], 'Image Box Large Scroll Type' );
     Add( $0318, [TTypeVR.vrUS], 'Image Box Large Scroll Amount' );
     Add( $0320, [TTypeVR.vrUS], 'Image Box Overlap Priority' );
     Add( $0330, [TTypeVR.vrFD], 'Cine Relative to Real-Time' );
     Add( $0400, [TTypeVR.vrSQ], 'Filter Operations Sequence' );
     Add( $0402, [TTypeVR.vrCS], 'Filter-by Category' );
     Add( $0404, [TTypeVR.vrCS], 'Filter-by Attribute Presence' );
     Add( $0406, [TTypeVR.vrCS], 'Filter-by Operator' );
     Add( $0420, [TTypeVR.vrUS], 'Structured Display Background CIELab Value' );
     Add( $0421, [TTypeVR.vrUS], 'Empty Image Box CIELab Value' );
     Add( $0422, [TTypeVR.vrSQ], 'Structured Display Image Box Sequence' );
     Add( $0424, [TTypeVR.vrSQ], 'Structured Display Text Box Sequence' );
     Add( $0427, [TTypeVR.vrSQ], 'Referenced First Frame Sequence' );
     Add( $0430, [TTypeVR.vrSQ], 'Image Box Synchronization Sequence' );
     Add( $0432, [TTypeVR.vrUS], 'Synchronized Image Box List' );
     Add( $0434, [TTypeVR.vrCS], 'Type of Synchronization' );
     Add( $0500, [TTypeVR.vrCS], 'Blending Operation Type' );
     Add( $0510, [TTypeVR.vrCS], 'Reformatting Operation Type' );
     Add( $0512, [TTypeVR.vrFD], 'Reformatting Thickness' );
     Add( $0514, [TTypeVR.vrFD], 'Reformatting Interval' );
     Add( $0516, [TTypeVR.vrCS], 'Reformatting Operation Initial View Direction' );
     Add( $0520, [TTypeVR.vrCS], '3D Rendering Type' );
     Add( $0600, [TTypeVR.vrSQ], 'Sorting Operations Sequence' );
     Add( $0602, [TTypeVR.vrCS], 'Sort-by Category' );
     Add( $0604, [TTypeVR.vrCS], 'Sorting Direction' );
     Add( $0700, [TTypeVR.vrCS], 'Display Set Patient Orientation' );
     Add( $0702, [TTypeVR.vrCS], 'VOI Type' );
     Add( $0704, [TTypeVR.vrCS], 'Pseudo-Color Type' );
     Add( $0705, [TTypeVR.vrSQ], 'Pseudo-Color Palette Instance Reference Sequence' );
     Add( $0706, [TTypeVR.vrCS], 'Show Grayscale Inverted' );
     Add( $0710, [TTypeVR.vrCS], 'Show Image True Size Flag' );
     Add( $0712, [TTypeVR.vrCS], 'Show Graphic Annotation Flag' );
     Add( $0714, [TTypeVR.vrCS], 'Show Patient Demographics Flag' );
     Add( $0716, [TTypeVR.vrCS], 'Show Acquisition Techniques Flag' );
     Add( $0717, [TTypeVR.vrCS], 'Display Set Horizontal Justification' );
     Add( $0718, [TTypeVR.vrCS], 'Display Set Vertical Justification' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
