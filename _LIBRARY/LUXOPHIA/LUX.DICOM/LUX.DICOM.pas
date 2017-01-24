unit LUX.DICOM;

interface //#################################################################### ■

uses System.Classes, System.SysUtils, System.Generics.Collections, System.Math, System.RegularExpressions,
     LUX, LUX.DICOM.Tags, LUX.DICOM.VRs, System.AnsiStrings;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     TdcmPort = class;
     TdcmData = class;
     TdcmFile = class;

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmHead

     TdcmHead = packed record
     private
     public
       Prea :array [ 0..128-1 ] of     Byte;
       Pref :array [ 0..  4-1 ] of AnsiChar;
     end;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmDate

     TdcmDate = record
     private
     public
       Y :Word;
       M :Byte;
       D :Byte;
       /////
       constructor Create( const Y_:Word; const M_,D_:Byte ); overload;
       constructor Create( const Text_:String ); overload;
       ///// メソッド
       function ToString :String;
     end;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmTime

     TdcmTime = record
     private
     public
       H :Byte;
       M :Byte;
       S :Double;
       /////
       constructor Create( const H_,M_:Byte; const S_:Double ); overload;
       constructor Create( const Text_:String ); overload;
       ///// メソッド
       function ToString :String;
     end;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmZone

     TdcmZone = record
     private
     public
       Sign :TValueSign;
       Time :TdcmTime;
       /////
       constructor Create( const Sign_:TValueSign; const TimeH_,TimeM_:Byte ); overload;
       constructor Create( const Text_:String ); overload;
       ///// メソッド
       function ToString :String;
     end;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmDateTime

     TdcmDateTime = record
     private
     public
       Date :TdcmDate;
       Time :TdcmTime;
       Zone :TdcmZone;
       /////
       constructor Create( const Text_:String );
       ///// メソッド
       function ToString :String;
     end;

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmPort

     TdcmPort = class
     private
     protected
       _Data :TdcmData;
       ///// アクセス
       function GetText :String; virtual; abstract;
       procedure SetText( Text_:String ); virtual; abstract;
     public
       constructor Create( const Data_:TdcmData );
       ///// プロパティ
       property Text :String read GetText write SetText;
     end;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmData

     TdcmData = class
     private
     protected
       _File  :TdcmFile;
       _Tag   :TdcmTag;
       _ExpVR :TTypeVR;
       _Data  :TBytes;
       _Port  :TdcmPort;
       ///// アクセス
       function GetIsStd :Boolean;
       function GetElem :TdcmElem;
       function GetOriVR :TKindVR;
       function GetRecVR :TTypeVR;
       function GetSize :Cardinal;
       procedure SetSize( const Size_:Cardinal );
       function GetDesc :String;
       ///// メソッド
       procedure MakePort;
     public
       constructor Create( const File_:TdcmFile );
       destructor Destroy; override;
       ///// プロパティ
       property Tag   :TdcmTag  read   _Tag                ;
       property IsStd :Boolean  read GetIsStd              ;
       property Elem  :TdcmElem read GetElem               ;
       property OriVR :TKindVR  read GetOriVR              ;
       property ExpVR :TTypeVR  read   _ExpVR              ;
       property RecVR :TTypeVR  read GetRecVR              ;
       property Size  :Cardinal read GetSize  write SetSize;
       property Data  :TBytes   read   _Data               ;
       property Port  :TdcmPort read   _Port               ;
       property Desc  :String   read GetDesc               ;
       ///// メソッド
       procedure ReadStream( const F_:TFileStream );
     end;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmFile

     TdcmFile = class( TObjectDictionary<TdcmTag,TdcmData> )
     private
     protected
       ///// アクセス
       function GetData( const Grup_,Elem_:THex4 ) :TdcmData;
       ///// メソッド
       procedure MakePorts;
     public
       constructor Create;
       destructor Destroy; override;
       ///// プロパティ
       property Data[ const Grup_,Elem_:THex4 ] :TdcmData read GetData;
       ///// メソッド
       procedure LoadFromFile( const FileName_:String );
       function TagsToArray :TArray<TdcmTag>;
     end;

