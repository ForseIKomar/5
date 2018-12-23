Unit PerePAS;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, {RXSwitch,} Buttons, VCLUtils, Menus, {RXShell,}
  RXClock, Gauges, Mask, ExtCtrls;

type
  TProgForm = class(TForm)
    bbCmon: TButton;
    bbVrodeTak: TButton;
    meCifra: TMaskEdit;
    stMantBit15: TStaticText;
    stMantBit14: TStaticText;
    stMantBit13: TStaticText;
    stMantBit12: TStaticText;
    stMantBit11: TStaticText;
    stMantBit10: TStaticText;
    stMantBit9: TStaticText;
    stMantBit7: TStaticText;
    stMantBit6: TStaticText;
    stMantBit5: TStaticText;
    stMantBit4: TStaticText;
    stMantBit3: TStaticText;
    stMantBit2: TStaticText;
    stMantBit1: TStaticText;
    stMantBit0: TStaticText;
    stPorBit0: TStaticText;
    stPorBit1: TStaticText;
    stPorBit2: TStaticText;
    stPorBit3: TStaticText;
    stPorBit4: TStaticText;
    stPorBit5: TStaticText;
    stPorBit6: TStaticText;
    stPorBit7: TStaticText;
    stMantBit8: TStaticText;
    stDone3: TStaticText;
    stDone4: TStaticText;
    stDone5: TStaticText;
    stDone6: TStaticText;
    stDone7: TStaticText;
    stDone8: TStaticText;
    stDone9: TStaticText;
    stDone10: TStaticText;
    stCode: TStaticText;
    stDecode: TStaticText;
    gbSelect: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    st0: TStaticText;
    st1: TStaticText;
    st2: TStaticText;
    st3: TStaticText;
    st4: TStaticText;
    st5: TStaticText;
    st6: TStaticText;
    st7: TStaticText;
    st8: TStaticText;
    st9: TStaticText;
    st10: TStaticText;
    st11: TStaticText;
    st12: TStaticText;
    GroupBox2: TGroupBox;
    Label14: TLabel;
    bb1: TBitBtn;
    bb2: TBitBtn;
    bb3: TBitBtn;
    bb4: TBitBtn;
    bb5: TBitBtn;
    bb6: TBitBtn;
    bb7: TBitBtn;
    bb8: TBitBtn;
    bb9: TBitBtn;
    bb0: TBitBtn;
    bbPoint: TBitBtn;
    bbc: TBitBtn;
    stDone2: TStaticText;
    stDone1: TStaticText;
    stErrMess: TStaticText;
    stCorrMess: TStaticText;
    bbf: TBitBtn;
    bbe: TBitBtn;
    bba: TBitBtn;
    bbb: TBitBtn;
    bbd: TBitBtn;
    bbClear: TBitBtn;
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    bbCut: TButton;
    bbMinus: TButton;
    Zadvig: TPanel;
    BigZadvig: TPanel;
    Zadvig2: TPanel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    stResBit6: TStaticText;
    stResBit7: TStaticText;
    stResBit5: TStaticText;
    stResBit4: TStaticText;
    stResBit3: TStaticText;
    stResBit2: TStaticText;
    stResBit1: TStaticText;
    stResBit0: TStaticText;
    MainMenu: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    FontDialog: TFontDialog;
    Razdelitel: TBevel;
    N4: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    GroupBox3: TGroupBox;
    laCoding: TLabel;
    laDecoding: TLabel;
    bbStats: TButton;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    bbInTrouble: TButton;
    bbYasno: TButton;
    RxClock1: TRxClock;
    Gaug: TGauge;
    Bevel8: TBevel;
    bbChangeTask: TButton;
    Shape2: TShape;
    Shape1: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Procedure MaskPartPor;
    Procedure MaskPartRes;
    Procedure GetPassword;
    Procedure ChangeFont;
    Procedure HideSomeDones;
    Procedure NoOneIsDone;
    Procedure ResetCounters;
    Procedure RestoreCounters;
    procedure bbCmonClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure bbVrodeTakClick(Sender: TObject);
    Procedure ShowHideCtrlButtons (What : Boolean);
    Procedure BlackCtrlButtons (What : Boolean);
    Procedure ShowHideCifButtons (What : Boolean);
    Procedure MaskPor (What : Boolean);
    Procedure MaskRes (What : Boolean);
    Procedure MaskMant (What : Boolean);
    Procedure MaskCodeDecode (What : Boolean);
    Procedure MaskHighBits (What : Boolean);
{    Procedure MaskSomeLeds (What : Boolean);}
    procedure FullReset;
    procedure GetReady;
    Procedure Oct (What : String);
    Procedure Hex (What : String);
    Procedure BinDec (What : String);
    Procedure BinNoSi (What : String);
    Procedure Poehali;
    Procedure BinWiSi (What : String);
    Procedure BinFix (What : String);
    Procedure BinFlo (What : String);
    Procedure BinOps (What : String);
    Procedure ShowCode (Skolko : Byte);
    Procedure GetCode (ChtoZaKod : Byte);
    Procedure GetCode2;
    Procedure GetResult;
    Procedure GoodBoy;
    Procedure BadBoy;
    procedure bb0Click(Sender: TObject);
    procedure bb1Click(Sender: TObject);
    procedure bb2Click(Sender: TObject);
    procedure bb3Click(Sender: TObject);
    procedure bb4Click(Sender: TObject);
    procedure bb5Click(Sender: TObject);
    procedure bb6Click(Sender: TObject);
    procedure bb7Click(Sender: TObject);
    procedure bb8Click(Sender: TObject);
    procedure bb9Click(Sender: TObject);
    procedure bbaClick(Sender: TObject);
    procedure bbbClick(Sender: TObject);
    procedure bbcClick(Sender: TObject);
    procedure bbdClick(Sender: TObject);
    procedure bbeClick(Sender: TObject);
    procedure bbfClick(Sender: TObject);
    procedure bbPointClick(Sender: TObject);
    procedure bbClearClick(Sender: TObject);
    procedure bbCutClick(Sender: TObject);
    procedure bbMinusClick(Sender: TObject);
    procedure stMantBit15Click(Sender: TObject);
    procedure stMantBit14Click(Sender: TObject);
    procedure stMantBit13Click(Sender: TObject);
    procedure stMantBit12Click(Sender: TObject);
    procedure stMantBit11Click(Sender: TObject);
    procedure stMantBit10Click(Sender: TObject);
    procedure stMantBit9Click(Sender: TObject);
    procedure stMantBit8Click(Sender: TObject);
    procedure stMantBit7Click(Sender: TObject);
    procedure stMantBit6Click(Sender: TObject);
    procedure stMantBit5Click(Sender: TObject);
    procedure stMantBit4Click(Sender: TObject);
    procedure stMantBit3Click(Sender: TObject);
    procedure stMantBit2Click(Sender: TObject);
    procedure stMantBit1Click(Sender: TObject);
    procedure stMantBit0Click(Sender: TObject);
    procedure stPorBit7Click(Sender: TObject);
    procedure stPorBit6Click(Sender: TObject);
    procedure stPorBit5Click(Sender: TObject);
    procedure stPorBit4Click(Sender: TObject);
    procedure stPorBit3Click(Sender: TObject);
    procedure stPorBit2Click(Sender: TObject);
    procedure stPorBit1Click(Sender: TObject);
    procedure stPorBit0Click(Sender: TObject);
    Procedure stResBit7Click(Sender: TObject);
    Procedure stResBit6Click(Sender: TObject);
    Procedure stResBit5Click(Sender: TObject);
    Procedure stResBit4Click(Sender: TObject);
    Procedure stResBit3Click(Sender: TObject);
    Procedure stResBit2Click(Sender: TObject);
    Procedure stResBit1Click(Sender: TObject);
    Procedure stResBit0Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure st1Click(Sender: TObject);
    procedure st2Click(Sender: TObject);
    procedure st3Click(Sender: TObject);
    procedure st4Click(Sender: TObject);
    procedure st5Click(Sender: TObject);
    procedure st6Click(Sender: TObject);
    procedure st7Click(Sender: TObject);
    procedure st8Click(Sender: TObject);
    procedure st9Click(Sender: TObject);
    procedure st10Click(Sender: TObject);
    procedure st11Click(Sender: TObject);
    procedure st12Click(Sender: TObject);
    procedure st0Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure stCodeClick(Sender: TObject);
    procedure stDecodeClick(Sender: TObject);
    procedure bbStatsClick(Sender: TObject);
    procedure bbInTroubleClick(Sender: TObject);
    Procedure NeZnaet;
    procedure bbYasnoClick(Sender: TObject);
    procedure meCifraClick(Sender: TObject);
    Procedure ShowPoryadok;
    procedure bbChangeTaskClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  TFontType  = Record
                     Name    : ShortString;
                     CharSet : Byte;
                     Size    : Byte;
                     Color   : LongInt;
                     Style   : TFontstyles;
{                     Italic,Bold,StrikeOut,UnderLine : Boolean;}
               End;
  TtINIRecord = Record
                     Password    : String[20];
                     Font1,Font2 : TFontType;
                     Zadaniy     : Array [0..19] Of Byte;
               End;

 const
  InitialPassword : String = 'PASSWORD';
  PassCodeByte : BYte = 117;
  Nado: Byte = 10;        { Сколько заданий }
  Cifr: Byte = 4;         { Сколько цифр при 8- и 16-ричной записи }
  MaxForBin : Byte = 8;  { Макс. число бит при двоичном коде }
  MaxForFix : Byte = 4;   { Число бит для двоичного c фикс. точкой, 1 - на знак}
  MaxForMant: Byte = 8;
  MaxForPor : Byte = 3;   { Число бит порядка }
  MaxForAddMul : Byte = 8; {Число бит для слож/умн.}
var
  Vsego     : Byte;
  INIRecord : TtIniRecord;
  INIFile : File Of TtINIRecord;
  Counter4CodeOct,
  Counter4DecodeOct,
  Counter4CodeHex,
  Counter4DecodeHex,
  Counter4CodeBinDec,
  Counter4DecodeBinDec,
  Counter4CodeBinNoSi,
  Counter4DecodeBinNoSi,
  Counter4CodeBinWiSi,
  Counter4DecodeBinWiSi,
  Counter4CodeBinFix,
  Counter4DecodeBinFix,
  Counter4CodeBinFlo,
  Counter4DecodeBinFlo,
  Counter4Add,Counter4Mul,Counter4Ad2,
  Counter4CSi,Counter4AAd,Counter4Asu : Byte;

  Errors    : Array [0..25] Of Byte;

  FontName  : TFontType;
  Font2Name : TFontType;
  ProgForm  : TProgForm;
  Ostalos   : Byte;
  TempNumb  : LongInt;
  Vopros    : String;
  Vopros2   : String;
  CorResult : String;
  CorResult1: String;
  CorResult2: String;
  TryResult : String;
  TryREsult1: String;
  TryREsult2: String;
  DecResult : Byte;
  J         : Byte;  {Промежуточный счётчик разрядов}
  Choice    : Byte; { Выбранный пункт меню}
  Choice2   : Byte; {Code/decode}
  Done      : Array [0..25] Of Boolean;
  implementation

uses Results, PasCheck, Neverno, HowMany, PassChange;

{$R *.DFM}

Procedure TProgForm.HideSomeDones;
Begin
     If Ostalos<10 Then stDone10.Color:=clBlack;
     If Ostalos<9 Then stDone9.Color:=clBlack;
     If Ostalos<8 Then stDone8.Color:=clBlack;
     If Ostalos<7 Then stDone7.Color:=clBlack;
     If Ostalos<6 Then stDone6.Color:=clBlack;
     If Ostalos<5 Then stDone5.Color:=clBlack;
     If Ostalos<4 Then stDone4.Color:=clBlack;
     If Ostalos<3 Then stDone3.Color:=clBlack;
     If Ostalos<2 Then stDone2.Color:=clBlack;
End;

Procedure TProgForm.NoOneIsDone;
Var J : Byte;
Begin
        For J:=0 To 25 Do Done[J]:=False;
        Gaug.Progress:=0;
End;

Procedure TProgForm.ResetCounters;
Var J : Byte;

Begin
   If FileExists ('SysTrans.ini') Then
      Begin
           AssignFile ( INIFile, 'SysTrans.ini');
           Reset (INIFile);
           Seek (INIFile, 0);
           Read (INIFile,INIRecord);
           Counter4CodeOct:=INIRecord.Zadaniy[0];      Counter4DecodeOct:=INIRecord.Zadaniy[1];
           Counter4CodeHex:=INIRecord.Zadaniy[2];      Counter4DecodeHex:=INIRecord.Zadaniy[3];
           Counter4CodeBinDec:=INIRecord.Zadaniy[4];   Counter4DecodeBinDec:=INIRecord.Zadaniy[5];
           Counter4CodeBinNoSi:=INIRecord.Zadaniy[6];  Counter4DecodeBinNoSi:=INIRecord.Zadaniy[7];
           Counter4CodeBinWiSi:=INIRecord.Zadaniy[8];   Counter4DecodeBinWiSi:=INIRecord.Zadaniy[9];
           Counter4CodeBinFix:=INIRecord.Zadaniy[10]; Counter4DecodeBinFix:=INIRecord.Zadaniy[11];
           Counter4CodeBinFlo:=INIRecord.Zadaniy[12]; Counter4DecodeBinFlo:=INIRecord.Zadaniy[13];
           Counter4Add:=INIRecord.Zadaniy[14]; Counter4Mul:=INIRecord.Zadaniy[15];
           Counter4Ad2:=INIRecord.Zadaniy[16]; Counter4CSi:=INIRecord.Zadaniy[17];
           Counter4AAd:=INIRecord.Zadaniy[18]; Counter4Asu:=INIRecord.Zadaniy[19];
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

      End
   Else
       Begin
            Counter4CodeOct:=3; Counter4DecodeOct:=3; Counter4CodeHex:=3;
            Counter4DecodeHex:=3;Counter4CodeBinDec:=3; Counter4DecodeBinDec:=3;
            Counter4CodeBinNoSi:=3; Counter4DecodeBinNoSi:=3; Counter4CodeBinWiSi:=3;
            Counter4DecodeBinWiSi:=3; Counter4CodeBinFix:=3; Counter4DecodeBinFix:=3;
            Counter4CodeBinFlo:=3; Counter4DecodeBinFlo:=3; Counter4Add:=3;
            Counter4Mul:=3; Counter4Ad2:=3; Counter4CSi:=3; Counter4AAd:=3; Counter4Asu:=3;

           INIRecord.Zadaniy[0]:=Counter4CodeOct;      INIRecord.Zadaniy[1]:=Counter4DecodeOct;
           INIRecord.Zadaniy[2]:=Counter4CodeHex;      INIRecord.Zadaniy[3]:=Counter4DecodeHex;
           INIRecord.Zadaniy[4]:=Counter4CodeBinDec;   INIRecord.Zadaniy[5]:=Counter4DecodeBinDec;
           INIRecord.Zadaniy[6]:=Counter4CodeBinNoSi;  INIRecord.Zadaniy[7]:=Counter4DecodeBinNoSi;
           INIRecord.Zadaniy[8]:=Counter4CodeBinWiSi;  INIRecord.Zadaniy[9]:=Counter4DecodeBinWiSi;
           INIRecord.Zadaniy[10]:=Counter4CodeBinFix; INIRecord.Zadaniy[11]:=Counter4DecodeBinFix;
           INIRecord.Zadaniy[12]:=Counter4CodeBinFlo; INIRecord.Zadaniy[13]:=Counter4DecodeBinFlo;
           INIRecord.Zadaniy[14]:=Counter4Add; INIRecord.Zadaniy[15]:=Counter4Mul;
           INIRecord.Zadaniy[16]:=Counter4Ad2; INIRecord.Zadaniy[17]:=Counter4CSi;
           INIRecord.Zadaniy[18]:=Counter4AAd; INIRecord.Zadaniy[19]:=Counter4Asu;
       End;
{   Write (INIFile,INIRecord);
   CloseFile (INIFile);       }
   Vsego:=Counter4CodeOct+Counter4CodeHex+Counter4CodeBinDec+Counter4CodeBinNoSi+Counter4CodeBinWiSi+
        Counter4CodeBinFix+Counter4CodeBinFlo+Counter4DecodeOct+Counter4DecodeHex+Counter4DecodeBinDec+
        Counter4DecodeBinNoSi+Counter4DecodeBinWiSi+Counter4DecodeBinFix+Counter4DecodeBinFlo+
        Counter4Add+Counter4Mul+Counter4Ad2+Counter4CSi+Counter4AAd+Counter4Asu;
   Gaug.MaxValue:=Vsego;
   SetupForm.CodeOct.Text:=IntToStr (Counter4CodeOct);          SetupForm.DecodeOct.Text:=IntToStr (Counter4DecodeOct);
   SetupForm.CodeHex.Text:=IntToStr (Counter4CodeHex);          SetupForm.DecodeHex.Text:=IntToStr (Counter4DecodeHex);
   SetupForm.CodeBinDec.Text:=IntToStr (Counter4CodeBinDec);    SetupForm.DecodeBinDec.Text:=IntToStr (Counter4DecodeBinDec);
   SetupForm.CodeBinNoSi.Text:=IntToStr (Counter4CodeBinNoSi);  SetupForm.DecodeBinNoSi.Text:=IntToStr (Counter4DecodeBinNoSi);
   SetupForm.CodeBinWiSi.Text:=IntToStr (Counter4CodeBinWiSi);  SetupForm.DecodeBinWiSi.Text:=IntToStr (Counter4DecodeBinWiSi);
   SetupForm.CodeBinFix.Text:=IntToStr (Counter4CodeBinFix);    SetupForm.DecodeBinFix.Text:=IntToStr (Counter4DecodeBinFix);
   SetupForm.CodeBinFlo.Text:=IntToStr (Counter4DecodeBinFlo);  SetupForm.DecodeBinFlo.Text:=IntToStr (Counter4DecodeBinFlo);
   SetupForm.ToAdd.Text:=IntToStr (Counter4Add);  SetupForm.ToMul.Text:=IntToStr (Counter4Mul);  SetupForm.ToAd2.Text:=IntToStr (Counter4Ad2);
   SetupForm.ToCsi.Text:=IntToStr (Counter4CSi);  SetupForm.ToAAd.Text:=IntToStr (Counter4AAd);  SetupForm.ToAsu.Text:=IntToStr (Counter4Asu);
   For J:=0 To 25 Do Errors[J]:=0;

   stDone1.Color:=clBtnFace;stDone2.Color:=clBtnFace;stDone3.Color:=clBtnFace;
   stDone4.Color:=clBtnFace;stDone5.Color:=clBtnFace;stDone6.Color:=clBtnFace;
   stDone7.Color:=clBtnFace;stDone8.Color:=clBtnFace;stDone9.Color:=clBtnFace;
   stDone10.Color:=clBtnFace;

End;

