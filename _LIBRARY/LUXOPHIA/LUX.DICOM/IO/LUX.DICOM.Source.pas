unit LUX.DICOM.Source;

interface //#################################################################### ■

uses System.SysUtils, System.Classes,
     LUX.DICOM.core;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 T Y P E 】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 C L A S S 】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmSource

     ///// パーサへのバイト供給源
     ///// ・ファイル全体をメモリに保持する（DICOM ファイルは高々数十 MB）。
     ///// ・IsBig が True の間、ReadU16／ReadU32 はビッグエンディアンとして読む
     ///// 　（Explicit VR Big Endian 構文のタグ・長さフィールド用）。
     ///// ・範囲外読みは EdcmError（ファイル内位置つき）を送出する。

     TdcmSource = class
     private
       ///// アクセス
       function GetSize :Integer; inline;
       function GetRemain :Integer; inline;
     protected
       _Buff :TBytes;
       _Pos  :Integer;
       _Big  :Boolean;
     public
       constructor Create( const Buff_:TBytes );
       ///// C L A S S
       class function FromFile( const FileName_:String ) :TdcmSource;
       ///// プロパティ
       property Pos    :Integer read _Pos write _Pos;
       property Size   :Integer read GetSize        ;
       property Remain :Integer read GetRemain      ;
       property IsBig  :Boolean read _Big write _Big;
       ///// メソッド
       function ReadU8 :Byte;
       function ReadU16 :Word;
       function ReadU32 :Cardinal;
       function ReadBytes( const N_:Integer ) :TBytes;
       procedure Skip( const N_:Integer );
       function PeekU16( const Offset_:Integer = 0 ) :Word;   // 位置を進めずに読む
       procedure Reset( const Buff_:TBytes );                 // バッファを差し替えて先頭へ（Deflate 展開用）
     end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 R O U T I N E 】

procedure SwapBuffBytes( var Buff_:TBytes; const Unit_:Integer );   // Unit_ バイト単位でバイト順を反転

implementation //############################################################### ■

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 C L A S S 】

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmSource

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//////////////////////////////////////////////////////////////////////// アクセス

function TdcmSource.GetSize :Integer;
begin
     Result := Length( _Buff );
end;

function TdcmSource.GetRemain :Integer;
begin
     Result := Length( _Buff ) - _Pos;
end;

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmSource.Create( const Buff_:TBytes );
begin
     inherited Create;

     _Buff := Buff_;
     _Pos  := 0;
     _Big  := False;
end;

//////////////////////////////////////////////////////////////////////// C L A S S

class function TdcmSource.FromFile( const FileName_:String ) :TdcmSource;
var
   F :TFileStream;
   B :TBytes;
begin
     F := TFileStream.Create( FileName_, fmOpenRead or fmShareDenyWrite );

     try
          CheckDCM( F.Size <= High( Integer ), 'ファイルが大きすぎる（2GB 以上）: ' + FileName_ );

          SetLength( B, F.Size );

          if F.Size > 0 then F.ReadBuffer( B[ 0 ], F.Size );
     finally
          F.Free;
     end;

     Result := TdcmSource.Create( B );
end;

//////////////////////////////////////////////////////////////////////// メソッド

function TdcmSource.ReadU8 :Byte;
begin
     CheckDCM( _Pos + 1 <= Length( _Buff ), 'ファイル終端を越えて読み込もうとした', _Pos );

     Result := _Buff[ _Pos ];  Inc( _Pos );
end;

function TdcmSource.ReadU16 :Word;
begin
     CheckDCM( _Pos + 2 <= Length( _Buff ), 'ファイル終端を越えて読み込もうとした', _Pos );

     if _Big then Result := ( Word( _Buff[ _Pos ] ) shl 8 ) or _Buff[ _Pos+1 ]
             else Result := ( Word( _Buff[ _Pos+1 ] ) shl 8 ) or _Buff[ _Pos ];

     Inc( _Pos, 2 );
end;

function TdcmSource.ReadU32 :Cardinal;
begin
     CheckDCM( _Pos + 4 <= Length( _Buff ), 'ファイル終端を越えて読み込もうとした', _Pos );

     if _Big then Result := ( Cardinal( _Buff[ _Pos   ] ) shl 24 )
                         or ( Cardinal( _Buff[ _Pos+1 ] ) shl 16 )
                         or ( Cardinal( _Buff[ _Pos+2 ] ) shl  8 )
                         or             _Buff[ _Pos+3 ]
             else Result := ( Cardinal( _Buff[ _Pos+3 ] ) shl 24 )
                         or ( Cardinal( _Buff[ _Pos+2 ] ) shl 16 )
                         or ( Cardinal( _Buff[ _Pos+1 ] ) shl  8 )
                         or             _Buff[ _Pos   ];

     Inc( _Pos, 4 );
end;

function TdcmSource.ReadBytes( const N_:Integer ) :TBytes;
begin
     CheckDCM( ( N_ >= 0 ) and ( _Pos + N_ <= Length( _Buff ) ), 'ファイル終端を越えて読み込もうとした', _Pos );

     Result := Copy( _Buff, _Pos, N_ );  Inc( _Pos, N_ );
end;

procedure TdcmSource.Skip( const N_:Integer );
begin
     CheckDCM( ( N_ >= 0 ) and ( _Pos + N_ <= Length( _Buff ) ), 'ファイル終端を越えて読み飛ばそうとした', _Pos );

     Inc( _Pos, N_ );
end;

function TdcmSource.PeekU16( const Offset_:Integer = 0 ) :Word;
var
   P :Integer;
begin
     P := _Pos;

     try
          Skip( Offset_ );  Result := ReadU16;
     finally
          _Pos := P;
     end;
end;

procedure TdcmSource.Reset( const Buff_:TBytes );
begin
     _Buff := Buff_;
     _Pos  := 0;
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 R O U T I N E 】

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% SwapBuffBytes

procedure SwapBuffBytes( var Buff_:TBytes; const Unit_:Integer );
var
   I, J, K :Integer;
   B       :Byte;
begin
     if Unit_ < 2 then Exit;

     I := 0;

     while I + Unit_ <= Length( Buff_ ) do
     begin
          for K := 0 to Unit_ div 2 - 1 do
          begin
               J := I + Unit_ - 1 - K;

               B := Buff_[ I+K ];  Buff_[ I+K ] := Buff_[ J ];  Buff_[ J ] := B;
          end;

          Inc( I, Unit_ );
     end;
end;

end. //######################################################################### ■
