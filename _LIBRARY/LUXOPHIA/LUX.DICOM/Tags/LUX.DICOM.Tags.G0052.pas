unit LUX.DICOM.Tags.G0052;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0052

     TdcmGrup0052 = class( TdcmGrup )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0052

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmGrup0052.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0001, 'ContrastBolusIngredientPercentByVolume', [TKindVR.vrFL], 'Contrast/Bolus Ingredient Percent by Volume' );
     Add( $0002, 'OCTFocalDistance', [TKindVR.vrFD], 'OCT Focal Distance' );
     Add( $0003, 'BeamSpotSize', [TKindVR.vrFD], 'Beam Spot Size' );
     Add( $0004, 'EffectiveRefractiveIndex', [TKindVR.vrFD], 'Effective Refractive Index' );
     Add( $0006, 'OCTAcquisitionDomain', [TKindVR.vrCS], 'OCT Acquisition Domain' );
     Add( $0007, 'OCTOpticalCenterWavelength', [TKindVR.vrFD], 'OCT Optical Center Wavelength' );
     Add( $0008, 'AxialResolution', [TKindVR.vrFD], 'Axial Resolution' );
     Add( $0009, 'RangingDepth', [TKindVR.vrFD], 'Ranging Depth' );
     Add( $0011, 'ALineRate', [TKindVR.vrFD], 'A-line Rate' );
     Add( $0012, 'ALinesPerFrame', [TKindVR.vrUS], 'A-lines Per Frame' );
     Add( $0013, 'CatheterRotationalRate', [TKindVR.vrFD], 'Catheter Rotational Rate' );
     Add( $0014, 'ALinePixelSpacing', [TKindVR.vrFD], 'A-line Pixel Spacing' );
     Add( $0016, 'ModeOfPercutaneousAccessSequence', [TKindVR.vrSQ], 'Mode of Percutaneous Access Sequence' );
     Add( $0025, 'IntravascularOCTFrameTypeSequence', [TKindVR.vrSQ], 'Intravascular OCT Frame Type Sequence' );
     Add( $0026, 'OCTZOffsetApplied', [TKindVR.vrCS], 'OCT Z Offset Applied' );
     Add( $0027, 'IntravascularFrameContentSequence', [TKindVR.vrSQ], 'Intravascular Frame Content Sequence' );
     Add( $0028, 'IntravascularLongitudinalDistance', [TKindVR.vrFD], 'Intravascular Longitudinal Distance' );
     Add( $0029, 'IntravascularOCTFrameContentSequence', [TKindVR.vrSQ], 'Intravascular OCT Frame Content Sequence' );
     Add( $0030, 'OCTZOffsetCorrection', [TKindVR.vrSS], 'OCT Z Offset Correction' );
     Add( $0031, 'CatheterDirectionOfRotation', [TKindVR.vrCS], 'Catheter Direction of Rotation' );
     Add( $0033, 'SeamLineLocation', [TKindVR.vrFD], 'Seam Line Location' );
     Add( $0034, 'FirstALineLocation', [TKindVR.vrFD], 'First A-line Location' );
     Add( $0036, 'SeamLineIndex', [TKindVR.vrUS], 'Seam Line Index' );
     Add( $0038, 'NumberOfPaddedALines', [TKindVR.vrUS], 'Number of Padded A-lines' );
     Add( $0039, 'InterpolationType', [TKindVR.vrCS], 'Interpolation Type' );
     Add( $003A, 'RefractiveIndexApplied', [TKindVR.vrCS], 'Refractive Index Applied' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
