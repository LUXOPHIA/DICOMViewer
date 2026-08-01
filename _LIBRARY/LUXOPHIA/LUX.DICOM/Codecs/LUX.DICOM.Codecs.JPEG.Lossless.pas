unit LUX.DICOM.Codecs.JPEG.Lossless;

interface //#################################################################### ■

///// JPEG ロスレス（ITU-T T.81, SOF3）デコーダ（純 Pascal）
///// ・DICOM 転送構文 1.2.840.10008.1.2.4.57（Process 14）と
///// 　1.2.840.10008.1.2.4.70（Process 14 Selection Value 1）に対応する。
///// ・予測器は Selection Value 0〜7 を全て実装（SV1 との差分は数行しかない）。
///// ・initialization で自己登録する。uses に加えるだけで有効になる。

uses System.SysUtils,
     LUX.DICOM.core,
     LUX.DICOM.Codecs,
     LUX.DICOM.Codecs.JPEG;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 T Y P E 】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 C L A S S 】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmCodecJPEGLossless

     TdcmCodecJPEGLossless = class( TdcmCodec )
     public
       ///// メソッド
       function Decode( const Frag_:TBytes; const Info_:TdcmFrameInfo ) :TBytes; override;
     end;

implementation //############################################################### ■

uses LUX.DICOM.Syntax;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 C L A S S 】

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmCodecJPEGLossless

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

function TdcmCodecJPEGLossless.Decode( const Frag_:TBytes; const Info_:TdcmFrameInfo ) :TBytes;
var
   P        :Integer;
   Huffs    :array [ 0..3 ] of TjpgHuff;
   Preci    :Integer;                       // SOF の標本精度 P（2〜16）
   W, H     :Integer;
   CompN    :Integer;
   CompID   :array [ 0..3 ] of Byte;
   CompDC   :array [ 0..3 ] of Integer;     // 成分 → DC 表番号
   RstIntvl :Integer;                       // DRI（0 = 無し）
   Predict  :Integer;                       // SOS の Ss（Selection Value 1〜7）
   PtShift  :Integer;                       // SOS の Al（Point Transform）
   Bits     :TjpgBits;
   Row0     :array [ 0..3 ] of TArray<Integer>;   // 直上行
   Row1     :array [ 0..3 ] of TArray<Integer>;   // 現在行
   X, Y, C  :Integer;
   Ra,Rb,Rc :Integer;
   Px, V, T :Integer;
   Dst      :PWord;
   McuI     :Integer;
   RstI     :Integer;
   Rst0     :Boolean;                       // リスタート直後（次の標本は既定値で予測）
   Default0 :Integer;                       // 先頭・リスタート直後の予測値

     //-------------------------------------------------------------------------

     function ReadU16 :Integer;
     begin
          CheckDCM( P + 2 <= Length( Frag_ ), 'JPEG: マーカーセグメントが途切れている', P );

          Result := ( Integer( Frag_[ P ] ) shl 8 ) or Frag_[ P+1 ];  Inc( P, 2 );
     end;

     procedure ParseDHT( const Stop_:Integer );
     var
        Tc, Th, I, N :Integer;
        Hf           :TjpgHuff;
     begin
          while P < Stop_ do
          begin
               Tc := Frag_[ P ] shr 4;
               Th := Frag_[ P ] and $0F;

               Inc( P );

               CheckDCM( Th <= 3, 'JPEG: ハフマン表番号が不正', P );

               Hf := Default( TjpgHuff );

               N := 0;

               for I := 1 to 16 do
               begin
                    Hf.Bits[ I ] := Frag_[ P ];  Inc( P );

                    Inc( N, Hf.Bits[ I ] );
               end;

               CheckDCM( P + N <= Stop_, 'JPEG: DHT が途切れている', P );

               Hf.Vals := Copy( Frag_, P, N );  Inc( P, N );

               Hf.Build;

               if Tc = 0 then Huffs[ Th ] := Hf;   // ロスレスは DC 表のみ使う
          end;
     end;

     procedure ParseSOF( const Stop_:Integer );
     var
        I :Integer;
     begin
          Preci := Frag_[ P ];  Inc( P );
          H     := ReadU16;
          W     := ReadU16;
          CompN := Frag_[ P ];  Inc( P );

          CheckDCM( ( Preci >= 2 ) and ( Preci <= 16 ), 'JPEG: 標本精度 ' + Preci.ToString + ' は不正' );
          CheckDCM( ( CompN >= 1 ) and ( CompN <= 4 ) , 'JPEG: 成分数 ' + CompN.ToString + ' は未対応' );

          for I := 0 to CompN-1 do
          begin
               CompID[ I ] := Frag_[ P ];

               CheckDCM( Frag_[ P+1 ] = $11, 'JPEG: サブサンプリングはロスレスでは 1:1 のみ' );

               Inc( P, 3 );   // ID, HV, Tq
          end;
     end;

     procedure ParseSOS;
     var
        Ns, I, K :Integer;
        ID       :Byte;
     begin
          Ns := Frag_[ P ];  Inc( P );

          CheckDCM( Ns = CompN, 'JPEG: スキャン成分数がフレームと一致しない' );

          for I := 0 to Ns-1 do
          begin
               ID := Frag_[ P ];

               for K := 0 to CompN-1 do
                 if CompID[ K ] = ID then CompDC[ K ] := Frag_[ P+1 ] shr 4;

               Inc( P, 2 );
          end;

          Predict := Frag_[ P   ];              // Ss = Selection Value
          PtShift := Frag_[ P+2 ] and $0F;      // Al = Point Transform

          Inc( P, 3 );

          CheckDCM( ( Predict >= 0 ) and ( Predict <= 7 ), 'JPEG: 予測器 ' + Predict.ToString + ' は不正' );
     end;

     //-------------------------------------------------------------------------

     function DecodeDiff( const H_:TjpgHuff ) :Integer;
     var
        S :Integer;
     begin
          S := Bits.DecodeHuff( H_ );   // SSSS（差分カテゴリ 0〜16）

          if S = 0  then Exit( 0 );
          if S = 16 then Exit( 32768 );   // 特例: 追加ビット無しで差分 32768（16bit 対応の要）

          Result := Bits.GetBits( S );

          if Result < ( 1 shl ( S - 1 ) ) then Result := Result - ( 1 shl S ) + 1;   // MSB=0 なら負数
     end;

