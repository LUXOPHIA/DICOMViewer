unit Main;

interface //#################################################################### ■

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  System.Rtti,
  FMX.Grid.Style, FMX.Grid, FMX.Controls.Presentation, FMX.ScrollBox, FMX.Objects, FMX.TabControl,
  LUX, LUX.DICOM;

type
  TForm1 = class(TForm)
    TabControl1: TTabControl;
      TabItem1: TTabItem;
        Image1: TImage;
    TabItem2: TTabItem;
      StringGrid1: TStringGrid;
        StringColumn1: TStringColumn;
        StringColumn2: TStringColumn;
        StringColumn3: TStringColumn;
        StringColumn4: TStringColumn;
        StringColumn5: TStringColumn;
        StringColumn6: TStringColumn;
        StringColumn7: TStringColumn;
        StringColumn8: TStringColumn;
        StringColumn9: TStringColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Image1DragOver(Sender: TObject; const Data: TDragObject; const Point: TPointF; var Operation: TDragOperation);
    procedure Image1DragDrop(Sender: TObject; const Data: TDragObject; const Point: TPointF);
  private
    { private 宣言 }
    procedure ShowData;
    procedure ShowImage;
  public
    { public 宣言 }
    _DICOM :TdcmFile;
  end;

var
  Form1: TForm1;

implementation //############################################################### ■

{$R *.fmx}

uses LUX.DICOM.VRs,
     LUX.DICOM.Tags,
     LUX.DICOM.Ports,
     LUX.DICOM.Ports.Reco,
     LUX.DICOM.Ports.Text,
     LUX.DICOM.Ports.D1,
     LUX.DICOM.Ports.D2,
     LUX.DICOM.Ports.D2.Imag;

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

procedure TForm1.ShowData;
var
   I :Integer;
   Ts :TArray<TdcmTag>;
begin
     with StringGrid1 do
     begin
          RowCount := _DICOM.Count;

          Ts := _DICOM.TagsToArray;

          for I := 0 to _DICOM.Count-1 do
          begin
               Cells[ 0, I ] := (I+1).ToString;

               with _DICOM[ Ts[ I ] ] do
               begin
                    Cells[ 1, I ] := Tag.Grup.ToString;
                    Cells[ 2, I ] := Tag.Elem.ToString;
                    Cells[ 3, I ] := OriVR.ToString;
                    Cells[ 4, I ] := ExpVR.ToString;
                    Cells[ 5, I ] := Size.ToString;
                    Cells[ 6, I ] := Port.Text;
                    Cells[ 7, I ] := Desc;
               end;
          end;
     end;
end;

procedure TForm1.ShowImage;
var
   PD :IdcmPortImag;
   WC, WW, MinV :Double;
   B :TBitmapData;
   X, Y :Integer;
   C :TAlphaColorF;
begin
     with _DICOM do
     begin
          PD := Data[$7FE0,$0010].Port as IdcmPortImag;      //Pixel Data

          WC := TdcmPortDS( Data[$0028,$1050].Port ).Value;  //Window Center
          WW := TdcmPortDS( Data[$0028,$1051].Port ).Value;  //Window Width
     end;

     MinV := WC - WW / 2;

     Image1.Bitmap.SetSize( PD.CountX, PD.CountY );

     Image1.Bitmap.Map( TMapAccess.Write, B );

     for Y := 0 to PD.CountY-1 do
     begin
          for X := 0 to PD.CountX-1 do
          begin
               C.R := Clamp( ( PD.Pixels[ X, Y ] - MinV ) / WW, 0, 1 );
               C.G := C.R;
               C.B := C.R;
               C.A := 1;

               B.SetPixel( X, Y, C.ToAlphaColor );
          end;
     end;

     Image1.Bitmap.Unmap( B );
end;

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

procedure TForm1.FormCreate(Sender: TObject);
begin
     _DICOM := TdcmFile.Create;

     with StringGrid1 do
     begin
          OnDragOver := Image1DragOver;
          OnDragDrop := Image1DragDrop;
     end;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
     _DICOM.Free;
end;

////////////////////////////////////////////////////////////////////////////////

procedure TForm1.Image1DragOver(Sender: TObject; const Data: TDragObject; const Point: TPointF; var Operation: TDragOperation);
begin
     Operation := TDragOperation.Link;
end;

procedure TForm1.Image1DragDrop(Sender: TObject; const Data: TDragObject; const Point: TPointF);
begin
     _DICOM.LoadFromFile( Data.Files[0] );

     ShowData;
     ShowImage;
end;

end. //######################################################################### ■
