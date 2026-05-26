Unit dbgridnew;
interface

uses
  DBGrids, Controls, Classes;

type
  TDBGridnew=Class(DBGrids.TDBGrid)
         procedure MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); override;
  End;

 procedure Register;



implementation


{ TDBGrid }

procedure Register;
begin
  RegisterComponents('mio', [TDBGridnew]);
end;

procedure TDBGridnew.MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Begindrag(false);
  inherited;
end;
end.


