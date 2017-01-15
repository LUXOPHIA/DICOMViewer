unit LUX.DICOM.Tags.G3002;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems3002

     TDICOMElems3002 = class( TDICOMElems )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems3002

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TDICOMElems3002.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0002, [TTypeVR.vrSH], 'RT Image Label' );
     Add( $0003, [TTypeVR.vrLO], 'RT Image Name' );
     Add( $0004, [TTypeVR.vrST], 'RT Image Description' );
     Add( $000A, [TTypeVR.vrCS], 'Reported Values Origin' );
     Add( $000C, [TTypeVR.vrCS], 'RT Image Plane' );
     Add( $000D, [TTypeVR.vrDS], 'X-Ray Image Receptor Translation' );
     Add( $000E, [TTypeVR.vrDS], 'X-Ray Image Receptor Angle' );
     Add( $0010, [TTypeVR.vrDS], 'RT Image Orientation' );
     Add( $0011, [TTypeVR.vrDS], 'Image Plane Pixel Spacing' );
     Add( $0012, [TTypeVR.vrDS], 'RT Image Position' );
     Add( $0020, [TTypeVR.vrSH], 'Radiation Machine Name' );
     Add( $0022, [TTypeVR.vrDS], 'Radiation Machine SAD' );
     Add( $0024, [TTypeVR.vrDS], 'Radiation Machine SSD' );
     Add( $0026, [TTypeVR.vrDS], 'RT Image SID' );
     Add( $0028, [TTypeVR.vrDS], 'Source to Reference Object Distance' );
     Add( $0029, [TTypeVR.vrIS], 'Fraction Number' );
     Add( $0030, [TTypeVR.vrSQ], 'Exposure Sequence' );
     Add( $0032, [TTypeVR.vrDS], 'Meterset Exposure' );
     Add( $0034, [TTypeVR.vrDS], 'Diaphragm Position' );
     Add( $0040, [TTypeVR.vrSQ], 'Fluence Map Sequence' );
     Add( $0041, [TTypeVR.vrCS], 'Fluence Data Source' );
     Add( $0042, [TTypeVR.vrDS], 'Fluence Data Scale' );
     Add( $0050, [TTypeVR.vrSQ], 'Primary Fluence Mode Sequence' );
     Add( $0051, [TTypeVR.vrCS], 'Fluence Mode' );
     Add( $0052, [TTypeVR.vrSH], 'Fluence Mode ID' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
