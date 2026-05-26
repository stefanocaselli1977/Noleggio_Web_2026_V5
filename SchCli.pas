unit SchCli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  TScheCli = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRLabel17: TQRLabel;
    QRDBText19: TQRDBText;
    QRBand2: TQRBand;
    QRDBText12: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRBand3: TQRBand;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRDBImage2: TQRDBImage;
    QRDBText18: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRLabel16: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRLabel22: TQRLabel;
    QRDBText32: TQRDBText;
    QRLabel23: TQRLabel;
    QRDBText33: TQRDBText;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape9: TQRShape;
    QRLabel3: TQRLabel;
    QRShape10: TQRShape;
    QRDBRichText2: TQRDBRichText;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape11: TQRShape;
    QRDBText2: TQRDBText;
    QRLabel11: TQRLabel;
    QRMemo1: TQRMemo;
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QuickRep1NeedData(Sender: TObject; var MoreData: Boolean);
    procedure QRDBText21Print(sender: TObject; var Value: String);
    procedure QRLabel4Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScheCli: TScheCli;
implementation

uses softhire;
{$R *.dfm}

var NumPrinted:integer;


procedure TScheCli.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
QRDBtext26.DataField:=DM.IBDataSetParamEANTOSCAN.AsString;
NumPrinted:=0;
end;

procedure TScheCli.QuickRep1NeedData(Sender: TObject;
  var MoreData: Boolean);
begin
MoreData:=NumPrinted<Dm.IBDataSetParamNUMSCHEDPRN.AsInteger;
inc(numPrinted);
end;

procedure TScheCli.QRDBText21Print(sender: TObject; var Value: String);
begin
Value:=Value+'%';
end;

procedure TScheCli.QRLabel4Print(sender: TObject; var Value: String);
begin
//if DM.IBDataSetSchedulePAGATO.Value=1 then
Value:='PAGATO'
//else
//Value:='DA PAGARE';
end;

end.