//const //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【定数】

//var //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【変数】

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

implementation //############################################################### ■

uses LUX.DICOM.Ports;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmHead

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmDate

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmDate.Create( const Y_:Word; const M_,D_:Byte );
begin
     Y := Y_;
     M := M_;
     D := D_;
end;

constructor TdcmDate.Create( const Text_:String );
begin
     with TRegEx.Match( Text_, '(\d{4})(\d{2})?(\d{2})?' ) do
     begin
          with Groups do
          begin
               if Count > 1 then Y := Item[1].Value.ToInteger else Y := 0;
               if Count > 2 then M := Item[2].Value.ToInteger else M := 0;
               if Count > 3 then D := Item[3].Value.ToInteger else D := 0;
          end;
     end;
end;

/////////////////////////////////////////////////////////////////////// メソッド

function TdcmDate.ToString :String;
begin
     Result := Format( '%.4d%.2d%.2d', [ Y, M, D ] );
end;

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmTime

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmTime.Create( const H_,M_:Byte; const S_:Double );
begin
     H := H_;
     M := M_;
     S := S_;
end;

constructor TdcmTime.Create( const Text_:String );
begin
     with TRegEx.Match( Text_, '(\d{2})(\d{2})?(\d{2}(?:\.\d{1,6})?)?' ) do
     begin
          with Groups do
          begin
               if Count > 1 then H := Item[1].Value.ToInteger else H := 0;
               if Count > 2 then M := Item[2].Value.ToInteger else M := 0;
               if Count > 3 then S := Item[3].Value.ToDouble  else S := 0;
          end;
     end;
end;

/////////////////////////////////////////////////////////////////////// メソッド

function TdcmTime.ToString :String;
begin
     Result := Format( '%.2d%.2d%.2d', [ H, M, Trunc( S ) ] ) + Frac( S ).ToString.Substring( 1 );
end;

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmZone

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmZone.Create( const Sign_:TValueSign; const TimeH_,TimeM_:Byte );
begin
     Sign := Sign_;
     Time := TdcmTime.Create( TimeH_, TimeM_, 0 );
end;

constructor TdcmZone.Create( const Text_:String );
begin
     with TRegEx.Match( Text_, '([-+])((?:\d{2}){2})' ) do
     begin
          if Success then
          begin
               Sign := ( Groups[1].Value + '1' ).ToInteger;
               Time := TdcmTime.Create( Groups[2].Value );
          end
          else Self := TdcmZone.Create( 0, 0, 0 );
     end;
end;

/////////////////////////////////////////////////////////////////////// メソッド

function TdcmZone.ToString :String;
begin
     if Sign = 0 then Result := ''
     else
     begin
          if Sign = -1 then Result := '-'
                       else Result := '+';

          Result := Result + Format( '%.2d%.2d', [ Time.H, Time.M ] );
     end;
end;

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmDateTime

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmDateTime.Create( const Text_:String );
begin
     with TRegEx.Match( Text_, '(\d{4}(?:\d{2}){0,2})((?:\d{2}){1,2}(?:\d{2}\.\d{1,6})?)?' ) do
     begin
          with Groups do
          begin
               if Count > 1 then Date := TdcmDate.Create( Item[1].Value )
                            else Date := TdcmDate.Create( 0, 0, 0 );

               if Count > 2 then Time := TdcmTime.Create( Item[2].Value )
                            else Time := TdcmTime.Create( 0, 0, 0 );
          end;
     end;

     //////////

     with TRegEx.Match( Text_, '[-+](?:\d{2}){2}' ) do
     begin
          if Success then Zone := TdcmZone.Create( Value )
                     else Zone := TdcmZone.Create( 0, 0, 0 );
     end;
