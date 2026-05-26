unit UnitEtiIncor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, QrAngLbl, IBQuery;

type
  TEtiIncord = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRAngledLabel2: TQRAngledLabel;
    QRAngledLabel1: TQRAngledLabel;
    QRShape18: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape3: TQRShape;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel1: TQRLabel;
    QRShape4: TQRShape;
    QRLabel12: TQRLabel;
    QRShape5: TQRShape;
    QRLabel13: TQRLabel;
    QRShape6: TQRShape;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRShape7: TQRShape;
    QRLabel16: TQRLabel;
    QRShape8: TQRShape;
    QRDBRichText1: TQRDBRichText;
    QRLabel17: TQRLabel;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRAngledLabel2Print(sender: TObject; var Value: String);
    procedure QRAngledLabel1Print(sender: TObject; var Value: String);
    procedure QRLabel5Print(sender: TObject; var Value: String);
    procedure QRLabel8Print(sender: TObject; var Value: String);
    procedure QRLabel7Print(sender: TObject; var Value: String);
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRLabel2Print(sender: TObject; var Value: String);
    procedure QRLabel4Print(sender: TObject; var Value: String);
    procedure QRLabel14Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EtiIncord: TEtiIncord;

implementation

{$R *.dfm}

uses Softhire;

procedure TEtiIncord.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if not DM.IBDataSetIncordGRIPMANICO.IsNull then
Qrshape1.Brush.Color:=clBlack
else
Qrshape1.Brush.Color:=clWhite;
if not DM.IBDataSetIncordMANICO.IsNull then
Qrshape2.Brush.Color:=clBlack
else
Qrshape2.Brush.Color:=clWhite;
if not DM.IBDataSetIncordOVERGRIP.IsNull then
Qrshape3.Brush.Color:=clBlack
else
Qrshape3.Brush.Color:=clWhite;
if not DM.IBDataSetIncordANTIBOUNCHE.IsNull then
Qrshape4.Brush.Color:=clBlack
else
Qrshape4.Brush.Color:=clWhite;
if not DM.IBDataSetIncordPROTEZIONETESTA.IsNull then
Qrshape5.Brush.Color:=clBlack
else
Qrshape5.Brush.Color:=clWhite;
if not DM.IBDataSetIncordSILICONEMANICO.IsNull then
Qrshape7.Brush.Color:=clBlack
else
Qrshape7.Brush.Color:=clWhite;
if not DM.IBDataSetIncordPIOMBATURAGR.IsNull then
Qrshape6.Brush.Color:=clBlack
else
Qrshape6.Brush.Color:=clWhite;

end;

procedure TEtiIncord.QRAngledLabel2Print(sender: TObject;
  var Value: String);
begin
VALUE:=DM.IBDataSetClientiNOME.AsString+' '+DM.IBDataSetClientiCOGNRAGSOC.AsString;
end;

procedure TEtiIncord.QRAngledLabel1Print(sender: TObject; var Value: String);
var temp,temp1:string;
begin
temp:=inttostr(trunc(strtofloat(DM.IBDataSetIncordTOTALE.AsString)));
temp1:=floattostr(frac(strtofloat(DM.IBDataSetIncordTOTALE.AsString)));
while not (length(temp)=4) do
temp:='0'+temp;
Value:='*'+'N'+inttohex(DM.IBDataSetIncordINC_NO.AsInteger,5)+temp+temp1[1]+'*';
end;

procedure TEtiIncord.QRLabel5Print(sender: TObject; var Value: String);
begin
value:=DM.IBDataSetIncordDATARICCONS.AsString;
end;

procedure TEtiIncord.QRLabel8Print(sender: TObject; var Value: String);
begin
value:='€.'+DM.IBDataSetIncordSALDO.AsString;
end;

procedure TEtiIncord.QRLabel7Print(sender: TObject; var Value: String);
begin
if DM.IBDataSetIncordDATASALDO.IsNull then
value:='PAGATO'
else
value:='DA PAGARE'

end;

procedure TEtiIncord.QRLabel17Print(sender: TObject; var Value: String);
var tempQuery:TIBQuery;
begin
TempQuery:=TIBQuery.Create(nil);
tempquery.Database:=DM.IBDatabase1;
tempQuery.SQL.Add('SELECT BRAND, DESCRIZIONE, MISURA, COLORE FROM ARTICOLO WHERE ART_NO="'+dm.IBDataSetIncordART_NO.AsString+'"');
tempquery.Open;
If not TempQuery.IsEmpty then
Value:=TempQuery.Fields.fieldbyname('BRAND').AsString+' - '+TempQuery.Fields.fieldbyname('DESCRIZIONE').AsString+' - L'+TempQuery.Fields.fieldbyname('MISURA').AsString+' - '+TempQuery.Fields.fieldbyname('COLORE').AsString
else
Value:='Nessuna racchetta inserita';
tempquery.Close;
tempQuery.Free;
end;

procedure TEtiIncord.QRLabel2Print(sender: TObject; var Value: String);
var tempQuery:TIBQuery;
begin
TempQuery:=TIBQuery.Create(nil);
tempquery.Database:=DM.IBDatabase1;
tempQuery.SQL.Add('SELECT ACQ_NO, BRAND, DESCRIZIONE, TAGLIA, SEZIONE FROM ACQUISTI WHERE ACQ_NO = '+dm.IBDataSetIncordID_MATHOR.AsString);
tempquery.Open;
If not TempQuery.IsEmpty then
Value:=TempQuery.Fields.fieldbyname('ACQ_NO').AsString+' - '+TempQuery.Fields.fieldbyname('BRAND').AsString+' - '+TempQuery.Fields.fieldbyname('DESCRIZIONE').AsString+' - '+TempQuery.Fields.fieldbyname('TAGLIA').AsString+' - '+TempQuery.Fields.fieldbyname('SEZIONE').AsString+' KG.'+DM.IBDataSetIncordTENSORIZ.AsString
else
Value:='Nessuna corda inserita';
tempquery.Close;
tempQuery.Free;
end;

procedure TEtiIncord.QRLabel4Print(sender: TObject; var Value: String);
var tempQuery:TIBQuery;
begin
TempQuery:=TIBQuery.Create(nil);
tempquery.Database:=DM.IBDatabase1;
tempQuery.SQL.Add('SELECT ACQ_NO, BRAND, DESCRIZIONE, TAGLIA, SEZIONE FROM ACQUISTI WHERE ACQ_NO="'+dm.IBDataSetIncordID_MATVERT.AsString+'"');
tempquery.Open;
If not TempQuery.IsEmpty then
Value:=TempQuery.Fields.fieldbyname('ACQ_NO').AsString+' - '+TempQuery.Fields.fieldbyname('BRAND').AsString+' - '+TempQuery.Fields.fieldbyname('DESCRIZIONE').AsString+' - '+TempQuery.Fields.fieldbyname('TAGLIA').AsString+' - '+TempQuery.Fields.fieldbyname('SEZIONE').AsString +' KG.'+DM.IBDataSetIncordTENSVERT.AsString
else
Value:='Nessuna corda inserita';
tempquery.Close;
tempQuery.Free;

end;

procedure TEtiIncord.QRLabel14Print(sender: TObject; var Value: String);
begin
if not DM.IBDataSetIncordPIOMBPOSIZ.IsNull then
value:=DM.IBDataSetIncordPIOMBPOSIZ.AsString+' - Gr.'+DM.IBDataSetIncordPIOMBATURAGR.AsString
else
Value:='';
end;

end.
