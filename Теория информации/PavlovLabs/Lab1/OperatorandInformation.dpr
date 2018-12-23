program OperatorandInformation;

uses
  Forms,
  Experiment in 'Experiment.pas' {FormMain},
  reportlab in 'reportlab.pas' {FormResult},
  TestStringsEdit in 'TestStringsEdit.pas' {FormTestsEdit};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TFormResult, FormResult);
  Application.CreateForm(TFormTestsEdit, FormTestsEdit);
  MyInitialize;
  Application.Run;
end.
