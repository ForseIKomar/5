unit Main;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, FlashEdit, Menus, ExtLabel, ExtFontDialog;

type
  TFormMain = class(TForm)
    ExpPult: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Response: TPanel;
    TypeFailure: TRadioGroup;
    SetPult: TPanel;
    TypeWork: TRadioGroup;
    TypeCode: TRadioGroup;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Button2: TButton;
    N5: TMenuItem;
    Button3: TButton;
    Errors: TExtLabel;
    Remain: TExtLabel;
    TextCode: TFlashEdit;
    TextNumb: TFlashEdit;
    FontDialog: TExtFontDialog;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure TextCodeKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure _StepWork;
  end;

var
  FormMain: TFormMain;

procedure MyInitialize;

implementation

uses binlib, ExtControls, Result;

{$R *.DFM}

var
StatusCode : record
                Numb      : string;
                Code      : string;
                fail      : byte;
end;

const
  TCon : array [0..2] of record // 0 -  на четность, 1 -  Хаффман, 2 -  Хемминг
                            minnn : byte;   // минимальное кодируемое число
                            bitsn : byte;   // бит в кодируемом числе
                            tests : byte;   // тестов в способе кодировке
                         end=( (minnn:0; bitsn:6; tests:8),
                               (minnn:1; bitsn:3; tests:8),
                               (minnn:1; bitsn:4; tests:8) );

procedure TFormMain.Button1Click(Sender: TObject);
begin
     SetEDIControls( ExpPult, fsEnabled );
     SetEDIControls( SetPult, fsDisabled );
     Randomize;
     Case TypeWork.ItemIndex of
        0 : begin
               TextCode.ReadOnly:=false;
               TextNumb.ReadOnly:=true;
               TypeFailure.Enabled:=false;
            end;
        1 : begin
               TextCode.ReadOnly:=true;
               TextNumb.ReadOnly:=false;
               TypeFailure.Enabled:=true;
            end;
     end;
     Remain.LongintN:=TCon[TypeCode.ItemIndex].tests;
     Errors.LongintN:=0;
     _StepWork;
end;

procedure TFormMain._StepWork;
var
N : word;
S : string;
begin
     with TCon[TypeCode.ItemIndex] do begin;
        N:= random( (1 shl bitsn)-1-minnn )+minnn;
        StatusCode.Numb:=_DecToBin( N, bitsn );
        case TypeCode.ItemIndex of
        0 : StatusCode.Code:=_SetParity( N, bitsn );
        1 : StatusCode.Code:=_SetHaffman( N, bitsn );
        2 : StatusCode.Code:=_SetHemming( N, bitsn );
        end;
        Case TypeWork.ItemIndex of
        0 : begin
               TextNumb.Text:=StatusCode.Numb;
               TextCode.Text:='';
               ActiveControl:=TextCode;
            end;
        1 : begin
               StatusCode.Fail:=random(2);
               S:=StatusCode.Code;
               _SetNoise( S, StatusCode.Fail );
               TextCode.Text:=S;
               TextNumb.Text:='';
               ActiveControl:=TextNumb;
            end;
        end;
     end;
     TextCode.MaxLength:=length(StatusCode.Code);
     TextNumb.MaxLength:=length(StatusCode.Numb);
end;

const
Button3S : array [0..1] of string=('Проверить','Далее');

procedure TFormMain.Button3Click(Sender: TObject);
var
Ok : boolean;
begin
     case Button3.Tag of
// Проверить
     0 : begin
            Case TypeWork.ItemIndex of
            0 : Ok:=TextCode.Text=StatusCode.Code;
            1 : Ok:=((TypeCode.ItemIndex=0)or(TextNumb.Text=StatusCode.Numb))and(TypeFailure.ItemIndex=StatusCode.fail);
            end;
            TextCode.CompStr( TextCode.Text, StatusCode.Code );
            TextNumb.CompStr( TextNumb.Text, StatusCode.Numb );
            If Ok then
               Response.Caption:='Верно'
            else begin
               Response.Caption:='Неверно';
               Errors.IncI;
            end;
            Remain.DecI;
            Button3.Tag:=1;
         end;
// Далее
     1 : begin
            TextCode.FlashPos:='';
            TextNumb.FlashPos:='';
            Response.Caption:='';
            If Remain.LongintN=0 then begin
               SetEDIControls( ExpPult, fsDisabled );
               SetEDIControls( SetPult, fsEnabled );
               ActiveControl:=Button1;
               TableRes[TypeWork.ItemIndex][TypeCode.ItemIndex].Errors:=Errors.LongintN;
               Inc(TableRes[TypeWork.ItemIndex][TypeCode.ItemIndex].Pop);
               Errors.LongintN:=0;
               TextNumb.Text:='';
               TextCode.Text:='';
            end
            else
               _StepWork;
            Button3.Tag:=0;
         end;
     end;
     Button3.Caption:=Button3S[Button3.Tag];
end;

procedure TFormMain.FormCreate(Sender: TObject);
begin
     Button3.Caption:=Button3S[Button3.Tag];
     SetEDIControls( ExpPult, fsDisabled );
     SetEDIControls( SetPult, fsDisabled );
end;

procedure TFormMain.N3Click(Sender: TObject);
begin
     Close;
end;

procedure MyInitialize;
begin
     with FormMain.FontDialog do begin
        Items.AddGroup( 'Основные' );
        Items.AddItem( FormMain.Font );
        Items.AddItem( FormResult.Font );
        Items.AddGroup( 'Индикаторы' );
        Items.AddItem( FormMain.Errors.Font );
        Items.AddItem( FormMain.Remain.Font );
        Items.AddGroup( 'Биты' );
        Items.AddItem( FormMain.Label5.Font );
        Items.AddItem( FormMain.Label6.Font );
        Items.AddItem( FormMain.Label7.Font );
        Items.AddItem( FormMain.Label8.Font );
        Items.AddItem( FormMain.Label9.Font );
        Items.AddItem( FormMain.Label10.Font );
        Items.AddItem( FormMain.Label11.Font );
        Items.AddGroup( 'Строки ввода' );
        Items.AddItem( FormMain.TextCode.Font );
        Items.AddItem( FormMain.TextNumb.Font );
        Items.AddGroup( 'Ответ' );
        Items.AddItem( FormMain.Response.Font );
        Items.AddGroup( 'Таблица результатов' );
        Items.AddItem( FormResult.StringGrid1.Font );

        LoadFonts;
     end;
end;

procedure TFormMain.N5Click(Sender: TObject);
begin
     FontDialog.Execute;
     FontDialog.SaveFonts;
end;

procedure TFormMain.N2Click(Sender: TObject);
begin
     SetEDIControls( SetPult, fsEnabled );
     ActiveControl:=Button1;
     SetEDIControls( ExpPult, fsDisabled );
     FillChar( TableRes, sizeof(TableRes), 0 );
     Button3.Tag:=0;
     Button3.Caption:=Button3S[Button3.Tag];
     Errors.LongintN:=0;
     Remain.LongintN:=0;
     TextCode.FlashPos:='';
     TextNumb.FlashPos:='';
     TextNumb.Text:='';
     TextCode.Text:='';
     Response.Caption:='';
end;

procedure TFormMain.Button2Click(Sender: TObject);
begin
     FormResult.ShowModal;
end;

procedure TFormMain.TextCodeKeyPress(Sender: TObject; var Key: Char);
begin
     if not (Key in ['0','1']) then Key:=#27;
end;

end.
