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
       constructor Create( const Code_:THex4 );
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

constructor TdcmGrup3004.Create( const Code_:THex4 );
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0001, 'DVHType', [TKindVR.vrCS], 'DVH Type' );
     Add( $0002, 'DoseUnits', [TKindVR.vrCS], 'Dose Units' );
     Add( $0004, 'DoseType', [TKindVR.vrCS], 'Dose Type' );
     Add( $0005, 'SpatialTransformOfDose', [TKindVR.vrCS], 'Spatial Transform of Dose' );
     Add( $0006, 'DoseComment', [TKindVR.vrLO], 'Dose Comment' );
     Add( $0008, 'NormalizationPoint', [TKindVR.vrDS], 'Normalization Point' );
     Add( $000A, 'DoseSummationType', [TKindVR.vrCS], 'Dose Summation Type' );
     Add( $000C, 'GridFrameOffsetVector', [TKindVR.vrDS], 'Grid Frame Offset Vector' );
     Add( $000E, 'DoseGridScaling', [TKindVR.vrDS], 'Dose Grid Scaling' );
     Add( $0010, 'RTDoseROISequence', [TKindVR.vrSQ], 'RT Dose ROI Sequence' );
     Add( $0012, 'DoseValue', [TKindVR.vrDS], 'Dose Value' );
     Add( $0014, 'TissueHeterogeneityCorrection', [TKindVR.vrCS], 'Tissue Heterogeneity Correction' );
     Add( $0040, 'DVHNormalizationPoint', [TKindVR.vrDS], 'DVH Normalization Point' );
     Add( $0042, 'DVHNormalizationDoseValue', [TKindVR.vrDS], 'DVH Normalization Dose Value' );
     Add( $0050, 'DVHSequence', [TKindVR.vrSQ], 'DVH Sequence' );
     Add( $0052, 'DVHDoseScaling', [TKindVR.vrDS], 'DVH Dose Scaling' );
     Add( $0054, 'DVHVolumeUnits', [TKindVR.vrCS], 'DVH Volume Units' );
     Add( $0056, 'DVHNumberOfBins', [TKindVR.vrIS], 'DVH Number of Bins' );
     Add( $0058, 'DVHData', [TKindVR.vrDS], 'DVH Data' );
     Add( $0060, 'DVHReferencedROISequence', [TKindVR.vrSQ], 'DVH Referenced ROI Sequence' );
     Add( $0062, 'DVHROIContributionType', [TKindVR.vrCS], 'DVH ROI Contribution Type' );
     Add( $0070, 'DVHMinimumDose', [TKindVR.vrDS], 'DVH Minimum Dose' );
     Add( $0072, 'DVHMaximumDose', [TKindVR.vrDS], 'DVH Maximum Dose' );
     Add( $0074, 'DVHMeanDose', [TKindVR.vrDS], 'DVH Mean Dose' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
