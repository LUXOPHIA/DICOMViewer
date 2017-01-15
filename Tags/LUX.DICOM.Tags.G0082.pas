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
     Add( $0001, [TTypeVR.vrCS], 'Assessment Summary' );
     Add( $0003, [TTypeVR.vrUT], 'Assessment Summary Description' );
     Add( $0004, [TTypeVR.vrSQ], 'Assessed SOP Instance Sequence' );
     Add( $0005, [TTypeVR.vrSQ], 'Referenced Comparison SOP Instance Sequence' );
     Add( $0006, [TTypeVR.vrUL], 'Number of Assessment Observations' );
     Add( $0007, [TTypeVR.vrSQ], 'Assessment Observations Sequence' );
     Add( $0008, [TTypeVR.vrCS], 'Observation Significance' );
     Add( $000A, [TTypeVR.vrUT], 'Observation Description' );
     Add( $000C, [TTypeVR.vrSQ], 'Structured Constraint Observation Sequence' );
     Add( $0010, [TTypeVR.vrSQ], 'Assessed Attribute Value Sequence' );
     Add( $0016, [TTypeVR.vrLO], 'Assessment Set ID' );
     Add( $0017, [TTypeVR.vrSQ], 'Assessment Requester Sequence' );
     Add( $0018, [TTypeVR.vrLO], 'Selector Attribute Name' );
     Add( $0019, [TTypeVR.vrLO], 'Selector Attribute Keyword' );
     Add( $0021, [TTypeVR.vrSQ], 'Assessment Type Code Sequence' );
     Add( $0022, [TTypeVR.vrSQ], 'Observation Basis Code Sequence' );
     Add( $0023, [TTypeVR.vrLO], 'Assessment Label' );
     Add( $0032, [TTypeVR.vrCS], 'Constraint Type' );
     Add( $0033, [TTypeVR.vrUT], 'Specification Selection Guidance' );
     Add( $0034, [TTypeVR.vrSQ], 'Constraint Value Sequence' );
     Add( $0035, [TTypeVR.vrSQ], 'Recommended Default Value Sequence' );
     Add( $0036, [TTypeVR.vrCS], 'Constraint Violation Significance' );
     Add( $0037, [TTypeVR.vrUT], 'Constraint Violation Condition' );
     Add( $0038, [TTypeVR.vrCS], 'Modifiable Constraint Flag' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
