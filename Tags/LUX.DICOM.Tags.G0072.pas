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
       constructor Create( const Code_:THex4 );
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

constructor TdcmGrup0072.Create( const Code_:THex4 );
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0002, 'HangingProtocolName', [TKindVR.vrSH], 'Hanging Protocol Name' );
     Add( $0004, 'HangingProtocolDescription', [TKindVR.vrLO], 'Hanging Protocol Description' );
     Add( $0006, 'HangingProtocolLevel', [TKindVR.vrCS], 'Hanging Protocol Level' );
     Add( $0008, 'HangingProtocolCreator', [TKindVR.vrLO], 'Hanging Protocol Creator' );
     Add( $000A, 'HangingProtocolCreationDateTime', [TKindVR.vrDT], 'Hanging Protocol Creation DateTime' );
     Add( $000C, 'HangingProtocolDefinitionSequence', [TKindVR.vrSQ], 'Hanging Protocol Definition Sequence' );
     Add( $000E, 'HangingProtocolUserIdentificationCodeSequence', [TKindVR.vrSQ], 'Hanging Protocol User Identification Code Sequence' );
     Add( $0010, 'HangingProtocolUserGroupName', [TKindVR.vrLO], 'Hanging Protocol User Group Name' );
     Add( $0012, 'SourceHangingProtocolSequence', [TKindVR.vrSQ], 'Source Hanging Protocol Sequence' );
     Add( $0014, 'NumberOfPriorsReferenced', [TKindVR.vrUS], 'Number of Priors Referenced' );
     Add( $0020, 'ImageSetsSequence', [TKindVR.vrSQ], 'Image Sets Sequence' );
     Add( $0022, 'ImageSetSelectorSequence', [TKindVR.vrSQ], 'Image Set Selector Sequence' );
     Add( $0024, 'ImageSetSelectorUsageFlag', [TKindVR.vrCS], 'Image Set Selector Usage Flag' );
     Add( $0026, 'SelectorAttribute', [TKindVR.vrAT], 'Selector Attribute' );
     Add( $0028, 'SelectorValueNumber', [TKindVR.vrUS], 'Selector Value Number' );
     Add( $0030, 'TimeBasedImageSetsSequence', [TKindVR.vrSQ], 'Time Based Image Sets Sequence' );
     Add( $0032, 'ImageSetNumber', [TKindVR.vrUS], 'Image Set Number' );
     Add( $0034, 'ImageSetSelectorCategory', [TKindVR.vrCS], 'Image Set Selector Category' );
     Add( $0038, 'RelativeTime', [TKindVR.vrUS], 'Relative Time' );
     Add( $003A, 'RelativeTimeUnits', [TKindVR.vrCS], 'Relative Time Units' );
     Add( $003C, 'AbstractPriorValue', [TKindVR.vrSS], 'Abstract Prior Value' );
     Add( $003E, 'AbstractPriorCodeSequence', [TKindVR.vrSQ], 'Abstract Prior Code Sequence' );
     Add( $0040, 'ImageSetLabel', [TKindVR.vrLO], 'Image Set Label' );
     Add( $0050, 'SelectorAttributeVR', [TKindVR.vrCS], 'Selector Attribute VR' );
     Add( $0052, 'SelectorSequencePointer', [TKindVR.vrAT], 'Selector Sequence Pointer' );
     Add( $0054, 'SelectorSequencePointerPrivateCreator', [TKindVR.vrLO], 'Selector Sequence Pointer Private Creator' );
     Add( $0056, 'SelectorAttributePrivateCreator', [TKindVR.vrLO], 'Selector Attribute Private Creator' );
     Add( $005E, 'SelectorAEValue', [TKindVR.vrAE], 'Selector AE Value' );
     Add( $005F, 'SelectorASValue', [TKindVR.vrAS], 'Selector AS Value' );
     Add( $0060, 'SelectorATValue', [TKindVR.vrAT], 'Selector AT Value' );
     Add( $0061, 'SelectorDAValue', [TKindVR.vrDA], 'Selector DA Value' );
     Add( $0062, 'SelectorCSValue', [TKindVR.vrCS], 'Selector CS Value' );
     Add( $0063, 'SelectorDTValue', [TKindVR.vrDT], 'Selector DT Value' );
     Add( $0064, 'SelectorISValue', [TKindVR.vrIS], 'Selector IS Value' );
     Add( $0065, 'SelectorOBValue', [TKindVR.vrOB], 'Selector OB Value' );
     Add( $0066, 'SelectorLOValue', [TKindVR.vrLO], 'Selector LO Value' );
     Add( $0067, 'SelectorOFValue', [TKindVR.vrOF], 'Selector OF Value' );
     Add( $0068, 'SelectorLTValue', [TKindVR.vrLT], 'Selector LT Value' );
     Add( $0069, 'SelectorOWValue', [TKindVR.vrOW], 'Selector OW Value' );
     Add( $006A, 'SelectorPNValue', [TKindVR.vrPN], 'Selector PN Value' );
     Add( $006B, 'SelectorTMValue', [TKindVR.vrTM], 'Selector TM Value' );
     Add( $006C, 'SelectorSHValue', [TKindVR.vrSH], 'Selector SH Value' );
     Add( $006D, 'SelectorUNValue', [TKindVR.vrUN], 'Selector UN Value' );
     Add( $006E, 'SelectorSTValue', [TKindVR.vrST], 'Selector ST Value' );
     Add( $006F, 'SelectorUCValue', [TKindVR.vrUC], 'Selector UC Value' );
     Add( $0070, 'SelectorUTValue', [TKindVR.vrUT], 'Selector UT Value' );
     Add( $0071, 'SelectorURValue', [TKindVR.vrUR], 'Selector UR Value' );
     Add( $0072, 'SelectorDSValue', [TKindVR.vrDS], 'Selector DS Value' );
     Add( $0073, 'SelectorODValue', [TKindVR.vrOD], 'Selector OD Value' );
     Add( $0074, 'SelectorFDValue', [TKindVR.vrFD], 'Selector FD Value' );
     Add( $0075, 'SelectorOLValue', [TKindVR.vrOL], 'Selector OL Value' );
     Add( $0076, 'SelectorFLValue', [TKindVR.vrFL], 'Selector FL Value' );
     Add( $0078, 'SelectorULValue', [TKindVR.vrUL], 'Selector UL Value' );
     Add( $007A, 'SelectorUSValue', [TKindVR.vrUS], 'Selector US Value' );
     Add( $007C, 'SelectorSLValue', [TKindVR.vrSL], 'Selector SL Value' );
     Add( $007E, 'SelectorSSValue', [TKindVR.vrSS], 'Selector SS Value' );
     Add( $007F, 'SelectorUIValue', [TKindVR.vrUI], 'Selector UI Value' );
     Add( $0080, 'SelectorCodeSequenceValue', [TKindVR.vrSQ], 'Selector Code Sequence Value' );
     Add( $0100, 'NumberOfScreens', [TKindVR.vrUS], 'Number of Screens' );
     Add( $0102, 'NominalScreenDefinitionSequence', [TKindVR.vrSQ], 'Nominal Screen Definition Sequence' );
     Add( $0104, 'NumberOfVerticalPixels', [TKindVR.vrUS], 'Number of Vertical Pixels' );
     Add( $0106, 'NumberOfHorizontalPixels', [TKindVR.vrUS], 'Number of Horizontal Pixels' );
     Add( $0108, 'DisplayEnvironmentSpatialPosition', [TKindVR.vrFD], 'Display Environment Spatial Position' );
     Add( $010A, 'ScreenMinimumGrayscaleBitDepth', [TKindVR.vrUS], 'Screen Minimum Grayscale Bit Depth' );
     Add( $010C, 'ScreenMinimumColorBitDepth', [TKindVR.vrUS], 'Screen Minimum Color Bit Depth' );
     Add( $010E, 'ApplicationMaximumRepaintTime', [TKindVR.vrUS], 'Application Maximum Repaint Time' );
     Add( $0200, 'DisplaySetsSequence', [TKindVR.vrSQ], 'Display Sets Sequence' );
     Add( $0202, 'DisplaySetNumber', [TKindVR.vrUS], 'Display Set Number' );
     Add( $0203, 'DisplaySetLabel', [TKindVR.vrLO], 'Display Set Label' );
     Add( $0204, 'DisplaySetPresentationGroup', [TKindVR.vrUS], 'Display Set Presentation Group' );
     Add( $0206, 'DisplaySetPresentationGroupDescription', [TKindVR.vrLO], 'Display Set Presentation Group Description' );
     Add( $0208, 'PartialDataDisplayHandling', [TKindVR.vrCS], 'Partial Data Display Handling' );
     Add( $0210, 'SynchronizedScrollingSequence', [TKindVR.vrSQ], 'Synchronized Scrolling Sequence' );
     Add( $0212, 'DisplaySetScrollingGroup', [TKindVR.vrUS], 'Display Set Scrolling Group' );
     Add( $0214, 'NavigationIndicatorSequence', [TKindVR.vrSQ], 'Navigation Indicator Sequence' );
     Add( $0216, 'NavigationDisplaySet', [TKindVR.vrUS], 'Navigation Display Set' );
     Add( $0218, 'ReferenceDisplaySets', [TKindVR.vrUS], 'Reference Display Sets' );
     Add( $0300, 'ImageBoxesSequence', [TKindVR.vrSQ], 'Image Boxes Sequence' );
     Add( $0302, 'ImageBoxNumber', [TKindVR.vrUS], 'Image Box Number' );
     Add( $0304, 'ImageBoxLayoutType', [TKindVR.vrCS], 'Image Box Layout Type' );
     Add( $0306, 'ImageBoxTileHorizontalDimension', [TKindVR.vrUS], 'Image Box Tile Horizontal Dimension' );
     Add( $0308, 'ImageBoxTileVerticalDimension', [TKindVR.vrUS], 'Image Box Tile Vertical Dimension' );
     Add( $0310, 'ImageBoxScrollDirection', [TKindVR.vrCS], 'Image Box Scroll Direction' );
     Add( $0312, 'ImageBoxSmallScrollType', [TKindVR.vrCS], 'Image Box Small Scroll Type' );
     Add( $0314, 'ImageBoxSmallScrollAmount', [TKindVR.vrUS], 'Image Box Small Scroll Amount' );
     Add( $0316, 'ImageBoxLargeScrollType', [TKindVR.vrCS], 'Image Box Large Scroll Type' );
     Add( $0318, 'ImageBoxLargeScrollAmount', [TKindVR.vrUS], 'Image Box Large Scroll Amount' );
     Add( $0320, 'ImageBoxOverlapPriority', [TKindVR.vrUS], 'Image Box Overlap Priority' );
     Add( $0330, 'CineRelativeToRealTime', [TKindVR.vrFD], 'Cine Relative to Real-Time' );
     Add( $0400, 'FilterOperationsSequence', [TKindVR.vrSQ], 'Filter Operations Sequence' );
     Add( $0402, 'FilterByCategory', [TKindVR.vrCS], 'Filter-by Category' );
     Add( $0404, 'FilterByAttributePresence', [TKindVR.vrCS], 'Filter-by Attribute Presence' );
     Add( $0406, 'FilterByOperator', [TKindVR.vrCS], 'Filter-by Operator' );
     Add( $0420, 'StructuredDisplayBackgroundCIELabValue', [TKindVR.vrUS], 'Structured Display Background CIELab Value' );
     Add( $0421, 'EmptyImageBoxCIELabValue', [TKindVR.vrUS], 'Empty Image Box CIELab Value' );
     Add( $0422, 'StructuredDisplayImageBoxSequence', [TKindVR.vrSQ], 'Structured Display Image Box Sequence' );
     Add( $0424, 'StructuredDisplayTextBoxSequence', [TKindVR.vrSQ], 'Structured Display Text Box Sequence' );
     Add( $0427, 'ReferencedFirstFrameSequence', [TKindVR.vrSQ], 'Referenced First Frame Sequence' );
     Add( $0430, 'ImageBoxSynchronizationSequence', [TKindVR.vrSQ], 'Image Box Synchronization Sequence' );
     Add( $0432, 'SynchronizedImageBoxList', [TKindVR.vrUS], 'Synchronized Image Box List' );
     Add( $0434, 'TypeOfSynchronization', [TKindVR.vrCS], 'Type of Synchronization' );
     Add( $0500, 'BlendingOperationType', [TKindVR.vrCS], 'Blending Operation Type' );
     Add( $0510, 'ReformattingOperationType', [TKindVR.vrCS], 'Reformatting Operation Type' );
     Add( $0512, 'ReformattingThickness', [TKindVR.vrFD], 'Reformatting Thickness' );
     Add( $0514, 'ReformattingInterval', [TKindVR.vrFD], 'Reformatting Interval' );
     Add( $0516, 'ReformattingOperationInitialViewDirection', [TKindVR.vrCS], 'Reformatting Operation Initial View Direction' );
     Add( $0520, 'ThreeDRenderingType', [TKindVR.vrCS], '3D Rendering Type' );
     Add( $0600, 'SortingOperationsSequence', [TKindVR.vrSQ], 'Sorting Operations Sequence' );
     Add( $0602, 'SortByCategory', [TKindVR.vrCS], 'Sort-by Category' );
     Add( $0604, 'SortingDirection', [TKindVR.vrCS], 'Sorting Direction' );
     Add( $0700, 'DisplaySetPatientOrientation', [TKindVR.vrCS], 'Display Set Patient Orientation' );
     Add( $0702, 'VOIType', [TKindVR.vrCS], 'VOI Type' );
     Add( $0704, 'PseudoColorType', [TKindVR.vrCS], 'Pseudo-Color Type' );
     Add( $0705, 'PseudoColorPaletteInstanceReferenceSequence', [TKindVR.vrSQ], 'Pseudo-Color Palette Instance Reference Sequence' );
     Add( $0706, 'ShowGrayscaleInverted', [TKindVR.vrCS], 'Show Grayscale Inverted' );
     Add( $0710, 'ShowImageTrueSizeFlag', [TKindVR.vrCS], 'Show Image True Size Flag' );
     Add( $0712, 'ShowGraphicAnnotationFlag', [TKindVR.vrCS], 'Show Graphic Annotation Flag' );
     Add( $0714, 'ShowPatientDemographicsFlag', [TKindVR.vrCS], 'Show Patient Demographics Flag' );
     Add( $0716, 'ShowAcquisitionTechniquesFlag', [TKindVR.vrCS], 'Show Acquisition Techniques Flag' );
     Add( $0717, 'DisplaySetHorizontalJustification', [TKindVR.vrCS], 'Display Set Horizontal Justification' );
     Add( $0718, 'DisplaySetVerticalJustification', [TKindVR.vrCS], 'Display Set Vertical Justification' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
