unit LUX.DICOM.Tags;

interface //#################################################################### ■

uses System.Generics.Defaults, System.Generics.Collections,
     LUX, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     TdcmTagSort = class;
     TdcmElem    = class;
     TdcmGrup    = class;
     TdcmBookTag = class;

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmTag

     TdcmTag = packed record
     private
     public
       Grup :THex4;
       Elem :THex4;
       /////
       constructor Create( const Grup_,Elem_:THex4 );
       ///// 演算子
       class operator Equal( const A_,B_:TdcmTag ) :Boolean;
       class operator NotEqual( const A_,B_:TdcmTag ) :Boolean;
       ///// メソッド
       function ToString :String;
     end;

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmTagSort

     TdcmTagSort = class( TComparer<TdcmTag> )
     private
     protected
     public
       ///// メソッド
       function Compare(const Left_,Right_:TdcmTag ) :Integer; override;
     end;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmElem

     TdcmElem = class
     private
     protected
       _Grup  :TdcmGrup;
       _Code  :THex4;
       _Name  :AnsiString;
       _Kinds :TKindsVR;
       _Desc  :String;
     public
       constructor Create( const Grup_:TdcmGrup; const Code_:THex4; const Name_:AnsiString; const Kinds_:TKindsVR; const Desc_:String );
       ///// プロパティ
       property Grup  :TdcmGrup   read _Grup ;
       property Code  :THex4      read _Code ;
       property Name  :AnsiString read _Name ;
       property Kinds :TKindsVR   read _Kinds;
       property Desc  :String     read _Desc ;
     end;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup

     TdcmGrup = class( TObjectDictionary<THex4,TdcmElem> )
     private
     protected
       _Book       :TdcmBookTag;
       _Code       :THex4;
       _NameToElem :TDictionary<AnsiString,TdcmElem>;
       ///// アクセス
       function GetElem( const Name_:AnsiString ) :TdcmElem;
       ///// メソッド
       procedure Add( const Code_:THex4; const Name_:AnsiString; const Kind_:TKindsVR; const Desc_:String );
     public
       constructor Create( const Book_:TdcmBookTag; const Code_:THex4 );
       destructor Destroy; override;
       ///// プロパティ
       property Book                           :TdcmBookTag read   _Book;
       property Code                           :THex4       read   _Code;
       property Elem[ const Name_:AnsiString ] :TdcmElem    read GetElem;
     end;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmBookTag

     TdcmBookTag = class( TObjectDictionary<THex4,TdcmGrup> )
     private
     protected
       ///// アクセス
       function GetElem( const Tag_:TdcmTag ) :TdcmElem;
     public
       constructor Create;
       destructor Destroy; override;
       ///// プロパティ
       property Elem[ const Tag_:TdcmTag ] :TdcmElem read GetElem; default;
       ///// メソッド
       function Contains( const Tag_:TdcmTag ) :Boolean;
       function Find( const Tag_:TdcmTag ) :TdcmElem;
     end;

//const //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【定数】

var //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【変数】

    _BookTag_ :TdcmBookTag;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

implementation //############################################################### ■

