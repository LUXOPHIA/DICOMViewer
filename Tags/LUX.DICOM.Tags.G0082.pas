unit LUX.DICOM.Tags.G0082;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems0082

     TDICOMElems0082 = class( TDICOMElems )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems0082

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TDICOMElems0082.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0001, TKindVR.vrCS, 'Assessment Summary' );
     Add( $0003, TKindVR.vrUT, 'Assessment Summary Description' );
     Add( $0004, TKindVR.vrSQ, 'Assessed SOP Instance Sequence' );
     Add( $0005, TKindVR.vrSQ, 'Referenced Comparison SOP Instance Sequence' );
     Add( $0006, TKindVR.vrUL, 'Number of Assessment Observations' );
     Add( $0007, TKindVR.vrSQ, 'Assessment Observations Sequence' );
     Add( $0008, TKindVR.vrCS, 'Observation Significance' );
     Add( $000A, TKindVR.vrUT, 'Observation Description' );
     Add( $000C, TKindVR.vrSQ, 'Structured Constraint Observation Sequence' );
     Add( $0010, TKindVR.vrSQ, 'Assessed Attribute Value Sequence' );
     Add( $0016, TKindVR.vrLO, 'Assessment Set ID' );
     Add( $0017, TKindVR.vrSQ, 'Assessment Requester Sequence' );
     Add( $0018, TKindVR.vrLO, 'Selector Attribute Name' );
     Add( $0019, TKindVR.vrLO, 'Selector Attribute Keyword' );
     Add( $0021, TKindVR.vrSQ, 'Assessment Type Code Sequence' );
     Add( $0022, TKindVR.vrSQ, 'Observation Basis Code Sequence' );
     Add( $0023, TKindVR.vrLO, 'Assessment Label' );
     Add( $0032, TKindVR.vrCS, 'Constraint Type' );
     Add( $0033, TKindVR.vrUT, 'Specification Selection Guidance' );
     Add( $0034, TKindVR.vrSQ, 'Constraint Value Sequence' );
     Add( $0035, TKindVR.vrSQ, 'Recommended Default Value Sequence' );
     Add( $0036, TKindVR.vrCS, 'Constraint Violation Significance' );
     Add( $0037, TKindVR.vrUT, 'Constraint Violation Condition' );
     Add( $0038, TKindVR.vrCS, 'Modifiable Constraint Flag' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
