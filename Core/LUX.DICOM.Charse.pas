unit LUX.DICOM.Charse;

interface //#################################################################### ■

///// SpecificCharacterSet (0008,0005) に基づく文字列デコード
///// ・ISO 2022 IR 87（JIS X 0208 漢字）／IR 13（半角カナ）のエスケープ切替に対応する。
///// ・JIS X 0208 の区点は Shift-JIS へ算術変換してから CP932 でデコードする
///// 　（Windows の ISO-2022 疑似コードページ 5022x の癖を避けるため）。
///// ・本ユニットを uses に加えるだけで、LUX.DICOM.Datset の文字列デコーダが
///// 　initialization で本実装に差し替わる（コーデック登録制と同じ継ぎ目）。

uses System.SysUtils,
     LUX.DICOM.Datset;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 R O U T I N E 】

function DecodeDcmText( const Buff_:TBytes; const Charse_:String ) :String;

implementation //############################################################### ■

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 T Y P E 】

     TG0Mode = ( g0ASCII, g0Romaji, g0Kana, g0Kanji, g0Kanji212 );
     TG1Mode = ( g1None, g1Kana );

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 R O U T I N E 】

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% CharseToCP

///// 単一バイト系文字集合 → Windows コードページ（0 = 未対応）

function CharseToCP( const Charse_:String ) :Integer;
begin
     if ( Charse_ = ''           )
     or ( Charse_ = 'ISO_IR 6'   ) then Result := 20127   // US-ASCII
                                   else
     if Charse_ = 'ISO_IR 100'     then Result := 28591   // Latin-1
                                   else
     if Charse_ = 'ISO_IR 101'     then Result := 28592   // Latin-2
                                   else
     if Charse_ = 'ISO_IR 109'     then Result := 28593   // Latin-3
                                   else
     if Charse_ = 'ISO_IR 110'     then Result := 28594   // Latin-4
                                   else
     if Charse_ = 'ISO_IR 144'     then Result := 28595   // キリル
                                   else
     if Charse_ = 'ISO_IR 127'     then Result := 28596   // アラビア
                                   else
     if Charse_ = 'ISO_IR 126'     then Result := 28597   // ギリシャ
                                   else
     if Charse_ = 'ISO_IR 138'     then Result := 28598   // ヘブライ
                                   else
     if Charse_ = 'ISO_IR 148'     then Result := 28599   // Latin-5
                                   else
     if Charse_ = 'ISO_IR 166'     then Result := 874     // タイ
                                   else
     if Charse_ = 'ISO_IR 13'      then Result := 932     // JIS X 0201（半角カナは CP932 の単バイト域）
                                   else Result := 0;
end;

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% JISToSJIS

///// JIS X 0208 の 2 バイト（0x21..0x7E）→ Shift-JIS の 2 バイト（算術変換）

procedure JISToSJIS( const J1_,J2_:Byte; out S1_,S2_:Byte );
var
   S :Integer;
begin
     S := ( ( J1_ + 1 ) shr 1 ) + $70;

     if S >= $A0 then Inc( S, $40 );   // 0xA0 の欠番を跨ぐ

     S1_ := Byte( S );

     if Odd( J1_ ) then
     begin
          S := J2_ + $1F;

          if J2_ >= $60 then Inc( S );
     end
     else S := J2_ + $7E;

     S2_ := Byte( S );
end;

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% DecodeISO2022

function DecodeISO2022( const Buff_:TBytes; const KanaG1_:Boolean ) :String;
var
   SJIS  :TEncoding;
   G0    :TG0Mode;
   G1    :TG1Mode;
   G00   :TG0Mode;   // 初期状態（区切り文字で復帰する）
   I, N  :Integer;
   B, B2 :Byte;
   Run   :TBytes;
   RunN  :Integer;

     procedure FlushRun;
     begin
          if RunN = 0 then Exit;

          Result := Result + SJIS.GetString( Run, 0, RunN );

          RunN := 0;
     end;

