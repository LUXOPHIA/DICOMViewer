unit LUX.DICOM.Tags;

interface //#################################################################### ■

uses System.Classes, System.SysUtils, System.Generics.Defaults, System.Generics.Collections,
     LUX, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     TdcmTagSort = class;
     TdcmElem    = class;
     TdcmGrup    = class;
     TdcmBookTag = class;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% THex4

     THex4 = type Word;

     HHex4 = record helper for THex4
     private
     public
       ///// メソッド
       function ToString :String;
     end;

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmTag

     TdcmTag = packed record
     private
     public
       Grup :THex4;
       Elem :THex4;
       /////
       constructor Create( const Grup_,Elem_:THex4 );
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
       _Code       :THex4;
       _NameToElem :TDictionary<AnsiString,TdcmElem>;
       ///// アクセス
       function GetBook :TdcmBookTag;
       function GetElem( const Name_:AnsiString ) :TdcmElem;
       ///// メソッド
       procedure Add( const Code_:THex4; const Name_:AnsiString; const Kind_:TKindsVR; const Desc_:String );
     public
       constructor Create( const Code_:THex4 );
       destructor Destroy; override;
       ///// プロパティ
       property Book                           :TdcmBookTag read GetBook;
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
     LUX.DICOM.Tags.G7FE0,
     LUX.DICOM.Tags.GFFFA,
     LUX.DICOM.Tags.GFFFC,
     LUX.DICOM.Tags.GFFFE;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% THex4

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

/////////////////////////////////////////////////////////////////////// メソッド

function HHex4.ToString :String;
begin
     Result := IntToHex( Self, 4 );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmTag

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmTag.Create( const Grup_,Elem_:THex4 );
begin
     Grup := Grup_;
     Elem := Elem_;
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

function TdcmGrup.GetBook :TdcmBookTag;
begin
     Result := _BookTag_;
end;

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

constructor TdcmGrup.Create( const Code_:THex4 );
begin
     inherited Create( [ doOwnsValues ] );

     _NameToElem := TDictionary<AnsiString,TdcmElem>.Create;

     _Code := Code_;
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

     Add( $0000, TdcmGrup0000.Create( $0000 ) );
     Add( $0002, TdcmGrup0002.Create( $0002 ) );
     Add( $0004, TdcmGrup0004.Create( $0004 ) );
     Add( $0008, TdcmGrup0008.Create( $0008 ) );
     Add( $0010, TdcmGrup0010.Create( $0010 ) );
     Add( $0012, TdcmGrup0012.Create( $0012 ) );
     Add( $0014, TdcmGrup0014.Create( $0014 ) );
     Add( $0018, TdcmGrup0018.Create( $0018 ) );
     Add( $0020, TdcmGrup0020.Create( $0020 ) );
     Add( $0022, TdcmGrup0022.Create( $0022 ) );
     Add( $0024, TdcmGrup0024.Create( $0024 ) );
     Add( $0028, TdcmGrup0028.Create( $0028 ) );
     Add( $0032, TdcmGrup0032.Create( $0032 ) );
     Add( $0038, TdcmGrup0038.Create( $0038 ) );
     Add( $003A, TdcmGrup003A.Create( $003A ) );
     Add( $0040, TdcmGrup0040.Create( $0040 ) );
     Add( $0042, TdcmGrup0042.Create( $0042 ) );
     Add( $0044, TdcmGrup0044.Create( $0044 ) );
     Add( $0046, TdcmGrup0046.Create( $0046 ) );
     Add( $0048, TdcmGrup0048.Create( $0048 ) );
     Add( $0050, TdcmGrup0050.Create( $0050 ) );
     Add( $0052, TdcmGrup0052.Create( $0052 ) );
     Add( $0054, TdcmGrup0054.Create( $0054 ) );
     Add( $0060, TdcmGrup0060.Create( $0060 ) );
     Add( $0062, TdcmGrup0062.Create( $0062 ) );
     Add( $0064, TdcmGrup0064.Create( $0064 ) );
     Add( $0066, TdcmGrup0066.Create( $0066 ) );
     Add( $0068, TdcmGrup0068.Create( $0068 ) );
     Add( $0070, TdcmGrup0070.Create( $0070 ) );
     Add( $0072, TdcmGrup0072.Create( $0072 ) );
     Add( $0074, TdcmGrup0074.Create( $0074 ) );
     Add( $0076, TdcmGrup0076.Create( $0076 ) );
     Add( $0078, TdcmGrup0078.Create( $0078 ) );
     Add( $0080, TdcmGrup0080.Create( $0080 ) );
     Add( $0082, TdcmGrup0082.Create( $0082 ) );
     Add( $0088, TdcmGrup0088.Create( $0088 ) );
     Add( $0100, TdcmGrup0100.Create( $0100 ) );
     Add( $0400, TdcmGrup0400.Create( $0400 ) );
     Add( $1000, TdcmGrup1000.Create( $1000 ) );
     Add( $1010, TdcmGrup1010.Create( $1010 ) );
     Add( $2000, TdcmGrup2000.Create( $2000 ) );
     Add( $2010, TdcmGrup2010.Create( $2010 ) );
     Add( $2020, TdcmGrup2020.Create( $2020 ) );
     Add( $2030, TdcmGrup2030.Create( $2030 ) );
     Add( $2040, TdcmGrup2040.Create( $2040 ) );
     Add( $2050, TdcmGrup2050.Create( $2050 ) );
     Add( $2100, TdcmGrup2100.Create( $2100 ) );
     Add( $2110, TdcmGrup2110.Create( $2110 ) );
     Add( $2120, TdcmGrup2120.Create( $2120 ) );
     Add( $2130, TdcmGrup2130.Create( $2130 ) );
     Add( $2200, TdcmGrup2200.Create( $2200 ) );
     Add( $3002, TdcmGrup3002.Create( $3002 ) );
     Add( $3004, TdcmGrup3004.Create( $3004 ) );
     Add( $3006, TdcmGrup3006.Create( $3006 ) );
     Add( $3008, TdcmGrup3008.Create( $3008 ) );
     Add( $300A, TdcmGrup300A.Create( $300A ) );
     Add( $300C, TdcmGrup300C.Create( $300C ) );
     Add( $300E, TdcmGrup300E.Create( $300E ) );
     Add( $4000, TdcmGrup4000.Create( $4000 ) );
     Add( $4008, TdcmGrup4008.Create( $4008 ) );
     Add( $4010, TdcmGrup4010.Create( $4010 ) );
     Add( $4FFE, TdcmGrup4FFE.Create( $4FFE ) );
     Add( $5000, TdcmGrup50xx.Create( $5000 ) );
     Add( $5200, TdcmGrup5200.Create( $5200 ) );
     Add( $5400, TdcmGrup5400.Create( $5400 ) );
     Add( $5600, TdcmGrup5600.Create( $5600 ) );
     Add( $6000, TdcmGrup60xx.Create( $6000 ) );
     Add( $7F00, TdcmGrup7Fxx.Create( $7F00 ) );
     Add( $7FE0, TdcmGrup7FE0.Create( $7FE0 ) );
     Add( $FFFA, TdcmGrupFFFA.Create( $FFFA ) );
     Add( $FFFC, TdcmGrupFFFC.Create( $FFFC ) );
     Add( $FFFE, TdcmGrupFFFE.Create( $FFFE ) );
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
