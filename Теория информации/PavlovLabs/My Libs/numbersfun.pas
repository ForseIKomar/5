unit numbersfun;

interface

var
ErrorConvert : integer;

function DoubleToStr( d : double; width : integer; decimals : integer) : string;
function StrToDouble( s : string ) : double;

implementation

function DoubleToStr( d : double; width : integer; decimals : integer) : string;
begin
     if (width=0) and (decimals=0) then
         str( d, Result )
     else
         str( d:width:decimals, Result );
end;

function StrToDouble( s : string ) : double;
begin
    val( s, Result, ErrorConvert );
end;

end.
