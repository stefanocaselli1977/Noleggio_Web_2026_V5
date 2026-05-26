unit RepCv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SoftHire, QRCtrls, QuickRpt, ExtCtrls;

type
  TRepContoV = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBImage1: TQRDBImage;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRShape2: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel13: TQRLabel;
    QRShape3: TQRShape;
    QRLabel14: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel16: TQRLabel;
    QRRichText1: TQRRichText;
    QRLabel17: TQRLabel;
    QRShape4: TQRShape;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRShape5: TQRShape;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText15: TQRDBText;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QuickRep1NeedData(Sender: TObject; var MoreData: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RepContoV: TRepContoV;

implementation

var NumPrinted:integer;

{$R *.dfm}

procedure TRepContoV.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
QrLabel20.Caption:=DM.IBDataSetClientiNOME.AsString+' '+DM.IBDataSetClientiCOGNRAGSOC.AsString;
end;

procedure TRepContoV.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
NumPrinted:=0;
end;

procedure TRepContoV.QuickRep1NeedData(Sender: TObject;
  var MoreData: Boolean);
begin
MoreData:=NumPrinted<Dm.IBDataSetParamNUMSCHEDPRN.AsInteger;
inc(numPrinted);
Quickrep1.NewColumn;
end;

end.
