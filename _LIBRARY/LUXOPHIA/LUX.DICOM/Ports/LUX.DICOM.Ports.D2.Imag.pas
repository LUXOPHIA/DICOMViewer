unit LUX.DICOM.Ports.D2.Imag;

interface //#################################################################### ■

uses LUX.DICOM.Ports;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     TdcmPortImag<_TYPE_> = class;
       TdcmPortImagU08    = class;
       TdcmPortImagS08    = class;
       TdcmPortImagU16    = class;
       TdcmPortImagS16    = class;

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmPortImag<_TYPE_>

     IdcmPortImag = interface( IdcmPort2D )
       ['{03036994-CB99-42F1-9A59-065A054AB4B8}']
       ///// アクセス
       function GetKindP :TKindPixel;
       procedure SetKindP( const KindP_:TKindPixel );
       function GetBitsN :Word;
       procedure SetBitsN( const KindP_:Word );
       function GetBitsI :Word;
       procedure SetBitsI( const KindP_:Word );
       function GetPixels1D( const I_:Integer ) :Integer;
       procedure SetPixels1D( const I_:Integer; const Pixel_:Integer );
       function GetPixels2D( const X_,Y_:Integer ) :Integer;
       procedure SetPixels2D( const X_,Y_:Integer; const Pixel_:Integer );
       ///// プロパティ
       property KindP                           :TKindPixel read GetKindP    write SetKindP   ;
       property BitsN                           :Word       read GetBitsN    write SetBitsN   ;
       property BitsI                           :Word       read GetBitsI    write SetBitsI   ;
       property Pixels1D[ const I_:Integer ]    :Integer    read GetPixels1D write SetPixels1D;
       property Pixels2D[ const X_,Y_:Integer ] :Integer    read GetPixels2D write SetPixels2D;
       property Pixels  [ const X_,Y_:Integer ] :Integer    read GetPixels2D write SetPixels2D;
     end;

     //-------------------------------------------------------------------------

     TdcmPortImag<_TYPE_> = class( TdcmPort2D<_TYPE_>, IdcmPortImag )
     private
     protected
       _KindP :TKindPixel;
       _BitsN :Word;
       _BitsI :Word;
       ///// アクセス
       { IdcmPort1D }
       function GetTexts( const I_:Integer ) :String; override;
       procedure SetTexts( const I_:Integer; const Text_:String ); override;
       { IdcmPortImag }
       function GetKindP :TKindPixel; virtual;
       procedure SetKindP( const KindP_:TKindPixel ); virtual;
       function GetBitsN :Word; virtual;
       procedure SetBitsN( const BitsN_:Word ); virtual;
       function GetBitsI :Word; virtual;
       procedure SetBitsI( const BitsI_:Word ); virtual;
       function GetPixels1D( const I_:Integer ) :Integer; virtual; abstract;
       procedure SetPixels1D( const I_:Integer; const Pixel_:Integer ); virtual; abstract;
       function GetPixels2D( const X_,Y_:Integer ) :Integer; virtual;
       procedure SetPixels2D( const X_,Y_:Integer; const Pixel_:Integer ); virtual;
     public
       ///// プロパティ
       { IdcmPortImag }
       property KindP                           :TKindPixel read GetKindP    write SetKindP   ;
       property BitsN                           :Word       read GetBitsN    write SetBitsN   ;
       property BitsI                           :Word       read GetBitsI    write SetBitsI   ;
       property Pixels1D[ const I_:Integer ]    :Integer    read GetPixels1D write SetPixels1D;
       property Pixels2D[ const X_,Y_:Integer ] :Integer    read GetPixels2D write SetPixels2D;
       property Pixels  [ const X_,Y_:Integer ] :Integer    read GetPixels2D write SetPixels2D;
     end;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmPortImagU08

     TdcmPortImagU08 = class( TdcmPortImag<UInt8> )
     private
     protected
       ///// アクセス
       { TdcmPort1D<_TYPE_> }
       function GetValues( const I_:Integer ) :UInt8; override;
       procedure SetValues( const I_:Integer; const Value_:UInt8 ); override;
       { IdcmPortImag }
       function GetPixels1D( const I_:Integer ) :Integer; override;
       procedure SetPixels1D( const I_:Integer; const Pixel_:Integer ); override;
     public
     end;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmPortImagS08

     TdcmPortImagS08 = class( TdcmPortImag<Int8> )
     private
     protected
       ///// アクセス
       { TdcmPort1D<_TYPE_> }
       function GetValues( const I_:Integer ) :Int8; override;
       procedure SetValues( const I_:Integer; const Value_:Int8 ); override;
       { IdcmPortImag }
       function GetPixels1D( const I_:Integer ) :Integer; override;
       procedure SetPixels1D( const I_:Integer; const Pixel_:Integer ); override;
     public
     end;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmPortImagU16

     TdcmPortImagU16 = class( TdcmPortImag<UInt16> )
     private
     protected
       ///// アクセス
       { TdcmPort1D<_TYPE_> }
       function GetValues( const I_:Integer ) :UInt16; override;
       procedure SetValues( const I_:Integer; const Value_:UInt16 ); override;
       { IdcmPortImag }
       function GetPixels1D( const I_:Integer ) :Integer; override;
       procedure SetPixels1D( const I_:Integer; const Pixel_:Integer ); override;
     public
     end;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmPortImagS16

     TdcmPortImagS16 = class( TdcmPortImag<Int16> )
     private
     protected
       ///// アクセス
       { TdcmPort1D<_TYPE_> }
       function GetValues( const I_:Integer ) :Int16; override;
       procedure SetValues( const I_:Integer; const Value_:Int16 ); override;
       { IdcmPortImag }
       function GetPixels1D( const I_:Integer ) :Integer; override;
       procedure SetPixels1D( const I_:Integer; const Pixel_:Integer ); override;
     public
     end;

