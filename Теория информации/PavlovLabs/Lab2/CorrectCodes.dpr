program CorrectCodes;

uses
  Forms,
  Main in 'Main.pas' {FormMain},
  Result in 'Result.pas' {FormResult};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TFormResult, FormResult);
  MyInitialize;
  Application.Run;
end.
