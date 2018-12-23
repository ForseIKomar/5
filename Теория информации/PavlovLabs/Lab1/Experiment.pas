unit Experiment;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, Menus, ExtCtrls, ExtFontDialog;

const
PassCadr='config.dat';

type
  TFormMain = class(TForm)
    Button1: TButton;
    Label5: TLabel;
    Button2: TButton;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    Timer1: TTimer;
    ComboBox1: TComboBox;
    N5: TMenuItem;
    N6: TMenuItem;
    PanelCadra: TPanel;
    Label2: TLabel;
    LCadr: TLabel;
    LTime: TLabel;
    Label7: TLabel;
    GroupBox1: TGroupBox;
    CadrInf: TLabel;
    GroupBox2: TGroupBox;
    PolInf: TLabel;
    FontDialog: TExtFontDialog;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure NewCadrInf;
    procedure ComboBox1Change(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CurCadr : integer;
  FormMain: TFormMain;

procedure MyInitialize;

implementation

{$R *.DFM}

uses TestStringsEdit, reportlab, password, ExtControls, numbersfun;

var
  TimeCalcul : longint;

function GetPolInf : string;
begin
     GetPolInf:=FormTestsEdit.Inform.Cells[PolInfCol,CurCadr];
end;

function GetCadrInf : string;
begin
     GetCadrInf:=FormTestsEdit.Inform.Cells[CadrInfCol,CurCadr];
end;

const
Button1S : array [0..1] of string=('Новый кадр','Обработано');

procedure TFormMain.Button1Click(Sender: TObject);
begin
     Case Button1.Tag of
     0 : begin
           N3.Enabled:=false;
           N6.Enabled:=false;
           N5.Enabled:=false;
           Button2.Enabled:=false;
           CadrInf.Caption:=GetCadrInf;
           TimeCalcul:=0;
           Timer1.Enabled:=true;
           Button1.Tag:=1;
         end;
     1 : begin
            N6.Enabled:=true;
            N5.Enabled:=true;
            N3.Enabled:=true;
            Timer1.Enabled:=false;
            ComboBox1.Enabled:=true;
            Label5.Enabled:=true;
            ActiveControl:=ComboBox1;
            CadrInf.Caption:='';
            Button1.Enabled:=false;
            Button2.Enabled:=false;
            Button1.Tag:=0;
         end;
     end;
     Button1.Caption:=Button1S[Button1.Tag];
end;

procedure TFormMain.NewCadrInf;
begin
     If CurCadr in [1..FormTestsEdit.Inform.RowCount-1] then begin
        PolInf.Caption:=GetPolInf;
        LCadr.Caption:=IntToStr( CurCadr );
        Button1.Enabled:=true;
        ActiveControl:=Button1;
        ComboBox1.Enabled:=false;
        Label5.Enabled:=false;
     end
     else begin
        SetEDIControls( FormMain, fsDisabled );
        PolInf.Caption:='';
        LCadr.Caption:='нет больше кадров';
     end;
     LTime.Caption:='';
     ComboBox1.ItemIndex:=-1;
     Button2.Enabled:=CurCadr>1;
end;

procedure TFormMain.Button2Click(Sender: TObject);
begin
     FormResult.ShowModal;
end;

procedure TFormMain.N4Click(Sender: TObject);
begin
     Close;
end;

procedure TFormMain.N3Click(Sender: TObject);
begin
     if GetPassword( PassCadr ) then begin
        FormTestsEdit.ShowModal;
        PolInf.Caption:='';
        LCadr.Caption:='';
        SetEDIControls( FormMain, fsDisabled );
     end;
end;

procedure TFormMain.Timer1Timer(Sender: TObject);
begin
     Inc( TimeCalcul );
     LTime.Caption:=doubletostr( TimeCalcul*Timer1.Interval/1000,4,1 );
end;

procedure TFormMain.ComboBox1Change(Sender: TObject);
var
i,c             : integer;
PolInf, CadrInf : string;
begin
     PolInf:=GetPolInf;
     CadrInf:=GetCadrInf;
     c:=0;
     i:=1;
     while i<=length(CadrInf)-length(PolInf)+1 do
        If copy( CadrInf,i,length(PolInf) )=PolInf then begin
           Inc( c );
           Inc( i, length(PolInf) );
        end
        else
           Inc( i );
// Сохраняем данные эксперимента
     with FormResult.ReportL do begin
        Cells[_CADR,CurCadr]:=inttostr( CurCadr );
        Cells[_LPOLINF,CurCadr]:=inttostr( length(PolInf) );
        Cells[_LINF,CurCadr]:=inttostr( length(CadrInf) );
        Cells[_LINFINPOLINF,CurCadr]:=inttostr( length(CadrInf) div length(PolInf) );
        Cells[_NPOLINFININF,CurCadr]:=inttostr( c );
        Cells[_EXPNPOLINFININF,CurCadr]:=ComboBox1.Text;
        Cells[_EXPTIME,CurCadr]:=floattostr( TimeCalcul*Timer1.Interval/1000 );
        if Cells[_NPOLINFININF,CurCadr]<>Cells[_EXPNPOLINFININF,CurCadr] then
           Cells[_ERR,CurCadr]:='1'
        else
           Cells[_ERR,CurCadr]:='0';
     end;
     Inc(CurCadr);
     NewCadrInf;
end;

procedure TFormMain.N5Click(Sender: TObject);
begin
     if FormTestsEdit.Inform.VoidLine( 1 ) then CurCadr:=0
                                           else CurCadr:=1;
     SetEDIControls( PanelCadra, fsEnabled );
     NewCadrInf;
end;

procedure TFormMain.N6Click(Sender: TObject);
begin
     FontDialog.Execute;
     FontDialog.SaveFonts;
end;

procedure MyInitialize;
begin
     with FormMain.FontDialog do begin
        Items.AddGroup( 'Основные' );
        Items.AddItem( FormMain.Font );
        Items.AddItem( FormTestsEdit.Font );
        Items.AddItem( FormResult.Font );
        Items.AddItem( FormResult.Chart1.Legend.Font );
        Items.AddGroup( 'Время' );
        Items.AddItem( FormMain.LTime.Font );
        Items.AddGroup( 'Полезная информация' );
        Items.AddItem( FormMain.PolInf.Font );
        Items.AddGroup( 'Кадр информации' );
        Items.AddItem( FormMain.CadrInf.Font );
        Items.AddGroup( 'Номер кадра' );
        Items.AddItem( FormMain.LCadr.Font );
        Items.AddGroup( 'Таблицы результатов, кадров' );
        Items.AddItem( FormResult.ReportL.Font );
        Items.AddItem( FormResult.AverageL.Font );
        Items.AddItem( FormTestsEdit.Inform.Font );

        LoadFonts;
     end;
end;

procedure TFormMain.FormCreate(Sender: TObject);
begin
     Button1.Caption:=Button1S[Button1.Tag];
     SetEDIControls( FormMain, fsDisabled );
end;

end.