uses LUX.DICOM.Tags.G0000,
     LUX.DICOM.Tags.G0002,
     LUX.DICOM.Tags.G0004,
     LUX.DICOM.Tags.G0008,
     LUX.DICOM.Tags.G0010,
     LUX.DICOM.Tags.G0012,
     LUX.DICOM.Tags.G0014,
     LUX.DICOM.Tags.G0018,
     LUX.DICOM.Tags.G0020,
     LUX.DICOM.Tags.G0022,
     LUX.DICOM.Tags.G0024,
     LUX.DICOM.Tags.G0028,
     LUX.DICOM.Tags.G0032,
     LUX.DICOM.Tags.G0038,
     LUX.DICOM.Tags.G003A,
     LUX.DICOM.Tags.G0040,
     LUX.DICOM.Tags.G0042,
     LUX.DICOM.Tags.G0044,
     LUX.DICOM.Tags.G0046,
     LUX.DICOM.Tags.G0048,
     LUX.DICOM.Tags.G0050,
     LUX.DICOM.Tags.G0052,
     LUX.DICOM.Tags.G0054,
     LUX.DICOM.Tags.G0060,
     LUX.DICOM.Tags.G0062,
     LUX.DICOM.Tags.G0064,
     LUX.DICOM.Tags.G0066,
     LUX.DICOM.Tags.G0068,
     LUX.DICOM.Tags.G0070,
     LUX.DICOM.Tags.G0072,
     LUX.DICOM.Tags.G0074,
     LUX.DICOM.Tags.G0076,
     LUX.DICOM.Tags.G0078,
     LUX.DICOM.Tags.G0080,
     LUX.DICOM.Tags.G0082,
     LUX.DICOM.Tags.G0088,
     LUX.DICOM.Tags.G0100,
     LUX.DICOM.Tags.G0400,
     LUX.DICOM.Tags.G1000,
     LUX.DICOM.Tags.G1010,
     LUX.DICOM.Tags.G2000,
     LUX.DICOM.Tags.G2010,
     LUX.DICOM.Tags.G2020,
     LUX.DICOM.Tags.G2030,
     LUX.DICOM.Tags.G2040,
     LUX.DICOM.Tags.G2050,
     LUX.DICOM.Tags.G2100,
     LUX.DICOM.Tags.G2110,
     LUX.DICOM.Tags.G2120,
     LUX.DICOM.Tags.G2130,
     LUX.DICOM.Tags.G2200,
     LUX.DICOM.Tags.G3002,
     LUX.DICOM.Tags.G3004,
     LUX.DICOM.Tags.G3006,
     LUX.DICOM.Tags.G3008,
     LUX.DICOM.Tags.G300A,
     LUX.DICOM.Tags.G300C,
     LUX.DICOM.Tags.G300E,
     LUX.DICOM.Tags.G4000,
     LUX.DICOM.Tags.G4008,
     LUX.DICOM.Tags.G4010,
     LUX.DICOM.Tags.G4FFE,
     LUX.DICOM.Tags.G50xx,
     LUX.DICOM.Tags.G5200,
     LUX.DICOM.Tags.G5400,
     LUX.DICOM.Tags.G5600,
     LUX.DICOM.Tags.G60xx,
     LUX.DICOM.Tags.G7Fxx,
     LUX.DICOM.Tags.GFFFA,
     LUX.DICOM.Tags.GFFFC,
     LUX.DICOM.Tags.GFFFE;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmTag

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmTag.Create( const Grup_,Elem_:THex4 );
begin
     Grup := Grup_;
     Elem := Elem_;
end;

///////////////////////////////////////////////////////////////////////// 演算子

class operator TdcmTag.Equal( const A_,B_:TdcmTag ) :Boolean;
begin
     Result := ( A_.Grup = B_.Grup ) and ( A_.Elem = B_.Elem );
end;

class operator TdcmTag.NotEqual( const A_,B_:TdcmTag ) :Boolean;
begin
     Result := ( A_.Grup <> B_.Grup ) or ( A_.Elem <> B_.Elem );
end;

/////////////////////////////////////////////////////////////////////// メソッド

function TdcmTag.ToString :String;
begin
     Result := '(' + Grup.ToString + ',' + Elem.ToString + ')';
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmTagSort

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

/////////////////////////////////////////////////////////////////////// メソッド

function TdcmTagSort.Compare( const Left_,Right_:TdcmTag ) :Integer;
begin
     Result := ( Left_ .Grup shl 16 or Left_ .Elem )
             - ( Right_.Grup shl 16 or Right_.Elem );
end;

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmElem

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmElem.Create( const Grup_:TdcmGrup; const Code_:THex4; const Name_:AnsiString; const Kinds_:TKindsVR; const Desc_:String );
begin
     inherited Create;

     _Grup  := Grup_ ;
     _Code  := Code_ ;
     _Name  := Name_ ;
     _Kinds := Kinds_;
     _Desc  := Desc_ ;
end;

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

/////////////////////////////////////////////////////////////////////// アクセス

function TdcmGrup.GetElem( const Name_:AnsiString ) :TdcmElem;
begin
     if _NameToElem.ContainsKey( Name_ ) then Result := _NameToElem[ Name_ ]
                                         else Result := nil;
end;

/////////////////////////////////////////////////////////////////////// メソッド

procedure TdcmGrup.Add( const Code_:THex4; const Name_:AnsiString; const Kind_:TKindsVR; const Desc_:String );
var
   E :TdcmElem;
begin
     E := TdcmElem.Create( Self, Code_, Name_, Kind_, Desc_ );

     inherited Add( Code_, E );

     if Name_ <> '' then _NameToElem.Add( Name_, E );
end;

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmGrup.Create( const Book_:TdcmBookTag; const Code_:THex4 );
begin
     inherited Create( [ doOwnsValues ] );

     _NameToElem := TDictionary<AnsiString,TdcmElem>.Create;

     _Book := Book_;
     _Code := Code_;

     _Book.Add( _Code, Self );
end;

destructor TdcmGrup.Destroy;
begin
     _NameToElem.Free;

     inherited;
end;

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmBookTag

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

/////////////////////////////////////////////////////////////////////// アクセス

