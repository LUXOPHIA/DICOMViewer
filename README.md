# LUX.DICOM

[English](README.md) | [日本語](ja/README.md)

A Delphi library for reading and writing the medical-image format DICOM (*Digital Imaging and Communications in Medicine*). A file is parsed — driven by its transfer syntax — into a tag-ordered dataset that recurses through nested sequences and decomposes encapsulated Pixel Data into fragments; a data dictionary of some 5,300 standard elements, generated mechanically from the official PS3.6 DocBook source, supplies keywords and value representations; and a pixel pipeline folds bit extraction, rescale, windowing and photometric inversion into a single lookup table. A pure-Pascal JPEG Lossless (Process 14) decoder is registered as a plug-in codec. The previous implementation is preserved on the `main_old` branch.

## 1. Overview

The library follows the architecture shared by the de-facto standard implementations (DCMTK, fo-dicom, GDCM, dcm4che): the dataset is a sorted map from tags to elements, the parser is separated from the model, codecs are registered per transfer syntax, and the data dictionary is data rather than code.

| Unit | Contents |
|:---|:---|
| `LUX.DICOM.pas` | the facade `TdcmFile` and type aliases — applications need only this unit |
| `Core/LUX.DICOM.core.pas` | `TdcmTag`, `EdcmError`, `CheckDCM` |
| `Core/LUX.DICOM.VRs.pas` | the 34 value representations as a strategy table `_VRInfo_` |
| `Core/LUX.DICOM.Syntax.pas` | `TdcmTranSyn` — transfer-syntax resolution with graceful degradation |
| `Core/LUX.DICOM.Charse.pas` | Specific Character Set decoding, including ISO 2022 IR 87 |
| `Dictio/` | dictionary runtime plus the **generated** `LUX.DICOM.Tags.pas` / `LUX.DICOM.UIDs.pas` |
| `Model/LUX.DICOM.Datset.pas` | `TdcmDataset` and the element classes `TdcmValue` / `TdcmSequence` / `TdcmFragments` |
| `IO/` | `TdcmSource`, the parser `TdcmReader`, the serializer `TdcmWriter` |
| `Codecs/` | codec registry; JPEG common layer and the SOF3 lossless decoder |
| `Pixels/LUX.DICOM.Pixels.pas` | frame-wise lazy decoding and the LUT pipeline |
| `Stream/LUX.DICOM.Stream.FMX.pas` | the only unit that depends on FMX — `TBitmap` conversion |
| `Tools/` | `dcmTest`, `dcmDump`, `dcmPix`, `dcmCmp`, `dcmRT`, `DictGen` (console) |

Design rules: values are kept as raw bytes together with the original VR name and value length, so unknown tags, unknown VRs and UN elements survive a read–write round trip unmodified (PS3.5 §6.2.2 forbids byte-swapping them [1]); the single exception type `EdcmError` is raised through the gate `CheckDCM`; in the default *lenient* mode, violations of the standard are recorded as `Issues` and parsing continues, while *strict* mode raises instead.

## 2. Encoding and data model

### 2.1 Tags and dataset order

A tag is a pair of 16-bit group and element numbers, compared by the 32-bit key

$$\mathrm{key}(g,e) = 2^{16} g + e \qquad \text{(1)}$$

never by reading the packed record as a little-endian 32-bit integer, which would transpose the halves. `TdcmDataset` maintains its element list in ascending key order — DICOM encodes datasets in that order, so parsing appends in O(1), out-of-order files fall back to binary-search insertion, and lookup is O(log n).

### 2.2 Element structure

The transfer syntax read from `(0002,0010)` — File Meta itself is always Explicit VR Little Endian — determines the layout *tag | VR? | length | value* of every subsequent element. In explicit VR the width of the length field follows from the VR:

$$L = \begin{cases} 16\ \text{bit} & \text{short form: AE, AS, AT, CS, DA, DS, DT, FD, FL, IS, LO, LT, PN, SH, SL, SS, ST, TM, UI, UL, US} \\\\ 32\ \text{bit, after 2 reserved bytes} & \text{long form: OB, OD, OF, OL, OV, OW, SQ, SV, UC, UN, UR, UT, UV} \\\\ 32\ \text{bit} & \text{implicit VR} \end{cases} \qquad \text{(2)}$$

An unrecognized two-uppercase-letter VR name is read in long form and preserved as UN — every VR added to the standard since 2015 (OD, OL, OV, UC, UR, SV, UV) is long-form, and this rule is the forward-compatible default. Implicit VRs are resolved through the dictionary hook, so an implicit defined-length SQ is still recursed into.

### 2.3 Undefined lengths, sequences and fragments

A length of `$FFFFFFFF` is resolved by *linear* parsing — items `(FFFE,E000)` and delimiters `(FFFE,E00D)` / `(FFFE,E0DD)` are consumed in stream order, sequences recurse into child datasets, and undefined-length UN values are read as Implicit VR Little Endian per CP-246. (The previous implementation searched the whole stream for the delimiter pattern with Boyer–Moore, which misfires on nested sequences and on compressed pixel data, and froze for minutes on the sample files; the linear parser completes each of them in under 0.4 s.) Encapsulated Pixel Data is decomposed into the Basic Offset Table and its fragments.

### 2.4 Character sets

Text VRs are decoded per `(0008,0005)`. For ISO 2022 IR 87 the escape sequences designate JIS X 0208, whose two-byte codes are converted arithmetically to Shift-JIS and decoded via CP932; delimiter-driven state reset is applied only while a single-byte set is designated, since a kanji byte may coincide with a delimiter code (e.g. the first byte of 秋 is `=`). ISO_IR 100–166, ISO_IR 13 and ISO_IR 192 (UTF-8) are also handled.

## 3. Pixel pipeline

The stored value is extracted from a 16-bit pattern by two shifts whose casts are essential in Delphi, because `shl`/`shr` promote to 32-bit `Integer` and `shr` is a logical shift:

$$w = \mathrm{Word}(v \ll (15 - \mathrm{HighBit})), \qquad s = \begin{cases} \mathrm{SmallInt}(w)  /  2^{16-\mathrm{BitsStored}} & \text{signed} \\\\ w \gg (16-\mathrm{BitsStored}) & \text{unsigned} \end{cases} \qquad \text{(3)}$$

which both discards overlay bits above `HighBit` and sign-extends correctly. Rescale and the linear window of PS3.3 C.11.2.1.2 [3] — with defense against absent or multi-valued Window Center/Width and against widths below 1, falling back to the measured min/max — are folded, together with the MONOCHROME1 inversion, into one 65,536-entry (or 256-entry) lookup table, so converting a frame is a single table-lookup pass.

## 4. JPEG Lossless decoder

`Codecs/LUX.DICOM.Codecs.JPEG.Lossless.pas` implements ITU-T T.81 SOF3 [4] in pure Pascal and registers itself for the transfer syntaxes 1.2.840.10008.1.2.4.57 and .70. Canonical Huffman tables are decoded through an 8-bit prefix table with sequential extension beyond 8 bits; byte stuffing (`FF 00`) and restart markers are handled in the bit reader. The difference category SSSS yields the prediction error

$$d = \begin{cases} 0 & S = 0 \\\\ 32768 & S = 16 \\\\ b - 2^{S} + 1 & b < 2^{S-1} \quad (\text{MSB} = 0 \Rightarrow \text{negative}) \\\\ b & \text{otherwise} \end{cases} \qquad \text{(4)}$$

added modulo $2^{16}$ to the prediction — selection values 0–7 are all implemented, with the initial prediction $2^{P-P_t-1}$ at the first sample and after restarts. Correctness is verified mechanically: the JIRA sample set contains the same images in both JPEG Lossless SV1 and uncompressed form, and `dcmCmp` confirms that all 9,000,000 pixels of every pair decode identically.

