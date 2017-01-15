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
     Add( $0001, [TTypeVR.vrCS], 'DVH Type' );
     Add( $0002, [TTypeVR.vrCS], 'Dose Units' );
     Add( $0004, [TTypeVR.vrCS], 'Dose Type' );
     Add( $0005, [TTypeVR.vrCS], 'Spatial Transform of Dose' );
     Add( $0006, [TTypeVR.vrLO], 'Dose Comment' );
     Add( $0008, [TTypeVR.vrDS], 'Normalization Point' );
     Add( $000A, [TTypeVR.vrCS], 'Dose Summation Type' );
     Add( $000C, [TTypeVR.vrDS], 'Grid Frame Offset Vector' );
     Add( $000E, [TTypeVR.vrDS], 'Dose Grid Scaling' );
     Add( $0010, [TTypeVR.vrSQ], 'RT Dose ROI Sequence' );
     Add( $0012, [TTypeVR.vrDS], 'Dose Value' );
     Add( $0014, [TTypeVR.vrCS], 'Tissue Heterogeneity Correction' );
     Add( $0040, [TTypeVR.vrDS], 'DVH Normalization Point' );
     Add( $0042, [TTypeVR.vrDS], 'DVH Normalization Dose Value' );
     Add( $0050, [TTypeVR.vrSQ], 'DVH Sequence' );
     Add( $0052, [TTypeVR.vrDS], 'DVH Dose Scaling' );
     Add( $0054, [TTypeVR.vrCS], 'DVH Volume Units' );
     Add( $0056, [TTypeVR.vrIS], 'DVH Number of Bins' );
     Add( $0058, [TTypeVR.vrDS], 'DVH Data' );
     Add( $0060, [TTypeVR.vrSQ], 'DVH Referenced ROI Sequence' );
     Add( $0062, [TTypeVR.vrCS], 'DVH ROI Contribution Type' );
     Add( $0070, [TTypeVR.vrDS], 'DVH Minimum Dose' );
     Add( $0072, [TTypeVR.vrDS], 'DVH Maximum Dose' );
     Add( $0074, [TTypeVR.vrDS], 'DVH Mean Dose' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
