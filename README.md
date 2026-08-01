# DICOMViewer

[English](README.md) | [日本語](ja/README.md)

A Delphi/FireMonkey sample application that displays the medical-image format **DICOM**. It is built on the rewritten [LUX.DICOM](https://github.com/LUXOPHIA/LUX.DICOM) library: JPEG Lossless (Process 14) files are decoded by the library's pure-Pascal codec, bit extraction / rescale / windowing / MONOCHROME1 inversion are folded into a single lookup table, and the 3000×3000 frame is transferred to the bitmap through `Map` and scanline pointers — a table-lookup pass instead of nine million `SetPixel` calls.

![Screenshot of DICOMViewer](--------/_SCREENSHOT/DICOMViewer.png)

## 利用ライブラリ

* [**LUX.DICOM**](https://github.com/LUXOPHIA/LUX.DICOM) ：Library for reading and writing the DICOM medical image format.

## 1. Overview

* Open a `*.dcm` file by drag & drop, by the **Open...** button, or by passing its path as the first command-line argument.
* The **Image** tab renders the frame with the DICOM linear window (PS3.3 C.11.2.1.2). Window Center/Width come from the tags when present — absent, multi-valued or degenerate values fall back to the measured min/max, so no file crashes the display. Adjust with the **WC**/**WW** sliders or by dragging on the image with the right mouse button (horizontal = width, vertical = center); **Reset** returns to the default window. Multi-frame files get a frame spinner.
* The **Data** tab shows the same recursive tag tree as DICOMLoader, with keywords from the generated dictionary and ISO 2022 IR 87 text decoded.
* A file whose transfer syntax has no registered codec is reported in the header line instead of raising — its tags remain fully browsable.

## 2. Building

Win64 only:

```
msbuild DICOMViewer.dproj /t:Build /p:Config=Release /p:Platform=Win64
```

The library sources are embedded under `_LIBRARY/LUXOPHIA/LUX.DICOM` as a git subtree of the [LUX.DICOM](https://github.com/LUXOPHIA/LUX.DICOM) repository; update them with `git subtree pull --squash`.

## 3. Sample data

`_DATA/` contains the eight JIRA Japanese standard test images. All eight display: the JPEG Lossless files decode through the library codec, and `dcmCmp` in the library verifies that they match their uncompressed counterparts in all 9,000,000 pixels.

## 4. References

1. NEMA, [*DICOM PS3.3 — Information Object Definitions*](https://dicom.nema.org/medical/dicom/current/output/html/part03.html), §C.11.2 VOI LUT Module.
2. NEMA, [*DICOM PS3.5 — Data Structures and Encoding*](https://dicom.nema.org/medical/dicom/current/output/html/part05.html).
3. ITU-T, [*Recommendation T.81*](https://www.itu.int/rec/T-REC-T.81), Annex H, Lossless mode of operation.
4. NEMA, [*DICOM Standard — Current Edition*](https://www.dicomstandard.org/current).

## 💖 [Embarcadero](https://www.embarcadero.com/) [**Delphi**](https://www.embarcadero.com/products/delphi)
Integrated Development Environment (IDE) for Creating Native Cross-Platform Apps.
### Free Download: [**Delphi** Community Edition](https://www.embarcadero.com/products/delphi/starter)