begin
     Result := '';

     SJIS := TEncoding.GetEncoding( 932 );

     try
          if KanaG1_ then begin  G00 := g0Romaji;  G1 := g1Kana;  end
                     else begin  G00 := g0ASCII ;  G1 := g1None;  end;

          G0 := G00;

          N := Length( Buff_ );

          SetLength( Run, N );  RunN := 0;

          I := 0;

          while I < N do
          begin
               B := Buff_[ I ];

               ///// エスケープシーケンス

               if B = $1B then
               begin
                    FlushRun;

                    if ( I + 2 < N ) and ( Buff_[ I+1 ] = Ord( '$' ) ) and ( Buff_[ I+2 ] = Ord( '(' ) ) then
                    begin
                         if ( I + 3 < N ) and ( Buff_[ I+3 ] = Ord( 'D' ) ) then G0 := g0Kanji212;

                         Inc( I, 4 );  Continue;
                    end;

                    if ( I + 2 < N ) and ( Buff_[ I+1 ] = Ord( '$' ) ) then
                    begin
                         if Buff_[ I+2 ] in [ Ord( 'B' ), Ord( '@' ) ] then G0 := g0Kanji;

                         Inc( I, 3 );  Continue;
                    end;

                    if ( I + 2 < N ) and ( Buff_[ I+1 ] = Ord( '(' ) ) then
                    begin
                         case Buff_[ I+2 ] of
                           Ord( 'B' ): G0 := g0ASCII;
                           Ord( 'J' ): G0 := g0Romaji;
                           Ord( 'I' ): G0 := g0Kana;
                         end;

                         Inc( I, 3 );  Continue;
                    end;

                    if ( I + 2 < N ) and ( Buff_[ I+1 ] = Ord( ')' ) ) then
                    begin
                         if Buff_[ I+2 ] = Ord( 'I' ) then G1 := g1Kana;

                         Inc( I, 3 );  Continue;
                    end;

                    ///// 未知のエスケープは終端バイト（0x30-0x7E）まで読み飛ばす

                    Inc( I );

                    while ( I < N ) and ( Buff_[ I ] in [ $20..$2F ] ) do Inc( I );

                    if I < N then Inc( I );

                    Continue;
               end;

               ///// 区切り文字でエスケープ状態は初期に戻る（PS3.5 §6.1.2.5.3）
               ///// ・多バイト系（漢字）ラン中の一致バイト（例: 『秋』の第1バイト 0x3D = '='）を
               ///// 　誤認しないよう、G0 が 1 バイト系のときだけ判定する。

               if ( G0 in [ g0ASCII, g0Romaji ] )
              and ( B < $80 ) and ( AnsiChar( B ) in [ #$09, #$0A, #$0C, #$0D, '\', '=', '^' ] ) then
               begin
                    FlushRun;

                    G0 := G00;

                    Result := Result + Char( B );

                    Inc( I );  Continue;
               end;

               ///// GL（0x00-0x7F）

               if B < $80 then
               begin
                    case G0 of
                      g0Kanji: begin
                                    if I + 1 < N then
                                    begin
                                         B2 := Buff_[ I+1 ];

                                         JISToSJIS( B, B2, Run[ RunN ], Run[ RunN+1 ] );

                                         Inc( RunN, 2 );

                                         Inc( I, 2 );  Continue;
                                    end;

                                    Inc( I );  Continue;   // 末尾の半端バイトは捨てる
                               end;
                      g0Kanji212: begin
                                    FlushRun;

                                    Result := Result + '?';   // JIS X 0212 は未対応（実データでは稀）

                                    Inc( I, 2 );  Continue;
                                  end;
                      g0Kana: begin
                                   FlushRun;

                                   if B in [ $21..$5F ] then Result := Result + Char( $FF61 + B - $21 )
                                                        else Result := Result + Char( B );

                                   Inc( I );  Continue;
                              end;
                    else
                         ///// ASCII／ローマ字（0x5C・0x7E は ASCII として扱う。多値区切りを壊さないため）

                         FlushRun;

                         Result := Result + Char( B );

                         Inc( I );  Continue;
                    end;
               end;

               ///// GR（0x80-0xFF）

               FlushRun;

               if ( G1 = g1Kana ) and ( B in [ $A1..$DF ] ) then Result := Result + Char( $FF61 + B - $A1 )
                                                            else Result := Result + '?';

               Inc( I );  Continue;
          end;

          FlushRun;
     finally
          SJIS.Free;
     end;
end;

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% DecodeDcmText

function DecodeDcmText( const Buff_:TBytes; const Charse_:String ) :String;
var
   Vs     :TArray<String>;
   I, CP  :Integer;
   Is2022 :Boolean;
   Kana   :Boolean;
   E      :TEncoding;
begin
     if Length( Buff_ ) = 0 then Exit( '' );

     ///// (0008,0005) は多値（例: '\ISO 2022 IR 87'、'ISO 2022 IR 13\ISO 2022 IR 87'）

     Vs := Charse_.Split( [ '\' ] );

     for I := 0 to High( Vs ) do Vs[ I ] := Vs[ I ].Trim;

     ///// UTF-8

     if ( Length( Vs ) > 0 ) and ( Vs[ 0 ] = 'ISO_IR 192' ) then Exit( TEncoding.UTF8.GetString( Buff_ ) );

     ///// ISO 2022 拡張（日本語）

     Is2022 := False;
     Kana   := False;

     for I := 0 to High( Vs ) do
     begin
          if Vs[ I ].StartsWith( 'ISO 2022' ) then Is2022 := True;
          if Vs[ I ] = 'ISO 2022 IR 13'      then Kana   := True;
     end;

     if Is2022 then Exit( DecodeISO2022( Buff_, Kana ) );

     ///// 単一バイト系

     CP := 0;

     if Length( Vs ) > 0 then CP := CharseToCP( Vs[ 0 ] );

     if CP = 0 then Exit( TEncoding.ANSI.GetString( Buff_ ) );

     E := TEncoding.GetEncoding( CP );

     try
          Result := E.GetString( Buff_ );
     finally
          E.Free;
     end;
end;

initialization //=============================================================== ■

     _DecodeText_ := DecodeDcmText;

end. //######################################################################### ■