Procedure TProgForm.RestoreCounters;
Var J : Byte;
Begin
   Counter4CodeOct:=StrToInt (SetupForm.CodeOct.Text);        Counter4DecodeOct:=StrToInt(SetupForm.DecodeOct.Text);
   Counter4CodeHex:=StrToInt(SetupForm.CodeHex.Text);         Counter4DecodeHex:=StrToInt(SetupForm.DecodeHex.Text);
   Counter4CodeBinDec:=StrToInt(SetupForm.CodeBinDec.Text);   Counter4DecodeBinDec:=StrToInt(SetupForm.DecodeBinDec.Text);
   Counter4CodeBinNoSi:=StrToInt(SetupForm.CodeBinNoSi.Text); Counter4DecodeBinNoSi:=StrToInt(SetupForm.DecodeBinNoSi.Text);
   Counter4CodeBinWiSi:=StrToInt(SetupForm.CodeBinWiSi.Text); Counter4DecodeBinWiSi:=StrToInt(SetupForm.DecodeBinWiSi.Text);
   Counter4CodeBinFix:=StrToInt(SetupForm.CodeBinFix.Text);   Counter4DecodeBinFix:=StrToInt(SetupForm.DecodeBinFix.Text);
   Counter4CodeBinFlo:=StrToInt(SetupForm.CodeBinFlo.Text);   Counter4DecodeBinFlo:=StrToInt(SetupForm.DecodeBinFlo.Text);
   Counter4Add:=StrToInt(SetupForm.ToAdd.Text);  Counter4Mul:=StrToInt(SetupForm.ToMul.Text);  Counter4Ad2:=StrToInt(SetupForm.ToAd2.Text);
   Counter4CSi:=StrToInt(SetupForm.ToCsi.Text);  Counter4AAd:=StrToInt(SetupForm.ToAAd.Text);  Counter4ASu:=StrToInt(SetupForm.ToAsu.Text);
   SetupForm.ModalResult:=1;

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

   For J:=1 To 25 Do Errors[J]:=0;

   stDone1.Color:=clBtnFace;stDone2.Color:=clBtnFace;stDone3.Color:=clBtnFace;
   stDone4.Color:=clBtnFace;stDone5.Color:=clBtnFace;stDone6.Color:=clBtnFace;
   stDone7.Color:=clBtnFace;stDone8.Color:=clBtnFace;stDone9.Color:=clBtnFace;
   stDone10.Color:=clBtnFace;
end;


Procedure TProgForm.MaskHighBits (What : Boolean);
Begin
   If Not What
   Then Begin
     stMantBit15.Color:=clBtnFace;stMantBit14.Color:=clBtnFace;
     stMantBit13.Color:=clBtnFace;stMantBit12.Color:=clBtnFace;
{     stMantBit11.Color:=clBtnFace;stMantBit10.Color:=clBtnFace;
     stMantBit9.Color:=clBtnFace;stMantBit8.Color:=clBtnFace;}
   End
   Else Begin
     stMantBit15.Color:=clBlack;stMantBit14.Color:=clBlack;
     stMantBit13.Color:=clBlack;stMantBit12.Color:=clBlack;
     stMantBit11.Color:=clBlack;stMantBit10.Color:=clBlack;
     stMantBit9.Color:=clBlack;stMantBit8.Color:=clBlack;
   End;
End;

Procedure TProgForm.MaskMant (What : Boolean);
Begin
   If Not What
   Then Begin
     stMantBit15.Color:=clBtnFace;stMantBit14.Color:=clBtnFace;
     stMantBit13.Color:=clBtnFace;stMantBit12.Color:=clBtnFace;
     stMantBit11.Color:=clBtnFace;stMantBit10.Color:=clBtnFace;
     stMantBit9.Color:=clBtnFace;stMantBit8.Color:=clBtnFace;
     stMantBit7.Color:=clBtnFace;stMantBit6.Color:=clBtnFace;
     stMantBit5.Color:=clBtnFace;stMantBit4.Color:=clBtnFace;
     stMantBit3.Color:=clBtnFace;stMantBit2.Color:=clBtnFace;
     stMantBit1.Color:=clBtnFace;stMantBit0.Color:=clBtnFace;
   End
   Else Begin
     stMantBit15.Color:=clBlack;stMantBit14.Color:=clBlack;
     stMantBit13.Color:=clBlack;stMantBit12.Color:=clBlack;
     stMantBit11.Color:=clBlack;stMantBit10.Color:=clBlack;
     stMantBit9.Color:=clBlack;stMantBit8.Color:=clBlack;
     stMantBit7.Color:=clBlack;stMantBit6.Color:=clBlack;
     stMantBit5.Color:=clBlack;stMantBit4.Color:=clBlack;
     stMantBit3.Color:=clBlack;stMantBit2.Color:=clBlack;
     stMantBit1.Color:=clBlack;stMantBit0.Color:=clBlack;

   End;
End;

Procedure TProgForm.MaskRes (What : Boolean);
Begin
   If Not What
   Then Begin
     stResBit7.Color:=clBtnFace;stResBit6.Color:=clBtnFace;
     stResBit5.Color:=clBtnFace;stResBit4.Color:=clBtnFace;
     stResBit3.Color:=clBtnFace;stResBit2.Color:=clBtnFace;
     stResBit1.Color:=clBtnFace;stResBit0.Color:=clBtnFace;
     End
   else Begin
     stResBit7.Color:=clBlack;stResBit6.Color:=clBlack;
     stResBit5.Color:=clBlack;stResBit4.Color:=clBlack;
     stResBit3.Color:=clBlack;stResBit2.Color:=clBlack;
     stResBit1.Color:=clBlack;stResBit0.Color:=clBlack;
     End;
End;
{Procedure TProgForm.MaskSomeLeds (What : Boolean);
Begin
     If MaxForMant<16 Then stMantBit15.Color:=clBtnFace;
     If MaxForMant<15 Then stMantBit14.Color:=clBtnFace;
     If MaxForMant<14 Then stMantBit13.Color:=clBtnFace;
     If MaxForMant<13 Then stMantBit12.Color:=clBtnFace;
     If MaxForMant<12 Then stMantBit11.Color:=clBtnFace;
     If MaxForMant<11 Then stMantBit10.Color:=clBtnFace;
     If MaxForMant<10 Then stMantBit9.Color:=clBtnFace;
     If MaxForMant<9 Then stMantBit8.Color:=clBtnFace;
     If MaxForMant<8 Then stMantBit7.Color:=clBtnFace;
     If MaxForMant<7 Then stMantBit6.Color:=clBtnFace;
     If MaxForMant<6 Then stMantBit5.Color:=clBtnFace;
     If MaxForMant<5 Then stMantBit4.Color:=clBtnFace;
     If MaxForMant<4 Then stMantBit3.Color:=clBtnFace;
     If MaxForMant<3 Then stMantBit2.Color:=clBtnFace;
     If MaxForPor<8 Then stPorBit7.Color:=clBtnFace;
     If MaxForPor<7 Then stPorBit6.Color:=clBtnFace;
     If MaxForPor<6 Then stPorBit5.Color:=clBtnFace;
     If MaxForPor<5 Then stPorBit4.Color:=clBtnFace;
     If MaxForPor<4 Then stPorBit3.Color:=clBtnFace;
     If MaxForPor<3 Then stPorBit2.Color:=clBtnFace;
     If MaxForPor<2 Then stPorBit1.Color:=clBtnFace;
End;}

Procedure TProgForm.BadBoy;
Var Vysota,J : Byte;
Begin
              Inc (Errors [Choice*2+Choice2]);
              bbVrodeTak.Enabled:=False;
              bbinTrouble.Enabled:=False;
              MessageBeep(35);
               Vysota:=stErrMess.Height;
               For J:=Vysota Downto 0 Do
                   Begin
                        Zadvig.Height:=J;
                        Delay (1);
                   End;
               Delay (300);
               For J:=1 to Vysota Do
                   Begin
                        Zadvig.Height:=J;
                        Delay (1);
                   End;
              bbVrodeTak.Enabled:=True;
              bbInTrouble.Enabled:=True;

End;

Procedure TProgForm.GoodBoy;
Var Vysota,J : Byte;
Begin
         bbVrodeTak.Enabled:=False;
         bbInTrouble.Enabled:=False;
         bbinTrouble.Visible:=False;
         bbChangeTask.Visible:=False;
         MessageBeep(0);
               Vysota:=stCorrMess.Height;
               For J:=Vysota Downto 0 Do
                   Begin
                        Zadvig2.Height:=J;
                        Delay (1);
                   End;
               Delay (300);
               For J:=1 to Vysota Do
                   Begin
                        Zadvig2.Height:=J;
                        Delay (1);
                   End;

         bbVrodeTak.Enabled:=True;
         bbInTrouble.Enabled:=True;
         Case Choice*2+Choice2 Of
              0 : Begin
                Dec (Counter4CodeOct);
              End;
              1 : Begin
                  Dec (Counter4DeCodeOct);
              End;
              2 : Begin
                Dec (Counter4CodeHex);
              End;
              3 : Begin
                Dec (Counter4DecodeHex);
              End;
              4 : Begin
                Dec (Counter4CodeBinDec);
              End;
              5 : Begin
                Dec (Counter4DecodeBinDec);
              End;
              6 : Begin
                Dec (Counter4CodeBinNoSi);
              End;
              7 : Begin
                Dec (Counter4DecodeBinNoSi);
              End;
              8 : Begin
                Dec (Counter4CodeBinWiSi);
              End;
              9 : Begin
                Dec (Counter4DecodeBinWiSi);
              End;
              10: Begin
                  Dec (Counter4CodeBinFix);
              End;
              11: Begin
                  Dec (Counter4DecodeBinFix);
              End;
              12: Begin
                  Dec (Counter4CodeBinFlo);
              End;
              13: Begin
                  Dec (Counter4DecodeBinFlo);
              End;
              14,15: Begin
                     Dec (Counter4Mul);
              End;
              16,17: Begin
                     Dec (Counter4Add);
              End;
              18,19: Begin
                     Dec (Counter4Ad2);
              End;
              20,21: Begin
                     Dec (Counter4CSi);
              End;
              22,23: Begin
                     Dec (Counter4AAd);
              End;
              24,25: Begin
                     Dec (Counter4ASu);
              End;
         End;
         Dec (Ostalos);
         Gaug.Progress:=Gaug.Progress+1;
         Case Ostalos Of
              0:stDone1.Color:=clBlack;
              1:stDone2.Color:=clBlack;
              2:stDone3.Color:=clBlack;
              3:stDone4.Color:=clBlack;
              4:stDone5.Color:=clBlack;
              5:stDone6.Color:=clBlack;
              6:stDone7.Color:=clBlack;
              7:stDone8.Color:=clBlack;
              8:stDone9.Color:=clBlack;
              9:stDone10.Color:=clBlack;
         End;
         If Ostalos=0 Then
            Begin
                 bbVrodeTak.Enabled:=False;
                 bbInTrouble.Enabled:=False;
                 For J:=1 To 3 Do
                   Begin
                        stDone10.Color:=clYellow;
                        stDone1.Color:=clYellow;
                        Delay (50);
                        stDone10.Color:=clBlack;
                        stDone1.Color:=clBlack;
                        stDone9.Color:=clYellow;
                        stDone2.Color:=clYellow;
                        Delay (50);
                        stDone9.Color:=clBlack;
                        stDone2.Color:=clBlack;
                        stDone8.Color:=clYellow;
                        stDone3.Color:=clYellow;
                        Delay (50);
                        stDone8.Color:=clBlack;
                        stDone3.Color:=clBlack;
                        stDone7.Color:=clYellow;
                        stDone4.Color:=clYellow;
                        Delay (50);
                        stDone7.Color:=clBlack;
                        stDone4.Color:=clBlack;
                        stDone5.Color:=clYellow;
                        stDone6.Color:=clYellow;
                        Delay (50);
                        stDone6.Color:=clBlack;
                        stDone5.Color:=clBlack;
                        stDone5.Color:=clYellow;
                        stDone6.Color:=clYellow;
                        Delay (50);
                        stDone5.Color:=clBlack;
                        stDone6.Color:=clBlack;
                        stDone4.Color:=clYellow;
                        stDone7.Color:=clYellow;
                        Delay (50);
                        stDone4.Color:=clBlack;
                        stDone7.Color:=clBlack;
                        stDone3.Color:=clYellow;
                        stDone8.Color:=clYellow;
                        Delay (50);
                        stDone3.Color:=clBlack;
                        stDone8.Color:=clBlack;
                        stDone2.Color:=clYellow;
                        stDone9.Color:=clYellow;
                        Delay (50);
                        stDone2.Color:=clBlack;
                        stDone9.Color:=clBlack;
                        stDone1.Color:=clYellow;
                        stDone10.Color:=clYellow;
                        Delay (50);
                        stDone1.Color:=clBlack;
                        stDone10.Color:=clBlack;
                        Delay (50);
                  End;
                bbVrodeTak.Enabled:=True;
                bbInTrouble.Enabled:=True;
                Done [Choice*2+Choice2]:=True;
                If (Done[0] And Done [1] And Done [2]And Done [3]
                    And Done [4]  And Done [5]  And Done [6]  And Done [7]
                    And Done [8]  And Done [9]  And Done [10] And Done [11]
                    And Done [11] And Done [12] And Done [13] And Done [14]
                    And Done [16] And Done [18] And Done [20] And Done [22]
                    And Done [24])
                 Then
                 Begin
                    ResForm.sgResults.Cells [1,1]:= SetupForm.CodeOct.Text;      ResForm.sgResults.Cells [2,1]:=IntToStr(StrToInt(SetupForm.CodeOct.Text)-Counter4CodeOct);              ResForm.sgResults.Cells [3,1]:=IntToStr(Counter4CodeOct);      ResForm.sgResults.Cells [4,1]:=IntToStr (Errors[0]);
                    ResForm.sgResults.Cells [1,2]:= SetupForm.DecodeOct.Text;    ResForm.sgResults.Cells [2,2]:=IntToStr(StrToInt(SetupForm.DeCodeOct.Text)-Counter4DecodeOct);          ResForm.sgResults.Cells [3,2]:=IntToStr(Counter4DecodeOct);    ResForm.sgResults.Cells [4,2]:=IntToStr (Errors[1]);
                    ResForm.sgResults.Cells [1,3]:= SetupForm.Codehex.Text;      ResForm.sgResults.Cells [2,3]:=IntToStr(StrToInt(SetupForm.CodeHex.Text)-Counter4Codehex);              ResForm.sgResults.Cells [3,3]:=IntToStr(Counter4Codehex);      ResForm.sgResults.Cells [4,3]:=IntToStr (Errors[2]);
                    ResForm.sgResults.Cells [1,4]:= SetupForm.DecodeHex.Text;    ResForm.sgResults.Cells [2,4]:=IntToStr(StrToInt(SetupForm.DeCodeHex.Text)-Counter4DecodeHex);          ResForm.sgResults.Cells [3,4]:=IntToStr(Counter4DecodeHex);    ResForm.sgResults.Cells [4,4]:=IntToStr (Errors[3]);
                    ResForm.sgResults.Cells [1,5]:= SetupForm.CodeBinDec.Text;   ResForm.sgResults.Cells [2,5]:=IntToStr(StrToInt(SetupForm.CodeBinDec.Text)-Counter4CodeBinDec);        ResForm.sgResults.Cells [3,5]:=IntToStr(Counter4CodeBinDec);   ResForm.sgResults.Cells [4,5]:=IntToStr (Errors[4]);
                    ResForm.sgResults.Cells [1,6]:= SetupForm.DecodeBinDec.Text; ResForm.sgResults.Cells [2,6]:=IntToStr(StrToInt(SetupForm.DeCodeBinDec.Text)-Counter4DecodeBinDec);    ResForm.sgResults.Cells [3,6]:=IntToStr(Counter4DecodeBinDec); ResForm.sgResults.Cells [4,6]:=IntToStr (Errors[5]);
                    ResForm.sgResults.Cells [1,7]:= SetupForm.CodeBinNoSi.Text;  ResForm.sgResults.Cells [2,7]:=IntToStr(StrToInt(SetupForm.CodeBinNoSi.Text)-Counter4CodeBinNoSi);      ResForm.sgResults.Cells [3,7]:=IntToStr(Counter4CodeBinNoSi);  ResForm.sgResults.Cells [4,7]:=IntToStr (Errors[6]);
                    ResForm.sgResults.Cells [1,8]:= SetupForm.DecodeBinNoSi.Text;ResForm.sgResults.Cells [2,8]:=IntToStr(StrToInt(SetupForm.DeCodeBinNoSi.Text)-Counter4DecodeBinNoSi);  ResForm.sgResults.Cells [3,8]:=IntToStr(Counter4DecodeBinNoSi);ResForm.sgResults.Cells [4,8]:=IntToStr (Errors[7]);
                    ResForm.sgResults.Cells [1,9]:= SetupForm.CodeBinWiSi.Text;  ResForm.sgResults.Cells [2,9]:=IntToStr(StrToInt(SetupForm.CodeBinWiSi.Text)-Counter4CodeBinWiSi);      ResForm.sgResults.Cells [3,9]:=IntToStr(Counter4CodeBinWiSi);  ResForm.sgResults.Cells [4,9]:=IntToStr (Errors[8]);
                    ResForm.sgResults.Cells [1,10]:=SetupForm.DecodeBinWiSi.Text;ResForm.sgResults.Cells [2,10]:=IntToStr(StrToInt(SetupForm.DeCodeBinWiSi.Text)-Counter4DecodeBinWiSi); ResForm.sgResults.Cells [3,10]:=IntToStr(Counter4DecodeBinWiSi);ResForm.sgResults.Cells [4,10]:=IntToStr (Errors[9]);
                    ResForm.sgResults.Cells [1,11]:=SetupForm.CodeBinFix.Text;   ResForm.sgResults.Cells [2,11]:=IntToStr(StrToInt(SetupForm.CodeBinFix.Text)-Counter4CodeBinFix);       ResForm.sgResults.Cells [3,11]:=IntToStr(Counter4CodeBinFix);   ResForm.sgResults.Cells [4,11]:=IntToStr (Errors[10]);
                    ResForm.sgResults.Cells [1,12]:=SetupForm.DecodeBinFix.Text; ResForm.sgResults.Cells [2,12]:=IntToStr(StrToInt(SetupForm.DeCodeBinFix.Text)-Counter4DecodeBinFix);   ResForm.sgResults.Cells [3,12]:=IntToStr(Counter4DecodeBinFix); ResForm.sgResults.Cells [4,12]:=IntToStr (Errors[11]);
                    ResForm.sgResults.Cells [1,13]:=SetupForm.CodeBinFlo.Text;   ResForm.sgResults.Cells [2,13]:=IntToStr(StrToInt(SetupForm.CodeBinFlo.Text)-Counter4CodeBinFlo);       ResForm.sgResults.Cells [3,13]:=IntToStr(Counter4CodeBinFlo);   ResForm.sgResults.Cells [4,13]:=IntToStr (Errors[12]);
                    ResForm.sgResults.Cells [1,14]:=SetupForm.DecodeBinFlo.Text; ResForm.sgResults.Cells [2,14]:=IntToStr(StrToInt(SetupForm.DeCodeBinFlo.Text)-Counter4DecodeBinFlo);   ResForm.sgResults.Cells [3,14]:=IntToStr(Counter4DecodeBinFlo); ResForm.sgResults.Cells [4,14]:=IntToStr (Errors[13]);
                    ResForm.sgResults.Cells [1,15]:=SetupForm.ToMul.Text;        ResForm.sgResults.Cells [2,15]:=IntToStr(StrToInt(SetupForm.ToMul.Text)-Counter4Mul);                   ResForm.sgResults.Cells [3,15]:=IntToStr(Counter4Mul);          ResForm.sgResults.Cells [4,15]:=IntToStr (Errors[14]);
                    ResForm.sgResults.Cells [1,16]:=SetupForm.ToAdd.Text;        ResForm.sgResults.Cells [2,16]:=IntToStr(StrToInt(SetupForm.ToAdd.Text)-Counter4Add);                   ResForm.sgResults.Cells [3,16]:=IntToStr(Counter4Add);          ResForm.sgResults.Cells [4,16]:=IntToStr (Errors[16]);
                    ResForm.sgResults.Cells [1,17]:=SetupForm.ToAd2.Text;        ResForm.sgResults.Cells [2,17]:=IntToStr(StrToInt(SetupForm.ToAd2.Text)-Counter4Ad2);                   ResForm.sgResults.Cells [3,17]:=IntToStr(Counter4Ad2);          ResForm.sgResults.Cells [4,17]:=IntToStr (Errors[18]);
                    ResForm.sgResults.Cells [1,18]:=SetupForm.ToCSi.Text;        ResForm.sgResults.Cells [2,18]:=IntToStr(StrToInt(SetupForm.ToCSi.Text)-Counter4CSi);                   ResForm.sgResults.Cells [3,18]:=IntToStr(Counter4CSi);          ResForm.sgResults.Cells [4,18]:=IntToStr (Errors[20]);
                    ResForm.sgResults.Cells [1,19]:=SetupForm.ToAAd.Text;        ResForm.sgResults.Cells [2,19]:=IntToStr(StrToInt(SetupForm.ToAAd.Text)-Counter4AAd);                   ResForm.sgResults.Cells [3,19]:=IntToStr(Counter4AAd);          ResForm.sgResults.Cells [4,19]:=IntToStr (Errors[22]);
                    ResForm.sgResults.Cells [1,20]:=SetupForm.ToASu.Text;        ResForm.sgResults.Cells [2,20]:=IntToStr(StrToInt(SetupForm.ToAsu.Text)-Counter4ASu);                   ResForm.sgResults.Cells [3,20]:=IntToStr(Counter4ASu);          ResForm.sgResults.Cells [4,20]:=IntToStr (Errors[24]);
                    ResForm.ShowModal;
                    NoOneIsDone;
                    RestoreCounters;
                    Randomize;
