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
     Add( $0002, [TTypeVR.vrSH], 'Structure Set Label' );
     Add( $0004, [TTypeVR.vrLO], 'Structure Set Name' );
     Add( $0006, [TTypeVR.vrST], 'Structure Set Description' );
     Add( $0008, [TTypeVR.vrDA], 'Structure Set Date' );
     Add( $0009, [TTypeVR.vrTM], 'Structure Set Time' );
     Add( $0010, [TTypeVR.vrSQ], 'Referenced Frame of Reference Sequence' );
     Add( $0012, [TTypeVR.vrSQ], 'RT Referenced Study Sequence' );
     Add( $0014, [TTypeVR.vrSQ], 'RT Referenced Series Sequence' );
     Add( $0016, [TTypeVR.vrSQ], 'Contour Image Sequence' );
     Add( $0018, [TTypeVR.vrSQ], 'Predecessor Structure Set Sequence' );
     Add( $0020, [TTypeVR.vrSQ], 'Structure Set ROI Sequence' );
     Add( $0022, [TTypeVR.vrIS], 'ROI Number' );
     Add( $0024, [TTypeVR.vrUI], 'Referenced Frame of Reference UID' );
     Add( $0026, [TTypeVR.vrLO], 'ROI Name' );
     Add( $0028, [TTypeVR.vrST], 'ROI Description' );
     Add( $002A, [TTypeVR.vrIS], 'ROI Display Color' );
     Add( $002C, [TTypeVR.vrDS], 'ROI Volume' );
     Add( $0030, [TTypeVR.vrSQ], 'RT Related ROI Sequence' );
     Add( $0033, [TTypeVR.vrCS], 'RT ROI Relationship' );
     Add( $0036, [TTypeVR.vrCS], 'ROI Generation Algorithm' );
     Add( $0038, [TTypeVR.vrLO], 'ROI Generation Description' );
     Add( $0039, [TTypeVR.vrSQ], 'ROI Contour Sequence' );
     Add( $0040, [TTypeVR.vrSQ], 'Contour Sequence' );
     Add( $0042, [TTypeVR.vrCS], 'Contour Geometric Type' );
     Add( $0044, [TTypeVR.vrDS], 'Contour Slab Thickness' );
     Add( $0045, [TTypeVR.vrDS], 'Contour Offset Vector' );
     Add( $0046, [TTypeVR.vrIS], 'Number of Contour Points' );
     Add( $0048, [TTypeVR.vrIS], 'Contour Number' );
     Add( $0049, [TTypeVR.vrIS], 'Attached Contours' );
     Add( $0050, [TTypeVR.vrDS], 'Contour Data' );
     Add( $0080, [TTypeVR.vrSQ], 'RT ROI Observations Sequence' );
     Add( $0082, [TTypeVR.vrIS], 'Observation Number' );
     Add( $0084, [TTypeVR.vrIS], 'Referenced ROI Number' );
     Add( $0085, [TTypeVR.vrSH], 'ROI Observation Label' );
     Add( $0086, [TTypeVR.vrSQ], 'RT ROI Identification Code Sequence' );
     Add( $0088, [TTypeVR.vrST], 'ROI Observation Description' );
     Add( $00A0, [TTypeVR.vrSQ], 'Related RT ROI Observations Sequence' );
     Add( $00A4, [TTypeVR.vrCS], 'RT ROI Interpreted Type' );
     Add( $00A6, [TTypeVR.vrPN], 'ROI Interpreter' );
     Add( $00B0, [TTypeVR.vrSQ], 'ROI Physical Properties Sequence' );
     Add( $00B2, [TTypeVR.vrCS], 'ROI Physical Property' );
     Add( $00B4, [TTypeVR.vrDS], 'ROI Physical Property Value' );
     Add( $00B6, [TTypeVR.vrSQ], 'ROI Elemental Composition Sequence' );
     Add( $00B7, [TTypeVR.vrUS], 'ROI Elemental Composition Atomic Number' );
     Add( $00B8, [TTypeVR.vrFL], 'ROI Elemental Composition Atomic Mass Fraction' );
     Add( $00B9, [TTypeVR.vrSQ], 'Additional RT ROI Identification Code Sequence' );
     Add( $00C0, [TTypeVR.vrSQ], 'Frame of Reference Relationship Sequence' );
     Add( $00C2, [TTypeVR.vrUI], 'Related Frame of Reference UID' );
     Add( $00C4, [TTypeVR.vrCS], 'Frame of Reference Transformation Type' );
     Add( $00C6, [TTypeVR.vrDS], 'Frame of Reference Transformation Matrix' );
     Add( $00C8, [TTypeVR.vrLO], 'Frame of Reference Transformation Comment' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
