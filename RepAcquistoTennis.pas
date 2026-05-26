unit RepAcquistoTennis;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls,IBQuery;

type
  TQuickReport1 = class(TQuickRep)
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRSubDetail1: TQRSubDetail;
    QRBand3: TQRBand;
    QRLabel11: TQRLabel;
    QRDBImage2: TQRDBImage;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel1: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    procedure QRLabel1Print(sender: TObject; var Value: String);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  QuickReport1: TQuickReport1;

implementation

uses SoftHire;

{$R *.DFM}
var TmpQuery:TIBQuery;

procedure TQuickReport1.QRLabel1Print(sender: TObject; var Value: String);
begin
value:=DM.IBDataSetClientiNOME.AsString+' '+DM.IBDataSetClientiCOGNRAGSOC.AsString;
end;

procedure TQuickReport1.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
TmpQuery:=TIBQuery.Create(nil);
TmpQuery.Database:=DM.IBDatabase1;
tmpQuery.Transaction:=DM.IBTransaction2;
tmpquery.SQL.Clear;
tmpquery.SQL.Add('SELECT BARCODEART,BRAND,DESCRIZIONE,QTA,TAGLIA,PREZZONET,DATAINTRO FROM ACQUISTI WHERE (CLI_NO="'+dm.IBDataSetClientiCLI_NO.AsString+'") AND (DATASALDO IS NULL)');
QRsubdetail1.DataSet:=tmpquery;
tmpquery.Open;
qrdbTEXT4.DataSet:=tmpquery;
qrdbTEXT4.DataField:='BARCODEART';
qrdbTEXT2.DataSet:=tmpquery;
qrdbTEXT2.DataField:='BRAND';
qrdbTEXT3.DataSet:=tmpquery;
qrdbTEXT3.DataField:='DESCRIZIONE';
qrdbTEXT6.DataSet:=tmpquery;
qrdbTEXT6.DataField:='QTA';
qrdbTEXT5.DataSet:=tmpquery;
qrdbTEXT5.DataField:='TAGLIA';
qrdbTEXT7.DataSet:=tmpquery;
qrdbTEXT7.DataField:='PREZZONET';
qrdbTEXT1.DataSet:=tmpquery;
qrdbTEXT1.DataField:='DATAINTRO'

end;

end.
