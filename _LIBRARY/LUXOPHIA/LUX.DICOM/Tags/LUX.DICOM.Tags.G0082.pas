unit LUX.DICOM.Tags.G0082;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0082

     TdcmGrup0082 = class( TdcmGrup )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0082

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmGrup0082.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0001, 'AssessmentSummary', [TKindVR.vrCS], 'Assessment Summary' );
     Add( $0003, 'AssessmentSummaryDescription', [TKindVR.vrUT], 'Assessment Summary Description' );
     Add( $0004, 'AssessedSOPInstanceSequence', [TKindVR.vrSQ], 'Assessed SOP Instance Sequence' );
     Add( $0005, 'ReferencedComparisonSOPInstanceSequence', [TKindVR.vrSQ], 'Referenced Comparison SOP Instance Sequence' );
     Add( $0006, 'NumberOfAssessmentObservations', [TKindVR.vrUL], 'Number of Assessment Observations' );
     Add( $0007, 'AssessmentObservationsSequence', [TKindVR.vrSQ], 'Assessment Observations Sequence' );
     Add( $0008, 'ObservationSignificance', [TKindVR.vrCS], 'Observation Significance' );
     Add( $000A, 'ObservationDescription', [TKindVR.vrUT], 'Observation Description' );
     Add( $000C, 'StructuredContraintObservationSequence', [TKindVR.vrSQ], 'Structured Constraint Observation Sequence' );
     Add( $0010, 'AssessedAttributeValueSequence', [TKindVR.vrSQ], 'Assessed Attribute Value Sequence' );
     Add( $0016, 'AssessmentSetID', [TKindVR.vrLO], 'Assessment Set ID' );
     Add( $0017, 'AssessmentRequesterSequence', [TKindVR.vrSQ], 'Assessment Requester Sequence' );
     Add( $0018, 'SelectorAttributeName', [TKindVR.vrLO], 'Selector Attribute Name' );
     Add( $0019, 'SelectorAttributeKeyword', [TKindVR.vrLO], 'Selector Attribute Keyword' );
     Add( $0021, 'AssessmentTypeCodeSequence', [TKindVR.vrSQ], 'Assessment Type Code Sequence' );
     Add( $0022, 'ObservationBasisCodeSequence', [TKindVR.vrSQ], 'Observation Basis Code Sequence' );
     Add( $0023, 'AssessmentLabel', [TKindVR.vrLO], 'Assessment Label' );
     Add( $0032, 'ConstraintType', [TKindVR.vrCS], 'Constraint Type' );
     Add( $0033, 'SpecificationSelectionGuidance', [TKindVR.vrUT], 'Specification Selection Guidance' );
     Add( $0034, 'ConstraintValueSequence', [TKindVR.vrSQ], 'Constraint Value Sequence' );
     Add( $0035, 'RecommendedDefaultValueSequence', [TKindVR.vrSQ], 'Recommended Default Value Sequence' );
     Add( $0036, 'ConstraintViolationSignificance', [TKindVR.vrCS], 'Constraint Violation Significance' );
     Add( $0037, 'ConstraintViolationCondition', [TKindVR.vrUT], 'Constraint Violation Condition' );
     Add( $0038, 'ModifiableConstraintFlag', [TKindVR.vrCS], 'Modifiable Constraint Flag' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