begin
     ///// マーカー走査（SOI → APPn/COM 読み飛ばし → DHT/DRI/SOF3 → SOS）

     CheckDCM( ( Length( Frag_ ) > 4 ) and ( Frag_[ 0 ] = $FF ) and ( Frag_[ 1 ] = JM_SOI ), 'JPEG: SOI が無い' );

     P := 2;

     Preci    := 0;
     CompN    := 0;
     RstIntvl := 0;

     while True do
     begin
          CheckDCM( P + 4 <= Length( Frag_ ), 'JPEG: SOS の前にデータが尽きた', P );

          while ( Frag_[ P ] = $FF ) and ( Frag_[ P+1 ] = $FF ) do Inc( P );   // fill バイト

          CheckDCM( Frag_[ P ] = $FF, 'JPEG: マーカーが壊れている', P );

          T := Frag_[ P+1 ];  Inc( P, 2 );

          ///// 注意: セグメント長は「長さフィールド自身の 2 バイト」を含む。
          ///// ReadU16 が P を進めるため、終端は必ず読取り後の P を基準に計算する。

          case T of
            JM_SOF3: begin  V := ReadU16;  V := P + V - 2;  ParseSOF( V );  P := V;  end;
            JM_DHT : begin  V := ReadU16;  V := P + V - 2;  ParseDHT( V );  P := V;  end;
            JM_DRI : begin  V := ReadU16;  RstIntvl := ReadU16;  CheckDCM( V = 4, 'JPEG: DRI 長が不正' );  end;
            JM_SOS : begin  ReadU16;  ParseSOS;  Break;  end;
            JM_EOI : raise EdcmError.Create( 'JPEG: フレームが無いまま EOI に達した', P );
          else
               if ( T >= $C0 ) and ( T <= $CF ) and ( T <> JM_DHT ) then
                    raise EdcmError.Create( Format( 'JPEG: SOF%d は未対応（ロスレス SOF3 のみ）', [ T and $0F ] ), P );

               V := ReadU16;  P := P + V - 2;   // APPn／COM 等は読み飛ばす
          end;
     end;

     CheckDCM( CompN > 0, 'JPEG: SOF3 が無い' );
     CheckDCM( ( W = Info_.CountX ) and ( H = Info_.CountY ),
               Format( 'JPEG: 寸法不一致（JPEG %d×%d ／ タグ %d×%d）', [ W, H, Info_.CountX, Info_.CountY ] ) );
     CheckDCM( CompN = Info_.Samples,
               Format( 'JPEG: 成分数不一致（JPEG %d ／ タグ %d）', [ CompN, Info_.Samples ] ) );
     CheckDCM( Info_.BitsA = 16, 'JPEG: BitsAllocated=8 のロスレスは未検証のため 16 のみ対応' );

     for C := 0 to CompN-1 do CheckDCM( Huffs[ CompDC[ C ] ].Valid, 'JPEG: ハフマン表が未定義' );

     ///// スキャンのデコード
     ///// ・予測（T.81 H.1.2.1）: 先頭標本と各行頭・リスタート直後は既定値で開始する。

     Default0 := 1 shl ( Preci - PtShift - 1 );

     SetLength( Result, W * H * CompN * 2 );

     Dst := PWord( @Result[ 0 ] );

     Bits := TjpgBits.Create( Frag_, P );

     try
          for C := 0 to CompN-1 do
          begin
               SetLength( Row0[ C ], W );
               SetLength( Row1[ C ], W );
          end;

          McuI := 0;
          RstI := 0;
          Rst0 := False;

          for Y := 0 to H-1 do
          begin
               for X := 0 to W-1 do
               begin
                    ///// リスタート間隔（T.81 H.2.4: 直後の標本は先頭と同じ条件で予測を再開する）

                    if ( RstIntvl > 0 ) and ( McuI = RstIntvl ) then
                    begin
                         Bits.SyncRST( RstI );

                         Inc( RstI );

                         McuI := 0;
                         Rst0 := True;
                    end;

                    for C := 0 to CompN-1 do
                    begin
                         ///// 予測子（T.81 Table H.1）
                         ///// ・第 1 行は Ra（行頭のみ Rb 位置＝既定値）、各行頭は Rb。

                         if Rst0 or ( ( Y = 0 ) and ( X = 0 ) ) then Px := Default0
                         else
                         if Y = 0 then Px := Row1[ C, X-1 ]                        // 第 1 行: Ra
                         else
                         if X = 0 then Px := Row0[ C, X ]                          // 行頭: Rb
                         else
                         begin
                              Ra := Row1[ C, X-1 ];
                              Rb := Row0[ C, X   ];
                              Rc := Row0[ C, X-1 ];

                              case Predict of
                                0: Px := 0;                                        // 無予測（Process 14 では非推奨だが受理）
                                1: Px := Ra;
                                2: Px := Rb;
                                3: Px := Rc;
                                4: Px := Ra + Rb - Rc;
                                5: Px := Ra + ( ( Rb - Rc ) div 2 );
                                6: Px := Rb + ( ( Ra - Rc ) div 2 );
                              else Px := ( Ra + Rb ) div 2;                        // 7
                              end;
                         end;

                         V := ( Px + DecodeDiff( Huffs[ CompDC[ C ] ] ) ) and $FFFF;   // 2^16 を法とする（T.81 H.1.2.1）

                         Row1[ C, X ] := V;

                         Dst^ := Word( V shl PtShift );  Inc( Dst );
                    end;

                    Rst0 := False;

                    Inc( McuI );
               end;

               ///// 行送り（現在行 → 直上行）

               for C := 0 to CompN-1 do
               begin
                    var Tmp :TArray<Integer> := Row0[ C ];

                    Row0[ C ] := Row1[ C ];
                    Row1[ C ] := Tmp;
               end;
          end;
     finally
          Bits.Free;
     end;
end;

initialization //=============================================================== ■

     RegisterCodec( UID_JPEGLossless   , TdcmCodecJPEGLossless.Create );   // Process 14
     RegisterCodec( UID_JPEGLosslessSV1, TdcmCodecJPEGLossless.Create );   // Process 14 SV1

end. //######################################################################### ■
