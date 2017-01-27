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
       constructor Create( const Code_:THex4 );
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

constructor TdcmGrup0062.Create( const Code_:THex4 );
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0001, 'SegmentationType', [TKindVR.vrCS], 'Segmentation Type' );
     Add( $0002, 'SegmentSequence', [TKindVR.vrSQ], 'Segment Sequence' );
     Add( $0003, 'SegmentedPropertyCategoryCodeSequence', [TKindVR.vrSQ], 'Segmented Property Category Code Sequence' );
     Add( $0004, 'SegmentNumber', [TKindVR.vrUS], 'Segment Number' );
     Add( $0005, 'SegmentLabel', [TKindVR.vrLO], 'Segment Label' );
     Add( $0006, 'SegmentDescription', [TKindVR.vrST], 'Segment Description' );
     Add( $0007, 'SegmentationAlgorithmIdentificationSequence', [TKindVR.vrSQ], 'Segmentation Algorithm Identification Sequence' );
     Add( $0008, 'SegmentAlgorithmType', [TKindVR.vrCS], 'Segment Algorithm Type' );
     Add( $0009, 'SegmentAlgorithmName', [TKindVR.vrLO], 'Segment Algorithm Name' );
     Add( $000A, 'SegmentIdentificationSequence', [TKindVR.vrSQ], 'Segment Identification Sequence' );
     Add( $000B, 'ReferencedSegmentNumber', [TKindVR.vrUS], 'Referenced Segment Number' );
     Add( $000C, 'RecommendedDisplayGrayscaleValue', [TKindVR.vrUS], 'Recommended Display Grayscale Value' );
     Add( $000D, 'RecommendedDisplayCIELabValue', [TKindVR.vrUS], 'Recommended Display CIELab Value' );
     Add( $000E, 'MaximumFractionalValue', [TKindVR.vrUS], 'Maximum Fractional Value' );
     Add( $000F, 'SegmentedPropertyTypeCodeSequence', [TKindVR.vrSQ], 'Segmented Property Type Code Sequence' );
     Add( $0010, 'SegmentationFractionalType', [TKindVR.vrCS], 'Segmentation Fractional Type' );
     Add( $0011, 'SegmentedPropertyTypeModifierCodeSequence', [TKindVR.vrSQ], 'Segmented Property Type Modifier Code Sequence' );
     Add( $0012, 'UsedSegmentsSequence', [TKindVR.vrSQ], 'Used Segments Sequence' );
     Add( $0020, 'TrackingID', [TKindVR.vrUT], 'Tracking ID' );
     Add( $0021, 'TrackingUID', [TKindVR.vrUI], 'Tracking UID' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
