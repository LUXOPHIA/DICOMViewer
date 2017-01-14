unit LUX.DICOM.Tags.G3006;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems3006

     TDICOMElems3006 = class( TDICOMElems )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems3006

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TDICOMElems3006.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0002, TKindVR.vrSH, 'Structure Set Label' );
     Add( $0004, TKindVR.vrLO, 'Structure Set Name' );
     Add( $0006, TKindVR.vrST, 'Structure Set Description' );
     Add( $0008, TKindVR.vrDA, 'Structure Set Date' );
     Add( $0009, TKindVR.vrTM, 'Structure Set Time' );
     Add( $0010, TKindVR.vrSQ, 'Referenced Frame of Reference Sequence' );
     Add( $0012, TKindVR.vrSQ, 'RT Referenced Study Sequence' );
     Add( $0014, TKindVR.vrSQ, 'RT Referenced Series Sequence' );
     Add( $0016, TKindVR.vrSQ, 'Contour Image Sequence' );
     Add( $0018, TKindVR.vrSQ, 'Predecessor Structure Set Sequence' );
     Add( $0020, TKindVR.vrSQ, 'Structure Set ROI Sequence' );
     Add( $0022, TKindVR.vrIS, 'ROI Number' );
     Add( $0024, TKindVR.vrUI, 'Referenced Frame of Reference UID' );
     Add( $0026, TKindVR.vrLO, 'ROI Name' );
     Add( $0028, TKindVR.vrST, 'ROI Description' );
     Add( $002A, TKindVR.vrIS, 'ROI Display Color' );
     Add( $002C, TKindVR.vrDS, 'ROI Volume' );
     Add( $0030, TKindVR.vrSQ, 'RT Related ROI Sequence' );
     Add( $0033, TKindVR.vrCS, 'RT ROI Relationship' );
     Add( $0036, TKindVR.vrCS, 'ROI Generation Algorithm' );
     Add( $0038, TKindVR.vrLO, 'ROI Generation Description' );
     Add( $0039, TKindVR.vrSQ, 'ROI Contour Sequence' );
     Add( $0040, TKindVR.vrSQ, 'Contour Sequence' );
     Add( $0042, TKindVR.vrCS, 'Contour Geometric Type' );
     Add( $0044, TKindVR.vrDS, 'Contour Slab Thickness' );
     Add( $0045, TKindVR.vrDS, 'Contour Offset Vector' );
     Add( $0046, TKindVR.vrIS, 'Number of Contour Points' );
     Add( $0048, TKindVR.vrIS, 'Contour Number' );
     Add( $0049, TKindVR.vrIS, 'Attached Contours' );
     Add( $0050, TKindVR.vrDS, 'Contour Data' );
     Add( $0080, TKindVR.vrSQ, 'RT ROI Observations Sequence' );
     Add( $0082, TKindVR.vrIS, 'Observation Number' );
     Add( $0084, TKindVR.vrIS, 'Referenced ROI Number' );
     Add( $0085, TKindVR.vrSH, 'ROI Observation Label' );
     Add( $0086, TKindVR.vrSQ, 'RT ROI Identification Code Sequence' );
     Add( $0088, TKindVR.vrST, 'ROI Observation Description' );
     Add( $00A0, TKindVR.vrSQ, 'Related RT ROI Observations Sequence' );
     Add( $00A4, TKindVR.vrCS, 'RT ROI Interpreted Type' );
     Add( $00A6, TKindVR.vrPN, 'ROI Interpreter' );
     Add( $00B0, TKindVR.vrSQ, 'ROI Physical Properties Sequence' );
     Add( $00B2, TKindVR.vrCS, 'ROI Physical Property' );
     Add( $00B4, TKindVR.vrDS, 'ROI Physical Property Value' );
     Add( $00B6, TKindVR.vrSQ, 'ROI Elemental Composition Sequence' );
     Add( $00B7, TKindVR.vrUS, 'ROI Elemental Composition Atomic Number' );
     Add( $00B8, TKindVR.vrFL, 'ROI Elemental Composition Atomic Mass Fraction' );
     Add( $00B9, TKindVR.vrSQ, 'Additional RT ROI Identification Code Sequence' );
     Add( $00C0, TKindVR.vrSQ, 'Frame of Reference Relationship Sequence' );
     Add( $00C2, TKindVR.vrUI, 'Related Frame of Reference UID' );
     Add( $00C4, TKindVR.vrCS, 'Frame of Reference Transformation Type' );
     Add( $00C6, TKindVR.vrDS, 'Frame of Reference Transformation Matrix' );
     Add( $00C8, TKindVR.vrLO, 'Frame of Reference Transformation Comment' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