function TdcmBookTag.GetElem( const Tag_:TdcmTag ) :TdcmElem;
begin
     with Tag_ do Result := Items[ Grup ].Items[ Elem ];
end;

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmBookTag.Create;
begin
     inherited Create( [ doOwnsValues ] );

     TdcmGrup0000.AddBook( Self );
     TdcmGrup0002.AddBook( Self );
     TdcmGrup0004.AddBook( Self );
     TdcmGrup0008.AddBook( Self );
     TdcmGrup0010.AddBook( Self );
     TdcmGrup0012.AddBook( Self );
     TdcmGrup0014.AddBook( Self );
     TdcmGrup0018.AddBook( Self );
     TdcmGrup0020.AddBook( Self );
     TdcmGrup0022.AddBook( Self );
     TdcmGrup0024.AddBook( Self );
     TdcmGrup0028.AddBook( Self );
     TdcmGrup0032.AddBook( Self );
     TdcmGrup0038.AddBook( Self );
     TdcmGrup003A.AddBook( Self );
     TdcmGrup0040.AddBook( Self );
     TdcmGrup0042.AddBook( Self );
     TdcmGrup0044.AddBook( Self );
     TdcmGrup0046.AddBook( Self );
     TdcmGrup0048.AddBook( Self );
     TdcmGrup0050.AddBook( Self );
     TdcmGrup0052.AddBook( Self );
     TdcmGrup0054.AddBook( Self );
     TdcmGrup0060.AddBook( Self );
     TdcmGrup0062.AddBook( Self );
     TdcmGrup0064.AddBook( Self );
     TdcmGrup0066.AddBook( Self );
     TdcmGrup0068.AddBook( Self );
     TdcmGrup0070.AddBook( Self );
     TdcmGrup0072.AddBook( Self );
     TdcmGrup0074.AddBook( Self );
     TdcmGrup0076.AddBook( Self );
     TdcmGrup0078.AddBook( Self );
     TdcmGrup0080.AddBook( Self );
     TdcmGrup0082.AddBook( Self );
     TdcmGrup0088.AddBook( Self );
     TdcmGrup0100.AddBook( Self );
     TdcmGrup0400.AddBook( Self );
     TdcmGrup1000.AddBook( Self );
     TdcmGrup1010.AddBook( Self );
     TdcmGrup2000.AddBook( Self );
     TdcmGrup2010.AddBook( Self );
     TdcmGrup2020.AddBook( Self );
     TdcmGrup2030.AddBook( Self );
     TdcmGrup2040.AddBook( Self );
     TdcmGrup2050.AddBook( Self );
     TdcmGrup2100.AddBook( Self );
     TdcmGrup2110.AddBook( Self );
     TdcmGrup2120.AddBook( Self );
     TdcmGrup2130.AddBook( Self );
     TdcmGrup2200.AddBook( Self );
     TdcmGrup3002.AddBook( Self );
     TdcmGrup3004.AddBook( Self );
     TdcmGrup3006.AddBook( Self );
     TdcmGrup3008.AddBook( Self );
     TdcmGrup300A.AddBook( Self );
     TdcmGrup300C.AddBook( Self );
     TdcmGrup300E.AddBook( Self );
     TdcmGrup4000.AddBook( Self );
     TdcmGrup4008.AddBook( Self );
     TdcmGrup4010.AddBook( Self );
     TdcmGrup4FFE.AddBook( Self );
     TdcmGrup50xx.AddBook( Self );
     TdcmGrup5200.AddBook( Self );
     TdcmGrup5400.AddBook( Self );
     TdcmGrup5600.AddBook( Self );
     TdcmGrup60xx.AddBook( Self );
     TdcmGrup7Fxx.AddBook( Self );
     TdcmGrupFFFA.AddBook( Self );
     TdcmGrupFFFC.AddBook( Self );
     TdcmGrupFFFE.AddBook( Self );
end;

destructor TdcmBookTag.Destroy;
begin

     inherited;
end;

/////////////////////////////////////////////////////////////////////// メソッド

function TdcmBookTag.Contains( const Tag_:TdcmTag ) :Boolean;
begin
     with Tag_ do Result := ContainsKey( Grup ) and Items[ Grup ].ContainsKey( Elem );
end;

function TdcmBookTag.Find( const Tag_:TdcmTag ) :TdcmElem;
begin
     if ContainsKey( Tag_.Grup ) then
     begin
          with Items[ Tag_.Grup ] do
          begin
               if ContainsKey( Tag_.Elem ) then Result := Items[ Tag_.Elem ]
                                           else Result := nil;
          end;
     end
     else Result := nil;
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

     _BookTag_ := TdcmBookTag.Create;

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

     _BookTag_.Free;

end. //######################################################################### ■
