unit LUX.DICOM;

interface //#################################################################### ■

uses System.Classes, System.SysUtils, System.Generics.Collections,
     LUX, LUX.DICOM.VRs, LUX.DICOM.Tags;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     TdcmPort<_TYPE_> = class;
     TdcmData         = class;
     TdcmFile         = class;

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmHead

     TdcmHead = packed record
     private
     public
       Prea :array [ 0..128-1 ] of     Byte;
       Pref :array [ 0..  4-1 ] of AnsiChar;
     end;

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmPort<_TYPE_>

     IdcmPort = interface
       ['{54B1ECA5-221A-4F1D-821A-C551B2D93C90}']
       ///// アクセス
       function GetData :TdcmData;
       procedure SetData( const Data_:TdcmData );
       function GetText :String;
       procedure SetText( const Text_:String );
       ///// プロパティ
       property Data :TdcmData read GetData write SetData;
       property Text :String   read GetText write SetText;
     end;

     //-------------------------------------------------------------------------

     TdcmPort<_TYPE_> = class( TInterfacedObject, IdcmPort )
     private
     protected
       _Data :TdcmData;
       ///// アクセス
       function GetValue :_TYPE_; virtual;
       procedure SetValue( const Value_:_TYPE_ ); virtual;
       { IdcmPort }
       function GetData :TdcmData;
       procedure SetData( const Data_:TdcmData );
       function GetText :String; virtual; abstract;
       procedure SetText( const Text_:String ); virtual; abstract;
     public
       constructor Create;
       destructor Destroy; override;
       ///// プロパティ
       property Value :_TYPE_   read GetValue write SetValue;
       { IdcmPort }
       property Data  :TdcmData read GetData  write SetData ;
       property Text  :String   read GetText  write SetText ;
     end;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmData

     TdcmData = class
     private
     protected
       _File  :TdcmFile;
       _Tag   :TdcmTag;
       _ExpVR :TKindVR;
       _Data  :TBytes;
       _Port  :IdcmPort;
       ///// アクセス
       function GetIsStd :Boolean;
       function GetElem :TdcmElem;
       function GetOriVR :TKindsVR;
       function GetRecVR :TKindVR;
       function GetSize :Cardinal;
       procedure SetSize( const Size_:Cardinal );
       function GetPort :IdcmPort;
       procedure SetPort( const Port_:IdcmPort );
       function GetDesc :String;
       ///// メソッド
       procedure MakePort;
       procedure MakePortImag;
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
       property Port  :IdcmPort read GetPort  write SetPort;
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
     LUX.DICOM.Ports.Text,
     LUX.DICOM.Ports.Arra,
     LUX.DICOM.Ports.Imag;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmHead

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmPort<_TYPE_>

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

/////////////////////////////////////////////////////////////////////// アクセス

function TdcmPort<_TYPE_>.GetValue :_TYPE_;
begin
     Move( _Data.Data[0], Result, SizeOf( _TYPE_ ) );
end;

procedure TdcmPort<_TYPE_>.SetValue( const Value_:_TYPE_ );
begin
     Move( Value_, _Data.Data[0], SizeOf( _TYPE_ ) );
end;

//------------------------------------------------------------------------------

function TdcmPort<_TYPE_>.GetData :TdcmData;
begin
     Result := _Data;
end;

procedure TdcmPort<_TYPE_>.SetData( const Data_:TdcmData );
begin
     _Data := Data_;
end;

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmPort<_TYPE_>.Create;
begin
     inherited;

     _Data := nil;
end;

destructor TdcmPort<_TYPE_>.Destroy;
begin

     inherited;
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
var
   N :Integer;
begin
     if Size_ mod 2 = 0 then N := Size_
                        else N := Size_ + 1;  //バイト数は常に偶数

     SetLength( _Data, N );
end;

function TdcmData.GetPort :IdcmPort;
begin
     if not Assigned( _Port ) then
     begin
          if _Tag = TdcmTag.Create( $7FE0, $0010 ) then MakePortImag
                                                   else MakePort;
     end;

     Result := _Port;
end;

