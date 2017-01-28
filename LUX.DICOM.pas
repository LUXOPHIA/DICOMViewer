unit LUX.DICOM;

interface //#################################################################### ■

uses System.Classes, System.SysUtils, System.Generics.Collections,
     LUX, LUX.DICOM.VRs, LUX.DICOM.Tags;

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

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmPort

     TdcmPort = class
     private
     protected
       _Data :TdcmData;
       ///// アクセス
       function GetText :String; virtual; abstract;
       procedure SetText( const Text_:String ); virtual; abstract;
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
       _ExpVR :TKindVR;
       _Data  :TBytes;
       _Port  :TdcmPort;
       ///// アクセス
       function GetIsStd :Boolean;
       function GetElem :TdcmElem;
       function GetOriVR :TKindsVR;
       function GetRecVR :TKindVR;
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
       property OriVR :TKindsVR read GetOriVR              ;
       property ExpVR :TKindVR  read   _ExpVR              ;
       property RecVR :TKindVR  read GetRecVR              ;
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

uses LUX.DICOM.Ports,
     LUX.DICOM.Ports.Reco,
     LUX.DICOM.Ports.Arra,
     LUX.DICOM.Ports.Text,
     LUX.DICOM.Ports.Imag;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmHead

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

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

function TdcmData.GetOriVR :TKindsVR;
begin
     if IsStd then Result := GetElem.Kinds
              else Result := [];
end;

function TdcmData.GetRecVR :TKindVR;
begin
     Result := ExpVR;

     if ( Result = TKindVR.vr00 ) and ( OriVR.Count = 1 ) then Result := OriVR.Head;
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
         vrAT: _Port := TdcmPortAT.Create( Self );  //Attribute Tag
         vrCS: _Port := TdcmPortCS.Create( Self );  //Code String
         vrDA: _Port := TdcmPortDA.Create( Self );  //Date
         vrDS: _Port := TdcmPortDS.Create( Self );  //Decimal String
         vrDT: _Port := TdcmPortDT.Create( Self );  //Date Time
         vrFL: _Port := TdcmPortFL.Create( Self );  //Floating Point Single
         vrFD: _Port := TdcmPortFD.Create( Self );  //Floating Point Double
         vrIS: _Port := TdcmPortIS.Create( Self );  //Integer String
         vrLO: _Port := TdcmPortLO.Create( Self );  //Long String
         vrLT: _Port := TdcmPortLT.Create( Self );  //Long Text
         vrOB: _Port := TdcmPortOB.Create( Self );  //Other Byte
         vrOD: _Port := TdcmPortOD.Create( Self );  //Other Double
         vrOF: _Port := TdcmPortOF.Create( Self );  //Other Float
         vrOL: _Port := TdcmPortOL.Create( Self );  //Other Long
         vrOW: _Port := TdcmPortOW.Create( Self );  //Other Word
         vrPN: _Port := TdcmPortPN.Create( Self );  //Person Name
         vrSH: _Port := TdcmPortSH.Create( Self );  //Short String
         vrSL: _Port := TdcmPortSL.Create( Self );  //Signed Long
         vrSQ: _Port := TdcmPortSQ.Create( Self );  //Sequence of Items
         vrSS: _Port := TdcmPortSS.Create( Self );  //Signed Short
         vrST: _Port := TdcmPortST.Create( Self );  //Short Text
         vrTM: _Port := TdcmPortTM.Create( Self );  //Time
         vrUC: _Port := TdcmPortUC.Create( Self );  //Unlimited Characters
         vrUI: _Port := TdcmPortUI.Create( Self );  //Unique Identifier (UID)
         vrUL: _Port := TdcmPortUL.Create( Self );  //Unsigned Long
         vrUN: _Port := TdcmPortUN.Create( Self );  //Unknown
         vrUR: _Port := TdcmPortUR.Create( Self );  //Universal Resource Identifier or Universal Resource Locator (URI/URL)
         vrUS: _Port := TdcmPortUS.Create( Self );  //Unsigned Short
         vrUT: _Port := TdcmPortUT.Create( Self );  //Unlimited Text
         else  _Port := TdcmPortUN.Create( Self );
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
     function ReadSize( const VR_:TKindVR ) :Cardinal;
     begin
          //// http://dicom.nema.org/medical/dicom/current/output/html/part05.html#sect_7.1.3
          //// 7.1.3 Data Element Structure with Implicit VR

          if VR_ = TKindVR.vr00 then Result := ReadCardinal
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
        P, I :Int64;
     begin
          //// http://dicom.nema.org/medical/dicom/current/output/html/part05.html#sect_7.5
          //// 7.5 Nesting of Data Sets

          P := F_.Position;

          with TSearchBM<Word>.Create( [ $FFFE, $E0DD, $0000, $0000 ] ) do
          begin
               I := Match( P div 2, F_.Size div 2,
                    procedure( const HeadI_:Integer; const Buffer_:TArray<Word> )
                    begin
                         F_.Position := 2 * HeadI_;

                         F_.Read( Buffer_[0], 2 * 4 );

                    end );

               Assert( I >= 0, 'SequenceDelimitationItem is not found.' );

               Free;
          end;

          Result := 2 * ( I + 4 ) - P;

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