end;

/////////////////////////////////////////////////////////////////////// メソッド

function TdcmDateTime.ToString :String;
begin
     Result := Date.ToString + Time.ToString + Zone.ToString;
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmPort

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmPort.Create( const Data_:TdcmData );
begin
     inherited Create;

     _Data := Data_;
end;

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmData

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

/////////////////////////////////////////////////////////////////////// アクセス

function TdcmData.GetIsStd :Boolean;
begin
     Result := _BookTag_.Contains( _Tag );
end;

function TdcmData.GetElem :TdcmElem;
begin
     Result := _BookTag_[ _Tag ];
end;

function TdcmData.GetOriVR :TKindVR;
begin
     if IsStd then Result := GetElem.Kinds
              else Result := [];
end;

function TdcmData.GetRecVR :TTypeVR;
begin
     Result := ExpVR;

     if ( Result = TTypeVR.vr00 ) and ( OriVR.Count = 1 ) then Result := OriVR.Head;
end;

function TdcmData.GetSize :Cardinal;
begin
     Result := Length( _Data );
end;

procedure TdcmData.SetSize( const Size_:Cardinal );
begin
     SetLength( _Data, Size_ );
end;

function TdcmData.GetDesc :String;
begin
     if IsStd then Result := GetElem.Desc
              else Result := '?';
end;

/////////////////////////////////////////////////////////////////////// メソッド

procedure TdcmData.MakePort;
begin
     case RecVR of
         vrAE: _Port := TdcmPortAE.Create( Self );  //Application Entity
         vrAS: _Port := TdcmPortAS.Create( Self );  //Age String
         vrAT:                                   ;  //Attribute Tag
         vrCS: _Port := TdcmPortCS.Create( Self );  //Code String
         vrDA: _Port := TdcmPortDA.Create( Self );  //Date
         vrDS: _Port := TdcmPortDS.Create( Self );  //Decimal String
         vrDT: _Port := TdcmPortDT.Create( Self );  //Date Time
         vrFL:                                   ;  //Floating Point Single
         vrFD:                                   ;  //Floating Point Double
         vrIS: _Port := TdcmPortIS.Create( Self );  //Integer String
         vrLO: _Port := TdcmPortLO.Create( Self );  //Long String
         vrLT: _Port := TdcmPortLT.Create( Self );  //Long Text
         vrOB:                                   ;  //Other Byte
         vrOD:                                   ;  //Other Double
         vrOF:                                   ;  //Other Float
         vrOL:                                   ;  //Other Long
         vrOW:                                   ;  //Other Word
         vrPN: _Port := TdcmPortPN.Create( Self );  //Person Name
         vrSH: _Port := TdcmPortSH.Create( Self );  //Short String
         vrSL:                                   ;  //Signed Long
         vrSQ:                                   ;  //Sequence of Items
         vrSS:                                   ;  //Signed Short
         vrST: _Port := TdcmPortST.Create( Self );  //Short Text
         vrTM: _Port := TdcmPortTM.Create( Self );  //Time
         vrUC: _Port := TdcmPortUC.Create( Self );  //Unlimited Characters
         vrUI: _Port := TdcmPortUI.Create( Self );  //Unique Identifier (UID)
         vrUL:                                   ;  //Unsigned Long
         vrUN:                                   ;  //Unknown
         vrUR: _Port := TdcmPortUR.Create( Self );  //Universal Resource Identifier or Universal Resource Locator (URI/URL)
         vrUS:                                   ;  //Unsigned Short
         vrUT: _Port := TdcmPortUT.Create( Self );  //Unlimited Text
     end;
end;

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmData.Create( const File_:TdcmFile );
begin
     inherited Create;

     _File := File_;
end;

destructor TdcmData.Destroy;
begin
     if Assigned( _Port ) then _Port.Free;

     inherited;
end;

