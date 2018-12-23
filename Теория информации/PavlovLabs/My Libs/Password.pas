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
    procedure Button1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Enter(Sender: TObject);
    procedure Button3Click(Sender: TObject);
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
PassCap : array [OldPass..NewPass] of string=( 'Пароль', 'Новый пароль' );

function code( var S : string ) : string;
var
i : integer;
begin
     SetLength( Result, length(S) );
     for i:=1 to length( S ) do Result[i]:=char( (byte(S[i]) xor 188)+10 );
end;

function decode( var Code : string ) : string;
var
i : integer;
begin
     SetLength( Result, length(Code) );
     for i:=1 to length( Code ) do Result[i]:=char( (byte(Code[i])-10) xor 188 );
end;

function GetPassword( FilePass : string ) : boolean;
var
f : textfile;
begin
{$I-}
     FileP:=FilePass;
     AssignFile( f, FilePass );
     ReSet( f );
     If IOResult=0 then begin
        ReadLn( f, Pass ); IOResult;
        CloseFile( f ); IOResult;
        Pass:=decode( Pass );
     end
     else
        Pass:='';
     Ind:=OldPass;

     FormPassword:=TFormPassword.Create( nil );
     with FormPassword do begin
        if Pass='' then begin
           Button1.Enabled:=false;
           ActiveControl:=Button3;
        end
        else
           ActiveControl:=Button1;
        Label1.Caption:=PassCap[Ind];
        ShowModal;
        Result:=ModalResult=mrOk;
        Free;
     end;
end;

procedure TFormPassword.Button1Click(Sender: TObject);
var
f : textfile;
begin
     if Edit1.Text<>'' then begin
        Edit1.Text:=AnsiUpperCase( Edit1.Text );
        Case Ind of
        OldPass : if Pass=Edit1.Text then ModalResult:=mrOk;
        NewPass : begin
                     Pass:=Edit1.Text;
                     {$I-}
                     AssignFile( f, FileP );
                     ReWrite( f );
                     If IOResult=0 then begin
                        WriteLn( f, code(Pass) ); IOResult;
                        CloseFile( f ); IOResult;
                     end;
                     Ind:=OldPass;
                     Label1.Caption:=PassCap[Ind];
                     Button3.Enabled:=true;
                     ActiveControl:=Button1;
                  end;
        end;
        Edit1.Text:='';
     end;
end;

procedure TFormPassword.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if (ssAlt in Shift) and (key=VK_F4) then key:=27;
end;

procedure TFormPassword.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if ( key in ['-','\','/','.',',','0'..'9','а'..'я','А'..'Я','a'..'z','A'..'Z'] ) and (length(Edit1.Text)<50) then
        Edit1.Text:=Edit1.Text+key
     else
        if ( key=#8 ) then Edit1.Text:='';
end;

procedure TFormPassword.Edit1Enter(Sender: TObject);
begin
     ActiveControl:=Button1;
end;

procedure TFormPassword.Button3Click(Sender: TObject);
begin
     if (Pass=AnsiUpperCase( Edit1.Text )) or (Pass='' ) then begin
        Ind:=NewPass;
        Label1.Caption:=PassCap[Ind];
        Button1.Enabled:=true;
        ActiveControl:=Button1;
        Button3.Enabled:=false;
     end;
     Edit1.Text:='';
end;

end.
