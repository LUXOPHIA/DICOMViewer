unit LUX.DICOM.Tags.G0028;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0028

     TdcmGrup0028 = class( TdcmGrup )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0028

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmGrup0028.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0002, 'SamplesPerPixel', [TTypeVR.vrUS], 'Samples per Pixel' );
     Add( $0003, 'SamplesPerPixelUsed', [TTypeVR.vrUS], 'Samples per Pixel Used' );
     Add( $0004, 'PhotometricInterpretation', [TTypeVR.vrCS], 'Photometric Interpretation' );
     Add( $0005, 'ImageDimensions', [TTypeVR.vrUS], 'Image Dimensions' );
     Add( $0006, 'PlanarConfiguration', [TTypeVR.vrUS], 'Planar Configuration' );
     Add( $0008, 'NumberOfFrames', [TTypeVR.vrIS], 'Number of Frames' );
     Add( $0009, 'FrameIncrementPointer', [TTypeVR.vrAT], 'Frame Increment Pointer' );
     Add( $000A, 'FrameDimensionPointer', [TTypeVR.vrAT], 'Frame Dimension Pointer' );
     Add( $0010, 'Rows', [TTypeVR.vrUS], 'Rows' );
     Add( $0011, 'Columns', [TTypeVR.vrUS], 'Columns' );
     Add( $0012, 'Planes', [TTypeVR.vrUS], 'Planes' );
     Add( $0014, 'UltrasoundColorDataPresent', [TTypeVR.vrUS], 'Ultrasound Color Data Present' );
     Add( $0020, '', [], '' );  //For some Data Elements, no Name or Keyword or VR or VM is specified; these are "placeholders" that are not assigned but will not be reused.
     Add( $0030, 'PixelSpacing', [TTypeVR.vrDS], 'Pixel Spacing' );
     Add( $0031, 'ZoomFactor', [TTypeVR.vrDS], 'Zoom Factor' );
     Add( $0032, 'ZoomCenter', [TTypeVR.vrDS], 'Zoom Center' );
     Add( $0034, 'PixelAspectRatio', [TTypeVR.vrIS], 'Pixel Aspect Ratio' );
     Add( $0040, 'ImageFormat', [TTypeVR.vrCS], 'Image Format' );
     Add( $0050, 'ManipulatedImage', [TTypeVR.vrLO], 'Manipulated Image' );
     Add( $0051, 'CorrectedImage', [TTypeVR.vrCS], 'Corrected Image' );
     Add( $005F, 'CompressionRecognitionCode', [TTypeVR.vrLO], 'Compression Recognition Code' );
     Add( $0060, 'CompressionCode', [TTypeVR.vrCS], 'Compression Code' );
     Add( $0061, 'CompressionOriginator', [TTypeVR.vrSH], 'Compression Originator' );
     Add( $0062, 'CompressionLabel', [TTypeVR.vrLO], 'Compression Label' );
     Add( $0063, 'CompressionDescription', [TTypeVR.vrSH], 'Compression Description' );
     Add( $0065, 'CompressionSequence', [TTypeVR.vrCS], 'Compression Sequence' );
     Add( $0066, 'CompressionStepPointers', [TTypeVR.vrAT], 'Compression Step Pointers' );
     Add( $0068, 'RepeatInterval', [TTypeVR.vrUS], 'Repeat Interval' );
     Add( $0069, 'BitsGrouped', [TTypeVR.vrUS], 'Bits Grouped' );
     Add( $0070, 'PerimeterTable', [TTypeVR.vrUS], 'Perimeter Table' );
     Add( $0071, 'PerimeterValue', [TTypeVR.vrUS,TTypeVR.vrSS], 'Perimeter Value' );
     Add( $0080, 'PredictorRows', [TTypeVR.vrUS], 'Predictor Rows' );
     Add( $0081, 'PredictorColumns', [TTypeVR.vrUS], 'Predictor Columns' );
     Add( $0082, 'PredictorConstants', [TTypeVR.vrUS], 'Predictor Constants' );
     Add( $0090, 'BlockedPixels', [TTypeVR.vrCS], 'Blocked Pixels' );
     Add( $0091, 'BlockRows', [TTypeVR.vrUS], 'Block Rows' );
     Add( $0092, 'BlockColumns', [TTypeVR.vrUS], 'Block Columns' );
     Add( $0093, 'RowOverlap', [TTypeVR.vrUS], 'Row Overlap' );
     Add( $0094, 'ColumnOverlap', [TTypeVR.vrUS], 'Column Overlap' );
     Add( $0100, 'BitsAllocated', [TTypeVR.vrUS], 'Bits Allocated' );
     Add( $0101, 'BitsStored', [TTypeVR.vrUS], 'Bits Stored' );
     Add( $0102, 'HighBit', [TTypeVR.vrUS], 'High Bit' );
     Add( $0103, 'PixelRepresentation', [TTypeVR.vrUS], 'Pixel Representation' );
     Add( $0104, 'SmallestValidPixelValue', [TTypeVR.vrUS,TTypeVR.vrSS], 'Smallest Valid Pixel Value' );
     Add( $0105, 'LargestValidPixelValue', [TTypeVR.vrUS,TTypeVR.vrSS], 'Largest Valid Pixel Value' );
     Add( $0106, 'SmallestImagePixelValue', [TTypeVR.vrUS,TTypeVR.vrSS], 'Smallest Image Pixel Value' );
     Add( $0107, 'LargestImagePixelValue', [TTypeVR.vrUS,TTypeVR.vrSS], 'Largest Image Pixel Value' );
     Add( $0108, 'SmallestPixelValueInSeries', [TTypeVR.vrUS,TTypeVR.vrSS], 'Smallest Pixel Value in Series' );
     Add( $0109, 'LargestPixelValueInSeries', [TTypeVR.vrUS,TTypeVR.vrSS], 'Largest Pixel Value in Series' );
     Add( $0110, 'SmallestImagePixelValueInPlane', [TTypeVR.vrUS,TTypeVR.vrSS], 'Smallest Image Pixel Value in Plane' );
     Add( $0111, 'LargestImagePixelValueInPlane', [TTypeVR.vrUS,TTypeVR.vrSS], 'Largest Image Pixel Value in Plane' );
     Add( $0120, 'PixelPaddingValue', [TTypeVR.vrUS,TTypeVR.vrSS], 'Pixel Padding Value' );
     Add( $0121, 'PixelPaddingRangeLimit', [TTypeVR.vrUS,TTypeVR.vrSS], 'Pixel Padding Range Limit' );
     Add( $0122, 'FloatPixelPaddingValue', [TTypeVR.vrFL], 'Float Pixel Padding Value' );
     Add( $0123, 'DoubleFloatPixelPaddingValue', [TTypeVR.vrFD], 'Double Float Pixel Padding Value' );
     Add( $0124, 'FloatPixelPaddingRangeLimit', [TTypeVR.vrFL], 'Float Pixel Padding Range Limit' );
     Add( $0125, 'DoubleFloatPixelPaddingRangeLimit', [TTypeVR.vrFD], 'Double Float Pixel Padding Range Limit' );
     Add( $0200, 'ImageLocation', [TTypeVR.vrUS], 'Image Location' );
     Add( $0300, 'QualityControlImage', [TTypeVR.vrCS], 'Quality Control Image' );
     Add( $0301, 'BurnedInAnnotation', [TTypeVR.vrCS], 'Burned In Annotation' );
     Add( $0302, 'RecognizableVisualFeatures', [TTypeVR.vrCS], 'Recognizable Visual Features' );
     Add( $0303, 'LongitudinalTemporalInformationModified', [TTypeVR.vrCS], 'Longitudinal Temporal Information Modified' );
     Add( $0304, 'ReferencedColorPaletteInstanceUID', [TTypeVR.vrUI], 'Referenced Color Palette Instance UID' );
     Add( $0400, 'TransformLabel', [TTypeVR.vrLO], 'Transform Label' );
     Add( $0401, 'TransformVersionNumber', [TTypeVR.vrLO], 'Transform Version Number' );
     Add( $0402, 'NumberOfTransformSteps', [TTypeVR.vrUS], 'Number of Transform Steps' );
     Add( $0403, 'SequenceOfCompressedData', [TTypeVR.vrLO], 'Sequence of Compressed Data' );
     Add( $0404, 'DetailsOfCoefficients', [TTypeVR.vrAT], 'Details of Coefficients' );
   //Add( $04x0, 'RowsForNthOrderCoefficients', [TTypeVR.vrUS], 'Rows For Nth Order Coefficients' );
   //Add( $04x1, 'ColumnsForNthOrderCoefficients', [TTypeVR.vrUS], 'Columns For Nth Order Coefficients' );
   //Add( $04x2, 'CoefficientCoding', [TTypeVR.vrLO], 'Coefficient Coding' );
   //Add( $04x3, 'CoefficientCodingPointers', [TTypeVR.vrAT], 'Coefficient Coding Pointers' );
     Add( $0700, 'DCTLabel', [TTypeVR.vrLO], 'DCT Label' );
     Add( $0701, 'DataBlockDescription', [TTypeVR.vrCS], 'Data Block Description' );
     Add( $0702, 'DataBlock', [TTypeVR.vrAT], 'Data Block' );
     Add( $0710, 'NormalizationFactorFormat', [TTypeVR.vrUS], 'Normalization Factor Format' );
     Add( $0720, 'ZonalMapNumberFormat', [TTypeVR.vrUS], 'Zonal Map Number Format' );
     Add( $0721, 'ZonalMapLocation', [TTypeVR.vrAT], 'Zonal Map Location' );
     Add( $0722, 'ZonalMapFormat', [TTypeVR.vrUS], 'Zonal Map Format' );
     Add( $0730, 'AdaptiveMapFormat', [TTypeVR.vrUS], 'Adaptive Map Format' );
     Add( $0740, 'CodeNumberFormat', [TTypeVR.vrUS], 'Code Number Format' );
   //Add( $08x0, 'CodeLabel', [TTypeVR.vrCS], 'Code Label' );
   //Add( $08x2, 'NumberOfTables', [TTypeVR.vrUS], 'Number of Tables' );
   //Add( $08x3, 'CodeTableLocation', [TTypeVR.vrAT], 'Code Table Location' );
   //Add( $08x4, 'BitsForCodeWord', [TTypeVR.vrUS], 'Bits For Code Word' );
   //Add( $08x8, 'ImageDataLocation', [TTypeVR.vrAT], 'Image Data Location' );
     Add( $0A02, 'PixelSpacingCalibrationType', [TTypeVR.vrCS], 'Pixel Spacing Calibration Type' );
     Add( $0A04, 'PixelSpacingCalibrationDescription', [TTypeVR.vrLO], 'Pixel Spacing Calibration Description' );
     Add( $1040, 'PixelIntensityRelationship', [TTypeVR.vrCS], 'Pixel Intensity Relationship' );
     Add( $1041, 'PixelIntensityRelationshipSign', [TTypeVR.vrSS], 'Pixel Intensity Relationship Sign' );
     Add( $1050, 'WindowCenter', [TTypeVR.vrDS], 'Window Center' );
     Add( $1051, 'WindowWidth', [TTypeVR.vrDS], 'Window Width' );
     Add( $1052, 'RescaleIntercept', [TTypeVR.vrDS], 'Rescale Intercept' );
     Add( $1053, 'RescaleSlope', [TTypeVR.vrDS], 'Rescale Slope' );
     Add( $1054, 'RescaleType', [TTypeVR.vrLO], 'Rescale Type' );
     Add( $1055, 'WindowCenterWidthExplanation', [TTypeVR.vrLO], 'Window Center & Width Explanation' );
     Add( $1056, 'VOILUTFunction', [TTypeVR.vrCS], 'VOI LUT Function' );
     Add( $1080, 'GrayScale', [TTypeVR.vrCS], 'Gray Scale' );
     Add( $1090, 'RecommendedViewingMode', [TTypeVR.vrCS], 'Recommended Viewing Mode' );
     Add( $1100, 'GrayLookupTableDescriptor', [TTypeVR.vrUS,TTypeVR.vrSS], 'Gray Lookup Table Descriptor' );
     Add( $1101, 'RedPaletteColorLookupTableDescriptor', [TTypeVR.vrUS,TTypeVR.vrSS], 'Red Palette Color Lookup Table Descriptor' );
     Add( $1102, 'GreenPaletteColorLookupTableDescriptor', [TTypeVR.vrUS,TTypeVR.vrSS], 'Green Palette Color Lookup Table Descriptor' );
     Add( $1103, 'BluePaletteColorLookupTableDescriptor', [TTypeVR.vrUS,TTypeVR.vrSS], 'Blue Palette Color Lookup Table Descriptor' );
     Add( $1104, 'AlphaPaletteColorLookupTableDescriptor', [TTypeVR.vrUS], 'Alpha Palette Color Lookup Table Descriptor' );
     Add( $1111, 'LargeRedPaletteColorLookupTableDescriptor', [TTypeVR.vrUS,TTypeVR.vrSS], 'Large Red Palette Color Lookup Table Descriptor' );
     Add( $1112, 'LargeGreenPaletteColorLookupTableDescriptor', [TTypeVR.vrUS,TTypeVR.vrSS], 'Large Green Palette Color Lookup Table Descriptor' );
     Add( $1113, 'LargeBluePaletteColorLookupTableDescriptor', [TTypeVR.vrUS,TTypeVR.vrSS], 'Large Blue Palette Color Lookup Table Descriptor' );
     Add( $1199, 'PaletteColorLookupTableUID', [TTypeVR.vrUI], 'Palette Color Lookup Table UID' );
     Add( $1200, 'GrayLookupTableData', [TTypeVR.vrUS,TTypeVR.vrSS,TTypeVR.vrOW], 'Gray Lookup Table Data' );
     Add( $1201, 'RedPaletteColorLookupTableData', [TTypeVR.vrOW], 'Red Palette Color Lookup Table Data' );
     Add( $1202, 'GreenPaletteColorLookupTableData', [TTypeVR.vrOW], 'Green Palette Color Lookup Table Data' );
     Add( $1203, 'BluePaletteColorLookupTableData', [TTypeVR.vrOW], 'Blue Palette Color Lookup Table Data' );
     Add( $1204, 'AlphaPaletteColorLookupTableData', [TTypeVR.vrOW], 'Alpha Palette Color Lookup Table Data' );
     Add( $1211, 'LargeRedPaletteColorLookupTableData', [TTypeVR.vrOW], 'Large Red Palette Color Lookup Table Data' );
     Add( $1212, 'LargeGreenPaletteColorLookupTableData', [TTypeVR.vrOW], 'Large Green Palette Color Lookup Table Data' );
     Add( $1213, 'LargeBluePaletteColorLookupTableData', [TTypeVR.vrOW], 'Large Blue Palette Color Lookup Table Data' );
     Add( $1214, 'LargePaletteColorLookupTableUID', [TTypeVR.vrUI], 'Large Palette Color Lookup Table UID' );
     Add( $1221, 'SegmentedRedPaletteColorLookupTableData', [TTypeVR.vrOW], 'Segmented Red Palette Color Lookup Table Data' );
     Add( $1222, 'SegmentedGreenPaletteColorLookupTableData', [TTypeVR.vrOW], 'Segmented Green Palette Color Lookup Table Data' );
     Add( $1223, 'SegmentedBluePaletteColorLookupTableData', [TTypeVR.vrOW], 'Segmented Blue Palette Color Lookup Table Data' );
     Add( $1224, 'SegmentedAlphaPaletteColorLookupTableData', [TTypeVR.vrOW], 'Segmented Alpha Palette Color Lookup Table Data' );
     Add( $1230, 'StoredValueColorRangeSequence', [TTypeVR.vrSQ], 'Stored Value Color Range Sequence' );
     Add( $1231, 'MinimumStoredValueMapped', [TTypeVR.vrFD], 'Minimum Stored Value Mapped' );
     Add( $1232, 'MaximumStoredValueMapped', [TTypeVR.vrFD], 'Maximum Stored Value Mapped' );
     Add( $1300, 'BreastImplantPresent', [TTypeVR.vrCS], 'Breast Implant Present' );
     Add( $1350, 'PartialView', [TTypeVR.vrCS], 'Partial View' );
     Add( $1351, 'PartialViewDescription', [TTypeVR.vrST], 'Partial View Description' );
     Add( $1352, 'PartialViewCodeSequence', [TTypeVR.vrSQ], 'Partial View Code Sequence' );
     Add( $135A, 'SpatialLocationsPreserved', [TTypeVR.vrCS], 'Spatial Locations Preserved' );
     Add( $1401, 'DataFrameAssignmentSequence', [TTypeVR.vrSQ], 'Data Frame Assignment Sequence' );
     Add( $1402, 'DataPathAssignment', [TTypeVR.vrCS], 'Data Path Assignment' );
     Add( $1403, 'BitsMappedToColorLookupTable', [TTypeVR.vrUS], 'Bits Mapped to Color Lookup Table' );
     Add( $1404, 'BlendingLUT1Sequence', [TTypeVR.vrSQ], 'Blending LUT 1 Sequence' );
     Add( $1405, 'BlendingLUT1TransferFunction', [TTypeVR.vrCS], 'Blending LUT 1 Transfer Function' );
     Add( $1406, 'BlendingWeightConstant', [TTypeVR.vrFD], 'Blending Weight Constant' );
     Add( $1407, 'BlendingLookupTableDescriptor', [TTypeVR.vrUS], 'Blending Lookup Table Descriptor' );
     Add( $1408, 'BlendingLookupTableData', [TTypeVR.vrOW], 'Blending Lookup Table Data' );
     Add( $140B, 'EnhancedPaletteColorLookupTableSequence', [TTypeVR.vrSQ], 'Enhanced Palette Color Lookup Table Sequence' );
     Add( $140C, 'BlendingLUT2Sequence', [TTypeVR.vrSQ], 'Blending LUT 2 Sequence' );
     Add( $140D, 'BlendingLUT2TransferFunction', [TTypeVR.vrCS], 'Blending LUT 2 Transfer Function' );
     Add( $140E, 'DataPathID', [TTypeVR.vrCS], 'Data Path ID' );
     Add( $140F, 'RGBLUTTransferFunction', [TTypeVR.vrCS], 'RGB LUT Transfer Function' );
     Add( $1410, 'AlphaLUTTransferFunction', [TTypeVR.vrCS], 'Alpha LUT Transfer Function' );
     Add( $2000, 'ICCProfile', [TTypeVR.vrOB], 'ICC Profile' );
     Add( $2002, 'ColorSpace', [TTypeVR.vrCS], 'Color Space' );
     Add( $2110, 'LossyImageCompression', [TTypeVR.vrCS], 'Lossy Image Compression' );
     Add( $2112, 'LossyImageCompressionRatio', [TTypeVR.vrDS], 'Lossy Image Compression Ratio' );
     Add( $2114, 'LossyImageCompressionMethod', [TTypeVR.vrCS], 'Lossy Image Compression Method' );
     Add( $3000, 'ModalityLUTSequence', [TTypeVR.vrSQ], 'Modality LUT Sequence' );
     Add( $3002, 'LUTDescriptor', [TTypeVR.vrUS,TTypeVR.vrSS], 'LUT Descriptor' );
     Add( $3003, 'LUTExplanation', [TTypeVR.vrLO], 'LUT Explanation' );
     Add( $3004, 'ModalityLUTType', [TTypeVR.vrLO], 'Modality LUT Type' );
     Add( $3006, 'LUTData', [TTypeVR.vrUS,TTypeVR.vrOW], 'LUT Data' );
     Add( $3010, 'VOILUTSequence', [TTypeVR.vrSQ], 'VOI LUT Sequence' );
     Add( $3110, 'SoftcopyVOILUTSequence', [TTypeVR.vrSQ], 'Softcopy VOI LUT Sequence' );
     Add( $4000, 'ImagePresentationComments', [TTypeVR.vrLT], 'Image Presentation Comments' );
     Add( $5000, 'BiPlaneAcquisitionSequence', [TTypeVR.vrSQ], 'Bi-Plane Acquisition Sequence' );
     Add( $6010, 'RepresentativeFrameNumber', [TTypeVR.vrUS], 'Representative Frame Number' );
     Add( $6020, 'FrameNumbersOfInterest', [TTypeVR.vrUS], 'Frame Numbers of Interest (FOI)' );
     Add( $6022, 'FrameOfInterestDescription', [TTypeVR.vrLO], 'Frame of Interest Description' );
     Add( $6023, 'FrameOfInterestType', [TTypeVR.vrCS], 'Frame of Interest Type' );
     Add( $6030, 'MaskPointers', [TTypeVR.vrUS], 'Mask Pointer(s)' );
     Add( $6040, 'RWavePointer', [TTypeVR.vrUS], 'R Wave Pointer' );
     Add( $6100, 'MaskSubtractionSequence', [TTypeVR.vrSQ], 'Mask Subtraction Sequence' );
     Add( $6101, 'MaskOperation', [TTypeVR.vrCS], 'Mask Operation' );
     Add( $6102, 'ApplicableFrameRange', [TTypeVR.vrUS], 'Applicable Frame Range' );
     Add( $6110, 'MaskFrameNumbers', [TTypeVR.vrUS], 'Mask Frame Numbers' );
     Add( $6112, 'ContrastFrameAveraging', [TTypeVR.vrUS], 'Contrast Frame Averaging' );
     Add( $6114, 'MaskSubPixelShift', [TTypeVR.vrFL], 'Mask Sub-pixel Shift' );
     Add( $6120, 'TIDOffset', [TTypeVR.vrSS], 'TID Offset' );
     Add( $6190, 'MaskOperationExplanation', [TTypeVR.vrST], 'Mask Operation Explanation' );
     Add( $7000, 'EquipmentAdministratorSequence', [TTypeVR.vrSQ], 'Equipment Administrator Sequence' );
     Add( $7001, 'NumberOfDisplaySubsystems', [TTypeVR.vrUS], 'Number of Display Subsystems' );
     Add( $7002, 'CurrentConfigurationID', [TTypeVR.vrUS], 'Current Configuration ID' );
     Add( $7003, 'DisplaySubsystemID', [TTypeVR.vrUS], 'Display Subsystem ID' );
     Add( $7004, 'DisplaySubsystemName', [TTypeVR.vrSH], 'Display Subsystem Name' );
     Add( $7005, 'DisplaySubsystemDescription', [TTypeVR.vrLO], 'Display Subsystem Description' );
     Add( $7006, 'SystemStatus', [TTypeVR.vrCS], 'System Status' );
     Add( $7007, 'SystemStatusComment', [TTypeVR.vrLO], 'System Status Comment' );
     Add( $7008, 'TargetLuminanceCharacteristicsSequence', [TTypeVR.vrSQ], 'Target Luminance Characteristics Sequence' );
     Add( $7009, 'LuminanceCharacteristicsID', [TTypeVR.vrUS], 'Luminance Characteristics ID' );
     Add( $700A, 'DisplaySubsystemConfigurationSequence', [TTypeVR.vrSQ], 'Display Subsystem Configuration Sequence' );
     Add( $700B, 'ConfigurationID', [TTypeVR.vrUS], 'Configuration ID' );
     Add( $700C, 'ConfigurationName', [TTypeVR.vrSH], 'Configuration Name' );
     Add( $700D, 'ConfigurationDescription', [TTypeVR.vrLO], 'Configuration Description' );
     Add( $700E, 'ReferencedTargetLuminanceCharacteristicsID', [TTypeVR.vrUS], 'Referenced Target Luminance Characteristics ID' );
     Add( $700F, 'QAResultsSequence', [TTypeVR.vrSQ], 'QA Results Sequence' );
     Add( $7010, 'DisplaySubsystemQAResultsSequence', [TTypeVR.vrSQ], 'Display Subsystem QA Results Sequence' );
     Add( $7011, 'ConfigurationQAResultsSequence', [TTypeVR.vrSQ], 'Configuration QA Results Sequence' );
     Add( $7012, 'MeasurementEquipmentSequence', [TTypeVR.vrSQ], 'Measurement Equipment Sequence' );
     Add( $7013, 'MeasurementFunctions', [TTypeVR.vrCS], 'Measurement Functions' );
     Add( $7014, 'MeasurementEquipmentType', [TTypeVR.vrCS], 'Measurement Equipment Type' );
     Add( $7015, 'VisualEvaluationResultSequence', [TTypeVR.vrSQ], 'Visual Evaluation Result Sequence' );
     Add( $7016, 'DisplayCalibrationResultSequence', [TTypeVR.vrSQ], 'Display Calibration Result Sequence' );
     Add( $7017, 'DDLValue', [TTypeVR.vrUS], 'DDL Value' );
     Add( $7018, 'CIExyWhitePoint', [TTypeVR.vrFL], 'CIExy White Point' );
     Add( $7019, 'DisplayFunctionType', [TTypeVR.vrCS], 'Display Function Type' );
     Add( $701A, 'GammaValue', [TTypeVR.vrFL], 'Gamma Value' );
     Add( $701B, 'NumberOfLuminancePoints', [TTypeVR.vrUS], 'Number of Luminance Points' );
     Add( $701C, 'LuminanceResponseSequence', [TTypeVR.vrSQ], 'Luminance Response Sequence' );
     Add( $701D, 'TargetMinimumLuminance', [TTypeVR.vrFL], 'Target Minimum Luminance' );
     Add( $701E, 'TargetMaximumLuminance', [TTypeVR.vrFL], 'Target Maximum Luminance' );
     Add( $701F, 'LuminanceValue', [TTypeVR.vrFL], 'Luminance Value' );
     Add( $7020, 'LuminanceResponseDescription', [TTypeVR.vrLO], 'Luminance Response Description' );
     Add( $7021, 'WhitePointFlag', [TTypeVR.vrCS], 'White Point Flag' );
     Add( $7022, 'DisplayDeviceTypeCodeSequence', [TTypeVR.vrSQ], 'Display Device Type Code Sequence' );
     Add( $7023, 'DisplaySubsystemSequence', [TTypeVR.vrSQ], 'Display Subsystem Sequence' );
     Add( $7024, 'LuminanceResultSequence', [TTypeVR.vrSQ], 'Luminance Result Sequence' );
     Add( $7025, 'AmbientLightValueSource', [TTypeVR.vrCS], 'Ambient Light Value Source' );
     Add( $7026, 'MeasuredCharacteristics', [TTypeVR.vrCS], 'Measured Characteristics' );
     Add( $7027, 'LuminanceUniformityResultSequence', [TTypeVR.vrSQ], 'Luminance Uniformity Result Sequence' );
     Add( $7028, 'VisualEvaluationTestSequence', [TTypeVR.vrSQ], 'Visual Evaluation Test Sequence' );
     Add( $7029, 'TestResult', [TTypeVR.vrCS], 'Test Result' );
     Add( $702A, 'TestResultComment', [TTypeVR.vrLO], 'Test Result Comment' );
     Add( $702B, 'TestImageValidation', [TTypeVR.vrCS], 'Test Image Validation' );
     Add( $702C, 'TestPatternCodeSequence', [TTypeVR.vrSQ], 'Test Pattern Code Sequence' );
     Add( $702D, 'MeasurementPatternCodeSequence', [TTypeVR.vrSQ], 'Measurement Pattern Code Sequence' );
     Add( $702E, 'VisualEvaluationMethodCodeSequence', [TTypeVR.vrSQ], 'Visual Evaluation Method Code Sequence' );
     Add( $7FE0, 'PixelDataProviderURL', [TTypeVR.vrUR], 'Pixel Data Provider URL' );
     Add( $9001, 'DataPointRows', [TTypeVR.vrUL], 'Data Point Rows' );
     Add( $9002, 'DataPointColumns', [TTypeVR.vrUL], 'Data Point Columns' );
     Add( $9003, 'SignalDomainColumns', [TTypeVR.vrCS], 'Signal Domain Columns' );
     Add( $9099, 'LargestMonochromePixelValue', [TTypeVR.vrUS], 'Largest Monochrome Pixel Value' );
     Add( $9108, 'DataRepresentation', [TTypeVR.vrCS], 'Data Representation' );
     Add( $9110, 'PixelMeasuresSequence', [TTypeVR.vrSQ], 'Pixel Measures Sequence' );
     Add( $9132, 'FrameVOILUTSequence', [TTypeVR.vrSQ], 'Frame VOI LUT Sequence' );
     Add( $9145, 'PixelValueTransformationSequence', [TTypeVR.vrSQ], 'Pixel Value Transformation Sequence' );
     Add( $9235, 'SignalDomainRows', [TTypeVR.vrCS], 'Signal Domain Rows' );
     Add( $9411, 'DisplayFilterPercentage', [TTypeVR.vrFL], 'Display Filter Percentage' );
     Add( $9415, 'FramePixelShiftSequence', [TTypeVR.vrSQ], 'Frame Pixel Shift Sequence' );
     Add( $9416, 'SubtractionItemID', [TTypeVR.vrUS], 'Subtraction Item ID' );
     Add( $9422, 'PixelIntensityRelationshipLUTSequence', [TTypeVR.vrSQ], 'Pixel Intensity Relationship LUT Sequence' );
     Add( $9443, 'FramePixelDataPropertiesSequence', [TTypeVR.vrSQ], 'Frame Pixel Data Properties Sequence' );
     Add( $9444, 'GeometricalProperties', [TTypeVR.vrCS], 'Geometrical Properties' );
     Add( $9445, 'GeometricMaximumDistortion', [TTypeVR.vrFL], 'Geometric Maximum Distortion' );
     Add( $9446, 'ImageProcessingApplied', [TTypeVR.vrCS], 'Image Processing Applied' );
     Add( $9454, 'MaskSelectionMode', [TTypeVR.vrCS], 'Mask Selection Mode' );
     Add( $9474, 'LUTFunction', [TTypeVR.vrCS], 'LUT Function' );
     Add( $9478, 'MaskVisibilityPercentage', [TTypeVR.vrFL], 'Mask Visibility Percentage' );
     Add( $9501, 'PixelShiftSequence', [TTypeVR.vrSQ], 'Pixel Shift Sequence' );
     Add( $9502, 'RegionPixelShiftSequence', [TTypeVR.vrSQ], 'Region Pixel Shift Sequence' );
     Add( $9503, 'VerticesOfTheRegion', [TTypeVR.vrSS], 'Vertices of the Region' );
     Add( $9505, 'MultiFramePresentationSequence', [TTypeVR.vrSQ], 'Multi-frame Presentation Sequence' );
     Add( $9506, 'PixelShiftFrameRange', [TTypeVR.vrUS], 'Pixel Shift Frame Range' );
     Add( $9507, 'LUTFrameRange', [TTypeVR.vrUS], 'LUT Frame Range' );
     Add( $9520, 'ImageToEquipmentMappingMatrix', [TTypeVR.vrDS], 'Image to Equipment Mapping Matrix' );
     Add( $9537, 'EquipmentCoordinateSystemIdentification', [TTypeVR.vrCS], 'Equipment Coordinate System Identification' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