/////////////////////////////////////////////////////////////////////// メソッド

function FindWords( const F_:TFileStream; const Ws_:array of Word ) :Boolean;
var
   E :Integer;
   P :Int64;
   W, B :Word;
label
     NOMATCH;
begin
     E := F_.Size - SizeOf( Ws_ );

     while F_.Position <= E do
     begin
          P := F_.Position;

          for W in Ws_ do
          begin
               F_.ReadData( B );

               if B <> W then goto NOMATCH;
          end;

          Result := True;

          Exit;

          NOMATCH:

          F_.Position := P + SizeOf(Word);
     end;

     Result := False;
end;

procedure TdcmData.ReadStream( const F_:TFileStream );
//･･･････････････････････････････････････････････････
     function ReadWord :Word;
     begin
          F_.ReadData( Result );
     end;
     //･･････････････････････････････････････････････
     function ReadCardinal :Cardinal;
     begin
          F_.ReadData( Result );
     end;
     //･･････････････････････････････････････････････
     function ReadSize( const VR_:TTypeVR ) :Cardinal;
     begin
          //// http://dicom.nema.org/medical/dicom/current/output/html/part05.html#sect_7.1.3
          //// 7.1.3 Data Element Structure with Implicit VR

          if VR_ = TTypeVR.vr00 then Result := ReadCardinal
          else
          begin
               if _BookVR_[ VR_ ].Size = 2 then Result := ReadWord
               else
               begin
                    F_.Seek( 2, TSeekOrigin.soCurrent );  //VR Reserved Block

                    Result := ReadCardinal;
               end;
          end;
     end;
     //･･････････････････････････････････････････････
     function FindSize :Cardinal;
     var
        P :Int64;
     begin
          //// http://dicom.nema.org/medical/dicom/current/output/html/part05.html#sect_7.5
          //// 7.5 Nesting of Data Sets

          P := F_.Position;

          Assert( FindWords( F_, [ $FFFE, $E0DD, $0000, $0000 ] ), 'SequenceDelimitationItem is not found.' );

          Result := F_.Position - P;

          F_.Position := P;
     end;
//･･･････････････････････････････････････････････････
var
   N :Cardinal;
begin
     F_.Read( _Tag, SizeOf( _Tag ) );

     _ExpVR := _BookVR_.ReadStream( F_ );

     N := ReadSize( _ExpVR );

     if N = $FFFFFFFF then N := FindSize; //不定長

     Size := N;

     F_.ReadBuffer( _Data, N );

     MakePort;
end;

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmFile

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

/////////////////////////////////////////////////////////////////////// アクセス

function TdcmFile.GetData( const Grup_,Elem_:THex4 ) :TdcmData;
begin
     Result := Items[ TdcmTag.Create( Grup_, Elem_ ) ];
end;

/////////////////////////////////////////////////////////////////////// メソッド

procedure TdcmFile.MakePorts;
begin

end;

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmFile.Create;
begin
     inherited Create( [ doOwnsValues ] );

end;

destructor TdcmFile.Destroy;
begin

     inherited;
end;

/////////////////////////////////////////////////////////////////////// メソッド

procedure TdcmFile.LoadFromFile( const FileName_:String );
var
   F :TFileStream;
   H :TdcmHead;
   D :TdcmData;
begin
     Clear;

     F := TFileStream.Create( FileName_, fmOpenRead );

     F.Read( H, SizeOf( H ) );

     Assert( H.Pref = 'DICM', 'It is not the DICOM file.' );

     while F.Position < F.Size do
     begin
          D := TdcmData.Create( Self );

          D.ReadStream( F );

          AddOrSetValue( D.Tag, D );
     end;

     F.Free;

     MakePorts;
end;

function TdcmFile.TagsToArray :TArray<TdcmTag>;
begin
     Result := Keys.ToArray;

     TArray.Sort<TdcmTag>( Result, TdcmTagSort.Create );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
