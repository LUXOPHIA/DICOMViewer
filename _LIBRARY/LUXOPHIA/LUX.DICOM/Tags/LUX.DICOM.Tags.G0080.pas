unit LUX.DICOM.Tags.G0080;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0080

     TdcmGrup0080 = class( TdcmGrup )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0080

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmGrup0080.Create( const Code_:THex4 );
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0001, 'SurfaceScanAcquisitionTypeCodeSequence', [TKindVR.vrSQ], 'Surface Scan Acquisition Type Code Sequence' );
     Add( $0002, 'SurfaceScanModeCodeSequence', [TKindVR.vrSQ], 'Surface Scan Mode Code Sequence' );
     Add( $0003, 'RegistrationMethodCodeSequence', [TKindVR.vrSQ], 'Registration Method Code Sequence' );
     Add( $0004, 'ShotDurationTime', [TKindVR.vrFD], 'Shot Duration Time' );
     Add( $0005, 'ShotOffsetTime', [TKindVR.vrFD], 'Shot Offset Time' );
     Add( $0006, 'SurfacePointPresentationValueData', [TKindVR.vrUS], 'Surface Point Presentation Value Data' );
     Add( $0007, 'SurfacePointColorCIELabValueData', [TKindVR.vrUS], 'Surface Point Color CIELab Value Data' );
     Add( $0008, 'UVMappingSequence', [TKindVR.vrSQ], 'UV Mapping Sequence' );
     Add( $0009, 'TextureLabel', [TKindVR.vrSH], 'Texture Label' );
     Add( $0010, 'UValueData', [TKindVR.vrOF], 'U Value Data' );
     Add( $0011, 'VValueData', [TKindVR.vrOF], 'V Value Data' );
     Add( $0012, 'ReferencedTextureSequence', [TKindVR.vrSQ], 'Referenced Texture Sequence' );
     Add( $0013, 'ReferencedSurfaceDataSequence', [TKindVR.vrSQ], 'Referenced Surface Data Sequence' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
