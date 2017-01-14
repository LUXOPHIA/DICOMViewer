unit LUX.DICOM.Tags.G60xx;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems60xx

     TDICOMElems60xx = class( TDICOMElems )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems60xx

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TDICOMElems60xx.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0010, TKindVR.vrUS, 'Overlay Rows' );
     Add( $0011, TKindVR.vrUS, 'Overlay Columns' );
     Add( $0012, TKindVR.vrUS, 'Overlay Planes' );
     Add( $0015, TKindVR.vrIS, 'Number of Frames in Overlay' );
     Add( $0022, TKindVR.vrLO, 'Overlay Description' );
     Add( $0040, TKindVR.vrCS, 'Overlay Type' );
     Add( $0045, TKindVR.vrLO, 'Overlay Subtype' );
     Add( $0050, TKindVR.vrSS, 'Overlay Origin' );
     Add( $0051, TKindVR.vrUS, 'Image Frame Origin' );
     Add( $0052, TKindVR.vrUS, 'Overlay Plane Origin' );
     Add( $0060, TKindVR.vrCS, 'Overlay Compression Code' );
     Add( $0061, TKindVR.vrSH, 'Overlay Compression Originator' );
     Add( $0062, TKindVR.vrSH, 'Overlay Compression Label' );
     Add( $0063, TKindVR.vrCS, 'Overlay Compression Description' );
     Add( $0066, TKindVR.vrAT, 'Overlay Compression Step Pointers' );
     Add( $0068, TKindVR.vrUS, 'Overlay Repeat Interval' );
     Add( $0069, TKindVR.vrUS, 'Overlay Bits Grouped' );
     Add( $0100, TKindVR.vrUS, 'Overlay Bits Allocated' );
     Add( $0102, TKindVR.vrUS, 'Overlay Bit Position' );
     Add( $0110, TKindVR.vrCS, 'Overlay Format' );
     Add( $0200, TKindVR.vrUS, 'Overlay Location' );
     Add( $0800, TKindVR.vrCS, 'Overlay Code Label' );
     Add( $0802, TKindVR.vrUS, 'Overlay Number of Tables' );
     Add( $0803, TKindVR.vrAT, 'Overlay Code Table Location' );
     Add( $0804, TKindVR.vrUS, 'Overlay Bits For Code Word' );
     Add( $1001, TKindVR.vrCS, 'Overlay Activation Layer' );
     Add( $1100, TKindVR.vrUS, 'Overlay Descriptor - Gray' );
     Add( $1101, TKindVR.vrUS, 'Overlay Descriptor - Red' );
     Add( $1102, TKindVR.vrUS, 'Overlay Descriptor - Green' );
     Add( $1103, TKindVR.vrUS, 'Overlay Descriptor - Blue' );
     Add( $1200, TKindVR.vrUS, 'Overlays - Gray' );
     Add( $1201, TKindVR.vrUS, 'Overlays - Red' );
     Add( $1202, TKindVR.vrUS, 'Overlays - Green' );
     Add( $1203, TKindVR.vrUS, 'Overlays - Blue' );
     Add( $1301, TKindVR.vrIS, 'ROI Area' );
     Add( $1302, TKindVR.vrDS, 'ROI Mean' );
     Add( $1303, TKindVR.vrDS, 'ROI Standard Deviation' );
     Add( $1500, TKindVR.vrLO, 'Overlay Label' );
     Add( $3000, TKindVR.vrOBOW, 'Overlay Data' );
     Add( $4000, TKindVR.vrLT, 'Overlay Comments' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
