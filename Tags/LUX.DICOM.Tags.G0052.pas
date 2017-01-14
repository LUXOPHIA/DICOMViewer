unit LUX.DICOM.Tags.G0052;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems0052

     TDICOMElems0052 = class( TDICOMElems )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems0052

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TDICOMElems0052.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0001, TKindVR.vrFL, 'Contrast/Bolus Ingredient Percent by Volume' );
     Add( $0002, TKindVR.vrFD, 'OCT Focal Distance' );
     Add( $0003, TKindVR.vrFD, 'Beam Spot Size' );
     Add( $0004, TKindVR.vrFD, 'Effective Refractive Index' );
     Add( $0006, TKindVR.vrCS, 'OCT Acquisition Domain' );
     Add( $0007, TKindVR.vrFD, 'OCT Optical Center Wavelength' );
     Add( $0008, TKindVR.vrFD, 'Axial Resolution' );
     Add( $0009, TKindVR.vrFD, 'Ranging Depth' );
     Add( $0011, TKindVR.vrFD, 'A-line Rate' );
     Add( $0012, TKindVR.vrUS, 'A-lines Per Frame' );
     Add( $0013, TKindVR.vrFD, 'Catheter Rotational Rate' );
     Add( $0014, TKindVR.vrFD, 'A-line Pixel Spacing' );
     Add( $0016, TKindVR.vrSQ, 'Mode of Percutaneous Access Sequence' );
     Add( $0025, TKindVR.vrSQ, 'Intravascular OCT Frame Type Sequence' );
     Add( $0026, TKindVR.vrCS, 'OCT Z Offset Applied' );
     Add( $0027, TKindVR.vrSQ, 'Intravascular Frame Content Sequence' );
     Add( $0028, TKindVR.vrFD, 'Intravascular Longitudinal Distance' );
     Add( $0029, TKindVR.vrSQ, 'Intravascular OCT Frame Content Sequence' );
     Add( $0030, TKindVR.vrSS, 'OCT Z Offset Correction' );
     Add( $0031, TKindVR.vrCS, 'Catheter Direction of Rotation' );
     Add( $0033, TKindVR.vrFD, 'Seam Line Location' );
     Add( $0034, TKindVR.vrFD, 'First A-line Location' );
     Add( $0036, TKindVR.vrUS, 'Seam Line Index' );
     Add( $0038, TKindVR.vrUS, 'Number of Padded A-lines' );
     Add( $0039, TKindVR.vrCS, 'Interpolation Type' );
     Add( $003A, TKindVR.vrCS, 'Refractive Index Applied' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
