unit LUX.DICOM.Tags.G3002;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup3002

     TdcmGrup3002 = class( TdcmGrup )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup3002

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmGrup3002.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0002, 'RTImageLabel', [TTypeVR.vrSH], 'RT Image Label' );
     Add( $0003, 'RTImageName', [TTypeVR.vrLO], 'RT Image Name' );
     Add( $0004, 'RTImageDescription', [TTypeVR.vrST], 'RT Image Description' );
     Add( $000A, 'ReportedValuesOrigin', [TTypeVR.vrCS], 'Reported Values Origin' );
     Add( $000C, 'RTImagePlane', [TTypeVR.vrCS], 'RT Image Plane' );
     Add( $000D, 'XRayImageReceptorTranslation', [TTypeVR.vrDS], 'X-Ray Image Receptor Translation' );
     Add( $000E, 'XRayImageReceptorAngle', [TTypeVR.vrDS], 'X-Ray Image Receptor Angle' );
     Add( $0010, 'RTImageOrientation', [TTypeVR.vrDS], 'RT Image Orientation' );
     Add( $0011, 'ImagePlanePixelSpacing', [TTypeVR.vrDS], 'Image Plane Pixel Spacing' );
     Add( $0012, 'RTImagePosition', [TTypeVR.vrDS], 'RT Image Position' );
     Add( $0020, 'RadiationMachineName', [TTypeVR.vrSH], 'Radiation Machine Name' );
     Add( $0022, 'RadiationMachineSAD', [TTypeVR.vrDS], 'Radiation Machine SAD' );
     Add( $0024, 'RadiationMachineSSD', [TTypeVR.vrDS], 'Radiation Machine SSD' );
     Add( $0026, 'RTImageSID', [TTypeVR.vrDS], 'RT Image SID' );
     Add( $0028, 'SourceToReferenceObjectDistance', [TTypeVR.vrDS], 'Source to Reference Object Distance' );
     Add( $0029, 'FractionNumber', [TTypeVR.vrIS], 'Fraction Number' );
     Add( $0030, 'ExposureSequence', [TTypeVR.vrSQ], 'Exposure Sequence' );
     Add( $0032, 'MetersetExposure', [TTypeVR.vrDS], 'Meterset Exposure' );
     Add( $0034, 'DiaphragmPosition', [TTypeVR.vrDS], 'Diaphragm Position' );
     Add( $0040, 'FluenceMapSequence', [TTypeVR.vrSQ], 'Fluence Map Sequence' );
     Add( $0041, 'FluenceDataSource', [TTypeVR.vrCS], 'Fluence Data Source' );
     Add( $0042, 'FluenceDataScale', [TTypeVR.vrDS], 'Fluence Data Scale' );
     Add( $0050, 'PrimaryFluenceModeSequence', [TTypeVR.vrSQ], 'Primary Fluence Mode Sequence' );
     Add( $0051, 'FluenceMode', [TTypeVR.vrCS], 'Fluence Mode' );
     Add( $0052, 'FluenceModeID', [TTypeVR.vrSH], 'Fluence Mode ID' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
