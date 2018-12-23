unit Neverno;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TOblomForm = class(TForm)
    bbAgain: TButton;
    StaticText1: TStaticText;
    bbNu_I_Ne_Nado: TButton;
    procedure bbAgainClick(Sender: TObject);
    procedure bbNu_I_Ne_NadoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OblomForm: TOblomForm;

implementation

uses PasCheck;

{$R *.DFM}

procedure TOblomForm.bbAgainClick(Sender: TObject);
begin
     OblomForm.ModalResult:=1;
end;

procedure TOblomForm.bbNu_I_Ne_NadoClick(Sender: TObject);
begin
     PassForm.ModalResult:=1;
     OblomForm.ModalResult:=1;
end;

end.
