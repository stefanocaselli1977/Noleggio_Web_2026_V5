unit GesTab;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, math;

type
  TGestTab = class(TForm)
    DBGrid1: TDBGrid;
    OkBtn: TButton;
    CancelBtn: TButton;
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  GestTab: TGestTab;

implementation

uses SoftHire,nolo;

{$R *.dfm}

procedure TGestTab.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
key:=upcase(key);
end;

function centreleft(fw:integer):integer;
  {calculates the form.left}
var
  smcx:integer;
begin
  smcx:=GetSystemMetrics(SM_CXSCREEN);
  centreleft:=(smcx-fw) div 2;
end;

function centretop(fh:integer):integer;
  {calculates the form.top}
var
  smcy:integer;
begin
  smcy:=GetSystemMetrics(SM_CYSCREEN);
  centretop:=(smcy-fh) div 2;
end;


procedure TGestTab.FormCreate(Sender: TObject);
var
  scrx,scry, k:integer ;
  ratio:double;
begin
//  scrx:= GetSystemMetrics(SM_CXSCREEN); {finds screen resolution x value}
//  scry:= (GetSystemMetrics(SM_CYSCREEN)); {finds screen resolution y value}

//  ratio:=min(scrx/nolo.screenx,scry/nolo.screeny);
  {takes the smaller ratio and makes sure you dont make the window
  too big for the screen}

//  scaleby(trunc(ratio*100),100);
  {scales all controls and attempts to place them in the correct position}

  {to centre the form on the screen}
//  (Sender as TForm).Left :=centreleft((Sender as TForm).width);
//  (Sender as TForm).Top:=centretop((Sender as TForm).Height) ;

end;

end.
