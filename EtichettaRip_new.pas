unit EtichettaRip_new;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, QrAngLbl, strutils;

type
  TXForm = record
    eM11: Single;
    eM12: Single;
    eM21: Single;
    eM22: Single;
    eDx: Single;
    eDy: Single;
  end;

const
  MWT_IDENTITY = $01;

function SetWorldTransform(hdc: HDC; const lpXform: TXForm): BOOL; stdcall; external 'gdi32.dll';
function ModifyWorldTransform(hdc: HDC; const lpXform: TXForm; iMode: DWORD): BOOL; stdcall; external 'gdi32.dll';

type
  TEtichetta_New = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape3: TQRShape;
    QRLabel4: TQRLabel;
    QRShape4: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape5: TQRShape;
    QRLabel7: TQRLabel;
    QRShape6: TQRShape;
    QRLabel8: TQRLabel;
    QRShape7: TQRShape;
    QRLabel9: TQRLabel;
    QRShape8: TQRShape;
    QRLabel10: TQRLabel;
    QRAngledLabel2: TQRAngledLabel;
    QRAngled_datacons: TQRAngledLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRShape9: TQRShape;
    QRLabel14: TQRLabel;
    QRDBRichText1: TQRDBRichText;
    QRLabel15: TQRLabel;
    QRAngledLabel1: TQRAngledLabel;
    procedure QRAngled_dataconsPrint(sender: TObject; var Value: String);
     procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRAngledLabel2Print(sender: TObject; var Value: String);
    procedure QRLabel11Print(sender: TObject; var Value: String);
    procedure QRLabel14Print(sender: TObject; var Value: String);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLabel2Print(sender: TObject; var Value: String);
    procedure QRLabel10Print(sender: TObject; var Value: String);
    procedure QRLabel15Print(sender: TObject; var Value: String);
    procedure QRLabel5Print(sender: TObject; var Value: String);
    procedure QRLabel12Print(sender: TObject; var Value: String);
    procedure QRAngledLabel1Print(sender: TObject; var Value: String);
  
  private
    procedure DrawRotatedText(Canvas: TCanvas; X, Y: Integer; const Text: string; Font: TFont);
  public
    { Public declarations }
  end;



var
  Etichetta_New: TEtichetta_New;

implementation

uses SoftHire;

{$R *.dfm}

procedure TEtichetta_New.QRAngled_dataconsPrint(sender: TObject;
  var Value: String);
  var s:string;
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


procedure TEtichetta_New.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin

  QRAngled_datacons.Alignment := taLeftJustify;

  if DM.IBDataSetRipURGENZA.Value = 1 then
    QRAngled_datacons.Font.Style := [fsBold, fsUnderline]
  else
    QRAngled_datacons.Font.Style := [];


end;

procedure TEtichetta_New.DrawRotatedText(Canvas: TCanvas; X, Y: Integer; const Text: string; Font: TFont);
var
  xForm: TXForm;
begin
  Canvas.Font.Assign(Font);
  SetGraphicsMode(Canvas.Handle, GM_ADVANCED);

  xForm.eM11 := 0; xForm.eM12 := 1;
  xForm.eM21 := -1; xForm.eM22 := 0;
  xForm.eDx := X;
  xForm.eDy := Y;

  SetWorldTransform(Canvas.Handle, xForm);
  Canvas.TextOut(0, 0, Text);

  // Reset trasformazione
  ModifyWorldTransform(Canvas.Handle, xForm, MWT_IDENTITY)
end;

procedure RotateBitmap90(var bmp: TBitmap);
var
  tmp: TBitmap;
  x, y: Integer;
begin
  tmp := TBitmap.Create;
  try
    tmp.Width := bmp.Height;
    tmp.Height := bmp.Width;
    for y := 0 to bmp.Height-1 do
      for x := 0 to bmp.Width-1 do
        tmp.Canvas.Pixels[bmp.Height-1-y, x] := bmp.Canvas.Pixels[x, y];
    bmp.Assign(tmp);
  finally
    tmp.Free;
  end;
