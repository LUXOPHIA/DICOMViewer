unit Main;

interface //#################################################################### ■

uses System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, System.Math,
     FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
     FMX.Objects, FMX.TabControl, FMX.TreeView, FMX.Layouts, FMX.StdCtrls,
     FMX.SpinBox, FMX.EditBox, FMX.Controls.Presentation,
     LUX.DICOM,
     LUX.DICOM.Stream.FMX;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 C L A S S 】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TForm1

     TForm1 = class( TForm )
       LayoutT       :TLayout;
         ButtonO     :TButton;
         LabelI      :TLabel;
       TabControl1   :TTabControl;
         TabItem1    :TTabItem;
           Image1    :TImage;
           LayoutB   :TLayout;
             LabelC  :TLabel;
             TrackC  :TTrackBar;
             LabelW  :TLabel;
             TrackW  :TTrackBar;
             ButtonR :TButton;
             SpinF   :TSpinBox;
         TabItem2    :TTabItem;
           TreeView1 :TTreeView;
       OpenDialog1   :TOpenDialog;
       ///// イベント
       procedure FormCreate( Sender:TObject );
       procedure FormDestroy( Sender:TObject );
       procedure ButtonOClick( Sender:TObject );
       procedure ButtonRClick( Sender:TObject );
       procedure TrackChange( Sender:TObject );
       procedure SpinFChange( Sender:TObject );
       procedure Image1DragOver( Sender:TObject; const Data:TDragObject; const Point:TPointF; var Operation:TDragOperation );
       procedure Image1DragDrop( Sender:TObject; const Data:TDragObject; const Point:TPointF );
       procedure Image1MouseDown( Sender:TObject; Button:TMouseButton; Shift:TShiftState; X, Y:Single );
       procedure Image1MouseMove( Sender:TObject; Shift:TShiftState; X, Y:Single );
       procedure Image1MouseUp( Sender:TObject; Button:TMouseButton; Shift:TShiftState; X, Y:Single );
     private
       _File     :TdcmFile;
       _WC, _WW  :Double;    // 現在のウィンドウ
       _Frame    :Integer;
       _Updating :Boolean;   // トラックバーをコードから動かす間の再入抑止
       _Dragging :Boolean;   // 右ドラッグによる WL／WW 操作中
       _DragP    :TPointF;
       _DragC    :Double;
       _DragW    :Double;
       ///// メソッド
       procedure AddDataset( const Parent_:TFmxObject; const Dataset_:TdcmDataset );
       procedure ShowTree;
       procedure ShowImage;
       procedure SyncBars;
     public
       ///// メソッド
       procedure LoadFile( const FileName_:String );
     end;

var
   Form1 :TForm1;

implementation //############################################################### ■

{$R *.fmx}

uses LUX.DICOM.Dictio;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 C L A S S 】

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TForm1

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//////////////////////////////////////////////////////////////////////// メソッド

procedure TForm1.AddDataset( const Parent_:TFmxObject; const Dataset_:TdcmDataset );
var
   E :TdcmElement;
   N :TTreeViewItem;
   M :TTreeViewItem;
   S :String;
   L :String;
   I :Integer;
begin
     for E in Dataset_ do
     begin
          if E.VL = $FFFFFFFF then L := 'undef'
                              else L := E.VL.ToString;

          S := E.Text( Dataset_.Charse );

          if S.Length > 128 then S := S.Substring( 0, 128 ) + '…';

          N := TTreeViewItem.Create( Self );

          N.Text := Format( '%s %s %s  %s', [ E.Tag.ToString, E.VRText, L, DictKeyword( E.Tag ) ] );

          if S <> '' then N.Text := N.Text + ' = ' + S;

          N.Parent := Parent_;

          if E is TdcmSequence then
          begin
               for I := 0 to TdcmSequence( E ).Count-1 do
               begin
                    M := TTreeViewItem.Create( Self );

                    M.Text   := Format( 'Item #%d', [ I+1 ] );
                    M.Parent := N;

                    AddDataset( M, TdcmSequence( E )[ I ] );
               end;
          end;

          if E is TdcmFragments then
          begin
               for I := 0 to TdcmFragments( E ).Count-1 do
               begin
                    M := TTreeViewItem.Create( Self );

                    M.Text   := Format( 'Fragment #%d : %d バイト', [ I+1, Length( TdcmFragments( E )[ I ] ) ] );
                    M.Parent := N;
               end;
          end;
     end;
end;

//------------------------------------------------------------------------------

procedure TForm1.ShowTree;
var
   N :TTreeViewItem;
begin
     TreeView1.BeginUpdate;

     try
          TreeView1.Clear;

          N := TTreeViewItem.Create( Self );

          N.Text   := Format( 'File Meta（%d 要素）', [ _File.Meta.Count ] );
          N.Parent := TreeView1;

          AddDataset( N, _File.Meta );

          N.IsExpanded := True;

          N := TTreeViewItem.Create( Self );

          N.Text   := Format( 'Data Set（%d 要素）', [ _File.Body.Count ] );
          N.Parent := TreeView1;

          AddDataset( N, _File.Body );

          N.IsExpanded := True;
     finally
          TreeView1.EndUpdate;
     end;
end;

//------------------------------------------------------------------------------

