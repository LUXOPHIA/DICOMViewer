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
       Preamble :array [ 0..128-1 ] of     Byte;
       Prefix   :array [ 0..  4-1 ] of AnsiChar;
     end;

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMData

     TDICOMData = class( TTreeLeaf<TTreeNode> )
     private
     protected
       _Tag  :TDICOMTag;
       _VR0  :TKindVR;
       _VR1  :TKindVR;
       _Data :TBytes;
       ///// アクセス
       function GetSize :Cardinal;
       procedure SetSize( const Size_:Cardinal );
       function GetDesc :String;
     public
       constructor Create; override;
       destructor Destroy; override;
       ///// プロパティ
       property Tag  :TDICOMTag read   _Tag               ;
       property VR0  :TKindVR   read   _VR0               ;
       property VR1  :TKindVR   read   _VR1               ;
       property Data :TBytes    read   _Data              ;
       property Size :Cardinal  read GetSize write SetSize;
       property Desc :String    Read GetDesc              ;
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
     //------------------------------------------------
     function ReadUnkown :TKindVR;
     begin
          _VR0 := TKindVR.vr00;
          _VR1 := _VRs_.ReadStream( F_ );

          Result := _VR1;
     end;
//-----------------------------------------------------
var
   Es :TDICOMElems;
   VR :TKindVR;
begin
     F_.Read( _Tag, SizeOf( _Tag ) );

     if _Tags_.ContainsKey( _Tag.Grup ) then
     begin
          Es := _Tags_[ _Tag.Grup ];

          if Es.ContainsKey( _Tag.Elem ) then
          begin
               _VR0 := Es[ _Tag.Elem ].Kind;
               _VR1 := _VRs_.ReadStream( F_ );

               if _VR1 = TKindVR.vr00 then VR := _VR1
                                      else VR := _VR0;

          end
          else VR := ReadUnkown;
     end
     else VR := ReadUnkown;

     case _VRs_.KindToSize[ VR ] of
       2: begin
               Size := ReadWord;
          end;
       4: begin
               Size := ReadCardinal;
          end;
       6: begin
               F_.Seek( 2, TSeekOrigin.soCurrent );  //VR Reserved Block

               Size := ReadCardinal;
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

     Assert( H.Prefix = 'DICM', 'It is not the DICOM file.' );

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
