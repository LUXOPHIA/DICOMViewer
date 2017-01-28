unit LUX.DICOM.Tags.G60xx;

interface //#################################################################### ■

uses LUX, LUX.DICOM.VRs, LUX.DICOM.Tags;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup60xx

     TdcmGrup60xx = class( TdcmGrup )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup60xx

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

class procedure TdcmGrup60xx.AddBook( const Book_:TdcmBookTag );
var
   I :Byte;
begin
     {
       http://dicom.nema.org/medical/dicom/current/output/html/part05.html#sect_7.6
       7.6 Repeating Groups
     }
     for I := 0 to $1E div 2 do Create( Book_, $6000 + 2 * I );
end;

//------------------------------------------------------------------------------

constructor TdcmGrup60xx.Create( const Book_:TdcmBookTag; const Code_:THex4 );
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0010, 'OverlayRows', [TKindVR.vrUS], 'Overlay Rows' );
     Add( $0011, 'OverlayColumns', [TKindVR.vrUS], 'Overlay Columns' );
     Add( $0012, 'OverlayPlanes', [TKindVR.vrUS], 'Overlay Planes' );
     Add( $0015, 'NumberOfFramesInOverlay', [TKindVR.vrIS], 'Number of Frames in Overlay' );
     Add( $0022, 'OverlayDescription', [TKindVR.vrLO], 'Overlay Description' );
     Add( $0040, 'OverlayType', [TKindVR.vrCS], 'Overlay Type' );
     Add( $0045, 'OverlaySubtype', [TKindVR.vrLO], 'Overlay Subtype' );
     Add( $0050, 'OverlayOrigin', [TKindVR.vrSS], 'Overlay Origin' );
     Add( $0051, 'ImageFrameOrigin', [TKindVR.vrUS], 'Image Frame Origin' );
     Add( $0052, 'OverlayPlaneOrigin', [TKindVR.vrUS], 'Overlay Plane Origin' );
     Add( $0060, 'OverlayCompressionCode', [TKindVR.vrCS], 'Overlay Compression Code' );
     Add( $0061, 'OverlayCompressionOriginator', [TKindVR.vrSH], 'Overlay Compression Originator' );
     Add( $0062, 'OverlayCompressionLabel', [TKindVR.vrSH], 'Overlay Compression Label' );
     Add( $0063, 'OverlayCompressionDescription', [TKindVR.vrCS], 'Overlay Compression Description' );
     Add( $0066, 'OverlayCompressionStepPointers', [TKindVR.vrAT], 'Overlay Compression Step Pointers' );
     Add( $0068, 'OverlayRepeatInterval', [TKindVR.vrUS], 'Overlay Repeat Interval' );
     Add( $0069, 'OverlayBitsGrouped', [TKindVR.vrUS], 'Overlay Bits Grouped' );
     Add( $0100, 'OverlayBitsAllocated', [TKindVR.vrUS], 'Overlay Bits Allocated' );
     Add( $0102, 'OverlayBitPosition', [TKindVR.vrUS], 'Overlay Bit Position' );
     Add( $0110, 'OverlayFormat', [TKindVR.vrCS], 'Overlay Format' );
     Add( $0200, 'OverlayLocation', [TKindVR.vrUS], 'Overlay Location' );
     Add( $0800, 'OverlayCodeLabel', [TKindVR.vrCS], 'Overlay Code Label' );
     Add( $0802, 'OverlayNumberOfTables', [TKindVR.vrUS], 'Overlay Number of Tables' );
     Add( $0803, 'OverlayCodeTableLocation', [TKindVR.vrAT], 'Overlay Code Table Location' );
     Add( $0804, 'OverlayBitsForCodeWord', [TKindVR.vrUS], 'Overlay Bits For Code Word' );
     Add( $1001, 'OverlayActivationLayer', [TKindVR.vrCS], 'Overlay Activation Layer' );
     Add( $1100, 'OverlayDescriptorGray', [TKindVR.vrUS], 'Overlay Descriptor - Gray' );
     Add( $1101, 'OverlayDescriptorRed', [TKindVR.vrUS], 'Overlay Descriptor - Red' );
     Add( $1102, 'OverlayDescriptorGreen', [TKindVR.vrUS], 'Overlay Descriptor - Green' );
     Add( $1103, 'OverlayDescriptorBlue', [TKindVR.vrUS], 'Overlay Descriptor - Blue' );
     Add( $1200, 'OverlaysGray', [TKindVR.vrUS], 'Overlays - Gray' );
     Add( $1201, 'OverlaysRed', [TKindVR.vrUS], 'Overlays - Red' );
     Add( $1202, 'OverlaysGreen', [TKindVR.vrUS], 'Overlays - Green' );
     Add( $1203, 'OverlaysBlue', [TKindVR.vrUS], 'Overlays - Blue' );
     Add( $1301, 'ROIArea', [TKindVR.vrIS], 'ROI Area' );
     Add( $1302, 'ROIMean', [TKindVR.vrDS], 'ROI Mean' );
     Add( $1303, 'ROIStandardDeviation', [TKindVR.vrDS], 'ROI Standard Deviation' );
     Add( $1500, 'OverlayLabel', [TKindVR.vrLO], 'Overlay Label' );
     Add( $3000, 'OverlayData', [TKindVR.vrOB,TKindVR.vrOW], 'Overlay Data' );
     Add( $4000, 'OverlayComments', [TKindVR.vrLT], 'Overlay Comments' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