end;




procedure TEtichetta_New.QRAngledLabel2Print(sender: TObject;
  var Value: String);
begin
//value:=DM.IBDataSetRipRIP_NO.AsString;
value:=leftstr(DM.IBDataSetClientiCOGNRAGSOC.AsString+' '+DM.IBDataSetClientiNOME.AsString,18);
end;

procedure TEtichetta_New.QRLabel11Print(sender: TObject;
  var Value: String);
begin
value:=DM.IBDataSetRipRIP_NO.AsString;
end;

procedure TEtichetta_New.QRLabel14Print(sender: TObject;
  var Value: String);
begin
value:=DM.IBDataSetRipTIPOPRODOTTO.AsString+' '+DM.IBDataSetRipBrand.AsString+' '+DM.IBDataSetRipDESCRIZIONE.AsString;;
end;

procedure TEtichetta_New.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if DM.IBDataSetRipTIPOPRODOTTO.AsString='FONDO' then
begin
qrlabel6.enabled:=false;
qrlabel3.enabled:=false;
qrlabel7.enabled:=false;
qrlabel8.enabled:=false;
qrlabel9.enabled:=false;
qrlabel10.enabled:=false;
qrlabel15.enabled:=false;
Qrshape6.enabled:=false;
Qrshape7.enabled:=false;
Qrshape8.enabled:=false;
Qrshape9.enabled:=false;
Qrshape3.enabled:=false;
end
else
begin
qrlabel6.enabled:=true;
qrlabel3.enabled:=true;
qrlabel7.enabled:=true;
qrlabel8.enabled:=true;
qrlabel9.enabled:=true;
qrlabel10.enabled:=true;
qrlabel15.enabled:=true;
Qrshape6.enabled:=true;
Qrshape7.enabled:=true;
Qrshape8.enabled:=true;
Qrshape9.enabled:=true;
Qrshape3.enabled:=true;
end;

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
if DM.IBDataSetRipcheckattacchi.Value=1 then
Qrshape6.Brush.Color:=clBlack
else
Qrshape6.Brush.Color:=clWhite;
if DM.IBDataSetRipRaddrizzatura.Value=1 then
Qrshape7.Brush.Color:=clBlack
else
Qrshape7.Brush.Color:=clWhite;
if DM.IBDataSetRipPelli.Value=1 then
Qrshape8.Brush.Color:=clBlack
else
Qrshape8.Brush.Color:=clWhite;
if DM.IBDataSetRipRippartic.Value=1 then
Qrshape9.Brush.Color:=clBlack
else
Qrshape9.Brush.Color:=clWhite;


end;

procedure TEtichetta_New.QRLabel2Print(sender: TObject; var Value: String);
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

procedure TEtichetta_New.QRLabel10Print(sender: TObject;
  var Value: String);
begin
Value:='PESO KG.'+dm.IBDataSetRipKG.AsString;
end;

procedure TEtichetta_New.QRLabel15Print(sender: TObject;
  var Value: String);
begin
Value:='SCAFO.'+dM.IBDataSetRipMMSUOLA.AsString+'mm';
end;

procedure TEtichetta_New.QRLabel5Print(sender: TObject; var Value: String);
begin
value:='€.'+Dm.IBDataSetRipPREZZO.AsString;
end;

procedure TEtichetta_New.QRLabel12Print(sender: TObject;
  var Value: String);
begin
value:=DM.IBDataSetRipTIPOPAGAM.AsString;
end;

procedure TEtichetta_New.QRAngledLabel1Print(sender: TObject;
  var Value: String);
begin
//value:=leftstr(DM.IBDataSetClientiCOGNRAGSOC.AsString+' '+DM.IBDataSetClientiNOME.AsString,18);
value:=DM.IBDataSetRipRIP_NO.AsString;
end;

end.
