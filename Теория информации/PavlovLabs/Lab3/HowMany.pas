unit HowMany;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Spin, ExtCtrls;

type
  TSetupForm = class(TForm)
    laHeader: TLabel;
    Pro8: TLabel;
    laCode: TLabel;
    laDecode: TLabel;
    CodeOct: TSpinEdit;
    DecodeOct: TSpinEdit;
    Pro16: TLabel;
    CodeHex: TSpinEdit;
    DecodeHex: TSpinEdit;
    Pro2_10: TLabel;
    CodeBinDec: TSpinEdit;
    DecodeBinDec: TSpinEdit;
    ProBinNoSi: TLabel;
    CodeBinNoSi: TSpinEdit;
    DecodeBinNoSi: TSpinEdit;
    ProBinWiSi: TLabel;
    CodeBinWiSi: TSpinEdit;
    DecodeBinWiSi: TSpinEdit;
    ProBinFix: TLabel;
    CodeBinFix: TSpinEdit;
    DecodeBinFix: TSpinEdit;
    ProBinFlo: TLabel;
    CodeBinFlo: TSpinEdit;
    DecodeBinFlo: TSpinEdit;
    ToMul: TSpinEdit;
    ToCSi: TSpinEdit;
    ToAdd: TSpinEdit;
    ToAAd: TSpinEdit;
    ToAd2: TSpinEdit;
    ToASu: TSpinEdit;
    ProMul: TLabel;
    ProAdd: TLabel;
    ProAd2: TLabel;
    ProCSi: TLabel;
    ProAAd: TLabel;
    ProAsu: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    bbTry: TButton;
    bbNeTak: TButton;
    procedure bbTryClick(Sender: TObject);
    procedure bbNeTakClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure CodeOctChange(Sender: TObject);
    procedure DecodeOctChange(Sender: TObject);
    procedure CodeHexChange(Sender: TObject);
    procedure DecodeHexChange(Sender: TObject);
    procedure CodeBinDecChange(Sender: TObject);
    procedure DecodeBinDecChange(Sender: TObject);
    procedure CodeBinNoSiChange(Sender: TObject);
    procedure DecodeBinNoSiChange(Sender: TObject);
    procedure CodeBinWiSiChange(Sender: TObject);
    procedure DecodeBinWiSiChange(Sender: TObject);
    procedure CodeBinFixChange(Sender: TObject);
    procedure DecodeBinFixChange(Sender: TObject);
    procedure CodeBinFloChange(Sender: TObject);
    procedure DecodeBinFloChange(Sender: TObject);
    procedure ToMulChange(Sender: TObject);
    procedure ToAddChange(Sender: TObject);
    procedure ToAd2Change(Sender: TObject);
    procedure ToCSiChange(Sender: TObject);
    procedure ToAAdChange(Sender: TObject);
    procedure ToASuChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SetupForm: TSetupForm;

  implementation

uses PerePAS;

{$R *.DFM}

