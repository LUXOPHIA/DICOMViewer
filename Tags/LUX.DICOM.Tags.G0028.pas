unit LUX.DICOM.Tags.G0028;

interface //#################################################################### ■

uses LUX, LUX.DICOM.VRs, LUX.DICOM.Tags;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0028

     TdcmGrup0028 = class( TdcmGrup )
     private
     protected
     public
       class procedure AddBook( const Book_:TdcmBookTag );
       constructor Create( const Book_:TdcmBookTag; const Code_:THex4 );
     end;

//const //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【定数】

//var //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【変数】

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

implementation //############################################################### ■

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0028

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

class procedure TdcmGrup0028.AddBook( const Book_:TdcmBookTag );
begin
     Create( Book_, $0028 );
end;

//------------------------------------------------------------------------------

constructor TdcmGrup0028.Create( const Book_:TdcmBookTag; const Code_:THex4 );
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0002, 'SamplesPerPixel', [TKindVR.vrUS], 'Samples per Pixel' );
     Add( $0003, 'SamplesPerPixelUsed', [TKindVR.vrUS], 'Samples per Pixel Used' );
     Add( $0004, 'PhotometricInterpretation', [TKindVR.vrCS], 'Photometric Interpretation' );
     Add( $0005, 'ImageDimensions', [TKindVR.vrUS], 'Image Dimensions' );
     Add( $0006, 'PlanarConfiguration', [TKindVR.vrUS], 'Planar Configuration' );
     Add( $0008, 'NumberOfFrames', [TKindVR.vrIS], 'Number of Frames' );
     Add( $0009, 'FrameIncrementPointer', [TKindVR.vrAT], 'Frame Increment Pointer' );
     Add( $000A, 'FrameDimensionPointer', [TKindVR.vrAT], 'Frame Dimension Pointer' );
     Add( $0010, 'Rows', [TKindVR.vrUS], 'Rows' );
     Add( $0011, 'Columns', [TKindVR.vrUS], 'Columns' );
     Add( $0012, 'Planes', [TKindVR.vrUS], 'Planes' );
     Add( $0014, 'UltrasoundColorDataPresent', [TKindVR.vrUS], 'Ultrasound Color Data Present' );
     Add( $0020, '', [], '' );  //For some Data Elements, no Name or Keyword or VR or VM is specified; these are "placeholders" that are not assigned but will not be reused.
     Add( $0030, 'PixelSpacing', [TKindVR.vrDS], 'Pixel Spacing' );
     Add( $0031, 'ZoomFactor', [TKindVR.vrDS], 'Zoom Factor' );
     Add( $0032, 'ZoomCenter', [TKindVR.vrDS], 'Zoom Center' );
     Add( $0034, 'PixelAspectRatio', [TKindVR.vrIS], 'Pixel Aspect Ratio' );
     Add( $0040, 'ImageFormat', [TKindVR.vrCS], 'Image Format' );
     Add( $0050, 'ManipulatedImage', [TKindVR.vrLO], 'Manipulated Image' );
     Add( $0051, 'CorrectedImage', [TKindVR.vrCS], 'Corrected Image' );
     Add( $005F, 'CompressionRecognitionCode', [TKindVR.vrLO], 'Compression Recognition Code' );
     Add( $0060, 'CompressionCode', [TKindVR.vrCS], 'Compression Code' );
     Add( $0061, 'CompressionOriginator', [TKindVR.vrSH], 'Compression Originator' );
     Add( $0062, 'CompressionLabel', [TKindVR.vrLO], 'Compression Label' );
     Add( $0063, 'CompressionDescription', [TKindVR.vrSH], 'Compression Description' );
     Add( $0065, 'CompressionSequence', [TKindVR.vrCS], 'Compression Sequence' );
     Add( $0066, 'CompressionStepPointers', [TKindVR.vrAT], 'Compression Step Pointers' );
     Add( $0068, 'RepeatInterval', [TKindVR.vrUS], 'Repeat Interval' );
     Add( $0069, 'BitsGrouped', [TKindVR.vrUS], 'Bits Grouped' );
     Add( $0070, 'PerimeterTable', [TKindVR.vrUS], 'Perimeter Table' );
     Add( $0071, 'PerimeterValue', [TKindVR.vrUS,TKindVR.vrSS], 'Perimeter Value' );
     Add( $0080, 'PredictorRows', [TKindVR.vrUS], 'Predictor Rows' );
     Add( $0081, 'PredictorColumns', [TKindVR.vrUS], 'Predictor Columns' );
     Add( $0082, 'PredictorConstants', [TKindVR.vrUS], 'Predictor Constants' );
     Add( $0090, 'BlockedPixels', [TKindVR.vrCS], 'Blocked Pixels' );
     Add( $0091, 'BlockRows', [TKindVR.vrUS], 'Block Rows' );
     Add( $0092, 'BlockColumns', [TKindVR.vrUS], 'Block Columns' );
     Add( $0093, 'RowOverlap', [TKindVR.vrUS], 'Row Overlap' );
     Add( $0094, 'ColumnOverlap', [TKindVR.vrUS], 'Column Overlap' );
     Add( $0100, 'BitsAllocated', [TKindVR.vrUS], 'Bits Allocated' );
     Add( $0101, 'BitsStored', [TKindVR.vrUS], 'Bits Stored' );
     Add( $0102, 'HighBit', [TKindVR.vrUS], 'High Bit' );
     Add( $0103, 'PixelRepresentation', [TKindVR.vrUS], 'Pixel Representation' );
     Add( $0104, 'SmallestValidPixelValue', [TKindVR.vrUS,TKindVR.vrSS], 'Smallest Valid Pixel Value' );
     Add( $0105, 'LargestValidPixelValue', [TKindVR.vrUS,TKindVR.vrSS], 'Largest Valid Pixel Value' );
     Add( $0106, 'SmallestImagePixelValue', [TKindVR.vrUS,TKindVR.vrSS], 'Smallest Image Pixel Value' );
     Add( $0107, 'LargestImagePixelValue', [TKindVR.vrUS,TKindVR.vrSS], 'Largest Image Pixel Value' );
     Add( $0108, 'SmallestPixelValueInSeries', [TKindVR.vrUS,TKindVR.vrSS], 'Smallest Pixel Value in Series' );
     Add( $0109, 'LargestPixelValueInSeries', [TKindVR.vrUS,TKindVR.vrSS], 'Largest Pixel Value in Series' );
     Add( $0110, 'SmallestImagePixelValueInPlane', [TKindVR.vrUS,TKindVR.vrSS], 'Smallest Image Pixel Value in Plane' );
     Add( $0111, 'LargestImagePixelValueInPlane', [TKindVR.vrUS,TKindVR.vrSS], 'Largest Image Pixel Value in Plane' );
     Add( $0120, 'PixelPaddingValue', [TKindVR.vrUS,TKindVR.vrSS], 'Pixel Padding Value' );
     Add( $0121, 'PixelPaddingRangeLimit', [TKindVR.vrUS,TKindVR.vrSS], 'Pixel Padding Range Limit' );
     Add( $0122, 'FloatPixelPaddingValue', [TKindVR.vrFL], 'Float Pixel Padding Value' );
     Add( $0123, 'DoubleFloatPixelPaddingValue', [TKindVR.vrFD], 'Double Float Pixel Padding Value' );
     Add( $0124, 'FloatPixelPaddingRangeLimit', [TKindVR.vrFL], 'Float Pixel Padding Range Limit' );
     Add( $0125, 'DoubleFloatPixelPaddingRangeLimit', [TKindVR.vrFD], 'Double Float Pixel Padding Range Limit' );
     Add( $0200, 'ImageLocation', [TKindVR.vrUS], 'Image Location' );
     Add( $0300, 'QualityControlImage', [TKindVR.vrCS], 'Quality Control Image' );
     Add( $0301, 'BurnedInAnnotation', [TKindVR.vrCS], 'Burned In Annotation' );
     Add( $0302, 'RecognizableVisualFeatures', [TKindVR.vrCS], 'Recognizable Visual Features' );
     Add( $0303, 'LongitudinalTemporalInformationModified', [TKindVR.vrCS], 'Longitudinal Temporal Information Modified' );
     Add( $0304, 'ReferencedColorPaletteInstanceUID', [TKindVR.vrUI], 'Referenced Color Palette Instance UID' );
     Add( $0400, 'TransformLabel', [TKindVR.vrLO], 'Transform Label' );
     Add( $0401, 'TransformVersionNumber', [TKindVR.vrLO], 'Transform Version Number' );
     Add( $0402, 'NumberOfTransformSteps', [TKindVR.vrUS], 'Number of Transform Steps' );
     Add( $0403, 'SequenceOfCompressedData', [TKindVR.vrLO], 'Sequence of Compressed Data' );
     Add( $0404, 'DetailsOfCoefficients', [TKindVR.vrAT], 'Details of Coefficients' );
   //Add( $04x0, 'RowsForNthOrderCoefficients', [TKindVR.vrUS], 'Rows For Nth Order Coefficients' );
   //Add( $04x1, 'ColumnsForNthOrderCoefficients', [TKindVR.vrUS], 'Columns For Nth Order Coefficients' );
   //Add( $04x2, 'CoefficientCoding', [TKindVR.vrLO], 'Coefficient Coding' );
   //Add( $04x3, 'CoefficientCodingPointers', [TKindVR.vrAT], 'Coefficient Coding Pointers' );
     Add( $0700, 'DCTLabel', [TKindVR.vrLO], 'DCT Label' );
     Add( $0701, 'DataBlockDescription', [TKindVR.vrCS], 'Data Block Description' );
     Add( $0702, 'DataBlock', [TKindVR.vrAT], 'Data Block' );
     Add( $0710, 'NormalizationFactorFormat', [TKindVR.vrUS], 'Normalization Factor Format' );
     Add( $0720, 'ZonalMapNumberFormat', [TKindVR.vrUS], 'Zonal Map Number Format' );
     Add( $0721, 'ZonalMapLocation', [TKindVR.vrAT], 'Zonal Map Location' );
     Add( $0722, 'ZonalMapFormat', [TKindVR.vrUS], 'Zonal Map Format' );
     Add( $0730, 'AdaptiveMapFormat', [TKindVR.vrUS], 'Adaptive Map Format' );
     Add( $0740, 'CodeNumberFormat', [TKindVR.vrUS], 'Code Number Format' );
   //Add( $08x0, 'CodeLabel', [TKindVR.vrCS], 'Code Label' );
   //Add( $08x2, 'NumberOfTables', [TKindVR.vrUS], 'Number of Tables' );
   //Add( $08x3, 'CodeTableLocation', [TKindVR.vrAT], 'Code Table Location' );
   //Add( $08x4, 'BitsForCodeWord', [TKindVR.vrUS], 'Bits For Code Word' );
   //Add( $08x8, 'ImageDataLocation', [TKindVR.vrAT], 'Image Data Location' );
     Add( $0A02, 'PixelSpacingCalibrationType', [TKindVR.vrCS], 'Pixel Spacing Calibration Type' );
     Add( $0A04, 'PixelSpacingCalibrationDescription', [TKindVR.vrLO], 'Pixel Spacing Calibration Description' );
     Add( $1040, 'PixelIntensityRelationship', [TKindVR.vrCS], 'Pixel Intensity Relationship' );
     Add( $1041, 'PixelIntensityRelationshipSign', [TKindVR.vrSS], 'Pixel Intensity Relationship Sign' );
     Add( $1050, 'WindowCenter', [TKindVR.vrDS], 'Window Center' );
     Add( $1051, 'WindowWidth', [TKindVR.vrDS], 'Window Width' );
     Add( $1052, 'RescaleIntercept', [TKindVR.vrDS], 'Rescale Intercept' );
     Add( $1053, 'RescaleSlope', [TKindVR.vrDS], 'Rescale Slope' );
     Add( $1054, 'RescaleType', [TKindVR.vrLO], 'Rescale Type' );
     Add( $1055, 'WindowCenterWidthExplanation', [TKindVR.vrLO], 'Window Center & Width Explanation' );
     Add( $1056, 'VOILUTFunction', [TKindVR.vrCS], 'VOI LUT Function' );
     Add( $1080, 'GrayScale', [TKindVR.vrCS], 'Gray Scale' );
     Add( $1090, 'RecommendedViewingMode', [TKindVR.vrCS], 'Recommended Viewing Mode' );
     Add( $1100, 'GrayLookupTableDescriptor', [TKindVR.vrUS,TKindVR.vrSS], 'Gray Lookup Table Descriptor' );
     Add( $1101, 'RedPaletteColorLookupTableDescriptor', [TKindVR.vrUS,TKindVR.vrSS], 'Red Palette Color Lookup Table Descriptor' );
     Add( $1102, 'GreenPaletteColorLookupTableDescriptor', [TKindVR.vrUS,TKindVR.vrSS], 'Green Palette Color Lookup Table Descriptor' );
     Add( $1103, 'BluePaletteColorLookupTableDescriptor', [TKindVR.vrUS,TKindVR.vrSS], 'Blue Palette Color Lookup Table Descriptor' );
     Add( $1104, 'AlphaPaletteColorLookupTableDescriptor', [TKindVR.vrUS], 'Alpha Palette Color Lookup Table Descriptor' );
     Add( $1111, 'LargeRedPaletteColorLookupTableDescriptor', [TKindVR.vrUS,TKindVR.vrSS], 'Large Red Palette Color Lookup Table Descriptor' );
     Add( $1112, 'LargeGreenPaletteColorLookupTableDescriptor', [TKindVR.vrUS,TKindVR.vrSS], 'Large Green Palette Color Lookup Table Descriptor' );
     Add( $1113, 'LargeBluePaletteColorLookupTableDescriptor', [TKindVR.vrUS,TKindVR.vrSS], 'Large Blue Palette Color Lookup Table Descriptor' );
     Add( $1199, 'PaletteColorLookupTableUID', [TKindVR.vrUI], 'Palette Color Lookup Table UID' );
     Add( $1200, 'GrayLookupTableData', [TKindVR.vrUS,TKindVR.vrSS,TKindVR.vrOW], 'Gray Lookup Table Data' );
     Add( $1201, 'RedPaletteColorLookupTableData', [TKindVR.vrOW], 'Red Palette Color Lookup Table Data' );
     Add( $1202, 'GreenPaletteColorLookupTableData', [TKindVR.vrOW], 'Green Palette Color Lookup Table Data' );
     Add( $1203, 'BluePaletteColorLookupTableData', [TKindVR.vrOW], 'Blue Palette Color Lookup Table Data' );
     Add( $1204, 'AlphaPaletteColorLookupTableData', [TKindVR.vrOW], 'Alpha Palette Color Lookup Table Data' );
     Add( $1211, 'LargeRedPaletteColorLookupTableData', [TKindVR.vrOW], 'Large Red Palette Color Lookup Table Data' );
     Add( $1212, 'LargeGreenPaletteColorLookupTableData', [TKindVR.vrOW], 'Large Green Palette Color Lookup Table Data' );
     Add( $1213, 'LargeBluePaletteColorLookupTableData', [TKindVR.vrOW], 'Large Blue Palette Color Lookup Table Data' );
     Add( $1214, 'LargePaletteColorLookupTableUID', [TKindVR.vrUI], 'Large Palette Color Lookup Table UID' );
     Add( $1221, 'SegmentedRedPaletteColorLookupTableData', [TKindVR.vrOW], 'Segmented Red Palette Color Lookup Table Data' );
     Add( $1222, 'SegmentedGreenPaletteColorLookupTableData', [TKindVR.vrOW], 'Segmented Green Palette Color Lookup Table Data' );
     Add( $1223, 'SegmentedBluePaletteColorLookupTableData', [TKindVR.vrOW], 'Segmented Blue Palette Color Lookup Table Data' );
     Add( $1224, 'SegmentedAlphaPaletteColorLookupTableData', [TKindVR.vrOW], 'Segmented Alpha Palette Color Lookup Table Data' );
     Add( $1230, 'StoredValueColorRangeSequence', [TKindVR.vrSQ], 'Stored Value Color Range Sequence' );
     Add( $1231, 'MinimumStoredValueMapped', [TKindVR.vrFD], 'Minimum Stored Value Mapped' );
     Add( $1232, 'MaximumStoredValueMapped', [TKindVR.vrFD], 'Maximum Stored Value Mapped' );
     Add( $1300, 'BreastImplantPresent', [TKindVR.vrCS], 'Breast Implant Present' );
     Add( $1350, 'PartialView', [TKindVR.vrCS], 'Partial View' );
     Add( $1351, 'PartialViewDescription', [TKindVR.vrST], 'Partial View Description' );
     Add( $1352, 'PartialViewCodeSequence', [TKindVR.vrSQ], 'Partial View Code Sequence' );
     Add( $135A, 'SpatialLocationsPreserved', [TKindVR.vrCS], 'Spatial Locations Preserved' );
     Add( $1401, 'DataFrameAssignmentSequence', [TKindVR.vrSQ], 'Data Frame Assignment Sequence' );
     Add( $1402, 'DataPathAssignment', [TKindVR.vrCS], 'Data Path Assignment' );
     Add( $1403, 'BitsMappedToColorLookupTable', [TKindVR.vrUS], 'Bits Mapped to Color Lookup Table' );
     Add( $1404, 'BlendingLUT1Sequence', [TKindVR.vrSQ], 'Blending LUT 1 Sequence' );
     Add( $1405, 'BlendingLUT1TransferFunction', [TKindVR.vrCS], 'Blending LUT 1 Transfer Function' );
     Add( $1406, 'BlendingWeightConstant', [TKindVR.vrFD], 'Blending Weight Constant' );
     Add( $1407, 'BlendingLookupTableDescriptor', [TKindVR.vrUS], 'Blending Lookup Table Descriptor' );
     Add( $1408, 'BlendingLookupTableData', [TKindVR.vrOW], 'Blending Lookup Table Data' );
     Add( $140B, 'EnhancedPaletteColorLookupTableSequence', [TKindVR.vrSQ], 'Enhanced Palette Color Lookup Table Sequence' );
     Add( $140C, 'BlendingLUT2Sequence', [TKindVR.vrSQ], 'Blending LUT 2 Sequence' );
     Add( $140D, 'BlendingLUT2TransferFunction', [TKindVR.vrCS], 'Blending LUT 2 Transfer Function' );
     Add( $140E, 'DataPathID', [TKindVR.vrCS], 'Data Path ID' );
     Add( $140F, 'RGBLUTTransferFunction', [TKindVR.vrCS], 'RGB LUT Transfer Function' );
     Add( $1410, 'AlphaLUTTransferFunction', [TKindVR.vrCS], 'Alpha LUT Transfer Function' );
     Add( $2000, 'ICCProfile', [TKindVR.vrOB], 'ICC Profile' );
     Add( $2002, 'ColorSpace', [TKindVR.vrCS], 'Color Space' );
     Add( $2110, 'LossyImageCompression', [TKindVR.vrCS], 'Lossy Image Compression' );
     Add( $2112, 'LossyImageCompressionRatio', [TKindVR.vrDS], 'Lossy Image Compression Ratio' );
     Add( $2114, 'LossyImageCompressionMethod', [TKindVR.vrCS], 'Lossy Image Compression Method' );
     Add( $3000, 'ModalityLUTSequence', [TKindVR.vrSQ], 'Modality LUT Sequence' );
     Add( $3002, 'LUTDescriptor', [TKindVR.vrUS,TKindVR.vrSS], 'LUT Descriptor' );
     Add( $3003, 'LUTExplanation', [TKindVR.vrLO], 'LUT Explanation' );
     Add( $3004, 'ModalityLUTType', [TKindVR.vrLO], 'Modality LUT Type' );
     Add( $3006, 'LUTData', [TKindVR.vrUS,TKindVR.vrOW], 'LUT Data' );
     Add( $3010, 'VOILUTSequence', [TKindVR.vrSQ], 'VOI LUT Sequence' );
     Add( $3110, 'SoftcopyVOILUTSequence', [TKindVR.vrSQ], 'Softcopy VOI LUT Sequence' );
     Add( $4000, 'ImagePresentationComments', [TKindVR.vrLT], 'Image Presentation Comments' );
     Add( $5000, 'BiPlaneAcquisitionSequence', [TKindVR.vrSQ], 'Bi-Plane Acquisition Sequence' );
     Add( $6010, 'RepresentativeFrameNumber', [TKindVR.vrUS], 'Representative Frame Number' );
     Add( $6020, 'FrameNumbersOfInterest', [TKindVR.vrUS], 'Frame Numbers of Interest (FOI)' );
     Add( $6022, 'FrameOfInterestDescription', [TKindVR.vrLO], 'Frame of Interest Description' );
     Add( $6023, 'FrameOfInterestType', [TKindVR.vrCS], 'Frame of Interest Type' );
     Add( $6030, 'MaskPointers', [TKindVR.vrUS], 'Mask Pointer(s)' );
     Add( $6040, 'RWavePointer', [TKindVR.vrUS], 'R Wave Pointer' );
     Add( $6100, 'MaskSubtractionSequence', [TKindVR.vrSQ], 'Mask Subtraction Sequence' );
     Add( $6101, 'MaskOperation', [TKindVR.vrCS], 'Mask Operation' );
     Add( $6102, 'ApplicableFrameRange', [TKindVR.vrUS], 'Applicable Frame Range' );
     Add( $6110, 'MaskFrameNumbers', [TKindVR.vrUS], 'Mask Frame Numbers' );
     Add( $6112, 'ContrastFrameAveraging', [TKindVR.vrUS], 'Contrast Frame Averaging' );
     Add( $6114, 'MaskSubPixelShift', [TKindVR.vrFL], 'Mask Sub-pixel Shift' );
     Add( $6120, 'TIDOffset', [TKindVR.vrSS], 'TID Offset' );
     Add( $6190, 'MaskOperationExplanation', [TKindVR.vrST], 'Mask Operation Explanation' );
     Add( $7000, 'EquipmentAdministratorSequence', [TKindVR.vrSQ], 'Equipment Administrator Sequence' );
     Add( $7001, 'NumberOfDisplaySubsystems', [TKindVR.vrUS], 'Number of Display Subsystems' );
     Add( $7002, 'CurrentConfigurationID', [TKindVR.vrUS], 'Current Configuration ID' );
     Add( $7003, 'DisplaySubsystemID', [TKindVR.vrUS], 'Display Subsystem ID' );
     Add( $7004, 'DisplaySubsystemName', [TKindVR.vrSH], 'Display Subsystem Name' );
     Add( $7005, 'DisplaySubsystemDescription', [TKindVR.vrLO], 'Display Subsystem Description' );
     Add( $7006, 'SystemStatus', [TKindVR.vrCS], 'System Status' );
     Add( $7007, 'SystemStatusComment', [TKindVR.vrLO], 'System Status Comment' );
     Add( $7008, 'TargetLuminanceCharacteristicsSequence', [TKindVR.vrSQ], 'Target Luminance Characteristics Sequence' );
     Add( $7009, 'LuminanceCharacteristicsID', [TKindVR.vrUS], 'Luminance Characteristics ID' );
     Add( $700A, 'DisplaySubsystemConfigurationSequence', [TKindVR.vrSQ], 'Display Subsystem Configuration Sequence' );
     Add( $700B, 'ConfigurationID', [TKindVR.vrUS], 'Configuration ID' );
     Add( $700C, 'ConfigurationName', [TKindVR.vrSH], 'Configuration Name' );
     Add( $700D, 'ConfigurationDescription', [TKindVR.vrLO], 'Configuration Description' );
     Add( $700E, 'ReferencedTargetLuminanceCharacteristicsID', [TKindVR.vrUS], 'Referenced Target Luminance Characteristics ID' );
     Add( $700F, 'QAResultsSequence', [TKindVR.vrSQ], 'QA Results Sequence' );
     Add( $7010, 'DisplaySubsystemQAResultsSequence', [TKindVR.vrSQ], 'Display Subsystem QA Results Sequence' );
     Add( $7011, 'ConfigurationQAResultsSequence', [TKindVR.vrSQ], 'Configuration QA Results Sequence' );
     Add( $7012, 'MeasurementEquipmentSequence', [TKindVR.vrSQ], 'Measurement Equipment Sequence' );
     Add( $7013, 'MeasurementFunctions', [TKindVR.vrCS], 'Measurement Functions' );
     Add( $7014, 'MeasurementEquipmentType', [TKindVR.vrCS], 'Measurement Equipment Type' );
     Add( $7015, 'VisualEvaluationResultSequence', [TKindVR.vrSQ], 'Visual Evaluation Result Sequence' );
     Add( $7016, 'DisplayCalibrationResultSequence', [TKindVR.vrSQ], 'Display Calibration Result Sequence' );
     Add( $7017, 'DDLValue', [TKindVR.vrUS], 'DDL Value' );
     Add( $7018, 'CIExyWhitePoint', [TKindVR.vrFL], 'CIExy White Point' );
     Add( $7019, 'DisplayFunctionType', [TKindVR.vrCS], 'Display Function Type' );
     Add( $701A, 'GammaValue', [TKindVR.vrFL], 'Gamma Value' );
     Add( $701B, 'NumberOfLuminancePoints', [TKindVR.vrUS], 'Number of Luminance Points' );
     Add( $701C, 'LuminanceResponseSequence', [TKindVR.vrSQ], 'Luminance Response Sequence' );
     Add( $701D, 'TargetMinimumLuminance', [TKindVR.vrFL], 'Target Minimum Luminance' );
     Add( $701E, 'TargetMaximumLuminance', [TKindVR.vrFL], 'Target Maximum Luminance' );
     Add( $701F, 'LuminanceValue', [TKindVR.vrFL], 'Luminance Value' );
     Add( $7020, 'LuminanceResponseDescription', [TKindVR.vrLO], 'Luminance Response Description' );
     Add( $7021, 'WhitePointFlag', [TKindVR.vrCS], 'White Point Flag' );
     Add( $7022, 'DisplayDeviceTypeCodeSequence', [TKindVR.vrSQ], 'Display Device Type Code Sequence' );
     Add( $7023, 'DisplaySubsystemSequence', [TKindVR.vrSQ], 'Display Subsystem Sequence' );
     Add( $7024, 'LuminanceResultSequence', [TKindVR.vrSQ], 'Luminance Result Sequence' );
     Add( $7025, 'AmbientLightValueSource', [TKindVR.vrCS], 'Ambient Light Value Source' );
     Add( $7026, 'MeasuredCharacteristics', [TKindVR.vrCS], 'Measured Characteristics' );
     Add( $7027, 'LuminanceUniformityResultSequence', [TKindVR.vrSQ], 'Luminance Uniformity Result Sequence' );
     Add( $7028, 'VisualEvaluationTestSequence', [TKindVR.vrSQ], 'Visual Evaluation Test Sequence' );
     Add( $7029, 'TestResult', [TKindVR.vrCS], 'Test Result' );
     Add( $702A, 'TestResultComment', [TKindVR.vrLO], 'Test Result Comment' );
     Add( $702B, 'TestImageValidation', [TKindVR.vrCS], 'Test Image Validation' );
     Add( $702C, 'TestPatternCodeSequence', [TKindVR.vrSQ], 'Test Pattern Code Sequence' );
     Add( $702D, 'MeasurementPatternCodeSequence', [TKindVR.vrSQ], 'Measurement Pattern Code Sequence' );
     Add( $702E, 'VisualEvaluationMethodCodeSequence', [TKindVR.vrSQ], 'Visual Evaluation Method Code Sequence' );
     Add( $7FE0, 'PixelDataProviderURL', [TKindVR.vrUR], 'Pixel Data Provider URL' );
     Add( $9001, 'DataPointRows', [TKindVR.vrUL], 'Data Point Rows' );
     Add( $9002, 'DataPointColumns', [TKindVR.vrUL], 'Data Point Columns' );
     Add( $9003, 'SignalDomainColumns', [TKindVR.vrCS], 'Signal Domain Columns' );
     Add( $9099, 'LargestMonochromePixelValue', [TKindVR.vrUS], 'Largest Monochrome Pixel Value' );
     Add( $9108, 'DataRepresentation', [TKindVR.vrCS], 'Data Representation' );
     Add( $9110, 'PixelMeasuresSequence', [TKindVR.vrSQ], 'Pixel Measures Sequence' );
     Add( $9132, 'FrameVOILUTSequence', [TKindVR.vrSQ], 'Frame VOI LUT Sequence' );
     Add( $9145, 'PixelValueTransformationSequence', [TKindVR.vrSQ], 'Pixel Value Transformation Sequence' );
     Add( $9235, 'SignalDomainRows', [TKindVR.vrCS], 'Signal Domain Rows' );
     Add( $9411, 'DisplayFilterPercentage', [TKindVR.vrFL], 'Display Filter Percentage' );
     Add( $9415, 'FramePixelShiftSequence', [TKindVR.vrSQ], 'Frame Pixel Shift Sequence' );
     Add( $9416, 'SubtractionItemID', [TKindVR.vrUS], 'Subtraction Item ID' );
     Add( $9422, 'PixelIntensityRelationshipLUTSequence', [TKindVR.vrSQ], 'Pixel Intensity Relationship LUT Sequence' );
     Add( $9443, 'FramePixelDataPropertiesSequence', [TKindVR.vrSQ], 'Frame Pixel Data Properties Sequence' );
     Add( $9444, 'GeometricalProperties', [TKindVR.vrCS], 'Geometrical Properties' );
     Add( $9445, 'GeometricMaximumDistortion', [TKindVR.vrFL], 'Geometric Maximum Distortion' );
     Add( $9446, 'ImageProcessingApplied', [TKindVR.vrCS], 'Image Processing Applied' );
     Add( $9454, 'MaskSelectionMode', [TKindVR.vrCS], 'Mask Selection Mode' );
     Add( $9474, 'LUTFunction', [TKindVR.vrCS], 'LUT Function' );
     Add( $9478, 'MaskVisibilityPercentage', [TKindVR.vrFL], 'Mask Visibility Percentage' );
     Add( $9501, 'PixelShiftSequence', [TKindVR.vrSQ], 'Pixel Shift Sequence' );
     Add( $9502, 'RegionPixelShiftSequence', [TKindVR.vrSQ], 'Region Pixel Shift Sequence' );
     Add( $9503, 'VerticesOfTheRegion', [TKindVR.vrSS], 'Vertices of the Region' );
     Add( $9505, 'MultiFramePresentationSequence', [TKindVR.vrSQ], 'Multi-frame Presentation Sequence' );
     Add( $9506, 'PixelShiftFrameRange', [TKindVR.vrUS], 'Pixel Shift Frame Range' );
     Add( $9507, 'LUTFrameRange', [TKindVR.vrUS], 'LUT Frame Range' );
     Add( $9520, 'ImageToEquipmentMappingMatrix', [TKindVR.vrDS], 'Image to Equipment Mapping Matrix' );
     Add( $9537, 'EquipmentCoordinateSystemIdentification', [TKindVR.vrCS], 'Equipment Coordinate System Identification' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
