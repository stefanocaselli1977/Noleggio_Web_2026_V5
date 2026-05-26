unit EtichettaRip_New_Scarp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QrAngLbl, QRCtrls, QuickRpt, ExtCtrls,strutils;

type
  TEtichetta_new_Scarp = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRShape3: TQRShape;
    QRShape2: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel12: TQRLabel;
    QRAngledLabel2: TQRAngledLabel;
    QRAngledLabel1: TQRAngledLabel;
    QRAngled_datacons: TQRAngledLabel;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape1: TQRShape;
    QRLabel13: TQRLabel;
    QRShape8: TQRShape;
    QRLabel15: TQRLabel;
    QRShape9: TQRShape;
    QRLabel16: TQRLabel;
    QRShape10: TQRShape;
    QRLabel17: TQRLabel;
    QRShape11: TQRShape;
    QRLabel18: TQRLabel;
    QRDBRichText1: TQRDBRichText;
    procedure QRAngled_dataconsPrint(sender: TObject; var Value: String);
    procedure QRAngledLabel2Print(sender: TObject; var Value: String);
    procedure QRLabel14Print(sender: TObject; var Value: String);
    procedure QRLabel5Print(sender: TObject; var Value: String);
    procedure QRLabel18Print(sender: TObject; var Value: String);
    procedure QRLabel2Print(sender: TObject; var Value: String);
    procedure QRAngledLabel1Print(sender: TObject; var Value: String);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Etichetta_new_Scarp: TEtichetta_new_Scarp;

implementation

uses SoftHire;

{$R *.dfm}

procedure TEtichetta_new_Scarp.QRAngled_dataconsPrint(sender: TObject;
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

procedure TEtichetta_new_Scarp.QRAngledLabel2Print(sender: TObject;
  var Value: String);
begin
//value:=DM.IBDataSetRipRIP_NO.AsString;
value:=leftstr(DM.IBDataSetClientiCOGNRAGSOC.AsString+' '+DM.IBDataSetClientiNOME.AsString,18);

end;

procedure TEtichetta_new_Scarp.QRLabel14Print(sender: TObject;
  var Value: String);
begin
value:=DM.IBDataSetRipTIPOPRODOTTO.AsString+' '+DM.IBDataSetRipBrand.AsString+' '+DM.IBDataSetRipDESCRIZIONE.AsString;;

end;

procedure TEtichetta_new_Scarp.QRLabel5Print(sender: TObject;
  var Value: String);
begin
value:='€.'+Dm.IBDataSetRipPREZZO.AsString;

end;

procedure TEtichetta_new_Scarp.QRLabel18Print(sender: TObject;
  var Value: String);
begin
value:=DM.IBDataSetRipTIPOPAGAM.AsString;

end;

procedure TEtichetta_new_Scarp.QRLabel2Print(sender: TObject;
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

procedure TEtichetta_new_Scarp.QRAngledLabel1Print(sender: TObject;
  var Value: String);
begin
//value:=leftstr(DM.IBDataSetClientiCOGNRAGSOC.AsString+' '+DM.IBDataSetClientiNOME.AsString,18);
value:=DM.IBDataSetRipRIP_NO.AsString;

end;

procedure TEtichetta_new_Scarp.DetailBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
if DM.IBDataSetRipALLARGPIANTA_SX.Value=1 then
Qrshape3.Brush.Color:=clBlack
else
Qrshape3.Brush.Color:=clWhite;
if DM.IBDataSetRipALLARGPIANTA_DX.Value=1 then
Qrshape1.Brush.Color:=clBlack
else
Qrshape1.Brush.Color:=clWhite;
if DM.IBDataSetRipALZARECOLLO_SX.Value=1 then
Qrshape5.Brush.Color:=clBlack
else
Qrshape5.Brush.Color:=clWhite;
if DM.IBDataSetRipALZARECOLLO_DX.Value=1 then
Qrshape9.Brush.Color:=clBlack
else
Qrshape9.Brush.Color:=clWhite;
if DM.IBDataSetRipCAMBIOGANCIO_SX.Value=1 then
Qrshape4.Brush.Color:=clBlack
else
Qrshape4.Brush.Color:=clWhite;
if DM.IBDataSetRipCAMBIOGANCIO_DX.Value=1 then
Qrshape8.Brush.Color:=clBlack
else
Qrshape8.Brush.Color:=clWhite;
if DM.IBDataSetRipMALLEOLO_SX.Value=1 then
Qrshape6.Brush.Color:=clBlack
else
Qrshape6.Brush.Color:=clWhite;
if DM.IBDataSetRipMALLEOLO_DX.Value=1 then
Qrshape10.Brush.Color:=clBlack
else
Qrshape10.Brush.Color:=clWhite;
if DM.IBDataSetRipSOLETTARISC.Value=1 then
Qrshape7.Brush.Color:=clBlack
else
Qrshape7.Brush.Color:=clWhite;

end;

end.
