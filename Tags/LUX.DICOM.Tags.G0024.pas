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
     Add( $0010, TKindVR.vrFL, 'Visual Field Horizontal Extent' );
     Add( $0011, TKindVR.vrFL, 'Visual Field Vertical Extent' );
     Add( $0012, TKindVR.vrCS, 'Visual Field Shape' );
     Add( $0016, TKindVR.vrSQ, 'Screening Test Mode Code Sequence' );
     Add( $0018, TKindVR.vrFL, 'Maximum Stimulus Luminance' );
     Add( $0020, TKindVR.vrFL, 'Background Luminance' );
     Add( $0021, TKindVR.vrSQ, 'Stimulus Color Code Sequence' );
     Add( $0024, TKindVR.vrSQ, 'Background Illumination Color Code Sequence' );
     Add( $0025, TKindVR.vrFL, 'Stimulus Area' );
     Add( $0028, TKindVR.vrFL, 'Stimulus Presentation Time' );
     Add( $0032, TKindVR.vrSQ, 'Fixation Sequence' );
     Add( $0033, TKindVR.vrSQ, 'Fixation Monitoring Code Sequence' );
     Add( $0034, TKindVR.vrSQ, 'Visual Field Catch Trial Sequence' );
     Add( $0035, TKindVR.vrUS, 'Fixation Checked Quantity' );
     Add( $0036, TKindVR.vrUS, 'Patient Not Properly Fixated Quantity' );
     Add( $0037, TKindVR.vrCS, 'Presented Visual Stimuli Data Flag' );
     Add( $0038, TKindVR.vrUS, 'Number of Visual Stimuli' );
     Add( $0039, TKindVR.vrCS, 'Excessive Fixation Losses Data Flag' );
     Add( $0040, TKindVR.vrCS, 'Excessive Fixation Losses' );
     Add( $0042, TKindVR.vrUS, 'Stimuli Retesting Quantity' );
     Add( $0044, TKindVR.vrLT, 'Comments on Patient''s Performance of Visual Field' );
     Add( $0045, TKindVR.vrCS, 'False Negatives Estimate Flag' );
     Add( $0046, TKindVR.vrFL, 'False Negatives Estimate' );
     Add( $0048, TKindVR.vrUS, 'Negative Catch Trials Quantity' );
     Add( $0050, TKindVR.vrUS, 'False Negatives Quantity' );
     Add( $0051, TKindVR.vrCS, 'Excessive False Negatives Data Flag' );
     Add( $0052, TKindVR.vrCS, 'Excessive False Negatives' );
     Add( $0053, TKindVR.vrCS, 'False Positives Estimate Flag' );
     Add( $0054, TKindVR.vrFL, 'False Positives Estimate' );
     Add( $0055, TKindVR.vrCS, 'Catch Trials Data Flag' );
     Add( $0056, TKindVR.vrUS, 'Positive Catch Trials Quantity' );
     Add( $0057, TKindVR.vrCS, 'Test Point Normals Data Flag' );
     Add( $0058, TKindVR.vrSQ, 'Test Point Normals Sequence' );
     Add( $0059, TKindVR.vrCS, 'Global Deviation Probability Normals Flag' );
     Add( $0060, TKindVR.vrUS, 'False Positives Quantity' );
     Add( $0061, TKindVR.vrCS, 'Excessive False Positives Data Flag' );
     Add( $0062, TKindVR.vrCS, 'Excessive False Positives' );
     Add( $0063, TKindVR.vrCS, 'Visual Field Test Normals Flag' );
     Add( $0064, TKindVR.vrSQ, 'Results Normals Sequence' );
     Add( $0065, TKindVR.vrSQ, 'Age Corrected Sensitivity Deviation Algorithm Sequence' );
     Add( $0066, TKindVR.vrFL, 'Global Deviation From Normal' );
     Add( $0067, TKindVR.vrSQ, 'Generalized Defect Sensitivity Deviation Algorithm Sequence' );
     Add( $0068, TKindVR.vrFL, 'Localized Deviation From Normal' );
     Add( $0069, TKindVR.vrLO, 'Patient Reliability Indicator' );
     Add( $0070, TKindVR.vrFL, 'Visual Field Mean Sensitivity' );
     Add( $0071, TKindVR.vrFL, 'Global Deviation Probability' );
     Add( $0072, TKindVR.vrCS, 'Local Deviation Probability Normals Flag' );
     Add( $0073, TKindVR.vrFL, 'Localized Deviation Probability' );
     Add( $0074, TKindVR.vrCS, 'Short Term Fluctuation Calculated' );
     Add( $0075, TKindVR.vrFL, 'Short Term Fluctuation' );
     Add( $0076, TKindVR.vrCS, 'Short Term Fluctuation Probability Calculated' );
     Add( $0077, TKindVR.vrFL, 'Short Term Fluctuation Probability' );
     Add( $0078, TKindVR.vrCS, 'Corrected Localized Deviation From Normal Calculated' );
     Add( $0079, TKindVR.vrFL, 'Corrected Localized Deviation From Normal' );
     Add( $0080, TKindVR.vrCS, 'Corrected Localized Deviation From Normal Probability Calculated' );
     Add( $0081, TKindVR.vrFL, 'Corrected Localized Deviation From Normal Probability' );
     Add( $0083, TKindVR.vrSQ, 'Global Deviation Probability Sequence' );
     Add( $0085, TKindVR.vrSQ, 'Localized Deviation Probability Sequence' );
     Add( $0086, TKindVR.vrCS, 'Foveal Sensitivity Measured' );
     Add( $0087, TKindVR.vrFL, 'Foveal Sensitivity' );
     Add( $0088, TKindVR.vrFL, 'Visual Field Test Duration' );
     Add( $0089, TKindVR.vrSQ, 'Visual Field Test Point Sequence' );
     Add( $0090, TKindVR.vrFL, 'Visual Field Test Point X-Coordinate' );
     Add( $0091, TKindVR.vrFL, 'Visual Field Test Point Y-Coordinate' );
     Add( $0092, TKindVR.vrFL, 'Age Corrected Sensitivity Deviation Value' );
     Add( $0093, TKindVR.vrCS, 'Stimulus Results' );
     Add( $0094, TKindVR.vrFL, 'Sensitivity Value' );
     Add( $0095, TKindVR.vrCS, 'Retest Stimulus Seen' );
     Add( $0096, TKindVR.vrFL, 'Retest Sensitivity Value' );
     Add( $0097, TKindVR.vrSQ, 'Visual Field Test Point Normals Sequence' );
     Add( $0098, TKindVR.vrFL, 'Quantified Defect' );
     Add( $0100, TKindVR.vrFL, 'Age Corrected Sensitivity Deviation Probability Value' );
     Add( $0102, TKindVR.vrCS, 'Generalized Defect Corrected Sensitivity Deviation Flag' );
     Add( $0103, TKindVR.vrFL, 'Generalized Defect Corrected Sensitivity Deviation Value' );
     Add( $0104, TKindVR.vrFL, 'Generalized Defect Corrected Sensitivity Deviation Probability Value' );
     Add( $0105, TKindVR.vrFL, 'Minimum Sensitivity Value' );
     Add( $0106, TKindVR.vrCS, 'Blind Spot Localized' );
     Add( $0107, TKindVR.vrFL, 'Blind Spot X-Coordinate' );
     Add( $0108, TKindVR.vrFL, 'Blind Spot Y-Coordinate' );
     Add( $0110, TKindVR.vrSQ, 'Visual Acuity Measurement Sequence' );
     Add( $0112, TKindVR.vrSQ, 'Refractive Parameters Used on Patient Sequence' );
     Add( $0113, TKindVR.vrCS, 'Measurement Laterality' );
     Add( $0114, TKindVR.vrSQ, 'Ophthalmic Patient Clinical Information Left Eye Sequence' );
     Add( $0115, TKindVR.vrSQ, 'Ophthalmic Patient Clinical Information Right Eye Sequence' );
     Add( $0117, TKindVR.vrCS, 'Foveal Point Normative Data Flag' );
     Add( $0118, TKindVR.vrFL, 'Foveal Point Probability Value' );
     Add( $0120, TKindVR.vrCS, 'Screening Baseline Measured' );
     Add( $0122, TKindVR.vrSQ, 'Screening Baseline Measured Sequence' );
     Add( $0124, TKindVR.vrCS, 'Screening Baseline Type' );
     Add( $0126, TKindVR.vrFL, 'Screening Baseline Value' );
     Add( $0202, TKindVR.vrLO, 'Algorithm Source' );
     Add( $0306, TKindVR.vrLO, 'Data Set Name' );
     Add( $0307, TKindVR.vrLO, 'Data Set Version' );
     Add( $0308, TKindVR.vrLO, 'Data Set Source' );
     Add( $0309, TKindVR.vrLO, 'Data Set Description' );
     Add( $0317, TKindVR.vrSQ, 'Visual Field Test Reliability Global Index Sequence' );
     Add( $0320, TKindVR.vrSQ, 'Visual Field Global Results Index Sequence' );
     Add( $0325, TKindVR.vrSQ, 'Data Observation Sequence' );
     Add( $0338, TKindVR.vrCS, 'Index Normals Flag' );
     Add( $0341, TKindVR.vrFL, 'Index Probability' );
     Add( $0344, TKindVR.vrSQ, 'Index Probability Sequence' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
