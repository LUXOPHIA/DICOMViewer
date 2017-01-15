unit LUX.DICOM.VRs;

interface //#################################################################### ■

uses System.Classes, System.SysUtils, System.Generics.Collections,
     LUX;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     TAnsiChar2 = array [ 0..2-1 ] of AnsiChar;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TKindVR

     // http://dicom.nema.org/medical/dicom/current/output/html/part05.html#table_6.2-1
     // Table 6.2-1. DICOM Value Representations
     TKindVR = ( vr00, { Implicit VR           }
                 vrAE, { Application Entity }
                 vrAS, { Age String }
                 vrAT, { Attribute Tag }
                 vrCS, { Code String }
                 vrDA, { Date }
                 vrDS, { Decimal String }
                 vrDT, { Date Time }
                 vrFL, { Floating Point Single }
                 vrFD, { Floating Point Double }
                 vrIS, { Integer String }
                 vrLO, { Long String }
                 vrLT, { Long Text }
                 vrOB, { Other Byte }
                 vrOD, { Other Double }
                 vrOF, { Other Float }
                 vrOL, { Other Long }
                 vrOW, { Other Word }
                 vrPN, { Person Name }
                 vrSH, { Short String }
                 vrSL, { Signed Long }
                 vrSQ, { Sequence of Items }
                 vrSS, { Signed Short }
                 vrST, { Short Text }
                 vrTM, { Time }
                 vrUC, { Unlimited Characters }
                 vrUI, { Unique Identifier (UID) }
                 vrUL, { Unsigned Long }
                 vrUN, { Unknown }
                 vrUR, { Universal Resource Identifier or Universal Resource Locator (URI/URL) }
                 vrUS, { Unsigned Short }
                 vrUT, { Unlimited Text }
                 vrOBOW,
                 vrUSSS,
                 vrUSSSOW,
                 vrUSOW );

     HKindVR = record helper for TKindVR
     private
     public
       function ToString :String;
     end;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TKindsVR

     TKindsVR = set of TKindVR;

     HKindsVR = record helper for TKindsVR
     private
     public
       function ToString :String;
     end;

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMVRs

     TDICOMVRs = class
     private
     protected
       _NameToKind :TDictionary<TAnsiChar2,TKindVR>;
       _KindToName :TDictionary<TKindVR,TAnsiChar2>;
       _KindToSize :TDictionary<TKindVR,Byte>      ;
       _KindToDesc :TDictionary<TKindVR,String>    ;
       ///// メソッド
       procedure Add( const Kind_:TKindVR; const Name_:TAnsiChar2; const Size_:Byte; const Desc_:String );
     public
       constructor Create;
       destructor Destroy; override;
       ///// プロパティ
       property NameToKind :TDictionary<TAnsiChar2,TKindVR> read _NameToKind;
       property KindToName :TDictionary<TKindVR,TAnsiChar2> read _KindToName;
       property KindToSize :TDictionary<TKindVR,Byte>       read _KindToSize;
       property KindToDesc :TDictionary<TKindVR,String>     read _KindToDesc;
       ///// メソッド
       function ReadStream( const F_:TFileStream ) :TKindVR;
     end;

//const //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【定数】

//var //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【変数】

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

implementation //############################################################### ■

uses LUX.DICOM;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TKindVR

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

/////////////////////////////////////////////////////////////////////// メソッド

function HKindVR.ToString :String;
begin
     Result := String( _VRs_.KindToName[ Self ] );
end;

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TKindsVR

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

/////////////////////////////////////////////////////////////////////// メソッド

function HKindsVR.ToString :String;
var
   K :TKindVR;
   Ks :array of TKindVR;
   I :Integer;
begin
     Ks := [];  for K in Self do Ks := Ks + [ K ];

     Result := String( _VRs_.KindToName[ Ks[ 0 ] ] );

     for I := 1 to High( Ks ) do Result := Result + ' or ' + String( _VRs_.KindToName[ Ks[ I ] ] );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMHeader

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMTag

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMVRs

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

/////////////////////////////////////////////////////////////////////// メソッド

procedure TDICOMVRs.Add( const Kind_:TKindVR; const Name_:TAnsiChar2; const Size_:Byte; const Desc_:String );
begin
     _NameToKind.Add( Name_, Kind_ );
     _KindToName.Add( Kind_, Name_ );
     _KindToSize.Add( Kind_, Size_ );
     _KindToDesc.Add( Kind_, Desc_ );
end;

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TDICOMVRs.Create;
begin
     inherited;

     _NameToKind := TDictionary<TAnsiChar2,TKindVR>.Create;
     _KindToName := TDictionary<TKindVR,TAnsiChar2>.Create;
     _KindToSize := TDictionary<TKindVR,Byte>      .Create;
     _KindToDesc := TDictionary<TKindVR,String>    .Create;

     // http://dicom.nema.org/medical/dicom/current/output/html/part05.html#sect_7.1.3
     // 7.1.3 Data Element Structure with Implicit VR
     Add( TKindVR.vr00, '??', 4, 'Implicit VR' );

     // http://dicom.nema.org/medical/dicom/current/output/html/part05.html#sect_7.1.2
     // 7.1.2 Data Element Structure with Explicit VR
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

     Add( TKindVR.vrOBOW  , 'BW', 6, 'OB or OW' );
     Add( TKindVR.vrUSSS  , 'U1', 2, 'US or SS' );
     Add( TKindVR.vrUSSSOW, 'U2', 2, 'US or SS or OW' );
     Add( TKindVR.vrUSOW  , 'U3', 2, 'US or OW' );
end;

destructor TDICOMVRs.Destroy;
begin
     _NameToKind.Free;
     _KindToName.Free;
     _KindToSize.Free;
     _KindToDesc.Free;

     inherited;
end;

/////////////////////////////////////////////////////////////////////// メソッド

function TDICOMVRs.ReadStream( const F_:TFileStream ) :TKindVR;
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

          Result := TKindVR.vr00;
     end;
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
