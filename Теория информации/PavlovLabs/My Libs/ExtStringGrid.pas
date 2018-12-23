unit ExtStringGrid;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids;

type
 TDeleteEvent = procedure( Sender : TObject ) of object;
 TInsertEvent = procedure( Sender : TObject ) of object;

type
  TExtStringGrid = class(TStringGrid)
  private
    { Private declarations }
    FOnDelete : TDeleteEvent;
    FOnInsert : TInsertEvent;
  protected
    { Protected declarations }
    procedure KeyDown( var Key : word; Shift : TShiftState ); override;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function SaveToFile( NF : string ) : integer;
    function LoadFromFile( NF : string ) : integer;
    procedure DeleteVoidLines;
    function VoidLine( ARow : integer ) : boolean;
  published
    { Published declarations }
    property OnDelete : TDeleteEvent read FOnDelete write FOnDelete;
    property OnInsert : TInsertEvent read FOnInsert write FOnInsert;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Losev Controls', [TExtStringGrid]);
end;

constructor TExtStringGrid.Create(AOwner: TComponent);
begin
     inherited Create(AOwner);
end;

destructor TExtStringGrid.Destroy;
begin
     inherited Destroy;
end;

procedure TExtStringGrid.KeyDown( var Key : word; Shift : TShiftState );
var
i, R : integer;
begin
     if (goEditing in Options) then
        case key of
        VK_Insert :
           if ( ssCtrl in Shift ) then begin
              R:=Row;
              RowCount:=RowCount+1;
              for i:=RowCount-2 downto Row do MoveRow( i, i+1 );
              Row:=R;
              Col:=FixedCols;
              Rows[Row].Clear;
              FOnInsert( Self );
           end
           else
              if ( ssAlt in Shift ) then begin
                 R:=Row+1;
                 RowCount:=RowCount+1;
                 for i:=RowCount-2 downto Row+1 do MoveRow( i, i+1 );
                 Row:=R;
                 Col:=FixedCols;
                 Rows[Row].Clear;
                 FOnInsert( Self );
              end;
        VK_Delete :
           if ( ssCtrl in Shift ) then begin
              if (RowCount>FixedRows+1) then begin
                 if (Row=RowCount-1) then R:=Row-1 else R:=Row;
                 DeleteRow( Row );
                 Row:=R;
              end
              else
                 Rows[Row].Clear;
              FOnDelete( Self );
           end;
        end;
     inherited KeyDown( Key, Shift );
end;

function TExtStringGrid.SaveToFile( NF : string ) : integer;
var
Err : integer;
i,j : integer;
f : textfile;
begin
{$I-}
     AssignFile( f, NF );
     ReWrite( f );
     Err:=IOResult;
     if Err=0 then begin
        for i:=FixedRows to RowCount-1 do begin
           for j:=FixedCols to ColCount-1 do begin
              WriteLn( f, Cells[j,i] );
              Err:=IOResult;
              if Err>0 then break;
           end;
           if Err>0 then break;
        end;
        CloseFile( f );
        if Err>0 then IOResult else Err:=IOResult;
     end;
     if Err>0 then begin
        DeleteFile( NF );
        IOResult;
     end;
     Result:=Err;
end;

function TExtStringGrid.LoadFromFile( NF : string ) : integer;
var
Err : integer;
j : integer;
f : textfile;
S : string;
begin
     RowCount:=FixedRows+1;
{$I-}
     AssignFile( f, NF );
     ReSet( f );
     Err:=IOResult;
     if Err=0 then begin
        while not Eof(f) do begin
           for j:=FixedCols to ColCount-1 do begin
              ReadLn( f, S ); Cells[j,RowCount-1]:=S;
              Err:=IOResult;
              if Err>0 then break;
           end;
           RowCount:=RowCount+1;
           if Err>0 then break;
        end;
        CloseFile( f );
        if Err>0 then IOResult else Err:=IOResult;
        if RowCount>FixedRows+1 then DeleteRow( RowCount-1 );
     end;
     Row:=FixedRows;
     Col:=FixedCols;
     Result:=Err;
end;

function TExtStringGrid.VoidLine( ARow : integer ) : boolean;
var
i,j : integer;
begin
     for i:=FixedCols to ColCount-1 do
        for j:=1 to length( Cells[i,ARow] ) do
           if Cells[i,ARow][j]>#32 then begin
              VoidLine:=false;
              Exit;
           end;
     VoidLine:=true;
end;

procedure TExtStringGrid.DeleteVoidLines;
var
i : integer;
begin
     i:=FixedRows;
     while (i<RowCount) and (RowCount>FixedCols+1) do
        if VoidLine( i ) then DeleteRow( i ) else inc( i );
end;

end.
