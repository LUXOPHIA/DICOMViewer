program dcmTest;

{$APPTYPE CONSOLE}

///// LUX.DICOM の単体テスト（コンソール）
///// ・失敗があれば NG 行を表示し、終了コード 1 を返す。

uses System.SysUtils, System.IOUtils,
     LUX.DICOM.core   in '..\..\Core\LUX.DICOM.core.pas'    ,
     LUX.DICOM.VRs    in '..\..\Core\LUX.DICOM.VRs.pas'     ,
     LUX.DICOM.Syntax in '..\..\Core\LUX.DICOM.Syntax.pas'  ,
     LUX.DICOM.Source in '..\..\IO\LUX.DICOM.Source.pas'    ,
     LUX.DICOM.Datset in '..\..\Model\LUX.DICOM.Datset.pas' ,
     LUX.DICOM.Reader in '..\..\IO\LUX.DICOM.Reader.pas'    ,
     LUX.DICOM.Charse in '..\..\Core\LUX.DICOM.Charse.pas'  ,
     LUX.DICOM.Dictio in '..\..\Dictio\LUX.DICOM.Dictio.pas',
     LUX.DICOM.Tags   in '..\..\Dictio\LUX.DICOM.Tags.pas'  ,
     LUX.DICOM.UIDs   in '..\..\Dictio\LUX.DICOM.UIDs.pas'  ,
     LUX.DICOM.Pixels in '..\..\Pixels\LUX.DICOM.Pixels.pas',
     LUX.DICOM.Codecs in '..\..\Codecs\LUX.DICOM.Codecs.pas';

var
   _PassN :Integer = 0;
   _FailN :Integer = 0;

procedure Check( const OK_:Boolean; const Name_:String );
begin
     if OK_ then Inc( _PassN )
     else
     begin
          Inc( _FailN );  Writeln( 'NG: ', Name_ );
     end;
end;

//------------------------------------------------------------------------------

procedure TestTag;
var
   A, B :TdcmTag;
begin
     A := TdcmTag.Create( $0008, $0018 );
     B := TdcmTag.Create( $7FE0, $0010 );

     Check( A.ToString = '(0008,0018)'          , 'TdcmTag.ToString'                );
     Check( A.Key = $00080018                   , 'TdcmTag.Key'                     );
     Check( A < B                               , 'TdcmTag 順序（Grup 優先）'        );
     Check( TdcmTag.Create( $0008, $FFFF )
          < TdcmTag.Create( $0009, $0000 )      , 'TdcmTag 順序（Elem 繰り上がり）'  );
     Check( A = TdcmTag.Create( $0008, $0018 )  , 'TdcmTag 等値'                    );
     Check( A <> B                              , 'TdcmTag 非等値'                  );
     Check( not A.IsPrivate                     , 'TdcmTag.IsPrivate（偶数）'        );
     Check( TdcmTag.Create( $0009, $0001 ).IsPrivate, 'TdcmTag.IsPrivate（奇数）'    );
     Check( TdcmTag.Create( $FFFE, $E000 ).IsDelimit, 'TdcmTag.IsDelimit'           );
     Check( TdcmTag.Create( $0008, $0000 ).IsGroupLen, 'TdcmTag.IsGroupLen'         );
end;

//------------------------------------------------------------------------------

procedure TestVR;
var
   K :TdcmVRKind;
   N :String;
