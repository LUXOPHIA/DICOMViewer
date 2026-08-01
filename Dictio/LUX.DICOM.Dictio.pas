unit LUX.DICOM.Dictio;

interface //#################################################################### ■

///// データ辞書ランタイム
///// ・生成物（LUX.DICOM.Tags / LUX.DICOM.UIDs）は const 配列のみを持ち、
///// 　検索・ワイルドカード解決・特殊タグの扱いは本ユニットに集約する。
///// ・完全一致はハッシュ表 O(1)、マスク付き（50xx／60xx 等の数十件）はミス時のみ線形照合。
///// ・本ユニットを uses に加えると、Implicit VR の解決フック（_ResolveVR_）が
///// 　initialization で辞書実装に差し替わる。

uses System.SysUtils, System.Generics.Collections,
     LUX.DICOM.core,
     LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 T Y P E 】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmDictEntry

     ///// タグ辞書の 1 項目（生成物 _DictTable_ の要素型）

     TdcmDictEntry = record
       Key     :Cardinal;      // 'x' を 0 に正規化した ( Grup shl 16 ) or Elem
       Mask    :Cardinal;      // ワイルドカード桁を 0 にしたマスク（通常 $FFFFFFFF）
       VR1     :TdcmVRKind;    // 第 1 候補
       VR2     :TdcmVRKind;    // 第 2 候補（US or SS 等。無しは vrNone）
       VM      :String;        // '1', '1-n', '2-2n' … 文字列のまま保持
       Keyword :String;
       Name    :String;
       Retired :Boolean;
     end;

     PdcmDictEntry = ^TdcmDictEntry;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmUIDEntry

     ///// UID 辞書の 1 項目（生成物 _UIDTable_ の要素型）

     TdcmUIDEntry = record
       UID     :String;
       Name    :String;
       Keyword :String;
       Kind    :String;        // 'Transfer Syntax', 'SOP Class' …
       Retired :Boolean;
     end;

     PdcmUIDEntry = ^TdcmUIDEntry;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 R O U T I N E 】

function DictFind( const Tag_:TdcmTag ) :PdcmDictEntry;         // 未登録は nil
function DictKeyword( const Tag_:TdcmTag ) :String;             // 未登録の私的タグ等は合成名
function DictName( const Tag_:TdcmTag ) :String;
function DictVR( const Tag_:TdcmTag ) :TdcmVRKind;              // 第 1 候補（未登録は vrNone）
function DictVersion :String;                                   // 生成元の規格版数

function UIDFind( const UID_:String ) :PdcmUIDEntry;            // 未登録は nil
function UIDName( const UID_:String ) :String;                  // 未登録は UID をそのまま返す

implementation //############################################################### ■

uses LUX.DICOM.Tags,
     LUX.DICOM.UIDs,
     LUX.DICOM.Datset;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 V A R I A B L E 】

var
   _Exact  :TDictionary<Cardinal,Integer>;   // 完全一致（Mask = $FFFFFFFF）の索引
   _Masked :TArray<Integer>;                 // マスク付き項目の添字リスト
   _UIDMap :TDictionary<String,Integer>;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 R O U T I N E 】

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% DictFind

function DictFind( const Tag_:TdcmTag ) :PdcmDictEntry;
var
   I :Integer;
begin
     if _Exact.TryGetValue( Tag_.Key, I ) then Exit( @_DictTable_[ I ] );

     for I in _Masked do
       if ( Tag_.Key and _DictTable_[ I ].Mask ) = _DictTable_[ I ].Key then Exit( @_DictTable_[ I ] );

     Result := nil;
end;

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% DictKeyword

function DictKeyword( const Tag_:TdcmTag ) :String;
var
   E :PdcmDictEntry;
begin
     E := DictFind( Tag_ );

     if Assigned( E ) and ( E.Keyword <> '' ) then Exit( E.Keyword );

     if Tag_.IsGroupLen then Exit( 'GroupLength' );

     if Tag_.IsPrivate and ( Tag_.Elem >= $0010 ) and ( Tag_.Elem <= $00FF ) then Exit( 'PrivateCreator' );

     if Tag_.IsPrivate then Exit( Format( 'Private_%.4X_%.4X', [ Tag_.Grup, Tag_.Elem ] ) );

     Result := '';
end;

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% DictName

function DictName( const Tag_:TdcmTag ) :String;
var
   E :PdcmDictEntry;
begin
     E := DictFind( Tag_ );

     if Assigned( E ) then Result := E.Name
                      else Result := DictKeyword( Tag_ );
end;

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% DictVR

function DictVR( const Tag_:TdcmTag ) :TdcmVRKind;
var
   E :PdcmDictEntry;
begin
     E := DictFind( Tag_ );

     if Assigned( E ) then Exit( E.VR1 );   // US/SS 両候補は第 1 候補（実解決は Pixels 層が行う）

     if Tag_.IsGroupLen then Exit( vrUL );

     if Tag_.IsPrivate and ( Tag_.Elem >= $0010 ) and ( Tag_.Elem <= $00FF ) then Exit( vrLO );

     Result := vrNone;
end;

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% DictVersion

function DictVersion :String;
begin
     Result := _DictVersion_;
end;

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% UIDFind

function UIDFind( const UID_:String ) :PdcmUIDEntry;
var
   I :Integer;
begin
     if _UIDMap.TryGetValue( UID_.TrimRight( [ ' ', #0 ] ), I ) then Result := @_UIDTable_[ I ]
                                                                else Result := nil;
end;

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% UIDName

function UIDName( const UID_:String ) :String;
var
   E :PdcmUIDEntry;
begin
     E := UIDFind( UID_ );

     if Assigned( E ) then Result := E.Name
                      else Result := UID_;
end;

//########################################################################################

procedure InitDict;
var
   I  :Integer;
   Ms :TList<Integer>;
begin
     _Exact  := TDictionary<Cardinal,Integer>.Create( Length( _DictTable_ ) );
     _UIDMap := TDictionary<String,Integer>.Create( Length( _UIDTable_ ) );

     Ms := TList<Integer>.Create;

     try
          for I := 0 to High( _DictTable_ ) do
          begin
               if _DictTable_[ I ].Mask = $FFFFFFFF then _Exact.AddOrSetValue( _DictTable_[ I ].Key, I )
                                                    else Ms.Add( I );
          end;

          _Masked := Ms.ToArray;
     finally
          Ms.Free;
     end;

     for I := 0 to High( _UIDTable_ ) do _UIDMap.AddOrSetValue( _UIDTable_[ I ].UID, I );
end;

initialization //=============================================================== ■

     InitDict;

     _ResolveVR_ := DictVR;   // Implicit VR の解決フックを辞書実装へ差し替える

finalization //================================================================= ■

     _UIDMap.Free;
     _Exact .Free;

end. //######################################################################### ■
