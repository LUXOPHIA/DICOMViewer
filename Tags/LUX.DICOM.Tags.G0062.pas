unit LUX.DICOM.Tags.G0062;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems0062

     TDICOMElems0062 = class( TDICOMElems )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems0062

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TDICOMElems0062.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0001, TKindVR.vrCS, 'Segmentation Type' );
     Add( $0002, TKindVR.vrSQ, 'Segment Sequence' );
     Add( $0003, TKindVR.vrSQ, 'Segmented Property Category Code Sequence' );
     Add( $0004, TKindVR.vrUS, 'Segment Number' );
     Add( $0005, TKindVR.vrLO, 'Segment Label' );
     Add( $0006, TKindVR.vrST, 'Segment Description' );
     Add( $0007, TKindVR.vrSQ, 'Segmentation Algorithm Identification Sequence' );
     Add( $0008, TKindVR.vrCS, 'Segment Algorithm Type' );
     Add( $0009, TKindVR.vrLO, 'Segment Algorithm Name' );
     Add( $000A, TKindVR.vrSQ, 'Segment Identification Sequence' );
     Add( $000B, TKindVR.vrUS, 'Referenced Segment Number' );
     Add( $000C, TKindVR.vrUS, 'Recommended Display Grayscale Value' );
     Add( $000D, TKindVR.vrUS, 'Recommended Display CIELab Value' );
     Add( $000E, TKindVR.vrUS, 'Maximum Fractional Value' );
     Add( $000F, TKindVR.vrSQ, 'Segmented Property Type Code Sequence' );
     Add( $0010, TKindVR.vrCS, 'Segmentation Fractional Type' );
     Add( $0011, TKindVR.vrSQ, 'Segmented Property Type Modifier Code Sequence' );
     Add( $0012, TKindVR.vrSQ, 'Used Segments Sequence' );
     Add( $0020, TKindVR.vrUT, 'Tracking ID' );
     Add( $0021, TKindVR.vrUI, 'Tracking UID' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
