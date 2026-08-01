# LUX.DICOM

[English](../README.md) | [日本語](README.md)

医用画像フォーマット「DICOM：*Digital Imaging and Communications in Medicine*」を読み書きするための Delphi 用ライブラリ。ファイルは転送構文に駆動されてタグ昇順のデータセットへ解析され、入れ子のシーケンスは再帰的に展開され、カプセル化された画素データはフラグメントへ分解される。公式の PS3.6 DocBook ソースから機械生成した約 5,300 件のデータ辞書がキーワードと値表現を与え、画素パイプラインはビット抽出・リスケール・ウィンドウ・測光反転を 1 本のルックアップテーブルに畳み込む。純 Pascal の JPEG ロスレス（Process 14）デコーダがプラグインコーデックとして登録される。旧実装は `main_old` ブランチに保全されている。

## 1. 概要

本ライブラリはデファクトスタンダード実装（DCMTK・fo-dicom・GDCM・dcm4che）に共通するアーキテクチャに従う。すなわち、データセットはタグ→要素のソート済みマップ、パーサとモデルは分離、コーデックは転送構文ごとの登録制、データ辞書はコードではなくデータである。

| ユニット | 内容 |
|:---|:---|
| `LUX.DICOM.pas` | ファサード `TdcmFile` と型別名 — アプリはこのユニットだけを uses すればよい |
| `Core/LUX.DICOM.core.pas` | `TdcmTag`, `EdcmError`, `CheckDCM` |
| `Core/LUX.DICOM.VRs.pas` | 全 34 値表現のストラテジ表 `_VRInfo_` |
| `Core/LUX.DICOM.Syntax.pas` | `TdcmTranSyn` — 縮退動作つきの転送構文解決 |
| `Core/LUX.DICOM.Charse.pas` | Specific Character Set の復号（ISO 2022 IR 87 を含む） |
| `Dictio/` | 辞書ランタイムと、**生成物**の `LUX.DICOM.Tags.pas`／`LUX.DICOM.UIDs.pas` |
| `Model/LUX.DICOM.Datset.pas` | `TdcmDataset` と要素クラス `TdcmValue`／`TdcmSequence`／`TdcmFragments` |
| `IO/` | `TdcmSource`・パーサ `TdcmReader`・シリアライザ `TdcmWriter` |
| `Codecs/` | コーデックレジストリ、JPEG 共通層と SOF3 ロスレスデコーダ |
| `Pixels/LUX.DICOM.Pixels.pas` | フレーム単位の遅延デコードと LUT パイプライン |
| `Stream/LUX.DICOM.Stream.FMX.pas` | FMX に依存する唯一のユニット — `TBitmap` 変換 |
| `Tools/` | `dcmTest`・`dcmDump`・`dcmPix`・`dcmCmp`・`dcmRT`・`DictGen`（コンソール） |

設計規則：値は生バイト列のまま、ストリーム上の VR 名と値長とともに保持する。したがって未知タグ・未知 VR・UN 要素は読み書きの往復で無変更のまま生き残る（PS3.5 §6.2.2 はこれらのバイトスワップを禁じている [1]）。例外型は `EdcmError` の 1 種のみで、関門 `CheckDCM` を通して送出される。既定の *Lenient* モードでは規格違反を `Issues` に記録して解析を続行し、*Strict* モードでは例外を送出する。

## 2. 符号化とデータモデル

### 2.1 タグとデータセットの順序

タグは 16 ビットのグループ番号と要素番号の組であり、比較は 32 ビットのキー

$$\mathrm{key}(g,e) = 2^{16} g + e \tag{1}$$

で行う。パックレコードをリトルエンディアンの 32 ビット整数として読むと上下が入れ替わるため、決して行わない。`TdcmDataset` は要素リストをキー昇順に常時維持する。DICOM はデータセットをこの順に符号化するため、解析中の追加は O(1) の末尾追加となり、順序違反ファイルは二分探索位置への挿入で救済され、検索は O(log n) である。

### 2.2 要素の構造

`(0002,0010)` から読んだ転送構文（File Meta 自体は常に Explicit VR Little Endian）が、以降の全要素のレイアウト *tag | VR? | length | value* を決定する。明示的 VR では長さフィールドの幅が VR から従う。

