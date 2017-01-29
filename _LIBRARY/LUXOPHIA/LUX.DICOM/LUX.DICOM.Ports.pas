unit LUX.DICOM.Ports;

interface //#################################################################### ■

uses System.SysUtils, System.Math, System.RegularExpressions,
     LUX, LUX.DICOM;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     TdcmPort1D<_TYPE_> = class;
     TdcmPort2D<_TYPE_> = class;

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmDate

     TdcmDate = record
     private
     public
       Y :Word;
       M :Byte;
       D :Byte;
       /////
       constructor Create( const Y_:Word; const M_,D_:Byte ); overload;
       constructor Create( const Text_:String ); overload;
       ///// メソッド
       function ToString :String;
     end;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmTime

     TdcmTime = record
     private
     public
       H :Byte;
       M :Byte;
       S :Double;
       /////
       constructor Create( const H_,M_:Byte; const S_:Double ); overload;
       constructor Create( const Text_:String ); overload;
       ///// メソッド
       function ToString :String;
     end;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmZone

     TdcmZone = record
     private
     public
       Sign :TValueSign;
       Time :TdcmTime;
       /////
       constructor Create( const Sign_:TValueSign; const TimeH_,TimeM_:Byte ); overload;
       constructor Create( const Text_:String ); overload;
       ///// メソッド
       function ToString :String;
     end;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmDateTime

     TdcmDateTime = record
     private
     public
       Date :TdcmDate;
       Time :TdcmTime;
       Zone :TdcmZone;
       /////
       constructor Create( const Text_:String );
       ///// メソッド
       function ToString :String;
     end;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TKindPixel

     TKindPixel = ( pxNone,
                    pxMONOCHROME1,      //MONOCHROME1
                    pxMONOCHROME2,      //MONOCHROME2
                    pxPALETTECOLOR,     //PALETTE COLOR
                    pxRGB,              //RGB
                    pxYBRFULL,          //YBR_FULL
                    pxYBRFULL422,       //YBR_FULL_422
                    pxYBRPARTIAL422,    //YBR_PARTIAL_422
                    pxYBRPARTIAL420,    //YBR_PARTIAL_420
                    pxYBRICT,           //YBR_ICT
                    pxYBRRCT        );  //YBR_RCT

     HKindPixel = record helper for TKindPixel
     private
     public
       constructor Create( const Text_:String );
       ///// メソッド
       function ToString :String;
     end;

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmPort1D<_TYPE_>

     IdcmPort1D = interface( IdcmPort )
       ['{3414C784-907D-448A-BF97-D6FADE2BC9A1}']
       ///// アクセス
       function GetTexts( const I_:Integer ) :String;
       procedure SetTexts( const I_:Integer; const Text_:String );
       function GetCountN :Integer;
       procedure SetCountN( const CountN_:Integer );
       ///// プロパティ
       property Texts[ const I_:Integer ] :String  read GetTexts  write SetTexts ;
       property CountN                    :Integer read GetCountN write SetCountN;
     end;

     //-------------------------------------------------------------------------

     TdcmPort1D<_TYPE_> = class( TdcmPort<_TYPE_>, IdcmPort1D )
     private
     protected
       ///// アクセス
       function GetValues( const I_:Integer ) :_TYPE_; virtual;
       procedure SetValues( const I_:Integer; const Value_:_TYPE_ ); virtual;
       { IdcmPort }
       function GetText :String; override;
       procedure SetText( const Text_:String ); override;
       { IdcmPort1D }
       function GetTexts( const I_:Integer ) :String; virtual; abstract;
       procedure SetTexts( const I_:Integer; const Text_:String ); virtual; abstract;
       function GetCountN :Integer; virtual;
       procedure SetCountN( const CountN_:Integer ); virtual;
     public
       ///// プロパティ
       property Values[ const I_:Integer ] :_TYPE_  read GetValues write SetValues;
       { IdcmPort1D }
       property Texts[ const I_:Integer ]  :String  read GetTexts  write SetTexts ;
       property CountN                     :Integer read GetCountN write SetCountN;
     end;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmPort2D<_TYPE_>

     IdcmPort2D = interface( IdcmPort1D )
       ['{96D62B01-9EBA-4C4D-BD1B-3B6F70483A58}']
       ///// アクセス
       function GetTexts2D( const X_,Y_:Integer ) :String;
       procedure SetTexts2D( const X_,Y_:Integer; const Text_:String );
       function GetCountX :Integer;
       procedure SetCountX( const CountX_:Integer );
       function GetCountY :Integer;
       procedure SetCountY( const CountY_:Integer );
       ///// プロパティ
       property Texts2D[ const X_,Y_:Integer ] :String  read GetTexts2D write SetTexts2D;
       property CountX                         :Integer read GetCountX  write SetCountX ;
       property CountY                         :Integer read GetCountY  write SetCountY ;
     end;

     //-------------------------------------------------------------------------

     TdcmPort2D<_TYPE_> = class( TdcmPort1D<_TYPE_>, IdcmPort2D )
     private
     protected
       _CountX :Word;
       _CountY :Word;
       ///// アクセス
       function GetValues2D( const X_,Y_:Integer ) :_TYPE_; virtual;
       procedure SetValues2D( const X_,Y_:Integer; const Value_:_TYPE_ ); virtual;
       { IdcmPort1D }
       function GetCountN :Integer; override;
       procedure SetCountN( const CountN_:Integer ); override;
       { IdcmPort2D }
       function GetTexts2D( const X_,Y_:Integer ) :String; virtual;
       procedure SetTexts2D( const X_,Y_:Integer; const Text_:String ); virtual;
       function GetCountX :Integer; virtual;
       procedure SetCountX( const CountX_:Integer ); virtual;
       function GetCountY :Integer; virtual;
       procedure SetCountY( const CountY_:Integer ); virtual;
     public
       ///// プロパティ
       property Values2D[ const X_,Y_:Integer ] :_TYPE_  read GetValues2D write SetValues2D;
       { IdcmPort2D }
       property Texts2D[ const X_,Y_:Integer ]  :String  read GetTexts2D  write SetTexts2D ;
       property CountX                          :Integer read GetCountX   write SetCountX  ;
       property CountY                          :Integer read GetCountY   write SetCountY  ;
     end;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmPortSQ

     TdcmPortSQ = class( TdcmPort1D<TBytes> )
     private
     protected
       ///// アクセス
       function GetText :String; override;
       procedure SetText( const Text_:String ); override;
     public
     end;

