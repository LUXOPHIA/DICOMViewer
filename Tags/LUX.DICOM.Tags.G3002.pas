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
     Add( $0002, TKindVR.vrSH, 'RT Image Label' );
     Add( $0003, TKindVR.vrLO, 'RT Image Name' );
     Add( $0004, TKindVR.vrST, 'RT Image Description' );
     Add( $000A, TKindVR.vrCS, 'Reported Values Origin' );
     Add( $000C, TKindVR.vrCS, 'RT Image Plane' );
     Add( $000D, TKindVR.vrDS, 'X-Ray Image Receptor Translation' );
     Add( $000E, TKindVR.vrDS, 'X-Ray Image Receptor Angle' );
     Add( $0010, TKindVR.vrDS, 'RT Image Orientation' );
     Add( $0011, TKindVR.vrDS, 'Image Plane Pixel Spacing' );
     Add( $0012, TKindVR.vrDS, 'RT Image Position' );
     Add( $0020, TKindVR.vrSH, 'Radiation Machine Name' );
     Add( $0022, TKindVR.vrDS, 'Radiation Machine SAD' );
     Add( $0024, TKindVR.vrDS, 'Radiation Machine SSD' );
     Add( $0026, TKindVR.vrDS, 'RT Image SID' );
     Add( $0028, TKindVR.vrDS, 'Source to Reference Object Distance' );
     Add( $0029, TKindVR.vrIS, 'Fraction Number' );
     Add( $0030, TKindVR.vrSQ, 'Exposure Sequence' );
     Add( $0032, TKindVR.vrDS, 'Meterset Exposure' );
     Add( $0034, TKindVR.vrDS, 'Diaphragm Position' );
     Add( $0040, TKindVR.vrSQ, 'Fluence Map Sequence' );
     Add( $0041, TKindVR.vrCS, 'Fluence Data Source' );
     Add( $0042, TKindVR.vrDS, 'Fluence Data Scale' );
     Add( $0050, TKindVR.vrSQ, 'Primary Fluence Mode Sequence' );
     Add( $0051, TKindVR.vrCS, 'Fluence Mode' );
     Add( $0052, TKindVR.vrSH, 'Fluence Mode ID' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
