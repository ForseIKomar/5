unit PasCheck;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TPassForm = class(TForm)
    laWarning: TLabel;
    edAttempt: TEdit;
    bbAttempt: TButton;
    bbZabyl: TButton;
    procedure bbAttemptClick(Sender: TObject);
    procedure bbZabylClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  var
  PassForm: TPassForm;
implementation

uses PerePAS, Neverno, HowMany;

{$R *.DFM}

procedure TPassForm.bbAttemptClick(Sender: TObject);
begin
     If edAttempt.Text=InitialPassword
     Then
         Begin
              edAttempt.Text:='';
              PassForm.ModalResult:=1;
              SetupForm.ShowModal;
         End
     Else
         Begin
              OblomForm.ShowModal;
              edAttempt.Text:='';
              edAttempt.SetFocus;
         End;
end;

procedure TPassForm.bbZabylClick(Sender: TObject);
begin
     PassForm.ModalResult:=1;
end;

procedure TPassForm.FormActivate(Sender: TObject);
begin
     edAttempt.Text:='';
     bbAttempt.Default:=True;
end;

procedure TPassForm.FormShow(Sender: TObject);
begin
     edAttempt.Text:='';
     edAttempt.SetFocus;
end;

end.