//const //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【定数】

//var //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【変数】

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

implementation //############################################################### ■

uses System.SysUtils;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmPortImag<_TYPE_>

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

/////////////////////////////////////////////////////////////////////// アクセス

function TdcmPortImag<_TYPE_>.GetTexts( const I_:Integer ) :String;
begin
     Result := Pixels1D[ I_ ].ToString;
end;

procedure TdcmPortImag<_TYPE_>.SetTexts( const I_:Integer; const Text_:String );
begin
     Pixels1D[ I_ ] := Text_.ToInteger;
end;

//------------------------------------------------------------------------------

function TdcmPortImag<_TYPE_>.GetKindP :TKindPixel;
begin
     Result := _KindP;
end;

procedure TdcmPortImag<_TYPE_>.SetKindP( const KindP_:TKindPixel );
begin
     _KindP := KindP_;
end;

function TdcmPortImag<_TYPE_>.GetBitsN :Word;
begin
     Result := _BitsN;
end;

procedure TdcmPortImag<_TYPE_>.SetBitsN( const BitsN_:Word );
begin
     _BitsN := BitsN_;
end;

function TdcmPortImag<_TYPE_>.GetBitsI :Word;
begin
     Result := _BitsI;
end;

procedure TdcmPortImag<_TYPE_>.SetBitsI( const BitsI_:Word );
begin
     _BitsI := BitsI_;
end;

//------------------------------------------------------------------------------

function TdcmPortImag<_TYPE_>.GetPixels2D( const X_,Y_:Integer ) :Integer;
begin
     Result := Pixels1D[ _CountX * Y_ + X_ ];
end;

procedure TdcmPortImag<_TYPE_>.SetPixels2D( const X_,Y_:Integer; const Pixel_:Integer );
begin
     Pixels1D[ _CountX * Y_ + X_ ] := Pixel_;
end;

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmPortImagU08

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

/////////////////////////////////////////////////////////////////////// アクセス

function TdcmPortImagU08.GetValues( const I_:Integer ) :UInt8;
var
   N :Integer;
begin
     Result := inherited;

     {
       N-1   BitsI       BitsI-BitsN
       │    │          │
       □ □ ■ ■ ■ ■ □ □
       07 06 05 04 03 02 01 00

                N-BitsN
                │
       ■ ■ ■ ■ □ □ □ □
       07 06 05 04 03 02 01 00
     }

     N := 8{Bit/Byte} * SizeOf( UInt8 );

     Result := Result shl ( N-1 - BitsI )
                      shr ( N   - BitsN );
end;

procedure TdcmPortImagU08.SetValues( const I_:Integer; const Value_:UInt8 );
var
   N :Integer;
   V :UInt8;
begin
     N := 8{Bit/Byte} * SizeOf( UInt8 );

     V := Value_ shl ( N   - BitsN )
                 shr ( N-1 - BitsI );

     inherited SetValues( I_, V );
end;

//------------------------------------------------------------------------------

function TdcmPortImagU08.GetPixels1D( const I_:Integer ) :Integer;
begin
     Result := Values[ I_ ];
end;

procedure TdcmPortImagU08.SetPixels1D( const I_:Integer; const Pixel_:Integer );
begin
     Values[ I_ ] := Pixel_;