//                    Choice:=0;
//                    Choice2:=0;
                    N6.Enabled:=True;
                    FullReset;
                 End
                 Else FullReset;
            End
         Else Poehali;
End;

Procedure TProgForm.MaskCodeDecode (What : Boolean);
Begin
     If Not What Then Begin
          stCode.Color  :=clBtnFace;
          stDeCode.Color:=clBtnFace;
          laCoding.Enabled:=False;
          laDeCoding.Enabled:=False;
     End
     Else Begin
          stCode.Color  :=clBlack;
          stDeCode.Color:=clBlack;
          If Choice2=0 Then stCode.Color  :=clYellow
          Else stDeCode.Color  :=clYellow;
          laCoding.Enabled:=true;
          laDeCoding.Enabled:=True;
     End;
End;

Procedure TProgForm.MaskPartPor;
Begin
     stPorBit0.Color:=clBtnFace;stPorBit1.Color:=clBtnFace;stPorBit2.Color:=clBtnFace;
     stPorBit3.Color:=clBtnFace;
End;

Procedure TProgForm.MaskPartRes;
Begin
     stResBit7.Color:=clBtnFace;stResBit6.Color:=clBtnFace;stResBit5.Color:=clBtnFace;
     stResBit3.Color:=clBtnFace; stResBit4.Color:=clBtnFace;
End;

Procedure TProgForm.MaskPor (What : Boolean);
Begin
     If What Then Begin
     stPorBit0.Color:=clBlack;stPorBit1.Color:=clBlack;stPorBit2.Color:=clBlack;
     stPorBit3.Color:=clBlack;stPorBit4.Color:=clBlack;stPorBit5.Color:=clBlack;
     stPorBit6.Color:=clBlack;stPorBit7.Color:=clBlack;
     End
     Else Begin
     stPorBit0.Color:=clBtnFace;stPorBit1.Color:=clBtnFace;stPorBit2.Color:=clBtnFace;
     stPorBit3.Color:=clBtnFace;stPorBit4.Color:=clBtnFace;stPorBit5.Color:=clBtnFace;
     stPorBit6.Color:=clBtnFace;stPorBit7.Color:=clBtnFace;
     End
End;

Procedure TProgForm.ShowHideCifButtons (What : Boolean);
Begin
     bb0.Enabled:=What;bb1.Enabled:=What;bb2.Enabled:=What;
     bb3.Enabled:=What;bb4.Enabled:=What;bb5.Enabled:=What;
     bb6.Enabled:=What;bb7.Enabled:=What;bb8.Enabled:=What;
     bb9.Enabled:=What;bbA.Enabled:=What;bbB.Enabled:=What;
     bbC.Enabled:=What;bbD.Enabled:=What;bbE.Enabled:=What;
     bbF.Enabled:=What;bbPoint.Enabled:=What;bbClear.Enabled:=What;
     bbCut.Enabled:=What;bbMinus.Enabled:=What;
End;

Procedure TProgForm.ShowHideCtrlButtons (What : Boolean);
Begin
     If Not What
        Then
            Begin
                 If stCode.Color=clBlack Then stCode.Color:=clBtnFace;If stDecode.Color=clBlack Then stDecode.Color:=clBtnFace;
                 If st0.Color=clBlack Then st0.Color:=clBtnFace;If st1.Color=clBlack Then st1.Color:=clBtnFace;
                 If st2.Color=clBlack Then st2.Color:=clBtnFace;If st3.Color=clBlack Then st3.Color:=clBtnFace;
                 If st4.Color=clBlack Then st4.Color:=clBtnFace;If st5.Color=clBlack Then st5.Color:=clBtnFace;
                 If st6.Color=clBlack Then st6.Color:=clBtnFace;If st7.Color=clBlack Then st7.Color:=clBtnFace;
                 If st8.Color=clBlack Then st8.Color:=clBtnFace;If st9.Color=clBlack Then st9.Color:=clBtnFace;
                 If st10.Color=clBlack Then st10.Color:=clBtnFace;If st11.Color=clBlack Then st11.Color:=clBtnFace;
                 If st12.Color=clBlack Then st12.Color:=clBtnFace;
            End
        Else
            Begin
                 If stCode.Color=clBtnFace Then stCode.Color:=clBlack;If stDecode.Color=clBtnFace Then stDecode.Color:=clBlack;
                 If st0.Color=clBtnFace Then st0.Color:=clBlack;If st1.Color=clBtnFace Then st1.Color:=clBlack;
                 If st2.Color=clBtnFace Then st2.Color:=clBlack;If st3.Color=clBtnFace Then st3.Color:=clBlack;
                 If st4.Color=clBtnFace Then st4.Color:=clBlack;If st5.Color=clBtnFace Then st5.Color:=clBlack;
                 If st6.Color=clBtnFace Then st6.Color:=clBlack;If st7.Color=clBtnFace Then st7.Color:=clBlack;
                 If st8.Color=clBtnFace Then st8.Color:=clBlack;If st9.Color=clBtnFace Then st9.Color:=clBlack;
                 If st10.Color=clBtnFace Then st10.Color:=clBlack;If st11.Color=clBtnFace Then st11.Color:=clBlack;
                 If st12.Color=clBtnFace Then st12.Color:=clBlack;
            End;
End;

Procedure TProgForm.BlackCtrlButtons (What : Boolean);
Begin
//     If Not What
//        Then
//            Begin
///                 If stCode.Color=clBlack Then stCode.Color:=clBtnFace;If stDecode.Color=clBlack Then stDecode.Color:=clBtnFace;
//                 If st0.Color=clBlack Then st0.Color:=clBtnFace;If st1.Color=clBlack Then st1.Color:=clBtnFace;
//                 If st2.Color=clBlack Then st2.Color:=clBtnFace;If st3.Color=clBlack Then st3.Color:=clBtnFace;
//                 If st4.Color=clBlack Then st4.Color:=clBtnFace;If st5.Color=clBlack Then st5.Color:=clBtnFace;
//                 If st6.Color=clBlack Then st6.Color:=clBtnFace;If st7.Color=clBlack Then st7.Color:=clBtnFace;
//                 If st8.Color=clBlack Then st8.Color:=clBtnFace;If st9.Color=clBlack Then st9.Color:=clBtnFace;
//                 If st10.Color=clBlack Then st10.Color:=clBtnFace;If st11.Color=clBlack Then st11.Color:=clBtnFace;
//                 If st12.Color=clBlack Then st12.Color:=clBtnFace;
//            End
//        Else
//            Begin
//                 stCode.Color:=clBtnFace;If stDecode.Color=clBlack Then stDecode.Color:=clBtnFace;

                 st0.Color:=clBlack; st1.Color:=clBlack;
                 st2.Color:=clBlack; st3.Color:=clBlack;
                 st4.Color:=clBlack; st5.Color:=clBlack;
                 st6.Color:=clBlack; st7.Color:=clBlack;
                 st8.Color:=clBlack; st9.Color:=clBlack;
                 st10.Color:=clBlack;st11.Color:=clBlack;
                 st12.Color:=clBlack;
//            End;

End;

Procedure TProgForm.GetResult;
Begin
     TryResult:='';
     If stResBit0.Color= clYellow Then TryResult:='1'+TryResult
                                  Else TryResult:='0'+TryResult;
     If stResBit1.Color= clYellow Then TryResult:='1'+TryResult
                                  Else TryResult:='0'+TryResult;
     If stResBit2.Color=clYellow Then TryResult:='1'+TryResult
                                  Else TryResult:='0'+TryResult;
     If stResBit3.Color=clYellow Then TryResult:='1'+TryResult
                                  Else TryResult:='0'+TryResult;
     If stResBit4.Color=clYellow Then TryResult:='1'+TryResult
                                  Else TryResult:='0'+TryResult;
     If stResBit5.Color=clYellow Then TryResult:='1'+TryResult
                                  Else TryResult:='0'+TryResult;
     If stResBit6.Color=clYellow Then TryResult:='1'+TryResult
                                  Else TryResult:='0'+TryResult;
     If stResBit7.Color=clYellow Then TryResult:='1'+TryResult
                                  Else TryResult:='0'+TryResult;

End;
Procedure TProgForm.GetCode2;
Begin
     TryResult:='';
     If stResBit0.Color=clYellow Then TryResult:='1'+TryResult
                                 Else TryResult:='0'+TryResult;
     If stResBit1.Color=clYellow Then TryResult:='1'+TryResult
                                 Else TryResult:='0'+TryResult;
     If stResBit2.Color=clYellow Then TryResult:='1'+TryResult
                                 Else TryResult:='0'+TryResult;
     If stResBit3.Color=clYellow Then TryResult:='1'+TryResult
                                 Else TryResult:='0'+TryResult;
     If stResBit4.Color=clYellow Then TryResult:='1'+TryResult
                                 Else TryResult:='0'+TryResult;
     If stResBit5.Color=clYellow Then TryResult:='1'+TryResult
                                 Else TryResult:='0'+TryResult;
     If stResBit6.Color=clYellow Then TryResult:='1'+TryResult
                                 Else TryResult:='0'+TryResult;
     If stResBit7.Color=clYellow Then TryResult:='1'+TryResult
                                 Else TryResult:='0'+TryResult;
End;

Procedure TProgForm.GetCode (ChtoZaKod : Byte);
Begin
     TryResult:='';
     Case ChtoZaKod Of
          16: Begin
                   If stMantBit0.Color=clYellow Then TryResult:='1'+TryResult
                                                Else TryResult:='0'+TryResult;
                   If stMantBit1.Color=clYellow Then TryResult:='1'+TryResult
                                                Else TryResult:='0'+TryResult;
                   If stMantBit2.Color=clYellow Then TryResult:='1'+TryResult
                                                Else TryResult:='0'+TryResult;
                   If stMantBit3.Color=clYellow Then TryResult:='1'+TryResult
                                                Else TryResult:='0'+TryResult;
                   If stMantBit4.Color=clYellow Then TryResult:='1'+TryResult
                                                Else TryResult:='0'+TryResult;
                   If stMantBit5.Color=clYellow Then TryResult:='1'+TryResult
                                                Else TryResult:='0'+TryResult;
                   If stMantBit6.Color=clYellow Then TryResult:='1'+TryResult
                                                Else TryResult:='0'+TryResult;
                   If stMantBit7.Color=clYellow Then TryResult:='1'+TryResult
                                                Else TryResult:='0'+TryResult;
                   If stMantBit8.Color=clYellow Then TryResult:='1'+TryResult
                                                Else TryResult:='0'+TryResult;
                   If stMantBit9.Color=clYellow Then TryResult:='1'+TryResult
                                                Else TryResult:='0'+TryResult;
                   If stMantBit10.Color=clYellow Then TryResult:='1'+TryResult
                                                Else TryResult:='0'+TryResult;
                   If stMantBit11.Color=clYellow Then TryResult:='1'+TryResult
                                                Else TryResult:='0'+TryResult;
                   If stMantBit12.Color=clYellow Then TryResult:='1'+TryResult
                                                Else TryResult:='0'+TryResult;
                   If stMantBit13.Color=clYellow Then TryResult:='1'+TryResult
                                                Else TryResult:='0'+TryResult;
                   If stMantBit14.Color=clYellow Then TryResult:='1'+TryResult
                                                Else TryResult:='0'+TryResult;
                   If stMantBit15.Color=clYellow Then TryResult:='1'+TryResult
                                                Else TryResult:='0'+TryResult;
             End;
            8: Begin
                   If stPorBit0.Color=clYellow Then TryResult:='1'+TryResult
                                                Else TryResult:='0'+TryResult;
                   If stPorBit1.Color=clYellow Then TryResult:='1'+TryResult
                                                Else TryResult:='0'+TryResult;
                   If stPorBit2.Color=clYellow Then TryResult:='1'+TryResult
                                                Else TryResult:='0'+TryResult;
                   If stPorBit3.Color=clYellow Then TryResult:='1'+TryResult
                                                Else TryResult:='0'+TryResult;
                   If stPorBit4.Color=clYellow Then TryResult:='1'+TryResult
                                                Else TryResult:='0'+TryResult;
                   If stPorBit5.Color=clYellow Then TryResult:='1'+TryResult
                                                Else TryResult:='0'+TryResult;
                   If stPorBit6.Color=clYellow Then TryResult:='1'+TryResult
                                                Else TryResult:='0'+TryResult;
                   If stPorBit7.Color=clYellow Then TryResult:='1'+TryResult
                                                Else TryResult:='0'+TryResult;
               End;
         End;
End;

Procedure TProgForm.NeZnaet;
Begin
   bbVrodeTak.Enabled:=False;
   bbinTrouble.Enabled:=False;
   bbStats.Enabled:=False;
   bbYasno.Visible:=True;
   bbYasno.Enabled:=True;
   N1.Enabled:=False;
   N5.Enabled:=False;
   bbYasno.SetFocus;
   Case Choice*2+Choice2 Of
     0 : Begin
              Vopros:=CorResult;
              ShowCode (16);
              stMantBit15.Color:=clBtnFace;
              stMantBit14.Color:=clBtnFace;
              stMantBit13.Color:=clBtnFace;
              stMantBit12.Color:=clBtnFace;
         End;
     1 : Begin
              meCifra.Text:=CorResult;
         End;
     2 : Begin
              Vopros:=CorResult;
              ShowCode (16);
         End;
     3 : Begin
              meCifra.Text:=CorResult;
         End;
     4 : Begin
              Vopros:=CorResult;
              ShowCode (16);
         End;
     5 : Begin
              meCifra.Text:=CorResult;
         End;
     6 : Begin
              Vopros:=CorResult;
              ShowCode (8);
         End;
     7 : Begin
              meCifra.Text:=CorResult;
         End;
     8 : Begin
              Vopros:=CorResult;
              ShowCode (8);
         End;
     9 : Begin
              meCifra.Text:=CorResult;
         End;
     10: Begin
              Vopros:=CorResult;
              ShowCode (8);
              MaskPartPor;
         End;
     11: Begin
              meCifra.Text:=CorResult;
         End;
     12: Begin
              Vopros:=Copy (CorResult,1,8);
              ShowCode (8);
              Vopros:=Copy (CorResult,9,8);
              ShowPoryadok;
//              MaskpartPor;
              MaskPartRes;
         End;
     13: Begin
              meCifra.Text:=CorResult;
         End;
  14,15: Begin
              Vopros:=CorResult;
              ShowPoryadok;
         End;
  16,17: Begin
              Vopros:=CorResult;
              ShowPoryadok;
         End;
  18,19: Begin
              Vopros:=CorResult;
              ShowPoryadok;
         End;
  20,21: Begin
              Vopros:=CorResult;
              ShowPoryadok;
         End;
  22,23: Begin
              Vopros:=CorResult;
              ShowPoryadok;
         End;
  24,25: Begin
              Vopros:=CorResult;
              ShowPoryadok;
         End;
  end;
End;

