unit LUX.DICOM;

interface //#################################################################### ■

uses System.Classes, System.SysUtils, System.Generics.Collections,
     LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

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

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmData

     TdcmData = class
     private
     protected
       _Tag   :TdcmTag;
       _ExpVR :TKindVR;
       _Data  :TBytes;
       ///// アクセス
       function GetIsStd :Boolean;
       function GetElem :TdcmElem;
       function GetOriVR :TKindVR;
       function GetSize :Cardinal;
       procedure SetSize( const Size_:Cardinal );
       function GetDesc :String;
     public
       constructor Create;
       destructor Destroy; override;
       ///// プロパティ
       property Tag   :TdcmTag  read   _Tag                ;
       property IsStd :Boolean  read GetIsStd              ;
       property Elem  :TdcmElem read GetElem               ;
       property OriVR :TKindVR  read GetOriVR              ;
       property ExpVR :TKindVR  read   _ExpVR              ;
       property Size  :Cardinal read GetSize  write SetSize;
       property Data  :TBytes   read   _Data               ;
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

var //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【変数】

    _BookTag_ :TdcmBookTag;
    _BookVR_  :TdcmBookVR;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

implementation //############################################################### ■

uses Main;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmHead

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

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
     if IsStd then Result := GetElem.Kind
              else Result := [];
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

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmData.Create;
begin
     inherited;

end;

destructor TdcmData.Destroy;
begin

     inherited;
end;

/////////////////////////////////////////////////////////////////////// メソッド

procedure TdcmData.ReadStream( const F_:TFileStream );
//-----------------------------------------------------
     function ReadWord :Word;
     begin
          F_.ReadData( Result );
     end;
     //------------------------------------------------
     function ReadCardinal :Cardinal;
     begin
          F_.ReadData( Result );
     end;
//-----------------------------------------------------
begin
     F_.Read( _Tag, SizeOf( _Tag ) );

     _ExpVR := _BookVR_.ReadStream( F_ );

     //// http://dicom.nema.org/medical/dicom/current/output/html/part05.html#sect_7.1.3
     //// 7.1.3 Data Element Structure with Implicit VR
     if _ExpVR = [] then Size := ReadCardinal
     else
     begin
          case _BookVR_[ _ExpVR ].Size of
            2: begin
                    Size := ReadWord;
               end;
            6: begin
                    F_.Seek( 2, TSeekOrigin.soCurrent );  //VR Reserved Block

                    Size := ReadCardinal;
               end;
          end;
     end;

     F_.ReadBuffer( _Data, Size );
end;

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmFile

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

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
          D := TdcmData.Create;

          D.ReadStream( F );

          AddOrSetValue( D.Tag, D );
     end;

     F.Free;
end;

function TdcmFile.TagsToArray :TArray<TdcmTag>;
begin
     Result := Keys.ToArray;

     TArray.Sort<TdcmTag>( Result, TdcmTagComp.Create );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

     _BookTag_ := TdcmBookTag.Create;
     _BookVR_  := TdcmBookVR .Create;

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

     _BookVR_ .Free;
     _BookTag_.Free;

end. //######################################################################### ■
