unit LUX.DICOM.Tags.G0024;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0024

     TdcmGrup0024 = class( TdcmGrup )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0024

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmGrup0024.Create( const Code_:THex4 );
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0010, 'VisualFieldHorizontalExtent', [TKindVR.vrFL], 'Visual Field Horizontal Extent' );
     Add( $0011, 'VisualFieldVerticalExtent', [TKindVR.vrFL], 'Visual Field Vertical Extent' );
     Add( $0012, 'VisualFieldShape', [TKindVR.vrCS], 'Visual Field Shape' );
     Add( $0016, 'ScreeningTestModeCodeSequence', [TKindVR.vrSQ], 'Screening Test Mode Code Sequence' );
     Add( $0018, 'MaximumStimulusLuminance', [TKindVR.vrFL], 'Maximum Stimulus Luminance' );
     Add( $0020, 'BackgroundLuminance', [TKindVR.vrFL], 'Background Luminance' );
     Add( $0021, 'StimulusColorCodeSequence', [TKindVR.vrSQ], 'Stimulus Color Code Sequence' );
     Add( $0024, 'BackgroundIlluminationColorCodeSequence', [TKindVR.vrSQ], 'Background Illumination Color Code Sequence' );
     Add( $0025, 'StimulusArea', [TKindVR.vrFL], 'Stimulus Area' );
     Add( $0028, 'StimulusPresentationTime', [TKindVR.vrFL], 'Stimulus Presentation Time' );
     Add( $0032, 'FixationSequence', [TKindVR.vrSQ], 'Fixation Sequence' );
     Add( $0033, 'FixationMonitoringCodeSequence', [TKindVR.vrSQ], 'Fixation Monitoring Code Sequence' );
     Add( $0034, 'VisualFieldCatchTrialSequence', [TKindVR.vrSQ], 'Visual Field Catch Trial Sequence' );
     Add( $0035, 'FixationCheckedQuantity', [TKindVR.vrUS], 'Fixation Checked Quantity' );
     Add( $0036, 'PatientNotProperlyFixatedQuantity', [TKindVR.vrUS], 'Patient Not Properly Fixated Quantity' );
     Add( $0037, 'PresentedVisualStimuliDataFlag', [TKindVR.vrCS], 'Presented Visual Stimuli Data Flag' );
     Add( $0038, 'NumberOfVisualStimuli', [TKindVR.vrUS], 'Number of Visual Stimuli' );
     Add( $0039, 'ExcessiveFixationLossesDataFlag', [TKindVR.vrCS], 'Excessive Fixation Losses Data Flag' );
     Add( $0040, 'ExcessiveFixationLosses', [TKindVR.vrCS], 'Excessive Fixation Losses' );
     Add( $0042, 'StimuliRetestingQuantity', [TKindVR.vrUS], 'Stimuli Retesting Quantity' );
     Add( $0044, 'CommentsOnPatientPerformanceOfVisualField', [TKindVR.vrLT], 'Comments on Patient''s Performance of Visual Field' );
     Add( $0045, 'FalseNegativesEstimateFlag', [TKindVR.vrCS], 'False Negatives Estimate Flag' );
     Add( $0046, 'FalseNegativesEstimate', [TKindVR.vrFL], 'False Negatives Estimate' );
     Add( $0048, 'NegativeCatchTrialsQuantity', [TKindVR.vrUS], 'Negative Catch Trials Quantity' );
     Add( $0050, 'FalseNegativesQuantity', [TKindVR.vrUS], 'False Negatives Quantity' );
     Add( $0051, 'ExcessiveFalseNegativesDataFlag', [TKindVR.vrCS], 'Excessive False Negatives Data Flag' );
     Add( $0052, 'ExcessiveFalseNegatives', [TKindVR.vrCS], 'Excessive False Negatives' );
     Add( $0053, 'FalsePositivesEstimateFlag', [TKindVR.vrCS], 'False Positives Estimate Flag' );
     Add( $0054, 'FalsePositivesEstimate', [TKindVR.vrFL], 'False Positives Estimate' );
     Add( $0055, 'CatchTrialsDataFlag', [TKindVR.vrCS], 'Catch Trials Data Flag' );
     Add( $0056, 'PositiveCatchTrialsQuantity', [TKindVR.vrUS], 'Positive Catch Trials Quantity' );
     Add( $0057, 'TestPointNormalsDataFlag', [TKindVR.vrCS], 'Test Point Normals Data Flag' );
     Add( $0058, 'TestPointNormalsSequence', [TKindVR.vrSQ], 'Test Point Normals Sequence' );
     Add( $0059, 'GlobalDeviationProbabilityNormalsFlag', [TKindVR.vrCS], 'Global Deviation Probability Normals Flag' );
     Add( $0060, 'FalsePositivesQuantity', [TKindVR.vrUS], 'False Positives Quantity' );
     Add( $0061, 'ExcessiveFalsePositivesDataFlag', [TKindVR.vrCS], 'Excessive False Positives Data Flag' );
     Add( $0062, 'ExcessiveFalsePositives', [TKindVR.vrCS], 'Excessive False Positives' );
     Add( $0063, 'VisualFieldTestNormalsFlag', [TKindVR.vrCS], 'Visual Field Test Normals Flag' );
     Add( $0064, 'ResultsNormalsSequence', [TKindVR.vrSQ], 'Results Normals Sequence' );
     Add( $0065, 'AgeCorrectedSensitivityDeviationAlgorithmSequence', [TKindVR.vrSQ], 'Age Corrected Sensitivity Deviation Algorithm Sequence' );
     Add( $0066, 'GlobalDeviationFromNormal', [TKindVR.vrFL], 'Global Deviation From Normal' );
     Add( $0067, 'GeneralizedDefectSensitivityDeviationAlgorithmSequence', [TKindVR.vrSQ], 'Generalized Defect Sensitivity Deviation Algorithm Sequence' );
     Add( $0068, 'LocalizedDeviationFromNormal', [TKindVR.vrFL], 'Localized Deviation From Normal' );
     Add( $0069, 'PatientReliabilityIndicator', [TKindVR.vrLO], 'Patient Reliability Indicator' );
     Add( $0070, 'VisualFieldMeanSensitivity', [TKindVR.vrFL], 'Visual Field Mean Sensitivity' );
     Add( $0071, 'GlobalDeviationProbability', [TKindVR.vrFL], 'Global Deviation Probability' );
     Add( $0072, 'LocalDeviationProbabilityNormalsFlag', [TKindVR.vrCS], 'Local Deviation Probability Normals Flag' );
     Add( $0073, 'LocalizedDeviationProbability', [TKindVR.vrFL], 'Localized Deviation Probability' );
     Add( $0074, 'ShortTermFluctuationCalculated', [TKindVR.vrCS], 'Short Term Fluctuation Calculated' );
     Add( $0075, 'ShortTermFluctuation', [TKindVR.vrFL], 'Short Term Fluctuation' );
     Add( $0076, 'ShortTermFluctuationProbabilityCalculated', [TKindVR.vrCS], 'Short Term Fluctuation Probability Calculated' );
     Add( $0077, 'ShortTermFluctuationProbability', [TKindVR.vrFL], 'Short Term Fluctuation Probability' );
     Add( $0078, 'CorrectedLocalizedDeviationFromNormalCalculated', [TKindVR.vrCS], 'Corrected Localized Deviation From Normal Calculated' );
     Add( $0079, 'CorrectedLocalizedDeviationFromNormal', [TKindVR.vrFL], 'Corrected Localized Deviation From Normal' );
     Add( $0080, 'CorrectedLocalizedDeviationFromNormalProbabilityCalculated', [TKindVR.vrCS], 'Corrected Localized Deviation From Normal Probability Calculated' );
     Add( $0081, 'CorrectedLocalizedDeviationFromNormalProbability', [TKindVR.vrFL], 'Corrected Localized Deviation From Normal Probability' );
     Add( $0083, 'GlobalDeviationProbabilitySequence', [TKindVR.vrSQ], 'Global Deviation Probability Sequence' );
     Add( $0085, 'LocalizedDeviationProbabilitySequence', [TKindVR.vrSQ], 'Localized Deviation Probability Sequence' );
     Add( $0086, 'FovealSensitivityMeasured', [TKindVR.vrCS], 'Foveal Sensitivity Measured' );
     Add( $0087, 'FovealSensitivity', [TKindVR.vrFL], 'Foveal Sensitivity' );
     Add( $0088, 'VisualFieldTestDuration', [TKindVR.vrFL], 'Visual Field Test Duration' );
     Add( $0089, 'VisualFieldTestPointSequence', [TKindVR.vrSQ], 'Visual Field Test Point Sequence' );
     Add( $0090, 'VisualFieldTestPointXCoordinate', [TKindVR.vrFL], 'Visual Field Test Point X-Coordinate' );
     Add( $0091, 'VisualFieldTestPointYCoordinate', [TKindVR.vrFL], 'Visual Field Test Point Y-Coordinate' );
     Add( $0092, 'AgeCorrectedSensitivityDeviationValue', [TKindVR.vrFL], 'Age Corrected Sensitivity Deviation Value' );
     Add( $0093, 'StimulusResults', [TKindVR.vrCS], 'Stimulus Results' );
     Add( $0094, 'SensitivityValue', [TKindVR.vrFL], 'Sensitivity Value' );
     Add( $0095, 'RetestStimulusSeen', [TKindVR.vrCS], 'Retest Stimulus Seen' );
     Add( $0096, 'RetestSensitivityValue', [TKindVR.vrFL], 'Retest Sensitivity Value' );
     Add( $0097, 'VisualFieldTestPointNormalsSequence', [TKindVR.vrSQ], 'Visual Field Test Point Normals Sequence' );
     Add( $0098, 'QuantifiedDefect', [TKindVR.vrFL], 'Quantified Defect' );
     Add( $0100, 'AgeCorrectedSensitivityDeviationProbabilityValue', [TKindVR.vrFL], 'Age Corrected Sensitivity Deviation Probability Value' );
     Add( $0102, 'GeneralizedDefectCorrectedSensitivityDeviationFlag', [TKindVR.vrCS], 'Generalized Defect Corrected Sensitivity Deviation Flag' );
     Add( $0103, 'GeneralizedDefectCorrectedSensitivityDeviationValue', [TKindVR.vrFL], 'Generalized Defect Corrected Sensitivity Deviation Value' );
     Add( $0104, 'GeneralizedDefectCorrectedSensitivityDeviationProbabilityValue', [TKindVR.vrFL], 'Generalized Defect Corrected Sensitivity Deviation Probability Value' );
     Add( $0105, 'MinimumSensitivityValue', [TKindVR.vrFL], 'Minimum Sensitivity Value' );
     Add( $0106, 'BlindSpotLocalized', [TKindVR.vrCS], 'Blind Spot Localized' );
     Add( $0107, 'BlindSpotXCoordinate', [TKindVR.vrFL], 'Blind Spot X-Coordinate' );
     Add( $0108, 'BlindSpotYCoordinate', [TKindVR.vrFL], 'Blind Spot Y-Coordinate' );
     Add( $0110, 'VisualAcuityMeasurementSequence', [TKindVR.vrSQ], 'Visual Acuity Measurement Sequence' );
     Add( $0112, 'RefractiveParametersUsedOnPatientSequence', [TKindVR.vrSQ], 'Refractive Parameters Used on Patient Sequence' );
     Add( $0113, 'MeasurementLaterality', [TKindVR.vrCS], 'Measurement Laterality' );
     Add( $0114, 'OphthalmicPatientClinicalInformationLeftEyeSequence', [TKindVR.vrSQ], 'Ophthalmic Patient Clinical Information Left Eye Sequence' );
     Add( $0115, 'OphthalmicPatientClinicalInformationRightEyeSequence', [TKindVR.vrSQ], 'Ophthalmic Patient Clinical Information Right Eye Sequence' );
     Add( $0117, 'FovealPointNormativeDataFlag', [TKindVR.vrCS], 'Foveal Point Normative Data Flag' );
     Add( $0118, 'FovealPointProbabilityValue', [TKindVR.vrFL], 'Foveal Point Probability Value' );
     Add( $0120, 'ScreeningBaselineMeasured', [TKindVR.vrCS], 'Screening Baseline Measured' );
     Add( $0122, 'ScreeningBaselineMeasuredSequence', [TKindVR.vrSQ], 'Screening Baseline Measured Sequence' );
     Add( $0124, 'ScreeningBaselineType', [TKindVR.vrCS], 'Screening Baseline Type' );
     Add( $0126, 'ScreeningBaselineValue', [TKindVR.vrFL], 'Screening Baseline Value' );
     Add( $0202, 'AlgorithmSource', [TKindVR.vrLO], 'Algorithm Source' );
     Add( $0306, 'DataSetName', [TKindVR.vrLO], 'Data Set Name' );
     Add( $0307, 'DataSetVersion', [TKindVR.vrLO], 'Data Set Version' );
     Add( $0308, 'DataSetSource', [TKindVR.vrLO], 'Data Set Source' );
     Add( $0309, 'DataSetDescription', [TKindVR.vrLO], 'Data Set Description' );
     Add( $0317, 'VisualFieldTestReliabilityGlobalIndexSequence', [TKindVR.vrSQ], 'Visual Field Test Reliability Global Index Sequence' );
     Add( $0320, 'VisualFieldGlobalResultsIndexSequence', [TKindVR.vrSQ], 'Visual Field Global Results Index Sequence' );
     Add( $0325, 'DataObservationSequence', [TKindVR.vrSQ], 'Data Observation Sequence' );
     Add( $0338, 'IndexNormalsFlag', [TKindVR.vrCS], 'Index Normals Flag' );
     Add( $0341, 'IndexProbability', [TKindVR.vrFL], 'Index Probability' );
     Add( $0344, 'IndexProbabilitySequence', [TKindVR.vrSQ], 'Index Probability Sequence' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