procedure TdcmData.SetPort( const Port_:IdcmPort );
begin
     _Port := Port_;

     if Assigned( _Port ) then _Port.Data := Self;
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
         vrAE: Port := TdcmPortAE.Create;  //Application Entity
         vrAS: Port := TdcmPortAS.Create;  //Age String
         vrAT: Port := TdcmPortAT.Create;  //Attribute Tag
         vrCS: Port := TdcmPortCS.Create;  //Code String
         vrDA: Port := TdcmPortDA.Create;  //Date
         vrDS: Port := TdcmPortDS.Create;  //Decimal String
         vrDT: Port := TdcmPortDT.Create;  //Date Time
         vrFL: Port := TdcmPortFL.Create;  //Floating Point Single
         vrFD: Port := TdcmPortFD.Create;  //Floating Point Double
         vrIS: Port := TdcmPortIS.Create;  //Integer String
         vrLO: Port := TdcmPortLO.Create;  //Long String
         vrLT: Port := TdcmPortLT.Create;  //Long Text
         vrOB: Port := TdcmPortOB.Create;  //Other Byte
         vrOD: Port := TdcmPortOD.Create;  //Other Double
         vrOF: Port := TdcmPortOF.Create;  //Other Float
         vrOL: Port := TdcmPortOL.Create;  //Other Long
         vrOW: Port := TdcmPortOW.Create;  //Other Word
         vrPN: Port := TdcmPortPN.Create;  //Person Name
         vrSH: Port := TdcmPortSH.Create;  //Short String
         vrSL: Port := TdcmPortSL.Create;  //Signed Long
         vrSQ: Port := TdcmPortSQ.Create;  //Sequence of Items
         vrSS: Port := TdcmPortSS.Create;  //Signed Short
         vrST: Port := TdcmPortST.Create;  //Short Text
         vrTM: Port := TdcmPortTM.Create;  //Time
         vrUC: Port := TdcmPortUC.Create;  //Unlimited Characters
         vrUI: Port := TdcmPortUI.Create;  //Unique Identifier (UID)
         vrUL: Port := TdcmPortUL.Create;  //Unsigned Long
         vrUN: Port := TdcmPortUN.Create;  //Unknown
         vrUR: Port := TdcmPortUR.Create;  //Universal Resource Identifier or Universal Resource Locator (URI/URL)
         vrUS: Port := TdcmPortUS.Create;  //Unsigned Short
         vrUT: Port := TdcmPortUT.Create;  //Unlimited Text
         else  Port := TdcmPortUN.Create;
     end;
end;

procedure TdcmData.MakePortImag;
var
   PI :String;
   SX, SY, BA, BS, HB, PR :Word;
begin
     with _File do
     begin
          Assert( Assigned( Data[$0028,$0004] ), 'PhotometricInterpretation is not found!' );
          Assert( Assigned( Data[$0028,$0010] ), 'Row is not found!' );
          Assert( Assigned( Data[$0028,$0011] ), 'Columns is not found!' );
          Assert( Assigned( Data[$0028,$0100] ), 'BitsAllocated is not found!' );
          Assert( Assigned( Data[$0028,$0101] ), 'BitsStored is not found!' );
          Assert( Assigned( Data[$0028,$0102] ), 'HighBit is not found!' );
          Assert( Assigned( Data[$0028,$0103] ), 'PixelRepresentation is not found!' );

          PI := TdcmPortCS( Data[$0028,$0004].Port ).Value;  //Photometric Interpretation
          SY := TdcmPortUS( Data[$0028,$0010].Port ).Value;  //Row
          SX := TdcmPortUS( Data[$0028,$0011].Port ).Value;  //Columns
          BA := TdcmPortUS( Data[$0028,$0100].Port ).Value;  //Bits Allocated
          BS := TdcmPortUS( Data[$0028,$0101].Port ).Value;  //Bits Stored
          HB := TdcmPortUS( Data[$0028,$0102].Port ).Value;  //High Bit
          PR := TdcmPortUS( Data[$0028,$0103].Port ).Value;  //Pixel Representation
     end;

     case BA of
      08: if PR = 0 then Port := TdcmPortImagU08.Create
                    else Port := TdcmPortImagS08.Create;
      16: if PR = 0 then Port := TdcmPortImagU16.Create
                    else Port := TdcmPortImagS16.Create;
     else Assert( False, 'The number of bits is not supported!' );
     end;

     with Port as IdcmPortImag do
     begin
          KindP  := TKindPixel.Create( PI );
          BitsN  := BS;
          BitsI  := HB;
          CountX := SX;
          CountY := SY;
     end;
end;

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmData.Create( const File_:TdcmFile );
begin
     inherited Create;

     _File  := File_;
     _Tag   := TdcmTag.Create( $0000, $0000 );
     _ExpVR := TKindVR.vr00;
     _Data  := [];
     _Port  := nil;
end;

destructor TdcmData.Destroy;
begin

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
end;

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmFile

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

/////////////////////////////////////////////////////////////////////// アクセス

function TdcmFile.GetData( const Grup_,Elem_:THex4 ) :TdcmData;
begin
     Result := Items[ TdcmTag.Create( Grup_, Elem_ ) ];
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
