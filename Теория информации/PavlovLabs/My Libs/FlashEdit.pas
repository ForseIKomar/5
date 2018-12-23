unit FlashEdit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls;

type
  TFlashEdit = class(TEdit)
  private
    { Private declarations }
    Text1,Text2 : string;
    OldRD       : boolean;
    AllVisible : boolean;
    FFlashPos : string;
    FBoutPerSec : byte;
    FTimer : TTimer;
    FFlashSymb : char;
    procedure SetFlashPos( Value: string );
    procedure SetBoutPerSec( Value: byte );
    procedure HandlerTimer( Sender : TObject );
  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  published
    { Published declarations }
    property FlashPos : string read FFlashPos write SetFlashPos;
    property BoutPerSec : byte read FBoutPerSec write SetBoutPerSec;
    property FlashSymb : char read FFlashSymb write FFlashSymb;
    procedure CompStr( S1, S2 : string );
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Losev Controls', [TFlashEdit]);
end;

constructor TFlashEdit.Create(AOwner: TComponent);
begin
     inherited Create(AOwner);
     FTimer:=TTimer.Create(Self);
     AllVisible:=true;
     FlashPos:='';
     BoutPerSec:=5;
     FlashSymb:=' ';
     FTimer.OnTimer:=HandlerTimer;
end;

destructor TFlashEdit.Destroy;
begin
     FTimer.Free;
     inherited Destroy;
end;

procedure TFlashEdit.SetFlashPos( Value: string );
var
i : byte;
begin
     FTimer.Enabled:=false;
     If length(Value)>0 then begin
        OldRD:=ReadOnly;
        ReadOnly:=true;
        Text1:=Text;
        Text2:=Text;
        For i:=1 to length(Value) do
           If byte(Value[i])<=length(Text2) then Text2[byte(Value[i])]:=FlashSymb;
        FTimer.Enabled:=true;
     end
     else begin
        If not AllVisible then begin
           Text:=Text1;
           AllVisible:=true;
        end;
        if length(FFlashPos)>0 then ReadOnly:=OldRD;
     end;
     FFlashPos:=Value;
end;

procedure TFlashEdit.SetBoutPerSec( Value: byte );
begin
     FBoutPerSec:=Value;
     FTimer.Interval:=1000 div FBoutPerSec;
end;

procedure TFlashEdit.CompStr( S1, S2 : string );
var
FP : string;
i,c : byte;
begin
     FP:='';
     if length(S1)>length(S2) then c:=length(S2) else c:=length(S1);
     for i:=1 to c do
        if S1[i]<>S2[i] then begin
           SetLength( FP, length(FP)+1 );
           FP[length(FP)]:=char(i);
        end;
     FlashPos:=FP;
end;

procedure TFlashEdit.HandlerTimer( Sender : TObject );
begin
     AllVisible:=not AllVisible;
     If AllVisible then Text:=Text1 else Text:=Text2;
end;

end.