Procedure TProgForm.ShowCode (Skolko:Byte);
Begin
     Case Skolko Of
          16: Begin
                   If Vopros[16]='1' Then stMantBit0.Color:=clGreen
                                    Else stMantBit0.Color:=clBlack;
                   If Vopros[15]='1' Then stMantBit1.Color:=clGreen
                                    Else stMantBit1.Color:=clBlack;
                   If Vopros[14]='1' Then stMantBit2.Color:=clGreen
                                    Else stMantBit2.Color:=clBlack;
                   If Vopros[13]='1' Then stMantBit3.Color:=clGreen
                                    Else stMantBit3.Color:=clBlack;
                   If Vopros[12]='1' Then stMantBit4.Color:=clGreen
                                    Else stMantBit4.Color:=clBlack;
                   If Vopros[11]='1' Then stMantBit5.Color:=clGreen
                                    Else stMantBit5.Color:=clBlack;
                   If Vopros[10]='1' Then stMantBit6.Color:=clGreen
                                    Else stMantBit6.Color:=clBlack;
                   If Vopros[9]='1' Then stMantBit7.Color:=clGreen
                                    Else stMantBit7.Color:=clBlack;

                   If (Choice*2+Choice2)<10
                   Then Begin
                   If Vopros[8]='1' Then stMantBit8.Color:=clGreen
                                    Else stMantBit8.Color:=clBlack;
                   If Vopros[7]='1' Then stMantBit9.Color:=clGreen
                                     Else stMantBit9.Color:=clBlack;
                   If Vopros[6]='1' Then stMantBit10.Color:=clGreen
                                     Else stMantBit10.Color:=clBlack;
                   If Vopros[5]='1' Then stMantBit11.Color:=clGreen
                                     Else stMantBit11.Color:=clBlack;
                   If Vopros[4]='1' Then stMantBit12.Color:=clGreen
                                     Else stMantBit12.Color:=clBlack;
                   If Vopros[3]='1' Then stMantBit13.Color:=clGreen
                                     Else stMantBit13.Color:=clBlack;
                   If Vopros[2]='1' Then stMantBit14.Color:=clGreen
                                     Else stMantBit14.Color:=clBlack;
                   If Vopros[1]='1' Then stMantBit15.Color:=clGreen
                                     Else stMantBit15.Color:=clBlack;
                   End;
              End;
            8: Begin
                   If Vopros[8]='1' Then stPorBit0.Color:=clGreen
                                    Else stPorBit0.Color:=clBlack;
                   If Vopros[7]='1' Then stPorBit1.Color:=clGreen
                                    Else stPorBit1.Color:=clBlack;
                   If Vopros[6]='1' Then stPorBit2.Color:=clGreen
                                    Else stPorBit2.Color:=clBlack;
                   If Vopros[5]='1' Then stPorBit3.Color:=clGreen
                                    Else stPorBit3.Color:=clBlack;
                   If Vopros[4]='1' Then stPorBit4.Color:=clGreen
                                    Else stPorBit4.Color:=clBlack;
                   If Vopros[3]='1' Then stPorBit5.Color:=clGreen
                                    Else stPorBit5.Color:=clBlack;
                   If Vopros[2]='1' Then stPorBit6.Color:=clGreen
                                    Else stPorBit6.Color:=clBlack;
                   If Vopros[1]='1' Then stPorBit7.Color:=clGreen
                                    Else stPorBit7.Color:=clBlack;
               End;
         End;
End;

Procedure TProgForm.ShowPoryadok;
Begin
    If Vopros[8]='1' Then stResBit0.Color:=clGreen
                     Else stResBit0.Color:=clBlack;
    If Vopros[7]='1' Then stResBit1.Color:=clGreen
                     Else stResBit1.Color:=clBlack;
    If Vopros[6]='1' Then stResBit2.Color:=clGreen
                     Else stResBit2.Color:=clBlack;
    If Vopros[5]='1' Then stResBit3.Color:=clGreen
                     Else stResBit3.Color:=clBlack;
    If Vopros[4]='1' Then stResBit4.Color:=clGreen
                     Else stResBit4.Color:=clBlack;
    If Vopros[3]='1' Then stResBit5.Color:=clGreen
                     Else stResBit5.Color:=clBlack;
    If Vopros[2]='1' Then stResBit6.Color:=clGreen
                     Else stResBit6.Color:=clBlack;
    If Vopros[1]='1' Then stResBit7.Color:=clGreen
                     Else stResBit7.Color:=clBlack;
{    If Vopros[3]='1' Then stResBit0.Color:=clGreen
                     Else stResBit0.Color:=clBlack;
    If Vopros[2]='1' Then stResBit1.Color:=clGreen
                     Else stResBit1.Color:=clBlack;
    If Vopros[1]='1' Then stResBit2.Color:=clGreen
                     Else stResBit2.Color:=clBlack;}

End;

Procedure TProgForm.Oct (What:String);
Var Slovo1,Slovo2 : String;
    J : Byte;
Begin
      For J:=1 To Cifr Do
         Begin
            TempNumb:=Random(8);
{            While ((TempNumb=0) And (J=1)) Do TempNumb:=Random(8);}
            Slovo1:=Slovo1+IntToStr(TempNumb);
            Case TEmpNumb Of
               0 : Slovo2:=Slovo2+'000';
               1 : Slovo2:=Slovo2+'001';
               2 : Slovo2:=Slovo2+'010';
               3 : Slovo2:=Slovo2+'011';
               4 : Slovo2:=Slovo2+'100';
               5 : Slovo2:=Slovo2+'101';
               6 : Slovo2:=Slovo2+'110';
               7 : Slovo2:=Slovo2+'111';
            End;
         End;
     Slovo2:='0000'+Slovo2;
     stMantBit15.Color:=clBtnFace;
     stMantBit14.Color:=clBtnFace;
     stMantBit13.Color:=clBtnFace;
     stMantBit12.Color:=clBtnFace;
     If What='Code' Then
                        Begin
                              CorResult:=Slovo2;
                              Vopros:=Slovo1;
                              MaskPor (False);
                              meCifra.Text:=Vopros;
                              ShowHideCifButtons (False);
                              MaskMant (True);
                              MaskHighBits (False);
{                              stMantBit15.Color:=clBtnFace;
                              stMantBit14.Color:=clBtnFace;
                              stMantBit13.Color:=clBtnFace;
                              stMantBit12.Color:=clBtnFace;}
//                              Dec (Counter4CodeOct);

                        End
     Else               Begin
                              CorResult:=Slovo1;
                              Vopros:=Slovo2;
                              ShowCode (16);
                              MaskHighBits (False);
                              ShowHideCifButtons (True);
{                              stMantBit15.Color:=clBtnFace;
                              stMantBit14.Color:=clBtnFace;
                              stMantBit13.Color:=clBtnFace;
                              stMantBit12.Color:=clBtnFace;}
//                              Dec (Counter4DecodeOct);
                        End;
End;

Procedure TProgForm.Hex(What : String);
Var Slovo1,Slovo2 : String;
    J : Byte;
Begin
     For J:=1 To Cifr Do
         Begin
            TempNumb:=Random(16);
{            While ((TempNumb=0) And (J=1)) Do TempNumb:=Random(10);}
            If TempNumb<10 Then Slovo1:=Slovo1+IntToStr(TempNumb)
            Else Case TempNumb Of
                 10 : Slovo1:=Slovo1+'A';
                 11 : Slovo1:=Slovo1+'B';
                 12 : Slovo1:=Slovo1+'C';
                 13 : Slovo1:=Slovo1+'D';
                 14 : Slovo1:=Slovo1+'E';
                 15 : Slovo1:=Slovo1+'F';
                 End;
            Case TEmpNumb Of
               0 : Slovo2:=Slovo2+'0000';
               1 : Slovo2:=Slovo2+'0001';
               2 : Slovo2:=Slovo2+'0010';
               3 : Slovo2:=Slovo2+'0011';
               4 : Slovo2:=Slovo2+'0100';
               5 : Slovo2:=Slovo2+'0101';
               6 : Slovo2:=Slovo2+'0110';
               7 : Slovo2:=Slovo2+'0111';
               8 : Slovo2:=Slovo2+'1000';
               9 : Slovo2:=Slovo2+'1001';
               10: Slovo2:=Slovo2+'1010';
               11: Slovo2:=Slovo2+'1011';
               12: Slovo2:=Slovo2+'1100';
               13: Slovo2:=Slovo2+'1101';
               14: Slovo2:=Slovo2+'1110';
               15: Slovo2:=Slovo2+'1111';
            End;
         End;
     If What='Code' Then
                        Begin
                              CorResult:=Slovo2;
                              Vopros:=Slovo1;
                              MaskPor (False);
                              meCifra.Text:=Vopros;
                              ShowHideCifButtons (False);
                              MaskMant (True);
//                              Dec (Counter4CodeHex);
                        End
     Else               Begin
                              CorResult:=Slovo1;
                              Vopros:=Slovo2;
                              ShowCode (16);
                              ShowHideCifButtons (True);
//                              MaskMant (True);
//                              Dec (Counter4DecodeHex);
                        End;
End;

Procedure TProgForm.BinDec (What : String);
Var Slovo1,Slovo2 : String;
    J : Byte;
Begin
{     meAnswer.EditMask:='0000000000000000';}
//      MaskMant (True);
     For J:=1 To Cifr Do
         Begin
            TempNumb:=Random(10);
{            While ((TempNumb=0) And (J=1)) Do TempNumb:=Random(10);}
            Slovo1:=Slovo1+IntToStr(TempNumb);
            Case TEmpNumb Of
               0 : Slovo2:=Slovo2+'0000';
               1 : Slovo2:=Slovo2+'0001';
               2 : Slovo2:=Slovo2+'0010';
               3 : Slovo2:=Slovo2+'0011';
               4 : Slovo2:=Slovo2+'0100';
               5 : Slovo2:=Slovo2+'0101';
               6 : Slovo2:=Slovo2+'0110';
               7 : Slovo2:=Slovo2+'0111';
               8 : Slovo2:=Slovo2+'1000';
               9 : Slovo2:=Slovo2+'1001';
            End;
         End;
     If What='Code' Then
                        Begin
                              CorResult:=Slovo2;
                              MaskPor (False);
                              MaskMant (True);
                              Vopros:=Slovo1;
                              meCifra.Text:=Vopros;
                              ShowHideCifButtons (False);
//                              Dec (Counter4CodeBinDec);
                        End
     Else               Begin
                              CorResult:=Slovo1;
                              Vopros:=Slovo2;
                              ShowCode (16);
                              ShowHideCifButtons (True);
//                              Dec (Counter4DecodeBinDec);
                        End;
End;

Procedure TProgForm.BinNoSi (What : String);
Var
   Delitel : Word;
   Slovo1,Slovo2 : String;
   J : Byte;
Begin
     Delitel:=1;
     For J:=1 To (MaxForBin-1) Do Delitel:=Delitel*2;
     TempNumb:=Random (Delitel*2+2);
     Slovo1:=IntToStr(TempNumb);
     For J:=0 To (MaxForBin-1) Do
         Begin
              If ((TempNumb-Delitel)>=0) Then
                 Begin
                      Dec (TempNumb,Delitel);
                      Slovo2:=Slovo2+'1';
                 End
              Else Slovo2:=Slovo2+'0';
              Delitel:=Delitel Div 2;
          End;
     If What='Code' Then
                        Begin
                              CorResult:=Slovo2;
                              Vopros:=Slovo1;
                              MaskMant (False);
                              meCifra.Text:=Vopros;
                              ShowHideCifButtons (False);
//                              Dec (Counter4CodeBinNoSi);
                              MaskPor (True);
                        End
     Else               Begin
                              CorResult:=Slovo1;
                              Vopros:=Slovo2;
                              MaskMant (False);
                              ShowCode (8);
//                              Dec (Counter4DecodeBinNoSi);
                              ShowHideCifButtons (True);
                        End;
End;

Procedure TProgForm.BinWiSi (What : String);
Var
   Delitel       : Word;
   Slovo1,Slovo2 : String;
   Negative      : Boolean;
   Perenos       : Boolean;
   J             : Byte;
Begin
     Slovo2:='';
     MaskMant (True);
     Delitel:=1;
     For J:=1 To (MaxForBin-2) Do Delitel:=Delitel*2;
//     TempNumb:=(Random (Delitel*2+1))-Delitel;     //"+" и "-"
     TempNumb:=-Random (Delitel);                  //только "-"
     Slovo1:=IntToStr(TempNumb);
     Delitel:=Delitel*2;
     If TempNumb<0 Then Negative:=True
     Else Negative:=False;
     TempNumb:=Abs(TempNumb);
         For J:=0 To (MaxForBin-1) Do
         Begin
              If ((TempNumb-Delitel)>=0) Then
                 Begin
                      Dec (TempNumb,Delitel);
                      Case Negative Of
                           False : Slovo2:=Slovo2+'1';
                           True  : Slovo2:=Slovo2+'0';
                      End;
                End
              Else Case Negative Of
                     False : Slovo2:=Slovo2+'0';
                     True  : Slovo2:=Slovo2+'1';
                   End;
              Delitel:=Delitel Div 2;
          End;
     If Negative Then
        Begin
             Perenos:=True;
             For J:=MaxForBin DownTo 1 Do
                 Begin
                      If Slovo2[J]='1' Then
                         Begin
                              If Perenos Then Slovo2[J]:='0';
                         End
                      Else
                         Begin
                              If Perenos Then Slovo2[J]:='1';
                              Perenos:=False;
                         End;
                 End;
        End;

     If What='Code' Then
                        Begin
                              CorResult:=Slovo2;
                              Vopros:=Slovo1;
                              MaskPor (True);
                              MaskMant (False);
                              meCifra.Text:=Vopros;
                              ShowHideCifButtons (False);
//                              Dec (Counter4CodeBinWiSi);
                        End
     Else               Begin
                              CorResult:=Slovo1;
                              Vopros:=Slovo2;
                              MaskMant (False);
                              ShowCode (8);
//                              Dec (Counter4DecodeBinWiSi);
                              ShowHideCifButtons (True);
                        End;
End;

Procedure TProgForm.BinFix (What : String);
Var Znak    : Byte;            {1-отр, 0-полож.}
    Drobnoe : String;
    Stepen  : LongInt;
    Chislo  : Single;
    Bit     : Byte;
    SymbChislo : String;
    Cifra, J   : Byte;
    Slovo1,Slovo2 : String;
    Perenos : Boolean;
//    StillZero : Boolean;
Begin
     SymbChislo:='';
     Stepen:=1;
     Chislo:=0;
     Znak:=Random(2); {1-отр, 0-полож.}
     If Znak=1 Then Drobnoe:='1' Else Drobnoe:='0';
//     StillZero:=True;
     For J:=1 To MaxForFix-1 Do
         Begin
              Stepen:=Stepen*2;
              Bit:=Random(2);
//              If Bit=1 Then StillZero:=False;
//              If (J=MaxForMix-1) And StillZero=True Then Bit=1;
              Drobnoe:=Drobnoe+INtToStr(Bit);
              If ((Znak+Bit) mod 2)=1 Then Chislo:=Chislo+1/(Stepen);
         End;
//     If (StillZero) And (Znak=1) Then Begin
//        Znak:=0;
//        Drobnoe[1]:='0';
//     End;
     If (Znak=1) and (Chislo=0) Then Begin
        Drobnoe:='0';
        Znak:=0;
     End;

     If Znak=1 Then SymbChislo:='-0.' Else SymbChislo:='0.';
     Stepen:=1;
     For J:=1 To MaxForFix-1 Do
         Begin
              Stepen:=Stepen*10;
              Cifra:=Round(Chislo*Stepen-0.499999);
              SymbChislo:=SymbChislo+IntToStr(Cifra);
              Chislo:=(Round(Chislo*10000000-Cifra*10000000/Stepen))/10000000;
         End;

     If Znak=1 Then
        Begin
             Perenos:=True;
             For J:=MaxForFix DownTo 2 Do
                 Begin
                      If Drobnoe[J]='1' Then
                         Begin
                              If Perenos Then Drobnoe[J]:='0';
                         End
                      Else
                         Begin
                              If Perenos Then Drobnoe[J]:='1';
                              Perenos:=False;
                         End;
                 End;
        End;

     Slovo1:=SymbChislo;
     Slovo2:=Drobnoe;
     While Length (Slovo2)<8 Do Slovo2:=Slovo2+'0';
     If What='Code' Then
                        Begin
                              CorResult:=Slovo2;
                              Vopros:=Slovo1;
                              {MaskHighBits (False);}
                              MaskPor (True);
                              MaskPartPor;
                              meCifra.Text:=Vopros;
                              ShowHideCifButtons (False);
//                              Dec (Counter4CodeBinFix);
                        End
     Else               Begin
                              CorResult:=Slovo1;
                              Vopros:=Slovo2;
                              ShowCode (8);
                              MaskPartPor;
//                              Dec (Counter4DecodeBinFix);
                        End;
End;

Procedure TProgForm.BinFlo (What : String);
Var
   Perenos     : Boolean;
   Mantissa    : Extended;
{   MantissaCopy: Extended;}
   Poryadok    : Word;
{   PoryadokCopy: Word;}
   MantissaBin : String;
   MantissaBinCopy : String;
   PoryadokBin : String;
   PoryadokBinCopy : String;
   MantissaStr : String;
   PoryadokStr : String;
{   Stepen      : Double;}
{   StepenCopy  : Double;}
{   StepenPor   : Word;}
   J           : Byte;
   Bit         : Byte; { :-) }
   ZnakPor     : Byte; { Знак порядка }
   ZnakMant    : Byte; { Знак мантиссы }
//   Cifra       : Byte; {Временная переменная}
   K           : Word; { Special counter :-) }
//   WasBit1     : Boolean;
Begin
     MantissaStr:='';
     PoryadokStr:='';
     MantissaBin:='';
     MantissaBinCopy :='';
     PoryadokBin:='';
     PoryadokBinCopy:='';
     Poryadok:=0;
     Mantissa:=0;
     ZnakPor:=Random(2);
     ZnakMant:=Random(2);
{     Stepen:=1;
     StepenPor:=1;}

     For J:=1 To MaxForPor-1 Do
         Begin
              Bit:=Random (2);
//              If (ZnakPor=1) And (J=1) Then Bit:=1;
//              If Copy (PoryadokBin,1,1)<>intToStr(ZnakPor) Then Bit:=ZnakPor;
              PoryadokBin:=PoryadokBin+IntToStr(Bit);
              PoryadokBinCopy:=PoryadokBinCopy+IntToStr (1-Bit);
         End;
         If ZnakPor=0 Then PoryadokBin:='0'+PoryadokBin
                      Else PoryadokBin:='1'+PoryadokBin;
         If ZnakPor=0 Then PoryadokBinCopy:='1'+PoryadokBinCopy
                      Else PoryadokBinCopy:='0'+PoryadokBinCopy;
      If ZnakPor=0 Then PoryadokBinCopy:=PoryadokBin;
      If ZnakPor=1 Then
        Begin
             Perenos:=True;
             For J:=MaxForPor DownTo 1 Do
                 Begin
                      If PoryadokBinCopy[J]='1' Then
                         Begin
                              If Perenos Then PoryadokBinCopy[J]:='0';
                         End
                      Else
                         Begin
                              If Perenos Then PoryadokBinCopy[J]:='1';
                              Perenos:=False;
                         End;
                 End;
        End;
     K:=1;
     For J:=1 To Length (PoryadokBin)-1 Do K:=K*10;  {Проверка на -0)}
     If IntToStr(K)=PoryadokBin Then
        Begin
             J:=Length (PoryadokBin)-1;
             PoryadokBin:='';
             For K:=1 To J Do PoryadokBin:=PoryadokBin+'0';
        End;
     K:=1;
     For J:=MaxForPor DownTo 2 Do
         Begin
              If PoryadokBinCopy[J]='1' Then Poryadok:=Poryadok+K;
              Inc (K,K);
         End;
     PoryadokStr:=IntToStr(Poryadok);
     If ZnakPor=1 Then PoryadokStr:='-'+PoryadokStr;

     If ZnakMant=0 Then MantissaBin:='01'
                   Else MantissaBin:='10';
     If ZnakMant=0 Then MantissaBinCopy:='10'
                   Else MantissaBinCopy:='01';
     For J:= 1 To MaxForMant-2 Do
         Begin
            Bit:=Random (2);
            If (MantissaBin='1000000') Then Bit:=1;
