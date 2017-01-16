unit LUX.DICOM.Tags.G2010;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup2010

     TdcmGrup2010 = class( TdcmGrup )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup2010

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmGrup2010.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0010, [TTypeVR.vrST], 'Image Display Format' );
     Add( $0030, [TTypeVR.vrCS], 'Annotation Display Format ID' );
     Add( $0040, [TTypeVR.vrCS], 'Film Orientation' );
     Add( $0050, [TTypeVR.vrCS], 'Film Size ID' );
     Add( $0052, [TTypeVR.vrCS], 'Printer Resolution ID' );
     Add( $0054, [TTypeVR.vrCS], 'Default Printer Resolution ID' );
     Add( $0060, [TTypeVR.vrCS], 'Magnification Type' );
     Add( $0080, [TTypeVR.vrCS], 'Smoothing Type' );
     Add( $00A6, [TTypeVR.vrCS], 'Default Magnification Type' );
     Add( $00A7, [TTypeVR.vrCS], 'Other Magnification Types Available' );
     Add( $00A8, [TTypeVR.vrCS], 'Default Smoothing Type' );
     Add( $00A9, [TTypeVR.vrCS], 'Other Smoothing Types Available' );
     Add( $0100, [TTypeVR.vrCS], 'Border Density' );
     Add( $0110, [TTypeVR.vrCS], 'Empty Image Density' );
     Add( $0120, [TTypeVR.vrUS], 'Min Density' );
     Add( $0130, [TTypeVR.vrUS], 'Max Density' );
     Add( $0140, [TTypeVR.vrCS], 'Trim' );
     Add( $0150, [TTypeVR.vrST], 'Configuration Information' );
     Add( $0152, [TTypeVR.vrLT], 'Configuration Information Description' );
     Add( $0154, [TTypeVR.vrIS], 'Maximum Collated Films' );
     Add( $015E, [TTypeVR.vrUS], 'Illumination' );
     Add( $0160, [TTypeVR.vrUS], 'Reflected Ambient Light' );
     Add( $0376, [TTypeVR.vrDS], 'Printer Pixel Spacing' );
     Add( $0500, [TTypeVR.vrSQ], 'Referenced Film Session Sequence' );
     Add( $0510, [TTypeVR.vrSQ], 'Referenced Image Box Sequence' );
     Add( $0520, [TTypeVR.vrSQ], 'Referenced Basic Annotation Box Sequence' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
