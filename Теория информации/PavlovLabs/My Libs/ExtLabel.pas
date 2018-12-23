unit ExtLabel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TExtLabel = class(TLabel)
  private
    { Private declarations }
    FDigits : byte;
    FIntDigs : byte;
    FFractDigs : byte;
    FLongintN : longint;
    FDoubleN : double;
    procedure SetLongint( Value : longint );
    procedure SetDouble( Value : double );
  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor Create( AOwner : TComponent ); override;
    destructor Destroy; override;
    procedure IncI;
    procedure DecI;
  published
    { Published declarations }
    property IntDigs : byte read FIntDigs write FIntDigs;
    property FractDigs : byte read FFractDigs write FFractDigs;
    property Digits : byte read FDigits write FDigits;
    property DoubleN : double read FDoubleN write SetDouble;
    property LongintN : longint read FLongintN write SetLongint;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Losev Controls', [TExtLabel]);
end;

constructor TExtLabel.Create( AOwner : TComponent );
begin
     inherited Create( AOwner );
     IntDigs:=2;
     FractDigs:=1;
end;

destructor TExtLabel.Destroy;
begin
     inherited Destroy;
end;

procedure TExtLabel.IncI;
begin
     LongintN:=FlongintN+1;
end;

procedure TExtLabel.DecI;
begin
     LongintN:=FlongintN-1;
end;

procedure TExtLabel.SetDouble( Value : double );
var
i : byte;
S : string;
begin
     FDoubleN:=Value;
     if (FIntDigs>0) and (FFractDigs>0) then
        Str( FDoubleN:FIntDigs:FFractDigs, S )
     else
        if (FIntDigs>0) then
           Str( FDoubleN:FIntDigs, S )
        else
           if (FFractDigs>0) then
              Str( FDoubleN:2:FFractDigs, S )
           else
              Str( FDoubleN, S );
     if FDigits>length(S) then for i:=1 to FDigits-length(S) do S:='0'+S;
     Caption:=S;
end;

procedure TExtLabel.SetLongint( Value : longint );
var
i : byte;
S : string;
begin
     FLongintN:=Value;
     Str( FLongintN, S );
     if FDigits>length(S) then for i:=1 to FDigits-length(S) do S:='0'+S;
     Caption:=S;
end;

end.