$$L = \begin{cases} 16\ \text{ビット} & \text{短形式：AE, AS, AT, CS, DA, DS, DT, FD, FL, IS, LO, LT, PN, SH, SL, SS, ST, TM, UI, UL, US} \\ 32\ \text{ビット（予約 2 バイトの後）} & \text{長形式：OB, OD, OF, OL, OV, OW, SQ, SV, UC, UN, UR, UT, UV} \\ 32\ \text{ビット} & \text{暗黙的 VR} \end{cases} \tag{2}$$

英大文字 2 文字の未知の VR 名は長形式として読み、UN 相当で保全する。2015 年以降に規格へ追加された VR（OD・OL・OV・UC・UR・SV・UV）は例外なく長形式であり、この規則が前方互換の既定である。暗黙的 VR は辞書フックで解決されるため、暗黙的な定義長 SQ も再帰的に展開される。

### 2.3 未定義長・シーケンス・フラグメント

長さ `$FFFFFFFF` は*線形*解析で解決する。すなわち Item `(FFFE,E000)` と区切り子 `(FFFE,E00D)`／`(FFFE,E0DD)` をストリーム順に消費し、シーケンスは子データセットへ再帰し、未定義長の UN は CP-246 に従い Implicit VR Little Endian として読む。（旧実装は区切り子のパターンを Boyer–Moore でストリーム全体から検索しており、入れ子のシーケンスや圧縮画素データで誤爆し、サンプルファイルで数分のフリーズを起こしていた。線形パーサはいずれも 0.4 秒未満で完走する。）カプセル化された画素データは Basic Offset Table とフラグメント群へ分解される。

### 2.4 文字集合

テキスト系 VR は `(0008,0005)` に従って復号する。ISO 2022 IR 87 ではエスケープシーケンスが JIS X 0208 を指示し、その 2 バイト符号は算術変換で Shift-JIS へ写して CP932 で復号する。区切り文字によるエスケープ状態の初期化は 1 バイト系集合の指示中にのみ適用する。漢字のバイトが区切り文字の符号と一致し得るためである（例：『秋』の第 1 バイトは `=`）。ISO_IR 100〜166・ISO_IR 13・ISO_IR 192（UTF-8）にも対応する。

## 3. 画素パイプライン

格納値は 16 ビットのビットパターンから 2 回のシフトで取り出す。Delphi では `shl`／`shr` が 32 ビット `Integer` へ昇格し、かつ `shr` が論理シフトであるため、キャストが本質的である。

$$w = \mathrm{Word}(v \ll (15 - \mathrm{HighBit})), \qquad s = \begin{cases} \mathrm{SmallInt}(w) \,/\, 2^{16-\mathrm{BitsStored}} & \text{符号あり} \\ w \gg (16-\mathrm{BitsStored}) & \text{符号なし} \end{cases} \tag{3}$$

これにより `HighBit` より上位のオーバーレイビットが除去され、符号拡張も正しく行われる。リスケールと PS3.3 C.11.2.1.2 の線形ウィンドウ [3]（Window Center／Width の欠落・多値・幅 1 未満に対しては実測 min/max へ退避する防御つき）は、MONOCHROME1 の反転とともに 65,536 項目（8 ビットなら 256 項目）の 1 本のルックアップテーブルへ畳み込まれ、フレーム変換は表引き 1 パスで済む。

## 4. JPEG ロスレスデコーダ

`Codecs/LUX.DICOM.Codecs.JPEG.Lossless.pas` は ITU-T T.81 の SOF3 [4] を純 Pascal で実装し、転送構文 1.2.840.10008.1.2.4.57 と .70 に自己登録する。正準ハフマン表は 8 ビットの先読み表で引き、8 ビットを超える符号のみ逐次照合へ落とす。バイトスタッフィング（`FF 00`）とリスタートマーカーはビットリーダが処理する。差分カテゴリ SSSS は予測誤差

$$d = \begin{cases} 0 & S = 0 \\ 32768 & S = 16 \\ b - 2^{S} + 1 & b < 2^{S-1} \quad (\text{MSB} = 0 \Rightarrow \text{負数}) \\ b & \text{それ以外} \end{cases} \tag{4}$$

を与え、予測値に $2^{16}$ を法として加算する。予測器は Selection Value 0〜7 を全て実装し、先頭標本とリスタート直後は既定値 $2^{P-P_t-1}$ から再開する。正しさは機械的に検証されている。JIRA サンプルには同一画像が JPEG ロスレス SV1 と非圧縮の両形式で含まれており、`dcmCmp` が全ペアの 9,000,000 画素の完全一致を確認する。

## 5. データ辞書の生成

