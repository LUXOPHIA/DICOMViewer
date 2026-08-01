unit LUX.DICOM.VRs;

interface //#################################################################### ■

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 T Y P E 】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmVRKind

     ///// 値表現（Value Representation）
     ///// ・vrNone は「Implicit VR で未解決」を表す内部値。
     ///// ・新 VR が規格に追加されたら、列挙値と _VRInfo_ の 1 行を足すだけでよい。

     TdcmVRKind = ( vrNone,
                    vrAE, vrAS, vrAT, vrCS, vrDA, vrDS, vrDT,
                    vrFD, vrFL, vrIS, vrLO, vrLT,
                    vrOB, vrOD, vrOF, vrOL, vrOV, vrOW,
                    vrPN, vrSH, vrSL, vrSQ, vrSS, vrST, vrSV,
                    vrTM, vrUC, vrUI, vrUL, vrUN, vrUR, vrUS, vrUT, vrUV );

     TdcmVRKinds = set of TdcmVRKind;

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 R E C O R D 】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmVRInfo

     ///// VR ごとの性質表（dcm4che の VR enum に倣ったストラテジ表）

     TdcmVRInfo = record
       Name   :String;    // VR 名（2 文字。vrNone は '--'）
       IsLong :Boolean;   // Explicit 形式で「予約 2B ＋ 32bit 長」か
       Pad    :Byte;      // パディングバイト（文字列 $20 ／ バイナリと UI は $00）
       Swap   :Byte;      // エンディアン交換の単位バイト数（1 = 交換不要）
       IsStr  :Boolean;   // 値を文字列として解釈する
       IsTxt  :Boolean;   // SpecificCharacterSet の影響を受ける
       HasVM  :Boolean;   // '\' を多値区切りとして扱う
     end;

