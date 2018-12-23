unit SettingFonts;

interface

uses Graphics,Classes,Controls,StdCtrls,Dialogs;

type
TFontSet=class
           private
            GroupsNames : TStringList;
            GroupsItems : TList;
            procedure WriteFont( var f : textfile; Font : TFont; Title : string );
            procedure ReadFont( var f : textfile; Font : TFont );
           public
            constructor Create;
            destructor Destroy;
            procedure AddGroup( N : string );
            procedure AddItem( F : TFont );
            function GetFontGroup( G : integer ) : TFont;
            procedure SetFontGroup( G : integer; F : TFont );
            procedure AssignGroupsNames( LB : TStrings );
            procedure DialogSetFontGroup( G : integer );
            procedure LoadFonts( NF : string );
            procedure SaveFonts( NF : string );
         end;

implementation

constructor TFontSet.Create;
begin
     inherited Create;
     GroupsNames:=TStringList.Create;
     GroupsItems:=TList.Create;
end;

destructor TFontSet.Destroy;
var
i : integer;
begin
     inherited Destroy;
     GroupsNames.Free;
     for i:=0 to GroupsItems.Count-1 do TList(GroupsItems.Items[i]).Free;
     GroupsItems.Free;
end;

procedure TFontSet.AddGroup( N : string );
var
T : TList;
begin
     GroupsNames.Add( N );
     T:=TList.Create;
     GroupsItems.Add( T );
end;

procedure TFontSet.AddItem( F : TFont );
begin
     TList(GroupsItems.Items[GroupsItems.Count-1]).Add( F );
end;

procedure TFontSet.AssignGroupsNames( LB : TStrings );
begin
     LB.Assign(GroupsNames);
end;

function TFontSet.GetFontGroup( G : integer ) : TFont;
begin
     GetFontGroup:=TFont(TList(GroupsItems.Items[G]).Items[0]);
end;

procedure TFontSet.SetFontGroup( G : integer; F : TFont );
var
i         : integer;
ItemsList : TList;
begin
     ItemsList:=TList(GroupsItems.Items[G]);
     for i:=0 to ItemsList.Count-1 do
        TFont(ItemsList.Items[i]).Assign( F );
end;

procedure TFontSet.LoadFonts( NF : string );
var
f  : textfile;
G  : integer;
Fn : TFont;
begin
     Fn:=TFont.Create;
{$I-}
     AssignFile( f, NF );
     ReSet( f );
     If IOResult=0 then begin
        for G:=0 to GroupsItems.Count-1 do begin
           ReadFont( f, Fn );
           SetFontGroup( G, Fn );
        end;
        IOResult;
     end;
     CloseFile( f );
     IOResult;
     Fn.Free;
end;

procedure TFontSet.SaveFonts( NF : string );
var
f : textfile;
G : integer;
begin
{$I-}
     AssignFile( f, NF );
     Rewrite( f );
     If IOResult=0 then begin
       for G:=0 to GroupsItems.Count-1 do
          WriteFont( f, TFont(TList(GroupsItems.Items[G]).Items[0]), GroupsNames[G] );
       IOResult;
     end;
     CloseFile( f );
     IOResult;
end;

procedure TFontSet.DialogSetFontGroup( G : integer );
var
FD : TFontDialog;
begin
     FD:=TFontDialog.Create( nil );
     FD.Font.Assign( GetFontGroup( G ) );
     FD.Execute;
     SetFontGroup( G, FD.Font );
     FD.Free;
end;

procedure TFontSet.WriteFont( var f : textfile; Font : TFont; Title : string );
begin
{$I-}
     with Font do begin
        writeln( f, '[', Title, ']' );
        writeln( f, Name );
        writeln( f, Height );
        writeln( f, CharSet );
        If fsBold in Style then write( f, 'fsBold ' );
        If fsItalic in Style then write( f, 'fsItalic ' );
        If fsUnderline in Style then write( f, 'fsUnderline ' );
        If fsStrikeout in Style then write( f, 'fsStrikeout ' );
        writeln( f );
        writeln( f, Color );
        writeln( f );
     end;
end;

procedure TFontSet.ReadFont( var f : textfile; Font : TFont );
var
N  : TFontName;
H  : integer;
CS : TFontCharSet;
T  : string;
C  : TColor;
begin
{$I-}
     with Font do begin
        readln( f );
        readln( f, N ); Name:=N;
        readln( f, H ); Height:=H;
        readln( f, CS ); CharSet:=CS;
        readln( f, T );
        Style:=[];
        If pos( 'fsBold', T )>0 then Style:=Style+[fsBold];
        If pos( 'fsItalic', T )>0 then Style:=Style+[fsItalic];
        If pos( 'fsUnderline', T )>0 then Style:=Style+[fsUnderline];
        If pos( 'fsStrikeout', T )>0 then Style:=Style+[fsStrikeout];
        readln( f, C ); Color:=C;
        readln( f );
     end;
end;

end.
