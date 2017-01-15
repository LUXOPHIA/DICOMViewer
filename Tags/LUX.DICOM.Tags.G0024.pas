unit LUX.DICOM.Tags.G0024;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems0024

     TDICOMElems0024 = class( TDICOMElems )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems0024

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TDICOMElems0024.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0010, [TTypeVR.vrFL], 'Visual Field Horizontal Extent' );
     Add( $0011, [TTypeVR.vrFL], 'Visual Field Vertical Extent' );
     Add( $0012, [TTypeVR.vrCS], 'Visual Field Shape' );
     Add( $0016, [TTypeVR.vrSQ], 'Screening Test Mode Code Sequence' );
     Add( $0018, [TTypeVR.vrFL], 'Maximum Stimulus Luminance' );
     Add( $0020, [TTypeVR.vrFL], 'Background Luminance' );
     Add( $0021, [TTypeVR.vrSQ], 'Stimulus Color Code Sequence' );
     Add( $0024, [TTypeVR.vrSQ], 'Background Illumination Color Code Sequence' );
     Add( $0025, [TTypeVR.vrFL], 'Stimulus Area' );
     Add( $0028, [TTypeVR.vrFL], 'Stimulus Presentation Time' );
     Add( $0032, [TTypeVR.vrSQ], 'Fixation Sequence' );
     Add( $0033, [TTypeVR.vrSQ], 'Fixation Monitoring Code Sequence' );
     Add( $0034, [TTypeVR.vrSQ], 'Visual Field Catch Trial Sequence' );
     Add( $0035, [TTypeVR.vrUS], 'Fixation Checked Quantity' );
     Add( $0036, [TTypeVR.vrUS], 'Patient Not Properly Fixated Quantity' );
     Add( $0037, [TTypeVR.vrCS], 'Presented Visual Stimuli Data Flag' );
     Add( $0038, [TTypeVR.vrUS], 'Number of Visual Stimuli' );
     Add( $0039, [TTypeVR.vrCS], 'Excessive Fixation Losses Data Flag' );
     Add( $0040, [TTypeVR.vrCS], 'Excessive Fixation Losses' );
     Add( $0042, [TTypeVR.vrUS], 'Stimuli Retesting Quantity' );
     Add( $0044, [TTypeVR.vrLT], 'Comments on Patient''s Performance of Visual Field' );
     Add( $0045, [TTypeVR.vrCS], 'False Negatives Estimate Flag' );
     Add( $0046, [TTypeVR.vrFL], 'False Negatives Estimate' );
     Add( $0048, [TTypeVR.vrUS], 'Negative Catch Trials Quantity' );
     Add( $0050, [TTypeVR.vrUS], 'False Negatives Quantity' );
     Add( $0051, [TTypeVR.vrCS], 'Excessive False Negatives Data Flag' );
     Add( $0052, [TTypeVR.vrCS], 'Excessive False Negatives' );
     Add( $0053, [TTypeVR.vrCS], 'False Positives Estimate Flag' );
     Add( $0054, [TTypeVR.vrFL], 'False Positives Estimate' );
     Add( $0055, [TTypeVR.vrCS], 'Catch Trials Data Flag' );
     Add( $0056, [TTypeVR.vrUS], 'Positive Catch Trials Quantity' );
     Add( $0057, [TTypeVR.vrCS], 'Test Point Normals Data Flag' );
     Add( $0058, [TTypeVR.vrSQ], 'Test Point Normals Sequence' );
     Add( $0059, [TTypeVR.vrCS], 'Global Deviation Probability Normals Flag' );
     Add( $0060, [TTypeVR.vrUS], 'False Positives Quantity' );
     Add( $0061, [TTypeVR.vrCS], 'Excessive False Positives Data Flag' );
     Add( $0062, [TTypeVR.vrCS], 'Excessive False Positives' );
     Add( $0063, [TTypeVR.vrCS], 'Visual Field Test Normals Flag' );
     Add( $0064, [TTypeVR.vrSQ], 'Results Normals Sequence' );
     Add( $0065, [TTypeVR.vrSQ], 'Age Corrected Sensitivity Deviation Algorithm Sequence' );
     Add( $0066, [TTypeVR.vrFL], 'Global Deviation From Normal' );
     Add( $0067, [TTypeVR.vrSQ], 'Generalized Defect Sensitivity Deviation Algorithm Sequence' );
     Add( $0068, [TTypeVR.vrFL], 'Localized Deviation From Normal' );
     Add( $0069, [TTypeVR.vrLO], 'Patient Reliability Indicator' );
     Add( $0070, [TTypeVR.vrFL], 'Visual Field Mean Sensitivity' );
     Add( $0071, [TTypeVR.vrFL], 'Global Deviation Probability' );
     Add( $0072, [TTypeVR.vrCS], 'Local Deviation Probability Normals Flag' );
     Add( $0073, [TTypeVR.vrFL], 'Localized Deviation Probability' );
     Add( $0074, [TTypeVR.vrCS], 'Short Term Fluctuation Calculated' );
     Add( $0075, [TTypeVR.vrFL], 'Short Term Fluctuation' );
     Add( $0076, [TTypeVR.vrCS], 'Short Term Fluctuation Probability Calculated' );
     Add( $0077, [TTypeVR.vrFL], 'Short Term Fluctuation Probability' );
     Add( $0078, [TTypeVR.vrCS], 'Corrected Localized Deviation From Normal Calculated' );
     Add( $0079, [TTypeVR.vrFL], 'Corrected Localized Deviation From Normal' );
     Add( $0080, [TTypeVR.vrCS], 'Corrected Localized Deviation From Normal Probability Calculated' );
     Add( $0081, [TTypeVR.vrFL], 'Corrected Localized Deviation From Normal Probability' );
     Add( $0083, [TTypeVR.vrSQ], 'Global Deviation Probability Sequence' );
     Add( $0085, [TTypeVR.vrSQ], 'Localized Deviation Probability Sequence' );
     Add( $0086, [TTypeVR.vrCS], 'Foveal Sensitivity Measured' );
     Add( $0087, [TTypeVR.vrFL], 'Foveal Sensitivity' );
     Add( $0088, [TTypeVR.vrFL], 'Visual Field Test Duration' );
     Add( $0089, [TTypeVR.vrSQ], 'Visual Field Test Point Sequence' );
     Add( $0090, [TTypeVR.vrFL], 'Visual Field Test Point X-Coordinate' );
     Add( $0091, [TTypeVR.vrFL], 'Visual Field Test Point Y-Coordinate' );
     Add( $0092, [TTypeVR.vrFL], 'Age Corrected Sensitivity Deviation Value' );
     Add( $0093, [TTypeVR.vrCS], 'Stimulus Results' );
     Add( $0094, [TTypeVR.vrFL], 'Sensitivity Value' );
     Add( $0095, [TTypeVR.vrCS], 'Retest Stimulus Seen' );
     Add( $0096, [TTypeVR.vrFL], 'Retest Sensitivity Value' );
     Add( $0097, [TTypeVR.vrSQ], 'Visual Field Test Point Normals Sequence' );
     Add( $0098, [TTypeVR.vrFL], 'Quantified Defect' );
     Add( $0100, [TTypeVR.vrFL], 'Age Corrected Sensitivity Deviation Probability Value' );
     Add( $0102, [TTypeVR.vrCS], 'Generalized Defect Corrected Sensitivity Deviation Flag' );
     Add( $0103, [TTypeVR.vrFL], 'Generalized Defect Corrected Sensitivity Deviation Value' );
     Add( $0104, [TTypeVR.vrFL], 'Generalized Defect Corrected Sensitivity Deviation Probability Value' );
     Add( $0105, [TTypeVR.vrFL], 'Minimum Sensitivity Value' );
     Add( $0106, [TTypeVR.vrCS], 'Blind Spot Localized' );
     Add( $0107, [TTypeVR.vrFL], 'Blind Spot X-Coordinate' );
     Add( $0108, [TTypeVR.vrFL], 'Blind Spot Y-Coordinate' );
     Add( $0110, [TTypeVR.vrSQ], 'Visual Acuity Measurement Sequence' );
     Add( $0112, [TTypeVR.vrSQ], 'Refractive Parameters Used on Patient Sequence' );
     Add( $0113, [TTypeVR.vrCS], 'Measurement Laterality' );
     Add( $0114, [TTypeVR.vrSQ], 'Ophthalmic Patient Clinical Information Left Eye Sequence' );
     Add( $0115, [TTypeVR.vrSQ], 'Ophthalmic Patient Clinical Information Right Eye Sequence' );
     Add( $0117, [TTypeVR.vrCS], 'Foveal Point Normative Data Flag' );
     Add( $0118, [TTypeVR.vrFL], 'Foveal Point Probability Value' );
     Add( $0120, [TTypeVR.vrCS], 'Screening Baseline Measured' );
     Add( $0122, [TTypeVR.vrSQ], 'Screening Baseline Measured Sequence' );
     Add( $0124, [TTypeVR.vrCS], 'Screening Baseline Type' );
     Add( $0126, [TTypeVR.vrFL], 'Screening Baseline Value' );
     Add( $0202, [TTypeVR.vrLO], 'Algorithm Source' );
     Add( $0306, [TTypeVR.vrLO], 'Data Set Name' );
     Add( $0307, [TTypeVR.vrLO], 'Data Set Version' );
     Add( $0308, [TTypeVR.vrLO], 'Data Set Source' );
     Add( $0309, [TTypeVR.vrLO], 'Data Set Description' );
     Add( $0317, [TTypeVR.vrSQ], 'Visual Field Test Reliability Global Index Sequence' );
     Add( $0320, [TTypeVR.vrSQ], 'Visual Field Global Results Index Sequence' );
     Add( $0325, [TTypeVR.vrSQ], 'Data Observation Sequence' );
     Add( $0338, [TTypeVR.vrCS], 'Index Normals Flag' );
     Add( $0341, [TTypeVR.vrFL], 'Index Probability' );
     Add( $0344, [TTypeVR.vrSQ], 'Index Probability Sequence' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