//const //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【定数】

//var //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【変数】

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

implementation //############################################################### ■

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmDate

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmDate.Create( const Y_:Word; const M_,D_:Byte );
begin
     Y := Y_;
     M := M_;
     D := D_;
end;

constructor TdcmDate.Create( const Text_:String );
begin
     with TRegEx.Match( Text_, '(\d{4})(\d{2})?(\d{2})?' ) do
     begin
          with Groups do
          begin
               if Count > 1 then Y := Item[1].Value.ToInteger else Y := 0;
               if Count > 2 then M := Item[2].Value.ToInteger else M := 0;
               if Count > 3 then D := Item[3].Value.ToInteger else D := 0;
          end;
     end;
end;

/////////////////////////////////////////////////////////////////////// メソッド

function TdcmDate.ToString :String;
begin
     Result := Format( '%.4d%.2d%.2d', [ Y, M, D ] );
end;

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmTime

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmTime.Create( const H_,M_:Byte; const S_:Double );
begin
     H := H_;
     M := M_;
     S := S_;
end;

constructor TdcmTime.Create( const Text_:String );
begin
     with TRegEx.Match( Text_, '(\d{2})(\d{2})?(\d{2}(?:\.\d{1,6})?)?' ) do
     begin
          with Groups do
          begin
               if Count > 1 then H := Item[1].Value.ToInteger else H := 0;
               if Count > 2 then M := Item[2].Value.ToInteger else M := 0;
               if Count > 3 then S := Item[3].Value.ToDouble  else S := 0;
          end;
     end;
end;

/////////////////////////////////////////////////////////////////////// メソッド

