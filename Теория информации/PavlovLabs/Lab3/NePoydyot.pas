unit NePoydyot;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TPassChResForm = class(TForm)
    bbRetry: TButton;
    bbProehali: TButton;
    stDiagnosis: TStaticText;
    procedure bbProehaliClick(Sender: TObject);
    procedure bbRetryClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PassChResForm: TPassChResForm;

implementation

uses PassChange;

{$R *.DFM}

procedure TPassChResForm.bbProehaliClick(Sender: TObject);
begin
     PassChResForm.ModalResult:=1;
     PassChForm.ModalResult:=1;
end;

procedure TPassChResForm.bbRetryClick(Sender: TObject);
begin
     PassChResForm.ModalResult:=1;
end;

end.
