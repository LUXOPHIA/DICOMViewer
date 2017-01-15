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
     Add( $0001, [TTypeVR.vrFL], 'Contrast/Bolus Ingredient Percent by Volume' );
     Add( $0002, [TTypeVR.vrFD], 'OCT Focal Distance' );
     Add( $0003, [TTypeVR.vrFD], 'Beam Spot Size' );
     Add( $0004, [TTypeVR.vrFD], 'Effective Refractive Index' );
     Add( $0006, [TTypeVR.vrCS], 'OCT Acquisition Domain' );
     Add( $0007, [TTypeVR.vrFD], 'OCT Optical Center Wavelength' );
     Add( $0008, [TTypeVR.vrFD], 'Axial Resolution' );
     Add( $0009, [TTypeVR.vrFD], 'Ranging Depth' );
     Add( $0011, [TTypeVR.vrFD], 'A-line Rate' );
     Add( $0012, [TTypeVR.vrUS], 'A-lines Per Frame' );
     Add( $0013, [TTypeVR.vrFD], 'Catheter Rotational Rate' );
     Add( $0014, [TTypeVR.vrFD], 'A-line Pixel Spacing' );
     Add( $0016, [TTypeVR.vrSQ], 'Mode of Percutaneous Access Sequence' );
     Add( $0025, [TTypeVR.vrSQ], 'Intravascular OCT Frame Type Sequence' );
     Add( $0026, [TTypeVR.vrCS], 'OCT Z Offset Applied' );
     Add( $0027, [TTypeVR.vrSQ], 'Intravascular Frame Content Sequence' );
     Add( $0028, [TTypeVR.vrFD], 'Intravascular Longitudinal Distance' );
     Add( $0029, [TTypeVR.vrSQ], 'Intravascular OCT Frame Content Sequence' );
     Add( $0030, [TTypeVR.vrSS], 'OCT Z Offset Correction' );
     Add( $0031, [TTypeVR.vrCS], 'Catheter Direction of Rotation' );
     Add( $0033, [TTypeVR.vrFD], 'Seam Line Location' );
     Add( $0034, [TTypeVR.vrFD], 'First A-line Location' );
     Add( $0036, [TTypeVR.vrUS], 'Seam Line Index' );
     Add( $0038, [TTypeVR.vrUS], 'Number of Padded A-lines' );
     Add( $0039, [TTypeVR.vrCS], 'Interpolation Type' );
     Add( $003A, [TTypeVR.vrCS], 'Refractive Index Applied' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
