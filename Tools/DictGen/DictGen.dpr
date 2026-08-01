program DictGen;

{$APPTYPE CONSOLE}

///// DICOM データ辞書生成器
///// ・公式配布の part06.xml（DocBook）から LUX.DICOM.Tags.pas / LUX.DICOM.UIDs.pas を生成する。
///// ・使い方: DictGen <part06.xml> <出力フォルダ>
///// ・規格改訂時（年約5回）は part06.xml を差し替えて再実行するだけでよい。
///// ・表に未知の VR 名が現れた場合は警告を出す（LUX.DICOM.VRs.pas へ 1 行足して再実行する）。

uses Winapi.Windows, Winapi.ActiveX,
     System.SysUtils, System.Classes, System.Variants, System.Win.ComObj,
     System.Generics.Collections, System.Generics.Defaults,
     System.IOUtils,
     LUX.DICOM.core in '..\..\Core\LUX.DICOM.core.pas',
     LUX.DICOM.VRs  in '..\..\Core\LUX.DICOM.VRs.pas' ;

type
     TTagEntry = record
       Key     :Cardinal;
       Mask    :Cardinal;
       VR1     :TdcmVRKind;
       VR2     :TdcmVRKind;
       VM      :String;
       Keyword :String;
       Name    :String;
       Retired :Boolean;
     end;

     TUIDEntry = record
       UID     :String;
       Name    :String;
       Keyword :String;
       Kind    :String;
       Retired :Boolean;
     end;

var
   _Tags    :TList<TTagEntry>;
   _UIDs    :TList<TUIDEntry>;
   _SkipN   :Integer = 0;
   _UnkVRs  :TStringList;
   _Version :String;

//------------------------------------------------------------------------------

function CleanText( const S_:String ) :String;
var
   C :Char;
