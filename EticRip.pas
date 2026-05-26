unit EticRip;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, QrAngLbl;

type
  TEtichetta = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRLabel14: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape10: TQRShape;
    QRLabel17: TQRLabel;
    QRShape11: TQRShape;
    QRLabel18: TQRLabel;
    QRShape12: TQRShape;
    QRLabel19: TQRLabel;
    QRShape13: TQRShape;
    QRLabel20: TQRLabel;
    QRShape14: TQRShape;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRShape15: TQRShape;
    QRLabel23: TQRLabel;
    QRShape16: TQRShape;
    QRLabel24: TQRLabel;
    QRShape17: TQRShape;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRShape18: TQRShape;
    QRAngledLabel2: TQRAngledLabel;
    QRAngledLabel3: TQRAngledLabel;
    QRAngledLabel4: TQRAngledLabel;
    QRDBRichText1: TQRDBRichText;
    QRLabel2: TQRLabel;
    QRAngledLabel1: TQRAngledLabel;
    procedure QRAngledLabel1Print(sender: TObject; var Value: String);
    procedure QRAngledLabel2Print(sender: TObject; var Value: String);
    procedure QRAngledLabel3Print(sender: TObject; var Value: String);
    procedure QRAngledLabel4Print(sender: TObject; var Value: String);
    procedure QRLabel14Print(sender: TObject; var Value: String);
    procedure QRLabel15Print(sender: TObject; var Value: String);
    procedure QRLabel21Print(sender: TObject; var Value: String);
    procedure QRLabel25Print(sender: TObject; var Value: String);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLabel1Print(sender: TObject; var Value: String);
    procedure QRLabel2Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Etichetta: TEtichetta;

implementation

uses SoftHire;

{$R *.dfm}

procedure TEtichetta.QRAngledLabel1Print(sender: TObject;
  var Value: String);

  begin
if DM.IBDataSetRipURGENZA.Value=1 then
Value:='URGENTE: '+DM.IBDataSetRipDATARITIRORICH.AsString
else
Value:='';
end;

procedure TEtichetta.QRAngledLabel2Print(sender: TObject;
  var Value: String);
begin
value:=DM.ibdatasetRipDataRitiroRich.AsString;
end;

procedure TEtichetta.QRAngledLabel3Print(sender: TObject;
  var Value: String);
begin
value:='€.'+DM.IBDataSetRipPREZZO.AsString;
end;

procedure TEtichetta.QRAngledLabel4Print(sender: TObject;
  var Value: String);
begin
value:=DM.IBDataSetClientiNOME.AsString+' '+DM.IBDataSetClientiCOGNRAGSOC.AsString+'-'+DM.IBDataSetRipRIP_NO.AsString;
end;

procedure TEtichetta.QRLabel14Print(sender: TObject; var Value: String);
begin
value:=DM.IBDataSetRipBrand.AsString+' - '+DM.IBDataSetRipDESCRIZIONE.AsString;
end;

procedure TEtichetta.QRLabel15Print(sender: TObject; var Value: String);
begin
value:=DM.IBDataSetRipTIPOPRODOTTO.AsString;
end;

procedure TEtichetta.QRLabel21Print(sender: TObject; var Value: String);
begin
if DM.ibdatasetRipCheckAttacchi.Value=1 then
value:='PESO KG:'+dm.IBDataSetRipKG.AsString+' , SUOLA mm:'+DM.IBDataSetRipMMSUOLA.AsString
else
value:='';
end;

procedure TEtichetta.QRLabel25Print(sender: TObject; var Value: String);
begin
if DM.IBDataSetRipTIPOPRODOTTO.AsString='SNOWBOARD' then
 begin
  if DM.IBDataSetRipSTANCESNOW.AsString='SX' then
   value:=DM.IBDataSetRipBINDINGS.AsString+': SX AVANTI - SX:'+dm.IBDataSetRipSXDEG.AsString+'°,DX:'+dm.IBDataSetRipDXDEG.AsString+'°'
  else
   value:=DM.IBDataSetRipBINDINGS.AsString+': DX AVANTI - DX:'+dm.IBDataSetRipDXDEG.AsString+'°,SX:'+dm.IBDataSetRipSXDEG.AsString+'°';
  end
  else
  value:='';

end;

procedure TEtichetta.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if DM.IBDataSetRipFONDO.Value=1 then
Qrshape10.Brush.Color:=clBlack
else
Qrshape10.Brush.Color:=clWhite;
if DM.IBDataSetRipLAMINE.Value=1 then
Qrshape11.Brush.Color:=clBlack
else
Qrshape11.Brush.Color:=clWhite;
if DM.IBDataSetRipSCIOLINA.Value=1 then
Qrshape12.Brush.Color:=clBlack
else
Qrshape12.Brush.Color:=clWhite;
if DM.IBDataSetRipPrepgara.Value=1 then
Qrshape13.Brush.Color:=clBlack
else
Qrshape13.Brush.Color:=clWhite;
if DM.IBDataSetRipcheckattacchi.Value=1 then
Qrshape14.Brush.Color:=clBlack
else
Qrshape14.Brush.Color:=clWhite;
if DM.IBDataSetRipRaddrizzatura.Value=1 then
Qrshape15.Brush.Color:=clBlack
else
Qrshape15.Brush.Color:=clWhite;
if DM.IBDataSetRipPelli.Value=1 then
Qrshape16.Brush.Color:=clBlack
else
Qrshape16.Brush.Color:=clWhite;
if DM.IBDataSetRipRippartic.Value=1 then
Qrshape17.Brush.Color:=clBlack
else
Qrshape17.Brush.Color:=clWhite;


end;

procedure TEtichetta.QRLabel1Print(sender: TObject; var Value: String);
begin
if DM.IBDataSetRipURGENZA.Value=1 then
Value:='URGENTE: '+DM.IBDataSetRipDATARITIRORICH.AsString
else
Value:='';
end;

procedure TEtichetta.QRLabel2Print(sender: TObject; var Value: String);
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

//Value:=DM.IBDataSetRipEANCODERIP.AsString;

end;

end.