function TdcmTime.ToString :String;
begin
     Result := Format( '%.2d%.2d%.2d', [ H, M, Trunc( S ) ] ) + Frac( S ).ToString.Substring( 1 );
end;

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmZone

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmZone.Create( const Sign_:TValueSign; const TimeH_,TimeM_:Byte );
begin
     Sign := Sign_;
     Time := TdcmTime.Create( TimeH_, TimeM_, 0 );
end;

constructor TdcmZone.Create( const Text_:String );
begin
     with TRegEx.Match( Text_, '([-+])((?:\d{2}){2})' ) do
     begin
          if Success then
          begin
               Sign := ( Groups[1].Value + '1' ).ToInteger;
               Time := TdcmTime.Create( Groups[2].Value );
          end
          else Self := TdcmZone.Create( 0, 0, 0 );
     end;
end;

/////////////////////////////////////////////////////////////////////// メソッド

function TdcmZone.ToString :String;
begin
     if Sign = 0 then Result := ''
     else
     begin
          if Sign = -1 then Result := '-'
                       else Result := '+';

          Result := Result + Format( '%.2d%.2d', [ Time.H, Time.M ] );
     end;
end;

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmDateTime

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmDateTime.Create( const Text_:String );
begin
     with TRegEx.Match( Text_, '(\d{4}(?:\d{2}){0,2})((?:\d{2}){1,2}(?:\d{2}\.\d{1,6})?)?' ) do
     begin
          with Groups do
          begin
               if Count > 1 then Date := TdcmDate.Create( Item[1].Value )
                            else Date := TdcmDate.Create( 0, 0, 0 );

               if Count > 2 then Time := TdcmTime.Create( Item[2].Value )
                            else Time := TdcmTime.Create( 0, 0, 0 );
          end;
     end;

     //////////

     with TRegEx.Match( Text_, '[-+](?:\d{2}){2}' ) do
     begin
          if Success then Zone := TdcmZone.Create( Value )
                     else Zone := TdcmZone.Create( 0, 0, 0 );
     end;
end;

/////////////////////////////////////////////////////////////////////// メソッド

function TdcmDateTime.ToString :String;
begin
     Result := Date.ToString + Time.ToString + Zone.ToString;
end;

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TKindPixel
{
  http://dicom.nema.org/medical/dicom/current/output/html/part03.html#sect_C.7.6.3.1.2
  C.7.6.3.1.2 Photometric Interpretation
}
//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor HKindPixel.Create( const Text_:String );
var
   T :String;
begin
     T := Text_.TrimRight;

     if T = 'MONOCHROME1'     then Self := TKindPixel.pxMONOCHROME1
                              else
     if T = 'MONOCHROME2'     then Self := TKindPixel.pxMONOCHROME2
                              else
     if T = 'PALETTE COLOR'   then Self := TKindPixel.pxPALETTECOLOR
                              else
     if T = 'RGB'             then Self := TKindPixel.pxRGB
                              else
     if T = 'YBR_FULL'        then Self := TKindPixel.pxYBRFULL
                              else
     if T = 'YBR_FULL_422'    then Self := TKindPixel.pxYBRFULL422
                              else
     if T = 'YBR_PARTIAL_422' then Self := TKindPixel.pxYBRPARTIAL422
                              else
     if T = 'YBR_PARTIAL_420' then Self := TKindPixel.pxYBRPARTIAL420
                              else
     if T = 'YBR_ICT'         then Self := TKindPixel.pxYBRICT
                              else
     if T = 'YBR_RCT'         then Self := TKindPixel.pxYBRRCT
                              else Self := TKindPixel.pxNone;
end;

/////////////////////////////////////////////////////////////////////// メソッド

