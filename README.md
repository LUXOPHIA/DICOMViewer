# DICOMViewer

[English](README.md) | [日本語](ja/README.md)

A minimal viewer for the DICOM medical image format, written in Delphi (FireMonkey). Drop a `.dcm` file onto the window to render its grayscale image with the embedded window center/width applied, and to inspect every data element of the file in a tag table. Parsing is done by the [LUX.DICOM](https://github.com/LUXOPHIA/LUX.DICOM) library.

![Screenshot](--------/_SCREENSHOT/DICOMViewer.png)

## 利用ライブラリ

* [**LUX**](https://github.com/LUXOPHIA/LUX) ：Base library of vectors, matrices and other core mathematics.
* [**LUX.DICOM**](https://github.com/LUXOPHIA/LUX.DICOM) ：Library for reading the DICOM medical image format.

## 1. Overview

* **DICOM file parsing**: the 128-byte preamble and the `DICM` prefix are verified, then all data elements are read sequentially into a tag-indexed dictionary (`TdcmFile`).
* **Explicit and implicit VR**: the value representation (VR) field is probed against the VR dictionary; if no valid VR name is found, the element is read as implicit VR [2].
* **Undefined-length elements**: elements with length `0xFFFFFFFF` are resolved by a Boyer–Moore search (`TSearchBM<Word>`) for the *Sequence Delimitation Item* `(FFFE,E0DD)`.
* **Image display**: the *Pixel Data* element `(7FE0,0010)` is interpreted using the Image Pixel Module attributes [3] — *Photometric Interpretation*, *Rows*, *Columns*, *Bits Allocated*, *Bits Stored*, *High Bit*, *Pixel Representation* — supporting uncompressed 8/16-bit, unsigned/signed grayscale frames.
* **Windowing**: *Window Center* `(0028,1050)` and *Window Width* `(0028,1051)` are applied as a linear VOI transform [4].
* **Data element table**: every element is listed with its group/element number, original VR, explicit VR, byte size, decoded value text, and the standard description of the tag.

## 2. Technical Background

### 2.1 Data Element Structure

A DICOM file is a stream of data elements, each tagged by a (group, element) pair of 16-bit numbers [2]. `TdcmData.ReadStream` reads the tag, then attempts to read a 2-character VR name. If the name is not in the VR dictionary (`TdcmBookVR`), the file position is rewound and the element is treated as implicit VR, whose length is a 4-byte field. For explicit VRs, short VRs carry a 2-byte length while long VRs (`OB`, `OW`, `SQ`, …) skip a 2-byte reserved block and carry a 4-byte length.

### 2.2 Pixel Value Extraction

Stored pixel values occupy *Bits Stored* ($n$) bits placed with their most significant bit at *High Bit* ($h$) inside a container of *Bits Allocated* ($N$) bits. `TdcmPortImag*.GetValues` extracts the value with a shift pair that also discards the unused bits:

```math
p \;=\; \bigl( v \ll (N-1-h) \bigr) \gg (N-n) \tag{1}
```

where $v$ is the raw container value and $p$ the extracted pixel value. For the signed port classes (`TdcmPortImagS08`, `TdcmPortImagS16`, selected when *Pixel Representation* `(0028,0103)` is 1) the shifts operate on a signed type, so the sign of two's-complement values is preserved.

### 2.3 VOI Windowing

The form maps each extracted pixel value $p$ to a display gray level $g \in [0,1]$ using *Window Center* $c$ and *Window Width* $w$ as a linear value-of-interest (VOI) transform [4]:

```math
g \;=\; \operatorname{clamp}\!\left( \frac{p - \left(c - \tfrac{w}{2}\right)}{w},\; 0,\; 1 \right) \tag{2}
```

The gray level is written identically to the R, G, and B channels of the FireMonkey bitmap. Note that the *Rescale Slope/Intercept* transform `(0028,1053)/(0028,1052)` is not applied; the window operates directly on stored values.

## 3. Architecture

```
[Ownership]
・TForm1 (Main.pas)                  ･･･ FMX GUI: TabControl → Image/StringGrid
  ┗・_DICOM :TdcmFile               ･･･ TObjectDictionary<TdcmTag,TdcmData>
     ┗・TdcmData                    ･･･ 1..N, values owned by the dictionary
        ┣・_Tag :TdcmTag
        ┣・_ExpVR :TKindVR
        ┣・_Buff :TBytes
        ┗・typed accessor :IdcmPort ･･･ lazily created from RecVR or 7FE0,0010

[Inheritance]
・IdcmPort
  ┗・TdcmPort<T>
     ┣・TdcmPortAE … TdcmPortUT    ･･･ one class per VR
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
  ┣・DICOMViewer.dpr       ･･･ project file
  ┣・Main.pas / Main.fmx   ･･･ main form: drag & drop, windowed image, tag grid
  ┣・_DATA/                ･･･ sample DICOM files (CR/DX)
  ┣・--------/_SCREENSHOT/ ･･･ screenshot
  ┗・_LIBRARY/LUXOPHIA/    ･･･ git-subtree copies of library repositories
     ┣・LUX/               ･･･ base utilities (Clamp, TSearchBM, math types)
     ┗・LUX.DICOM/         ･･･ DICOM parser: TdcmFile/TdcmData, VR/tag dicts
```

## 4. Usage

| Action | Result |
|---|---|
| Drag & drop a `.dcm` file onto the window | The file is parsed; both tabs are refreshed |
| **Image** tab | Grayscale rendering of *Pixel Data* with the VOI window applied |
| **Data** tab | Table of all data elements: No. / Grup / Elem / OriVR / ExpVR / Size / Data / Desc |

Sample files are provided in `_DATA/`.

## 5. Building

* **IDE**: RAD Studio / Delphi (FireMonkey application, project format 20.4).
* **Platforms**: Win32 and Win64 are enabled in `DICOMViewer.dproj`.
* **Dependencies**: none beyond the bundled `_LIBRARY` sources; no external DLLs are required.

Open `DICOMViewer.dproj`, select a platform, and build.

## 6. References

1. [DICOM Standard](https://www.dicomstandard.org/)
2. [DICOM PS3.5 §7.1 *Data Elements*](https://dicom.nema.org/medical/dicom/current/output/html/part05.html#sect_7.1) (element structure, explicit/implicit VR)
3. [DICOM PS3.3 §C.7.6.3 *Image Pixel Module*](https://dicom.nema.org/medical/dicom/current/output/html/part03.html#sect_C.7.6.3)
4. [DICOM PS3.3 §C.11.2 *VOI LUT Module*](https://dicom.nema.org/medical/dicom/current/output/html/part03.html#sect_C.11.2) (window center/width)
5. Wikipedia: [*DICOM*](https://en.wikipedia.org/wiki/DICOM)

## 💖 [Embarcadero](https://www.embarcadero.com/) [**Delphi**](https://www.embarcadero.com/products/delphi)
Integrated Development Environment (IDE) for Creating Native Cross-Platform Apps.
### Free Download: [**Delphi** Community Edition](https://www.embarcadero.com/products/delphi/starter)
