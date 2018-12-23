unit reportlab;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, StdCtrls, Series, TeEngine, ExtCtrls, TeeProcs, Chart;

type
  TFormResult = class(TForm)
    ReportL: TStringGrid;
    Button1: TButton;
    Chart1: TChart;
    Series1: TFastLineSeries;
    Series3: TFastLineSeries;
    KA: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    KB: TEdit;
    AverageL: TStringGrid;
    Label5: TLabel;
    Label6: TLabel;
    XAxis: TRadioGroup;
    YAxis: TRadioGroup;
    PutGraph: TButton;
    Label1: TLabel;
    Label7: TLabel;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure KAKeyPress(Sender: TObject; var Key: Char);
    procedure PutGraphClick(Sender: TObject);
    procedure ChangeAxisClick(Sender: TObject);
    procedure ChangeKoef(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure _CalculAverage;
  end;

var
  FormResult: TFormResult;
// константы для столюцов таблицы
const
_CADR=0;
_LPOLINF=1;
_LINF=2;
_LINFINPOLINF=3;
_NPOLINFININF=4;
_EXPNPOLINFININF=5;
_EXPTIME=6;
_ERR=7;

_NUMBCOL=7;

implementation

{$R *.DFM}
uses Experiment;

var
KAs,KBs : array [0.._NUMBCOL*_NUMBCOL-1] of string[6]; // линейные коэф. для графиков

procedure TFormResult._CalculAverage;
var
Xs,Ys : string[6];
i,j,n : integer;
findx : boolean;
begin
     AverageL.Cells[0,0]:=ReportL.Cells[XAxis.ItemIndex+1,0];
     AverageL.Cells[1,0]:=ReportL.Cells[YAxis.ItemIndex+1,0];
     AverageL.Cells[2,0]:='Кол зн';
     n:=0;
     for i:=1 to ReportL.RowCount-1 do begin
         Xs:=ReportL.Cells[XAxis.ItemIndex+1,i];
         Ys:=ReportL.Cells[YAxis.ItemIndex+1,i];
         findx:=false;
         for j:=1 to n do
             if AverageL.Cells[0,j]=Xs then begin
                AverageL.Cells[1,j]:=floattostr( strtofloat(AverageL.Cells[1,j])+strtofloat(Ys) );
                AverageL.Cells[2,j]:=floattostr( strtofloat(AverageL.Cells[2,j])+1 );
                findx:=true;
                break;
             end;
         if not findx then begin
            inc(n);
            AverageL.Cells[0,n]:=Xs;
            AverageL.Cells[1,n]:=Ys;
            AverageL.Cells[2,n]:='1';
         end;
     end;
     AverageL.RowCount:=n+1;
     for j:=1 to n do
         AverageL.Cells[1,j]:=floattostr( strtofloat(AverageL.Cells[1,j])/strtofloat(AverageL.Cells[2,j]) );
end;

procedure TFormResult.FormShow(Sender: TObject);
var
i : integer;
begin
     ReportL.RowCount:=CurCadr;
     Series1.Active:=false;
     Series3.Active:=false;
     for i:=0 to _NUMBCOL*_NUMBCOL-1 do begin KAs[i]:=''; KBs[i]:=''; end;
     _CalculAverage;
end;

procedure TFormResult.Button1Click(Sender: TObject);
begin
     Close;
end;

procedure TFormResult.FormCreate(Sender: TObject);
begin
// наименования столбцов таблицы
     with ReportL do begin
        Cells[ _CADR,0 ]:='Кадр';
        Cells[ _LPOLINF,0 ]:='Дл ПИ';
        Cells[ _LINF,0 ]:='Дл КИ';
        Cells[ _LINFINPOLINF,0 ]:='Дл КИо';
        Cells[ _NPOLINFININF,0 ]:='Кл ПИ';
        Cells[ _EXPNPOLINFININF,0 ]:='Кл ПИэ';
        Cells[ _EXPTIME,0 ]:='t';
        Cells[ _ERR,0 ]:='Ош';
     end;
end;

procedure TFormResult.KAKeyPress(Sender: TObject; var Key: Char);
begin
     if not (Key in ['0'..'9',',','-','+',#8]) then Key:=#27;
end;

procedure TFormResult.PutGraphClick(Sender: TObject);
var
i : integer;
A,B,x : double;
begin
        Series1.Active:=false;
        Series3.Active:=false;
        Series1.Clear;
        Series3.Clear;
        with AverageL do For i:=1 to RowCount-1 do
           Series1.AddXY( strtofloat( Cells[0,i] ),
                          strtofloat( Cells[1,i] ),
                          '', clRed );
        Series1.Active:=true;

        If (KA.Text<>'') and (KA.Text<>'') then begin
           A:=strtofloat( KA.Text );
           B:=strtofloat( KB.Text );
           with AverageL do for i:=1 to RowCount-1 do begin
                x:=strtofloat( Cells[0,i] );
                Series3.AddXY( x, A*x+B, '', clGreen );
           end;
           Series3.Active:=true;
        end;
end;

procedure TFormResult.ChangeAxisClick(Sender: TObject);
var
i : integer;
begin
     i:=YAxis.ItemIndex*_NUMBCOL+XAxis.ItemIndex;
     KA.Text:=KAs[i];
     KB.Text:=KBs[i];
     _CalculAverage;
end;

procedure TFormResult.ChangeKoef(Sender: TObject);
var
i : integer;
begin
     i:=YAxis.ItemIndex*_NUMBCOL+XAxis.ItemIndex;
     KAs[i]:=KA.Text;
     KBs[i]:=KB.Text;
end;

end.
