unit LUX.DICOM.Tags.G0072;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0072

     TdcmGrup0072 = class( TdcmGrup )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0072

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmGrup0072.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0002, 'HangingProtocolName', [TTypeVR.vrSH], 'Hanging Protocol Name' );
     Add( $0004, 'HangingProtocolDescription', [TTypeVR.vrLO], 'Hanging Protocol Description' );
     Add( $0006, 'HangingProtocolLevel', [TTypeVR.vrCS], 'Hanging Protocol Level' );
     Add( $0008, 'HangingProtocolCreator', [TTypeVR.vrLO], 'Hanging Protocol Creator' );
     Add( $000A, 'HangingProtocolCreationDateTime', [TTypeVR.vrDT], 'Hanging Protocol Creation DateTime' );
     Add( $000C, 'HangingProtocolDefinitionSequence', [TTypeVR.vrSQ], 'Hanging Protocol Definition Sequence' );
     Add( $000E, 'HangingProtocolUserIdentificationCodeSequence', [TTypeVR.vrSQ], 'Hanging Protocol User Identification Code Sequence' );
     Add( $0010, 'HangingProtocolUserGroupName', [TTypeVR.vrLO], 'Hanging Protocol User Group Name' );
     Add( $0012, 'SourceHangingProtocolSequence', [TTypeVR.vrSQ], 'Source Hanging Protocol Sequence' );
     Add( $0014, 'NumberOfPriorsReferenced', [TTypeVR.vrUS], 'Number of Priors Referenced' );
     Add( $0020, 'ImageSetsSequence', [TTypeVR.vrSQ], 'Image Sets Sequence' );
     Add( $0022, 'ImageSetSelectorSequence', [TTypeVR.vrSQ], 'Image Set Selector Sequence' );
     Add( $0024, 'ImageSetSelectorUsageFlag', [TTypeVR.vrCS], 'Image Set Selector Usage Flag' );
     Add( $0026, 'SelectorAttribute', [TTypeVR.vrAT], 'Selector Attribute' );
     Add( $0028, 'SelectorValueNumber', [TTypeVR.vrUS], 'Selector Value Number' );
     Add( $0030, 'TimeBasedImageSetsSequence', [TTypeVR.vrSQ], 'Time Based Image Sets Sequence' );
     Add( $0032, 'ImageSetNumber', [TTypeVR.vrUS], 'Image Set Number' );
     Add( $0034, 'ImageSetSelectorCategory', [TTypeVR.vrCS], 'Image Set Selector Category' );
     Add( $0038, 'RelativeTime', [TTypeVR.vrUS], 'Relative Time' );
     Add( $003A, 'RelativeTimeUnits', [TTypeVR.vrCS], 'Relative Time Units' );
     Add( $003C, 'AbstractPriorValue', [TTypeVR.vrSS], 'Abstract Prior Value' );
     Add( $003E, 'AbstractPriorCodeSequence', [TTypeVR.vrSQ], 'Abstract Prior Code Sequence' );
     Add( $0040, 'ImageSetLabel', [TTypeVR.vrLO], 'Image Set Label' );
     Add( $0050, 'SelectorAttributeVR', [TTypeVR.vrCS], 'Selector Attribute VR' );
     Add( $0052, 'SelectorSequencePointer', [TTypeVR.vrAT], 'Selector Sequence Pointer' );
     Add( $0054, 'SelectorSequencePointerPrivateCreator', [TTypeVR.vrLO], 'Selector Sequence Pointer Private Creator' );
     Add( $0056, 'SelectorAttributePrivateCreator', [TTypeVR.vrLO], 'Selector Attribute Private Creator' );
     Add( $005E, 'SelectorAEValue', [TTypeVR.vrAE], 'Selector AE Value' );
     Add( $005F, 'SelectorASValue', [TTypeVR.vrAS], 'Selector AS Value' );
     Add( $0060, 'SelectorATValue', [TTypeVR.vrAT], 'Selector AT Value' );
     Add( $0061, 'SelectorDAValue', [TTypeVR.vrDA], 'Selector DA Value' );
     Add( $0062, 'SelectorCSValue', [TTypeVR.vrCS], 'Selector CS Value' );
     Add( $0063, 'SelectorDTValue', [TTypeVR.vrDT], 'Selector DT Value' );
     Add( $0064, 'SelectorISValue', [TTypeVR.vrIS], 'Selector IS Value' );
     Add( $0065, 'SelectorOBValue', [TTypeVR.vrOB], 'Selector OB Value' );
     Add( $0066, 'SelectorLOValue', [TTypeVR.vrLO], 'Selector LO Value' );
     Add( $0067, 'SelectorOFValue', [TTypeVR.vrOF], 'Selector OF Value' );
     Add( $0068, 'SelectorLTValue', [TTypeVR.vrLT], 'Selector LT Value' );
     Add( $0069, 'SelectorOWValue', [TTypeVR.vrOW], 'Selector OW Value' );
     Add( $006A, 'SelectorPNValue', [TTypeVR.vrPN], 'Selector PN Value' );
     Add( $006B, 'SelectorTMValue', [TTypeVR.vrTM], 'Selector TM Value' );
     Add( $006C, 'SelectorSHValue', [TTypeVR.vrSH], 'Selector SH Value' );
     Add( $006D, 'SelectorUNValue', [TTypeVR.vrUN], 'Selector UN Value' );
     Add( $006E, 'SelectorSTValue', [TTypeVR.vrST], 'Selector ST Value' );
     Add( $006F, 'SelectorUCValue', [TTypeVR.vrUC], 'Selector UC Value' );
     Add( $0070, 'SelectorUTValue', [TTypeVR.vrUT], 'Selector UT Value' );
     Add( $0071, 'SelectorURValue', [TTypeVR.vrUR], 'Selector UR Value' );
     Add( $0072, 'SelectorDSValue', [TTypeVR.vrDS], 'Selector DS Value' );
     Add( $0073, 'SelectorODValue', [TTypeVR.vrOD], 'Selector OD Value' );
     Add( $0074, 'SelectorFDValue', [TTypeVR.vrFD], 'Selector FD Value' );
     Add( $0075, 'SelectorOLValue', [TTypeVR.vrOL], 'Selector OL Value' );
     Add( $0076, 'SelectorFLValue', [TTypeVR.vrFL], 'Selector FL Value' );
     Add( $0078, 'SelectorULValue', [TTypeVR.vrUL], 'Selector UL Value' );
     Add( $007A, 'SelectorUSValue', [TTypeVR.vrUS], 'Selector US Value' );
     Add( $007C, 'SelectorSLValue', [TTypeVR.vrSL], 'Selector SL Value' );
     Add( $007E, 'SelectorSSValue', [TTypeVR.vrSS], 'Selector SS Value' );
     Add( $007F, 'SelectorUIValue', [TTypeVR.vrUI], 'Selector UI Value' );
     Add( $0080, 'SelectorCodeSequenceValue', [TTypeVR.vrSQ], 'Selector Code Sequence Value' );
     Add( $0100, 'NumberOfScreens', [TTypeVR.vrUS], 'Number of Screens' );
     Add( $0102, 'NominalScreenDefinitionSequence', [TTypeVR.vrSQ], 'Nominal Screen Definition Sequence' );
     Add( $0104, 'NumberOfVerticalPixels', [TTypeVR.vrUS], 'Number of Vertical Pixels' );
     Add( $0106, 'NumberOfHorizontalPixels', [TTypeVR.vrUS], 'Number of Horizontal Pixels' );
     Add( $0108, 'DisplayEnvironmentSpatialPosition', [TTypeVR.vrFD], 'Display Environment Spatial Position' );
     Add( $010A, 'ScreenMinimumGrayscaleBitDepth', [TTypeVR.vrUS], 'Screen Minimum Grayscale Bit Depth' );
     Add( $010C, 'ScreenMinimumColorBitDepth', [TTypeVR.vrUS], 'Screen Minimum Color Bit Depth' );
     Add( $010E, 'ApplicationMaximumRepaintTime', [TTypeVR.vrUS], 'Application Maximum Repaint Time' );
     Add( $0200, 'DisplaySetsSequence', [TTypeVR.vrSQ], 'Display Sets Sequence' );
     Add( $0202, 'DisplaySetNumber', [TTypeVR.vrUS], 'Display Set Number' );
     Add( $0203, 'DisplaySetLabel', [TTypeVR.vrLO], 'Display Set Label' );
     Add( $0204, 'DisplaySetPresentationGroup', [TTypeVR.vrUS], 'Display Set Presentation Group' );
     Add( $0206, 'DisplaySetPresentationGroupDescription', [TTypeVR.vrLO], 'Display Set Presentation Group Description' );
     Add( $0208, 'PartialDataDisplayHandling', [TTypeVR.vrCS], 'Partial Data Display Handling' );
     Add( $0210, 'SynchronizedScrollingSequence', [TTypeVR.vrSQ], 'Synchronized Scrolling Sequence' );
     Add( $0212, 'DisplaySetScrollingGroup', [TTypeVR.vrUS], 'Display Set Scrolling Group' );
     Add( $0214, 'NavigationIndicatorSequence', [TTypeVR.vrSQ], 'Navigation Indicator Sequence' );
     Add( $0216, 'NavigationDisplaySet', [TTypeVR.vrUS], 'Navigation Display Set' );
     Add( $0218, 'ReferenceDisplaySets', [TTypeVR.vrUS], 'Reference Display Sets' );
     Add( $0300, 'ImageBoxesSequence', [TTypeVR.vrSQ], 'Image Boxes Sequence' );
     Add( $0302, 'ImageBoxNumber', [TTypeVR.vrUS], 'Image Box Number' );
     Add( $0304, 'ImageBoxLayoutType', [TTypeVR.vrCS], 'Image Box Layout Type' );
     Add( $0306, 'ImageBoxTileHorizontalDimension', [TTypeVR.vrUS], 'Image Box Tile Horizontal Dimension' );
     Add( $0308, 'ImageBoxTileVerticalDimension', [TTypeVR.vrUS], 'Image Box Tile Vertical Dimension' );
     Add( $0310, 'ImageBoxScrollDirection', [TTypeVR.vrCS], 'Image Box Scroll Direction' );
     Add( $0312, 'ImageBoxSmallScrollType', [TTypeVR.vrCS], 'Image Box Small Scroll Type' );
     Add( $0314, 'ImageBoxSmallScrollAmount', [TTypeVR.vrUS], 'Image Box Small Scroll Amount' );
     Add( $0316, 'ImageBoxLargeScrollType', [TTypeVR.vrCS], 'Image Box Large Scroll Type' );
     Add( $0318, 'ImageBoxLargeScrollAmount', [TTypeVR.vrUS], 'Image Box Large Scroll Amount' );
     Add( $0320, 'ImageBoxOverlapPriority', [TTypeVR.vrUS], 'Image Box Overlap Priority' );
     Add( $0330, 'CineRelativeToRealTime', [TTypeVR.vrFD], 'Cine Relative to Real-Time' );
     Add( $0400, 'FilterOperationsSequence', [TTypeVR.vrSQ], 'Filter Operations Sequence' );
     Add( $0402, 'FilterByCategory', [TTypeVR.vrCS], 'Filter-by Category' );
     Add( $0404, 'FilterByAttributePresence', [TTypeVR.vrCS], 'Filter-by Attribute Presence' );
     Add( $0406, 'FilterByOperator', [TTypeVR.vrCS], 'Filter-by Operator' );
     Add( $0420, 'StructuredDisplayBackgroundCIELabValue', [TTypeVR.vrUS], 'Structured Display Background CIELab Value' );
     Add( $0421, 'EmptyImageBoxCIELabValue', [TTypeVR.vrUS], 'Empty Image Box CIELab Value' );
     Add( $0422, 'StructuredDisplayImageBoxSequence', [TTypeVR.vrSQ], 'Structured Display Image Box Sequence' );
     Add( $0424, 'StructuredDisplayTextBoxSequence', [TTypeVR.vrSQ], 'Structured Display Text Box Sequence' );
     Add( $0427, 'ReferencedFirstFrameSequence', [TTypeVR.vrSQ], 'Referenced First Frame Sequence' );
     Add( $0430, 'ImageBoxSynchronizationSequence', [TTypeVR.vrSQ], 'Image Box Synchronization Sequence' );
     Add( $0432, 'SynchronizedImageBoxList', [TTypeVR.vrUS], 'Synchronized Image Box List' );
     Add( $0434, 'TypeOfSynchronization', [TTypeVR.vrCS], 'Type of Synchronization' );
     Add( $0500, 'BlendingOperationType', [TTypeVR.vrCS], 'Blending Operation Type' );
     Add( $0510, 'ReformattingOperationType', [TTypeVR.vrCS], 'Reformatting Operation Type' );
     Add( $0512, 'ReformattingThickness', [TTypeVR.vrFD], 'Reformatting Thickness' );
     Add( $0514, 'ReformattingInterval', [TTypeVR.vrFD], 'Reformatting Interval' );
     Add( $0516, 'ReformattingOperationInitialViewDirection', [TTypeVR.vrCS], 'Reformatting Operation Initial View Direction' );
     Add( $0520, 'ThreeDRenderingType', [TTypeVR.vrCS], '3D Rendering Type' );
     Add( $0600, 'SortingOperationsSequence', [TTypeVR.vrSQ], 'Sorting Operations Sequence' );
     Add( $0602, 'SortByCategory', [TTypeVR.vrCS], 'Sort-by Category' );
     Add( $0604, 'SortingDirection', [TTypeVR.vrCS], 'Sorting Direction' );
     Add( $0700, 'DisplaySetPatientOrientation', [TTypeVR.vrCS], 'Display Set Patient Orientation' );
     Add( $0702, 'VOIType', [TTypeVR.vrCS], 'VOI Type' );
     Add( $0704, 'PseudoColorType', [TTypeVR.vrCS], 'Pseudo-Color Type' );
     Add( $0705, 'PseudoColorPaletteInstanceReferenceSequence', [TTypeVR.vrSQ], 'Pseudo-Color Palette Instance Reference Sequence' );
     Add( $0706, 'ShowGrayscaleInverted', [TTypeVR.vrCS], 'Show Grayscale Inverted' );
     Add( $0710, 'ShowImageTrueSizeFlag', [TTypeVR.vrCS], 'Show Image True Size Flag' );
     Add( $0712, 'ShowGraphicAnnotationFlag', [TTypeVR.vrCS], 'Show Graphic Annotation Flag' );
     Add( $0714, 'ShowPatientDemographicsFlag', [TTypeVR.vrCS], 'Show Patient Demographics Flag' );
     Add( $0716, 'ShowAcquisitionTechniquesFlag', [TTypeVR.vrCS], 'Show Acquisition Techniques Flag' );
     Add( $0717, 'DisplaySetHorizontalJustification', [TTypeVR.vrCS], 'Display Set Horizontal Justification' );
     Add( $0718, 'DisplaySetVerticalJustification', [TTypeVR.vrCS], 'Display Set Vertical Justification' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
