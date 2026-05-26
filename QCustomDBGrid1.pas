unit QCustomDBGrid1;

interface

uses
  Windows, Messages, SysUtils, Classes, QControls, QGrids, QDBGrids;

type
  TCustomDBGrid1 = class(TCustomDBGrid)
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
  published
    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Samples', [TCustomDBGrid1]);
end;

end.
