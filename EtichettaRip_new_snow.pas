unit EtichettaRip_new_snow;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QrAngLbl, QRCtrls, QuickRpt, ExtCtrls, StrUtils;

type
  TEtichette_new_snow = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRShape9: TQRShape;
    QRShape5: TQRShape;
    QRShape4: TQRShape;
    QRShape3: TQRShape;
    QRShape2: TQRShape;
    QRShape1: TQRShape;
    QRLabel9: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel1: TQRLabel;
    QRDBRichText1: TQRDBRichText;
    QRAngledLabel2: TQRAngledLabel;
    QRAngled_datacons: TQRAngledLabel;
    QRAngledLabel1: TQRAngledLabel;
    procedure QRLabel6Print(sender: TObject; var Value: String);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLabel5Print(sender: TObject; var Value: String);
    procedure QRLabel11Print(sender: TObject; var Value: String);
    procedure QRLabel2Print(sender: TObject; var Value: String);
    procedure QRAngledLabel2Print(sender: TObject; var Value: String);
    procedure QRAngled_dataconsPrint(sender: TObject; var Value: String);
    procedure QRLabel12Print(sender: TObject; var Value: String);
    procedure QRAngledLabel1Print(sender: TObject; var Value: String);
    procedure QRLabel14Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Etichette_new_snow: TEtichette_new_snow;

implementation

uses SoftHire;

{$R *.dfm}

procedure TEtichette_new_snow.QRLabel6Print(sender: TObject;
  var Value: String);
begin
if dm.IBDataSetRipSTANCESNOW.Asstring='DX' then
Value:='ATTACCO '+dm.IBDataSetRipBINDINGS.AsString+' DESTRO AVANTI '+DM.IBDataSetRipDXDEG.AsString+'° ,'+DM.IBDataSetRipsxDEG.AsString+'°'
else
Value:='ATTACCO '+dm.IBDataSetRipBINDINGS.AsString+' SINISTRO AVANTI '+DM.IBDataSetRipsxDEG.AsString+'° ,'+DM.IBDataSetRipDXDEG.AsString+'°';

end;

procedure TEtichette_new_snow.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if DM.IBDataSetRipFONDO.Value=1 then
Qrshape1.Brush.Color:=clBlack
else
Qrshape1.Brush.Color:=clWhite;
if DM.IBDataSetRipLAMINE.Value=1 then
Qrshape3.Brush.Color:=clBlack
else
Qrshape3.Brush.Color:=clWhite;
if DM.IBDataSetRipSCIOLINA.Value=1 then
Qrshape4.Brush.Color:=clBlack
else
Qrshape4.Brush.Color:=clWhite;
if DM.IBDataSetRipPrepgara.Value=1 then
Qrshape5.Brush.Color:=clBlack
else
Qrshape5.Brush.Color:=clWhite;
if DM.IBDataSetRipRippartic.Value=1 then
Qrshape9.Brush.Color:=clBlack
else
Qrshape9.Brush.Color:=clWhite;

end;

procedure TEtichette_new_snow.QRLabel5Print(sender: TObject;
  var Value: String);
begin
value:='€.'+Dm.IBDataSetRipPREZZO.AsString;
end;

procedure TEtichette_new_snow.QRLabel11Print(sender: TObject;
  var Value: String);
begin
value:=DM.IBDataSetRipRIP_NO.AsString;
end;

procedure TEtichette_new_snow.QRLabel2Print(sender: TObject;
  var Value: String);
  var temp,temp1:string;
begin
temp:=inttostr(trunc(strtofloat(DM.IBDataSetRipPREZZO.AsString)));
temp1:=floattostr(frac(strtofloat(DM.IBDataSetRipPREZZO.AsString)));
while not (length(temp)=4) do
temp:='0'+temp;
if dm.IBDataSetParamPRINTRIPNEWBARCODE.Value=0 then
Value:='*'+'N'+inttohex(DM.IBDataSetRipRIP_NO.AsInteger,5)+temp+temp1[1]+'*';
if dm.IBDataSetParamPRINTRIPNEWBARCODE.Value=1 then
Value:='*'+'R+'+inttohex(DM.IBDataSetRipRIP_NO.AsInteger,5)+temp+temp1[1]+'*';
if dm.IBDataSetParamPRINTRIPNEWBARCODE.Value=2 then
Value:='*'+'R+'+inttohex(DM.IBDataSetRipRIP_NO.AsInteger,5)+temp+temp1[1]+'*';

end;

procedure TEtichette_new_snow.QRAngledLabel2Print(sender: TObject;
  var Value: String);
begin
value:=leftstr(DM.IBDataSetClientiCOGNRAGSOC.AsString+' '+DM.IBDataSetClientiNOME.AsString,18);
end;

procedure TEtichette_new_snow.QRAngled_dataconsPrint(sender: TObject;
  var Value: String);
begin
if DM.IBDataSetRipURGENZA.Value=1 then
begin
QRAngled_datacons.Font.Style:= [fsBold, fsUnderline];
Value:='URGENTE: '+ leftstr(DM.IBDataSetRipDATARITIRORICH.AsString,length(DM.IBDataSetRipDATARITIRORICH.AsString)-3);
end
else
begin
QRAngled_datacons.Font.Style:= [];
Value:='CONSEGNA: '+DM.IBDataSetRipDATARITIRORICH.AsString;
end;

end;

procedure TEtichette_new_snow.QRLabel12Print(sender: TObject;
  var Value: String);
begin
value:=DM.IBDataSetRipTIPOPAGAM.AsString;
end;

procedure TEtichette_new_snow.QRAngledLabel1Print(sender: TObject;
  var Value: String);
begin
//value:=leftstr(DM.IBDataSetClientiCOGNRAGSOC.AsString+' '+DM.IBDataSetClientiNOME.AsString,18);
value:=DM.IBDataSetRipRIP_NO.AsString;
end;

procedure TEtichette_new_snow.QRLabel14Print(sender: TObject;
  var Value: String);
begin
value:=DM.IBDataSetRipTIPOPRODOTTO.AsString+' '+DM.IBDataSetRipBrand.AsString+' '+DM.IBDataSetRipDESCRIZIONE.AsString;;

end;

end.
