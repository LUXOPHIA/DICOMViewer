unit LUX.DICOM.Tags.G2040;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup2040

     TdcmGrup2040 = class( TdcmGrup )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup2040

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmGrup2040.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0010, 'ReferencedOverlayPlaneSequence', [TTypeVR.vrSQ], 'Referenced Overlay Plane Sequence' );
     Add( $0011, 'ReferencedOverlayPlaneGroups', [TTypeVR.vrUS], 'Referenced Overlay Plane Groups' );
     Add( $0020, 'OverlayPixelDataSequence', [TTypeVR.vrSQ], 'Overlay Pixel Data Sequence' );
     Add( $0060, 'OverlayMagnificationType', [TTypeVR.vrCS], 'Overlay Magnification Type' );
     Add( $0070, 'OverlaySmoothingType', [TTypeVR.vrCS], 'Overlay Smoothing Type' );
     Add( $0072, 'OverlayOrImageMagnification', [TTypeVR.vrCS], 'Overlay or Image Magnification' );
     Add( $0074, 'MagnifyToNumberOfColumns', [TTypeVR.vrUS], 'Magnify to Number of Columns' );
     Add( $0080, 'OverlayForegroundDensity', [TTypeVR.vrCS], 'Overlay Foreground Density' );
     Add( $0082, 'OverlayBackgroundDensity', [TTypeVR.vrCS], 'Overlay Background Density' );
     Add( $0090, 'OverlayMode', [TTypeVR.vrCS], 'Overlay Mode' );
     Add( $0100, 'ThresholdDensity', [TTypeVR.vrCS], 'Threshold Density' );
     Add( $0500, 'ReferencedImageBoxSequenceRetired', [TTypeVR.vrSQ], 'Referenced Image Box Sequence (Retired)' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