//            If (MantissaBin='111') Then Bit:=0;
            MantissaBin:=MantissaBin+IntToStr(Bit);
            MantissaBinCopy:=MantissaBinCopy+intToStr(1-Bit);
         End;
     If ZnakMant=0 Then MantissaBinCopy:=MantissaBin;
     If ZnakMant=1 Then
        Begin
             Perenos:=True;
             For J:=MaxForMant DownTo 1 Do
                 Begin
                      If MantissaBinCopy[J]='1' Then
                         Begin
                              If Perenos Then MantissaBinCopy[J]:='0';
                         End
                      Else
                         Begin
                              If Perenos Then MantissaBinCopy[J]:='1';
                              Perenos:=False;
                         End;
                 End;
        End;
        K:=1;
        MantissaBinCopy:=Copy(MantissaBinCopy,2,Length (MantissaBinCopy)-1);
        If Poryadok>0 Then For J:=1 To Poryadok Do Inc (K,K);
        If (ZnakPor=0) And (Poryadok >0) Then
           For J:=1 To Poryadok Do
               Begin
                    K:=K div 2;
                    If MantissaBinCopy [1]='1' Then Mantissa:=Mantissa+K;
                    MantissaBinCopy:=Copy(MantissaBinCopy,2,Length(MantissaBinCopy)-1);
               End;
        If (ZnakPor=1) And (Poryadok>0) Then
           For J:=1 To Poryadok Do MantissaBinCopy:='0'+MantissaBinCopy;
        K:=2;
        For J:=1 To Length (MantissaBinCopy) Do
          Begin
            If MantissaBinCopy[J]='1' Then Mantissa:=Mantissa+1/K;
            Inc (K,K);
          End;
        If (ZnakPor=1) And (Poryadok>0) Then
           For J:=1 To Poryadok Do MantissaBinCopy:=Copy(MantissaBinCopy,2,Length(MantissaBinCopy)-1);

        K:=0;
        While Mantissa<>Int(Mantissa) Do
              Begin
                   Mantissa:=Mantissa*10;
                   Inc (K);
              End;
        MantissaStr:= IntToStr (Round (Mantissa));
        While Length (MantissaStr)<K Do MantissaStr:=Concat ('0',MantissaStr);
        If K<>0 Then MantissaStr:=Concat (Copy(MantissaStr,1,Length (MantissaStr)-K),'.',Copy (MantissaStr,Length (MantissaStr)-K+1,K));
        If MantissaStr[1]='.' Then MantissaStr:='0'+MantissaStr;
        If ZnakMant=1 Then MantissaStr:='-'+MantissaStr;
//        While Length (MantissaBin)<16 Do MantissaBin:=MantissaBin'0';
        While Length (MantissaBin)<8 Do MantissaBin:=MantissaBin+'0';
        While Length (PoryadokBin)<8  Do PoryadokBin:='0'+PoryadokBin;
         If What='Code' Then
                        Begin
                              CorResult:=MantissaBin+PoryadokBin;
                              Vopros:=MantissaStr;
                              meCifra.Text:=Vopros;
                              MaskMant (False);
                              MaskPor (True);
                              MaskRes (True);
//                              MaskpartPor;
                              MaskPartRes;
                              ShowHideCifButtons (False);
{                              MaskSomeLeds (False);}
//                              Dec (Counter4CodeBinFlo);
                        End
     Else               Begin
                              CorResult:=MantissaStr;
                              Vopros:=MantissaBin;
                              ShowCode (8);
                              Vopros:= PoryadokBin;
                              ShowPoryadok;
                              MaskPartRes;
{                              MaskSomeLeds (False);}
                              ShowHideCifButtons (True);
//                              Dec (Counter4DecodeBinFlo);
                        End;


End;

Procedure TProgForm.BinOps (What : String);

Var
   Perenos:Boolean;
   A,B         : Char;
   NewVopros   : String;
   Cif1,Cif2,J : Byte;
   Power       : Word;
Begin
     ShowHideCifButtons(False);
     Perenos:=False;
     CorResult:='';
     Vopros:='';
     Vopros2:='';
     If What <> 'ASu' Then
        For J:=1 To MaxForAddMul Do
            Begin
                 Vopros :=IntToStr(Random(2))+Vopros;
                 Vopros2:=IntToStr(Random(2))+Vopros2;
            End
     Else
         Repeat
               Power:=1;
               Cif2:=0;
               Cif1:=0;
               For J:=1 To MaxForAddMul Do
                   Begin
                        Vopros :=IntToStr(Random(2))+Vopros;
                        inc (Cif1, StrToInt(Vopros[1])*Power);
                        Vopros2:=IntToStr(Random(2))+Vopros2;
                        inc (Cif2, StrToInt(Vopros2[1])*Power);
                        inc (Power, Power);
                   End;
         Until Cif1>Cif2;


  If What='Add' Then
     Begin
                      For J:=1 To MaxForAddMul Do
                      If (Vopros2[J]='0') And (Vopros[J]='0')
                         Then CorResult:=CorResult+'0'
                         Else CorResult:=CorResult+'1';
//                      Dec(Counter4Add);
     End;

  IF What='Mul' Then
     Begin
                    For J:=1 To MaxForAddMul Do
                      If (Vopros2[J]='1') And (Vopros[J]='1')
                         Then CorResult:=CorResult+'1'
                         Else CorResult:=CorResult+'0';
//                    Dec (Counter4Mul);
     End;
  IF What='Ad2' Then
     Begin
          For J:=1 To MaxForAddMul Do
                      If (Vopros2[J]<>Vopros[J])
                         Then CorResult:=CorResult+'1'
                         Else CorResult:=CorResult+'0';
//          Dec (Counter4Ad2);
     End;
  IF What='AAd' Then
     Begin
          Vopros[1]:='0';
          Vopros2[1]:='0';
          For J:=MaxForAddMul DownTo 1 Do
                 Begin
                      A:=Vopros[J];
                      B:=Vopros2[J];
                     If A+B='11'
                        Then           Begin
                                            If Perenos Then CorResult:='1'+CorResult
                                                       Else CorResult:='0'+CorResult;
                                            Perenos:=True;
                                       End;
                       If ((A+B='10') Or (A+B='01'))
                         Then          Begin
                                            If Perenos Then CorResult:='0'+CorResult
                                                       Else CorResult:='1'+CorResult;
                                       End;
                       If A+B='00'
                         Then         Begin
                                            If Perenos Then CorResult:='1'+CorResult
                                                       Else CorResult:='0'+CorResult;
                                            Perenos:=False;
                                       End;
                  End;
//          Dec (Counter4AAd);
      End;

   IF What='ASu' Then
      Begin
            For J:=MaxForAddMul DownTo 1 Do
                     Begin
                       A:=Vopros[J];
                       B:=Vopros2[J];
                       If A+B='10'
                       Then            Begin
                                            If Perenos Then CorResult:='0'+CorResult
                                                       Else CorResult:='1'+CorResult;
                                            Perenos:=False;
                                       End;
                        If ((A+B='00') Or (A+B='11'))
                        Then           Begin
                                            If Perenos Then CorResult:='1'+CorResult
                                                       Else CorResult:='0'+CorResult;
                                       End;
                         If A+B='01'
                         Then          Begin
                                            If Perenos Then CorResult:='0'+CorResult
                                                       Else CorResult:='1'+CorResult;
                                            Perenos:=True;
                                       End;
                     End;
//            Dec (Counter4ASu);
         End;
     If What<>'CSi' Then
              Begin
                   Vopros:='00000000'+Vopros;
                   ShowCode (16);
                   Vopros:=Vopros2;
                   ShowCode (8);
                   MaskRes (True);
              End;
   IF What='CSi' Then Begin
                       Perenos:=True;
                       For J:=MaxForAddMul DownTo 1 Do
                         Begin
                            If Vopros[J] ='1'
                                  Then NewVopros:='0'+NewVopros
                                  Else NewVopros:='1'+NewVopros;
                         End;
                       For J:=MaxForAddMul DownTo 1 Do
                         Begin
                            If NewVopros[J] ='1'
                                  Then If Perenos Then CorResult:='0'+CorResult
                                                  Else Begin
                                                            CorResult:='1'+CorResult;
                                                            Perenos:=False
                                                       End;


                            If NewVopros[J]='0'
                            Then
                                If Perenos
                                      Then Begin
                                              CorResult:='1'+CorResult;
                                              Perenos:=False;
                                           End
                                Else CorResult:='0'+CorResult;
                         End;
{                         Vopros:='00000000'+Vopros;}
                         MaskMant (False);
                         ShowCode (8);
                         MaskRes (True);
//                         Dec (Counter4CSi);
                      End;
End;

Procedure TProgForm.Poehali;
Begin
    bbinTrouble.Visible:=True;
    bbChangeTask.Visible:=True;
    CorResult:='';
    TryResult:='';
   Case Choice*2+Choice2 Of
     0 : Begin
              Ostalos:=Counter4CodeOct;
              HideSomeDones;
              Oct('Code');
         End;
     1 : Begin
              Ostalos:=Counter4DeCodeOct;
              HideSomeDones;
              Oct('Decode');
         End;
     2 : Begin
              Ostalos:=Counter4CodeHex;
              HideSomeDones;
              Hex('Code');
         End;
     3 : Begin
              Ostalos:=Counter4DecodeHex;
              HideSomeDones;
              Hex('Decode');
         End;
     4 : Begin
              Ostalos:=Counter4CodeBinDec;
              HideSomeDones;
              BinDec('Code');
         End;
     5 : Begin
              Ostalos:=Counter4DecodeBinDec;
              HideSomeDones;
              BinDec('Decode');
         End;
     6 : Begin
              Ostalos:=Counter4CodeBinNoSi;
              HideSomeDones;
              BinNoSi('Code');
         End;
     7 : Begin
              Ostalos:=Counter4DecodeBinNoSi;
              HideSomeDones;
              BinNoSi('Decode');
         End;
     8 : Begin
              Ostalos:=Counter4CodeBinWiSi;
              HideSomeDones;
              BinWiSi('Code');
         End;
     9 : Begin
              Ostalos:=Counter4DecodeBinWiSi;
              HideSomeDones;
              BinWiSi('Decode');
         End;
     10: Begin
              Ostalos:=Counter4CodeBinFix;
              HideSomeDones;
              BinFix ('Code');
         End;
     11: Begin
              Ostalos:=Counter4DecodeBinFix;
              HideSomeDones;
              BinFix ('Decode');
         End;
     12: Begin
              Ostalos:=Counter4CodeBinFlo;
              HideSomeDones;
              BinFlo ('Code');
         End;
     13: Begin
              Ostalos:=Counter4DecodeBinFlo;
              HideSomeDones;
              BinFlo ('Decode');
         End;
  14,15: Begin
              Ostalos:=Counter4Mul;
              HideSomeDones;
              BinOps ('Mul');
         End;
  16,17: Begin
              Ostalos:=Counter4Add;
              HideSomeDones;
              BinOps ('Add');
         End;
  18,19: Begin
              Ostalos:=Counter4Ad2;
              HideSomeDones;
              BinOps ('Ad2');
         End;
  20,21: Begin
              Ostalos:=Counter4CSi;
              HideSomeDones;
              BinOps ('CSi');
         End;
  22,23: Begin
              Ostalos:=Counter4AAd;
              HideSomeDones;
              BinOps ('AAd');
         End;
  24,25: Begin
              Ostalos:=Counter4ASu;
              HideSomeDones;
              BinOps ('ASu');
         End;
  end;
end;

procedure TProgForm.FormActivate(Sender: TObject);
begin
     NoOneIsDone;
     ResetCounters;
     Randomize;
     GetPassword;
     ChangeFont;
     FullReset;
end;

procedure TProgForm.bbCmonClick(Sender: TObject);
Var J : Byte;
begin
   bbCmon.Enabled:=False;
   If Not Done [Choice*2+Choice2]
        Then
            Begin
               GetReady;
               Poehali;
            End
        Else
            Begin
                MessageBeep (40);
                For J:=1 To 3 Do
                Begin
                   meCifra.Text:='Nothing to do';
                   Delay (500);
                   meCifra.Text:='';
                   Delay (200);
                End;
            FullReset;
            End;
        bbCmon.Enabled:=True;
End;

procedure TProgForm.bbInTroubleClick(Sender: TObject);
begin
     Inc (Errors [Choice*2+Choice2]);
     NeZnaet;
end;

procedure TProgForm.bbVrodeTakClick(Sender: TObject);
Var
   TempTryResult : String;
   J             : Byte;
begin
     If (Choice*2+Choice2) In [1,3,5,7,9,11]
     Then Begin
          TryResult:=(meCifra.Text);
          If Pos ('.',TryResult)=1 Then TryResult:='0'+TryResult;
          If Pos ('.',CorResult)<>0 Then
             While Length(TryResult)<Length (CorResult) Do TryResult:=TryResult+'0'
          Else
              While Length(TryResult)<Length (CorResult) Do TryResult:='0'+TryResult;
          For J:=1 To Length (TryResult) Do TryResult[J]:=UpCase(TryResult[J]);
          meCifra.Text:='';
          If CorResult=(TryResult) Then GoodBoy
                              Else BadBoy;
     End
     Else If (Choice*2+Choice2) In [0,2,4] Then
        Begin
             GetCode (16);
             ShowHideCifButtons(True);
{             MaskPor (True);}
             If CorResult=TryResult Then meCifra.Text:='';
             If CorResult=(TryResult) Then GoodBoy
                              Else BadBoy;
        End;
     If (Choice*2+Choice2) In [6,8,10] Then
        Begin
             GetCode (8);
             ShowHideCifButtons(True);
{             MaskPor (True);}
             If CorResult=(TryResult) Then meCifra.Text:='';
             If CorResult=(TryResult) Then GoodBoy
                              Else BadBoy;
        End;

      If (Choice*2+Choice2)=12
       Then Begin
            GetCode (8);
            TempTryResult:=TryResult;
            GetCode2;
            TryResult:=TempTryResult+TryResult;
       End;
       If (Choice*2+Choice2)=13
       Then Begin
                 TryResult:=meCifra.Text;
            End;
       If (Choice*2+Choice2) In [12,13]
       Then Begin
                 If Pos ('-.',TryResult)=1 Then TryResult:='-0.'+Copy(TryResult,3,Length(TryResult)-2);
                 While Length(CorResult)<Length (TryResult) Do CorResult:=CorResult+'0';
                 While Length(CorResult)>Length (TryResult) Do TryResult:=TryResult+'0';
                 If CorResult=(TryResult) Then meCifra.Text:='';
                 If (CorResult=TryResult)
                 Then GoodBoy
                 Else BadBoy
            End;
       If (Choice*2+Choice2) In [14,15,16,17,18,19,20,21,22,23,24,25]
       Then
           Begin
                GetResult;
                If CorResult=(TryResult) Then meCifra.Text:='';
                If CorResult=(TryResult) Then GoodBoy
                              Else BadBoy;

           End;
end;

Procedure TProgForm.GetReady;
Begin
   ShowHideCtrlButtons (False);
   bbVrodeTak.Visible:=True;
   bbVrodeTak.Enabled:=True;
   bbInTrouble.Visible:=True;
   bbCmon.Visible:=False;
   bbChangeTask.Visible:=True;
   CorResult:='';
   bbVrodeTak.Default:=True;
   bbVrodeTak.SetFocus;
   N6.Enabled:=False;
   stDone1.Color:=clGreen;stDone2.Color:=clGreen;stDone3.Color:=clGreen;
   stDone4.Color:=clGreen;stDone5.Color:=clGreen;stDone6.Color:=clGreen;
   stDone7.Color:=clGreen;stDone8.Color:=clGreen;stDone9.Color:=clGreen;
   stDone10.Color:=clGreen;
End;