function HKindPixel.ToString :String;
begin
     case Self of
     TKindPixel.pxNone         : Result := '';
     TKindPixel.pxMONOCHROME1  : Result := 'MONOCHROME1';
     TKindPixel.pxMONOCHROME2  : Result := 'MONOCHROME2';
     TKindPixel.pxPALETTECOLOR : Result := 'PALETTE COLOR';
     TKindPixel.pxRGB          : Result := 'RGB';
     TKindPixel.pxYBRFULL      : Result := 'YBR_FULL';
     TKindPixel.pxYBRFULL422   : Result := 'YBR_FULL_422';
     TKindPixel.pxYBRPARTIAL422: Result := 'YBR_PARTIAL_422';
     TKindPixel.pxYBRPARTIAL420: Result := 'YBR_PARTIAL_420';
     TKindPixel.pxYBRICT       : Result := 'YBR_ICT';
     TKindPixel.pxYBRRCT       : Result := 'YBR_RCT';
     end;
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmPort1D<_TYPE_>

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

/////////////////////////////////////////////////////////////////////// アクセス

function TdcmPort1D<_TYPE_>.GetValues( const I_:Integer ) :_TYPE_;
var
   N :Integer;
begin
     N := SizeOf( _TYPE_ );

     Move( _Data.Data[ N * I_ ], Result, N );
end;

procedure TdcmPort1D<_TYPE_>.SetValues( const I_:Integer; const Value_:_TYPE_ );
var
   N :Integer;
begin
     N := SizeOf( _TYPE_ );

     Move( Value_, _Data.Data[ N * I_ ], N );
end;

//------------------------------------------------------------------------------

function TdcmPort1D<_TYPE_>.GetText :String;
var
   I :Integer;
begin
     if CountN > 0 then
     begin
          Result := Texts[ 0 ];

          if CountN > 5 then
          begin
               for I := 1 to       5-1 do Result := Result + ', ' + Texts[ I ];

               Result := Result + ',...';
          end
          else
          begin
               for I := 1 to CountN-1 do Result := Result + ', ' + Texts[ I ];
          end;
     end;
end;

procedure TdcmPort1D<_TYPE_>.SetText( const Text_:String );
begin

end;

//------------------------------------------------------------------------------

function TdcmPort1D<_TYPE_>.GetCountN :Integer;
begin
     Result := _Data.Size div SizeOf( _TYPE_ );
end;

procedure TdcmPort1D<_TYPE_>.SetCountN( const CountN_:Integer );
begin
     _Data.Size := SizeOf( _TYPE_ ) * CountN_;
end;

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmPort2D<_TYPE_>

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

/////////////////////////////////////////////////////////////////////// アクセス

function TdcmPort2D<_TYPE_>.GetValues2D( const X_,Y_:Integer ) :_TYPE_;
begin
     Result := Values[ _CountX * Y_ + X_ ];
end;

procedure TdcmPort2D<_TYPE_>.SetValues2D( const X_,Y_:Integer; const Value_:_TYPE_ );
begin
     Values[ _CountX * Y_ + X_ ] := Value_;
end;

//------------------------------------------------------------------------------

function TdcmPort2D<_TYPE_>.GetCountN :Integer;
begin
     Result := _CountY * _CountX;
end;

procedure TdcmPort2D<_TYPE_>.SetCountN( const CountN_:Integer );
begin

end;

//------------------------------------------------------------------------------

function TdcmPort2D<_TYPE_>.GetTexts2D( const X_,Y_:Integer ) :String;
begin
     Result := Texts[ _CountX * Y_ + X_ ];
end;

procedure TdcmPort2D<_TYPE_>.SetTexts2D( const X_,Y_:Integer; const Text_:String );
begin
     Texts[ _CountX * Y_ + X_ ] := Text_;
end;

//------------------------------------------------------------------------------

function TdcmPort2D<_TYPE_>.GetCountX :Integer;
begin
     Result := _CountX;
end;

procedure TdcmPort2D<_TYPE_>.SetCountX( const CountX_:Integer );
begin
     _CountX := CountX_;
end;

function TdcmPort2D<_TYPE_>.GetCountY :Integer;
begin
     Result := _CountY;
end;

procedure TdcmPort2D<_TYPE_>.SetCountY( const CountY_:Integer );
begin
     _CountY := CountY_;
end;

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmPortSQ

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

/////////////////////////////////////////////////////////////////////// アクセス

function TdcmPortSQ.GetText :String;
begin

end;

procedure TdcmPortSQ.SetText( const Text_:String );
begin

end;

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
