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
     Add( $0010, 'ImageDisplayFormat', [TKindVR.vrST], 'Image Display Format' );
     Add( $0030, 'AnnotationDisplayFormatID', [TKindVR.vrCS], 'Annotation Display Format ID' );
     Add( $0040, 'FilmOrientation', [TKindVR.vrCS], 'Film Orientation' );
     Add( $0050, 'FilmSizeID', [TKindVR.vrCS], 'Film Size ID' );
     Add( $0052, 'PrinterResolutionID', [TKindVR.vrCS], 'Printer Resolution ID' );
     Add( $0054, 'DefaultPrinterResolutionID', [TKindVR.vrCS], 'Default Printer Resolution ID' );
     Add( $0060, 'MagnificationType', [TKindVR.vrCS], 'Magnification Type' );
     Add( $0080, 'SmoothingType', [TKindVR.vrCS], 'Smoothing Type' );
     Add( $00A6, 'DefaultMagnificationType', [TKindVR.vrCS], 'Default Magnification Type' );
     Add( $00A7, 'OtherMagnificationTypesAvailable', [TKindVR.vrCS], 'Other Magnification Types Available' );
     Add( $00A8, 'DefaultSmoothingType', [TKindVR.vrCS], 'Default Smoothing Type' );
     Add( $00A9, 'OtherSmoothingTypesAvailable', [TKindVR.vrCS], 'Other Smoothing Types Available' );
     Add( $0100, 'BorderDensity', [TKindVR.vrCS], 'Border Density' );
     Add( $0110, 'EmptyImageDensity', [TKindVR.vrCS], 'Empty Image Density' );
     Add( $0120, 'MinDensity', [TKindVR.vrUS], 'Min Density' );
     Add( $0130, 'MaxDensity', [TKindVR.vrUS], 'Max Density' );
     Add( $0140, 'Trim', [TKindVR.vrCS], 'Trim' );
     Add( $0150, 'ConfigurationInformation', [TKindVR.vrST], 'Configuration Information' );
     Add( $0152, 'ConfigurationInformationDescription', [TKindVR.vrLT], 'Configuration Information Description' );
     Add( $0154, 'MaximumCollatedFilms', [TKindVR.vrIS], 'Maximum Collated Films' );
     Add( $015E, 'Illumination', [TKindVR.vrUS], 'Illumination' );
     Add( $0160, 'ReflectedAmbientLight', [TKindVR.vrUS], 'Reflected Ambient Light' );
     Add( $0376, 'PrinterPixelSpacing', [TKindVR.vrDS], 'Printer Pixel Spacing' );
     Add( $0500, 'ReferencedFilmSessionSequence', [TKindVR.vrSQ], 'Referenced Film Session Sequence' );
     Add( $0510, 'ReferencedImageBoxSequence', [TKindVR.vrSQ], 'Referenced Image Box Sequence' );
     Add( $0520, 'ReferencedBasicAnnotationBoxSequence', [TKindVR.vrSQ], 'Referenced Basic Annotation Box Sequence' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
