unit ExtControls;

interface

uses Controls;

type
TEDI=(fsEnabled,fsDisabled,fsInvert);

procedure SetEDIControls( TWC : TWinControl; S : TEDI );

implementation

procedure SetEDIControls( TWC : TWinControl; S : TEDI );
var
i  : integer;
CN : shortstring;
begin
     for i:=0 to TWC.ControlCount-1 do begin
        CN:=TWC.Controls[i].ClassName;
        If (CN='TForm') or (CN='TPanel') or (CN='TGroupBox') then
           SetEDIControls( TWinControl(TWC.Controls[i]), S )
        else
           case S of
           fsEnabled  : TWC.Controls[i].Enabled:=true;
           fsDisabled : TWC.Controls[i].Enabled:=false;
           fsInvert   : TWC.Controls[i].Enabled:=not TWC.Controls[i].Enabled;
           end;
     end;
end;

end.