procedure TSetupForm.bbTryClick(Sender: TObject);
Var J:Byte;
begin
   AssignFile (INIFile, 'SysTrans.ini');
   Reset (INIFile);
   Seek (INIFile, 0);
   Read (INIFile, INIRecord);

   INIRecord.Zadaniy[0]:=StrToInt(CodeOct.Text);    INIRecord.Zadaniy[1]:=StrToInt(DecodeOct.Text);
   INIRecord.Zadaniy[2]:=StrToInt(CodeHex.Text);     INIRecord.Zadaniy[3]:=StrToInt(DecodeHex.Text);
   INIRecord.Zadaniy[4]:=StrToInt(CodeBinDec.Text);  INIRecord.Zadaniy[5]:=StrToInt(DecodeBinDec.Text);
   INIRecord.Zadaniy[6]:=StrToInt(CodeBinNoSi.Text); INIRecord.Zadaniy[7]:=StrToInt(DecodeBinNoSi.Text);
   INIRecord.Zadaniy[8]:=StrToInt(CodeBinWiSi.Text); INIRecord.Zadaniy[9]:=StrToInt(DecodeBinWiSi.Text);
   INIRecord.Zadaniy[10]:=StrToInt(CodeBinFix.Text); INIRecord.Zadaniy[11]:=StrToInt(DecodeBinFix.Text);
   INIRecord.Zadaniy[12]:=StrToInt(CodeBinFlo.Text); INIRecord.Zadaniy[13]:=StrToInt(DecodeBinFlo.Text);
   INIRecord.Zadaniy[14]:=StrToInt(ToAdd.Text);  INIRecord.Zadaniy[15]:=StrToInt(ToMul.Text);  INIRecord.Zadaniy[16]:=StrToInt(ToAd2.Text);
   INIRecord.Zadaniy[17]:=StrToInt(ToCsi.Text);  INIRecord.Zadaniy[18]:=StrToInt(ToAAd.Text);  INIRecord.Zadaniy[19]:=StrToInt(ToAsu.Text);

   Seek (INIFile,0);
   Write (INIFile, INIRecord);
   CloseFile (INIFile);

   Counter4CodeOct:=StrToInt (CodeOct.Text);        Counter4DecodeOct:=StrToInt(DecodeOct.Text);
   Counter4CodeHex:=StrToInt(CodeHex.Text);         Counter4DecodeHex:=StrToInt(DecodeHex.Text);
   Counter4CodeBinDec:=StrToInt(CodeBinDec.Text);   Counter4DecodeBinDec:=StrToInt(DecodeBinDec.Text);
   Counter4CodeBinNoSi:=StrToInt(CodeBinNoSi.Text); Counter4DecodeBinNoSi:=StrToInt(DecodeBinNoSi.Text);
   Counter4CodeBinWiSi:=StrToInt(CodeBinWiSi.Text); Counter4DecodeBinWiSi:=StrToInt(DecodeBinWiSi.Text);
   Counter4CodeBinFix:=StrToInt(CodeBinFix.Text);   Counter4DecodeBinFix:=StrToInt(DecodeBinFix.Text);
   Counter4CodeBinFlo:=StrToInt(CodeBinFlo.Text);   Counter4DecodeBinFlo:=StrToInt(DecodeBinFlo.Text);
   Counter4Add:=StrToInt(ToAdd.Text);  Counter4Mul:=StrToInt(ToMul.Text);  Counter4Ad2:=StrToInt(ToAd2.Text);
   Counter4CSi:=StrToInt(ToCsi.Text);  Counter4AAd:=StrToInt(ToAAd.Text);  Counter4ASu:=StrToInt(ToAsu.Text);
   SetupForm.ModalResult:=1;

   Vsego:=Counter4CodeOct+Counter4CodeHex+Counter4CodeBinDec+Counter4CodeBinNoSi+Counter4CodeBinWiSi+
        Counter4CodeBinFix+Counter4CodeBinFlo+Counter4DecodeOct+Counter4DecodeHex+Counter4DecodeBinDec+
        Counter4DecodeBinNoSi+Counter4DecodeBinWiSi+Counter4DecodeBinFix+Counter4DecodeBinFlo+
        Counter4Add+Counter4Mul+Counter4Ad2+Counter4CSi+Counter4AAd+Counter4Asu;

   ProgForm.Gaug.MaxValue:=Vsego;
   For J:=1 To 24 Do Done [J]:=False;
   If Counter4CodeOct=0 Then Done[0]:=True;         If Counter4DecodeOct=0 Then Done[1]:=True;
   If Counter4CodeHex=0 Then Done[2]:=True;         If Counter4DecodeHex=0 Then Done[3]:=True;
   If Counter4CodeBinDec=0 Then Done[4]:=True;      If Counter4DecodeBinDec=0 Then Done[5]:=True;
   If Counter4CodeBinNoSi=0 Then Done[6]:=True;     If Counter4DecodeBinNoSi=0 Then Done[7]:=True;
   If Counter4CodeBinWiSi=0 Then Done[8]:=True;     If Counter4DecodeBinWiSi=0 Then Done[9]:=True;
   If Counter4CodeBinFix=0 Then Done[10]:=True;     If Counter4DecodeBinFix=0 Then Done[11]:=True;
   If Counter4CodeBinFlo=0 Then Done[12]:=True;     If Counter4DecodeBinFlo=0 Then Done[13]:=True;
   If Counter4Mul=0 Then Done[14]:=True;            If Counter4Add=0 Then Done[16]:=True;
   If Counter4Ad2=0 Then Done[18]:=True;            If Counter4CSi=0 Then Done[20]:=True;
   If Counter4AAd=0 Then Done[22]:=True;            If Counter4ASu=0 Then Done[24]:=True;

end;
procedure TSetupForm.bbNeTakClick(Sender: TObject);
begin
     SetupForm.ModalResult:=1;
