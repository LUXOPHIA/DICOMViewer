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
       constructor Create( const Code_:THex4 );
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

constructor TdcmGrup2000.Create( const Code_:THex4 );
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0010, 'NumberOfCopies', [TKindVR.vrIS], 'Number of Copies' );
     Add( $001E, 'PrinterConfigurationSequence', [TKindVR.vrSQ], 'Printer Configuration Sequence' );
     Add( $0020, 'PrintPriority', [TKindVR.vrCS], 'Print Priority' );
     Add( $0030, 'MediumType', [TKindVR.vrCS], 'Medium Type' );
     Add( $0040, 'FilmDestination', [TKindVR.vrCS], 'Film Destination' );
     Add( $0050, 'FilmSessionLabel', [TKindVR.vrLO], 'Film Session Label' );
     Add( $0060, 'MemoryAllocation', [TKindVR.vrIS], 'Memory Allocation' );
     Add( $0061, 'MaximumMemoryAllocation', [TKindVR.vrIS], 'Maximum Memory Allocation' );
     Add( $0062, 'ColorImagePrintingFlag', [TKindVR.vrCS], 'Color Image Printing Flag' );
     Add( $0063, 'CollationFlag', [TKindVR.vrCS], 'Collation Flag' );
     Add( $0065, 'AnnotationFlag', [TKindVR.vrCS], 'Annotation Flag' );
     Add( $0067, 'ImageOverlayFlag', [TKindVR.vrCS], 'Image Overlay Flag' );
     Add( $0069, 'PresentationLUTFlag', [TKindVR.vrCS], 'Presentation LUT Flag' );
     Add( $006A, 'ImageBoxPresentationLUTFlag', [TKindVR.vrCS], 'Image Box Presentation LUT Flag' );
     Add( $00A0, 'MemoryBitDepth', [TKindVR.vrUS], 'Memory Bit Depth' );
     Add( $00A1, 'PrintingBitDepth', [TKindVR.vrUS], 'Printing Bit Depth' );
     Add( $00A2, 'MediaInstalledSequence', [TKindVR.vrSQ], 'Media Installed Sequence' );
     Add( $00A4, 'OtherMediaAvailableSequence', [TKindVR.vrSQ], 'Other Media Available Sequence' );
     Add( $00A8, 'SupportedImageDisplayFormatsSequence', [TKindVR.vrSQ], 'Supported Image Display Formats Sequence' );
     Add( $0500, 'ReferencedFilmBoxSequence', [TKindVR.vrSQ], 'Referenced Film Box Sequence' );
     Add( $0510, 'ReferencedStoredPrintSequence', [TKindVR.vrSQ], 'Referenced Stored Print Sequence' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
