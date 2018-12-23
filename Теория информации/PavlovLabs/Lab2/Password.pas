unit Password;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

function GetPassword( FilePass : string ) : boolean;

type
  TFormPassword = class(TForm)
    Edit1: TEdit;
    Button2: TButton;
    Button1: TButton;
    Button3: TButton;
    Label1: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Enter(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPassword: TFormPassword;

implementation

{$R *.DFM}
var
Pass    : string;
Ind     : ( OldPass, NewPass );
FileP   : string;
PassEnt : array [OldPass..NewPass] of string;
PassCap : array [OldPass..NewPass] of string=( 'Старый пароль', 'Новый пароль' );

procedure codedecode( var C : string; var DC : string );
var
i : integer;
begin
     if C='' then begin
        SetLength( C, length(DC) );
        for i:=1 to length( DC ) do C[i]:=char( (byte(DC[i]) xor 188)+10 );
     end
     else
        if DC='' then begin
           SetLength( DC, length(C) );
           for i:=1 to length( C ) do DC[i]:=char( (byte(C[i])-10) xor 188 );
        end;
end;

function GetPassword( FilePass : string ) : boolean;
var
f : textfile;
i : byte;
S : string;
begin
{$I-}
     FileP:=FilePass;
     Pass:='';
     AssignFile( f, FilePass );
     ReSet( f );
     If IOResult=0 then begin
        ReadLn( f, S ); IOResult;
        CloseFile( f ); IOResult;
        codedecode( S, Pass );
     end;
     Ind:=OldPass;
     PassEnt[Ind]:='';

     FormPassword:=TFormPassword.Create( nil );
     FormPassword.ShowModal;
     GetPassword:=FormPassword.ModalResult=1;
     FormPassword.Free;
end;

procedure TFormPassword.Button2Click(Sender: TObject);
begin
     ModalResult:=2;
end;

procedure TFormPassword.Button1Click(Sender: TObject);
var
f : textfile;
S : string;
begin
     if PassEnt[Ind]<>'' then begin
        PassEnt[Ind]:=AnsiUpperCase( PassEnt[Ind] );
        Case Ind of
        OldPass : if Pass=PassEnt[OldPass] then ModalResult:=1;
        NewPass : begin
                     Pass:=PassEnt[NewPass];
                     S:='';
                     codedecode( S, Pass );
                     {$I-}
                     AssignFile( f, FileP );
                     ReWrite( f );
                     If IOResult=0 then begin
                        WriteLn( f, S ); IOResult;
                        CloseFile( f ); IOResult;
                     end;
                     Ind:=OldPass;
                     Label1.Caption:=PassCap[Ind];
                     Button3.Enabled:=true;
                     FocusControl( Button1 );
                  end;
        end;
        Edit1.Text:='';
        PassEnt[Ind]:='';
     end;
end;

procedure TFormPassword.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if (ssAlt in Shift) and (key=VK_F4) then key:=27;
end;

procedure TFormPassword.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if ( key in ['0'..'9','а'..'я','А'..'Я','a'..'z','A'..'Z'] ) and (length(PassEnt[Ind])<50) then begin
        PassEnt[Ind]:=PassEnt[Ind]+key;
        Edit1.Text:=Edit1.Text+'*';
     end;
end;

procedure TFormPassword.Edit1Enter(Sender: TObject);
begin
     FocusControl( Button1 );
end;

procedure TFormPassword.Button3Click(Sender: TObject);
begin
     if (Pass=AnsiUpperCase( PassEnt[OldPass] )) or (Pass='' ) then begin
        Ind:=NewPass;
        Label1.Caption:=PassCap[Ind];
        Button1.Enabled:=true;
        FocusControl( Button1 );
        Button3.Enabled:=false;
     end;
     Edit1.Text:='';
     PassEnt[Ind]:='';
end;

procedure TFormPassword.FormShow(Sender: TObject);
begin
     if Pass='' then begin
        Button1.Enabled:=false;
        FocusControl( Button3 );
     end
     else
        FocusControl( Button1 );
     Label1.Caption:=PassCap[Ind];
end;

end.
