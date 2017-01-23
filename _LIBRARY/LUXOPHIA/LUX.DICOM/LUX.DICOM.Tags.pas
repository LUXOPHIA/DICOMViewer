unit LUX.DICOM.Tags;

interface //#################################################################### ■

uses System.Classes, System.SysUtils, System.Generics.Defaults, System.Generics.Collections,
     LUX, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

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
       _Elem  :THex4;
       _Name  :AnsiString;
       _Kinds :TKindVR;
       _Desc  :String;
     public
       constructor Create( const Elem_:THex4; const Name_:AnsiString; const Kinds_:TKindVR; const Desc_:String );
       ///// プロパティ
       property Elem  :THex4      read _Elem ;
       property Name  :AnsiString read _Name ;
       property Kinds :TKindVR    read _Kinds;
       property Desc  :String     read _Desc ;
     end;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup

     TdcmGrup = class( TObjectDictionary<THex4,TdcmElem> )
     private
     protected
       _NameToElem :TDictionary<AnsiString,TdcmElem>;
       ///// アクセス
       function GetElem( const Name_:AnsiString ) :TdcmElem;
       ///// メソッド
       procedure Add( const Elem_:THex4; const Name_:AnsiString; const Kind_:TKindVR; const Desc_:String );
     public
       constructor Create;
       destructor Destroy; override;
       ///// プロパティ
       property Elem[ const Name_:AnsiString ] :TdcmElem read GetElem;
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

//var //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【変数】

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

constructor TdcmElem.Create( const Elem_:THex4; const Name_:AnsiString; const Kinds_:TKindVR; const Desc_:String );
begin
     inherited Create;

     _Elem  := Elem_ ;
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

procedure TdcmGrup.Add( const Elem_:THex4; const Name_:AnsiString; const Kind_:TKindVR; const Desc_:String );
var
   E :TdcmElem;
begin
     E := TdcmElem.Create( Elem_, Name_, Kind_, Desc_ );

     inherited Add( Elem_, E );

     if Name_ <> '' then _NameToElem.Add( Name_, E );
end;

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmGrup.Create;
begin
     inherited Create( [ doOwnsValues ] );

     _NameToElem := TDictionary<AnsiString,TdcmElem>.Create;
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

     Add( $0000, TdcmGrup0000.Create );
     Add( $0002, TdcmGrup0002.Create );
     Add( $0004, TdcmGrup0004.Create );
     Add( $0008, TdcmGrup0008.Create );
     Add( $0010, TdcmGrup0010.Create );
     Add( $0012, TdcmGrup0012.Create );
     Add( $0014, TdcmGrup0014.Create );
     Add( $0018, TdcmGrup0018.Create );
     Add( $0020, TdcmGrup0020.Create );
     Add( $0022, TdcmGrup0022.Create );
     Add( $0024, TdcmGrup0024.Create );
     Add( $0028, TdcmGrup0028.Create );
     Add( $0032, TdcmGrup0032.Create );
     Add( $0038, TdcmGrup0038.Create );
     Add( $003A, TdcmGrup003A.Create );
     Add( $0040, TdcmGrup0040.Create );
     Add( $0042, TdcmGrup0042.Create );
     Add( $0044, TdcmGrup0044.Create );
     Add( $0046, TdcmGrup0046.Create );
     Add( $0048, TdcmGrup0048.Create );
     Add( $0050, TdcmGrup0050.Create );
     Add( $0052, TdcmGrup0052.Create );
     Add( $0054, TdcmGrup0054.Create );
     Add( $0060, TdcmGrup0060.Create );
     Add( $0062, TdcmGrup0062.Create );
     Add( $0064, TdcmGrup0064.Create );
     Add( $0066, TdcmGrup0066.Create );
     Add( $0068, TdcmGrup0068.Create );
     Add( $0070, TdcmGrup0070.Create );
     Add( $0072, TdcmGrup0072.Create );
     Add( $0074, TdcmGrup0074.Create );
     Add( $0076, TdcmGrup0076.Create );
     Add( $0078, TdcmGrup0078.Create );
     Add( $0080, TdcmGrup0080.Create );
     Add( $0082, TdcmGrup0082.Create );
     Add( $0088, TdcmGrup0088.Create );
     Add( $0100, TdcmGrup0100.Create );
     Add( $0400, TdcmGrup0400.Create );
     Add( $1000, TdcmGrup1000.Create );
     Add( $1010, TdcmGrup1010.Create );
     Add( $2000, TdcmGrup2000.Create );
     Add( $2010, TdcmGrup2010.Create );
     Add( $2020, TdcmGrup2020.Create );
     Add( $2030, TdcmGrup2030.Create );
     Add( $2040, TdcmGrup2040.Create );
     Add( $2050, TdcmGrup2050.Create );
     Add( $2100, TdcmGrup2100.Create );
     Add( $2110, TdcmGrup2110.Create );
     Add( $2120, TdcmGrup2120.Create );
     Add( $2130, TdcmGrup2130.Create );
     Add( $2200, TdcmGrup2200.Create );
     Add( $3002, TdcmGrup3002.Create );
     Add( $3004, TdcmGrup3004.Create );
     Add( $3006, TdcmGrup3006.Create );
     Add( $3008, TdcmGrup3008.Create );
     Add( $300A, TdcmGrup300A.Create );
     Add( $300C, TdcmGrup300C.Create );
     Add( $300E, TdcmGrup300E.Create );
     Add( $4000, TdcmGrup4000.Create );
     Add( $4008, TdcmGrup4008.Create );
     Add( $4010, TdcmGrup4010.Create );
     Add( $4FFE, TdcmGrup4FFE.Create );
     Add( $5000, TdcmGrup50xx.Create );
     Add( $5200, TdcmGrup5200.Create );
     Add( $5400, TdcmGrup5400.Create );
     Add( $5600, TdcmGrup5600.Create );
     Add( $6000, TdcmGrup60xx.Create );
     Add( $7F00, TdcmGrup7Fxx.Create );
     Add( $7FE0, TdcmGrup7FE0.Create );
     Add( $FFFA, TdcmGrupFFFA.Create );
     Add( $FFFC, TdcmGrupFFFC.Create );
     Add( $FFFE, TdcmGrupFFFE.Create );
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

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
