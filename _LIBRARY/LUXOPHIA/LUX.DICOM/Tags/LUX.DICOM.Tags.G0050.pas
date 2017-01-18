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
     Add( $0004, 'CalibrationImage', [TTypeVR.vrCS], 'Calibration Image' );
     Add( $0010, 'DeviceSequence', [TTypeVR.vrSQ], 'Device Sequence' );
     Add( $0012, 'ContainerComponentTypeCodeSequence', [TTypeVR.vrSQ], 'Container Component Type Code Sequence' );
     Add( $0013, 'ContainerComponentThickness', [TTypeVR.vrFD], 'Container Component Thickness' );
     Add( $0014, 'DeviceLength', [TTypeVR.vrDS], 'Device Length' );
     Add( $0015, 'ContainerComponentWidth', [TTypeVR.vrFD], 'Container Component Width' );
     Add( $0016, 'DeviceDiameter', [TTypeVR.vrDS], 'Device Diameter' );
     Add( $0017, 'DeviceDiameterUnits', [TTypeVR.vrCS], 'Device Diameter Units' );
     Add( $0018, 'DeviceVolume', [TTypeVR.vrDS], 'Device Volume' );
     Add( $0019, 'InterMarkerDistance', [TTypeVR.vrDS], 'Inter-Marker Distance' );
     Add( $001A, 'ContainerComponentMaterial', [TTypeVR.vrCS], 'Container Component Material' );
     Add( $001B, 'ContainerComponentID', [TTypeVR.vrLO], 'Container Component ID' );
     Add( $001C, 'ContainerComponentLength', [TTypeVR.vrFD], 'Container Component Length' );
     Add( $001D, 'ContainerComponentDiameter', [TTypeVR.vrFD], 'Container Component Diameter' );
     Add( $001E, 'ContainerComponentDescription', [TTypeVR.vrLO], 'Container Component Description' );
     Add( $0020, 'DeviceDescription', [TTypeVR.vrLO], 'Device Description' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