end;
procedure TSetupForm.FormActivate(Sender: TObject);
begin
   CodeOct.Text:=IntToStr (Counter4CodeOct);          DecodeOct.Text:=IntToStr (Counter4DecodeOct);
   CodeHex.Text:=IntToStr (Counter4CodeHex);          DecodeHex.Text:=IntToStr (Counter4DecodeHex);
   CodeBinDec.Text:=IntToStr (Counter4CodeBinDec);    DecodeBinDec.Text:=IntToStr (Counter4DecodeBinDec);
   CodeBinNoSi.Text:=IntToStr (Counter4CodeBinNoSi);  DecodeBinNoSi.Text:=IntToStr (Counter4DecodeBinNoSi);
   CodeBinWiSi.Text:=IntToStr (Counter4CodeBinWiSi);  DecodeBinWiSi.Text:=IntToStr (Counter4DecodeBinWiSi);
   CodeBinFix.Text:=IntToStr (Counter4CodeBinFix);    DecodeBinFix.Text:=IntToStr (Counter4DecodeBinFix);
   CodeBinFlo.Text:=IntToStr (Counter4DecodeBinFlo);  DecodeBinFlo.Text:=IntToStr (Counter4DecodeBinFlo);
   ToAdd.Text:=IntToStr (Counter4Add);  ToMul.Text:=IntToStr (Counter4Mul);  ToAd2.Text:=IntToStr (Counter4Ad2);
   ToCsi.Text:=IntToStr (Counter4CSi);  ToAAd.Text:=IntToStr (Counter4AAd);  ToAsu.Text:=IntToStr (Counter4Asu);
   bbTry.Default:=True;
end;

procedure TSetupForm.CodeOctChange(Sender: TObject);
          begin
     If CodeOct.Text='-1' Then CodeOct.Text:='0';
end;

procedure TSetupForm.DecodeOctChange(Sender: TObject);
begin
     If DecodeOct.Text='-1' Then DecodeOct.Text:='0';
end;

procedure TSetupForm.CodeHexChange(Sender: TObject);
begin
     If CodeHex.Text='-1' Then CodeHex.Text:='0';
end;

procedure TSetupForm.DecodeHexChange(Sender: TObject);
begin
     If DecodeHex.Text='-1' Then DecodeHex.Text:='0';
end;

procedure TSetupForm.CodeBinDecChange(Sender: TObject);
begin
     If CodeBinDec.Text='-1' Then CodeBinDec.Text:='0';
end;

procedure TSetupForm.DecodeBinDecChange(Sender: TObject);
begin
     If DecodeBinDec.Text='-1' Then DecodeBinDec.Text:='0';
end;

procedure TSetupForm.CodeBinNoSiChange(Sender: TObject);
begin
     If CodeBinNoSi.Text='-1' Then CodeBinNoSi.Text:='0';
end;

procedure TSetupForm.DecodeBinNoSiChange(Sender: TObject);
begin
     If DecodeBinNoSi.Text='-1' Then DecodeBinNoSi.Text:='0';
end;

procedure TSetupForm.CodeBinWiSiChange(Sender: TObject);
begin
     If CodeBinWiSi.Text='-1' Then CodeBinWiSi.Text:='0';
end;

procedure TSetupForm.DecodeBinWiSiChange(Sender: TObject);
begin
     If DecodeBinWiSi.Text='-1' Then DecodeBinWiSi.Text:='0';
end;

procedure TSetupForm.CodeBinFixChange(Sender: TObject);
begin
     If CodeBinFix.Text='-1' Then CodeBinFix.Text:='0';
end;

procedure TSetupForm.DecodeBinFixChange(Sender: TObject);
begin
     If DecodeBinFix.Text='-1' Then DecodeBinFix.Text:='0';
end;

procedure TSetupForm.CodeBinFloChange(Sender: TObject);
begin
     If CodeBinFlo.Text='-1' Then CodeBinFlo.Text:='0';
end;

procedure TSetupForm.DecodeBinFloChange(Sender: TObject);
begin
     If DecodeBinFlo.Text='-1' Then DecodeBinFlo.Text:='0';
end;

procedure TSetupForm.ToMulChange(Sender: TObject);
begin
     If ToMul.Text='-1' Then ToMul.Text:='0';
end;

procedure TSetupForm.ToAddChange(Sender: TObject);
begin
     If ToAdd.Text='-1' Then ToAdd.Text:='0';
end;

procedure TSetupForm.ToAd2Change(Sender: TObject);
begin
     If ToAd2.Text='-1' Then ToAd2.Text:='0';
end;

procedure TSetupForm.ToCSiChange(Sender: TObject);
begin
     If ToCSi.Text='-1' Then ToCSi.Text:='0';
end;

procedure TSetupForm.ToAAdChange(Sender: TObject);
begin
     If ToAAd.Text='-1' Then ToAAd.Text:='0';
end;

procedure TSetupForm.ToASuChange(Sender: TObject);
begin
     If ToASu.Text='-1' Then ToASu.Text:='0';
end;

end.
