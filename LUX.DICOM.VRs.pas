unit LUX.DICOM.VRs;

interface //#################################################################### ■

uses System.Classes, System.SysUtils, System.Generics.Collections,
     LUX;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     TAnsiChar2 = array [ 0..2-1 ] of AnsiChar;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TTypeVR

     //// http://dicom.nema.org/medical/dicom/current/output/html/part05.html#table_6.2-1
     //// Table 6.2-1. DICOM Value Representations
     TTypeVR = ( vr00,   //Implicit VR
                 vrAE,   //Application Entity
                 vrAS,   //Age String
                 vrAT,   //Attribute Tag
                 vrCS,   //Code String
                 vrDA,   //Date
                 vrDS,   //Decimal String
                 vrDT,   //Date Time
                 vrFL,   //Floating Point Single
                 vrFD,   //Floating Point Double
                 vrIS,   //Integer String
                 vrLO,   //Long String
                 vrLT,   //Long Text
                 vrOB,   //Other Byte
                 vrOD,   //Other Double
                 vrOF,   //Other Float
                 vrOL,   //Other Long
                 vrOW,   //Other Word
                 vrPN,   //Person Name
                 vrSH,   //Short String
                 vrSL,   //Signed Long
                 vrSQ,   //Sequence of Items
                 vrSS,   //Signed Short
                 vrST,   //Short Text
                 vrTM,   //Time
                 vrUC,   //Unlimited Characters
                 vrUI,   //Unique Identifier (UID)
                 vrUL,   //Unsigned Long
                 vrUN,   //Unknown
                 vrUR,   //Universal Resource Identifier or Universal Resource Locator (URI/URL)
                 vrUS,   //Unsigned Short
                 vrUT ); //Unlimited Text

     HTypeVR = record helper for TTypeVR
     private
     public
       function ToString :String;
     end;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TKindVR

     TKindVR = set of TTypeVR;

     HKindVR = record helper for TKindVR
     private
       function GetCount :Byte;
       function GetHead :TTypeVR;
       function GetItems( const I_:Byte ) :TTypeVR;
     public
       ///// プロパティ
       property Count                  :Byte    read GetCount;
       property Head                   :TTypeVR read GetHead ;
       property Items[ const I_:Byte ] :TTypeVR read GetItems;
       ///// メソッド
       function ToArray :TArray<TTypeVR>;
       function ToString :String;
     end;

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmVR

     TdcmVR = class
     private
     protected
       _Name :TAnsiChar2;
       _Size :Byte;
       _Desc :String;
     public
       constructor Create( const Name_:TAnsiChar2; const Size_:Byte; const Desc_:String );
       ///// プロパティ
       property Name :TAnsiChar2 read _Name;
       property Size :Byte       read _Size;
       property Desc :String     read _Desc;
     end;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmBookVR

     TdcmBookVR = class( TObjectDictionary<TTypeVR,TdcmVR> )
     private
     protected
       _NameToKind :TDictionary<TAnsiChar2,TTypeVR>;
       ///// メソッド
       procedure Add( const Kind_:TTypeVR; const Name_:TAnsiChar2; const Size_:Byte; const Desc_:String );
     public
       constructor Create;
       destructor Destroy; override;
       ///// プロパティ
       property NameToKind :TDictionary<TAnsiChar2,TTypeVR> read _NameToKind;
       ///// メソッド
       function ReadStream( const F_:TFileStream ) :TTypeVR;
     end;

//const //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【定数】

var //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【変数】

    _BookVR_ :TdcmBookVR;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

implementation //############################################################### ■

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TTypeVR

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

/////////////////////////////////////////////////////////////////////// メソッド

function HTypeVR.ToString :String;
begin
     if Self = TTypeVR.vr00 then Result := ''
                            else Result := String( _BookVR_[ Self ].Name );
end;

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TKindVR

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

/////////////////////////////////////////////////////////////////////// アクセス

function HKindVR.GetCount :Byte;
var
   K :TTypeVR;
begin
     Result := 0;

     for K in Self do Inc( Result );
end;

function HKindVR.GetHead :TTypeVR;
var
   K :TTypeVR;
begin
     for K in Self do
     begin
          Result := K;

          Exit;
     end;

     Result := TTypeVR.vr00;
end;

function HKindVR.GetItems( const I_:Byte ) :TTypeVR;
var
   I :Byte;
   K :TTypeVR;
begin
     I := 0;
     for K in Self do
     begin
          if I = I_ then
          begin
               Result := K;

               Exit;
          end;

          Inc( I );
     end;

     Result := TTypeVR.vr00;
end;

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

/////////////////////////////////////////////////////////////////////// メソッド

function HKindVR.ToArray :TArray<TTypeVR>;
var
   K :TTypeVR;
begin
     Result := [];

     for K in Self do Result := Result + [ K ];
