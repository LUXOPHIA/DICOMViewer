unit LUX.DICOM.Tags.G0062;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0062

     TdcmGrup0062 = class( TdcmGrup )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0062

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmGrup0062.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0001, [TTypeVR.vrCS], 'Segmentation Type' );
     Add( $0002, [TTypeVR.vrSQ], 'Segment Sequence' );
     Add( $0003, [TTypeVR.vrSQ], 'Segmented Property Category Code Sequence' );
     Add( $0004, [TTypeVR.vrUS], 'Segment Number' );
     Add( $0005, [TTypeVR.vrLO], 'Segment Label' );
     Add( $0006, [TTypeVR.vrST], 'Segment Description' );
     Add( $0007, [TTypeVR.vrSQ], 'Segmentation Algorithm Identification Sequence' );
     Add( $0008, [TTypeVR.vrCS], 'Segment Algorithm Type' );
     Add( $0009, [TTypeVR.vrLO], 'Segment Algorithm Name' );
     Add( $000A, [TTypeVR.vrSQ], 'Segment Identification Sequence' );
     Add( $000B, [TTypeVR.vrUS], 'Referenced Segment Number' );
     Add( $000C, [TTypeVR.vrUS], 'Recommended Display Grayscale Value' );
     Add( $000D, [TTypeVR.vrUS], 'Recommended Display CIELab Value' );
     Add( $000E, [TTypeVR.vrUS], 'Maximum Fractional Value' );
     Add( $000F, [TTypeVR.vrSQ], 'Segmented Property Type Code Sequence' );
     Add( $0010, [TTypeVR.vrCS], 'Segmentation Fractional Type' );
     Add( $0011, [TTypeVR.vrSQ], 'Segmented Property Type Modifier Code Sequence' );
     Add( $0012, [TTypeVR.vrSQ], 'Used Segments Sequence' );
     Add( $0020, [TTypeVR.vrUT], 'Tracking ID' );
     Add( $0021, [TTypeVR.vrUI], 'Tracking UID' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