Procedure TProgForm.ChangeFont;
Begin
     ResForm.sgResults.Font.Name:=FontName.Name;
     SetupForm.Font.Name:=FontName.Name;
     bbYasno.Font.Name:=Fontname.Name;bbChangeTask.Font.Name:=Fontname.Name;
     Label1.Font.Name:=Fontname.Name;Label2.Font.Name:=Fontname.Name;
     Label3.Font.Name:=Fontname.Name;Label4.Font.Name:=Fontname.Name;
     Label5.Font.Name:=Fontname.Name;Label6.Font.Name:=Fontname.Name;
     Label7.Font.Name:=Fontname.Name;Label8.Font.Name:=Fontname.Name;
     Label9.Font.Name:=Fontname.Name;Label10.Font.Name:=Fontname.Name;
     Label11.Font.Name:=Fontname.Name;Label12.Font.Name:=Fontname.Name;
     Label13.Font.Name:=Fontname.Name;Label14.Font.Name:=Fontname.Name;
     bb0.Font.Name:=Fontname.Name;bb1.Font.Name:=Fontname.Name;bb2.Font.Name:=Fontname.Name;
     bb3.Font.Name:=Fontname.Name;bb4.Font.Name:=Fontname.Name;bb5.Font.Name:=Fontname.Name;
     bb6.Font.Name:=Fontname.Name;bb7.Font.Name:=Fontname.Name;bb8.Font.Name:=Fontname.Name;
     bb9.Font.Name:=Fontname.Name;bbA.Font.Name:=Fontname.Name;bbB.Font.Name:=Fontname.Name;
     bbC.Font.Name:=Fontname.Name;bbD.Font.Name:=Fontname.Name;bbE.Font.Name:=Fontname.Name;
     bbF.Font.Name:=Fontname.Name;bbMinus.Font.Name:=Fontname.Name;bbClear.Font.Name:=Fontname.Name;
     bbPoint.Font.Name:=Fontname.Name;bbCmon.Font.Name:=Fontname.Name;
     bbVrodeTak.Font.Name:=Fontname.Name;bbinTrouble.Font.Name:=Fontname.Name;
     bbStats.Font.Name:=FontName.Name;
     laCoding.Font.Name:=Fontname.Name;laDeCoding.Font.Name:=Fontname.Name;
     PassForm.laWarning.Font.Name:=Fontname.Name;
     PassForm.bbAttempt.Font.Name:=Fontname.Name;
     PassForm.bbZabyl.Font.Name:=Fontname.Name;
     OblomForm.bbAgain.Font.Name:=Fontname.Name;
     OblomForm.bbNu_I_Ne_Nado.Font.Name:=Fontname.Name;
     SetupForm.laHeader.Font.Name:=Fontname.Name;
     SetupForm.laCode.Font.Name:=Fontname.Name;
     SetupForm.laDecode.Font.Name:=Fontname.Name;
     SetupForm.Pro8.Font.Name:=Fontname.Name;
     SetupForm.Pro16.Font.Name:=Fontname.Name;
     SetupForm.Pro2_10.Font.Name:=Fontname.Name;
     SetupForm.ProBinNoSi.Font.Name:=Fontname.Name;
     SetupForm.ProBinWiSi.Font.Name:=Fontname.Name;
     SetupForm.ProBinFix.Font.Name:=Fontname.Name;
     SetupForm.ProBinFlo.Font.Name:=Fontname.Name;
     SetupForm.ProMul.Font.Name:=Fontname.Name;
     SetupForm.ProAdd.Font.Name:=Fontname.Name;
     SetupForm.ProAd2.Font.Name:=Fontname.Name;
     SetupForm.ProAAd.Font.Name:=Fontname.Name;
     SetupForm.ProCSi.Font.Name:=Fontname.Name;
     SetupForm.ProASu.Font.Name:=Fontname.Name;
     SetupForm.bbTry.Font.Name:=Fontname.Name;
     SetupForm.bbNeTak.Font.Name:=Fontname.Name;
     PassChForm.bbPridumal.Font.Name:=Fontname.Name;
     PassChForm.bbNeNadoPoka.Font.Name:=Fontname.Name;
     PassChForm.laKakoyByl.Font.Name:=Fontname.Name;
     PassChForm.laKakoyStal.Font.Name:=Fontname.Name;
     PassChForm.laKakoyStal2.Font.Name:=Fontname.Name;
     PassChForm.edKakoyByl.Font.Name:=Fontname.Name;
     PassChForm.edKakoyStal.Font.Name:=Fontname.Name;
     PassChForm.edKakoyStal2.Font.Name:=Fontname.Name;

     bbYasno.Font.Size:=FontName.Size;bbChangeTask.Font.Size:=FontName.Size;
     ResForm.sgResults.Font.Size:=Font2Name.Size;
     SetupForm.Font.Size:=FontName.Size;
     Label1.Font.Size:=Fontname.Size;Label2.Font.Size:=Fontname.Size;
     Label3.Font.Size:=Fontname.Size;Label4.Font.Size:=Fontname.Size;
     Label5.Font.Size:=Fontname.Size;Label6.Font.Size:=Fontname.Size;
     Label7.Font.Size:=Fontname.Size;Label8.Font.Size:=Fontname.Size;
     Label9.Font.Size:=Fontname.Size;Label10.Font.Size:=Fontname.Size;
     Label11.Font.Size:=Fontname.Size;Label12.Font.Size:=Fontname.Size;
     Label13.Font.Size:=Fontname.Size;Label14.Font.Size:=Fontname.Size;
     bb0.Font.Size:=Fontname.Size;bb1.Font.Size:=Fontname.Size;bb2.Font.Size:=Fontname.Size;
     bb3.Font.Size:=Fontname.Size;bb4.Font.Size:=Fontname.Size;bb5.Font.Size:=Fontname.Size;
     bb6.Font.Size:=Fontname.Size;bb7.Font.Size:=Fontname.Size;bb8.Font.Size:=Fontname.Size;
     bb9.Font.Size:=Fontname.Size;bbA.Font.Size:=Fontname.Size;bbB.Font.Size:=Fontname.Size;
     bbC.Font.Size:=Fontname.Size;bbD.Font.Size:=Fontname.Size;bbE.Font.Size:=Fontname.Size;
     bbF.Font.Size:=Fontname.Size;bbMinus.Font.Size:=Fontname.Size;bbClear.Font.Size:=Fontname.Size;
     bbPoint.Font.Size:=Fontname.Size;bbCmon.Font.Size:=Fontname.Size;
     bbVrodeTak.Font.Size:=Fontname.Size;bbinTrouble.Font.Size:=Fontname.Size;
      bbStats.Font.Size:=FontName.Size;
     laCoding.Font.Size:=Fontname.Size;laDeCoding.Font.Size:=Fontname.Size;
     PassForm.laWarning.Font.Size:=Fontname.Size;
     PassForm.bbAttempt.Font.Size:=Fontname.Size;
     PassForm.bbZabyl.Font.Size:=Fontname.Size;
     OblomForm.bbAgain.Font.Size:=Fontname.Size;
     OblomForm.bbNu_I_Ne_Nado.Font.Size:=Fontname.Size;
     SetupForm.laHeader.Font.Size:=Fontname.Size;
     SetupForm.laCode.Font.Size:=Fontname.Size;
     SetupForm.laDecode.Font.Size:=Fontname.Size;
     SetupForm.Pro8.Font.Size:=Fontname.Size;
     SetupForm.Pro16.Font.Size:=Fontname.Size;
     SetupForm.Pro2_10.Font.Size:=Fontname.Size;
     SetupForm.ProBinNoSi.Font.Size:=Fontname.Size;
     SetupForm.ProBinWiSi.Font.Size:=Fontname.Size;
     SetupForm.ProBinFix.Font.Size:=Fontname.Size;
     SetupForm.ProBinFlo.Font.Size:=Fontname.Size;
     SetupForm.ProMul.Font.Size:=Fontname.Size;
     SetupForm.ProAdd.Font.Size:=Fontname.Size;
     SetupForm.ProAd2.Font.Size:=Fontname.Size;
     SetupForm.ProAAd.Font.Size:=Fontname.Size;
     SetupForm.ProCSi.Font.Size:=Fontname.Size;
     SetupForm.ProASu.Font.Size:=Fontname.Size;
     SetupForm.bbTry.Font.Size:=Fontname.Size;
     SetupForm.bbNeTak.Font.Size:=Fontname.Size;
     PassChForm.bbPridumal.Font.Size:=Fontname.Size;
     PassChForm.bbNeNadoPoka.Font.Size:=Fontname.Size;
     PassChForm.laKakoyByl.Font.Size:=Fontname.Size;
     PassChForm.laKakoyStal.Font.Size:=Fontname.Size;
     PassChForm.laKakoyStal2.Font.Size:=Fontname.Size;
     PassChForm.edKakoyByl.Font.Size:=Fontname.Size;
     PassChForm.edKakoyStal.Font.Size:=Fontname.Size;
     PassChForm.edKakoyStal2.Font.Size:=Fontname.Size;

     bbYasno.Font.Color:=FontName.Color;bbChangeTask.Font.Color:=FontName.Color;
     ResForm.sgResults.Font.Color:=Font2Name.Color;
     SetupForm.Font.Color:=FontName.Color;
     Label1.Font.Color:=Fontname.Color;Label2.Font.Color:=Fontname.Color;
     Label3.Font.Color:=Fontname.Color;Label4.Font.Color:=Fontname.Color;
     Label5.Font.Color:=Fontname.Color;Label6.Font.Color:=Fontname.Color;
     Label7.Font.Color:=Fontname.Color;Label8.Font.Color:=Fontname.Color;
     Label9.Font.Color:=Fontname.Color;Label10.Font.Color:=Fontname.Color;
     Label11.Font.Color:=Fontname.Color;Label12.Font.Color:=Fontname.Color;
     Label13.Font.Color:=Fontname.Color;Label14.Font.Color:=Fontname.Color;
     bb0.Font.Color:=Fontname.Color;bb1.Font.Color:=Fontname.Color;bb2.Font.Color:=Fontname.Color;
     bb3.Font.Color:=Fontname.Color;bb4.Font.Color:=Fontname.Color;bb5.Font.Color:=Fontname.Color;
     bb6.Font.Color:=Fontname.Color;bb7.Font.Color:=Fontname.Color;bb8.Font.Color:=Fontname.Color;
     bb9.Font.Color:=Fontname.Color;bbA.Font.Color:=Fontname.Color;bbB.Font.Color:=Fontname.Color;
     bbC.Font.Color:=Fontname.Color;bbD.Font.Color:=Fontname.Color;bbE.Font.Color:=Fontname.Color;
     bbF.Font.Color:=Fontname.Color;bbMinus.Font.Color:=Fontname.Color;bbClear.Font.Color:=Fontname.Color;
     bbPoint.Font.Color:=Fontname.Color;bbCmon.Font.Color:=Fontname.Color;
     bbVrodeTak.Font.Color:=Fontname.Color;bbinTrouble.Font.Color:=Fontname.Color;
     bbStats.Font.Color:=FontName.Color;
     laCoding.Font.Color:=Fontname.Color;laDeCoding.Font.Color:=Fontname.Color;
     PassForm.laWarning.Font.Color:=Fontname.Color;
     PassForm.bbAttempt.Font.Color:=Fontname.Color;
     PassForm.bbZabyl.Font.Color:=Fontname.Color;
     OblomForm.bbAgain.Font.Color:=Fontname.Color;
     OblomForm.bbNu_I_Ne_Nado.Font.Color:=Fontname.Color;
     SetupForm.laHeader.Font.Color:=Fontname.Color;
     SetupForm.laCode.Font.Color:=Fontname.Color;
     SetupForm.laDecode.Font.Color:=Fontname.Color;
     SetupForm.Pro8.Font.Color:=Fontname.Color;
     SetupForm.Pro16.Font.Color:=Fontname.Color;
     SetupForm.Pro2_10.Font.Color:=Fontname.Color;
     SetupForm.ProBinNoSi.Font.Color:=Fontname.Color;
     SetupForm.ProBinWiSi.Font.Color:=Fontname.Color;
     SetupForm.ProBinFix.Font.Color:=Fontname.Color;
     SetupForm.ProBinFlo.Font.Color:=Fontname.Color;
     SetupForm.ProMul.Font.Color:=Fontname.Color;
     SetupForm.ProAdd.Font.Color:=Fontname.Color;
     SetupForm.ProAd2.Font.Color:=Fontname.Color;
     SetupForm.ProAAd.Font.Color:=Fontname.Color;
     SetupForm.ProCSi.Font.Color:=Fontname.Color;
     SetupForm.ProASu.Font.Color:=Fontname.Color;
     SetupForm.bbTry.Font.Color:=Fontname.Color;
     SetupForm.bbNeTak.Font.Color:=Fontname.Color;
     PassChForm.bbPridumal.Font.Color:=Fontname.Color;
     PassChForm.bbNeNadoPoka.Font.Color:=Fontname.Color;
     PassChForm.laKakoyByl.Font.Color:=Fontname.Color;
     PassChForm.laKakoyStal.Font.Color:=Fontname.Color;
     PassChForm.laKakoyStal2.Font.Color:=Fontname.Color;
     PassChForm.edKakoyByl.Font.Color:=Fontname.Color;
     PassChForm.edKakoyStal.Font.Color:=Fontname.Color;
     PassChForm.edKakoyStal2.Font.Color:=Fontname.Color;

     bbYasno.Font.Style:=FontName.Style;bbChangeTask.Font.Style:=FontName.Style;
     ResForm.sgResults.Font.Style:=Font2Name.Style;
     SetupForm.Font.Style:=FontName.Style;
     Label1.Font.Style:=Fontname.Style;Label2.Font.Style:=Fontname.Style;
     Label3.Font.Style:=Fontname.Style;Label4.Font.Style:=Fontname.Style;
     Label5.Font.Style:=Fontname.Style;Label6.Font.Style:=Fontname.Style;
     Label7.Font.Style:=Fontname.Style;Label8.Font.Style:=Fontname.Style;
     Label9.Font.Style:=Fontname.Style;Label10.Font.Style:=Fontname.Style;
     Label11.Font.Style:=Fontname.Style;Label12.Font.Style:=Fontname.Style;
     Label13.Font.Style:=Fontname.Style;Label14.Font.Style:=Fontname.Style;
     bb0.Font.Style:=Fontname.Style;bb1.Font.Style:=Fontname.Style;bb2.Font.Style:=Fontname.Style;
     bb3.Font.Style:=Fontname.Style;bb4.Font.Style:=Fontname.Style;bb5.Font.Style:=Fontname.Style;
     bb6.Font.Style:=Fontname.Style;bb7.Font.Style:=Fontname.Style;bb8.Font.Style:=Fontname.Style;
     bb9.Font.Style:=Fontname.Style;bbA.Font.Style:=Fontname.Style;bbB.Font.Style:=Fontname.Style;
     bbC.Font.Style:=Fontname.Style;bbD.Font.Style:=Fontname.Style;bbE.Font.Style:=Fontname.Style;
     bbF.Font.Style:=Fontname.Style;bbMinus.Font.Style:=Fontname.Style;bbClear.Font.Style:=Fontname.Style;
     bbPoint.Font.Style:=Fontname.Style;bbCmon.Font.Style:=Fontname.Style;
     bbVrodeTak.Font.Style:=Fontname.Style;bbinTrouble.Font.Style:=Fontname.Style;
     bbStats.Font.Style:=FontName.Style;
     laCoding.Font.Style:=Fontname.Style;laDeCoding.Font.Style:=Fontname.Style;
     PassForm.laWarning.Font.Style:=Fontname.Style;
     PassForm.bbAttempt.Font.Style:=Fontname.Style;
     PassForm.bbZabyl.Font.Style:=Fontname.Style;
     OblomForm.bbAgain.Font.Style:=Fontname.Style;
     OblomForm.bbNu_I_Ne_Nado.Font.Style:=Fontname.Style;
     SetupForm.laHeader.Font.Style:=Fontname.Style;
     SetupForm.laCode.Font.Style:=Fontname.Style;
     SetupForm.laDecode.Font.Style:=Fontname.Style;
     SetupForm.Pro8.Font.Style:=Fontname.Style;
     SetupForm.Pro16.Font.Style:=Fontname.Style;
     SetupForm.Pro2_10.Font.Style:=Fontname.Style;
     SetupForm.ProBinNoSi.Font.Style:=Fontname.Style;
     SetupForm.ProBinWiSi.Font.Style:=Fontname.Style;
     SetupForm.ProBinFix.Font.Style:=Fontname.Style;
     SetupForm.ProBinFlo.Font.Style:=Fontname.Style;
     SetupForm.ProMul.Font.Style:=Fontname.Style;
     SetupForm.ProAdd.Font.Style:=Fontname.Style;
     SetupForm.ProAd2.Font.Style:=Fontname.Style;
     SetupForm.ProAAd.Font.Style:=Fontname.Style;
     SetupForm.ProCSi.Font.Style:=Fontname.Style;
     SetupForm.ProASu.Font.Style:=Fontname.Style;
     SetupForm.bbTry.Font.Style:=Fontname.Style;
     SetupForm.bbNeTak.Font.Style:=Fontname.Style;
     PassChForm.bbPridumal.Font.Style:=Fontname.Style;
     PassChForm.bbNeNadoPoka.Font.Style:=Fontname.Style;
     PassChForm.laKakoyByl.Font.Style:=Fontname.Style;
     PassChForm.laKakoyStal.Font.Style:=Fontname.Style;
     PassChForm.laKakoyStal2.Font.Style:=Fontname.Style;
     PassChForm.edKakoyByl.Font.Style:=Fontname.Style;
     PassChForm.edKakoyStal.Font.Style:=Fontname.Style;
     PassChForm.edKakoyStal2.Font.Style:=Fontname.Style;

     bbYasno.Font.CharSet:=FontName.CharSet;bbChangeTask.Font.CharSet:=FontName.CharSet;
     ResForm.sgResults.Font.CharSet:=Font2Name.CharSet;
     SetupForm.Font.CharSet:=FontName.CharSet;
     Label1.Font.CharSet:=Fontname.CharSet;Label2.Font.CharSet:=Fontname.CharSet;
     Label3.Font.CharSet:=Fontname.CharSet;Label4.Font.CharSet:=Fontname.CharSet;
     Label5.Font.CharSet:=Fontname.CharSet;Label6.Font.CharSet:=Fontname.CharSet;
     Label7.Font.CharSet:=Fontname.CharSet;Label8.Font.CharSet:=Fontname.CharSet;
     Label9.Font.CharSet:=Fontname.CharSet;Label10.Font.CharSet:=Fontname.CharSet;
     Label11.Font.CharSet:=Fontname.CharSet;Label12.Font.CharSet:=Fontname.CharSet;
     Label13.Font.CharSet:=Fontname.CharSet;Label14.Font.CharSet:=Fontname.CharSet;
     bb0.Font.CharSet:=Fontname.CharSet;bb1.Font.CharSet:=Fontname.CharSet;bb2.Font.CharSet:=Fontname.CharSet;
     bb3.Font.CharSet:=Fontname.CharSet;bb4.Font.CharSet:=Fontname.CharSet;bb5.Font.CharSet:=Fontname.CharSet;
     bb6.Font.CharSet:=Fontname.CharSet;bb7.Font.CharSet:=Fontname.CharSet;bb8.Font.CharSet:=Fontname.CharSet;
     bb9.Font.CharSet:=Fontname.CharSet;bbA.Font.CharSet:=Fontname.CharSet;bbB.Font.CharSet:=Fontname.CharSet;
     bbC.Font.CharSet:=Fontname.CharSet;bbD.Font.CharSet:=Fontname.CharSet;bbE.Font.CharSet:=Fontname.CharSet;
     bbF.Font.CharSet:=Fontname.CharSet;bbMinus.Font.CharSet:=Fontname.CharSet;bbClear.Font.CharSet:=Fontname.CharSet;
     bbPoint.Font.CharSet:=Fontname.CharSet;bbCmon.Font.CharSet:=Fontname.CharSet;
     bbVrodeTak.Font.CharSet:=Fontname.CharSet;bbinTrouble.Font.CharSet:=Fontname.Charset;
     bbStats.Font.CharSet:=FontName.CharSet;
     laCoding.Font.CharSet:=Fontname.CharSet;laDeCoding.Font.CharSet:=Fontname.CharSet;
     PassForm.laWarning.Font.CharSet:=Fontname.CharSet;
     PassForm.bbAttempt.Font.CharSet:=Fontname.CharSet;
     PassForm.bbZabyl.Font.CharSet:=Fontname.CharSet;
     OblomForm.bbAgain.Font.CharSet:=Fontname.CharSet;
     OblomForm.bbNu_I_Ne_Nado.Font.CharSet:=Fontname.CharSet;
     SetupForm.laHeader.Font.CharSet:=Fontname.CharSet;
     SetupForm.laCode.Font.CharSet:=Fontname.CharSet;
     SetupForm.laDecode.Font.CharSet:=Fontname.CharSet;
     SetupForm.Pro8.Font.CharSet:=Fontname.CharSet;
     SetupForm.Pro16.Font.CharSet:=Fontname.CharSet;
     SetupForm.Pro2_10.Font.CharSet:=Fontname.CharSet;
     SetupForm.ProBinNoSi.Font.CharSet:=Fontname.CharSet;
     SetupForm.ProBinWiSi.Font.CharSet:=Fontname.CharSet;
     SetupForm.ProBinFix.Font.CharSet:=Fontname.CharSet;
     SetupForm.ProBinFlo.Font.CharSet:=Fontname.CharSet;
     SetupForm.ProMul.Font.CharSet:=Fontname.CharSet;
     SetupForm.ProAdd.Font.CharSet:=Fontname.CharSet;
     SetupForm.ProAd2.Font.CharSet:=Fontname.CharSet;
     SetupForm.ProAAd.Font.CharSet:=Fontname.CharSet;
     SetupForm.ProCSi.Font.CharSet:=Fontname.CharSet;
     SetupForm.ProASu.Font.CharSet:=Fontname.CharSet;
     SetupForm.bbTry.Font.CharSet:=Fontname.CharSet;
     SetupForm.bbNeTak.Font.CharSet:=Fontname.CharSet;
     PassChForm.bbPridumal.Font.CharSet:=Fontname.CharSet;
     PassChForm.bbNeNadoPoka.Font.CharSet:=Fontname.CharSet;
     PassChForm.laKakoyByl.Font.CharSet:=Fontname.CharSet;
     PassChForm.laKakoyStal.Font.CharSet:=Fontname.CharSet;
     PassChForm.laKakoyStal2.Font.CharSet:=Fontname.CharSet;
     PassChForm.edKakoyByl.Font.CharSet:=Fontname.CharSet;
     PassChForm.edKakoyStal.Font.CharSet:=Fontname.CharSet;
     PassChForm.edKakoyStal2.Font.CharSet:=Fontname.CharSet;
