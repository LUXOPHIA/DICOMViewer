unit LUX.DICOM.Codecs;

interface //#################################################################### ■

///// 転送構文ごとのコーデック登録制（レジストリ）
///// ・コアは非圧縮のみを扱い、圧縮コーデックは各ユニットが initialization で自己登録する
///// 　（uses に加えるだけで有効になる。fo-dicom の TranscoderManager と同じ考え方）。
///// ・未登録の転送構文はデータセットのタグアクセスには影響せず、
///// 　ピクセルのデコード時にのみ EdcmError になる（縮退動作）。

uses System.SysUtils, System.Generics.Collections,
     LUX.DICOM.core;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 T Y P E 】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 R E C O R D 】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmFrameInfo

     ///// デコードに必要な画像記述子（Image Pixel Module の要約）

     TdcmFrameInfo = record
       CountX  :Integer;   // Columns (0028,0011)
       CountY  :Integer;   // Rows (0028,0010)
       BitsA   :Integer;   // BitsAllocated (0028,0100)
       BitsS   :Integer;   // BitsStored (0028,0101)
       HighB   :Integer;   // HighBit (0028,0102)
       Signed  :Boolean;   // PixelRepresentation (0028,0103) = 1
       Samples :Integer;   // SamplesPerPixel (0028,0002)
       Planar  :Integer;   // PlanarConfiguration (0028,0006)
     end;

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 C L A S S 】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmCodec

     ///// 圧縮コーデックの抽象基底（1 転送構文 = 1 実装）

     TdcmCodec = class abstract
     public
       ///// メソッド
       function Decode( const Frag_:TBytes; const Info_:TdcmFrameInfo ) :TBytes; virtual; abstract;
       // 入力: 1 フレーム分の圧縮バイト列（フラグメント連結済み）
       // 出力: リトルエンディアンの生ピクセル（BitsAllocated 単位で詰めたもの）
     end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 R O U T I N E 】

procedure RegisterCodec( const UID_:String; const Codec_:TdcmCodec );   // 登録先が所有権を持つ
function FindCodec( const UID_:String ) :TdcmCodec;                     // 未登録は nil

implementation //############################################################### ■

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 V A R I A B L E 】

var
   _Codecs :TObjectDictionary<String,TdcmCodec>;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 R O U T I N E 】

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% RegisterCodec

procedure RegisterCodec( const UID_:String; const Codec_:TdcmCodec );
begin
     _Codecs.AddOrSetValue( UID_, Codec_ );
end;

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% FindCodec

function FindCodec( const UID_:String ) :TdcmCodec;
begin
     if not _Codecs.TryGetValue( UID_, Result ) then Result := nil;
end;

initialization //=============================================================== ■

     _Codecs := TObjectDictionary<String,TdcmCodec>.Create( [ doOwnsValues ] );

finalization //================================================================= ■

     _Codecs.Free;

end. //######################################################################### ■
