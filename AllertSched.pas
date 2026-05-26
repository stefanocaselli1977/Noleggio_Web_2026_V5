unit AllertSched;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls;

type
  TAllertScheda = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBMemo1: TDBMemo;
    BitBtn1: TBitBtn;
    Label3: TLabel;
    Memo1: TMemo;
    procedure FormShow(Sender: TObject);
    procedure FormShow2(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AllertScheda: TAllertScheda;

implementation

{$R *.dfm}
uses softhire;


procedure TAllertScheda.FormShow(Sender: TObject);
begin
if DM.IBDataSetSchedulePAGATO.Value = 0 then
begin
Label3.Caption:='DEVE PAGARE!!';
Label3.Visible:=true;
end;

if DM.IBDataSetScheduleSTATO.NewValue='PARZIALE' then
begin
Label3.Caption:='CONS. PARZIALE';
Label3.Visible:=true;
end;

end;

procedure TAllertScheda.FormShow2(Sender: TObject);
begin
memo1.Visible:=true;
DBMemo1.Visible:=false;
Label3.Visible:=false;
Allertscheda.Height:=222;
Bitbtn1.Top:=152;
end;



end.