End;

Procedure TProgForm.GetPassword;
Var J : Byte;
Begin
     If FileExists ('SysTrans.ini')
      Then
                       Begin
                            AssignFile ( INIFile, 'SysTrans.ini');
                            Reset (INIFile);
                            Seek (INIFile, 0);
                            Read (INIFile,INIRecord);
                            CloseFile (INIFile);
                            InitialPassword:='';
                            For J:=1 To Length (INIRecord.Password) Do InitialPassword:=InitialPassword+' ';
                            For J:=1 To Length (INIRecord.Password) Do
                                Begin
                                     InitialPassWord[J]:= Chr(Ord(INIRecord.Password[J]) XOr PassCodeByte);
                                End;
                            FontName.Name:=INIRecord.Font1.Name;
                            FontName.CharSet:=INIRecord.Font1.CharSet;
                            FontName.Size:=INIRecord.Font1.Size;
                            FontName.Color:=INIRecord.Font1.Color;
                            FontName.Style:=INIRecord.Font1.Style;
                            font2name.Name:=INIRecord.font2.Name;
                            Font2Name.CharSet:=INIRecord.Font2.CharSet;
                            font2name.Size:=INIRecord.font2.Size;
                            font2name.Color:=INIRecord.font2.Color;
                            font2name.Style:=INIRecord.Font2.Style;
                       End
                   Else
                       Begin
                            AssignFile ( INIFile, 'SysTrans.ini');
                            FontName.Size:=9;
                            FontName.Name:='Arial';
                            FontName.Color:=clWindowText;
                            FontName.CharSet:=204;
                            font2name.Size:=9;
                            font2name.Name:='Arial';
                            Font2Name.Color:=clWindowText;
                            Font2Name.CharSet:=204;

                            ReWrite (INIFile);
                            INIRecord.Font1.Name:=FontName.Name;
                            INIRecord.Font1.CharSet:=FontName.CharSet;
                            INIRecord.Font1.Size:=FontName.Size;
                            INIRecord.Font1.Color:=FontName.Color;
                            INIRecord.Font1.Style:=[];

                            INIRecord.Font2.Name:=font2name.Name;
                            INIRecord.Font2.CharSet:=Font2Name.CharSet;
                            INIRecord.Font2.Size:=font2name.Size;
                            INIRecord.Font2.Color:=font2name.Color;
                            INIRecord.Font2.Style:=[];

                            INIRecord.Password:='';
                            For J:=1 To Length (InitialPassword) Do INIRecord.Password:=INIRecord.Password+' ';
                            For J:=1 To Length (InitialPassword) Do
                                Begin
                                     INIRecord.PassWord[J]:= Chr(Ord(INitialPassword[J]) XOr PassCodeByte);
                                End;
                            Seek (INIFile, 0);
                            Write (INIFile, INIRecord);
                            CloseFile (INIFile);
                       End;
End;

Procedure TProgForm.FullReset;
Begin
   MaskMant (False);
   MaskPor (False);
   MaskRes (False);
   ShowHideCifButtons (False);
   ShowHideCtrlButtons (True);
//   st0.Color:=clYellow;
   meCifra.Text:='';
   bbCmon.Visible:=True;
   bbVrodeTak.Visible:=False;
   bbinTrouble.Visible:=False;
   bbChangeTask.Visible:=False;
{   Ostalos:=Nado;}
//   Choice:=0;
//   Choice2:=0;
   stCode.Enabled:=True;
   stDeCode.Enabled:=True;
End;

procedure TProgForm.bb0Click(Sender: TObject);
begin
     meCifra.Text:=meCifra.Text+'0';
     bbVrodeTak.Default:=True;
end;

procedure TProgForm.bb1Click(Sender: TObject);
begin
     meCifra.Text:=meCifra.Text+'1';
     bbVrodeTak.Default:=True;
end;

procedure TProgForm.bb2Click(Sender: TObject);
begin
     meCifra.Text:=meCifra.Text+'2';
     bbVrodeTak.Default:=True;
end;

procedure TProgForm.bb3Click(Sender: TObject);
begin
     meCifra.Text:=meCifra.Text+'3';
     bbVrodeTak.Default:=True;
end;

procedure TProgForm.bb4Click(Sender: TObject);
begin
     meCifra.Text:=meCifra.Text+'4';
     bbVrodeTak.Default:=True;
end;

procedure TProgForm.bb5Click(Sender: TObject);
begin
     meCifra.Text:=meCifra.Text+'5';
     bbVrodeTak.Default:=True;
end;

procedure TProgForm.bb6Click(Sender: TObject);
begin
     meCifra.Text:=meCifra.Text+'6';
     bbVrodeTak.Default:=True;
end;

procedure TProgForm.bb7Click(Sender: TObject);
begin
     meCifra.Text:=meCifra.Text+'7';
     bbVrodeTak.Default:=True;
end;

procedure TProgForm.bb8Click(Sender: TObject);
begin
     meCifra.Text:=meCifra.Text+'8';
     bbVrodeTak.Default:=True;
end;

procedure TProgForm.bb9Click(Sender: TObject);
begin
     meCifra.Text:=meCifra.Text+'9';
     bbVrodeTak.Default:=True;
end;

procedure TProgForm.bbaClick(Sender: TObject);
begin
     meCifra.Text:=meCifra.Text+'A';
     bbVrodeTak.Default:=True;
end;

procedure TProgForm.bbbClick(Sender: TObject);
begin
     meCifra.Text:=meCifra.Text+'B';
     bbVrodeTak.Default:=True;
end;

procedure TProgForm.bbcClick(Sender: TObject);
begin
     meCifra.Text:=meCifra.Text+'C';
     bbVrodeTak.Default:=True;
end;

procedure TProgForm.bbdClick(Sender: TObject);
begin
     meCifra.Text:=meCifra.Text+'D';
     bbVrodeTak.Default:=True;
end;

procedure TProgForm.bbeClick(Sender: TObject);
begin
     bbVrodeTak.Default:=True;
     meCifra.Text:=meCifra.Text+'E';
end;

procedure TProgForm.bbfClick(Sender: TObject);
begin
     meCifra.Text:=meCifra.Text+'F';
     bbVrodeTak.Default:=True;
end;

procedure TProgForm.bbPointClick(Sender: TObject);
begin
     meCifra.Text:=meCifra.Text+'.';
     bbVrodeTak.Default:=True;
end;

procedure TProgForm.bbClearClick(Sender: TObject);
begin
     meCifra.Text:='';
     bbVrodeTak.Default:=True;
end;

procedure TProgForm.bbCutClick(Sender: TObject);
begin
     If Length (meCifra.Text)<>0 Then meCifra.Text:= Copy(meCifra.Text,1,Length(meCifra.Text)-1);
     bbVrodeTak.Default:=True;
end;

procedure TProgForm.bbMinusClick(Sender: TObject);
begin
     If  Copy(meCifra.Text,1,1)<>'-' Then meCifra.Text:='-'+meCifra.Text
                                 Else meCifra.Text:=Copy(meCifra.Text,2,Length(meCifra.Text)-1);
     bbVrodeTak.Default:=True;
end;

procedure TProgForm.stMantBit15Click(Sender: TObject);
begin
   If bbYasno.Enabled=False Then Begin
     bbVrodeTak.SetFocus;
     If stMantBit15.Color=clBlack
        Then stMantBit15.Color:=clYellow
        Else
     If stMantBit15.Color=clYellow
        Then stMantBit15.Color:=clBlack;
   End;
end;

procedure TProgForm.stMantBit14Click(Sender: TObject);
begin
   If bbYasno.Enabled=False Then Begin
     bbVrodeTak.SetFocus;
     If stMantBit14.Color=clBlack
        Then stMantBit14.Color:=clYellow
        Else
     If stMantBit14.Color=clYellow
        Then stMantBit14.Color:=clBlack;
   End;

end;

procedure TProgForm.stMantBit13Click(Sender: TObject);
begin
   If bbYasno.Enabled=False Then Begin
     bbVrodeTak.SetFocus;
     If stMantBit13.Color=clBlack
        Then stMantBit13.Color:=clYellow
        Else
     If stMantBit13.Color=clYellow
        Then stMantBit13.Color:=clBlack;
   End;
end;

procedure TProgForm.stMantBit12Click(Sender: TObject);
begin
   If bbYasno.Enabled=False Then Begin
     bbVrodeTak.SetFocus;
     If stMantBit12.Color=clBlack
        Then stMantBit12.Color:=clYellow
        Else
     If stMantBit12.Color=clYellow
        Then stMantBit12.Color:=clBlack;
   End;
end;

procedure TProgForm.stMantBit11Click(Sender: TObject);
begin
   If bbYasno.Enabled=False Then Begin
     bbVrodeTak.SetFocus;
     If stMantBit11.Color=clBlack
        Then stMantBit11.Color:=clYellow
        Else
     If stMantBit11.Color=clYellow
        Then stMantBit11.Color:=clBlack;
   End;
end;

procedure TProgForm.stMantBit10Click(Sender: TObject);
begin
   If bbYasno.Enabled=False Then Begin
     bbVrodeTak.SetFocus;
     If stMantBit10.Color=clBlack
        Then stMantBit10.Color:=clYellow
        Else
     If stMantBit10.Color=clYellow
        Then stMantBit10.Color:=clBlack;
   End;
end;

procedure TProgForm.stMantBit9Click(Sender: TObject);
begin
   If bbYasno.Enabled=False Then Begin
     bbVrodeTak.SetFocus;
     If stMantBit9.Color=clBlack
        Then stMantBit9.Color:=clYellow
        Else
     If stMantBit9.Color=clYellow
        Then stMantBit9.Color:=clBlack;
   End;
end;

procedure TProgForm.stMantBit8Click(Sender: TObject);
begin
   If bbYasno.Enabled=False Then Begin
     bbVrodeTak.SetFocus;
     If stMantBit8.Color=clBlack
        Then stMantBit8.Color:=clYellow
        Else
     If stMantBit8.Color=clYellow
        Then stMantBit8.Color:=clBlack;
   End;
end;

procedure TProgForm.stMantBit7Click(Sender: TObject);
begin
   If bbYasno.Enabled=False Then Begin
     bbVrodeTak.SetFocus;
     If stMantBit7.Color=clBlack
        Then stMantBit7.Color:=clYellow
        Else
     If stMantBit7.Color=clYellow

        Then stMantBit7.Color:=clBlack;
   End;
end;

procedure TProgForm.stMantBit6Click(Sender: TObject);
begin
   If bbYasno.Enabled=False Then Begin
     bbVrodeTak.SetFocus;
     If stMantBit6.Color=clBlack
        Then stMantBit6.Color:=clYellow
        Else
     If stMantBit6.Color=clYellow
        Then stMantBit6.Color:=clBlack;
   End;
end;

procedure TProgForm.stMantBit5Click(Sender: TObject);
begin
   If bbYasno.Enabled=False Then Begin
     bbVrodeTak.SetFocus;
     If stMantBit5.Color=clBlack
        Then stMantBit5.Color:=clYellow
        Else
     If stMantBit5.Color=clYellow
        Then stMantBit5.Color:=clBlack;
   End;
end;

procedure TProgForm.stMantBit4Click(Sender: TObject);
begin
   If bbYasno.Enabled=False Then Begin
     bbVrodeTak.SetFocus;
     If stMantBit4.Color=clBlack
        Then stMantBit4.Color:=clYellow
        Else
     If stMantBit4.Color=clYellow
        Then stMantBit4.Color:=clBlack;
   End;
end;

procedure TProgForm.stMantBit3Click(Sender: TObject);
begin
   If bbYasno.Enabled=False Then Begin
     bbVrodeTak.SetFocus;
     If stMantBit3.Color=clBlack
        Then stMantBit3.Color:=clYellow
        Else
     If stMantBit3.Color=clYellow
        Then stMantBit3.Color:=clBlack;
   End;
end;

procedure TProgForm.stMantBit2Click(Sender: TObject);
begin
   If bbYasno.Enabled=False Then Begin
     bbVrodeTak.SetFocus;
     If stMantBit2.Color=clBlack
        Then stMantBit2.Color:=clYellow
        Else
     If stMantBit2.Color=clYellow
        Then stMantBit2.Color:=clBlack;
   End;
end;

procedure TProgForm.stMantBit1Click(Sender: TObject);
begin
   If bbYasno.Enabled=False Then Begin
     bbVrodeTak.SetFocus;
     If stMantBit1.Color=clBlack
        Then stMantBit1.Color:=clYellow
        Else
     If stMantBit1.Color=clYellow
        Then stMantBit1.Color:=clBlack;
   End;
end;

procedure TProgForm.stMantBit0Click(Sender: TObject);
begin
   If bbYasno.Enabled=False Then Begin
     bbVrodeTak.SetFocus;
     If stMantBit0.Color=clBlack
        Then stMantBit0.Color:=clYellow
        Else
     If stMantBit0.Color=clYellow
        Then stMantBit0.Color:=clBlack;
   End;
end;

procedure TProgForm.stPorBit7Click(Sender: TObject);
begin
   If bbYasno.Enabled=False Then Begin
     bbVrodeTak.SetFocus;
     If stPorBit7.Color=clBlack
        Then stPorBit7.Color:=clYellow
        Else
            If stPorBit7.Color=clYellow
            Then stPorBit7.Color:=clBlack;
   End;
end;

procedure TProgForm.stPorBit6Click(Sender: TObject);
begin
   If bbYasno.Enabled=False Then Begin
     bbVrodeTak.SetFocus;
     If stPorBit6.Color=clBlack
        Then stPorBit6.Color:=clYellow
        Else
            If stPorBit6.Color=clYellow
            Then stPorBit6.Color:=clBlack;
   End;
end;

procedure TProgForm.stPorBit5Click(Sender: TObject);
begin
   If bbYasno.Enabled=False Then Begin
     bbVrodeTak.SetFocus;
     If stPorBit5.Color=clBlack
        Then stPorBit5.Color:=clYellow
        Else
            If stPorBit5.Color=clYellow
            Then stPorBit5.Color:=clBlack;
   End;
end;

procedure TProgForm.stPorBit4Click(Sender: TObject);
begin
   If bbYasno.Enabled=False Then Begin
     bbVrodeTak.SetFocus;
     If stPorBit4.Color=clBlack
        Then stPorBit4.Color:=clYellow
        Else
            If stPorBit4.Color=clYellow
            Then stPorBit4.Color:=clBlack;
   End;
end;

procedure TProgForm.stPorBit3Click(Sender: TObject);
begin
   If bbYasno.Enabled=False Then Begin
     bbVrodeTak.SetFocus;
     If stPorBit3.Color=clBlack
        Then stPorBit3.Color:=clYellow
        Else
            If stPorBit3.Color=clYellow
            Then stPorBit3.Color:=clBlack;
   End;
end;

procedure TProgForm.stPorBit2Click(Sender: TObject);
begin
   If bbYasno.Enabled=False Then Begin
     bbVrodeTak.SetFocus;
     If stPorBit2.Color=clBlack
        Then stPorBit2.Color:=clYellow
        Else
            If stPorBit2.Color=clYellow
            Then stPorBit2.Color:=clBlack;
   End;
end;

procedure TProgForm.stPorBit1Click(Sender: TObject);
begin
   If bbYasno.Enabled=False Then Begin
     bbVrodeTak.SetFocus;
     If stPorBit1.Color=clBlack
        Then stPorBit1.Color:=clYellow
        Else
            If stPorBit1.Color=clYellow
            Then stPorBit1.Color:=clBlack;
   End;
end;

procedure TProgForm.stPorBit0Click(Sender: TObject);
begin
   If bbYasno.Enabled=False Then Begin
     bbVrodeTak.SetFocus;
     If stPorBit0.Color=clBlack
        Then stPorBit0.Color:=clYellow
        Else
            If stPorBit0.Color=clYellow
            Then stPorBit0.Color:=clBlack;
   End;
end;

procedure TProgForm.stResBit7Click(Sender: TObject);
begin
   If bbYasno.Enabled=False Then Begin
     bbVrodeTak.SetFocus;
     If stResBit7.Color=clBlack
        Then stResBit7.Color:=clYellow
        Else
            If stResBit7.Color=clYellow
            Then stResBit7.Color:=clBlack;
   End;
end;

procedure TProgForm.stResBit6Click(Sender: TObject);
begin
   If bbYasno.Enabled=False Then Begin
     bbVrodeTak.SetFocus;
     If stResBit6.Color=clBlack
        Then stResBit6.Color:=clYellow
        Else
            If stResBit6.Color=clYellow
            Then stResBit6.Color:=clBlack;
   End;
end;

procedure TProgForm.stResBit5Click(Sender: TObject);
begin
   If bbYasno.Enabled=False Then Begin
     bbVrodeTak.SetFocus;
     If stResBit5.Color=clBlack
        Then stResBit5.Color:=clYellow
        Else
            If stResBit5.Color=clYellow
            Then stResBit5.Color:=clBlack;
   End;
end;

procedure TProgForm.stResBit4Click(Sender: TObject);
begin
   If bbYasno.Enabled=False Then Begin
     bbVrodeTak.SetFocus;
     If stResBit4.Color=clBlack
        Then stResBit4.Color:=clYellow
        Else
            If stResBit4.Color=clYellow
            Then stResBit4.Color:=clBlack;
   End;
end;

procedure TProgForm.stResBit3Click(Sender: TObject);
begin
   If bbYasno.Enabled=False Then Begin
     bbVrodeTak.SetFocus;
     If stResBit3.Color=clBlack
        Then stResBit3.Color:=clYellow
        Else
            If stResBit3.Color=clYellow
            Then stResBit3.Color:=clBlack;
   End;
end;

procedure TProgForm.stResBit2Click(Sender: TObject);
begin
   If bbYasno.Enabled=False Then Begin
     bbVrodeTak.SetFocus;
     If stResBit2.Color=clBlack
        Then stResBit2.Color:=clYellow
        Else
            If stResBit2.Color=clYellow
            Then stResBit2.Color:=clBlack;
   End;
end;

procedure TProgForm.stResBit1Click(Sender: TObject);
begin
   If bbYasno.Enabled=False Then Begin
     bbVrodeTak.SetFocus;
     If stResBit1.Color=clBlack
        Then stResBit1.Color:=clYellow
        Else
            If stResBit1.Color=clYellow
            Then stResBit1.Color:=clBlack;
   End;
end;

procedure TProgForm.stResBit0Click(Sender: TObject);
begin
   If bbYasno.Enabled=False Then Begin
     bbVrodeTak.SetFocus;
     If stResBit0.Color=clBlack
        Then stResBit0.Color:=clYellow
        Else
            If stResBit0.Color=clYellow
            Then stResBit0.Color:=clBlack;
   End;
end;

