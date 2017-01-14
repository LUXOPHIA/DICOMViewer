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
     Add( $0002, TKindVR.vrSH, 'Hanging Protocol Name' );
     Add( $0004, TKindVR.vrLO, 'Hanging Protocol Description' );
     Add( $0006, TKindVR.vrCS, 'Hanging Protocol Level' );
     Add( $0008, TKindVR.vrLO, 'Hanging Protocol Creator' );
     Add( $000A, TKindVR.vrDT, 'Hanging Protocol Creation Date​Time' );
     Add( $000C, TKindVR.vrSQ, 'Hanging Protocol Definition Sequence' );
     Add( $000E, TKindVR.vrSQ, 'Hanging Protocol User Identification Code Sequence' );
     Add( $0010, TKindVR.vrLO, 'Hanging Protocol User Group Name' );
     Add( $0012, TKindVR.vrSQ, 'Source Hanging Protocol Sequence' );
     Add( $0014, TKindVR.vrUS, 'Number of Priors Referenced' );
     Add( $0020, TKindVR.vrSQ, 'Image Sets Sequence' );
     Add( $0022, TKindVR.vrSQ, 'Image Set Selector Sequence' );
     Add( $0024, TKindVR.vrCS, 'Image Set Selector Usage Flag' );
     Add( $0026, TKindVR.vrAT, 'Selector Attribute' );
     Add( $0028, TKindVR.vrUS, 'Selector Value Number' );
     Add( $0030, TKindVR.vrSQ, 'Time Based Image Sets Sequence' );
     Add( $0032, TKindVR.vrUS, 'Image Set Number' );
     Add( $0034, TKindVR.vrCS, 'Image Set Selector Category' );
     Add( $0038, TKindVR.vrUS, 'Relative Time' );
     Add( $003A, TKindVR.vrCS, 'Relative Time Units' );
     Add( $003C, TKindVR.vrSS, 'Abstract Prior Value' );
     Add( $003E, TKindVR.vrSQ, 'Abstract Prior Code Sequence' );
     Add( $0040, TKindVR.vrLO, 'Image Set Label' );
     Add( $0050, TKindVR.vrCS, 'Selector Attribute VR' );
     Add( $0052, TKindVR.vrAT, 'Selector Sequence Pointer' );
     Add( $0054, TKindVR.vrLO, 'Selector Sequence Pointer Private Creator' );
     Add( $0056, TKindVR.vrLO, 'Selector Attribute Private Creator' );
     Add( $005E, TKindVR.vrAE, 'Selector AE Value' );
     Add( $005F, TKindVR.vrAS, 'Selector AS Value' );
     Add( $0060, TKindVR.vrAT, 'Selector AT Value' );
     Add( $0061, TKindVR.vrDA, 'Selector DA Value' );
     Add( $0062, TKindVR.vrCS, 'Selector CS Value' );
     Add( $0063, TKindVR.vrDT, 'Selector DT Value' );
     Add( $0064, TKindVR.vrIS, 'Selector IS Value' );
     Add( $0065, TKindVR.vrOB, 'Selector OB Value' );
     Add( $0066, TKindVR.vrLO, 'Selector LO Value' );
     Add( $0067, TKindVR.vrOF, 'Selector OF Value' );
     Add( $0068, TKindVR.vrLT, 'Selector LT Value' );
     Add( $0069, TKindVR.vrOW, 'Selector OW Value' );
     Add( $006A, TKindVR.vrPN, 'Selector PN Value' );
     Add( $006B, TKindVR.vrTM, 'Selector TM Value' );
     Add( $006C, TKindVR.vrSH, 'Selector SH Value' );
     Add( $006D, TKindVR.vrUN, 'Selector UN Value' );
     Add( $006E, TKindVR.vrST, 'Selector ST Value' );
     Add( $006F, TKindVR.vrUC, 'Selector UC Value' );
     Add( $0070, TKindVR.vrUT, 'Selector UT Value' );
     Add( $0071, TKindVR.vrUR, 'Selector UR Value' );
     Add( $0072, TKindVR.vrDS, 'Selector DS Value' );
     Add( $0073, TKindVR.vrOD, 'Selector OD Value' );
     Add( $0074, TKindVR.vrFD, 'Selector FD Value' );
     Add( $0075, TKindVR.vrOL, 'Selector OL Value' );
     Add( $0076, TKindVR.vrFL, 'Selector FL Value' );
     Add( $0078, TKindVR.vrUL, 'Selector UL Value' );
     Add( $007A, TKindVR.vrUS, 'Selector US Value' );
     Add( $007C, TKindVR.vrSL, 'Selector SL Value' );
     Add( $007E, TKindVR.vrSS, 'Selector SS Value' );
     Add( $007F, TKindVR.vrUI, 'Selector UI Value' );
     Add( $0080, TKindVR.vrSQ, 'Selector Code Sequence Value' );
     Add( $0100, TKindVR.vrUS, 'Number of Screens' );
     Add( $0102, TKindVR.vrSQ, 'Nominal Screen Definition Sequence' );
     Add( $0104, TKindVR.vrUS, 'Number of Vertical Pixels' );
     Add( $0106, TKindVR.vrUS, 'Number of Horizontal Pixels' );
     Add( $0108, TKindVR.vrFD, 'Display Environment Spatial Position' );
     Add( $010A, TKindVR.vrUS, 'Screen Minimum Grayscale Bit Depth' );
     Add( $010C, TKindVR.vrUS, 'Screen Minimum Color Bit Depth' );
     Add( $010E, TKindVR.vrUS, 'Application Maximum Repaint Time' );
     Add( $0200, TKindVR.vrSQ, 'Display Sets Sequence' );
     Add( $0202, TKindVR.vrUS, 'Display Set Number' );
     Add( $0203, TKindVR.vrLO, 'Display Set Label' );
     Add( $0204, TKindVR.vrUS, 'Display Set Presentation Group' );
     Add( $0206, TKindVR.vrLO, 'Display Set Presentation Group Description' );
     Add( $0208, TKindVR.vrCS, 'Partial Data Display Handling' );
     Add( $0210, TKindVR.vrSQ, 'Synchronized Scrolling Sequence' );
     Add( $0212, TKindVR.vrUS, 'Display Set Scrolling Group' );
     Add( $0214, TKindVR.vrSQ, 'Navigation Indicator Sequence' );
     Add( $0216, TKindVR.vrUS, 'Navigation Display Set' );
     Add( $0218, TKindVR.vrUS, 'Reference Display Sets' );
     Add( $0300, TKindVR.vrSQ, 'Image Boxes Sequence' );
     Add( $0302, TKindVR.vrUS, 'Image Box Number' );
     Add( $0304, TKindVR.vrCS, 'Image Box Layout Type' );
     Add( $0306, TKindVR.vrUS, 'Image Box Tile Horizontal Dimension' );
     Add( $0308, TKindVR.vrUS, 'Image Box Tile Vertical Dimension' );
     Add( $0310, TKindVR.vrCS, 'Image Box Scroll Direction' );
     Add( $0312, TKindVR.vrCS, 'Image Box Small Scroll Type' );
     Add( $0314, TKindVR.vrUS, 'Image Box Small Scroll Amount' );
     Add( $0316, TKindVR.vrCS, 'Image Box Large Scroll Type' );
     Add( $0318, TKindVR.vrUS, 'Image Box Large Scroll Amount' );
     Add( $0320, TKindVR.vrUS, 'Image Box Overlap Priority' );
     Add( $0330, TKindVR.vrFD, 'Cine Relative to Real-Time' );
     Add( $0400, TKindVR.vrSQ, 'Filter Operations Sequence' );
     Add( $0402, TKindVR.vrCS, 'Filter-by Category' );
     Add( $0404, TKindVR.vrCS, 'Filter-by Attribute Presence' );
     Add( $0406, TKindVR.vrCS, 'Filter-by Operator' );
     Add( $0420, TKindVR.vrUS, 'Structured Display Background CIELab Value' );
     Add( $0421, TKindVR.vrUS, 'Empty Image Box CIELab Value' );
     Add( $0422, TKindVR.vrSQ, 'Structured Display Image Box Sequence' );
     Add( $0424, TKindVR.vrSQ, 'Structured Display Text Box Sequence' );
     Add( $0427, TKindVR.vrSQ, 'Referenced First Frame Sequence' );
     Add( $0430, TKindVR.vrSQ, 'Image Box Synchronization Sequence' );
     Add( $0432, TKindVR.vrUS, 'Synchronized Image Box List' );
     Add( $0434, TKindVR.vrCS, 'Type of Synchronization' );
     Add( $0500, TKindVR.vrCS, 'Blending Operation Type' );
     Add( $0510, TKindVR.vrCS, 'Reformatting Operation Type' );
     Add( $0512, TKindVR.vrFD, 'Reformatting Thickness' );
     Add( $0514, TKindVR.vrFD, 'Reformatting Interval' );
     Add( $0516, TKindVR.vrCS, 'Reformatting Operation Initial View Direction' );
     Add( $0520, TKindVR.vrCS, '3D Rendering Type' );
     Add( $0600, TKindVR.vrSQ, 'Sorting Operations Sequence' );
     Add( $0602, TKindVR.vrCS, 'Sort-by Category' );
     Add( $0604, TKindVR.vrCS, 'Sorting Direction' );
     Add( $0700, TKindVR.vrCS, 'Display Set Patient Orientation' );
     Add( $0702, TKindVR.vrCS, 'VOI Type' );
     Add( $0704, TKindVR.vrCS, 'Pseudo-Color Type' );
     Add( $0705, TKindVR.vrSQ, 'Pseudo-Color Palette Instance Reference Sequence' );
     Add( $0706, TKindVR.vrCS, 'Show Grayscale Inverted' );
     Add( $0710, TKindVR.vrCS, 'Show Image True Size Flag' );
     Add( $0712, TKindVR.vrCS, 'Show Graphic Annotation Flag' );
     Add( $0714, TKindVR.vrCS, 'Show Patient Demographics Flag' );
     Add( $0716, TKindVR.vrCS, 'Show Acquisition Techniques Flag' );
     Add( $0717, TKindVR.vrCS, 'Display Set Horizontal Justification' );
     Add( $0718, TKindVR.vrCS, 'Display Set Vertical Justification' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
