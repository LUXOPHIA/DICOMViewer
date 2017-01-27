unit LUX.DICOM.Ports;

interface //#################################################################### ■

uses System.Math, System.RegularExpressions,
     LUX, LUX.DICOM.VRs, LUX.DICOM;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     TdcmPortText                  = class;
     TdcmPortImag<_TPixel_:record> = class;

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

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmPortText

     TdcmPortText = class( TdcmPort )
     private
     protected
       ///// アクセス
       function GetText :String; override;
       procedure SetText( Text_:String ); override;
     public
     end;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmPortImag<_TPixel_>

     TdcmPortImag<_TPixel_:record> = class( TdcmPort )
     private
     protected
       ///// アクセス
       function GetPixels( const X_,Y_:Integer ) :_TPixel_; virtual; abstract;
       procedure SetPixels( const X_,Y_:Integer; const Pixel_:_TPixel_ ); virtual; abstract;
     public
       ///// プロパティ
       property Pixels[ const X_,Y_:Integer ] :_TPixel_ read GetPixels write SetPixels;
     end;

//const //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【定数】

//var //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【変数】

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

implementation //############################################################### ■

uses System.SysUtils, System.AnsiStrings;

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

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmPortText

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

/////////////////////////////////////////////////////////////////////// アクセス

function TdcmPortText.GetText :String;
begin
     with _Data do SetString( Result, PAnsiChar( Data ), Size );
end;

procedure TdcmPortText.SetText( Text_:String );
begin
     if Length( Text_ ) mod 2 = 1 then Text_ := Text_ + ' ';  //※偶数でなくてはならない。

     with _Data do
     begin
          Size := Length( Text_ );

          System.AnsiStrings.StrMove( PAnsiChar( Data ), PAnsiChar( AnsiString( Text_ ) ), Size );
     end;
end;

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmPortImag<_TPixel_>

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
