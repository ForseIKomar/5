unit TestStringsEdit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, ExtStringGrid;

type
  TFormTestsEdit = class(TForm)
    Button1: TButton;
    Inform: TExtStringGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure InformDelete(Sender: TObject);
    procedure InformRowMoved(Sender: TObject; FromIndex, ToIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTestsEdit: TFormTestsEdit;
const
  _INFFILE='inform.dat';
  PolInfCol=1;
  CadrInfCol=2;

implementation

{$R *.DFM}

procedure ReNumbCadrs;
var
i : integer;
begin
     for i:=1 to FormTestsEdit.Inform.RowCount do
        FormTestsEdit.Inform.Cells[0,i]:=inttostr( i );
end;

procedure TFormTestsEdit.FormCreate(Sender: TObject);
begin
     Inform.LoadfromFile( _INFFILE );
     Inform.Cells[0,0]:='Кадр';
     Inform.Cells[PolInfCol,0]:='Полезная информация';
     Inform.Cells[CadrInfCol,0]:='Кадр информации';
end;

procedure TFormTestsEdit.Button1Click(Sender: TObject);
begin
     Close;
end;

procedure TFormTestsEdit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Inform.DeleteVoidLines;
     Inform.SavetoFile( _INFFILE );
end;

procedure TFormTestsEdit.FormShow(Sender: TObject);
begin
     ActiveControl:=Inform;
     ReNumbCadrs;
end;

procedure TFormTestsEdit.InformDelete(Sender: TObject);
begin
     ReNumbCadrs;
end;

procedure TFormTestsEdit.InformRowMoved(Sender: TObject; FromIndex,
  ToIndex: Integer);
begin
     ReNumbCadrs;
end;

end.
