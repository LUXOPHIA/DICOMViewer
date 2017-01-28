unit LUX.DICOM.Tags.G2040;

interface //#################################################################### ■

uses LUX, LUX.DICOM.VRs, LUX.DICOM.Tags;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup2040

     TdcmGrup2040 = class( TdcmGrup )
     private
     protected
     public
       class procedure AddBook( const Book_:TdcmBookTag );
       constructor Create( const Book_:TdcmBookTag; const Code_:THex4 );
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

class procedure TdcmGrup2040.AddBook( const Book_:TdcmBookTag );
begin
     Create( Book_, $2040 );
end;

//------------------------------------------------------------------------------

constructor TdcmGrup2040.Create( const Book_:TdcmBookTag; const Code_:THex4 );
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0010, 'ReferencedOverlayPlaneSequence', [TKindVR.vrSQ], 'Referenced Overlay Plane Sequence' );
     Add( $0011, 'ReferencedOverlayPlaneGroups', [TKindVR.vrUS], 'Referenced Overlay Plane Groups' );
     Add( $0020, 'OverlayPixelDataSequence', [TKindVR.vrSQ], 'Overlay Pixel Data Sequence' );
     Add( $0060, 'OverlayMagnificationType', [TKindVR.vrCS], 'Overlay Magnification Type' );
     Add( $0070, 'OverlaySmoothingType', [TKindVR.vrCS], 'Overlay Smoothing Type' );
     Add( $0072, 'OverlayOrImageMagnification', [TKindVR.vrCS], 'Overlay or Image Magnification' );
     Add( $0074, 'MagnifyToNumberOfColumns', [TKindVR.vrUS], 'Magnify to Number of Columns' );
     Add( $0080, 'OverlayForegroundDensity', [TKindVR.vrCS], 'Overlay Foreground Density' );
     Add( $0082, 'OverlayBackgroundDensity', [TKindVR.vrCS], 'Overlay Background Density' );
     Add( $0090, 'OverlayMode', [TKindVR.vrCS], 'Overlay Mode' );
     Add( $0100, 'ThresholdDensity', [TKindVR.vrCS], 'Threshold Density' );
     Add( $0500, 'ReferencedImageBoxSequenceRetired', [TKindVR.vrSQ], 'Referenced Image Box Sequence (Retired)' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
