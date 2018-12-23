unit EnterDialog;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TEnterDialogForm = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Button2: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TEnterDialog = class(TControl)
  private
    { Private declarations }
	FPasswordChar : char;
	FCaption : string;
	FText : string;
	FMaxLength : longint;
     FInputText : string;
     FButtons : uint;
  protected
    { Protected declarations }
  public
    { Public declarations }
    function Enter : longint;
  published
    { Published declarations }
    property PasswordChar : char read FPasswordChar write FPasswordChar default #0;
    property Caption : string read FCaption write FCaption;
    property Text : string read FText write FText;
    property MaxLength : longint read FMaxLength write FMaxLength default 0;
    property InputText : string read FInputText write FInputText;
    property Buttons : uint read FButtons write FButtons;
  end;

procedure Register;

implementation

{$R *.DFM}

procedure Register;
begin
  RegisterComponents('Losev Controls', [TEnterDialog]);
end;

function TEnterDialog.Enter : longint;
var
  EnterDialogForm: TEnterDialogForm;
begin
	with EnterDialogForm do begin
		EnterDialogForm:=TEnterDialogForm.Create(nil);
     	Caption:=FCaption;
	     Label1.Caption:=FText;
	     Edit1.PasswordChar:=FPasswordChar;
		Edit1.Text:=FInputText;
          Label1.Left:=(Width-Label1.Width-Edit1.Width-10) div 2;
          Edit1.Left:=Label1.Left+Label1.Width+10;
	     case FButtons of
	     MB_OK : begin
			Button1.Visible:=true;
	          Button1.Caption:='Ok';
	          Button1.Left:=(Width-Button1.Width) div 2;
			Button2.Visible:=false;
			Button2.Caption:='';
	     end;
	     MB_OKCANCEL : begin
			Button1.Visible:=true;
	          Button1.Caption:='Ok';
	          Button1.Left:=(Width-Button1.Width-Button2.Width-20) div 2;
			Button2.Visible:=true;
               Button2.Caption:='Отмена';
               Button2.Left:=Button1.Left+Button1.Width+20;
          end;
     	end;
		Enter:=EnterDialogForm.ShowModal;
	     FInputText:=Edit1.Text;
		EnterDialogForm.Release;
     end;
end;

procedure TEnterDialogForm.FormShow(Sender: TObject);
begin
	ActiveControl:=Edit1;
end;

procedure TEnterDialogForm.Button1Click(Sender: TObject);
begin
	ModalResult:=mrOK;
//	Close;
end;

procedure TEnterDialogForm.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
	if Key=#13 then ActiveControl:=Button1;
end;

procedure TEnterDialogForm.Button2Click(Sender: TObject);
begin
	ModalResult:=mrCANCEL;
//	Close;
end;

end.
