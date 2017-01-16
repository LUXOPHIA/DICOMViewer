unit LUX.DICOM.Tags.G2000;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup2000

     TdcmGrup2000 = class( TdcmGrup )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup2000

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmGrup2000.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0010, [TTypeVR.vrIS], 'Number of Copies' );
     Add( $001E, [TTypeVR.vrSQ], 'Printer Configuration Sequence' );
     Add( $0020, [TTypeVR.vrCS], 'Print Priority' );
     Add( $0030, [TTypeVR.vrCS], 'Medium Type' );
     Add( $0040, [TTypeVR.vrCS], 'Film Destination' );
     Add( $0050, [TTypeVR.vrLO], 'Film Session Label' );
     Add( $0060, [TTypeVR.vrIS], 'Memory Allocation' );
     Add( $0061, [TTypeVR.vrIS], 'Maximum Memory Allocation' );
     Add( $0062, [TTypeVR.vrCS], 'Color Image Printing Flag' );
     Add( $0063, [TTypeVR.vrCS], 'Collation Flag' );
     Add( $0065, [TTypeVR.vrCS], 'Annotation Flag' );
     Add( $0067, [TTypeVR.vrCS], 'Image Overlay Flag' );
     Add( $0069, [TTypeVR.vrCS], 'Presentation LUT Flag' );
     Add( $006A, [TTypeVR.vrCS], 'Image Box Presentation LUT Flag' );
     Add( $00A0, [TTypeVR.vrUS], 'Memory Bit Depth' );
     Add( $00A1, [TTypeVR.vrUS], 'Printing Bit Depth' );
     Add( $00A2, [TTypeVR.vrSQ], 'Media Installed Sequence' );
     Add( $00A4, [TTypeVR.vrSQ], 'Other Media Available Sequence' );
     Add( $00A8, [TTypeVR.vrSQ], 'Supported Image Display Formats Sequence' );
     Add( $0500, [TTypeVR.vrSQ], 'Referenced Film Box Sequence' );
     Add( $0510, [TTypeVR.vrSQ], 'Referenced Stored Print Sequence' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
