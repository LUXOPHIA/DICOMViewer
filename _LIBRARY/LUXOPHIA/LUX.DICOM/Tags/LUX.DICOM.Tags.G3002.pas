unit LUX.DICOM.Tags.G3002;

interface //#################################################################### ■

uses LUX, LUX.DICOM.VRs, LUX.DICOM.Tags;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup3002

     TdcmGrup3002 = class( TdcmGrup )
     private
     protected
     public
       class procedure AddBook( const Book_:TdcmBookTag );
       constructor Create( const Book_:TdcmBookTag; const Code_:THex4 );
     end;

//const //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【定数】

//var //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【変数】

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

implementation //############################################################### ■

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup3002

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

class procedure TdcmGrup3002.AddBook( const Book_:TdcmBookTag );
begin
     Create( Book_, $3002 );
end;

//------------------------------------------------------------------------------

constructor TdcmGrup3002.Create( const Book_:TdcmBookTag; const Code_:THex4 );
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0002, 'RTImageLabel', [TKindVR.vrSH], 'RT Image Label' );
     Add( $0003, 'RTImageName', [TKindVR.vrLO], 'RT Image Name' );
     Add( $0004, 'RTImageDescription', [TKindVR.vrST], 'RT Image Description' );
     Add( $000A, 'ReportedValuesOrigin', [TKindVR.vrCS], 'Reported Values Origin' );
     Add( $000C, 'RTImagePlane', [TKindVR.vrCS], 'RT Image Plane' );
     Add( $000D, 'XRayImageReceptorTranslation', [TKindVR.vrDS], 'X-Ray Image Receptor Translation' );
     Add( $000E, 'XRayImageReceptorAngle', [TKindVR.vrDS], 'X-Ray Image Receptor Angle' );
     Add( $0010, 'RTImageOrientation', [TKindVR.vrDS], 'RT Image Orientation' );
     Add( $0011, 'ImagePlanePixelSpacing', [TKindVR.vrDS], 'Image Plane Pixel Spacing' );
     Add( $0012, 'RTImagePosition', [TKindVR.vrDS], 'RT Image Position' );
     Add( $0020, 'RadiationMachineName', [TKindVR.vrSH], 'Radiation Machine Name' );
     Add( $0022, 'RadiationMachineSAD', [TKindVR.vrDS], 'Radiation Machine SAD' );
     Add( $0024, 'RadiationMachineSSD', [TKindVR.vrDS], 'Radiation Machine SSD' );
     Add( $0026, 'RTImageSID', [TKindVR.vrDS], 'RT Image SID' );
     Add( $0028, 'SourceToReferenceObjectDistance', [TKindVR.vrDS], 'Source to Reference Object Distance' );
     Add( $0029, 'FractionNumber', [TKindVR.vrIS], 'Fraction Number' );
     Add( $0030, 'ExposureSequence', [TKindVR.vrSQ], 'Exposure Sequence' );
     Add( $0032, 'MetersetExposure', [TKindVR.vrDS], 'Meterset Exposure' );
     Add( $0034, 'DiaphragmPosition', [TKindVR.vrDS], 'Diaphragm Position' );
     Add( $0040, 'FluenceMapSequence', [TKindVR.vrSQ], 'Fluence Map Sequence' );
     Add( $0041, 'FluenceDataSource', [TKindVR.vrCS], 'Fluence Data Source' );
     Add( $0042, 'FluenceDataScale', [TKindVR.vrDS], 'Fluence Data Scale' );
     Add( $0050, 'PrimaryFluenceModeSequence', [TKindVR.vrSQ], 'Primary Fluence Mode Sequence' );
     Add( $0051, 'FluenceMode', [TKindVR.vrCS], 'Fluence Mode' );
     Add( $0052, 'FluenceModeID', [TKindVR.vrSH], 'Fluence Mode ID' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
