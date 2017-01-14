unit LUX.DICOM.Tags.G3004;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems3004

     TDICOMElems3004 = class( TDICOMElems )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems3004

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TDICOMElems3004.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0001, TKindVR.vrCS, 'DVH Type' );
     Add( $0002, TKindVR.vrCS, 'Dose Units' );
     Add( $0004, TKindVR.vrCS, 'Dose Type' );
     Add( $0005, TKindVR.vrCS, 'Spatial Transform of Dose' );
     Add( $0006, TKindVR.vrLO, 'Dose Comment' );
     Add( $0008, TKindVR.vrDS, 'Normalization Point' );
     Add( $000A, TKindVR.vrCS, 'Dose Summation Type' );
     Add( $000C, TKindVR.vrDS, 'Grid Frame Offset Vector' );
     Add( $000E, TKindVR.vrDS, 'Dose Grid Scaling' );
     Add( $0010, TKindVR.vrSQ, 'RT Dose ROI Sequence' );
     Add( $0012, TKindVR.vrDS, 'Dose Value' );
     Add( $0014, TKindVR.vrCS, 'Tissue Heterogeneity Correction' );
     Add( $0040, TKindVR.vrDS, 'DVH Normalization Point' );
     Add( $0042, TKindVR.vrDS, 'DVH Normalization Dose Value' );
     Add( $0050, TKindVR.vrSQ, 'DVH Sequence' );
     Add( $0052, TKindVR.vrDS, 'DVH Dose Scaling' );
     Add( $0054, TKindVR.vrCS, 'DVH Volume Units' );
     Add( $0056, TKindVR.vrIS, 'DVH Number of Bins' );
     Add( $0058, TKindVR.vrDS, 'DVH Data' );
     Add( $0060, TKindVR.vrSQ, 'DVH Referenced ROI Sequence' );
     Add( $0062, TKindVR.vrCS, 'DVH ROI Contribution Type' );
     Add( $0070, TKindVR.vrDS, 'DVH Minimum Dose' );
     Add( $0072, TKindVR.vrDS, 'DVH Maximum Dose' );
     Add( $0074, TKindVR.vrDS, 'DVH Mean Dose' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
