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
               Cells [0,0]:= '�������';
               Cells [1,0]:= '�����';
               Cells [2,0]:= '�������';
               Cells [3,0]:= '��������';
               Cells [4,0]:= '������';
               Cells [0,1]:= '������������ �����������';
               Cells [0,2]:= '������������ �������������';
               Cells [0,3]:= '����������������� �����������';
               Cells [0,4]:= '����������������� �������������';
               Cells [0,5]:= '�������-���������� �����������';
               Cells [0,6]:= '�������-���������� �������������';
               Cells [0,7]:= '����� ��� ����� (�����������)';
               Cells [0,8]:= '����� ��� ����� (�������������)';
               Cells [0,9]:= '����� �� ������ (�����������)';
               Cells [0,10]:= '����� �� ������ (�������������)';
               Cells [0,11]:= '� ������������� ������� (�����������)';
               Cells [0,12]:= '� ������������� ������� (�������������)';
               Cells [0,13]:= '� ��������� ������� (�����������)';
               Cells [0,14]:= '� ��������� ������� (�������������)';
               Cells [0,15]:= '���������� ���������';
               Cells [0,16]:= '���������� ��������';
               Cells [0,17]:= '�������� �� ������ 2';
               Cells [0,18]:= '����� ����� �����';
               Cells [0,19]:= '�������������� ��������';
               Cells [0,20]:= '�������������� ���������';

          End;
end;

end.
