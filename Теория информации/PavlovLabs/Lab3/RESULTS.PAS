unit Results;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Grids;

type
  TResForm = class(TForm)
    pnBottom: TPanel;
    bbOK: TButton;
    sgResults: TStringGrid;
    procedure bbOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ResForm: TResForm;

implementation

{$R *.DFM}

procedure TResForm.bbOKClick(Sender: TObject);
begin
     ResForm.ModalResult:=1;
end;
procedure TResForm.FormCreate(Sender: TObject);
begin
     With sgResults Do
          Begin
               Cells [0,0]:= 'Задание';
               Cells [1,0]:= 'Всего';
               Cells [2,0]:= 'Сделано';
               Cells [3,0]:= 'Осталось';
               Cells [4,0]:= 'Ошибок';
               Cells [0,1]:= 'Восьмиричное кодирование';
               Cells [0,2]:= 'Восьмиричное декодирование';
               Cells [0,3]:= 'Шестнадцатиричное кодирование';
               Cells [0,4]:= 'Шестнадцатиричное декодирование';
               Cells [0,5]:= 'Двоично-десятичное кодирование';
               Cells [0,6]:= 'Двоично-десятичное декодирование';
               Cells [0,7]:= 'Целое без знака (кодирование)';
               Cells [0,8]:= 'Целое без знака (декодирование)';
               Cells [0,9]:= 'Целое со знаком (кодирование)';
               Cells [0,10]:= 'Целое со знаком (декодирование)';
               Cells [0,11]:= 'С фиксированной запятой (кодирование)';
               Cells [0,12]:= 'С фиксированной запятой (декодирование)';
               Cells [0,13]:= 'С плавающей запятой (кодирование)';
               Cells [0,14]:= 'С плавающей запятой (декодирование)';
               Cells [0,15]:= 'Логическое умножение';
               Cells [0,16]:= 'Логическое сложение';
               Cells [0,17]:= 'Сложение по модулю 2';
               Cells [0,18]:= 'Смена знака числа';
               Cells [0,19]:= 'Арифметическое сложение';
               Cells [0,20]:= 'Арифметическое вычитание';

          End;
end;

end.
