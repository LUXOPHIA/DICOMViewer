unit LUX.DICOM.Codecs.JPEG;

interface //#################################################################### ■

///// JPEG（ITU-T T.81）の共通基盤
///// ・マーカー走査・正準ハフマン表・バイトスタッフィング対応ビットリーダ。
///// ・ロスレス（SOF3）デコーダが使う部分のみを実装する。

uses System.SysUtils,
     LUX.DICOM.core;

const //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 C O N S T A N T 】

      //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% マーカー

      JM_SOI  = $D8;
      JM_EOI  = $D9;
      JM_SOS  = $DA;
      JM_DHT  = $C4;
      JM_DRI  = $DD;
      JM_SOF3 = $C3;   // ロスレス（ハフマン）
      JM_RST0 = $D0;   // 〜 $D7

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 T Y P E 】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 R E C O R D 】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TjpgHuff

     ///// 正準ハフマン表
     ///// ・8bit プレフィクス一括表（Fast）で大半の符号を 1 回の表引きで確定し、
     ///// 　9bit 以上の符号のみ逐次照合に落とす（9M 画素で体感差が出る要点）。

     TjpgHuff = record
       Bits    :array [ 1..16 ] of Byte;      // 各符号長の符号数（DHT の BITS）
       Vals    :TBytes;                       // HUFFVAL
       MinCode :array [ 1..16 ] of Integer;
       MaxCode :array [ 1..16 ] of Integer;   // -1 = その長さの符号無し
       ValPtr  :array [ 1..16 ] of Integer;
       Fast    :array [ 0..255 ] of Byte;     // 8bit 以下で確定する符号の値
       FastN   :array [ 0..255 ] of Byte;     // その符号長（0 = 8bit では確定しない）
       Valid   :Boolean;
       /////
       procedure Build;
     end;

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 C L A S S 】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TjpgBits

     ///// エントロピー符号ストリームのビットリーダ（MSB ファースト）
     ///// ・0xFF の直後の 0x00（バイトスタッフィング）を除去する。
     ///// ・マーカーに達したら以後は 0 を供給する（EOS）。RST は SyncRST で跨ぐ。

     TjpgBits = class
     private
       _Buff   :TBytes;
       _Pos    :Integer;
       _Cache  :Cardinal;
       _CacheN :Integer;
       _EOS    :Boolean;
       ///// メソッド
       procedure FillByte;
     public
       constructor Create( const Buff_:TBytes; const Pos_:Integer );
       ///// プロパティ
       property Pos :Integer read _Pos;
       property EOS :Boolean read _EOS;
       ///// メソッド
       function GetBit :Integer; inline;
       function GetBits( const N_:Integer ) :Integer;
       function DecodeHuff( const H_:TjpgHuff ) :Integer;
       procedure SyncRST( const N_:Integer );   // RSTn（n = N_ mod 8）を跨いでビット状態を初期化する
     end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 R O U T I N E 】

implementation //############################################################### ■

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 R E C O R D 】

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TjpgHuff

procedure TjpgHuff.Build;
var
   L, I, K :Integer;
   Code    :Integer;
   F0, FN  :Integer;
begin
     Code := 0;
     K    := 0;

     FillChar( Fast , SizeOf( Fast  ), 0 );
     FillChar( FastN, SizeOf( FastN ), 0 );

     for L := 1 to 16 do
     begin
          if Bits[ L ] > 0 then
          begin
               ValPtr [ L ] := K;
               MinCode[ L ] := Code;

               Inc( K   , Bits[ L ] );
               Inc( Code, Bits[ L ] );

               MaxCode[ L ] := Code - 1;

               ///// 8bit 以下の符号は一括表に展開する

               if L <= 8 then
               begin
                    for I := 0 to Bits[ L ] - 1 do
                    begin
                         F0 := ( MinCode[ L ] + I ) shl ( 8 - L );
                         FN := 1 shl ( 8 - L );

                         FillChar( Fast [ F0 ], FN, Vals[ ValPtr[ L ] + I ] );
                         FillChar( FastN[ F0 ], FN, Byte( L ) );
                    end;
               end;
          end
          else MaxCode[ L ] := -1;

          Code := Code shl 1;
     end;

     Valid := True;
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 C L A S S 】

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TjpgBits

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

