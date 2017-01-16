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
     Add( $0010, [TTypeVR.vrUS], 'Overlay Rows' );
     Add( $0011, [TTypeVR.vrUS], 'Overlay Columns' );
     Add( $0012, [TTypeVR.vrUS], 'Overlay Planes' );
     Add( $0015, [TTypeVR.vrIS], 'Number of Frames in Overlay' );
     Add( $0022, [TTypeVR.vrLO], 'Overlay Description' );
     Add( $0040, [TTypeVR.vrCS], 'Overlay Type' );
     Add( $0045, [TTypeVR.vrLO], 'Overlay Subtype' );
     Add( $0050, [TTypeVR.vrSS], 'Overlay Origin' );
     Add( $0051, [TTypeVR.vrUS], 'Image Frame Origin' );
     Add( $0052, [TTypeVR.vrUS], 'Overlay Plane Origin' );
     Add( $0060, [TTypeVR.vrCS], 'Overlay Compression Code' );
     Add( $0061, [TTypeVR.vrSH], 'Overlay Compression Originator' );
     Add( $0062, [TTypeVR.vrSH], 'Overlay Compression Label' );
     Add( $0063, [TTypeVR.vrCS], 'Overlay Compression Description' );
     Add( $0066, [TTypeVR.vrAT], 'Overlay Compression Step Pointers' );
     Add( $0068, [TTypeVR.vrUS], 'Overlay Repeat Interval' );
     Add( $0069, [TTypeVR.vrUS], 'Overlay Bits Grouped' );
     Add( $0100, [TTypeVR.vrUS], 'Overlay Bits Allocated' );
     Add( $0102, [TTypeVR.vrUS], 'Overlay Bit Position' );
     Add( $0110, [TTypeVR.vrCS], 'Overlay Format' );
     Add( $0200, [TTypeVR.vrUS], 'Overlay Location' );
     Add( $0800, [TTypeVR.vrCS], 'Overlay Code Label' );
     Add( $0802, [TTypeVR.vrUS], 'Overlay Number of Tables' );
     Add( $0803, [TTypeVR.vrAT], 'Overlay Code Table Location' );
     Add( $0804, [TTypeVR.vrUS], 'Overlay Bits For Code Word' );
     Add( $1001, [TTypeVR.vrCS], 'Overlay Activation Layer' );
     Add( $1100, [TTypeVR.vrUS], 'Overlay Descriptor - Gray' );
     Add( $1101, [TTypeVR.vrUS], 'Overlay Descriptor - Red' );
     Add( $1102, [TTypeVR.vrUS], 'Overlay Descriptor - Green' );
     Add( $1103, [TTypeVR.vrUS], 'Overlay Descriptor - Blue' );
     Add( $1200, [TTypeVR.vrUS], 'Overlays - Gray' );
     Add( $1201, [TTypeVR.vrUS], 'Overlays - Red' );
     Add( $1202, [TTypeVR.vrUS], 'Overlays - Green' );
     Add( $1203, [TTypeVR.vrUS], 'Overlays - Blue' );
     Add( $1301, [TTypeVR.vrIS], 'ROI Area' );
     Add( $1302, [TTypeVR.vrDS], 'ROI Mean' );
     Add( $1303, [TTypeVR.vrDS], 'ROI Standard Deviation' );
     Add( $1500, [TTypeVR.vrLO], 'Overlay Label' );
     Add( $3000, [TTypeVR.vrOB,TTypeVR.vrOW], 'Overlay Data' );
     Add( $4000, [TTypeVR.vrLT], 'Overlay Comments' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
