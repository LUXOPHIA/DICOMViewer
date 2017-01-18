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
     Add( $0010, 'ImageDisplayFormat', [TTypeVR.vrST], 'Image Display Format' );
     Add( $0030, 'AnnotationDisplayFormatID', [TTypeVR.vrCS], 'Annotation Display Format ID' );
     Add( $0040, 'FilmOrientation', [TTypeVR.vrCS], 'Film Orientation' );
     Add( $0050, 'FilmSizeID', [TTypeVR.vrCS], 'Film Size ID' );
     Add( $0052, 'PrinterResolutionID', [TTypeVR.vrCS], 'Printer Resolution ID' );
     Add( $0054, 'DefaultPrinterResolutionID', [TTypeVR.vrCS], 'Default Printer Resolution ID' );
     Add( $0060, 'MagnificationType', [TTypeVR.vrCS], 'Magnification Type' );
     Add( $0080, 'SmoothingType', [TTypeVR.vrCS], 'Smoothing Type' );
     Add( $00A6, 'DefaultMagnificationType', [TTypeVR.vrCS], 'Default Magnification Type' );
     Add( $00A7, 'OtherMagnificationTypesAvailable', [TTypeVR.vrCS], 'Other Magnification Types Available' );
     Add( $00A8, 'DefaultSmoothingType', [TTypeVR.vrCS], 'Default Smoothing Type' );
     Add( $00A9, 'OtherSmoothingTypesAvailable', [TTypeVR.vrCS], 'Other Smoothing Types Available' );
     Add( $0100, 'BorderDensity', [TTypeVR.vrCS], 'Border Density' );
     Add( $0110, 'EmptyImageDensity', [TTypeVR.vrCS], 'Empty Image Density' );
     Add( $0120, 'MinDensity', [TTypeVR.vrUS], 'Min Density' );
     Add( $0130, 'MaxDensity', [TTypeVR.vrUS], 'Max Density' );
     Add( $0140, 'Trim', [TTypeVR.vrCS], 'Trim' );
     Add( $0150, 'ConfigurationInformation', [TTypeVR.vrST], 'Configuration Information' );
     Add( $0152, 'ConfigurationInformationDescription', [TTypeVR.vrLT], 'Configuration Information Description' );
     Add( $0154, 'MaximumCollatedFilms', [TTypeVR.vrIS], 'Maximum Collated Films' );
     Add( $015E, 'Illumination', [TTypeVR.vrUS], 'Illumination' );
     Add( $0160, 'ReflectedAmbientLight', [TTypeVR.vrUS], 'Reflected Ambient Light' );
     Add( $0376, 'PrinterPixelSpacing', [TTypeVR.vrDS], 'Printer Pixel Spacing' );
     Add( $0500, 'ReferencedFilmSessionSequence', [TTypeVR.vrSQ], 'Referenced Film Session Sequence' );
     Add( $0510, 'ReferencedImageBoxSequence', [TTypeVR.vrSQ], 'Referenced Image Box Sequence' );
     Add( $0520, 'ReferencedBasicAnnotationBoxSequence', [TTypeVR.vrSQ], 'Referenced Basic Annotation Box Sequence' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
