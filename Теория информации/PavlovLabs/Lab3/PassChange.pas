unit PassChange;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TPassChForm = class(TForm)
    laKakoyByl: TLabel;
    laKakoyStal: TLabel;
    laKakoyStal2: TLabel;
    edKakoyByl: TEdit;
    edKakoyStal2: TEdit;
    bbPridumal: TButton;
    bbNeNadoPoka: TButton;
    edKakoyStal: TEdit;
    procedure bbNeNadoPokaClick(Sender: TObject);
    procedure bbPridumalClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PassChForm  : TPassChForm;
  Z           : Byte;
implementation

uses NePoydyot, PerePAS, Results;

{$R *.DFM}

procedure TPassChForm.bbNeNadoPokaClick(Sender: TObject);
begin
     PassChForm.ModalResult:=1;
end;

procedure TPassChForm.bbPridumalClick(Sender: TObject);
begin
          If edKakoyByl.Text <>InitialPassword Then
        Begin
             PassChResForm.stDiagnosis.Caption:='Несовпадение старого пароля';
             PassChResForm.ShowModal;
             edKakoyByl.Text:='';
        End
     Else
        Begin
             If edKakoyStal.Text<>edKakoyStal2.Text Then
               Begin
                    PassChResForm.stDiagnosis.Caption:='Несовпадение нового пароля';
                    PassChResForm.ShowModal;
                    edKakoyStal.Text:='';
                    edKakoyStal.Text:='';
               End
             Else
               Begin
                    InitialPassword:=edKakoyStal.Text;
                    PassChForm.ModalResult:=1;
                    AssignFile (INIFile, 'SysTrans.ini');
                    {$I-}
                    Reset (INIFile);
                    {$I+}
                    If IOResult=0 Then
                       Begin
                            Read (INIFile,INIRecord);
                            INIRecord.Password:='';
                            For Z:=1 To Length (InitialPassword) Do INIRecord.Password:=INIRecord.Password+' ';
                            For Z:=1 To Length (InitialPassword) Do
                                Begin
                                     INIRecord.PassWord[Z]:= Chr(Ord(InitialPassword[Z]) XOr PassCodeByte);
                                End;
                            Seek (INIFile, 0);
                            Write (INIFile, INIRecord);
                            CloseFile (INIFile);
                       End
                   Else
                       Begin
                            ReWrite (INIFile);
                            INIRecord.Password:='';
                            For Z:=1 To Length (edKakoyStal.Text) Do INIRecord.Password:=INIRecord.Password+' ';
                            For Z:=1 To Length (edKakoyStal.Text) Do
                                Begin
                                     INIRecord.PassWord[J]:= Chr(Ord(edKakoyStal.Text[J]) XOr PassCodeByte);
                                End;
                            INIRecord.Font1.Name:='Arial';
                            INIRecord.Font1.Size:=9;
                            INIRecord.Font2.Name:='Arial';
                            INIRecord.Font2.Size:=9;
                            Seek (INIFile, 0);
                            Write (INIFile, INIRecord);
                            CloseFile (INIFile);
                       End;

               End;
        End;

end;
procedure TPassChForm.FormActivate(Sender: TObject);
begin
     bbPridumal.Default:=True;
end;

procedure TPassChForm.FormShow(Sender: TObject);
begin
     bbPridumal.Default:=True;
     edKakoyByl.Text:='';
     edKakoyStal.Text:='';
     edKakoyStal2.Text:='';

end;

end.
