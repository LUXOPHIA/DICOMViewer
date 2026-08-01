unit LUX.DICOM;

interface //#################################################################### ■

///// ファサード
///// ・アプリケーションはこのユニットだけを uses すればよい。
///// 　（文字集合デコーダ・データ辞書・JPEG ロスレスコーデックもここ経由で有効になる）
///// ・Pixels は初回アクセス時に遅延生成する（OpenCL の Handle 遅延生成と同型）。

uses System.SysUtils, System.Classes,
     LUX.DICOM.core,
     LUX.DICOM.VRs,
     LUX.DICOM.Syntax,
     LUX.DICOM.Datset,
     LUX.DICOM.Reader,
     LUX.DICOM.Writer,
     LUX.DICOM.Pixels;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 T Y P E 】

     ///// 主要型の別名（アプリ側の uses を LUX.DICOM 1 本にするため）

     TdcmTag       = LUX.DICOM.core.TdcmTag;
     EdcmError     = LUX.DICOM.core.EdcmError;
     TdcmVRKind    = LUX.DICOM.VRs.TdcmVRKind;
     TdcmTranSyn   = LUX.DICOM.Syntax.TdcmTranSyn;
     TdcmDataset   = LUX.DICOM.Datset.TdcmDataset;
     TdcmElement   = LUX.DICOM.Datset.TdcmElement;
     TdcmValue     = LUX.DICOM.Datset.TdcmValue;
     TdcmSequence  = LUX.DICOM.Datset.TdcmSequence;
     TdcmFragments = LUX.DICOM.Datset.TdcmFragments;
     TdcmPixels    = LUX.DICOM.Pixels.TdcmPixels;

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 C L A S S 】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmFile

     TdcmFile = class
     private
       ///// アクセス
       function GetIssues :TStrings;
       function GetHasPixels :Boolean;
       function GetPixels :TdcmPixels;
     protected
       _FileName :String;
       _Meta     :TdcmDataset;
       _Body     :TdcmDataset;
       _Syntax   :TdcmTranSyn;
       _Issues   :TStringList;
       _Pixels   :TdcmPixels;
     public
       constructor Create; overload;
       constructor Create( const FileName_:String; const Strict_:Boolean = False ); overload;
       destructor Destroy; override;
       ///// プロパティ
       property FileName  :String      read _FileName   ;
       property Meta      :TdcmDataset read _Meta       ;
       property Body      :TdcmDataset read _Body       ;
       property Syntax    :TdcmTranSyn read _Syntax     ;
       property Issues    :TStrings    read GetIssues   ;   // パース時の警告（Lenient 時）
       property HasPixels :Boolean     read GetHasPixels;
       property Pixels    :TdcmPixels  read GetPixels   ;   // 遅延生成
       ///// メソッド
       procedure LoadFromFile( const FileName_:String; const Strict_:Boolean = False );
       procedure SaveToFile( const FileName_:String );      // Explicit VR LE（カプセル化は保全）
     end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 R O U T I N E 】

implementation //############################################################### ■

uses LUX.DICOM.Charse,                 // 文字集合デコーダの有効化
     LUX.DICOM.Dictio,                 // データ辞書の有効化
     LUX.DICOM.Codecs.JPEG.Lossless;   // JPEG ロスレスコーデックの自己登録

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 C L A S S 】

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmFile

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//////////////////////////////////////////////////////////////////////// アクセス

function TdcmFile.GetIssues :TStrings;
begin
     Result := _Issues;
end;

function TdcmFile.GetHasPixels :Boolean;
begin
     Result := Assigned( _Body ) and _Body.Contains( TdcmTag.Create( $7FE0, $0010 ) );
end;

function TdcmFile.GetPixels :TdcmPixels;
begin
     if not Assigned( _Pixels ) then _Pixels := TdcmPixels.Create( _Body, _Syntax );

     Result := _Pixels;
end;

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmFile.Create;
begin
     inherited;

     _Meta   := TdcmDataset.Create;
     _Body   := TdcmDataset.Create;
     _Issues := TStringList.Create;
     _Pixels := nil;
end;

constructor TdcmFile.Create( const FileName_:String; const Strict_:Boolean = False );
begin
     Create;

     LoadFromFile( FileName_, Strict_ );
end;

destructor TdcmFile.Destroy;
begin
     _Pixels.Free;
     _Issues.Free;
     _Body  .Free;
     _Meta  .Free;

     inherited;
end;

//////////////////////////////////////////////////////////////////////// メソッド

procedure TdcmFile.LoadFromFile( const FileName_:String; const Strict_:Boolean = False );
var
   R :TdcmReader;
begin
     FreeAndNil( _Pixels );

     R := TdcmReader.Create( Strict_ );

     try
          R.LoadFromFile( FileName_ );

          _Meta.Free;  _Meta := R.ExtractMeta;
          _Body.Free;  _Body := R.ExtractBody;

          _Syntax := R.Syntax;

          _Issues.Assign( R.Issues );

          _FileName := FileName_;
     finally
          R.Free;
     end;
end;

procedure TdcmFile.SaveToFile( const FileName_:String );
var
   W :TdcmWriter;
begin
     W := TdcmWriter.Create;

     try
          W.SaveToFile( FileName_, _Meta, _Body );
     finally
          W.Free;
     end;
end;

end. //######################################################################### ■
