unit ExtFontDialog;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls,
  SettingFonts;

type
TFormSetFonts = class;

TExtFontDialog = class(TCommonDialog)
  private
    { Private declarations }
    FormSetFonts: TFormSetFonts;
    FFileFonts : string;
  protected
    { Protected declarations }
  public
    { Public declarations }
    Items : TFontSet;
    constructor Create( AOwner : TComponent ); override;
    destructor Destroy; override;
    function Execute : boolean;
    procedure LoadFonts;
    procedure SaveFonts;
  published
    { Published declarations }
    property FileFonts : string read FFileFonts write FFileFonts;
  end;

TFormSetFonts = class(TForm)
    ListBox1: TListBox;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    Creator : TExtFontDialog;
  public
    { Public declarations }
  end;

procedure Register;

implementation

{$R *.DFM}

procedure Register;
begin
  RegisterComponents('Losev Controls', [TExtFontDialog]);
end;

constructor TExtFontDialog.Create( AOwner : TComponent );
begin
     inherited Create( AOwner );
     Items:=TFontSet.Create;
end;

destructor TExtFontDialog.Destroy;
begin
     inherited Destroy;
end;

function TExtFontDialog.Execute : boolean;
begin
     FormSetFonts:=TFormSetFonts.Create( nil );
     FormSetFonts.Creator:=self;
     Items.AssignGroupsNames( FormSetFonts.ListBox1.Items );
     FormSetFonts.ListBox1.ItemIndex:=0;
     FormSetFonts.ShowModal;
     Result:=true;
end;

procedure TExtFontDialog.LoadFonts;
begin
     Items.LoadFonts( FFileFonts );
end;

procedure TExtFontDialog.SaveFonts;
begin
     Items.SaveFonts( FFileFonts );
end;

procedure TFormSetFonts.Button1Click(Sender: TObject);
begin
     Creator.Items.DialogSetFontGroup( ListBox1.ItemIndex );
end;

procedure TFormSetFonts.Button2Click(Sender: TObject);
begin
     Close;
end;

end.
