﻿unit LUX.DICOM.Tags.G0080;

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
       constructor Create;
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

constructor TdcmGrup0080.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0001, 'SurfaceScanAcquisitionTypeCodeSequence', [TTypeVR.vrSQ], 'Surface Scan Acquisition Type Code Sequence' );
     Add( $0002, 'SurfaceScanModeCodeSequence', [TTypeVR.vrSQ], 'Surface Scan Mode Code Sequence' );
     Add( $0003, 'RegistrationMethodCodeSequence', [TTypeVR.vrSQ], 'Registration Method Code Sequence' );
     Add( $0004, 'ShotDurationTime', [TTypeVR.vrFD], 'Shot Duration Time' );
     Add( $0005, 'ShotOffsetTime', [TTypeVR.vrFD], 'Shot Offset Time' );
     Add( $0006, 'SurfacePointPresentationValueData', [TTypeVR.vrUS], 'Surface Point Presentation Value Data' );
     Add( $0007, 'SurfacePointColorCIELabValueData', [TTypeVR.vrUS], 'Surface Point Color CIELab Value Data' );
     Add( $0008, 'UVMappingSequence', [TTypeVR.vrSQ], 'UV Mapping Sequence' );
     Add( $0009, 'TextureLabel', [TTypeVR.vrSH], 'Texture Label' );
     Add( $0010, 'UValueData', [TTypeVR.vrOF], 'U Value Data' );
     Add( $0011, 'VValueData', [TTypeVR.vrOF], 'V Value Data' );
     Add( $0012, 'ReferencedTextureSequence', [TTypeVR.vrSQ], 'Referenced Texture Sequence' );
     Add( $0013, 'ReferencedSurfaceDataSequence', [TTypeVR.vrSQ], 'Referenced Surface Data Sequence' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