procedure TProgForm.N2Click(Sender: TObject);
begin
     NoOneIsDone;
     ResetCounters;
     Randomize;
     N6.Enabled:=True;
     FullReset;
end;

procedure TProgForm.N4Click(Sender: TObject);
Var J : Byte;
begin
     FontDialog.Font.Name:=INIRecord.Font1.Name; FontDialog.Font.CharSet:=INIRecord.Font1.Charset;
     FontDialog.Font.Color:=INIRecord.Font1.Color; FontDialog.Font.Size:=INIRecord.Font1.Size;
     FontDialog.Font.Style:=INIRecord.Font1.Style;
     FontDialog.Execute;
     FontName.Name:=FontDialog.Font.Name;
     FontName.Style:=FontDialog.Font.Style;
     FontName.CharSet:=FontDialog.Font.CharSet;
     FontName.Color:=FontDialog.Font.Color;
     FontName.Size:=FontDialog.Font.Size;

     AssignFile ( INIFile, 'SysTrans.ini');
     {$I-}
     Reset (INIFile);
     {$I+}
     If IOResult=0 Then
                       Begin
                            Read (INIFile,INIRecord);
                            INIRecord.Font1.Name:=FontName.Name;
                            INIRecord.Font1.CharSet:=FontName.CharSet;
                            INIRecord.Font1.Size:=FontName.Size;
                            INIRecord.Font1.Color:=FontName.Color;
                            INIRecord.Font1.Style:=FontName.Style;
                            Seek (INIFile, 0);
                            Write (INIFile, INIRecord);
                            Seek (INIFile,0);
                            Read (INIFile, INIRecord);
                            CloseFile (INIFile);
                       End
                   Else
                       Begin
                            ReWrite (INIFile);
                            INIRecord.Font1.Name:=FontName.Name;
                            INIRecord.Font1.Size:=FontName.Size;
                            INIRecord.Font1.CharSet:=FontName.CharSet;
                            INIRecord.Font1.Color:=FontName.Color;
                            INIRecord.Font1.Style:=FontName.Style;
                            INIRecord.Font2.Name:='Arial';
                            INIRecord.Font2.CharSet:=0;
                            INIRecord.Font2.Size:=9;
                            INIRecord.Font2.Color:=clWindowText;
                            INIRecord.Font2.Style:=[];
                            INIRecord.Password:='';
                            For J:=1 To Length (InitialPassword) Do INIRecord.Password:=INIRecord.Password+' ';
                            For J:=1 To Length (InitialPassword) Do
                                Begin
                                     INIRecord.PassWord[J]:= Chr(Ord(INitialPassword[J]) XOr PassCodeByte);
                                End;
                            Seek (INIFile, 0);
                            Write (INIFile, INIRecord);
                            CloseFile (INIFile);
                       End;
     ChangeFont;
end;

procedure TProgForm.st1Click(Sender: TObject);
begin
    If st1.Color=clBlack
       Then Begin
       BlackCtrlButtons (True);
       MaskCodeDecode (True);
       St1.Color:=ClYellow;
       Choice:=1;
    End
end;

procedure TProgForm.st2Click(Sender: TObject);
begin
    If st2.Color=clBlack
       Then Begin
          BlackCtrlButtons (True);
          MaskCodeDecode (True);
          St2.Color:=ClYellow;
          Choice:=2;
       End;
end;

procedure TProgForm.st3Click(Sender: TObject);
begin
    If st3.Color=clBlack
       Then Begin
          BlackCtrlButtons (True);
          St3.Color:=ClYellow;
          MaskCodeDecode (True);
          Choice:=3;
       End;
end;

procedure TProgForm.st4Click(Sender: TObject);
begin
    If st4.Color=clBlack
       Then Begin
          BlackCtrlButtons (True);
          MaskCodeDecode (True);
          Choice:=4;
          St4.Color:=ClYellow;
       End;
end;

procedure TProgForm.st5Click(Sender: TObject);
begin
    If st5.Color=clBlack
       Then Begin
          BlackCtrlButtons (True);
          MaskCodeDecode (True);
          St5.Color:=ClYellow;
          Choice:=5;
       END;
end;

procedure TProgForm.st6Click(Sender: TObject);
begin
    If st6.Color=clBlack
       Then Begin
          BlackCtrlButtons (True);
          MaskCodeDecode (True);
          St6.Color:=ClYellow;
          Choice:=6;
       End;
end;

procedure TProgForm.st7Click(Sender: TObject);
begin
    If st7.Color=clBlack
       Then Begin
          BlackCtrlButtons (True);
          MaskCodeDecode (False);
          St7.Color:=ClYellow;
          Choice:=7;
          Choice2:=0;
       End;
end;

procedure TProgForm.st8Click(Sender: TObject);
begin
    If st8.Color=clBlack
       Then Begin
          BlackCtrlButtons (True);
          MaskCodeDecode (False);
          St8.Color:=ClYellow;
          Choice:=8;
          Choice2:=0;
       End;
end;

procedure TProgForm.st9Click(Sender: TObject);
begin
    If st9.Color=clBlack
       Then Begin
          BlackCtrlButtons (True);
          St9.Color:=ClYellow;
          MaskCodeDecode (False);
          Choice:=9;
          Choice2:=0;
       End;
end;

procedure TProgForm.st10Click(Sender: TObject);
begin
    If st10.Color=clBlack
       Then Begin
          BlackCtrlButtons (True);
          St10.Color:=ClYellow;
          MaskCodeDecode (False);
          Choice:=10;
          Choice2:=0;
       END;
end;

procedure TProgForm.st11Click(Sender: TObject);
begin
    If st11.Color=clBlack
       Then Begin
          BlackCtrlButtons (True);
          St11.Color:=ClYellow;
          MaskCodeDecode (False);
          Choice:=11;
          Choice2:=0;
       End;
end;

procedure TProgForm.st12Click(Sender: TObject);
begin
    If st12.Color=clBlack
       Then Begin
          BlackCtrlButtons (True);
          St12.Color:=ClYellow;
          MaskCodeDecode (False);
          Choice:=12;
          Choice2:=0;
       End;
end;

procedure TProgForm.st0Click(Sender: TObject);
begin
    If st0.Color=clBlack
       Then Begin
          BlackCtrlButtons (True);
          St0.Color:=ClYellow;
          MaskCodeDecode (True);
          Choice:=0;
       end;

end;

procedure TProgForm.N3Click(Sender: TObject);
begin
     ProgForm.Close;
     Halt;
end;

procedure TProgForm.N6Click(Sender: TObject);
begin
     PassForm.ShowModal;
end;

procedure TProgForm.N8Click(Sender: TObject);
Var J : Byte;
begin
     FontDialog.Font.Name:=INIRecord.Font2.Name; FontDialog.Font.CharSet:=INIRecord.Font2.Charset;
     FontDialog.Font.Color:=INIRecord.Font2.Color; FontDialog.Font.Size:=INIRecord.Font2.Size;
     FontDialog.Font.Style:=INIRecord.Font2.Style;
     FontDialog.Execute;
     Font2Name.Name:=FontDialog.Font.Name;
     Font2Name.CharSet:=FontDialog.Font.CharSet;
     Font2Name.Style:=FontDialog.Font.Style;
     Font2Name.Color:=FontDialog.Font.Color;
     Font2Name.Size:=FontDialog.Font.Size;
     AssignFile (INIFile, 'SysTrans.ini');
     {$I-}
     Reset (INIFile);
     {$I+}
     If IOResult=0 Then
                       Begin
                            Read (INIFile,INIRecord);
                            INIRecord.Font2.Name:=font2name.Name;
                            INIRecord.Font2.CharSet:=Font2Name.CharSet;
                            INIRecord.Font2.Size:=font2name.Size;
                            INIRecord.Font2.Color:=font2name.Color;
                            INIRecord.Font2.Style:=font2name.Style;
                            Seek (INIFile, 0);
                            Write (INIFile, INIRecord);
                            CloseFile (INIFile);
                       End
                   Else
                       Begin
                            ReWrite (INIFile);
                            INIRecord.Font2.Name:=font2name.Name;
                            INIRecord.Font2.CharSet:=Font2Name.CharSet;
                            INIRecord.Font2.Size:=font2name.Size;
                            INIRecord.Font2.Color:=font2name.Color;
                            INIRecord.Font2.Style:=font2name.Style;
                            INIRecord.Font1.Name:='Arial';
                            INIRecord.Font1.Size:=9;
                            INIRecord.Font1.Color:=clWindowText;
                            INIRecord.Font1.Style:=[];
                            INIRecord.Password:='';
                            For J:=1 To Length (InitialPassword) Do INIRecord.Password:=INIRecord.Password+' ';
                            For J:=1 To Length (InitialPassword) Do
                                Begin
                                     INIRecord.PassWord[J]:= Chr(Ord(INitialPassword[J]) XOr PassCodeByte);
                                End;
                            Seek (INIFile, 0);
                            Write (INIFile, INIRecord);
                            CloseFile (INIFile);
                       End;
     ResForm.sgResults.Font:=FontDialog.Font;
end;

procedure TProgForm.N9Click(Sender: TObject);
begin
     PassChForm.ShowModal;
end;

procedure TProgForm.stCodeClick(Sender: TObject);
begin
     if stCode.Color=clBlack Then
        Begin
             stCode.Color:=clYellow;
             stDecode.Color:=clBlack;
             Choice2:=0;
        End;

end;

procedure TProgForm.stDecodeClick(Sender: TObject);
begin
     if stDeCode.Color=clBlack Then
        Begin
             stCode.Color:=clBlack;
             stDecode.Color:=clYellow;
             Choice2:=1;
        End;
end;

procedure TProgForm.bbStatsClick(Sender: TObject);
begin
                    ResForm.sgResults.Cells [1,1]:= SetupForm.CodeOct.Text;      ResForm.sgResults.Cells [2,1]:=IntToStr(StrToInt(SetupForm.CodeOct.Text)-Counter4CodeOct);              ResForm.sgResults.Cells [3,1]:=IntToStr(Counter4CodeOct);      ResForm.sgResults.Cells [4,1]:=IntToStr (Errors[0]);
                    ResForm.sgResults.Cells [1,2]:= SetupForm.DecodeOct.Text;    ResForm.sgResults.Cells [2,2]:=IntToStr(StrToInt(SetupForm.DeCodeOct.Text)-Counter4DecodeOct);          ResForm.sgResults.Cells [3,2]:=IntToStr(Counter4DecodeOct);    ResForm.sgResults.Cells [4,2]:=IntToStr (Errors[1]);
                    ResForm.sgResults.Cells [1,3]:= SetupForm.Codehex.Text;      ResForm.sgResults.Cells [2,3]:=IntToStr(StrToInt(SetupForm.CodeHex.Text)-Counter4Codehex);              ResForm.sgResults.Cells [3,3]:=IntToStr(Counter4Codehex);      ResForm.sgResults.Cells [4,3]:=IntToStr (Errors[2]);
                    ResForm.sgResults.Cells [1,4]:= SetupForm.DecodeHex.Text;    ResForm.sgResults.Cells [2,4]:=IntToStr(StrToInt(SetupForm.DeCodeHex.Text)-Counter4DecodeHex);          ResForm.sgResults.Cells [3,4]:=IntToStr(Counter4DecodeHex);    ResForm.sgResults.Cells [4,4]:=IntToStr (Errors[3]);
                    ResForm.sgResults.Cells [1,5]:= SetupForm.CodeBinDec.Text;   ResForm.sgResults.Cells [2,5]:=IntToStr(StrToInt(SetupForm.CodeBinDec.Text)-Counter4CodeBinDec);        ResForm.sgResults.Cells [3,5]:=IntToStr(Counter4CodeBinDec);   ResForm.sgResults.Cells [4,5]:=IntToStr (Errors[4]);
                    ResForm.sgResults.Cells [1,6]:= SetupForm.DecodeBinDec.Text; ResForm.sgResults.Cells [2,6]:=IntToStr(StrToInt(SetupForm.DeCodeBinDec.Text)-Counter4DecodeBinDec);    ResForm.sgResults.Cells [3,6]:=IntToStr(Counter4DecodeBinDec); ResForm.sgResults.Cells [4,6]:=IntToStr (Errors[5]);
                    ResForm.sgResults.Cells [1,7]:= SetupForm.CodeBinNoSi.Text;  ResForm.sgResults.Cells [2,7]:=IntToStr(StrToInt(SetupForm.CodeBinNoSi.Text)-Counter4CodeBinNoSi);      ResForm.sgResults.Cells [3,7]:=IntToStr(Counter4CodeBinNoSi);  ResForm.sgResults.Cells [4,7]:=IntToStr (Errors[6]);
                    ResForm.sgResults.Cells [1,8]:= SetupForm.DecodeBinNoSi.Text;ResForm.sgResults.Cells [2,8]:=IntToStr(StrToInt(SetupForm.DeCodeBinNoSi.Text)-Counter4DecodeBinNoSi);  ResForm.sgResults.Cells [3,8]:=IntToStr(Counter4DecodeBinNoSi);ResForm.sgResults.Cells [4,8]:=IntToStr (Errors[7]);
                    ResForm.sgResults.Cells [1,9]:= SetupForm.CodeBinWiSi.Text;  ResForm.sgResults.Cells [2,9]:=IntToStr(StrToInt(SetupForm.CodeBinWiSi.Text)-Counter4CodeBinWiSi);      ResForm.sgResults.Cells [3,9]:=IntToStr(Counter4CodeBinWiSi);  ResForm.sgResults.Cells [4,9]:=IntToStr (Errors[8]);
                    ResForm.sgResults.Cells [1,10]:=SetupForm.DecodeBinWiSi.Text;ResForm.sgResults.Cells [2,10]:=IntToStr(StrToInt(SetupForm.DeCodeBinWiSi.Text)-Counter4DecodeBinWiSi); ResForm.sgResults.Cells [3,10]:=IntToStr(Counter4DecodeBinWiSi);ResForm.sgResults.Cells [4,10]:=IntToStr (Errors[9]);
                    ResForm.sgResults.Cells [1,11]:=SetupForm.CodeBinFix.Text;   ResForm.sgResults.Cells [2,11]:=IntToStr(StrToInt(SetupForm.CodeBinFix.Text)-Counter4CodeBinFix);       ResForm.sgResults.Cells [3,11]:=IntToStr(Counter4CodeBinFix);   ResForm.sgResults.Cells [4,11]:=IntToStr (Errors[10]);
                    ResForm.sgResults.Cells [1,12]:=SetupForm.DecodeBinFix.Text; ResForm.sgResults.Cells [2,12]:=IntToStr(StrToInt(SetupForm.DeCodeBinFix.Text)-Counter4DecodeBinFix);   ResForm.sgResults.Cells [3,12]:=IntToStr(Counter4DecodeBinFix); ResForm.sgResults.Cells [4,12]:=IntToStr (Errors[11]);
                    ResForm.sgResults.Cells [1,13]:=SetupForm.CodeBinFlo.Text;   ResForm.sgResults.Cells [2,13]:=IntToStr(StrToInt(SetupForm.CodeBinFlo.Text)-Counter4CodeBinFlo);       ResForm.sgResults.Cells [3,13]:=IntToStr(Counter4CodeBinFlo);   ResForm.sgResults.Cells [4,13]:=IntToStr (Errors[12]);
                    ResForm.sgResults.Cells [1,14]:=SetupForm.DecodeBinFlo.Text; ResForm.sgResults.Cells [2,14]:=IntToStr(StrToInt(SetupForm.DeCodeBinFlo.Text)-Counter4DecodeBinFlo);   ResForm.sgResults.Cells [3,14]:=IntToStr(Counter4DecodeBinFlo); ResForm.sgResults.Cells [4,14]:=IntToStr (Errors[13]);
                    ResForm.sgResults.Cells [1,15]:=SetupForm.ToMul.Text;        ResForm.sgResults.Cells [2,15]:=IntToStr(StrToInt(SetupForm.ToMul.Text)-Counter4Mul);                   ResForm.sgResults.Cells [3,15]:=IntToStr(Counter4Mul);          ResForm.sgResults.Cells [4,15]:=IntToStr (Errors[14]);
                    ResForm.sgResults.Cells [1,16]:=SetupForm.ToAdd.Text;        ResForm.sgResults.Cells [2,16]:=IntToStr(StrToInt(SetupForm.ToAdd.Text)-Counter4Add);                   ResForm.sgResults.Cells [3,16]:=IntToStr(Counter4Add);          ResForm.sgResults.Cells [4,16]:=IntToStr (Errors[16]);
                    ResForm.sgResults.Cells [1,17]:=SetupForm.ToAd2.Text;        ResForm.sgResults.Cells [2,17]:=IntToStr(StrToInt(SetupForm.ToAd2.Text)-Counter4Ad2);                   ResForm.sgResults.Cells [3,17]:=IntToStr(Counter4Ad2);          ResForm.sgResults.Cells [4,17]:=IntToStr (Errors[18]);
                    ResForm.sgResults.Cells [1,18]:=SetupForm.ToCSi.Text;        ResForm.sgResults.Cells [2,18]:=IntToStr(StrToInt(SetupForm.ToCSi.Text)-Counter4CSi);                   ResForm.sgResults.Cells [3,18]:=IntToStr(Counter4CSi);          ResForm.sgResults.Cells [4,18]:=IntToStr (Errors[20]);
                    ResForm.sgResults.Cells [1,19]:=SetupForm.ToAAd.Text;        ResForm.sgResults.Cells [2,19]:=IntToStr(StrToInt(SetupForm.ToAAd.Text)-Counter4AAd);                   ResForm.sgResults.Cells [3,19]:=IntToStr(Counter4AAd);          ResForm.sgResults.Cells [4,19]:=IntToStr (Errors[22]);
                    ResForm.sgResults.Cells [1,20]:=SetupForm.ToASu.Text;        ResForm.sgResults.Cells [2,20]:=IntToStr(StrToInt(SetupForm.ToAsu.Text)-Counter4ASu);                   ResForm.sgResults.Cells [3,20]:=IntToStr(Counter4ASu);          ResForm.sgResults.Cells [4,20]:=IntToStr (Errors[24]);
                    ResForm.ShowModal;
end;

procedure TProgForm.bbYasnoClick(Sender: TObject);
begin
  bbYasno.Enabled:=False;
  bbYasno.Visible:=False;
  bbVrodeTak.Enabled:=True;
  bbinTrouble.Enabled:=True;
  bbStats.Enabled:=True;
  N1.Enabled:=True;
  N5.Enabled:=True;
  meCifra.text:='';
  Poehali;
end;

procedure TProgForm.meCifraClick(Sender: TObject);
begin
     If bbYasno.Enabled Then bbYasno.SetFocus
     Else If bbVrodeTak.Visible Then bbVrodeTak.SetFocus
          Else bbCmon.SetFocus;
end;

procedure TProgForm.bbChangeTaskClick(Sender: TObject);
begin
  bbYasno.Enabled:=False;
  bbYasno.Visible:=False;
  bbStats.Enabled:=True;
  N1.Enabled:=True;
  N5.Enabled:=True;
  meCifra.text:='';
  FullReset;
end;

end.

