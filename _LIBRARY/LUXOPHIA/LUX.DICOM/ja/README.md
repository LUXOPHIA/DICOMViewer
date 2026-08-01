# LUX.DICOM

[English](../README.md) | [日本語](README.md)

医用画像フォーマット「DICOM：*Digital Imaging and Communications in Medicine*」を扱うための Delphi 用ライブラリ。ファイルは (グループ, 要素) タグをキーとするデータ要素の辞書として解析され、約 4,200 件の標準データ要素をコンパイル時に組み込んだレジストリが各タグのキーワード・許容される値表現・説明を与える。さらに型付けされた *ポート* オブジェクトが要素の生バイト列を Delphi の値へ復号する。画素データも同様であり、２Ｄの整数画像として公開される。

## 利用ライブラリ

* [**LUX**](https://github.com/LUXOPHIA/LUX) ：`THex4` と `TSearchBM<T>` を提供する基底ライブラリ。

## 1. 概要

本ライブラリはコア・2つのレジストリ・ポート群から構成される。

| ユニット | 内容 |
|:---|:---|
| `LUX.DICOM.pas` | `TdcmHead`, `TdcmData`, `TdcmFile`, `IdcmPort` / `TdcmPort<T>` |
| `LUX.DICOM.VRs.pas` | `TKindVR` / `TKindsVR`, `TdcmVR`, `TdcmBookVR`, グローバル変数 `_BookVR_` |
| `LUX.DICOM.Tags.pas` | `TdcmTag`, `TdcmTagSort`, `TdcmElem`, `TdcmGrup`, `TdcmBookTag`, グローバル変数 `_BookTag_` |
| `LUX.DICOM.Ports.pas` | 値レコード：`TdcmDate`, `TdcmTime`, `TdcmZone`, `TdcmDateTime`, `TKindPixel` |
| `Tags/` | 71 ユニット（要素グループごとに1つ）。データ要素レジストリを構築する |
| `Ports/` | 具体的なポートクラス群（§3） |

ファイルの読み込みは1回の呼び出しで済む。

- `TdcmFile.LoadFromFile` は 128 バイトのプリアンブルと4文字の接頭辞を `TdcmHead` へ読み込み、接頭辞が `DICM` であることを検査したうえで、ストリーム終端まで `TdcmData.ReadStream` を繰り返し、各要素をそのタグの下に格納する。`TdcmFile` は `doOwnsValues` 付きで生成された `TObjectDictionary<TdcmTag,TdcmData>` であるため、ファイルが要素を所有する。
- `TdcmData` は値のバイト列を `Buff` に、ストリームから読んだ *明示的* VR を `ExpVR` に保持する。`OriVR` はそのタグに対してレジストリが許す VR の集合、`RecVR` は実効の VR を解決したもので、明示的 VR があればそれを、無ければ許容 VR がただ1つのときにレジストリの VR を用いる。
- `TdcmData.Port` は `RecVR` に対応するポートクラスを遅延生成する。ただし画素データ `(7FE0,0010)` の場合は `BitsAllocated` と `PixelRepresentation` から画像ポートを選び、`Rows`・`Columns`・`BitsStored`・`HighBit`・`PhotometricInterpretation` を設定した状態で返す。

実装上の適用範囲：パーサは平坦な要素列を走査する。シーケンスは再帰的に展開されず生のバイト塊として保持され（`TdcmPortSQ` は `TdcmPort1D<TBytes>`）、画素データは格納されたまま扱われる。すなわちカプセル化転送構文の展開も、ウィンドウ／リスケール変換も行わない。画素の深度は 8 ビットと 16 ビット（符号あり・なし）に対応し、それ以外はアサーションで失敗する。ポートのセッタは `Buff` へ書き戻すが、`TdcmFile` に保存メソッドは無い。

## 2. 符号化とデータモデル

### 2.1 タグとデータ要素レジストリ

データ要素は 16 ビットのグループ番号と 16 ビットの要素番号で識別される（`TdcmTag`。2つの `THex4` から成るパックレコード）。並び替えは両者を連結した 32 ビットのキーによって行われ、`TdcmTagSort.Compare` はこれを評価する。

```math
\mathrm{key}(g,e) = 2^{16} g + e
\tag{1}
```

レジストリ `_BookTag_` は2段の辞書である。グループをキーとする `TdcmBookTag` → 要素をキーとする `TdcmGrup` → `TdcmElem`。ユニットの初期化時に `Tags/` 以下の 71 ユニットが構築し、各ユニットは自グループの項目を（コード, キーワード, VR 集合, 説明）の組として、DICOM データ要素レジストリ [2] から追加する。`TdcmGrup` は要素をキーワードでも索引し、レジストリに無いタグに対して `TdcmData.Desc` は `'?'` を返す。

### 2.2 要素の構造と値の長さ

各要素は *タグ | VR? | 長さ | 値* として符号化される。`TdcmBookVR.ReadStream` は2バイトを読み、登録済みの名前と一致した場合にのみ明示的 VR として受け入れる。一致しなければストリームを巻き戻して `vr00`（暗黙的 VR）を報告する。したがって明示的／暗黙的 VR の判別は *要素ごと* に行われる [1]。長さフィールドの幅は、VR の `Size` フィールドから定まる。

```math
L =
\begin{cases}
16\ \text{bit} & \mathrm{Size} = 2:\ \text{AE, AS, AT, CS, DA, DS, DT, FL, FD, IS, LO, LT,}\\
& \qquad\qquad\quad\ \text{PN, SH, SL, SS, ST, TM, UI, UL, US} \\
32\ \text{bit（2 バイトの予約領域の後）} & \mathrm{Size} = 6:\ \text{OB, OD, OF, OL, OW, SQ, UC, UN, UR, UT} \\
32\ \text{bit} & \text{暗黙的 VR } (\mathrm{vr00})
\end{cases}
\tag{2}
```

値のバイト数は常に偶数であるため、`TdcmData.SetSize` はバッファを詰める。

```math
n' = 2 \left\lceil \frac{n}{2} \right\rceil
\tag{3}
```

長さ `$FFFFFFFF` は不定長を意味する。この場合 `FindSize` が、長さ 0 を伴うシーケンス終了項目 `(FFFE,E0DD)` — すなわち連続する4つの 16 ビットワード `FFFE E0DD 0000 0000` — を、ストリームをワード列として読みながら Boyer–Moore 探索 [4] で見つけ、その標識を含む位置までを要素の長さとする [1]。

### 2.3 値表現とポート

`_BookVR_` は DICOM の VR 表 [1] に定める 31 種の値表現を、2文字の名前・長さフィールドの幅・説明とともに登録する。`TdcmData` は自身の `RecVR` に対応するポートクラスを構築する。ポートは提示する Delphi 型についてジェネリックである。

| ポート系 | 値表現 | 提示される値 |
|:---|:---|:---|
| `TdcmPort<T>`（`Ports.Reco`） | AT, FL, FD, SL, SS, UL, US | 固定長のバイナリ値1つ。`Buff` から `Move` で取り出す |
| `TdcmPortText<T>`（`Ports.Text`） | AE, AS, CS, DA, DS, DT, IS, LO, LT, PN, SH, ST, TM, UC, UI, UR, UT | テキストを `String`・`Integer`・`Double`・`TdcmDate`・`TdcmTime`・`TdcmDateTime` へ解析 |
| `TdcmPort1D<T>`（`Ports.D1`） | OB, OD, OF, OL, OW, SQ, UN | 刻み `SizeOf(T)` の `T` の配列。`CountN = Size div SizeOf(T)` |
| `TdcmPort2D<T>`（`Ports.D2`） | — | `CountX` / `CountY` と２Ｄ添字を追加 |
| `TdcmPortImag<T>`（`Ports.D2.Imag`） | 画素データ `(7FE0,0010)` | `Pixels[x,y] :Integer`。§2.5 のビット抽出を伴う |

どのポートも値を人間可読に表す `Text` を公開する。`TdcmPort1D.GetText` は最大5項目まで出力し、続きは `,...` と表示する。日付・時刻は DICOM の書式に合わせた正規表現で解析され、`TdcmDate` は `YYYY[MM[DD]]`、`TdcmTime` は `HH[MM[SS[.FFFFFF]]]`、`TdcmZone` は `±HHMM` を受け付け、`TdcmDateTime` はこの3つを合成する。

### 2.4 画素の番地づけ

２Ｄポートは `CountX` に *Columns*、`CountY` に *Rows* を保持し、行優先でバッファを索引する。

```math
i(x,y) = C_x\,y + x, \qquad N = C_x C_y
\tag{4}
```

### 2.5 画素のビット抽出

画素データは各標本を `BitsAllocated` ビットに詰め、そのうち値を担うのは `BitsStored` ビット（$b$）だけであり、その最上位ビットが `HighBit`（$h$）である [3]。$N = 8\,\mathrm{sizeof}(T)$ とすると、アクセサは格納語 $w$ から標本 $v$ を2回のシフトで復元する。

```math
v = \bigl( w \ll (N-1-h) \bigr) \gg (N-b)
\tag{5}
```

左シフトは最上位ビットより上のビットをすべて捨て、右シフトは $b$ ビットの領域をビット 0 まで下ろす。書き込みは逆変換となる。

```math
w = \bigl( v \ll (N-b) \bigr) \gg (N-1-h)
\tag{6}
```

`BitsAllocated` は格納幅（8 または 16 ビット）を選び、`PixelRepresentation` は符号なし（`TdcmPortImagU08` / `TdcmPortImagU16`）と符号あり（`TdcmPortImagS08` / `TdcmPortImagS16`）のポートクラスを選ぶ [3]。`PhotometricInterpretation` は `TKindPixel` へ復号され、MONOCHROME1・MONOCHROME2・PALETTE COLOR・RGB・YBR_FULL・YBR_FULL_422・YBR_PARTIAL_422・YBR_PARTIAL_420・YBR_ICT・YBR_RCT を扱う [3]。

## 3. アーキテクチャ

### 3.1 コアとポート

```
//// LoadFromFile — ファイルから画素までの解析の連鎖

・TdcmFile.LoadFromFile                          ･･･ ファイル全体を読む
  ┗・TdcmHead                                   ･･･ プリアンブルと接頭辞
     ┗・Pref = 'DICM'                           ･･･ 検査。違えば DICOM ではない
        ┗・TdcmData.ReadStream                  ･･･ × N  終端まで繰り返す
           ┗・RecVR                             ･･･ 明示的 VR かレジストリの VR
              ┗・Port :IdcmPort                 ･･･ RecVR 対応のポートクラス
                 ┗・(7FE0,0010)                 ･･･ 画素データ：画像ポート

//// 所有 — 読み込んだ1ファイル・その要素・そのポート

・TdcmFile :TObjectDictionary<TdcmTag,TdcmData>  ･･･ 読み込んだ1ファイル
  ┗・TdcmData                                   ･･･ × N  1つのデータ要素
     ┗・IdcmPort                                ･･･ Buff への型付きの窓

//// インタフェース — 各々が上のインタフェースを継承する

・IdcmPort
  ┗・IdcmPort1D
     ┗・IdcmPort2D
        ┗・IdcmPortImag

//// 継承 — ポートクラス

・TdcmPort<T>                                    ･･･ Value :T, Text :String
  ┣・TdcmPortAT / FL / FD / SL / SS / UL / US   ･･･ 固定長のバイナリ値1つ
  ┣・TdcmPortText<T>                            ･･･ テキストで符号化された値
  ┃  ┣・TdcmPortString                         ･･･ AE/AS/CS/LO/…/UR/UT
  ┃  ┗・TdcmPortDA / DS / DT / IS / TM         ･･･ TdcmDate / … / TdcmTime
  ┗・TdcmPort1D<T>                              ･･･ Values[i], Texts[i], CountN
     ┣・TdcmPortOB / OD / OF / OL / OW / UN / SQ
     ┗・TdcmPort2D<T>                           ･･･ Values2D[x,y], CountX/Y
        ┗・TdcmPortImag<T>                      ･･･ KindP, BitsN/I, Pixels[x,y]
           ┗・TdcmPortImagU08 / S08 / U16 / S16 ･･･ 式 (5) / (6) のビット抽出
```

### 3.2 レジストリ（グローバル。初期化時に構築）

```
//// _BookVR_ — 値表現のレジストリ

・_BookVR_ :TdcmBookVR                         ･･･ VR のレジストリ
  ┣・TdcmVR                                   ･･･ × 31  Name, Size, Desc
  ┗・NameToKind :TDictionary<TNameVR,TKindVR> ･･･ 2文字の名前 → TKindVR

//// _BookTag_ — データ要素のレジストリ

・_BookTag_ :TdcmBookTag                       ･･･ データ要素のレジストリ
  ┗・TdcmGrup                                 ･･･ グループ毎に1つ
     ┗・TdcmElem                              ･･･ 要素毎に1つ
```

### 3.3 ファイル

```
・LUX.DICOM/
  ┣・LUX.DICOM.pas                  ･･･ ファイル／要素／ポートのコア
  ┣・LUX.DICOM.VRs.pas              ･･･ 値表現とそのレジストリ（_BookVR_）
  ┣・LUX.DICOM.Tags.pas             ･･･ タグとデータ要素レジストリ（_BookTag_）
  ┣・Tags/                          ･･･ グループ毎に1ユニット：G0000 … GFFFE
  ┣・LUX.DICOM.Ports.pas            ･･･ TdcmDate/Time/DateTime, TKindPixel
  ┗・Ports/
     ┣・LUX.DICOM.Ports.Reco.pas    ･･･ 固定長バイナリの VR
     ┣・LUX.DICOM.Ports.Text.pas    ･･･ テキストの VR
     ┣・LUX.DICOM.Ports.D1.pas      ･･･ １Ｄ配列の VR
     ┣・LUX.DICOM.Ports.D2.pas      ･･･ ２Ｄ配列の基底
     ┗・LUX.DICOM.Ports.D2.Imag.pas ･･･ 画素データのポート
```

本ライブラリは `THex4` と `TSearchBM<T>` のために LUX 基底ライブラリに依存する。

## 4. 使い方

```pascal
uses LUX, LUX.DICOM, LUX.DICOM.Tags, LUX.DICOM.VRs,
     LUX.DICOM.Ports, LUX.DICOM.Ports.Text, LUX.DICOM.Ports.D2.Imag;

var
   F    :TdcmFile;
   T    :TdcmTag;
   D    :TdcmData;
   I    :IdcmPortImag;
   X, Y :Integer;
begin
     F := TdcmFile.Create;
     try
          F.LoadFromFile( 'CT.dcm' );

          for T in F.TagsToArray do                        // キー (1) の昇順に並んだタグ
          begin
               D := F[ T ];

               Writeln( T.ToString, ' ', D.RecVR.ToString, ' ',
                        D.Desc, ' = ', D.Port.Text );
          end;

          //// 個別の要素を復号する

          Writeln( TdcmPortString( F.Data[$0010,$0010].Port ).Value );   // 患者名
          Writeln( TdcmPortDA    ( F.Data[$0008,$0020].Port ).Value.ToString );  // 検査日

          //// 画像

          I := F.Data[$7FE0,$0010].Port as IdcmPortImag;   // 画素データ

          for Y := 0 to I.CountY-1 do
          begin
               for X := 0 to I.CountX-1 do
               begin
                    { I.Pixels[ X, Y ] を使う — 式 (5) でシフト済みの標本値 }
               end;
          end;
     finally
          F.Free;                                          // 所有する TdcmData を全解放する
     end;
end;
```

## 5. 参考文献

1. NEMA, [*DICOM PS3.5 — Data Structures and Encoding*](https://dicom.nema.org/medical/dicom/current/output/html/part05.html), §6.2 Value Representation, §7.1 Data Elements, §7.5 Nesting of Data Sets.
2. NEMA, [*DICOM PS3.6 — Data Dictionary*](https://dicom.nema.org/medical/dicom/current/output/html/part06.html), §6 Registry of DICOM Data Elements.
3. NEMA, [*DICOM PS3.3 — Information Object Definitions*](https://dicom.nema.org/medical/dicom/current/output/html/part03.html), §C.7.6.3 Image Pixel Module.
4. R. S. Boyer and J. S. Moore, [*A Fast String Searching Algorithm*](https://doi.org/10.1145/359842.359859), Communications of the ACM, 20(10), 762–772, 1977.
5. NEMA, [*DICOM Standard — Current Edition*](https://www.dicomstandard.org/current).

## 💖 [Embarcadero](https://www.embarcadero.com/jp/) [**Delphi**](https://www.embarcadero.com/jp/products/delphi)
ネイティブなクロスプラットフォームアプリを開発するための統合開発環境（ＩＤＥ）。
### Free Download: [**Delphi** Community Edition](https://www.embarcadero.com/jp/products/delphi/starter)
