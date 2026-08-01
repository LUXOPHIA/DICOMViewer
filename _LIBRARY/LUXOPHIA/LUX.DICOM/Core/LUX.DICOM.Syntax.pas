unit LUX.DICOM.Syntax;

interface //#################################################################### ■

uses System.SysUtils;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 T Y P E 】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 R E C O R D 】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmTranSyn

     ///// 転送構文（Transfer Syntax）
     ///// ・(0002,0010) の UID から From で生成し、以後の全デコードはここから導出する。
     ///// ・未知の UID は「Explicit VR LE ＋ カプセル化」と推定する。2000 年以降に登録された
     ///// 　転送構文は例外なくこの形式であり、データセット構造は必ず読める（縮退動作）。
     ///// 　ピクセルはコーデック未登録エラーになるだけで、タグアクセスは全て可能。

     TdcmTranSyn = record
     public
       UID       :String;    // 転送構文 UID（末尾の NUL／空白は除去済み）
       IsExplic  :Boolean;   // Explicit VR か
       IsBigEnd  :Boolean;   // ビッグエンディアンか（retired 1.2.840.10008.1.2.2 のみ）
       IsEncaps  :Boolean;   // Pixel Data がカプセル化（フラグメント形式）か
       IsDeflate :Boolean;   // メタ情報以降が Deflate 圧縮されているか
       IsKnown   :Boolean;   // 既知の UID か（False なら上記は推定値）
       /////
       class function From( const UID_:String ) :TdcmTranSyn; static;
       ///// メソッド
       function Name :String;   // 表示名
     end;

const //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 C O N S T A N T 】

      //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 転送構文 UID

      UID_ImplicitVRLittleEndian           = '1.2.840.10008.1.2';
      UID_ExplicitVRLittleEndian           = '1.2.840.10008.1.2.1';
      UID_DeflatedExplicitVRLittleEndian   = '1.2.840.10008.1.2.1.99';
      UID_ExplicitVRBigEndian              = '1.2.840.10008.1.2.2';        // retired
      UID_RLELossless                      = '1.2.840.10008.1.2.5';
      UID_JPEGBaseline8Bit                 = '1.2.840.10008.1.2.4.50';
      UID_JPEGExtended12Bit                = '1.2.840.10008.1.2.4.51';
      UID_JPEGLossless                     = '1.2.840.10008.1.2.4.57';     // P14
      UID_JPEGLosslessSV1                  = '1.2.840.10008.1.2.4.70';     // P14 SV1
      UID_JPEGLSLossless                   = '1.2.840.10008.1.2.4.80';
      UID_JPEGLSNearLossless               = '1.2.840.10008.1.2.4.81';
      UID_JPEG2000Lossless                 = '1.2.840.10008.1.2.4.90';
      UID_JPEG2000                         = '1.2.840.10008.1.2.4.91';
      UID_HTJ2KLossless                    = '1.2.840.10008.1.2.4.201';
      UID_HTJ2KLosslessRPCL                = '1.2.840.10008.1.2.4.202';
      UID_HTJ2K                            = '1.2.840.10008.1.2.4.203';

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 R O U T I N E 】

implementation //############################################################### ■

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 R E C O R D 】

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmTranSyn

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

class function TdcmTranSyn.From( const UID_:String ) :TdcmTranSyn;
var
   U :String;
begin
     U := UID_.TrimRight( [ ' ', #0 ] );

     with Result do
     begin
          UID       := U;
          IsExplic  := True;
          IsBigEnd  := False;
          IsEncaps  := False;
          IsDeflate := False;
          IsKnown   := True;

          if U = UID_ImplicitVRLittleEndian         then IsExplic  := False
                                                    else
          if U = UID_ExplicitVRLittleEndian         then { 既定値のまま }
                                                    else
          if U = UID_DeflatedExplicitVRLittleEndian then IsDeflate := True
                                                    else
          if U = UID_ExplicitVRBigEndian            then IsBigEnd  := True
                                                    else
          begin
               ///// 上記以外（JPEG 系・RLE・将来の転送構文）は全てカプセル化形式

               IsEncaps := True;

               IsKnown := ( U = UID_RLELossless          )
                       or ( U = UID_JPEGBaseline8Bit     )
                       or ( U = UID_JPEGExtended12Bit    )
                       or ( U = UID_JPEGLossless         )
                       or ( U = UID_JPEGLosslessSV1      )
                       or ( U = UID_JPEGLSLossless       )
                       or ( U = UID_JPEGLSNearLossless   )
                       or ( U = UID_JPEG2000Lossless     )
                       or ( U = UID_JPEG2000             )
                       or ( U = UID_HTJ2KLossless        )
                       or ( U = UID_HTJ2KLosslessRPCL    )
                       or ( U = UID_HTJ2K                );
          end;
     end;
end;

//////////////////////////////////////////////////////////////////////// メソッド

function TdcmTranSyn.Name :String;
begin
     if UID = UID_ImplicitVRLittleEndian         then Result := 'Implicit VR Little Endian'           else
     if UID = UID_ExplicitVRLittleEndian         then Result := 'Explicit VR Little Endian'           else
     if UID = UID_DeflatedExplicitVRLittleEndian then Result := 'Deflated Explicit VR Little Endian'  else
     if UID = UID_ExplicitVRBigEndian            then Result := 'Explicit VR Big Endian (Retired)'    else
     if UID = UID_RLELossless                    then Result := 'RLE Lossless'                        else
     if UID = UID_JPEGBaseline8Bit               then Result := 'JPEG Baseline (Process 1)'           else
     if UID = UID_JPEGExtended12Bit              then Result := 'JPEG Extended (Process 2 & 4)'       else
     if UID = UID_JPEGLossless                   then Result := 'JPEG Lossless (Process 14)'          else
     if UID = UID_JPEGLosslessSV1                then Result := 'JPEG Lossless (Process 14, SV1)'     else
     if UID = UID_JPEGLSLossless                 then Result := 'JPEG-LS Lossless'                    else
     if UID = UID_JPEGLSNearLossless             then Result := 'JPEG-LS Near-Lossless'               else
     if UID = UID_JPEG2000Lossless               then Result := 'JPEG 2000 (Lossless Only)'           else
     if UID = UID_JPEG2000                       then Result := 'JPEG 2000'                           else
     if UID = UID_HTJ2KLossless                  then Result := 'HTJ2K (Lossless Only)'               else
     if UID = UID_HTJ2KLosslessRPCL              then Result := 'HTJ2K (Lossless Only, RPCL)'         else
     if UID = UID_HTJ2K                          then Result := 'HTJ2K'                               else
                                                      Result := '不明な転送構文（' + UID + '）';
end;

end. //######################################################################### ■
