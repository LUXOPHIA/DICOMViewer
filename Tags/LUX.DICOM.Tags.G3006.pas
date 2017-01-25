unit LUX.DICOM.Tags.G3006;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup3006

     TdcmGrup3006 = class( TdcmGrup )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup3006

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmGrup3006.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0002, 'StructureSetLabel', [TKindVR.vrSH], 'Structure Set Label' );
     Add( $0004, 'StructureSetName', [TKindVR.vrLO], 'Structure Set Name' );
     Add( $0006, 'StructureSetDescription', [TKindVR.vrST], 'Structure Set Description' );
     Add( $0008, 'StructureSetDate', [TKindVR.vrDA], 'Structure Set Date' );
     Add( $0009, 'StructureSetTime', [TKindVR.vrTM], 'Structure Set Time' );
     Add( $0010, 'ReferencedFrameOfReferenceSequence', [TKindVR.vrSQ], 'Referenced Frame of Reference Sequence' );
     Add( $0012, 'RTReferencedStudySequence', [TKindVR.vrSQ], 'RT Referenced Study Sequence' );
     Add( $0014, 'RTReferencedSeriesSequence', [TKindVR.vrSQ], 'RT Referenced Series Sequence' );
     Add( $0016, 'ContourImageSequence', [TKindVR.vrSQ], 'Contour Image Sequence' );
     Add( $0018, 'PredecessorStructureSetSequence', [TKindVR.vrSQ], 'Predecessor Structure Set Sequence' );
     Add( $0020, 'StructureSetROISequence', [TKindVR.vrSQ], 'Structure Set ROI Sequence' );
     Add( $0022, 'ROINumber', [TKindVR.vrIS], 'ROI Number' );
     Add( $0024, 'ReferencedFrameOfReferenceUID', [TKindVR.vrUI], 'Referenced Frame of Reference UID' );
     Add( $0026, 'ROIName', [TKindVR.vrLO], 'ROI Name' );
     Add( $0028, 'ROIDescription', [TKindVR.vrST], 'ROI Description' );
     Add( $002A, 'ROIDisplayColor', [TKindVR.vrIS], 'ROI Display Color' );
     Add( $002C, 'ROIVolume', [TKindVR.vrDS], 'ROI Volume' );
     Add( $0030, 'RTRelatedROISequence', [TKindVR.vrSQ], 'RT Related ROI Sequence' );
     Add( $0033, 'RTROIRelationship', [TKindVR.vrCS], 'RT ROI Relationship' );
     Add( $0036, 'ROIGenerationAlgorithm', [TKindVR.vrCS], 'ROI Generation Algorithm' );
     Add( $0038, 'ROIGenerationDescription', [TKindVR.vrLO], 'ROI Generation Description' );
     Add( $0039, 'ROIContourSequence', [TKindVR.vrSQ], 'ROI Contour Sequence' );
     Add( $0040, 'ContourSequence', [TKindVR.vrSQ], 'Contour Sequence' );
     Add( $0042, 'ContourGeometricType', [TKindVR.vrCS], 'Contour Geometric Type' );
     Add( $0044, 'ContourSlabThickness', [TKindVR.vrDS], 'Contour Slab Thickness' );
     Add( $0045, 'ContourOffsetVector', [TKindVR.vrDS], 'Contour Offset Vector' );
     Add( $0046, 'NumberOfContourPoints', [TKindVR.vrIS], 'Number of Contour Points' );
     Add( $0048, 'ContourNumber', [TKindVR.vrIS], 'Contour Number' );
     Add( $0049, 'AttachedContours', [TKindVR.vrIS], 'Attached Contours' );
     Add( $0050, 'ContourData', [TKindVR.vrDS], 'Contour Data' );
     Add( $0080, 'RTROIObservationsSequence', [TKindVR.vrSQ], 'RT ROI Observations Sequence' );
     Add( $0082, 'ObservationNumber', [TKindVR.vrIS], 'Observation Number' );
     Add( $0084, 'ReferencedROINumber', [TKindVR.vrIS], 'Referenced ROI Number' );
     Add( $0085, 'ROIObservationLabel', [TKindVR.vrSH], 'ROI Observation Label' );
     Add( $0086, 'RTROIIdentificationCodeSequence', [TKindVR.vrSQ], 'RT ROI Identification Code Sequence' );
     Add( $0088, 'ROIObservationDescription', [TKindVR.vrST], 'ROI Observation Description' );
     Add( $00A0, 'RelatedRTROIObservationsSequence', [TKindVR.vrSQ], 'Related RT ROI Observations Sequence' );
     Add( $00A4, 'RTROIInterpretedType', [TKindVR.vrCS], 'RT ROI Interpreted Type' );
     Add( $00A6, 'ROIInterpreter', [TKindVR.vrPN], 'ROI Interpreter' );
     Add( $00B0, 'ROIPhysicalPropertiesSequence', [TKindVR.vrSQ], 'ROI Physical Properties Sequence' );
     Add( $00B2, 'ROIPhysicalProperty', [TKindVR.vrCS], 'ROI Physical Property' );
     Add( $00B4, 'ROIPhysicalPropertyValue', [TKindVR.vrDS], 'ROI Physical Property Value' );
     Add( $00B6, 'ROIElementalCompositionSequence', [TKindVR.vrSQ], 'ROI Elemental Composition Sequence' );
     Add( $00B7, 'ROIElementalCompositionAtomicNumber', [TKindVR.vrUS], 'ROI Elemental Composition Atomic Number' );
     Add( $00B8, 'ROIElementalCompositionAtomicMassFraction', [TKindVR.vrFL], 'ROI Elemental Composition Atomic Mass Fraction' );
     Add( $00B9, 'AdditionalRTROIIdentificationCodeSequence', [TKindVR.vrSQ], 'Additional RT ROI Identification Code Sequence' );
     Add( $00C0, 'FrameOfReferenceRelationshipSequence', [TKindVR.vrSQ], 'Frame of Reference Relationship Sequence' );
     Add( $00C2, 'RelatedFrameOfReferenceUID', [TKindVR.vrUI], 'Related Frame of Reference UID' );
     Add( $00C4, 'FrameOfReferenceTransformationType', [TKindVR.vrCS], 'Frame of Reference Transformation Type' );
     Add( $00C6, 'FrameOfReferenceTransformationMatrix', [TKindVR.vrDS], 'Frame of Reference Transformation Matrix' );
     Add( $00C8, 'FrameOfReferenceTransformationComment', [TKindVR.vrLO], 'Frame of Reference Transformation Comment' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