procedure TForm1.ShowImage;
begin
     try
          DcmFrameToBitmap( _File.Pixels, _Frame, _WC, _WW, Image1.Bitmap );

          Image1.Repaint;

          LabelI.Text := Format( '%s　—　%s　　%d×%d　WC=%.0f WW=%.0f',
                                 [ ExtractFileName( _File.FileName ), _File.Syntax.Name,
                                   _File.Pixels.Info.CountX, _File.Pixels.Info.CountY, _WC, _WW ] );
     except
          on E:Exception do
          begin
               ///// 未対応転送構文などは例外死させず、理由を表示する（タグは Data タブで見られる）

               Image1.Bitmap.SetSize( 0, 0 );

               LabelI.Text := ExtractFileName( _File.FileName ) + '　—　表示不可: ' + E.Message;
          end;
     end;
end;

//------------------------------------------------------------------------------

procedure TForm1.SyncBars;
begin
     _Updating := True;

     try
          TrackC.Value := _WC;
          TrackW.Value := _WW;
     finally
          _Updating := False;
     end;
end;

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

//////////////////////////////////////////////////////////////////////// メソッド

procedure TForm1.LoadFile( const FileName_:String );
var
   WCa, WWa :Double;
begin
     try
          _File.LoadFromFile( FileName_ );

          ShowTree;

          _Frame := 0;

          if not _File.HasPixels then
          begin
               Image1.Bitmap.SetSize( 0, 0 );

               LabelI.Text := ExtractFileName( FileName_ ) + '　—　画像なし（' + _File.Syntax.Name + '）';

               Exit;
          end;

          ///// 既定ウィンドウ（タグ優先 → 実測 min/max）とスライダー範囲の設定

          _File.Pixels.DefaultWindow( 0, _WC, _WW );
          _File.Pixels.AutoWindow( 0, WCa, WWa );

          if WWa < 1 then WWa := 1;

          _Updating := True;

          try
               TrackC.Min := Min( _WC, WCa - WWa );
               TrackC.Max := Max( _WC, WCa + WWa );
               TrackW.Min := 1;
               TrackW.Max := Max( _WW, WWa * 2 );

               SpinF.Max     := _File.Pixels.FrameN;
               SpinF.Value   := 1;
               SpinF.Visible := _File.Pixels.FrameN > 1;
          finally
               _Updating := False;
          end;

          SyncBars;

          ShowImage;
     except
          on E:Exception do LabelI.Text := 'ERROR: ' + E.Message;
     end;
end;

//////////////////////////////////////////////////////////////////////// イベント

procedure TForm1.FormCreate( Sender:TObject );
begin
     _File := TdcmFile.Create;

     LabelI.Text := 'DICOM ファイルをドロップするか、Open で開いてください。';

     if ( ParamCount >= 1 ) and FileExists( ParamStr( 1 ) ) then LoadFile( ParamStr( 1 ) );
end;

procedure TForm1.FormDestroy( Sender:TObject );
begin
     _File.Free;
end;

//------------------------------------------------------------------------------

procedure TForm1.ButtonOClick( Sender:TObject );
begin
     if OpenDialog1.Execute then LoadFile( OpenDialog1.FileName );
end;

procedure TForm1.ButtonRClick( Sender:TObject );
begin
     if not _File.HasPixels then Exit;

     _File.Pixels.DefaultWindow( _Frame, _WC, _WW );

     SyncBars;

     ShowImage;
end;

//------------------------------------------------------------------------------

procedure TForm1.TrackChange( Sender:TObject );
begin
     if _Updating or not _File.HasPixels then Exit;

     _WC := TrackC.Value;
     _WW := Max( TrackW.Value, 1 );

     ShowImage;
end;

procedure TForm1.SpinFChange( Sender:TObject );
begin
     if _Updating or not _File.HasPixels then Exit;

     _Frame := EnsureRange( Round( SpinF.Value ) - 1, 0, _File.Pixels.FrameN - 1 );

     ShowImage;
end;

//------------------------------------------------------------------------------

procedure TForm1.Image1DragOver( Sender:TObject; const Data:TDragObject; const Point:TPointF; var Operation:TDragOperation );
begin
     if Length( Data.Files ) > 0 then Operation := TDragOperation.Copy;
end;

procedure TForm1.Image1DragDrop( Sender:TObject; const Data:TDragObject; const Point:TPointF );
begin
     if Length( Data.Files ) > 0 then LoadFile( Data.Files[ 0 ] );
end;

//------------------------------------------------------------------------------
///// 画像上の右ドラッグで WL／WW を調整する（横 = WW、縦 = WC。放射線科の標準 UX）

procedure TForm1.Image1MouseDown( Sender:TObject; Button:TMouseButton; Shift:TShiftState; X, Y:Single );
begin
     if ( Button = TMouseButton.mbRight ) and _File.HasPixels then
     begin
          _Dragging := True;

          _DragP := TPointF.Create( X, Y );
          _DragC := _WC;
          _DragW := _WW;
     end;
end;

procedure TForm1.Image1MouseMove( Sender:TObject; Shift:TShiftState; X, Y:Single );
var
   S :Double;
begin
     if not _Dragging then Exit;

     S := Max( ( TrackC.Max - TrackC.Min ) / 500, 1 );   // 1 ドット当たりの変化量

     _WC := _DragC + ( Y - _DragP.Y ) * S;
     _WW := Max( _DragW + ( X - _DragP.X ) * S, 1 );

     SyncBars;

     ShowImage;
end;

procedure TForm1.Image1MouseUp( Sender:TObject; Button:TMouseButton; Shift:TShiftState; X, Y:Single );
begin
     _Dragging := False;
end;

end. //######################################################################### ■
