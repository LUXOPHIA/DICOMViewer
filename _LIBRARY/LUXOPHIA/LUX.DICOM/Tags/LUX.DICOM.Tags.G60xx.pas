unit LUX.DICOM.Tags.G60xx;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup60xx

     TdcmGrup60xx = class( TdcmGrup )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup60xx

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmGrup60xx.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0010, 'OverlayRows', [TTypeVR.vrUS], 'Overlay Rows' );
     Add( $0011, 'OverlayColumns', [TTypeVR.vrUS], 'Overlay Columns' );
     Add( $0012, 'OverlayPlanes', [TTypeVR.vrUS], 'Overlay Planes' );
     Add( $0015, 'NumberOfFramesInOverlay', [TTypeVR.vrIS], 'Number of Frames in Overlay' );
     Add( $0022, 'OverlayDescription', [TTypeVR.vrLO], 'Overlay Description' );
     Add( $0040, 'OverlayType', [TTypeVR.vrCS], 'Overlay Type' );
     Add( $0045, 'OverlaySubtype', [TTypeVR.vrLO], 'Overlay Subtype' );
     Add( $0050, 'OverlayOrigin', [TTypeVR.vrSS], 'Overlay Origin' );
     Add( $0051, 'ImageFrameOrigin', [TTypeVR.vrUS], 'Image Frame Origin' );
     Add( $0052, 'OverlayPlaneOrigin', [TTypeVR.vrUS], 'Overlay Plane Origin' );
     Add( $0060, 'OverlayCompressionCode', [TTypeVR.vrCS], 'Overlay Compression Code' );
     Add( $0061, 'OverlayCompressionOriginator', [TTypeVR.vrSH], 'Overlay Compression Originator' );
     Add( $0062, 'OverlayCompressionLabel', [TTypeVR.vrSH], 'Overlay Compression Label' );
     Add( $0063, 'OverlayCompressionDescription', [TTypeVR.vrCS], 'Overlay Compression Description' );
     Add( $0066, 'OverlayCompressionStepPointers', [TTypeVR.vrAT], 'Overlay Compression Step Pointers' );
     Add( $0068, 'OverlayRepeatInterval', [TTypeVR.vrUS], 'Overlay Repeat Interval' );
     Add( $0069, 'OverlayBitsGrouped', [TTypeVR.vrUS], 'Overlay Bits Grouped' );
     Add( $0100, 'OverlayBitsAllocated', [TTypeVR.vrUS], 'Overlay Bits Allocated' );
     Add( $0102, 'OverlayBitPosition', [TTypeVR.vrUS], 'Overlay Bit Position' );
     Add( $0110, 'OverlayFormat', [TTypeVR.vrCS], 'Overlay Format' );
     Add( $0200, 'OverlayLocation', [TTypeVR.vrUS], 'Overlay Location' );
     Add( $0800, 'OverlayCodeLabel', [TTypeVR.vrCS], 'Overlay Code Label' );
     Add( $0802, 'OverlayNumberOfTables', [TTypeVR.vrUS], 'Overlay Number of Tables' );
     Add( $0803, 'OverlayCodeTableLocation', [TTypeVR.vrAT], 'Overlay Code Table Location' );
     Add( $0804, 'OverlayBitsForCodeWord', [TTypeVR.vrUS], 'Overlay Bits For Code Word' );
     Add( $1001, 'OverlayActivationLayer', [TTypeVR.vrCS], 'Overlay Activation Layer' );
     Add( $1100, 'OverlayDescriptorGray', [TTypeVR.vrUS], 'Overlay Descriptor - Gray' );
     Add( $1101, 'OverlayDescriptorRed', [TTypeVR.vrUS], 'Overlay Descriptor - Red' );
     Add( $1102, 'OverlayDescriptorGreen', [TTypeVR.vrUS], 'Overlay Descriptor - Green' );
     Add( $1103, 'OverlayDescriptorBlue', [TTypeVR.vrUS], 'Overlay Descriptor - Blue' );
     Add( $1200, 'OverlaysGray', [TTypeVR.vrUS], 'Overlays - Gray' );
     Add( $1201, 'OverlaysRed', [TTypeVR.vrUS], 'Overlays - Red' );
     Add( $1202, 'OverlaysGreen', [TTypeVR.vrUS], 'Overlays - Green' );
     Add( $1203, 'OverlaysBlue', [TTypeVR.vrUS], 'Overlays - Blue' );
     Add( $1301, 'ROIArea', [TTypeVR.vrIS], 'ROI Area' );
     Add( $1302, 'ROIMean', [TTypeVR.vrDS], 'ROI Mean' );
     Add( $1303, 'ROIStandardDeviation', [TTypeVR.vrDS], 'ROI Standard Deviation' );
     Add( $1500, 'OverlayLabel', [TTypeVR.vrLO], 'Overlay Label' );
     Add( $3000, 'OverlayData', [TTypeVR.vrOB,TTypeVR.vrOW], 'Overlay Data' );
     Add( $4000, 'OverlayComments', [TTypeVR.vrLT], 'Overlay Comments' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
