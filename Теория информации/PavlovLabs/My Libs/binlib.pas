unit binlib;

INTERFACE

FUNCTION _DectoBin( d : word; dig : byte ) : string;

FUNCTION _SetParity( d : word; dig : byte ) : string;
FUNCTION _SetHaffman( d : word; dig : byte ) : string;
FUNCTION _SetHemming( d : word; dig : byte ) : string;

procedure _SetNoise( var d : string; failcount : byte );

FUNCTION _SetHaffmanT( d : word; dig : byte; takt : byte ) : string;


IMPLEMENTATION

FUNCTION _DectoBin( d : word; dig : byte ) : string;
VAR
S : string;
M : word;
i : byte;
BEGIN
	M:=1;
        SetLength( S, dig );
        For i:=dig downto 1 do begin
           If (d and M>0) then S[i]:='1' else S[i]:='0';
	   M:=M shl 1;
	end;
        _DectoBin:=S;
END;

FUNCTION _SetParity( d : word; dig : byte ) : string;
VAR
S : string;
P : boolean;
i : byte;
BEGIN
	S:=_DectoBin( d, dig );
	P:=false;
        For i:=1 to length(S) do
	   If S[i]='1' then P:=not P;
        If P then S:=S+'1' else S:=S+'0';
        _SetParity:=S;
END;

FUNCTION _SetHaffman( d : word; dig : byte ) : string;
VAR
S     : string;
i     : byte;
dp    : word;
M1,M2 : word;
BEGIN
	M1:=1 shl dig;
        M2:=1 shl (dig-1);
        dp:=d;
        i:=0;
        SetLength( S, 255 );
        Repeat
           dp:=dp shl 1;
           inc(i);
           If (dp and M1>0) xor (dp and M2>0) then inc(dp);
           If (dp and M1>0) then begin S[i]:='1'; dp:=dp xor M1; end
	                    else S[i]:='0';
        Until dp=d;
        SetLength( S, i );
        _SetHaffman:=S;
END;

FUNCTION _SetHemming( d : word; dig : byte ) : string;
VAR
S     : string;
digpr : byte;
pospr : byte;
digs1 : byte;
M     : word;
i     : byte;
P     : boolean;
BEGIN
// определяем необходимое количество контрольных разрядов
        digpr:=0;
        while digpr<=16 do
	   if ((1 shl digpr)>dig+digpr) then break else inc( digpr );
        digs1:=dig+digpr+1;
	SetLength( S, dig+digpr );
// заполняем информационные разряды
        M:=1;
        pospr:=1;
        for i:=1 to dig+digpr do
           if pospr=i then
              pospr:=pospr shl 1
           else begin
              If (d and M>0) then S[digs1-i]:='1' else S[digs1-i]:='0';
              M:=M shl 1;
           end;
// заполняем контрольные разряды
        pospr:=1;
        while (pospr<digs1) do begin
           P:=false;
           for i:=1 to dig+digpr do
              If (i and pospr>0) and (i<>pospr) and (S[digs1-i]='1') then P:=not P;
           If P then S[digs1-pospr]:='1' else S[digs1-pospr]:='0';
           pospr:=pospr shl 1;
	end;
        _SetHemming:=S;
END;

procedure _SetNoise( var d : string; failcount : byte );
var
i,p : byte;
begin
     for i:=1 to failcount do begin
        p:=random(length(d))+1;
        If d[p]='1' then d[p]:='0' else d[p]:='1';
     end;
end;

FUNCTION _SetHaffmanT( d : word; dig : byte; takt : byte ) : string;
VAR
S     : string;
j     : byte;
dp    : word;
M1,M2 : word;
BEGIN
	M1:=1 shl dig;
        M2:=1 shl (dig-1);
        d:=d shl 1;
        dp:=d;
        SetLength( S,takt);
        for j:=1 to takt do begin
           If (dp and M1>0) xor (dp and M2>0) then inc(dp);
           If (dp and M1>0) then begin S[j]:='1'; dp:=dp xor M1; end
	                    else S[j]:='0';
           dp:=dp shl 1;
        end;
        _SetHaffmanT:=S;
END;

END.
