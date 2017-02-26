unit LUX.DICOM.VRs;

interface //#################################################################### ■

uses System.Classes, System.Generics.Collections;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TNameVR

     TNameVR = array [ 0..2-1 ] of AnsiChar;

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TKindVR

     //// http://dicom.nema.org/medical/dicom/current/output/html/part05.html#table_6.2-1
     //// Table 6.2-1. DICOM Value Representations
     TKindVR = ( vr00,   //Implicit VR
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

     HKindVR = record helper for TKindVR
     private
     public
       function ToString :String;
     end;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TKindsVR

     TKindsVR = set of TKindVR;

     HKindsVR = record helper for TKindsVR
     private
       function GetCount :Byte;
       function GetHead :TKindVR;
       function GetItems( const I_:Byte ) :TKindVR;
     public
       ///// プロパティ
       property Count                  :Byte    read GetCount;
       property Head                   :TKindVR read GetHead ;
       property Items[ const I_:Byte ] :TKindVR read GetItems;
       ///// メソッド
       function ToArray :TArray<TKindVR>;
       function ToString :String;
     end;

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmVR

     TdcmVR = class
     private
     protected
       _Name :TNameVR;
       _Size :Byte;
       _Desc :String;
     public
       constructor Create( const Name_:TNameVR; const Size_:Byte; const Desc_:String );
       ///// プロパティ
       property Name :TNameVR read _Name;
       property Size :Byte    read _Size;
       property Desc :String  read _Desc;
     end;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmBookVR

     TdcmBookVR = class( TObjectDictionary<TKindVR,TdcmVR> )
     private
     protected
       _NameToKind :TDictionary<TNameVR,TKindVR>;
       ///// メソッド
       procedure Add( const Kind_:TKindVR; const Name_:TNameVR; const Size_:Byte; const Desc_:String );
     public
       constructor Create;
       destructor Destroy; override;
       ///// プロパティ
       property NameToKind :TDictionary<TNameVR,TKindVR> read _NameToKind;
       ///// メソッド
       function ReadStream( const F_:TFileStream ) :TKindVR;
     end;

//const //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【定数】

var //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【変数】

    _BookVR_ :TdcmBookVR;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

implementation //############################################################### ■

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TKindVR

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

/////////////////////////////////////////////////////////////////////// メソッド

function HKindVR.ToString :String;
begin
     if Self = TKindVR.vr00 then Result := ''
                            else Result := String( _BookVR_[ Self ].Name );
end;

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TKindsVR

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

/////////////////////////////////////////////////////////////////////// アクセス

function HKindsVR.GetCount :Byte;
var
   K :TKindVR;
begin
     Result := 0;

     for K in Self do Inc( Result );
end;

function HKindsVR.GetHead :TKindVR;
var
   K :TKindVR;
begin
     for K in Self do
     begin
          Result := K;

          Exit;
     end;

     Result := TKindVR.vr00;
end;

function HKindsVR.GetItems( const I_:Byte ) :TKindVR;
var
   I :Byte;
   K :TKindVR;
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

     Result := TKindVR.vr00;
end;

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

/////////////////////////////////////////////////////////////////////// メソッド

function HKindsVR.ToArray :TArray<TKindVR>;
var
   K :TKindVR;
begin
     Result := [];

     for K in Self do Result := Result + [ K ];
end;

function HKindsVR.ToString :String;
var
   Ks :TArray<TKindVR>;
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

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmVR

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmVR.Create( const Name_:TNameVR; const Size_:Byte; const Desc_:String );
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

procedure TdcmBookVR.Add( const Kind_:TKindVR; const Name_:TNameVR; const Size_:Byte; const Desc_:String );
begin
     _NameToKind.Add( Name_, Kind_ );

     inherited Add( Kind_, TdcmVR.Create( Name_, Size_, Desc_ ) );
end;

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmBookVR.Create;
begin
     inherited Create( [ doOwnsValues ] );

     _NameToKind := TDictionary<TNameVR,TKindVR>.Create;

     //// http://dicom.nema.org/medical/dicom/current/output/html/part05.html#sect_7.1.2
     //// 7.1.2 Data Element Structure with Explicit VR
     Add( TKindVR.vrAE, 'AE', 2, 'Application Entity' );
     Add( TKindVR.vrAS, 'AS', 2, 'Age String' );
     Add( TKindVR.vrAT, 'AT', 2, 'Attribute Tag' );
     Add( TKindVR.vrCS, 'CS', 2, 'Code String' );
     Add( TKindVR.vrDA, 'DA', 2, 'Date' );
     Add( TKindVR.vrDS, 'DS', 2, 'Decimal String' );
     Add( TKindVR.vrDT, 'DT', 2, 'Date Time' );
     Add( TKindVR.vrFL, 'FL', 2, 'Floating Point Single' );
     Add( TKindVR.vrFD, 'FD', 2, 'Floating Point Double' );
     Add( TKindVR.vrIS, 'IS', 2, 'Integer String' );
     Add( TKindVR.vrLO, 'LO', 2, 'Long String' );
     Add( TKindVR.vrLT, 'LT', 2, 'Long Text' );
     Add( TKindVR.vrOB, 'OB', 6, 'Other Byte' );
     Add( TKindVR.vrOD, 'OD', 6, 'Other Double' );
     Add( TKindVR.vrOF, 'OF', 6, 'Other Float' );
     Add( TKindVR.vrOL, 'OL', 6, 'Other Long' );
     Add( TKindVR.vrOW, 'OW', 6, 'Other Word' );
     Add( TKindVR.vrPN, 'PN', 2, 'Person Name' );
     Add( TKindVR.vrSH, 'SH', 2, 'Short String' );
     Add( TKindVR.vrSL, 'SL', 2, 'Signed Long' );
     Add( TKindVR.vrSQ, 'SQ', 6, 'Sequence of Items' );
     Add( TKindVR.vrSS, 'SS', 2, 'Signed Short' );
     Add( TKindVR.vrST, 'ST', 2, 'Short Text' );
     Add( TKindVR.vrTM, 'TM', 2, 'Time' );
     Add( TKindVR.vrUC, 'UC', 6, 'Unlimited Characters' );
     Add( TKindVR.vrUI, 'UI', 2, 'Unique Identifier (UID)' );
     Add( TKindVR.vrUL, 'UL', 2, 'Unsigned Long' );
     Add( TKindVR.vrUN, 'UN', 6, 'Unknown' );
     Add( TKindVR.vrUR, 'UR', 6, 'Universal Resource Identifier or Universal Resource Locator (URI/URL)' );
     Add( TKindVR.vrUS, 'US', 2, 'Unsigned Short' );
     Add( TKindVR.vrUT, 'UT', 6, 'Unlimited Text' );
end;

destructor TdcmBookVR.Destroy;
begin
     _NameToKind.Free;

     inherited;
end;

/////////////////////////////////////////////////////////////////////// メソッド

function TdcmBookVR.ReadStream( const F_:TFileStream ) :TKindVR;
var
   P :Integer;
   Name :TNameVR;
begin
     P := F_.Position;

     F_.Read( Name, SizeOf( Name ) );

     if _NameToKind.ContainsKey( Name ) then Result := _NameToKind[ Name ]
     else
     begin
          F_.Position := P;

          Result := TKindVR.vr00;
     end;
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

     _BookVR_ := TdcmBookVR.Create;

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

     _BookVR_.Free;

end. //######################################################################### ■
