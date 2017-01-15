unit LUX.DICOM;

interface //#################################################################### ■

uses System.Classes, System.SysUtils,
     LUX, LUX.Graph.Tree,
     LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     TDICOMData = class;
     TDICOM     = class;

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMHeader

     TDICOMHeader = packed record
     private
     public
       Prea :array [ 0..128-1 ] of     Byte;
       Pref :array [ 0..  4-1 ] of AnsiChar;
     end;

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMData

     TDICOMData = class( TTreeLeaf<TTreeNode> )
     private
     protected
       _Tag   :TDICOMTag;
       _ExpVR :TKindVR;
       _Data  :TBytes;
       ///// アクセス
       function GetOriVR :TKindVR;
       function GetSize :Cardinal;
       procedure SetSize( const Size_:Cardinal );
       function GetDesc :String;
     public
       constructor Create; override;
       destructor Destroy; override;
       ///// プロパティ
       property Tag   :TDICOMTag read   _Tag               ;
       property OriVR :TKindVR   read GetOriVR             ;
       property ExpVR :TKindVR   read   _ExpVR             ;
       property Data  :TBytes    read   _Data              ;
       property Size  :Cardinal  read GetSize write SetSize;
       property Desc  :String    read GetDesc              ;
       ///// メソッド
       procedure ReadStream( const F_:TFileStream );
     end;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOM

     TDICOM = class( TTreeRoot<TDICOMData> )
     private
     protected
     public
       constructor Create; override;
       destructor Destroy; override;
       ///// メソッド
       procedure LoadFromFile( const FileName_:String );
     end;

//const //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【定数】

var //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【変数】

    _Tags_ :TDICOMGrups;
    _VRs_  :TDICOMVRs;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

implementation //############################################################### ■

uses Main;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMHeader

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMTag

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMData

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

/////////////////////////////////////////////////////////////////////// アクセス

function TDICOMData.GetOriVR :TKindVR;
begin
     if _Tags_.ContainsKey( _Tag.Grup ) then
     begin
          with _Tags_[ _Tag.Grup ] do
          begin
               if ContainsKey( _Tag.Elem ) then
               begin
                    Result := Items[ _Tag.Elem ].Kind;
               end
               else Result := [];
          end;
     end
     else Result := [];
end;

function TDICOMData.GetSize :Cardinal;
begin
     Result := Length( _Data );
end;

procedure TDICOMData.SetSize( const Size_:Cardinal );
begin
     SetLength( _Data, Size_ );
end;

function TDICOMData.GetDesc :String;
begin
     if _Tags_.ContainsKey( _Tag.Grup ) then
     begin
          with _Tags_[ _Tag.Grup ] do
          begin
               if ContainsKey( _Tag.Elem ) then
               begin
                    Result := Items[ _Tag.Elem ].Desc;
               end
               else Result := 'E?';
          end;
     end
     else Result := 'G?';
end;

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TDICOMData.Create;
begin
     inherited;

end;

destructor TDICOMData.Destroy;
begin

     inherited;
end;

/////////////////////////////////////////////////////////////////////// メソッド

procedure TDICOMData.ReadStream( const F_:TFileStream );
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

     _ExpVR := _VRs_.ReadStream( F_ );

     //// http://dicom.nema.org/medical/dicom/current/output/html/part05.html#sect_7.1.3
     //// 7.1.3 Data Element Structure with Implicit VR
     if _ExpVR = [] then Size := ReadCardinal
     else
     begin
          case _VRs_.KindToSize[ _ExpVR ] of
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOM

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TDICOM.Create;
begin
     inherited;

end;

destructor TDICOM.Destroy;
begin

     inherited;
end;

/////////////////////////////////////////////////////////////////////// メソッド

procedure TDICOM.LoadFromFile( const FileName_:String );
var
   F :TFileStream;
   H :TDICOMHeader;
begin
     F := TFileStream.Create( FileName_, fmOpenRead );

     F.Read( H, SizeOf( H ) );

     Assert( H.Pref = 'DICM', 'It is not the DICOM file.' );

     while F.Position < F.Size do TDICOMData.Create( Self ).ReadStream( F );

     F.Free;
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

     _Tags_ := TDICOMGrups.Create;
     _VRs_  := TDICOMVRs  .Create;

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

     _VRs_ .Free;
     _Tags_.Free;

end. //######################################################################### ■
