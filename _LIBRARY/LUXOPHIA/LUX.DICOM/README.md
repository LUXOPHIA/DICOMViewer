# LUX.DICOM

[English](README.md) | [日本語](ja/README.md)

A Delphi library for handling the medical-image format DICOM (*Digital Imaging and Communications in Medicine*). A file is parsed into a dictionary of data elements keyed by their (group, element) tag; a compiled-in registry of roughly 4,200 standard elements supplies each tag's keyword, permitted value representations and description; and typed *port* objects decode an element's raw bytes into Delphi values — including Pixel Data, which is exposed as a 2D integer image.

## 利用ライブラリ

* [**LUX**](https://github.com/LUXOPHIA/LUX) ：Base library providing `THex4` and `TSearchBM<T>`.

## 1. Overview

The library is organized as a core, two registries and a family of ports.

| Unit | Contents |
|:---|:---|
| `LUX.DICOM.pas` | `TdcmHead`, `TdcmData`, `TdcmFile`, `IdcmPort` / `TdcmPort<T>` |
| `LUX.DICOM.VRs.pas` | `TKindVR` / `TKindsVR`, `TdcmVR`, `TdcmBookVR`, the global `_BookVR_` |
| `LUX.DICOM.Tags.pas` | `TdcmTag`, `TdcmTagSort`, `TdcmElem`, `TdcmGrup`, `TdcmBookTag`, the global `_BookTag_` |
| `LUX.DICOM.Ports.pas` | value records: `TdcmDate`, `TdcmTime`, `TdcmZone`, `TdcmDateTime`, `TKindPixel` |
| `Tags/` | 71 units, one per element group, populating the data-element registry |
| `Ports/` | the concrete port classes (§3) |

Reading a file is a single call:

- `TdcmFile.LoadFromFile` reads the 128-byte preamble plus the 4-character prefix into `TdcmHead`, asserts that the prefix is `DICM`, then loops `TdcmData.ReadStream` until the end of the stream, storing every element under its tag. `TdcmFile` is a `TObjectDictionary<TdcmTag,TdcmData>` created with `doOwnsValues`, so the file owns its elements.
- `TdcmData` keeps the value bytes in `Buff` and the *explicit* VR read from the stream in `ExpVR`. `OriVR` is the set of VRs the registry allows for the tag, and `RecVR` resolves the effective one: the explicit VR if present, otherwise the registry's VR when the tag admits exactly one.
- `TdcmData.Port` lazily instantiates the port class matching `RecVR` — or, for Pixel Data `(7FE0,0010)`, the image port selected from `BitsAllocated` and `PixelRepresentation`, pre-loaded with `Rows`, `Columns`, `BitsStored`, `HighBit` and `PhotometricInterpretation`.

Scope, as implemented: the parser walks a flat element stream. Sequences are captured as raw byte blocks rather than recursed into (`TdcmPortSQ` is a `TdcmPort1D<TBytes>`), and pixel data is taken as stored — no decompression of encapsulated transfer syntaxes, and no window/rescale transformation. Pixel depths of 8 and 16 bits are supported, signed or unsigned; anything else fails an assertion. Ports write back into `Buff` through their setters, but `TdcmFile` has no save method.

## 2. Encoding and data model

### 2.1 Tags and the data-element registry

A data element is identified by a 16-bit group number and a 16-bit element number (`TdcmTag`, a packed record of two `THex4`). Sorting is by the concatenated 32-bit key, which is what `TdcmTagSort.Compare` evaluates:

```math
\mathrm{key}(g,e) = 2^{16} g + e
\tag{1}
```

The registry `_BookTag_` is a two-level dictionary — `TdcmBookTag` keyed by group → `TdcmGrup` keyed by element → `TdcmElem` — built at unit initialization by the 71 units under `Tags/`, each adding its group's entries as (code, keyword, VR set, description) tuples taken from the Registry of DICOM Data Elements [2]. `TdcmGrup` additionally indexes its elements by keyword, and `TdcmData.Desc` returns `'?'` for a tag that is not in the registry.

### 2.2 Element structure and value length

Each element is encoded as *tag | VR? | length | value*. `TdcmBookVR.ReadStream` reads two bytes and accepts them as an explicit VR only if they match a registered name; otherwise it rewinds the stream and reports `vr00`, the implicit-VR case. The library thus detects explicit versus implicit VR *per element* [1]. The width of the length field then follows from the VR's `Size` field:

```math
L =
\begin{cases}
16\ \text{bit} & \mathrm{Size} = 2:\ \text{AE, AS, AT, CS, DA, DS, DT, FL, FD, IS, LO, LT,}\\
& \qquad\qquad\quad\ \text{PN, SH, SL, SS, ST, TM, UI, UL, US} \\
32\ \text{bit, after a 2-byte reserved field} & \mathrm{Size} = 6:\ \text{OB, OD, OF, OL, OW, SQ, UC, UN, UR, UT} \\
32\ \text{bit} & \text{implicit VR } (\mathrm{vr00})
\end{cases}
\tag{2}
```

A value always occupies an even number of bytes, so `TdcmData.SetSize` pads the buffer:

```math
n' = 2 \left\lceil \frac{n}{2} \right\rceil
\tag{3}
```

A length of `$FFFFFFFF` denotes undefined length. `FindSize` then locates the Sequence Delimitation Item `(FFFE,E0DD)` followed by a zero length — the four consecutive 16-bit words `FFFE E0DD 0000 0000` — by Boyer–Moore search [4] over the stream read as words, and takes the span up to and including that marker as the element's length [1].

### 2.3 Value representations and ports

`_BookVR_` registers the 31 value representations of the DICOM VR table [1] with their two-character name, length-field width and description. A `TdcmData` builds the port class matching its `RecVR`; the ports are generic over the Delphi type they present.

| Port family | Value representations | Presented value |
|:---|:---|:---|
| `TdcmPort<T>` (`Ports.Reco`) | AT, FL, FD, SL, SS, UL, US | one fixed-size binary value, `Move`d out of `Buff` |
| `TdcmPortText<T>` (`Ports.Text`) | AE, AS, CS, DA, DS, DT, IS, LO, LT, PN, SH, ST, TM, UC, UI, UR, UT | text parsed into `String`, `Integer`, `Double`, `TdcmDate`, `TdcmTime`, `TdcmDateTime` |
| `TdcmPort1D<T>` (`Ports.D1`) | OB, OD, OF, OL, OW, SQ, UN | array of `T` at stride `SizeOf(T)`, with `CountN = Size div SizeOf(T)` |
| `TdcmPort2D<T>` (`Ports.D2`) | — | adds `CountX` / `CountY` and 2D indexing |
| `TdcmPortImag<T>` (`Ports.D2.Imag`) | Pixel Data `(7FE0,0010)` | `Pixels[x,y] :Integer`, with the bit extraction of §2.5 |

Every port also exposes `Text`, a human-readable rendering of its value; `TdcmPort1D.GetText` prints at most five items and then `,...`. Date and time values are parsed with regular expressions matching the DICOM formats: `TdcmDate` accepts `YYYY[MM[DD]]`, `TdcmTime` accepts `HH[MM[SS[.FFFFFF]]]`, `TdcmZone` accepts `±HHMM`, and `TdcmDateTime` combines the three.

### 2.4 Pixel addressing

A 2D port stores `CountX` = *Columns* and `CountY` = *Rows*, and indexes the buffer in row-major order:

```math
i(x,y) = C_x\,y + x, \qquad N = C_x C_y
\tag{4}
```

### 2.5 Pixel bit extraction

Pixel Data packs each sample into `BitsAllocated` bits, of which only `BitsStored` bits ($b$) carry the value, ending at bit `HighBit` ($h$) [3]. With $N = 8\,\mathrm{sizeof}(T)$ the accessor recovers the sample $v$ from the stored word $w$ by two shifts:

```math
v = \bigl( w \ll (N-1-h) \bigr) \gg (N-b)
\tag{5}
```

The left shift discards every bit above the high bit; the right shift brings the $b$-bit field down to bit 0. Writing applies the inverse:

```math
w = \bigl( v \ll (N-b) \bigr) \gg (N-1-h)
\tag{6}
```

`BitsAllocated` selects the storage width — 8 or 16 bits — and `PixelRepresentation` selects between the unsigned (`TdcmPortImagU08` / `TdcmPortImagU16`) and signed (`TdcmPortImagS08` / `TdcmPortImagS16`) port classes [3]. `PhotometricInterpretation` is decoded into `TKindPixel`, covering MONOCHROME1, MONOCHROME2, PALETTE COLOR, RGB, YBR_FULL, YBR_FULL_422, YBR_PARTIAL_422, YBR_PARTIAL_420, YBR_ICT and YBR_RCT [3].

## 3. Architecture

### 3.1 Core and ports

```
//// LoadFromFile — the parsing chain, from the file down to the pixels

・TdcmFile.LoadFromFile                          ･･･ reads the whole file
  ┗・TdcmHead                                   ･･･ preamble + prefix
     ┗・Pref = 'DICM'                           ･･･ checked; else not DICOM
        ┗・TdcmData.ReadStream                  ･･･ × N  loop to stream end
           ┗・RecVR                             ･･･ explicit VR, else registry
              ┗・Port :IdcmPort                 ･･･ port class matching RecVR
                 ┗・(7FE0,0010)                 ･･･ Pixel Data: image port

//// Ownership — one loaded file, its elements and their ports

・TdcmFile :TObjectDictionary<TdcmTag,TdcmData>  ･･･ one loaded file
  ┗・TdcmData                                   ･･･ × N  one data element
     ┗・IdcmPort                                ･･･ typed view onto Buff

//// Interfaces — each one extends the interface above it

・IdcmPort
  ┗・IdcmPort1D
     ┗・IdcmPort2D
        ┗・IdcmPortImag

//// Inheritance — the port classes

・TdcmPort<T>                                    ･･･ Value :T, Text :String
  ┣・TdcmPortAT / FL / FD / SL / SS / UL / US   ･･･ one fixed-size binary value
  ┣・TdcmPortText<T>                            ･･･ text-encoded value
  ┃  ┣・TdcmPortString                         ･･･ AE/AS/CS/LO/…/UR/UT
  ┃  ┗・TdcmPortDA / DS / DT / IS / TM         ･･･ TdcmDate / … / TdcmTime
  ┗・TdcmPort1D<T>                              ･･･ Values[i], Texts[i], CountN
     ┣・TdcmPortOB / OD / OF / OL / OW / UN / SQ
     ┗・TdcmPort2D<T>                           ･･･ Values2D[x,y], CountX/Y
        ┗・TdcmPortImag<T>                      ･･･ KindP, BitsN/I, Pixels[x,y]
           ┗・TdcmPortImagU08 / S08 / U16 / S16 ･･･ bit extraction per (5)/(6)
```

### 3.2 Registries (global, built at initialization)

```
//// _BookVR_ — the value-representation registry

・_BookVR_ :TdcmBookVR                         ･･･ the VR registry
  ┣・TdcmVR                                   ･･･ × 31  Name, Size, Desc
  ┗・NameToKind :TDictionary<TNameVR,TKindVR> ･･･ two-char name → TKindVR

//// _BookTag_ — the data-element registry

・_BookTag_ :TdcmBookTag                       ･･･ the data-element registry
  ┗・TdcmGrup                                 ･･･ one per group
     ┗・TdcmElem                              ･･･ one per element
```

### 3.3 Files

```
・LUX.DICOM/
  ┣・LUX.DICOM.pas                  ･･･ file / element / port core
  ┣・LUX.DICOM.VRs.pas              ･･･ VRs and their registry (_BookVR_)
  ┣・LUX.DICOM.Tags.pas             ･･･ tags and their registry (_BookTag_)
  ┣・Tags/                          ･･･ one unit per group: G0000 … GFFFE
  ┣・LUX.DICOM.Ports.pas            ･･･ TdcmDate/Time/DateTime, TKindPixel
  ┗・Ports/
     ┣・LUX.DICOM.Ports.Reco.pas    ･･･ fixed-size binary VRs
     ┣・LUX.DICOM.Ports.Text.pas    ･･･ text VRs
     ┣・LUX.DICOM.Ports.D1.pas      ･･･ 1D array VRs
     ┣・LUX.DICOM.Ports.D2.pas      ･･･ 2D array base
     ┗・LUX.DICOM.Ports.D2.Imag.pas ･･･ pixel data ports
```

The library depends on the LUX base library for `THex4` and `TSearchBM<T>`.

## 4. Usage

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

          for T in F.TagsToArray do                        // tags in ascending key order (1)
          begin
               D := F[ T ];

               Writeln( T.ToString, ' ', D.RecVR.ToString, ' ',
                        D.Desc, ' = ', D.Port.Text );
          end;

          //// one element, decoded

          Writeln( TdcmPortString( F.Data[$0010,$0010].Port ).Value );   // Patient's Name
          Writeln( TdcmPortDA    ( F.Data[$0008,$0020].Port ).Value.ToString );  // Study Date

          //// the image

          I := F.Data[$7FE0,$0010].Port as IdcmPortImag;   // Pixel Data

          for Y := 0 to I.CountY-1 do
          begin
               for X := 0 to I.CountX-1 do
               begin
                    { use I.Pixels[ X, Y ] — a sample already shifted per (5) }
               end;
          end;
     finally
          F.Free;                                          // frees every TdcmData it owns
     end;
end;
```

## 5. References

1. NEMA, [*DICOM PS3.5 — Data Structures and Encoding*](https://dicom.nema.org/medical/dicom/current/output/html/part05.html), §6.2 Value Representation, §7.1 Data Elements, §7.5 Nesting of Data Sets.
2. NEMA, [*DICOM PS3.6 — Data Dictionary*](https://dicom.nema.org/medical/dicom/current/output/html/part06.html), §6 Registry of DICOM Data Elements.
3. NEMA, [*DICOM PS3.3 — Information Object Definitions*](https://dicom.nema.org/medical/dicom/current/output/html/part03.html), §C.7.6.3 Image Pixel Module.
4. R. S. Boyer and J. S. Moore, [*A Fast String Searching Algorithm*](https://doi.org/10.1145/359842.359859), Communications of the ACM, 20(10), 762–772, 1977.
5. NEMA, [*DICOM Standard — Current Edition*](https://www.dicomstandard.org/current).

## 💖 [Embarcadero](https://www.embarcadero.com/) [**Delphi**](https://www.embarcadero.com/products/delphi)
Integrated Development Environment (IDE) for Creating Native Cross-Platform Apps.
### Free Download: [**Delphi** Community Edition](https://www.embarcadero.com/products/delphi/starter)
