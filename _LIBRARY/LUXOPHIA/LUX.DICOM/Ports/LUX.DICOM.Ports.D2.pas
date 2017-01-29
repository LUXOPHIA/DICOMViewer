unit LUX.DICOM.Ports.D2;

interface //#################################################################### ■

uses LUX.DICOM.Ports.D1;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     TdcmPort2D<_TYPE_> = class;

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

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

//const //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【定数】

//var //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【変数】

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

implementation //############################################################### ■

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

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

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
