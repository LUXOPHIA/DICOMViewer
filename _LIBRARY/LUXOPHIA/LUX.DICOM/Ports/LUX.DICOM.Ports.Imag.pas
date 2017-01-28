unit LUX.DICOM.Ports.Imag;

interface //#################################################################### ■

uses LUX.DICOM.Ports;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     TdcmPortImagU08  = class;
     TdcmPortImagS08  = class;
     TdcmPortImagU16 = class;
     TdcmPortImagS16 = class;

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmPortImagU08

     TdcmPortImagU08 = class( TdcmPortImag<UInt8> )
     private
     protected
       ///// アクセス
       function GetText :String; override;
       procedure SetText( const Text_:String ); override;
       function GetPixels( const X_,Y_:Integer ) :UInt8; override;
       procedure SetPixels( const X_,Y_:Integer; const Pixel_:UInt8 ); override;
     public
     end;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmPortImagS08

     TdcmPortImagS08 = class( TdcmPortImag<Int8> )
     private
     protected
       ///// アクセス
       function GetText :String; override;
       procedure SetText( const Text_:String ); override;
       function GetPixels( const X_,Y_:Integer ) :Int8; override;
       procedure SetPixels( const X_,Y_:Integer; const Pixel_:Int8 ); override;
     public
     end;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmPortImagU16

     TdcmPortImagU16 = class( TdcmPortImag<UInt16> )
     private
     protected
       ///// アクセス
       function GetText :String; override;
       procedure SetText( const Text_:String ); override;
       function GetPixels( const X_,Y_:Integer ) :UInt16; override;
       procedure SetPixels( const X_,Y_:Integer; const Pixel_:UInt16 ); override;
     public
     end;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmPortImagS16

     TdcmPortImagS16 = class( TdcmPortImag<Int16> )
     private
     protected
       ///// アクセス
       function GetText :String; override;
       procedure SetText( const Text_:String ); override;
       function GetPixels( const X_,Y_:Integer ) :Int16; override;
       procedure SetPixels( const X_,Y_:Integer; const Pixel_:Int16 ); override;
     public
     end;

//const //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【定数】

//var //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【変数】

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

implementation //############################################################### ■

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmPortImagU08

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

/////////////////////////////////////////////////////////////////////// アクセス

function TdcmPortImagU08.GetText :String;
begin
     Result := '';
end;

procedure TdcmPortImagU08.SetText( const Text_:String );
begin

end;

//------------------------------------------------------------------------------

function TdcmPortImagU08.GetPixels( const X_,Y_:Integer ) :UInt8;
begin
     Result := 0;                                                               {ToDo: 未完}
end;

procedure TdcmPortImagU08.SetPixels( const X_,Y_:Integer; const Pixel_:UInt8 );
begin
                                                                                {ToDo: 未完}
end;

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmPortImagS08

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

/////////////////////////////////////////////////////////////////////// アクセス

function TdcmPortImagS08.GetText :String;
begin
     Result := '';
end;

procedure TdcmPortImagS08.SetText( const Text_:String );
begin

end;

//------------------------------------------------------------------------------

function TdcmPortImagS08.GetPixels( const X_,Y_:Integer ) :Int8;
begin
     Result := 0;                                                               {ToDo: 未完}
end;

procedure TdcmPortImagS08.SetPixels( const X_,Y_:Integer; const Pixel_:Int8 );
begin
                                                                                {ToDo: 未完}
end;

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmPortImagU16

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

/////////////////////////////////////////////////////////////////////// アクセス

function TdcmPortImagU16.GetText :String;
begin
     Result := '';
end;

procedure TdcmPortImagU16.SetText( const Text_:String );
begin

end;

//------------------------------------------------------------------------------

function TdcmPortImagU16.GetPixels( const X_,Y_:Integer ) :UInt16;
begin
     Result := 0;                                                               {ToDo: 未完}
end;

procedure TdcmPortImagU16.SetPixels( const X_,Y_:Integer; const Pixel_:UInt16 );
begin
                                                                                {ToDo: 未完}
end;

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmPortImagS16

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

/////////////////////////////////////////////////////////////////////// アクセス

function TdcmPortImagS16.GetText :String;
begin
     Result := '';
end;

procedure TdcmPortImagS16.SetText( const Text_:String );
begin

end;

//------------------------------------------------------------------------------

function TdcmPortImagS16.GetPixels( const X_,Y_:Integer ) :Int16;
begin
     Result := 0;                                                               {ToDo: 未完}
end;

procedure TdcmPortImagS16.SetPixels( const X_,Y_:Integer; const Pixel_:Int16 );
begin
                                                                                {ToDo: 未完}
end;

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
