unit LUX.DICOM.Ports.D1;

interface //#################################################################### ■

uses System.SysUtils,
     LUX.DICOM;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     TdcmPort1D<_TYPE_> = class;
       TdcmPortOB       = class;
       TdcmPortOD       = class;
       TdcmPortOF       = class;
       TdcmPortOL       = class;
       TdcmPortOW       = class;
       TdcmPortUN       = class;
       TdcmPortSQ       = class;

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

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

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmPortOB

     TdcmPortOB = class( TdcmPort1D<Byte> )
     private
     protected
       ///// アクセス
       function GetTexts( const I_:Integer ) :String; override;
       procedure SetTexts( const I_:Integer; const Text_:String ); override;
     public
     end;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmPortOD

     TdcmPortOD = class( TdcmPort1D<Double> )
     private
     protected
       ///// アクセス
       function GetTexts( const I_:Integer ) :String; override;
       procedure SetTexts( const I_:Integer; const Text_:String ); override;
     public
     end;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmPortOF

     TdcmPortOF = class( TdcmPort1D<Single> )
     private
     protected
       ///// アクセス
       function GetTexts( const I_:Integer ) :String; override;
       procedure SetTexts( const I_:Integer; const Text_:String ); override;
     public
     end;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmPortOL

     TdcmPortOL = class( TdcmPort1D<Cardinal> )
     private
     protected
       ///// アクセス
       function GetTexts( const I_:Integer ) :String; override;
       procedure SetTexts( const I_:Integer; const Text_:String ); override;
     public
     end;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmPortOW

     TdcmPortOW = class( TdcmPort1D<Word> )
     private
     protected
       ///// アクセス
       function GetTexts( const I_:Integer ) :String; override;
       procedure SetTexts( const I_:Integer; const Text_:String ); override;
     public
     end;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmPortUN

     TdcmPortUN = class( TdcmPort1D<Byte> )
     private
     protected
       ///// アクセス
       function GetTexts( const I_:Integer ) :String; override;
       procedure SetTexts( const I_:Integer; const Text_:String ); override;
     public
     end;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmPortSQ

     TdcmPortSQ = class( TdcmPort1D<TBytes> )
     private
     protected
       ///// アクセス
       function GetTexts( const I_:Integer ) :String; override;
       procedure SetTexts( const I_:Integer; const Text_:String ); override;
     public
     end;

//const //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【定数】

//var //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【変数】

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

implementation //############################################################### ■

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

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

     Move( _Data.Buff[ N * I_ ], Result, N );
end;

procedure TdcmPort1D<_TYPE_>.SetValues( const I_:Integer; const Value_:_TYPE_ );
var
   N :Integer;
begin
     N := SizeOf( _TYPE_ );

     Move( Value_, _Data.Buff[ N * I_ ], N );
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmPortOB

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

/////////////////////////////////////////////////////////////////////// アクセス

function TdcmPortOB.GetTexts( const I_:Integer ) :String;
begin
     Result := Values[ I_ ].ToString;
end;

procedure TdcmPortOB.SetTexts( const I_:Integer; const Text_:String );
begin

end;

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmPortOD

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

/////////////////////////////////////////////////////////////////////// アクセス

function TdcmPortOD.GetTexts( const I_:Integer ) :String;
begin
     Result := Values[ I_ ].ToString;
end;

procedure TdcmPortOD.SetTexts( const I_:Integer; const Text_:String );
begin

end;

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmPortOF

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

/////////////////////////////////////////////////////////////////////// アクセス

function TdcmPortOF.GetTexts( const I_:Integer ) :String;
begin
     Result := Values[ I_ ].ToString;
end;

procedure TdcmPortOF.SetTexts( const I_:Integer; const Text_:String );
begin

end;

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmPortOL

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

/////////////////////////////////////////////////////////////////////// アクセス

function TdcmPortOL.GetTexts( const I_:Integer ) :String;
begin
     Result := Values[ I_ ].ToString;
end;

procedure TdcmPortOL.SetTexts( const I_:Integer; const Text_:String );
begin

end;

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmPortOW

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

/////////////////////////////////////////////////////////////////////// アクセス

function TdcmPortOW.GetTexts( const I_:Integer ) :String;
begin
     Result := Values[ I_ ].ToString;
end;

procedure TdcmPortOW.SetTexts( const I_:Integer; const Text_:String );
begin

end;

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmPortUN
{
  http://dicom.nema.org/medical/dicom/current/output/html/part05.html#sect_6.2.2
  6.2.2 Unknown (UN) Value Representation
}
//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

/////////////////////////////////////////////////////////////////////// アクセス

function TdcmPortUN.GetTexts( const I_:Integer ) :String;
begin
     Result := Values[ I_ ].ToHexString( 2 );
end;

procedure TdcmPortUN.SetTexts( const I_:Integer; const Text_:String );
begin

end;

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmPortSQ

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

/////////////////////////////////////////////////////////////////////// アクセス

function TdcmPortSQ.GetTexts( const I_:Integer ) :String;
begin

end;

procedure TdcmPortSQ.SetTexts( const I_:Integer; const Text_:String );
begin

end;

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
