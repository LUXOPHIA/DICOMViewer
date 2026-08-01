# DICOMViewer

[English](../README.md) | [日本語](README.md)

医用画像フォーマット「DICOM」の最小構成ビューアです。Delphi（FireMonkey）製で、`.dcm` ファイルをウィンドウへドラッグ＆ドロップすると、ファイルに埋め込まれたウィンドウ中心／幅を適用したグレースケール画像を表示し、全データ要素をタグ一覧表で確認できます。解析は [LUX.DICOM](https://github.com/LUXOPHIA/LUX.DICOM) ライブラリが担います。

![スクリーンショット](../--------/_SCREENSHOT/DICOMViewer.png)

## 利用ライブラリ

* [**LUX**](https://github.com/LUXOPHIA/LUX) ：ベクトル・行列などの基盤数学ライブラリ。
* [**LUX.DICOM**](https://github.com/LUXOPHIA/LUX.DICOM) ：DICOM 医用画像フォーマットの読み込みライブラリ。

## 1. 概要

* **DICOM ファイル解析**：128 バイトのプリアンブルと `DICM` プレフィックスを検証した後、全データ要素を順次読み込み、タグをキーとする辞書（`TdcmFile`）に格納します。
* **明示的／暗黙的 VR**：値表現（VR）フィールドを VR 辞書と照合し、有効な VR 名が見つからない場合は暗黙的 VR として読み込みます [2]。
* **不定長要素**：長さが `0xFFFFFFFF` の要素は、Boyer–Moore 探索（`TSearchBM<Word>`）で *Sequence Delimitation Item* `(FFFE,E0DD)` を検出して長さを確定します。
* **画像表示**：*Pixel Data* 要素 `(7FE0,0010)` を Image Pixel Module の属性 [3] — *Photometric Interpretation*・*Rows*・*Columns*・*Bits Allocated*・*Bits Stored*・*High Bit*・*Pixel Representation* — に基づいて解釈し、無圧縮の 8/16 ビット・符号付き／符号なしグレースケールフレームに対応します。
* **ウィンドウ処理**：*Window Center* `(0028,1050)` と *Window Width* `(0028,1051)` を線形 VOI 変換として適用します [4]。
* **データ要素テーブル**：各要素のグループ／要素番号・元 VR・明示的 VR・バイトサイズ・値の文字列表現・タグの標準的な説明を一覧表示します。

## 2. 技術的背景

### 2.1 データ要素の構造

DICOM ファイルは、16 ビット数の（グループ, 要素）ペアでタグ付けされたデータ要素の列です [2]。`TdcmData.ReadStream` はタグを読んだ後、2 文字の VR 名の読み取りを試みます。VR 辞書（`TdcmBookVR`）に存在しない名前ならファイル位置を巻き戻し、長さフィールドが 4 バイトの暗黙的 VR として扱います。明示的 VR の場合、短い VR は 2 バイトの長さを持ち、長い VR（`OB`・`OW`・`SQ` など）は 2 バイトの予約ブロックを読み飛ばした後に 4 バイトの長さを持ちます。

### 2.2 ピクセル値の抽出

格納ピクセル値は、*Bits Allocated*（$N$）ビットのコンテナ内で、最上位ビットが *High Bit*（$h$）の位置に来るように *Bits Stored*（$n$）ビット分だけ配置されています。`TdcmPortImag*.GetValues` は、未使用ビットの破棄を兼ねたシフト対によって値を抽出します。

```math
p \;=\; \bigl( v \ll (N-1-h) \bigr) \gg (N-n) \tag{1}
```

ここで $v$ はコンテナの生値、$p$ は抽出されたピクセル値です。符号付きポートクラス（`TdcmPortImagS08`・`TdcmPortImagS16`、*Pixel Representation* `(0028,0103)` が 1 のときに選択）では符号付き型に対してシフトが行われるため、2 の補数表現の符号が保存されます。

### 2.3 VOI ウィンドウ処理

メインフォームは、抽出された各ピクセル値 $p$ を、*Window Center* $c$ と *Window Width* $w$ による線形 VOI（value of interest）変換 [4] で表示グレーレベル $g \in [0,1]$ に写像します。

```math
g \;=\; \operatorname{clamp}\!\left( \frac{p - \left(c - \tfrac{w}{2}\right)}{w},\; 0,\; 1 \right) \tag{2}
```

グレーレベルは FireMonkey ビットマップの R・G・B チャンネルに同じ値として書き込まれます。なお *Rescale Slope/Intercept* 変換 `(0028,1053)/(0028,1052)` は適用されず、ウィンドウは格納値に直接作用します。

## 3. アーキテクチャ

```
［所有関係］
・TForm1 (Main.pas)                  ･･･ FMX GUI: TabControl → Image/StringGrid
  ┗・_DICOM :TdcmFile               ･･･ TObjectDictionary<TdcmTag,TdcmData>
     ┗・TdcmData                    ･･･ 1..N（値は辞書が所有）
        ┣・_Tag :TdcmTag
        ┣・_ExpVR :TKindVR
        ┣・_Buff :TBytes
        ┗・型付きアクセサ :IdcmPort ･･･ RecVR（7FE0,0010）に応じて遅延生成

［継承関係］
・IdcmPort
  ┗・TdcmPort<T>
     ┣・TdcmPortAE … TdcmPortUT    ･･･ VR ごとに 1 クラス
     ┗・TdcmPort1D<T>
        ┗・TdcmPort2D<T>
           ┗・TdcmPortImag<T>       ･･･ IdcmPortImag (KindP, CountX/Y, Pixels)
              ┣・TdcmPortImagU08
              ┣・TdcmPortImagS08
              ┣・TdcmPortImagU16
              ┗・TdcmPortImagS16
```

```
・DICOMViewer/
  ┣・DICOMViewer.dpr       ･･･ プロジェクトファイル
  ┣・Main.pas / Main.fmx   ･･･ ドラッグ＆ドロップ・画像・タグ一覧表
  ┣・_DATA/                ･･･ サンプル DICOM ファイル（CR/DX）
  ┣・--------/_SCREENSHOT/ ･･･ スクリーンショット
  ┗・_LIBRARY/LUXOPHIA/    ･･･ ライブラリリポジトリの git-subtree コピー
     ┣・LUX/               ･･･ 基本ユーティリティ（Clamp・TSearchBM・数学型）
     ┗・LUX.DICOM/         ･･･ DICOM パーサ：TdcmFile/TdcmData・VR/タグ辞書
```

## 4. 使い方

| 操作 | 結果 |
|---|---|
| `.dcm` ファイルをウィンドウへドラッグ＆ドロップ | ファイルが解析され、両タブが更新される |
| **Image** タブ | VOI ウィンドウを適用した *Pixel Data* のグレースケール表示 |
| **Data** タブ | 全データ要素の一覧：No. / Grup / Elem / OriVR / ExpVR / Size / Data / Desc |

サンプルファイルは `_DATA/` にあります。

## 5. ビルド

* **IDE**：RAD Studio / Delphi（FireMonkey アプリケーション、プロジェクト形式 20.4）。
* **プラットフォーム**：`DICOMViewer.dproj` では Win32 と Win64 が有効。
* **依存関係**：同梱の `_LIBRARY` ソースのみで、外部 DLL は不要。

`DICOMViewer.dproj` を開き、プラットフォームを選択してビルドしてください。

## 6. 参考文献

1. [DICOM Standard](https://www.dicomstandard.org/)
2. [DICOM PS3.5 §7.1 *Data Elements*](https://dicom.nema.org/medical/dicom/current/output/html/part05.html#sect_7.1)（要素構造、明示的／暗黙的 VR）
3. [DICOM PS3.3 §C.7.6.3 *Image Pixel Module*](https://dicom.nema.org/medical/dicom/current/output/html/part03.html#sect_C.7.6.3)
4. [DICOM PS3.3 §C.11.2 *VOI LUT Module*](https://dicom.nema.org/medical/dicom/current/output/html/part03.html#sect_C.11.2)（ウィンドウ中心／幅）
5. Wikipedia: [*DICOM*](https://ja.wikipedia.org/wiki/DICOM)

## 💖 [Embarcadero](https://www.embarcadero.com/jp/) [**Delphi**](https://www.embarcadero.com/jp/products/delphi)
ネイティブなクロスプラットフォームアプリを開発するための統合開発環境（ＩＤＥ）。
### Free Download: [**Delphi** Community Edition](https://www.embarcadero.com/jp/products/delphi/starter)
