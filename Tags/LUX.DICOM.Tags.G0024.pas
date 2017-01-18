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
       constructor Create;
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

constructor TdcmGrup0024.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0010, 'VisualFieldHorizontalExtent', [TTypeVR.vrFL], 'Visual Field Horizontal Extent' );
     Add( $0011, 'VisualFieldVerticalExtent', [TTypeVR.vrFL], 'Visual Field Vertical Extent' );
     Add( $0012, 'VisualFieldShape', [TTypeVR.vrCS], 'Visual Field Shape' );
     Add( $0016, 'ScreeningTestModeCodeSequence', [TTypeVR.vrSQ], 'Screening Test Mode Code Sequence' );
     Add( $0018, 'MaximumStimulusLuminance', [TTypeVR.vrFL], 'Maximum Stimulus Luminance' );
     Add( $0020, 'BackgroundLuminance', [TTypeVR.vrFL], 'Background Luminance' );
     Add( $0021, 'StimulusColorCodeSequence', [TTypeVR.vrSQ], 'Stimulus Color Code Sequence' );
     Add( $0024, 'BackgroundIlluminationColorCodeSequence', [TTypeVR.vrSQ], 'Background Illumination Color Code Sequence' );
     Add( $0025, 'StimulusArea', [TTypeVR.vrFL], 'Stimulus Area' );
     Add( $0028, 'StimulusPresentationTime', [TTypeVR.vrFL], 'Stimulus Presentation Time' );
     Add( $0032, 'FixationSequence', [TTypeVR.vrSQ], 'Fixation Sequence' );
     Add( $0033, 'FixationMonitoringCodeSequence', [TTypeVR.vrSQ], 'Fixation Monitoring Code Sequence' );
     Add( $0034, 'VisualFieldCatchTrialSequence', [TTypeVR.vrSQ], 'Visual Field Catch Trial Sequence' );
     Add( $0035, 'FixationCheckedQuantity', [TTypeVR.vrUS], 'Fixation Checked Quantity' );
     Add( $0036, 'PatientNotProperlyFixatedQuantity', [TTypeVR.vrUS], 'Patient Not Properly Fixated Quantity' );
     Add( $0037, 'PresentedVisualStimuliDataFlag', [TTypeVR.vrCS], 'Presented Visual Stimuli Data Flag' );
     Add( $0038, 'NumberOfVisualStimuli', [TTypeVR.vrUS], 'Number of Visual Stimuli' );
     Add( $0039, 'ExcessiveFixationLossesDataFlag', [TTypeVR.vrCS], 'Excessive Fixation Losses Data Flag' );
     Add( $0040, 'ExcessiveFixationLosses', [TTypeVR.vrCS], 'Excessive Fixation Losses' );
     Add( $0042, 'StimuliRetestingQuantity', [TTypeVR.vrUS], 'Stimuli Retesting Quantity' );
     Add( $0044, 'CommentsOnPatientPerformanceOfVisualField', [TTypeVR.vrLT], 'Comments on Patient''s Performance of Visual Field' );
     Add( $0045, 'FalseNegativesEstimateFlag', [TTypeVR.vrCS], 'False Negatives Estimate Flag' );
     Add( $0046, 'FalseNegativesEstimate', [TTypeVR.vrFL], 'False Negatives Estimate' );
     Add( $0048, 'NegativeCatchTrialsQuantity', [TTypeVR.vrUS], 'Negative Catch Trials Quantity' );
     Add( $0050, 'FalseNegativesQuantity', [TTypeVR.vrUS], 'False Negatives Quantity' );
     Add( $0051, 'ExcessiveFalseNegativesDataFlag', [TTypeVR.vrCS], 'Excessive False Negatives Data Flag' );
     Add( $0052, 'ExcessiveFalseNegatives', [TTypeVR.vrCS], 'Excessive False Negatives' );
     Add( $0053, 'FalsePositivesEstimateFlag', [TTypeVR.vrCS], 'False Positives Estimate Flag' );
     Add( $0054, 'FalsePositivesEstimate', [TTypeVR.vrFL], 'False Positives Estimate' );
     Add( $0055, 'CatchTrialsDataFlag', [TTypeVR.vrCS], 'Catch Trials Data Flag' );
     Add( $0056, 'PositiveCatchTrialsQuantity', [TTypeVR.vrUS], 'Positive Catch Trials Quantity' );
     Add( $0057, 'TestPointNormalsDataFlag', [TTypeVR.vrCS], 'Test Point Normals Data Flag' );
     Add( $0058, 'TestPointNormalsSequence', [TTypeVR.vrSQ], 'Test Point Normals Sequence' );
     Add( $0059, 'GlobalDeviationProbabilityNormalsFlag', [TTypeVR.vrCS], 'Global Deviation Probability Normals Flag' );
     Add( $0060, 'FalsePositivesQuantity', [TTypeVR.vrUS], 'False Positives Quantity' );
     Add( $0061, 'ExcessiveFalsePositivesDataFlag', [TTypeVR.vrCS], 'Excessive False Positives Data Flag' );
     Add( $0062, 'ExcessiveFalsePositives', [TTypeVR.vrCS], 'Excessive False Positives' );
     Add( $0063, 'VisualFieldTestNormalsFlag', [TTypeVR.vrCS], 'Visual Field Test Normals Flag' );
     Add( $0064, 'ResultsNormalsSequence', [TTypeVR.vrSQ], 'Results Normals Sequence' );
     Add( $0065, 'AgeCorrectedSensitivityDeviationAlgorithmSequence', [TTypeVR.vrSQ], 'Age Corrected Sensitivity Deviation Algorithm Sequence' );
     Add( $0066, 'GlobalDeviationFromNormal', [TTypeVR.vrFL], 'Global Deviation From Normal' );
     Add( $0067, 'GeneralizedDefectSensitivityDeviationAlgorithmSequence', [TTypeVR.vrSQ], 'Generalized Defect Sensitivity Deviation Algorithm Sequence' );
     Add( $0068, 'LocalizedDeviationFromNormal', [TTypeVR.vrFL], 'Localized Deviation From Normal' );
     Add( $0069, 'PatientReliabilityIndicator', [TTypeVR.vrLO], 'Patient Reliability Indicator' );
     Add( $0070, 'VisualFieldMeanSensitivity', [TTypeVR.vrFL], 'Visual Field Mean Sensitivity' );
     Add( $0071, 'GlobalDeviationProbability', [TTypeVR.vrFL], 'Global Deviation Probability' );
     Add( $0072, 'LocalDeviationProbabilityNormalsFlag', [TTypeVR.vrCS], 'Local Deviation Probability Normals Flag' );
     Add( $0073, 'LocalizedDeviationProbability', [TTypeVR.vrFL], 'Localized Deviation Probability' );
     Add( $0074, 'ShortTermFluctuationCalculated', [TTypeVR.vrCS], 'Short Term Fluctuation Calculated' );
     Add( $0075, 'ShortTermFluctuation', [TTypeVR.vrFL], 'Short Term Fluctuation' );
     Add( $0076, 'ShortTermFluctuationProbabilityCalculated', [TTypeVR.vrCS], 'Short Term Fluctuation Probability Calculated' );
     Add( $0077, 'ShortTermFluctuationProbability', [TTypeVR.vrFL], 'Short Term Fluctuation Probability' );
     Add( $0078, 'CorrectedLocalizedDeviationFromNormalCalculated', [TTypeVR.vrCS], 'Corrected Localized Deviation From Normal Calculated' );
     Add( $0079, 'CorrectedLocalizedDeviationFromNormal', [TTypeVR.vrFL], 'Corrected Localized Deviation From Normal' );
     Add( $0080, 'CorrectedLocalizedDeviationFromNormalProbabilityCalculated', [TTypeVR.vrCS], 'Corrected Localized Deviation From Normal Probability Calculated' );
     Add( $0081, 'CorrectedLocalizedDeviationFromNormalProbability', [TTypeVR.vrFL], 'Corrected Localized Deviation From Normal Probability' );
     Add( $0083, 'GlobalDeviationProbabilitySequence', [TTypeVR.vrSQ], 'Global Deviation Probability Sequence' );
     Add( $0085, 'LocalizedDeviationProbabilitySequence', [TTypeVR.vrSQ], 'Localized Deviation Probability Sequence' );
     Add( $0086, 'FovealSensitivityMeasured', [TTypeVR.vrCS], 'Foveal Sensitivity Measured' );
     Add( $0087, 'FovealSensitivity', [TTypeVR.vrFL], 'Foveal Sensitivity' );
     Add( $0088, 'VisualFieldTestDuration', [TTypeVR.vrFL], 'Visual Field Test Duration' );
     Add( $0089, 'VisualFieldTestPointSequence', [TTypeVR.vrSQ], 'Visual Field Test Point Sequence' );
     Add( $0090, 'VisualFieldTestPointXCoordinate', [TTypeVR.vrFL], 'Visual Field Test Point X-Coordinate' );
     Add( $0091, 'VisualFieldTestPointYCoordinate', [TTypeVR.vrFL], 'Visual Field Test Point Y-Coordinate' );
     Add( $0092, 'AgeCorrectedSensitivityDeviationValue', [TTypeVR.vrFL], 'Age Corrected Sensitivity Deviation Value' );
     Add( $0093, 'StimulusResults', [TTypeVR.vrCS], 'Stimulus Results' );
     Add( $0094, 'SensitivityValue', [TTypeVR.vrFL], 'Sensitivity Value' );
     Add( $0095, 'RetestStimulusSeen', [TTypeVR.vrCS], 'Retest Stimulus Seen' );
     Add( $0096, 'RetestSensitivityValue', [TTypeVR.vrFL], 'Retest Sensitivity Value' );
     Add( $0097, 'VisualFieldTestPointNormalsSequence', [TTypeVR.vrSQ], 'Visual Field Test Point Normals Sequence' );
     Add( $0098, 'QuantifiedDefect', [TTypeVR.vrFL], 'Quantified Defect' );
     Add( $0100, 'AgeCorrectedSensitivityDeviationProbabilityValue', [TTypeVR.vrFL], 'Age Corrected Sensitivity Deviation Probability Value' );
     Add( $0102, 'GeneralizedDefectCorrectedSensitivityDeviationFlag', [TTypeVR.vrCS], 'Generalized Defect Corrected Sensitivity Deviation Flag' );
     Add( $0103, 'GeneralizedDefectCorrectedSensitivityDeviationValue', [TTypeVR.vrFL], 'Generalized Defect Corrected Sensitivity Deviation Value' );
     Add( $0104, 'GeneralizedDefectCorrectedSensitivityDeviationProbabilityValue', [TTypeVR.vrFL], 'Generalized Defect Corrected Sensitivity Deviation Probability Value' );
     Add( $0105, 'MinimumSensitivityValue', [TTypeVR.vrFL], 'Minimum Sensitivity Value' );
     Add( $0106, 'BlindSpotLocalized', [TTypeVR.vrCS], 'Blind Spot Localized' );
     Add( $0107, 'BlindSpotXCoordinate', [TTypeVR.vrFL], 'Blind Spot X-Coordinate' );
     Add( $0108, 'BlindSpotYCoordinate', [TTypeVR.vrFL], 'Blind Spot Y-Coordinate' );
     Add( $0110, 'VisualAcuityMeasurementSequence', [TTypeVR.vrSQ], 'Visual Acuity Measurement Sequence' );
     Add( $0112, 'RefractiveParametersUsedOnPatientSequence', [TTypeVR.vrSQ], 'Refractive Parameters Used on Patient Sequence' );
     Add( $0113, 'MeasurementLaterality', [TTypeVR.vrCS], 'Measurement Laterality' );
     Add( $0114, 'OphthalmicPatientClinicalInformationLeftEyeSequence', [TTypeVR.vrSQ], 'Ophthalmic Patient Clinical Information Left Eye Sequence' );
     Add( $0115, 'OphthalmicPatientClinicalInformationRightEyeSequence', [TTypeVR.vrSQ], 'Ophthalmic Patient Clinical Information Right Eye Sequence' );
     Add( $0117, 'FovealPointNormativeDataFlag', [TTypeVR.vrCS], 'Foveal Point Normative Data Flag' );
     Add( $0118, 'FovealPointProbabilityValue', [TTypeVR.vrFL], 'Foveal Point Probability Value' );
     Add( $0120, 'ScreeningBaselineMeasured', [TTypeVR.vrCS], 'Screening Baseline Measured' );
     Add( $0122, 'ScreeningBaselineMeasuredSequence', [TTypeVR.vrSQ], 'Screening Baseline Measured Sequence' );
     Add( $0124, 'ScreeningBaselineType', [TTypeVR.vrCS], 'Screening Baseline Type' );
     Add( $0126, 'ScreeningBaselineValue', [TTypeVR.vrFL], 'Screening Baseline Value' );
     Add( $0202, 'AlgorithmSource', [TTypeVR.vrLO], 'Algorithm Source' );
     Add( $0306, 'DataSetName', [TTypeVR.vrLO], 'Data Set Name' );
     Add( $0307, 'DataSetVersion', [TTypeVR.vrLO], 'Data Set Version' );
     Add( $0308, 'DataSetSource', [TTypeVR.vrLO], 'Data Set Source' );
     Add( $0309, 'DataSetDescription', [TTypeVR.vrLO], 'Data Set Description' );
     Add( $0317, 'VisualFieldTestReliabilityGlobalIndexSequence', [TTypeVR.vrSQ], 'Visual Field Test Reliability Global Index Sequence' );
     Add( $0320, 'VisualFieldGlobalResultsIndexSequence', [TTypeVR.vrSQ], 'Visual Field Global Results Index Sequence' );
     Add( $0325, 'DataObservationSequence', [TTypeVR.vrSQ], 'Data Observation Sequence' );
     Add( $0338, 'IndexNormalsFlag', [TTypeVR.vrCS], 'Index Normals Flag' );
     Add( $0341, 'IndexProbability', [TTypeVR.vrFL], 'Index Probability' );
     Add( $0344, 'IndexProbabilitySequence', [TTypeVR.vrSQ], 'Index Probability Sequence' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
