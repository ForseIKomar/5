unit Result;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids;

type
  TFormResult = class(TForm)
    Button1: TButton;
    StringGrid1: TStringGrid;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormResult: TFormResult;

  TableRes : array [0..1,0..2] of record
                                Errors : byte;
                                Pop : byte;
                             end;

implementation

{$R *.DFM}
uses Main;

procedure TFormResult.FormShow(Sender: TObject);
var
i : byte;
begin
     for i:=0 to 2 do begin
        StringGrid1.Cells[1,i+1]:=
           inttostr(TableRes[0][i].Errors)+'/'+inttostr(TableRes[1][i].Errors);
        StringGrid1.Cells[2,i+1]:=
           inttostr(TableRes[0][i].Pop)+'/'+inttostr(TableRes[1][i].Pop);
     end;
end;

procedure TFormResult.Button1Click(Sender: TObject);
begin
     Close;
end;

procedure TFormResult.FormCreate(Sender: TObject);
var
i : byte;
begin
     for i:=0 to 2 do
        StringGrid1.Cells[0,i+1]:=FormMain.TypeCode.Items[i];
     StringGrid1.Cells[0,0]:='Вид кодирования';
     StringGrid1.Cells[1,0]:='Ошибок';
     StringGrid1.Cells[2,0]:='Попыток';
end;

end.