const //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 C O N S T A N T 】

      //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% _VRInfo_

      _VRInfo_ : array [ TdcmVRKind ] of TdcmVRInfo = (
        ( Name:'--'; IsLong:True ; Pad:$00; Swap:1; IsStr:False; IsTxt:False; HasVM:False ),   // vrNone
        ( Name:'AE'; IsLong:False; Pad:$20; Swap:1; IsStr:True ; IsTxt:False; HasVM:True  ),
        ( Name:'AS'; IsLong:False; Pad:$20; Swap:1; IsStr:True ; IsTxt:False; HasVM:True  ),
        ( Name:'AT'; IsLong:False; Pad:$00; Swap:2; IsStr:False; IsTxt:False; HasVM:False ),
        ( Name:'CS'; IsLong:False; Pad:$20; Swap:1; IsStr:True ; IsTxt:False; HasVM:True  ),
        ( Name:'DA'; IsLong:False; Pad:$20; Swap:1; IsStr:True ; IsTxt:False; HasVM:True  ),
        ( Name:'DS'; IsLong:False; Pad:$20; Swap:1; IsStr:True ; IsTxt:False; HasVM:True  ),
        ( Name:'DT'; IsLong:False; Pad:$20; Swap:1; IsStr:True ; IsTxt:False; HasVM:True  ),
        ( Name:'FD'; IsLong:False; Pad:$00; Swap:8; IsStr:False; IsTxt:False; HasVM:False ),
        ( Name:'FL'; IsLong:False; Pad:$00; Swap:4; IsStr:False; IsTxt:False; HasVM:False ),
        ( Name:'IS'; IsLong:False; Pad:$20; Swap:1; IsStr:True ; IsTxt:False; HasVM:True  ),
        ( Name:'LO'; IsLong:False; Pad:$20; Swap:1; IsStr:True ; IsTxt:True ; HasVM:True  ),
        ( Name:'LT'; IsLong:False; Pad:$20; Swap:1; IsStr:True ; IsTxt:True ; HasVM:False ),
        ( Name:'OB'; IsLong:True ; Pad:$00; Swap:1; IsStr:False; IsTxt:False; HasVM:False ),
        ( Name:'OD'; IsLong:True ; Pad:$00; Swap:8; IsStr:False; IsTxt:False; HasVM:False ),
        ( Name:'OF'; IsLong:True ; Pad:$00; Swap:4; IsStr:False; IsTxt:False; HasVM:False ),
        ( Name:'OL'; IsLong:True ; Pad:$00; Swap:4; IsStr:False; IsTxt:False; HasVM:False ),
        ( Name:'OV'; IsLong:True ; Pad:$00; Swap:8; IsStr:False; IsTxt:False; HasVM:False ),
        ( Name:'OW'; IsLong:True ; Pad:$00; Swap:2; IsStr:False; IsTxt:False; HasVM:False ),
        ( Name:'PN'; IsLong:False; Pad:$20; Swap:1; IsStr:True ; IsTxt:True ; HasVM:True  ),
        ( Name:'SH'; IsLong:False; Pad:$20; Swap:1; IsStr:True ; IsTxt:True ; HasVM:True  ),
        ( Name:'SL'; IsLong:False; Pad:$00; Swap:4; IsStr:False; IsTxt:False; HasVM:False ),
        ( Name:'SQ'; IsLong:True ; Pad:$00; Swap:1; IsStr:False; IsTxt:False; HasVM:False ),
        ( Name:'SS'; IsLong:False; Pad:$00; Swap:2; IsStr:False; IsTxt:False; HasVM:False ),
        ( Name:'ST'; IsLong:False; Pad:$20; Swap:1; IsStr:True ; IsTxt:True ; HasVM:False ),
        ( Name:'SV'; IsLong:True ; Pad:$00; Swap:8; IsStr:False; IsTxt:False; HasVM:False ),
        ( Name:'TM'; IsLong:False; Pad:$20; Swap:1; IsStr:True ; IsTxt:False; HasVM:True  ),
        ( Name:'UC'; IsLong:True ; Pad:$20; Swap:1; IsStr:True ; IsTxt:True ; HasVM:True  ),
        ( Name:'UI'; IsLong:False; Pad:$00; Swap:1; IsStr:True ; IsTxt:False; HasVM:True  ),
        ( Name:'UL'; IsLong:False; Pad:$00; Swap:4; IsStr:False; IsTxt:False; HasVM:False ),
        ( Name:'UN'; IsLong:True ; Pad:$00; Swap:1; IsStr:False; IsTxt:False; HasVM:False ),
        ( Name:'UR'; IsLong:True ; Pad:$20; Swap:1; IsStr:True ; IsTxt:False; HasVM:False ),
        ( Name:'US'; IsLong:False; Pad:$00; Swap:2; IsStr:False; IsTxt:False; HasVM:False ),
        ( Name:'UT'; IsLong:True ; Pad:$20; Swap:1; IsStr:True ; IsTxt:True ; HasVM:False ),
        ( Name:'UV'; IsLong:True ; Pad:$00; Swap:8; IsStr:False; IsTxt:False; HasVM:False ) );

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 R O U T I N E 】

function VRKindOf( const A_,B_:AnsiChar ) :TdcmVRKind;      // 未知の VR 名は vrNone
function VRName( const VR_:TdcmVRKind ) :String;

implementation //############################################################### ■

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 V A R I A B L E 】

var
   ///// VR 名（2 バイト）→ 列挙値の即引き表（initialization で構築）
   _NameVR_ : array [ Word ] of TdcmVRKind;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 R O U T I N E 】

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% VRKindOf

function VRKindOf( const A_,B_:AnsiChar ) :TdcmVRKind;
begin
     Result := _NameVR_[ ( Word( Ord( A_ ) ) shl 8 ) or Ord( B_ ) ];
end;

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% VRName

function VRName( const VR_:TdcmVRKind ) :String;
begin
     Result := _VRInfo_[ VR_ ].Name;
end;

//########################################################################################

procedure InitNameVR;
var
   K :TdcmVRKind;
   N :String;
begin
     for K := Low( TdcmVRKind ) to High( TdcmVRKind ) do
     begin
          if K = vrNone then Continue;

          N := _VRInfo_[ K ].Name;

          _NameVR_[ ( Word( Ord( N[1] ) ) shl 8 ) or Ord( N[2] ) ] := K;
     end;
end;

initialization //=============================================================== ■

     InitNameVR;

end. //######################################################################### ■
