unit ExtRegistry;

interface

uses SysUtils,Classes,Registry;

type
  TRegNameType=(rdUnknown, rdString, rdExpandString, rdInteger, rdBinary, rdKey);

  TExtRegistry = class (TRegistry)
  public
    OwnerKey : string;
    CurrentLevel : integer;
    CurrentName : string;
    CurrentType : TRegNameType;
	constructor Create;
	destructor Destroy; override;
    function SelectNames : boolean;
    function SelectName : boolean;
  private
	KeyNames : TStringList;
    ValueNames : TStringList;
    CurrentNName : integer;
  end;

implementation

constructor TExtRegistry.Create;
begin
	inherited Create;
    KeyNames:=TStringList.Create;
	ValueNames:=TStringList.Create;
end;

destructor TExtRegistry.Destroy;
begin
	ValueNames.Free;
	KeyNames.Free;
end;

function TExtRegistry.SelectNames : boolean;
begin
	OpenKey(OwnerKey,false);
    CurrentLevel:=1;
    CurrentNName:=0;
    GetKeyNames(KeyNames);
    GetValueNames(ValueNames);
end;

function TExtRegistry.SelectName : boolean;
begin
	if (CurrentNName<KeyNames.Count) then begin
		CurrentName:=KeyNames[CurrentNName];
        //CurrentType:=rdKey;
        SelectName:=true;
        inc(CurrentNName);
    end else if (CurrentNName<KeyNames.Count+ValueNames.Count) then begin
		CurrentName:=ValueNames[CurrentNName-KeyNames.Count];
        //CurrentType:=GetDataType(CurrentName);
        SelectName:=true;
        inc(CurrentNName);
    end else
        SelectName:=false;
end;

end.
