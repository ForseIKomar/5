program SysTrans;

uses
  Forms,
  PerePAS in 'PerePAS.pas' {ProgForm},
  Results in 'Results.pas' {ResForm},
  PasCheck in 'PasCheck.pas' {PassForm},
  Neverno in 'Neverno.pas' {OblomForm},
  HowMany in 'HowMany.pas' {SetupForm},
  PassChange in 'PassChange.pas' {PassChForm},
  NePoydyot in 'NePoydyot.pas' {PassChResForm};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'Лабораторная №4';
  Application.CreateForm(TProgForm, ProgForm);
  Application.CreateForm(TResForm, ResForm);
  Application.CreateForm(TPassForm, PassForm);
  Application.CreateForm(TOblomForm, OblomForm);
  Application.CreateForm(TSetupForm, SetupForm);
  Application.CreateForm(TPassChForm, PassChForm);
  Application.CreateForm(TPassChResForm, PassChResForm);
  Application.Run;
end.