`Tools/DictGen` は、NEMA が直接配布する DocBook XML ソース `part06.xml` [2][5] を解析し（公式の GitHub リポジトリも公式リファレンス実装も存在しない）、`LUX.DICOM.Tags.pas`（Table 6-1・7-1・8-1・9-1 から約 5,300 件）と `LUX.DICOM.UIDs.pas`（Table A-1 から約 470 件）を純粋な `const` 配列として出力する。`(60xx,3000)` のようなワイルドカードタグはキー／マスクの組に正規化され、

$$(\mathrm{key}(g,e) \wedge \mathrm{mask}) = \mathrm{key}_0 \tag{5}$$

で照合される。規格は年約 5 回改訂される。改訂への追従は、最新の `part06.xml` を取得し、`DictGen part06.xml ..\..\Dictio` を実行し、リビルドして回帰ツールを再実行するだけである。表に新しい VR が現れた場合は生成器が列挙して警告終了する — 列挙値 1 個と `_VRInfo_` の 1 行の追加が唯一の手作業である。

## 6. 使い方

```pascal
uses LUX.DICOM;   // 文字集合・辞書・JPEG ロスレスもこの uses だけで有効になる

procedure Demo( const FileName_:String );
var
   F      :TdcmFile;
   E      :TdcmElement;
   WC, WW :Double;
begin
     F := TdcmFile.Create( FileName_ );

     try
          Writeln( F.Syntax.Name );                             // 例：'JPEG Lossless (Process 14, SV1)'
          Writeln( F.Body.GetText( $0010, $0010 ) );            // 患者名 — ISO 2022 IR 87 も復号される

          for E in F.Body do Writeln( E.Tag.ToString, ' ', E.VRText, ' ', E.Text( F.Body.Charse ) );

          if F.HasPixels then
          begin
               F.Pixels.DefaultWindow( 0, WC, WW );             // タグのウィンドウ、無ければ実測値

               { F.Pixels.FrameRaw(0) ＋ F.Pixels.BuildLUT8(WC,WW)、あるいは
                 LUX.DICOM.Stream.FMX.DcmFrameToBitmap( F.Pixels, 0, WC, WW, Bitmap ) }
          end;
     finally
          F.Free;
     end;
end;
```

## 7. 検証

| ツール | 検査内容 |
|:---|:---|
| `dcmTest` | 単体テスト 88 件：タグ順序・VR 表の往復・転送構文解決・辞書とワイルドカード照合・ISO 2022 復号・合成した暗黙的 VR／入れ子 SQ／切断ストリーム・式 (3) のビット抽出 |
| `dcmDump` | JIRA サンプル 8 ファイルのタグツリーダンプ — 全て Issue ゼロで解析完了 |
| `dcmPix` | 非圧縮サンプルのウィンドウ適用済み BMP 描画 |
| `dcmCmp` | JPEG ↔ 非圧縮の画素一致：4 ペア × 900 万画素、全一致 |
| `dcmRT` | read → write → read：全 8 サンプルの全要素（フラグメント含む）がバイト一致 |

## 8. 参考文献

1. NEMA, [*DICOM PS3.5 — Data Structures and Encoding*](https://dicom.nema.org/medical/dicom/current/output/html/part05.html), §6.2 Value Representation, §7.1 Data Elements, §7.5 Nesting of Data Sets, §A.4 Encapsulation.
2. NEMA, [*DICOM PS3.6 — Data Dictionary*](https://dicom.nema.org/medical/dicom/current/output/html/part06.html), および [DocBook ソース](https://dicom.nema.org/medical/dicom/current/source/docbook/part06/part06.xml).
3. NEMA, [*DICOM PS3.3 — Information Object Definitions*](https://dicom.nema.org/medical/dicom/current/output/html/part03.html), §C.7.6.3 Image Pixel Module, §C.11.2 VOI LUT Module.
4. ITU-T, [*Recommendation T.81 — Digital compression and coding of continuous-tone still images*](https://www.itu.int/rec/T-REC-T.81), Annex H, Lossless mode of operation.
5. NEMA, [*DICOM Standard — Current Edition*](https://www.dicomstandard.org/current).

## 💖 [Embarcadero](https://www.embarcadero.com/jp/) [**Delphi**](https://www.embarcadero.com/jp/products/delphi)
ネイティブなクロスプラットフォームアプリを開発するための統合開発環境（ＩＤＥ）。
### Free Download: [**Delphi** Community Edition](https://www.embarcadero.com/jp/products/delphi/starter)
