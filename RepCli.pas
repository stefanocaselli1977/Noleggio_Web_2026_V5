unit RepCli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TRepTesCli = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRShape2: TQRShape;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBImage1: TQRDBImage;
    QRLabel2: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBImage2: TQRDBImage;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText9: TQRDBText;
    procedure QuickRep1AfterPrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RepTesCli: TRepTesCli;

implementation

uses softhire,nolo;
{$R *.dfm}

procedure TRepTesCli.QuickRep1AfterPrint(Sender: TObject);
begin
if nolo.Menu.CheckBox1.Checked=true then
 begin
 if not DM.IBTransaction10.InTransaction then
 DM.IBTransaction10.StartTransaction;
  DM.IBQueryTemp.Close;
  DM.IBQueryTemp.SQL.Clear;
  DM.IBQueryTemp.SQL.Add('UPDATE CLIENTI');
  DM.IBQueryTemp.SQL.Add('SET STATOTESSERA = "STAMPATA"');
  DM.IBQueryTemp.SQL.Add('WHERE STATOTESSERA = "RICHIESTA"');
  DM.IBQueryTemp.Open;
 DM.IBTransaction10.Commit;
 DM.IBDataSetClienti.Close;
 DM.IBDataSetClienti.Open;
 end
else
begin
 if not DM.IBTransaction10.InTransaction then
 DM.IBTransaction10.StartTransaction;
  DM.IBQueryTemp.Close;
  DM.IBQueryTemp.SQL.Clear;
  DM.IBQueryTemp.SQL.Add('UPDATE CLIENTI');
  DM.IBQueryTemp.SQL.Add('SET STATOTESSERA = "STAMPATA"');
  DM.IBQueryTemp.SQL.Add('WHERE CLI_NO BETWEEN "'+nolo.menu.cOMBOBOX4.Text+'" AND "'+nolo.Menu.ComboBox5.Text+'"');
  DM.IBQueryTemp.Open;
 DM.IBTransaction10.Commit;
 DM.IBDataSetClienti.Close;
 DM.IBDataSetClienti.Open;
 end;
end;
end.