## 5. Data dictionary generation

`Tools/DictGen` parses the DocBook XML source `part06.xml`, which NEMA publishes directly [2][5] — there is no official GitHub repository and no official reference implementation — and emits `LUX.DICOM.Tags.pas` (≈5,300 entries from Tables 6-1, 7-1, 8-1, 9-1) and `LUX.DICOM.UIDs.pas` (≈470 entries from Table A-1) as pure `const` arrays. Wildcard tags such as `(60xx,3000)` are normalized to a key/mask pair matched by

$$(\mathrm{key}(g,e) \wedge \mathrm{mask}) = \mathrm{key}_0 \qquad \text{(5)}$$

The standard is revised about five times a year; following a revision is: download the current `part06.xml`, run `DictGen part06.xml ..\..\Dictio`, rebuild, and re-run the regression tools. Should a new VR appear in the tables, the generator lists it and exits with a warning — adding one enum value and one `_VRInfo_` row is the only manual step.

## 6. Usage

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
          Writeln( F.Syntax.Name );                             // e.g. 'JPEG Lossless (Process 14, SV1)'
          Writeln( F.Body.GetText( $0010, $0010 ) );            // PatientName — ISO 2022 IR 87 decoded

          for E in F.Body do Writeln( E.Tag.ToString, ' ', E.VRText, ' ', E.Text( F.Body.Charse ) );

          if F.HasPixels then
          begin
               F.Pixels.DefaultWindow( 0, WC, WW );             // tag-supplied window, else measured

               { F.Pixels.FrameRaw(0) + F.Pixels.BuildLUT8(WC,WW), or
                 LUX.DICOM.Stream.FMX.DcmFrameToBitmap( F.Pixels, 0, WC, WW, Bitmap ) }
          end;
     finally
          F.Free;
     end;
end;
```

## 7. Verification

| Tool | Checks |
|:---|:---|
| `dcmTest` | 88 unit tests: tag order, VR table round trip, syntax resolution, dictionary and wildcard lookup, ISO 2022 decoding, synthetic implicit / nested-SQ / truncated streams, bit extraction (3) |
| `dcmDump` | tag-tree dump of the 8 JIRA samples — all parse with zero issues |
| `dcmPix` | windowed BMP rendering of uncompressed samples |
| `dcmCmp` | JPEG ↔ uncompressed pixel equality, 4 pairs × 9 M pixels, all identical |
| `dcmRT` | read → write → read: every element of all 8 samples, including fragments, byte-identical |

## 8. References

1. NEMA, [*DICOM PS3.5 — Data Structures and Encoding*](https://dicom.nema.org/medical/dicom/current/output/html/part05.html), §6.2 Value Representation, §7.1 Data Elements, §7.5 Nesting of Data Sets, §A.4 Encapsulation.
2. NEMA, [*DICOM PS3.6 — Data Dictionary*](https://dicom.nema.org/medical/dicom/current/output/html/part06.html), and its [DocBook source](https://dicom.nema.org/medical/dicom/current/source/docbook/part06/part06.xml).
3. NEMA, [*DICOM PS3.3 — Information Object Definitions*](https://dicom.nema.org/medical/dicom/current/output/html/part03.html), §C.7.6.3 Image Pixel Module, §C.11.2 VOI LUT Module.
4. ITU-T, [*Recommendation T.81 — Digital compression and coding of continuous-tone still images*](https://www.itu.int/rec/T-REC-T.81), Annex H, Lossless mode of operation.
5. NEMA, [*DICOM Standard — Current Edition*](https://www.dicomstandard.org/current).

## 💖 [Embarcadero](https://www.embarcadero.com/) [**Delphi**](https://www.embarcadero.com/products/delphi)
Integrated Development Environment (IDE) for Creating Native Cross-Platform Apps.
### Free Download: [**Delphi** Community Edition](https://www.embarcadero.com/products/delphi/starter)
