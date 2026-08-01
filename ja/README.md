# DICOMViewer

[English](../README.md) | [日本語](README.md)

医用画像フォーマット **DICOM** を表示する Delphi／FireMonkey 製サンプルアプリケーション。全面書き直しされた [LUX.DICOM](https://github.com/LUXOPHIA/LUX.DICOM) ライブラリの上に構築されており、JPEG ロスレス（Process 14）はライブラリの純 Pascal コーデックで復号され、ビット抽出・リスケール・ウィンドウ・MONOCHROME1 反転は 1 本のルックアップテーブルに畳み込まれ、3000×3000 のフレームは `Map` と走査線ポインタでビットマップへ転送される — 900 万回の `SetPixel` ではなく、表引き 1 パスである。

![Screenshot of DICOMViewer](../--------/_SCREENSHOT/DICOMViewer.png)

## 利用ライブラリ

* [**LUX.DICOM**](https://github.com/LUXOPHIA/LUX.DICOM) ：DICOM 医用画像フォーマットを読み書きするためのライブラリ。

## 1. 概要

* `*.dcm` ファイルはドラッグ＆ドロップ・**Open...** ボタン・第 1 コマンドライン引数のいずれでも開ける。
* **Image** タブは DICOM の線形ウィンドウ（PS3.3 C.11.2.1.2）でフレームを描画する。Window Center／Width はタグにあればそれを使い、欠落・多値・不正な値は実測 min/max へ退避するため、どのファイルでも表示が例外死しない。調整は **WC**／**WW** スライダー、または画像上の右ボタンドラッグ（横 = 幅、縦 = 中心）で行い、**Reset** で既定ウィンドウへ戻る。多フレームファイルではフレーム送りが現れる。
* **Data** タブは DICOMLoader と同じ再帰タグツリーを表示する。キーワードは生成辞書から引かれ、ISO 2022 IR 87 のテキストも復号される。
* コーデック未登録の転送構文は例外ではなくヘッダ行に理由が表示され、タグは全て閲覧できる。

## 2. ビルド

Win64 のみ：

```
msbuild DICOMViewer.dproj /t:Build /p:Config=Release /p:Platform=Win64
```

ライブラリのソースは [LUX.DICOM](https://github.com/LUXOPHIA/LUX.DICOM) リポジトリの git subtree として `_LIBRARY/LUXOPHIA/LUX.DICOM` に取り込まれている。更新は `git subtree pull --squash` で行う。

## 3. サンプルデータ

`_DATA/` には JIRA 日本標準テスト画像 8 ファイルが含まれる。8 ファイル全てが表示できる。JPEG ロスレスはライブラリのコーデックで復号され、非圧縮版と全 9,000,000 画素が一致することをライブラリ側の `dcmCmp` が検証している。

## 4. 参考文献

1. NEMA, [*DICOM PS3.3 — Information Object Definitions*](https://dicom.nema.org/medical/dicom/current/output/html/part03.html), §C.11.2 VOI LUT Module.
2. NEMA, [*DICOM PS3.5 — Data Structures and Encoding*](https://dicom.nema.org/medical/dicom/current/output/html/part05.html).
3. ITU-T, [*Recommendation T.81*](https://www.itu.int/rec/T-REC-T.81), Annex H, Lossless mode of operation.
4. NEMA, [*DICOM Standard — Current Edition*](https://www.dicomstandard.org/current).

## 💖 [Embarcadero](https://www.embarcadero.com/jp/) [**Delphi**](https://www.embarcadero.com/jp/products/delphi)
ネイティブなクロスプラットフォームアプリを開発するための統合開発環境（ＩＤＥ）。
### Free Download: [**Delphi** Community Edition](https://www.embarcadero.com/jp/products/delphi/starter)