end;

function HKindVR.ToString :String;
var
   Ks :TArray<TTypeVR>;
   I :Integer;
begin
     if Self = [] then Result := ''
     else
     begin
          Ks := ToArray;

          Result := Ks[ 0 ].ToString;

          for I := 1 to High( Ks ) do Result := Result + '/' + Ks[ I ].ToString;
     end;
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmVR

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmVR.Create( const Name_:TAnsiChar2; const Size_:Byte; const Desc_:String );
begin
     inherited Create;

     _Name := Name_;
     _Size := Size_;
     _Desc := Desc_;
end;

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmBookVR

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

/////////////////////////////////////////////////////////////////////// メソッド

procedure TdcmBookVR.Add( const Kind_:TTypeVR; const Name_:TAnsiChar2; const Size_:Byte; const Desc_:String );
begin
     _NameToKind.Add( Name_, Kind_ );

     inherited Add( Kind_, TdcmVR.Create( Name_, Size_, Desc_ ) );
end;

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmBookVR.Create;
begin
     inherited Create( [ doOwnsValues ] );

     _NameToKind := TDictionary<TAnsiChar2,TTypeVR>.Create;

     //// http://dicom.nema.org/medical/dicom/current/output/html/part05.html#sect_7.1.2
     //// 7.1.2 Data Element Structure with Explicit VR
     Add( TTypeVR.vrAE, 'AE', 2, 'Application Entity' );
     Add( TTypeVR.vrAS, 'AS', 2, 'Age String' );
     Add( TTypeVR.vrAT, 'AT', 2, 'Attribute Tag' );
     Add( TTypeVR.vrCS, 'CS', 2, 'Code String' );
     Add( TTypeVR.vrDA, 'DA', 2, 'Date' );
     Add( TTypeVR.vrDS, 'DS', 2, 'Decimal String' );
     Add( TTypeVR.vrDT, 'DT', 2, 'Date Time' );
     Add( TTypeVR.vrFL, 'FL', 2, 'Floating Point Single' );
     Add( TTypeVR.vrFD, 'FD', 2, 'Floating Point Double' );
     Add( TTypeVR.vrIS, 'IS', 2, 'Integer String' );
     Add( TTypeVR.vrLO, 'LO', 2, 'Long String' );
     Add( TTypeVR.vrLT, 'LT', 2, 'Long Text' );
     Add( TTypeVR.vrOB, 'OB', 6, 'Other Byte' );
     Add( TTypeVR.vrOD, 'OD', 6, 'Other Double' );
     Add( TTypeVR.vrOF, 'OF', 6, 'Other Float' );
     Add( TTypeVR.vrOL, 'OL', 6, 'Other Long' );
     Add( TTypeVR.vrOW, 'OW', 6, 'Other Word' );
     Add( TTypeVR.vrPN, 'PN', 2, 'Person Name' );
     Add( TTypeVR.vrSH, 'SH', 2, 'Short String' );
     Add( TTypeVR.vrSL, 'SL', 2, 'Signed Long' );
     Add( TTypeVR.vrSQ, 'SQ', 6, 'Sequence of Items' );
     Add( TTypeVR.vrSS, 'SS', 2, 'Signed Short' );
     Add( TTypeVR.vrST, 'ST', 2, 'Short Text' );
     Add( TTypeVR.vrTM, 'TM', 2, 'Time' );
     Add( TTypeVR.vrUC, 'UC', 6, 'Unlimited Characters' );
     Add( TTypeVR.vrUI, 'UI', 2, 'Unique Identifier (UID)' );
     Add( TTypeVR.vrUL, 'UL', 2, 'Unsigned Long' );
     Add( TTypeVR.vrUN, 'UN', 6, 'Unknown' );
     Add( TTypeVR.vrUR, 'UR', 6, 'Universal Resource Identifier or Universal Resource Locator (URI/URL)' );
     Add( TTypeVR.vrUS, 'US', 2, 'Unsigned Short' );
     Add( TTypeVR.vrUT, 'UT', 6, 'Unlimited Text' );
end;

destructor TdcmBookVR.Destroy;
begin
     _NameToKind.Free;

     inherited;
end;

/////////////////////////////////////////////////////////////////////// メソッド

function TdcmBookVR.ReadStream( const F_:TFileStream ) :TTypeVR;
var
   P :Integer;
   Name :TAnsiChar2;
begin
     P := F_.Position;

     F_.Read( Name, SizeOf( Name ) );

     if _NameToKind.ContainsKey( Name ) then Result := _NameToKind[ Name ]
     else
     begin
          F_.Position := P;

          Result := TTypeVR.vr00;
     end;
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

     _BookVR_ := TdcmBookVR.Create;

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

     _BookVR_.Free;

end. //######################################################################### ■