end;

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmPortImagS08

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

/////////////////////////////////////////////////////////////////////// アクセス

function TdcmPortImagS08.GetValues( const I_:Integer ) :Int8;
var
   N :Integer;
begin
     Result := inherited;

     {
       N-1   BitsI       BitsI-BitsN
       │    │          │
       □ □ ■ ■ ■ ■ □ □
       07 06 05 04 03 02 01 00

                N-BitsN
                │
       ■ ■ ■ ■ □ □ □ □
       07 06 05 04 03 02 01 00
     }

     N := 8{Bit/Byte} * SizeOf( Int8 );

     Result := Result shl ( N-1 - BitsI )
                      shr ( N   - BitsN );
end;

procedure TdcmPortImagS08.SetValues( const I_:Integer; const Value_:Int8 );
var
   N :Integer;
   V :Int8;
begin
     N := 8{Bit/Byte} * SizeOf( Int8 );

     V := Value_ shl ( N   - BitsN )
                 shr ( N-1 - BitsI );

     inherited SetValues( I_, V );
end;

//------------------------------------------------------------------------------

function TdcmPortImagS08.GetPixels1D( const I_:Integer ) :Integer;
begin
     Result := Values[ I_ ];
end;

procedure TdcmPortImagS08.SetPixels1D( const I_:Integer; const Pixel_:Integer );
begin
     Values[ I_ ] := Pixel_;
end;

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmPortImagU16

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

/////////////////////////////////////////////////////////////////////// アクセス

function TdcmPortImagU16.GetValues( const I_:Integer ) :UInt16;
var
   N :Integer;
begin
     Result := inherited;

     {
       N-1         BitsI                   BitsI-BitsN
       │          │                      │
       □ □ □ □ ■ ■ ■ ■ ■ ■ ■ ■ □ □ □ □
       15 14 13 12 11 10 09 08 07 06 05 04 03 02 01 00

                            N-BitsN
                            │
       ■ ■ ■ ■ ■ ■ ■ ■ □ □ □ □ □ □ □ □
       15 14 13 12 11 10 09 08 07 06 05 04 03 02 01 00
     }

     N := 8{Bit/Byte} * SizeOf( UInt16 );

     Result := Result shl ( N-1 - BitsI )
                      shr ( N   - BitsN );
end;

procedure TdcmPortImagU16.SetValues( const I_:Integer; const Value_:UInt16 );
var
   N :Integer;
   V :UInt16;
begin
     N := 8{Bit/Byte} * SizeOf( UInt16 );

     V := Value_ shl ( N   - BitsN )
                 shr ( N-1 - BitsI );

     inherited SetValues( I_, V );
end;

//------------------------------------------------------------------------------

function TdcmPortImagU16.GetPixels1D( const I_:Integer ) :Integer;
begin
     Result := Values[ I_ ];
end;

procedure TdcmPortImagU16.SetPixels1D( const I_:Integer; const Pixel_:Integer );
begin
     Values[ I_ ] := Pixel_;
end;

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmPortImagS16

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

/////////////////////////////////////////////////////////////////////// アクセス

function TdcmPortImagS16.GetValues( const I_:Integer ) :Int16;
var
   N :Integer;
begin
     Result := inherited;

     {
       N-1         BitsI                   BitsI-BitsN
       │          │                      │
       □ □ □ □ ■ ■ ■ ■ ■ ■ ■ ■ □ □ □ □
       15 14 13 12 11 10 09 08 07 06 05 04 03 02 01 00

                            N-BitsN
                            │
       ■ ■ ■ ■ ■ ■ ■ ■ □ □ □ □ □ □ □ □
       15 14 13 12 11 10 09 08 07 06 05 04 03 02 01 00
     }

     N := 8{Bit/Byte} * SizeOf( Int16 );

     Result := Result shl ( N-1 - BitsI )
                      shr ( N   - BitsN );
end;

procedure TdcmPortImagS16.SetValues( const I_:Integer; const Value_:Int16 );
var
   N :Integer;
   V :Int16;
begin
     N := 8{Bit/Byte} * SizeOf( Int16 );

     V := Value_ shl ( N   - BitsN )
                 shr ( N-1 - BitsI );

     inherited SetValues( I_, V );
end;

//------------------------------------------------------------------------------

function TdcmPortImagS16.GetPixels1D( const I_:Integer ) :Integer;
begin
     Result := Values[ I_ ];
end;

procedure TdcmPortImagS16.SetPixels1D( const I_:Integer; const Pixel_:Integer );
begin
     Values[ I_ ] := Pixel_;
end;

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