begin
     ///// ゼロ幅空白（U+200B）・ソフトハイフン（U+00AD）・改行類を除去する

     Result := '';

     for C in S_ do
       if not ( ( C = #$200B ) or ( C = #$00AD ) or ( C = #$0D ) or ( C = #$0A ) or ( C = #$09 ) ) then Result := Result + C;

     Result := Result.Trim;

     while Result.Contains( '  ' ) do Result := Result.Replace( '  ', ' ' );
end;

function QuoteStr( const S_:String ) :String;
begin
     Result := '''' + S_.Replace( '''', '''''' ) + '''';
end;

//------------------------------------------------------------------------------

function ParseTag( const S_:String; out Key_,Mask_:Cardinal ) :Boolean;
var
   T :String;
   I :Integer;
   C :Char;
   K, M :Cardinal;
begin
     ///// '(GGGG,EEEE)' 形式。'x' はワイルドカード（例: (60xx,3000)、(0028,04x0)）

     Result := False;

     T := S_.Replace( '(', '' ).Replace( ')', '' ).Replace( ',', '' ).Trim;

     if T.Length <> 8 then Exit;

     K := 0;
     M := 0;

     for I := 1 to 8 do
     begin
          C := T[ I ];

          K := K shl 4;
          M := M shl 4;

          case C of
            '0'..'9': begin  K := K or Cardinal(      Ord( C ) - Ord( '0' ) );  M := M or $F;  end;
            'A'..'F': begin  K := K or Cardinal( 10 + Ord( C ) - Ord( 'A' ) );  M := M or $F;  end;
            'a'..'f': begin  K := K or Cardinal( 10 + Ord( C ) - Ord( 'a' ) );  M := M or $F;  end;
            'x', 'X': ;   // ワイルドカード桁: K=0, M=0
          else
               Exit;
          end;
     end;

     Key_  := K;
     Mask_ := M;

     Result := True;
end;

function ParseVR( const S_:String; out VR1_,VR2_:TdcmVRKind ) :Boolean;
var
   Ts :TArray<String>;

     function NameToVR( const N_:String ) :TdcmVRKind;
     begin
          if N_.Length = 2 then Result := VRKindOf( AnsiChar( N_[ 1 ] ), AnsiChar( N_[ 2 ] ) )
                           else Result := vrNone;

          ///// 2 大文字なのに未登録 → 規格に新 VR が追加された可能性

          if ( Result = vrNone ) and ( N_.Length = 2 )
         and CharInSet( N_[ 1 ], [ 'A'..'Z' ] ) and CharInSet( N_[ 2 ], [ 'A'..'Z' ] )
         and ( _UnkVRs.IndexOf( N_ ) < 0 ) then _UnkVRs.Add( N_ );
     end;

begin
     VR1_ := vrNone;
     VR2_ := vrNone;

     Ts := S_.Split( [ ' or ' ], TStringSplitOptions.ExcludeEmpty );

     if Length( Ts ) >= 1 then VR1_ := NameToVR( Ts[ 0 ].Trim );
     if Length( Ts ) >= 2 then VR2_ := NameToVR( Ts[ 1 ].Trim );

     Result := True;   // 'See Note' や空欄は vrNone のまま通す
end;

//------------------------------------------------------------------------------

procedure ParseTagTable( const Doc_:OleVariant; const TableID_:String );
var
   Rows, Cells :OleVariant;
   I, N        :Integer;
   E           :TTagEntry;
   TagS        :String;
begin
     Rows := Doc_.selectNodes( '//db:table[@xml:id="' + TableID_ + '"]/db:tbody/db:tr' );

     N := Rows.length;

     Writeln( Format( '%s : %d 行', [ TableID_, N ] ) );

     for I := 0 to N-1 do
     begin
          Cells := Rows.item( I ).selectNodes( 'db:td' );

          if Cells.length < 5 then
          begin
               Inc( _SkipN );  Continue;
          end;

          TagS := CleanText( Cells.item( 0 ).text );

          if not ParseTag( TagS, E.Key, E.Mask ) then
          begin
               Writeln( '  skip: ', TagS );

               Inc( _SkipN );  Continue;
          end;

          E.Name    := CleanText( Cells.item( 1 ).text );
          E.Keyword := CleanText( Cells.item( 2 ).text );

          ParseVR( CleanText( Cells.item( 3 ).text ), E.VR1, E.VR2 );

          E.VM := CleanText( Cells.item( 4 ).text );

          if Cells.length >= 6 then E.Retired := CleanText( Cells.item( 5 ).text ).Contains( 'RET' )
                               else E.Retired := False;

          _Tags.Add( E );
     end;
end;

//------------------------------------------------------------------------------

procedure ParseUIDTable( const Doc_:OleVariant; const TableID_:String );
var
   Rows, Cells :OleVariant;
   I, N        :Integer;
   E           :TUIDEntry;
begin
     Rows := Doc_.selectNodes( '//db:table[@xml:id="' + TableID_ + '"]/db:tbody/db:tr' );

     N := Rows.length;

     Writeln( Format( '%s : %d 行', [ TableID_, N ] ) );

     for I := 0 to N-1 do
     begin
          Cells := Rows.item( I ).selectNodes( 'db:td' );

          if Cells.length < 4 then
          begin
               Inc( _SkipN );  Continue;
          end;

          E.UID     := CleanText( Cells.item( 0 ).text );
          E.Name    := CleanText( Cells.item( 1 ).text );
          E.Keyword := CleanText( Cells.item( 2 ).text );
          E.Kind    := CleanText( Cells.item( 3 ).text );
          E.Retired := E.Name.Contains( '(Retired)' );

          if E.UID = '' then
          begin
               Inc( _SkipN );  Continue;
          end;

          _UIDs.Add( E );
     end;
end;

//------------------------------------------------------------------------------

function VRToID( const VR_:TdcmVRKind ) :String;
begin
     if VR_ = vrNone then Result := 'vrNone'
                     else Result := 'vr' + VRName( VR_ );
end;

//------------------------------------------------------------------------------

procedure EmitTags( const Path_:String );
var
   B :TStringBuilder;
   I :Integer;
   E :TTagEntry;
begin
     _Tags.Sort( TComparer<TTagEntry>.Construct(
          function( const A_,B_:TTagEntry ) :Integer
          begin
               if A_.Key < B_.Key then Result := -1
                                  else
               if A_.Key > B_.Key then Result := +1
                                  else Result := 0;
          end ) );

     B := TStringBuilder.Create;

     try
          B.AppendLine( 'unit LUX.DICOM.Tags;' );
          B.AppendLine( '' );
          B.AppendLine( '///// ★自動生成ファイル — 手で編集しないこと' );
          B.AppendLine( '///// ・生成器: Tools\DictGen\DictGen.dpr' );
          B.AppendLine( '///// ・生成元: ' + _Version );
          B.AppendLine( '' );
          B.AppendLine( 'interface //#################################################################### ■' );
          B.AppendLine( '' );
          B.AppendLine( 'uses LUX.DICOM.VRs,' );
          B.AppendLine( '     LUX.DICOM.Dictio;' );
          B.AppendLine( '' );
          B.AppendLine( 'const //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 C O N S T A N T 】' );
          B.AppendLine( '' );
          B.AppendLine( '      _DictVersion_ = ' + QuoteStr( _Version ) + ';' );
          B.AppendLine( '' );
          B.AppendLine( Format( '      _DictTable_ : array [ 0..%d ] of TdcmDictEntry = (', [ _Tags.Count-1 ] ) );

          for I := 0 to _Tags.Count-1 do
          begin
               E := _Tags[ I ];

               B.Append( '        ( Key:$' ).Append( IntToHex( E.Key, 8 ) )
                .Append( '; Mask:$'        ).Append( IntToHex( E.Mask, 8 ) )
                .Append( '; VR1:'          ).Append( VRToID( E.VR1 ) )
                .Append( '; VR2:'          ).Append( VRToID( E.VR2 ) )
                .Append( '; VM:'           ).Append( QuoteStr( E.VM ) )
                .Append( '; Keyword:'      ).Append( QuoteStr( E.Keyword ) )
                .Append( '; Name:'         ).Append( QuoteStr( E.Name ) )
                .Append( '; Retired:'      ).Append( BoolToStr( E.Retired, True ) )
                .Append( ' )' );

               if I < _Tags.Count-1 then B.AppendLine( ',' )
                                    else B.AppendLine( ' );' );
          end;

          B.AppendLine( '' );
          B.AppendLine( 'implementation //############################################################### ■' );
          B.AppendLine( '' );
          B.AppendLine( 'end. //######################################################################### ■' );

          TFile.WriteAllText( Path_, B.ToString, TEncoding.UTF8 );
     finally
          B.Free;
     end;
end;

procedure EmitUIDs( const Path_:String );
var
   B :TStringBuilder;
   I :Integer;
   E :TUIDEntry;
begin
     B := TStringBuilder.Create;

     try
          B.AppendLine( 'unit LUX.DICOM.UIDs;' );
          B.AppendLine( '' );
          B.AppendLine( '///// ★自動生成ファイル — 手で編集しないこと' );
          B.AppendLine( '///// ・生成器: Tools\DictGen\DictGen.dpr' );
          B.AppendLine( '///// ・生成元: ' + _Version );
          B.AppendLine( '' );
          B.AppendLine( 'interface //#################################################################### ■' );
          B.AppendLine( '' );
          B.AppendLine( 'uses LUX.DICOM.Dictio;' );
          B.AppendLine( '' );
          B.AppendLine( 'const //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【 C O N S T A N T 】' );
          B.AppendLine( '' );
          B.AppendLine( Format( '      _UIDTable_ : array [ 0..%d ] of TdcmUIDEntry = (', [ _UIDs.Count-1 ] ) );

          for I := 0 to _UIDs.Count-1 do
          begin
               E := _UIDs[ I ];

               B.Append( '        ( UID:'  ).Append( QuoteStr( E.UID ) )
                .Append( '; Name:'         ).Append( QuoteStr( E.Name ) )
                .Append( '; Keyword:'      ).Append( QuoteStr( E.Keyword ) )
                .Append( '; Kind:'         ).Append( QuoteStr( E.Kind ) )
                .Append( '; Retired:'      ).Append( BoolToStr( E.Retired, True ) )
                .Append( ' )' );

               if I < _UIDs.Count-1 then B.AppendLine( ',' )
                                    else B.AppendLine( ' );' );
          end;

          B.AppendLine( '' );
          B.AppendLine( 'implementation //############################################################### ■' );
          B.AppendLine( '' );
          B.AppendLine( 'end. //######################################################################### ■' );

          TFile.WriteAllText( Path_, B.ToString, TEncoding.UTF8 );
     finally
          B.Free;
     end;
end;

//------------------------------------------------------------------------------

///// COM の一時変数がスコープに残ったまま CoUninitialize を呼ぶと oleaut32 で AV になるため、
///// メインの処理は必ず手続きに包む。

procedure Run;
var
   Doc  :OleVariant;
   SrcP :String;
   OutP :String;
   OK   :Boolean;
   S    :String;
begin
     SrcP := ParamStr( 1 );
     OutP := IncludeTrailingPathDelimiter( ParamStr( 2 ) );

     Doc := CreateOleObject( 'MSXML2.DOMDocument.6.0' );

     Doc.async            := False;
     Doc.validateOnParse  := False;
     Doc.resolveExternals := False;

     Write( 'part06.xml を読込中 ... ' );

     OK := Doc.load( SrcP );

     if not OK then
     begin
          Writeln( 'XML の読込に失敗: ', Doc.parseError.reason );  Halt( 2 );
     end;

     Writeln( 'OK' );

     Doc.setProperty( 'SelectionLanguage'  , 'XPath' );
     Doc.setProperty( 'SelectionNamespaces', 'xmlns:db="http://docbook.org/ns/docbook"' );

     ///// 版数（例: 'DICOM PS3.6 2026c - Data Dictionary'）

     _Version := CleanText( Doc.selectSingleNode( '/db:book/db:subtitle' ).text );

     Writeln( '版: ', _Version );

     ///// タグ辞書: 第6章（データ要素）・第7章（File Meta）・第8章（ディレクトリ）・第9章（省略時）

     ParseTagTable( Doc, 'table_6-1' );
     ParseTagTable( Doc, 'table_7-1' );
     ParseTagTable( Doc, 'table_8-1' );
     ParseTagTable( Doc, 'table_9-1' );

     ///// UID 辞書: Annex A

     ParseUIDTable( Doc, 'table_A-1' );

     ///// 出力

     EmitTags( OutP + 'LUX.DICOM.Tags.pas' );
     EmitUIDs( OutP + 'LUX.DICOM.UIDs.pas' );

     Writeln( Format( 'タグ %d 件・UID %d 件を生成（スキップ %d 行）', [ _Tags.Count, _UIDs.Count, _SkipN ] ) );

     if _UnkVRs.Count > 0 then
     begin
          Writeln( '★警告: 未知の VR 名が規格表に現れた。LUX.DICOM.VRs.pas へ追加して再実行すること:' );

          for S in _UnkVRs do Writeln( '  ', S );

          ExitCode := 3;
     end;
end;

//------------------------------------------------------------------------------

begin
     SetConsoleOutputCP( CP_UTF8 );
     SetTextCodePage( Output, CP_UTF8 );

     if ParamCount < 2 then
     begin
          Writeln( '使い方: DictGen <part06.xml> <出力フォルダ>' );  Halt( 1 );
     end;

     _Tags   := TList<TTagEntry>.Create;
     _UIDs   := TList<TUIDEntry>.Create;
     _UnkVRs := TStringList.Create;

     CoInitialize( nil );

     try
          Run;
     finally
          CoUninitialize;

          _UnkVRs.Free;
          _UIDs  .Free;
          _Tags  .Free;
     end;
end.
