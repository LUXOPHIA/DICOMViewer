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
     Add( $0010, 'NumberOfCopies', [TTypeVR.vrIS], 'Number of Copies' );
     Add( $001E, 'PrinterConfigurationSequence', [TTypeVR.vrSQ], 'Printer Configuration Sequence' );
     Add( $0020, 'PrintPriority', [TTypeVR.vrCS], 'Print Priority' );
     Add( $0030, 'MediumType', [TTypeVR.vrCS], 'Medium Type' );
     Add( $0040, 'FilmDestination', [TTypeVR.vrCS], 'Film Destination' );
     Add( $0050, 'FilmSessionLabel', [TTypeVR.vrLO], 'Film Session Label' );
     Add( $0060, 'MemoryAllocation', [TTypeVR.vrIS], 'Memory Allocation' );
     Add( $0061, 'MaximumMemoryAllocation', [TTypeVR.vrIS], 'Maximum Memory Allocation' );
     Add( $0062, 'ColorImagePrintingFlag', [TTypeVR.vrCS], 'Color Image Printing Flag' );
     Add( $0063, 'CollationFlag', [TTypeVR.vrCS], 'Collation Flag' );
     Add( $0065, 'AnnotationFlag', [TTypeVR.vrCS], 'Annotation Flag' );
     Add( $0067, 'ImageOverlayFlag', [TTypeVR.vrCS], 'Image Overlay Flag' );
     Add( $0069, 'PresentationLUTFlag', [TTypeVR.vrCS], 'Presentation LUT Flag' );
     Add( $006A, 'ImageBoxPresentationLUTFlag', [TTypeVR.vrCS], 'Image Box Presentation LUT Flag' );
     Add( $00A0, 'MemoryBitDepth', [TTypeVR.vrUS], 'Memory Bit Depth' );
     Add( $00A1, 'PrintingBitDepth', [TTypeVR.vrUS], 'Printing Bit Depth' );
     Add( $00A2, 'MediaInstalledSequence', [TTypeVR.vrSQ], 'Media Installed Sequence' );
     Add( $00A4, 'OtherMediaAvailableSequence', [TTypeVR.vrSQ], 'Other Media Available Sequence' );
     Add( $00A8, 'SupportedImageDisplayFormatsSequence', [TTypeVR.vrSQ], 'Supported Image Display Formats Sequence' );
     Add( $0500, 'ReferencedFilmBoxSequence', [TTypeVR.vrSQ], 'Referenced Film Box Sequence' );
     Add( $0510, 'ReferencedStoredPrintSequence', [TTypeVR.vrSQ], 'Referenced Stored Print Sequence' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
