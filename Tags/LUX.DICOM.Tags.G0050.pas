unit LUX.DICOM.Tags.G0050;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0050

     TdcmGrup0050 = class( TdcmGrup )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0050

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmGrup0050.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0004, 'CalibrationImage', [TKindVR.vrCS], 'Calibration Image' );
     Add( $0010, 'DeviceSequence', [TKindVR.vrSQ], 'Device Sequence' );
     Add( $0012, 'ContainerComponentTypeCodeSequence', [TKindVR.vrSQ], 'Container Component Type Code Sequence' );
     Add( $0013, 'ContainerComponentThickness', [TKindVR.vrFD], 'Container Component Thickness' );
     Add( $0014, 'DeviceLength', [TKindVR.vrDS], 'Device Length' );
     Add( $0015, 'ContainerComponentWidth', [TKindVR.vrFD], 'Container Component Width' );
     Add( $0016, 'DeviceDiameter', [TKindVR.vrDS], 'Device Diameter' );
     Add( $0017, 'DeviceDiameterUnits', [TKindVR.vrCS], 'Device Diameter Units' );
     Add( $0018, 'DeviceVolume', [TKindVR.vrDS], 'Device Volume' );
     Add( $0019, 'InterMarkerDistance', [TKindVR.vrDS], 'Inter-Marker Distance' );
     Add( $001A, 'ContainerComponentMaterial', [TKindVR.vrCS], 'Container Component Material' );
     Add( $001B, 'ContainerComponentID', [TKindVR.vrLO], 'Container Component ID' );
     Add( $001C, 'ContainerComponentLength', [TKindVR.vrFD], 'Container Component Length' );
     Add( $001D, 'ContainerComponentDiameter', [TKindVR.vrFD], 'Container Component Diameter' );
     Add( $001E, 'ContainerComponentDescription', [TKindVR.vrLO], 'Container Component Description' );
     Add( $0020, 'DeviceDescription', [TKindVR.vrLO], 'Device Description' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
