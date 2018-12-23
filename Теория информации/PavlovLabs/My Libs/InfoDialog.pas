unit InfoDialog;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls;

type
  TInfoDialog = class(TForm)
//    function ShowDialog : longint;\
  private
    { Private declarations }

  protected
    { Protected declarations }

  public
    { Public declarations }
    PushButton : String;
    procedure AddText( X, Y : integer; Text, NameFont : string; SizeFont : integer; Color : TColor );
    procedure AddButton( X, Y : integer; Text : string );
    procedure ButtonClick(Sender: TObject);
    constructor CreateNew(AOwner: TComponent);
  published
    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Losev Controls', [TInfoDialog]);
end;

constructor TInfoDialog.CreateNew(AOwner: TComponent);
begin
     //FD:=TForm.Create(nil);
     inherited CreateNew(AOwner);
     Position:=poScreenCenter;
     Scaled:=false;
     BorderStyle:=bsDialog;
     BorderIcons:=[];
end;

procedure TInfoDialog.AddText( X, Y : integer; Text, NameFont : string; SizeFont : integer; Color : TColor );
var
l : TLabel;
begin
     l:=TLabel.Create(Self);
     l.AutoSize:=true;
     l.Font.Name:=NameFont;
     l.Font.Size:=SizeFont;
     l.Font.Color:=Color;
     l.Caption:=Text;
     if X=0 then
        l.Left:=(Width-l.Width) div 2
     else
        l.Left:=X;
     if Y=0 then
        l.Top:=(Height-l.Height) div 2
     else
        l.Top:=Y;
     InsertControl(l);
     //InsertComponent(l);
end;

procedure TInfoDialog.AddButton( X, Y : integer; Text : string );
var
b : TButton;
begin
     b:=TButton.Create(Self);
     b.Left:=X;
     b.Top:=Y;
     b.Width:=100;
     b.Height:=25;
     b.Caption:=Text;
     b.OnClick:=ButtonClick;
     InsertControl(b);
     //InsertComponent(b);
end;

procedure TInfoDialog.ButtonClick(Sender: TObject);
begin
     PushButton:=TButton(Sender).Caption;
     Close;
end;

//function TInfoDialog.ShowDialog : longint;
//begin
     //FD.Height:=Height;
     //FD.Width:=Width;
	{with EnterDialogForm do begin
		EnterDialogForm:=TEnterDialogForm.Create(nil);
     	Caption:=FCaption;
	     Label1.Caption:=FText;
	     Edit1.PasswordChar:=FPasswordChar;
		Edit1.Text:=FInputText;
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
		EnterDialogForm.Free;
     end;}
     //f.Free;
//end;

end.
