unit EtiAttSnow;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, QrAngLbl, ExtCtrls;

type
  TEticAttacSnow = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRAngledLabel2: TQRAngledLabel;
    QRAngledLabel1: TQRAngledLabel;
    QRAngledLabel5: TQRAngledLabel;
    QRAngledLabel7: TQRAngledLabel;
    procedure QRAngledLabel1Print(sender: TObject; var Value: String);
    procedure QRAngledLabel2Print(sender: TObject; var Value: String);
    procedure QRAngledLabel5Print(sender: TObject; var Value: String);
    procedure QRAngledLabel7Print(sender: TObject; var Value: String);
    procedure QuickRep1NeedData(Sender: TObject; var MoreData: Boolean);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EticAttacSnow: TEticAttacSnow;
  numprinted:integer;
  implementation
{$R *.dfm}

uses softhire;

procedure TEticAttacSnow.QRAngledLabel1Print(sender: TObject;
  var Value: String);
begin
value:=DM.IBDataSetRipEancodeRIP.AsString;
end;

procedure TEticAttacSnow.QRAngledLabel2Print(sender: TObject;
  var Value: String);
begin
value:=DM.IBDataSetRipRIP_NO.AsString+' '+DM.IBDataSetClientiCOGNRAGSOC.AsString+' '+DM.IBDataSetClientiNOME.AsString;
end;

procedure TEticAttacSnow.QRAngledLabel5Print(sender: TObject;
  var Value: String);
begin
value:=DM.IBDataSetRipBRAND.AsString+' '+DM.IBDataSetRipDESCRIZIONE.AsString;
end;

procedure TEticAttacSnow.QRAngledLabel7Print(sender: TObject;
  var Value: String);
begin
if DM.IBDataSetRipSTANCESNOW.AsString='SX' then
value:=DM.IBDataSetRipSTANCESNOW.AsString+', SX AVANTI:'+DM.IBDataSetRipSXDEG.AsString+'°, DX:'+DM.IBDataSetRipDXDEG.AsString+'°'
else
value:=DM.IBDataSetRipSTANCESNOW.AsString+', DX AVANTI:'+DM.IBDataSetRipDXDEG.AsString+'°, SX:'+DM.IBDataSetRipSXDEG.AsString+'°';
end;

procedure TEticAttacSnow.QuickRep1NeedData(Sender: TObject;
  var MoreData: Boolean);
begin
MoreData:=NumPrinted<DM.IBDataSetParamNUMSCHEDPRN.Value;
inc(numPrinted);
EticAttacSnow.Quickrep1.NewColumn;
end;

procedure TEticAttacSnow.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
NumPrinted:=0;
end;

end.
