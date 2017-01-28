unit LUX.DICOM.Tags.G7Fxx;

interface //#################################################################### ■

uses LUX, LUX.DICOM.VRs, LUX.DICOM.Tags;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup7Fxx

     TdcmGrup7Fxx = class( TdcmGrup )
     private
     protected
     public
       class procedure AddBook( const Book_:TdcmBookTag );
       constructor Create7FE0( const Book_:TdcmBookTag );
       constructor Create( const Book_:TdcmBookTag; const Code_:THex4 );
     end;

//const //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【定数】

//var //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【変数】

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

implementation //############################################################### ■

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup7Fxx

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

class procedure TdcmGrup7Fxx.AddBook( const Book_:TdcmBookTag );
var
   I :Byte;
   N :Word;
begin
     for I := 0 to $FE div 2 do
     begin
          N := $7F00 + 2 * I;

          if N = $7FE0 then Create7FE0( Book_ )
                       else Create( Book_, N );
     end;
end;

//------------------------------------------------------------------------------

constructor TdcmGrup7Fxx.Create7FE0( const Book_:TdcmBookTag );
begin
     inherited Create( Book_, $7FE0 );

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0008, 'FloatPixelData', [TKindVR.vrOF], 'Float Pixel Data' );
     Add( $0009, 'DoubleFloatPixelData', [TKindVR.vrOD], 'Double Float Pixel Data' );
     Add( $0010, 'PixelData', [TKindVR.vrOB,TKindVR.vrOW], 'Pixel Data' );
     Add( $0020, 'CoefficientsSDVN', [TKindVR.vrOW], 'Coefficients SDVN' );
     Add( $0030, 'CoefficientsSDHN', [TKindVR.vrOW], 'Coefficients SDHN' );
     Add( $0040, 'CoefficientsSDDN', [TKindVR.vrOW], 'Coefficients SDDN' );
end;

constructor TdcmGrup7Fxx.Create( const Book_:TdcmBookTag; const Code_:THex4 );
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0010, 'VariablePixelData', [TKindVR.vrOB,TKindVR.vrOW], 'Variable Pixel Data' );
     Add( $0011, 'VariableNextDataGroup', [TKindVR.vrUS], 'Variable Next Data Group' );
     Add( $0020, 'VariableCoefficientsSDVN', [TKindVR.vrOW], 'Variable Coefficients SDVN' );
     Add( $0030, 'VariableCoefficientsSDHN', [TKindVR.vrOW], 'Variable Coefficients SDHN' );
     Add( $0040, 'VariableCoefficientsSDDN', [TKindVR.vrOW], 'Variable Coefficients SDDN' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
