unit myunit;
interface
uses Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, Grids, DBGrids;
type
  TMyDBGrid = class(TDBGrid)
  private
    FOnMyMouseDown: TMouseEvent;
  protected
    procedure MouseDown(Button: TMouseButton; Shift: TShiftState;
      X, Y: Integer); override;
  published
    property OnMyMouseDown: TMouseEvent read FOnMyMouseDown
      write FOnMyMouseDown;
  end;
procedure Register;
implementation
procedure TMyDBGrid.MouseDown(Button: TMouseButton; Shift:
  TShiftState;
  X, Y: Integer);
begin
  inherited;
  if Assigned(FOnMyMouseDown) then
    FOnMyMouseDown(Self, Button, Shift, X, Y);
end;
procedure Register;
begin
  RegisterComponents('Sample', [TMyDBGrid]);
end;
end.
