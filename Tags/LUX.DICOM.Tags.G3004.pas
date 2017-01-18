unit LUX.DICOM.Tags.G3004;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup3004

     TdcmGrup3004 = class( TdcmGrup )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup3004

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmGrup3004.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0001, 'DVHType', [TTypeVR.vrCS], 'DVH Type' );
     Add( $0002, 'DoseUnits', [TTypeVR.vrCS], 'Dose Units' );
     Add( $0004, 'DoseType', [TTypeVR.vrCS], 'Dose Type' );
     Add( $0005, 'SpatialTransformOfDose', [TTypeVR.vrCS], 'Spatial Transform of Dose' );
     Add( $0006, 'DoseComment', [TTypeVR.vrLO], 'Dose Comment' );
     Add( $0008, 'NormalizationPoint', [TTypeVR.vrDS], 'Normalization Point' );
     Add( $000A, 'DoseSummationType', [TTypeVR.vrCS], 'Dose Summation Type' );
     Add( $000C, 'GridFrameOffsetVector', [TTypeVR.vrDS], 'Grid Frame Offset Vector' );
     Add( $000E, 'DoseGridScaling', [TTypeVR.vrDS], 'Dose Grid Scaling' );
     Add( $0010, 'RTDoseROISequence', [TTypeVR.vrSQ], 'RT Dose ROI Sequence' );
     Add( $0012, 'DoseValue', [TTypeVR.vrDS], 'Dose Value' );
     Add( $0014, 'TissueHeterogeneityCorrection', [TTypeVR.vrCS], 'Tissue Heterogeneity Correction' );
     Add( $0040, 'DVHNormalizationPoint', [TTypeVR.vrDS], 'DVH Normalization Point' );
     Add( $0042, 'DVHNormalizationDoseValue', [TTypeVR.vrDS], 'DVH Normalization Dose Value' );
     Add( $0050, 'DVHSequence', [TTypeVR.vrSQ], 'DVH Sequence' );
     Add( $0052, 'DVHDoseScaling', [TTypeVR.vrDS], 'DVH Dose Scaling' );
     Add( $0054, 'DVHVolumeUnits', [TTypeVR.vrCS], 'DVH Volume Units' );
     Add( $0056, 'DVHNumberOfBins', [TTypeVR.vrIS], 'DVH Number of Bins' );
     Add( $0058, 'DVHData', [TTypeVR.vrDS], 'DVH Data' );
     Add( $0060, 'DVHReferencedROISequence', [TTypeVR.vrSQ], 'DVH Referenced ROI Sequence' );
     Add( $0062, 'DVHROIContributionType', [TTypeVR.vrCS], 'DVH ROI Contribution Type' );
     Add( $0070, 'DVHMinimumDose', [TTypeVR.vrDS], 'DVH Minimum Dose' );
     Add( $0072, 'DVHMaximumDose', [TTypeVR.vrDS], 'DVH Maximum Dose' );
     Add( $0074, 'DVHMeanDose', [TTypeVR.vrDS], 'DVH Mean Dose' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
