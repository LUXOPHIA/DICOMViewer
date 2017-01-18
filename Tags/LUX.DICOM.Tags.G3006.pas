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
     Add( $0002, 'StructureSetLabel', [TTypeVR.vrSH], 'Structure Set Label' );
     Add( $0004, 'StructureSetName', [TTypeVR.vrLO], 'Structure Set Name' );
     Add( $0006, 'StructureSetDescription', [TTypeVR.vrST], 'Structure Set Description' );
     Add( $0008, 'StructureSetDate', [TTypeVR.vrDA], 'Structure Set Date' );
     Add( $0009, 'StructureSetTime', [TTypeVR.vrTM], 'Structure Set Time' );
     Add( $0010, 'ReferencedFrameOfReferenceSequence', [TTypeVR.vrSQ], 'Referenced Frame of Reference Sequence' );
     Add( $0012, 'RTReferencedStudySequence', [TTypeVR.vrSQ], 'RT Referenced Study Sequence' );
     Add( $0014, 'RTReferencedSeriesSequence', [TTypeVR.vrSQ], 'RT Referenced Series Sequence' );
     Add( $0016, 'ContourImageSequence', [TTypeVR.vrSQ], 'Contour Image Sequence' );
     Add( $0018, 'PredecessorStructureSetSequence', [TTypeVR.vrSQ], 'Predecessor Structure Set Sequence' );
     Add( $0020, 'StructureSetROISequence', [TTypeVR.vrSQ], 'Structure Set ROI Sequence' );
     Add( $0022, 'ROINumber', [TTypeVR.vrIS], 'ROI Number' );
     Add( $0024, 'ReferencedFrameOfReferenceUID', [TTypeVR.vrUI], 'Referenced Frame of Reference UID' );
     Add( $0026, 'ROIName', [TTypeVR.vrLO], 'ROI Name' );
     Add( $0028, 'ROIDescription', [TTypeVR.vrST], 'ROI Description' );
     Add( $002A, 'ROIDisplayColor', [TTypeVR.vrIS], 'ROI Display Color' );
     Add( $002C, 'ROIVolume', [TTypeVR.vrDS], 'ROI Volume' );
     Add( $0030, 'RTRelatedROISequence', [TTypeVR.vrSQ], 'RT Related ROI Sequence' );
     Add( $0033, 'RTROIRelationship', [TTypeVR.vrCS], 'RT ROI Relationship' );
     Add( $0036, 'ROIGenerationAlgorithm', [TTypeVR.vrCS], 'ROI Generation Algorithm' );
     Add( $0038, 'ROIGenerationDescription', [TTypeVR.vrLO], 'ROI Generation Description' );
     Add( $0039, 'ROIContourSequence', [TTypeVR.vrSQ], 'ROI Contour Sequence' );
     Add( $0040, 'ContourSequence', [TTypeVR.vrSQ], 'Contour Sequence' );
     Add( $0042, 'ContourGeometricType', [TTypeVR.vrCS], 'Contour Geometric Type' );
     Add( $0044, 'ContourSlabThickness', [TTypeVR.vrDS], 'Contour Slab Thickness' );
     Add( $0045, 'ContourOffsetVector', [TTypeVR.vrDS], 'Contour Offset Vector' );
     Add( $0046, 'NumberOfContourPoints', [TTypeVR.vrIS], 'Number of Contour Points' );
     Add( $0048, 'ContourNumber', [TTypeVR.vrIS], 'Contour Number' );
     Add( $0049, 'AttachedContours', [TTypeVR.vrIS], 'Attached Contours' );
     Add( $0050, 'ContourData', [TTypeVR.vrDS], 'Contour Data' );
     Add( $0080, 'RTROIObservationsSequence', [TTypeVR.vrSQ], 'RT ROI Observations Sequence' );
     Add( $0082, 'ObservationNumber', [TTypeVR.vrIS], 'Observation Number' );
     Add( $0084, 'ReferencedROINumber', [TTypeVR.vrIS], 'Referenced ROI Number' );
     Add( $0085, 'ROIObservationLabel', [TTypeVR.vrSH], 'ROI Observation Label' );
     Add( $0086, 'RTROIIdentificationCodeSequence', [TTypeVR.vrSQ], 'RT ROI Identification Code Sequence' );
     Add( $0088, 'ROIObservationDescription', [TTypeVR.vrST], 'ROI Observation Description' );
     Add( $00A0, 'RelatedRTROIObservationsSequence', [TTypeVR.vrSQ], 'Related RT ROI Observations Sequence' );
     Add( $00A4, 'RTROIInterpretedType', [TTypeVR.vrCS], 'RT ROI Interpreted Type' );
     Add( $00A6, 'ROIInterpreter', [TTypeVR.vrPN], 'ROI Interpreter' );
     Add( $00B0, 'ROIPhysicalPropertiesSequence', [TTypeVR.vrSQ], 'ROI Physical Properties Sequence' );
     Add( $00B2, 'ROIPhysicalProperty', [TTypeVR.vrCS], 'ROI Physical Property' );
     Add( $00B4, 'ROIPhysicalPropertyValue', [TTypeVR.vrDS], 'ROI Physical Property Value' );
     Add( $00B6, 'ROIElementalCompositionSequence', [TTypeVR.vrSQ], 'ROI Elemental Composition Sequence' );
     Add( $00B7, 'ROIElementalCompositionAtomicNumber', [TTypeVR.vrUS], 'ROI Elemental Composition Atomic Number' );
     Add( $00B8, 'ROIElementalCompositionAtomicMassFraction', [TTypeVR.vrFL], 'ROI Elemental Composition Atomic Mass Fraction' );
     Add( $00B9, 'AdditionalRTROIIdentificationCodeSequence', [TTypeVR.vrSQ], 'Additional RT ROI Identification Code Sequence' );
     Add( $00C0, 'FrameOfReferenceRelationshipSequence', [TTypeVR.vrSQ], 'Frame of Reference Relationship Sequence' );
     Add( $00C2, 'RelatedFrameOfReferenceUID', [TTypeVR.vrUI], 'Related Frame of Reference UID' );
     Add( $00C4, 'FrameOfReferenceTransformationType', [TTypeVR.vrCS], 'Frame of Reference Transformation Type' );
     Add( $00C6, 'FrameOfReferenceTransformationMatrix', [TTypeVR.vrDS], 'Frame of Reference Transformation Matrix' );
     Add( $00C8, 'FrameOfReferenceTransformationComment', [TTypeVR.vrLO], 'Frame of Reference Transformation Comment' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
