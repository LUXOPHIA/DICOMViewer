unit LUX.DICOM.Tags.G2000;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems2000

     TDICOMElems2000 = class( TDICOMElems )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems2000

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TDICOMElems2000.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0010, TKindVR.vrIS, 'Number of Copies' );
     Add( $001E, TKindVR.vrSQ, 'Printer Configuration Sequence' );
     Add( $0020, TKindVR.vrCS, 'Print Priority' );
     Add( $0030, TKindVR.vrCS, 'Medium Type' );
     Add( $0040, TKindVR.vrCS, 'Film Destination' );
     Add( $0050, TKindVR.vrLO, 'Film Session Label' );
     Add( $0060, TKindVR.vrIS, 'Memory Allocation' );
     Add( $0061, TKindVR.vrIS, 'Maximum Memory Allocation' );
     Add( $0062, TKindVR.vrCS, 'Color Image Printing Flag' );
     Add( $0063, TKindVR.vrCS, 'Collation Flag' );
     Add( $0065, TKindVR.vrCS, 'Annotation Flag' );
     Add( $0067, TKindVR.vrCS, 'Image Overlay Flag' );
     Add( $0069, TKindVR.vrCS, 'Presentation LUT Flag' );
     Add( $006A, TKindVR.vrCS, 'Image Box Presentation LUT Flag' );
     Add( $00A0, TKindVR.vrUS, 'Memory Bit Depth' );
     Add( $00A1, TKindVR.vrUS, 'Printing Bit Depth' );
     Add( $00A2, TKindVR.vrSQ, 'Media Installed Sequence' );
     Add( $00A4, TKindVR.vrSQ, 'Other Media Available Sequence' );
     Add( $00A8, TKindVR.vrSQ, 'Supported Image Display Formats Sequence' );
     Add( $0500, TKindVR.vrSQ, 'Referenced Film Box Sequence' );
     Add( $0510, TKindVR.vrSQ, 'Referenced Stored Print Sequence' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