procedure TjpgBits.FillByte;
var
   B :Byte;
begin
     if _EOS or ( _Pos >= Length( _Buff ) ) then
     begin
          _EOS := True;

          _Cache := _Cache shl 8;  Inc( _CacheN, 8 );  Exit;   // 0 詰め
     end;

     B := _Buff[ _Pos ];

     if B = $FF then
     begin
          if ( _Pos + 1 < Length( _Buff ) ) and ( _Buff[ _Pos+1 ] = $00 ) then Inc( _Pos, 2 )   // スタッフィング除去
          else
          begin
               ///// マーカーに到達（RST 含む）。消費せず EOS 扱いにする

               _EOS := True;

               _Cache := _Cache shl 8;  Inc( _CacheN, 8 );  Exit;
          end;
     end
     else Inc( _Pos );

     _Cache := ( _Cache shl 8 ) or B;  Inc( _CacheN, 8 );
end;

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TjpgBits.Create( const Buff_:TBytes; const Pos_:Integer );
begin
     inherited Create;

     _Buff   := Buff_;
     _Pos    := Pos_;
     _Cache  := 0;
     _CacheN := 0;
     _EOS    := False;
end;

//////////////////////////////////////////////////////////////////////// メソッド

function TjpgBits.GetBit :Integer;
begin
     if _CacheN < 1 then FillByte;

     Dec( _CacheN );

     Result := ( _Cache shr _CacheN ) and 1;
end;

function TjpgBits.GetBits( const N_:Integer ) :Integer;
begin
     if N_ = 0 then Exit( 0 );

     while _CacheN < N_ do FillByte;

     Dec( _CacheN, N_ );

     Result := ( _Cache shr _CacheN ) and ( ( 1 shl N_ ) - 1 );
end;

//------------------------------------------------------------------------------

function TjpgBits.DecodeHuff( const H_:TjpgHuff ) :Integer;
var
   P    :Integer;
   L    :Integer;
   Code :Integer;
begin
     while _CacheN < 16 do FillByte;

     ///// 8bit 一括表

     P := ( _Cache shr ( _CacheN - 8 ) ) and $FF;

     L := H_.FastN[ P ];

     if L > 0 then
     begin
          Dec( _CacheN, L );  Exit( H_.Fast[ P ] );
     end;

     ///// 9bit 以上は逐次照合

     Code := P;
     L    := 8;

     Dec( _CacheN, 8 );

     repeat
           Code := ( Code shl 1 ) or GetBit;

           Inc( L );

           if ( L <= 16 ) and ( H_.MaxCode[ L ] >= 0 ) and ( Code <= H_.MaxCode[ L ] ) and ( Code >= H_.MinCode[ L ] ) then
                Exit( H_.Vals[ H_.ValPtr[ L ] + Code - H_.MinCode[ L ] ] );
     until L >= 16;

     raise EdcmError.Create( 'JPEG: 不正なハフマン符号', _Pos );
end;

//------------------------------------------------------------------------------

procedure TjpgBits.SyncRST( const N_:Integer );
begin
     ///// ビット状態を捨ててバイト境界へ揃え、RSTn マーカーを読み飛ばす

     _Cache  := 0;
     _CacheN := 0;
     _EOS    := False;

     while ( _Pos + 1 < Length( _Buff ) ) and ( _Buff[ _Pos ] = $FF ) and ( _Buff[ _Pos+1 ] = $FF ) do Inc( _Pos );   // fill バイト

     CheckDCM( ( _Pos + 1 < Length( _Buff ) )
           and ( _Buff[ _Pos ] = $FF )
           and ( _Buff[ _Pos+1 ] = JM_RST0 + Byte( N_ mod 8 ) ), 'JPEG: RST マーカーが見つからない', _Pos );

     Inc( _Pos, 2 );
end;

end. //######################################################################### ■
