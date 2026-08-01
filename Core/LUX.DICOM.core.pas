unit LUX.DICOM.core;

interface //#################################################################### ■

uses System.SysUtils;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 T Y P E 】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 R E C O R D 】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmTag

     ///// データ要素のタグ（グループ番号＋要素番号）
     ///// ・比較は必ず Key（Grup 上位）で行う。メモリ上の 32bit 直読みは
     ///// 　リトルエンディアンでは Elem が上位に来てしまい、順序が壊れるため。

     TdcmTag = packed record
     private
       ///// アクセス
       function GetKey :Cardinal; inline;
       function GetIsPrivate :Boolean; inline;
       function GetIsGroupLen :Boolean; inline;
       function GetIsDelimit :Boolean; inline;
     public
       Grup :Word;   // グループ番号
       Elem :Word;   // 要素番号
       /////
       constructor Create( const Grup_,Elem_:Word );
       ///// プロパティ
       property Key        :Cardinal read GetKey       ;   // ソートキー＝( Grup shl 16 ) or Elem
       property IsPrivate  :Boolean  read GetIsPrivate ;   // 私的タグ（グループ番号が奇数）
       property IsGroupLen :Boolean  read GetIsGroupLen;   // グループ長要素（Elem = 0000）
       property IsDelimit  :Boolean  read GetIsDelimit ;   // 区切りタグ（Grup = FFFE）
       ///// 演算子
       class operator Equal( const A_,B_:TdcmTag ) :Boolean;
       class operator NotEqual( const A_,B_:TdcmTag ) :Boolean;
       class operator LessThan( const A_,B_:TdcmTag ) :Boolean;
       class operator LessThanOrEqual( const A_,B_:TdcmTag ) :Boolean;
       class operator GreaterThan( const A_,B_:TdcmTag ) :Boolean;
       class operator GreaterThanOrEqual( const A_,B_:TdcmTag ) :Boolean;
       ///// メソッド
       function ToString :String;   // '(0008,0018)' 形式
     end;

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 C L A S S 】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% EdcmError

     ///// ライブラリ唯一の例外型
     ///// ・パース位置が分かる場合は Pos にファイル内バイト位置を持つ（不明は -1）。

     EdcmError = class( Exception )
     private
       _Pos :Int64;
     public
       constructor Create( const Message_:String; const Pos_:Int64 = -1 );
       ///// プロパティ
       property Pos :Int64 read _Pos;
     end;

//const //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 C O N S T A N T 】

//var //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 V A R I A B L E 】

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 R O U T I N E 】

procedure CheckDCM( const OK_:Boolean; const Message_:String; const Pos_:Int64 = -1 );

implementation //############################################################### ■

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 R E C O R D 】

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmTag

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//////////////////////////////////////////////////////////////////////// アクセス

function TdcmTag.GetKey :Cardinal;
begin
     Result := ( Cardinal( Grup ) shl 16 ) or Elem;
end;

function TdcmTag.GetIsPrivate :Boolean;
begin
     Result := Odd( Grup );
end;

function TdcmTag.GetIsGroupLen :Boolean;
begin
     Result := ( Elem = $0000 );
end;

function TdcmTag.GetIsDelimit :Boolean;
begin
     Result := ( Grup = $FFFE );
end;

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmTag.Create( const Grup_,Elem_:Word );
begin
     Grup := Grup_;
     Elem := Elem_;
end;

//////////////////////////////////////////////////////////////////////// 演算子

class operator TdcmTag.Equal( const A_,B_:TdcmTag ) :Boolean;
begin
     Result := A_.Key = B_.Key;
end;

class operator TdcmTag.NotEqual( const A_,B_:TdcmTag ) :Boolean;
begin
     Result := A_.Key <> B_.Key;
end;

class operator TdcmTag.LessThan( const A_,B_:TdcmTag ) :Boolean;
begin
     Result := A_.Key < B_.Key;
end;

class operator TdcmTag.LessThanOrEqual( const A_,B_:TdcmTag ) :Boolean;
begin
     Result := A_.Key <= B_.Key;
end;

class operator TdcmTag.GreaterThan( const A_,B_:TdcmTag ) :Boolean;
begin
     Result := A_.Key > B_.Key;
end;

class operator TdcmTag.GreaterThanOrEqual( const A_,B_:TdcmTag ) :Boolean;
begin
     Result := A_.Key >= B_.Key;
end;

//////////////////////////////////////////////////////////////////////// メソッド

function TdcmTag.ToString :String;
begin
     Result := Format( '(%.4X,%.4X)', [ Grup, Elem ] );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 C L A S S 】

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% EdcmError

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor EdcmError.Create( const Message_:String; const Pos_:Int64 = -1 );
begin
     _Pos := Pos_;

     if Pos_ < 0 then inherited Create( '【DICOM】' + Message_ )
                 else inherited Create( '【DICOM】' + Message_ + '（位置: ' + Pos_.ToString + '）' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 R O U T I N E 】

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% CheckDCM

procedure CheckDCM( const OK_:Boolean; const Message_:String; const Pos_:Int64 = -1 );
begin
     if not OK_ then raise EdcmError.Create( Message_, Pos_ );
end;

end. //######################################################################### ■