begin
     ///// 全 VR 名の往復（名前 → 列挙値 → 名前）

     for K := Succ( Low( TdcmVRKind ) ) to High( TdcmVRKind ) do
     begin
          N := VRName( K );

          Check( VRKindOf( AnsiChar( N[1] ), AnsiChar( N[2] ) ) = K, 'VR 往復: ' + N );
     end;

     Check( VRKindOf( 'Z', 'Z' ) = vrNone, '未知 VR 名 → vrNone'  );
     Check( VRKindOf( #0 , #0  ) = vrNone, 'NUL VR 名 → vrNone'   );

     ///// 性質表の抜き取り検査

     Check(     _VRInfo_[ vrOB ].IsLong, 'OB は long 形式'  );
     Check(     _VRInfo_[ vrUV ].IsLong, 'UV は long 形式'  );
     Check( not _VRInfo_[ vrUS ].IsLong, 'US は short 形式' );
     Check( _VRInfo_[ vrUI ].Pad  = $00, 'UI のパディングは NUL' );
     Check( _VRInfo_[ vrPN ].Pad  = $20, 'PN のパディングは空白' );
     Check( _VRInfo_[ vrOW ].Swap = 2  , 'OW の交換単位は 2'     );
     Check( _VRInfo_[ vrFD ].Swap = 8  , 'FD の交換単位は 8'     );
     Check( _VRInfo_[ vrPN ].IsTxt     , 'PN は文字集合の影響を受ける' );
     Check( not _VRInfo_[ vrUI ].IsTxt , 'UI は文字集合の影響を受けない' );
     Check( not _VRInfo_[ vrLT ].HasVM , 'LT は多値を持たない'   );
end;

//------------------------------------------------------------------------------

procedure TestSyntax;
var
   S :TdcmTranSyn;
begin
     S := TdcmTranSyn.From( UID_ImplicitVRLittleEndian );
     Check( ( not S.IsExplic ) and ( not S.IsEncaps ) and S.IsKnown, 'Implicit VR LE' );

     S := TdcmTranSyn.From( UID_ExplicitVRLittleEndian + #0 );   // 末尾 NUL 除去も検査
     Check( S.IsExplic and ( not S.IsBigEnd ) and ( not S.IsEncaps ) and ( S.UID = UID_ExplicitVRLittleEndian ), 'Explicit VR LE（NUL 除去）' );

     S := TdcmTranSyn.From( UID_DeflatedExplicitVRLittleEndian );
     Check( S.IsDeflate and ( not S.IsEncaps ), 'Deflated Explicit VR LE' );

     S := TdcmTranSyn.From( UID_ExplicitVRBigEndian );
     Check( S.IsBigEnd and S.IsExplic, 'Explicit VR BE' );

     S := TdcmTranSyn.From( UID_JPEGLosslessSV1 );
     Check( S.IsEncaps and S.IsExplic and S.IsKnown, 'JPEG Lossless SV1 はカプセル化' );

     S := TdcmTranSyn.From( '1.2.840.10008.1.2.4.999' );   // 未知 UID
     Check( S.IsEncaps and S.IsExplic and ( not S.IsKnown ), '未知 UID → Explicit LE カプセル化と推定' );
end;

//------------------------------------------------------------------------------

procedure TestDictio;
var
   E :PdcmDictEntry;
begin
     Check( DictKeyword( TdcmTag.Create( $0010, $0010 ) ) = 'PatientName'   , '辞書: PatientName'          );
     Check( DictVR( TdcmTag.Create( $0028, $0010 ) ) = vrUS                 , '辞書: Rows の VR'           );
     Check( DictKeyword( TdcmTag.Create( $6002, $3000 ) ) = 'OverlayData'   , '辞書: 60xx ワイルドカード'   );
     Check( DictKeyword( TdcmTag.Create( $0009, $0010 ) ) = 'PrivateCreator', '辞書: PrivateCreator'       );
     Check( DictVR( TdcmTag.Create( $0009, $0010 ) ) = vrLO                 , '辞書: PrivateCreator の VR' );
     Check( DictKeyword( TdcmTag.Create( $0008, $0000 ) ) = 'GroupLength'   , '辞書: GroupLength'          );

     E := DictFind( TdcmTag.Create( $0028, $0106 ) );   // SmallestImagePixelValue: US or SS

     Check( Assigned( E ) and ( E.VR1 = vrUS ) and ( E.VR2 = vrSS ), '辞書: US/SS 両候補' );

     Check( UIDName( UID_JPEGLosslessSV1 ).Contains( 'JPEG Lossless' ), '辞書: 転送構文 UID 名' );
end;

//------------------------------------------------------------------------------

procedure TestCharse;
var
   B :TBytes;
begin
     ///// ESC $ B ＋『秋』（JIS 3D29）＋ ESC ( B

     B := TBytes.Create( $1B, $24, $42, $3D, $29, $1B, $28, $42 );

     Check( DecodeDcmText( B, 'ISO 2022 IR 87' ) = '秋', 'Charse: JIS X 0208 漢字' );

     ///// 漢字ラン中の 0x3D（『秋』第1バイト）を '=' 区切りと誤認しないこと

     B := TBytes.Create( Ord( 'A' ), Ord( '=' ), $1B, $24, $42, $3D, $29, $4D, $55, $38, $36, $1B, $28, $42 );

     Check( DecodeDcmText( B, '\ISO 2022 IR 87' ) = 'A=秋葉原', 'Charse: 漢字ラン中の擬似区切りバイト' );

     ///// UTF-8

     B := TEncoding.UTF8.GetBytes( '漢字' );

     Check( DecodeDcmText( B, 'ISO_IR 192' ) = '漢字', 'Charse: UTF-8' );

     ///// 半角カナ（G1、IR 13）

     B := TBytes.Create( $B1, $B2 );

     Check( DecodeDcmText( B, 'ISO 2022 IR 13\ISO 2022 IR 87' ) = 'ｱｲ', 'Charse: 半角カナ (IR 13)' );
end;

//------------------------------------------------------------------------------

function ParseBytes( const B_:TBytes; const Strict_:Boolean = False ) :TdcmReader;
var
   T :String;
begin
     T := TPath.Combine( TPath.GetTempPath, 'dcmTest.tmp.dcm' );

     TFile.WriteAllBytes( T, B_ );

     Result := TdcmReader.Create( Strict_ );

     Result.LoadFromFile( T );
end;

//------------------------------------------------------------------------------

procedure TestReader;
var
   B :TBytes;
   R :TdcmReader;
   E :TdcmElement;
begin
     ///// Implicit VR の生データセット（プリアンブル無し）: (0008,0060) CS 'CR', (0028,0010) US 3000

     B := TBytes.Create( $08,$00, $60,$00, $02,$00,$00,$00, Ord('C'),Ord('R'),
                         $28,$00, $10,$00, $02,$00,$00,$00, $B8,$0B );

     R := ParseBytes( B );

     try
          Check( R.Issues.Count > 0                                 , 'Reader: プリアンブル無しを Issue 記録'   );
          Check( R.Body.GetText( $0008, $0060 ) = 'CR'              , 'Reader: Implicit の値'                  );
          Check( R.Body.GetInt( $0028, $0010 ) = 3000               , 'Reader: Implicit の US 値'              );

          E := R.Body.Find( $0028, $0010 );

          Check( Assigned( E ) and ( E.VR = vrUS )                  , 'Reader: Implicit VR の辞書解決'         );
     finally
          R.Free;
     end;

     ///// ネストした未定義長 SQ（Explicit）: (0008,1140) SQ { Item { (0008,1155) UI '1.2' } }

     B := TBytes.Create( $08,$00, $40,$11, Ord('S'),Ord('Q'), $00,$00, $FF,$FF,$FF,$FF,
                           $FE,$FF, $00,$E0, $FF,$FF,$FF,$FF,
                             $08,$00, $55,$11, Ord('U'),Ord('I'), $04,$00, Ord('1'),Ord('.'),Ord('2'),$00,
                           $FE,$FF, $0D,$E0, $00,$00,$00,$00,
                         $FE,$FF, $DD,$E0, $00,$00,$00,$00 );

     R := ParseBytes( B );

     try
          E := R.Body.Find( $0008, $1140 );

          Check( ( E is TdcmSequence ) and ( TdcmSequence( E ).Count = 1 ), 'Reader: 未定義長 SQ の再帰'  );

          if E is TdcmSequence then
               Check( TdcmSequence( E )[ 0 ].GetText( $0008, $1155 ) = '1.2', 'Reader: SQ 内の要素値' );
     finally
          R.Free;
     end;

     ///// 途中で切れたファイル: Lenient は Issue 記録で完走、Strict は例外

     B := TBytes.Create( $08,$00, $60,$00, $02,$00,$00,$00, Ord('C'),Ord('R'),
                         $28,$00, $10,$00, $10,$00,$00,$00, $B8 );

     R := ParseBytes( B );

     try
          Check( R.Issues.Count > 0, 'Reader: 切断ファイルを Issue 記録（Lenient）' );
     finally
          R.Free;
     end;

     try
          R := ParseBytes( B, True );

          R.Free;

          Check( False, 'Reader: 切断ファイルで例外（Strict）' );
     except
          on EdcmError do Check( True, 'Reader: 切断ファイルで例外（Strict）' );
     end;
end;

//------------------------------------------------------------------------------

procedure TestExtract;
begin
     ///// 12bit stored / HighBit 11 / 上位にゴミ（オーバーレイ）入り

     Check( ExtractStored( $F800, 12, 11, False ) = $0800, 'Extract: HighBit 上位のゴミ除去'   );
     Check( ExtractStored( $0800, 12, 11, True  ) = -2048, 'Extract: 符号拡張（12bit 負数）'   );
     Check( ExtractStored( $07FF, 12, 11, True  ) =  2047, 'Extract: 符号拡張（12bit 正数）'   );
     Check( ExtractStored( $FFFF, 16, 15, True  ) =    -1, 'Extract: 16bit 符号あり'          );
     Check( ExtractStored( $FFFF, 16, 15, False ) = 65535, 'Extract: 16bit 符号なし'          );
     Check( ExtractStored( $3FFF, 14, 13, False ) = 16383, 'Extract: 14bit（DX 相当）'        );
end;

//------------------------------------------------------------------------------

begin
     try
          TestTag;
          TestVR;
          TestSyntax;
          TestDictio;
          TestCharse;
          TestReader;
          TestExtract;

          Writeln( Format( 'PASS: %d / FAIL: %d', [ _PassN, _FailN ] ) );

          if _FailN > 0 then ExitCode := 1;
     except
          on X:Exception do
          begin
               Writeln( X.ClassName, ': ', X.Message );  ExitCode := 2;
          end;
     end;
end.
