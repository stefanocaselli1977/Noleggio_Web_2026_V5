unit RepRipa;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, QrAngLbl;

type
  TRepRiparaz = class(TQuickRep)
    procedure QRAngledLabel13Print(sender: TObject; var Value: String);
    procedure QRLabel10Print(sender: TObject; var Value: String);
    procedure QRLabel11Print(sender: TObject; var Value: String);
    procedure QRLabel13Print(sender: TObject; var Value: String);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLabel7Print(sender: TObject; var Value: String);
    procedure QRAngledLabel4Print(sender: TObject; var Value: String);
  private

  public

  end;

var
  RepRiparaz: TRepRiparaz;

implementation

{$R *.DFM}

uses SoftHire;

procedure TRepRiparaz.QRAngledLabel13Print(sender: TObject;
  var Value: String);
begin
value:='€. '+DM.IBDataSetRipPREZZO.AsString
end;

procedure TRepRiparaz.QRLabel10Print(sender: TObject; var Value: String);
begin
Value:=DM.IBDataSetRipTIPOPRODOTTO.AsString+' - '+DM.IBDataSetRipBRAND.AsString;

end;

procedure TRepRiparaz.QRLabel11Print(sender: TObject; var Value: String);
begin
Value:=DM.IBDataSetRipDESCRIZIONE.AsString;

end;

procedure TRepRiparaz.QRLabel13Print(sender: TObject; var Value: String);
begin
if DM.IBDataSetRipTIPOPRODOTTO.AsString='SNOWBOARD' then
value:='ATTACCO: '+DM.IBDataSetRipBINDINGS.AsString+' STANCE: '+dm.IBDataSetRipSTANCESNOW.AsString+' AVANTI, DX:'+dm.IBDataSetRipDXDEG.AsString+'° SX:'+dm.IBDataSetRipSXDEG.AsString+'°'
else
value:='';
end;

procedure TRepRiparaz.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
{if DM.IBDataSetRipFONDO.Value=1 then
Qrshape5.Brush.Color:=clBlack
else
Qrshape5.Brush.Color:=clWhite;
if DM.IBDataSetRipLAMINE.Value=1 then
Qrshape7.Brush.Color:=clBlack
else
Qrshape7.Brush.Color:=clWhite;
if DM.IBDataSetRipSCIOLINA.Value=1 then
Qrshape2.Brush.Color:=clBlack
else
Qrshape2.Brush.Color:=clWhite;
if DM.IBDataSetRipRADDRIZZATURA.Value=1 then
Qrshape3.Brush.Color:=clBlack
else
Qrshape3.Brush.Color:=clWhite;
if DM.IBDataSetRipPELLI.Value=1 then
Qrshape6.Brush.Color:=clBlack
else
Qrshape6.Brush.Color:=clWhite;
if DM.IBDataSetRipRIPPARTIC.Value=1 then
Qrshape8.Brush.Color:=clBlack
else
Qrshape8.Brush.Color:=clWhite;
if DM.IBDataSetRipCHECKATTACCHI.Value=1 then
Qrshape4.Brush.Color:=clBlack
else
Qrshape4.Brush.Color:=clWhite;}
end;

procedure TRepRiparaz.QRLabel7Print(sender: TObject; var Value: String);
begin
if DM.IBDataSetRipCHECKATTACCHI.Value=1 then
value:='PESO KG:'+DM.IBDataSetRipKG.AsString+' SUOLA mm:'+dm.IBDataSetRipMMSUOLA.AsString
else
value:='';
end;

procedure TRepRiparaz.QRAngledLabel4Print(sender: TObject;
  var Value: String);
begin
(Sender as TQRAngledLabel).Alignment:=taLeftJustify;
Value:=DM.IBDataSetRipEANCODERIP.AsString;
end;

end.
