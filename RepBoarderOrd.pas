unit RepBoarderOrd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, DB, IBCustomDataSet, IBQuery;

type
  TRipBrdOrd = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRGroup1: TQRGroup;
    QRBand2: TQRBand;
    QRDBText5: TQRDBText;
    IBQuery1: TIBQuery;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape3: TQRShape;
    QRLabel6: TQRLabel;
    QRShape4: TQRShape;
    QRDBText3: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel14: TQRLabel;
    QRShape10: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape5: TQRShape;
    QRLabel9: TQRLabel;
    QRShape6: TQRShape;
    QRLabel10: TQRLabel;
    QRShape7: TQRShape;
    QRLabel11: TQRLabel;
    QRShape9: TQRShape;
    QRLabel13: TQRLabel;
    QRDBRichText1: TQRDBRichText;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    IBQuery1COGNRAGSOC: TIBStringField;
    IBQuery1NOME: TIBStringField;
    IBQuery1RIP_NO: TIntegerField;
    IBQuery1CLI_NO: TIntegerField;
    IBQuery1TIPOPRODOTTO: TIBStringField;
    IBQuery1BRAND: TIBStringField;
    IBQuery1DESCRIZIONE: TIBStringField;
    IBQuery1FONDO: TSmallintField;
    IBQuery1LAMINE: TSmallintField;
    IBQuery1SCIOLINA: TSmallintField;
    IBQuery1PREPGARA: TSmallintField;
    IBQuery1RIPPARTIC: TSmallintField;
    IBQuery1RADDRIZZATURA: TSmallintField;
    IBQuery1CHECKATTACCHI: TSmallintField;
    IBQuery1PREZZO: TFloatField;
    IBQuery1NOTE1: TMemoField;
    IBQuery1RITIRATODA: TIBStringField;
    IBQuery1OWNER: TIBStringField;
    IBQuery1KG: TIntegerField;
    IBQuery1MMSUOLA: TIntegerField;
    IBQuery1PELLI: TSmallintField;
    IBQuery1DATAREADY: TDateTimeField;
    IBQuery1DATAINSERT: TDateTimeField;
    IBQuery1DATARITIRORICH: TDateTimeField;
    IBQuery1DATARITIRO: TDateTimeField;
    IBQuery1URGENZA: TIntegerField;
    IBQuery1TIPOPAGAM: TIBStringField;
    IBQuery1EANCODERIP: TIBStringField;
    IBQuery1STANCESNOW: TIBStringField;
    IBQuery1BINDINGS: TIBStringField;
    IBQuery1SXDEG: TIBStringField;
    IBQuery1DXDEG: TIBStringField;
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLabel1Print(sender: TObject; var Value: String);
    procedure QRLabel3Print(sender: TObject; var Value: String);
    procedure QRLabel13Print(sender: TObject; var Value: String);
    procedure QRLabel2Print(sender: TObject; var Value: String);
    procedure QRLabel15Print(sender: TObject; var Value: String);
    procedure QRLabel16Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RipBrdOrd: TRipBrdOrd;

implementation

{$R *.dfm}

uses softhire, Riparazione;

procedure TRipBrdOrd.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if QRShape1.Brush.Color=ClWhite then
begin
QRShape1.Brush.Color:=ClSilver;
QrDbText3.Color:=ClSilver;
QrDbText6.Color:=ClSilver;
Qrlabel13.Color:=ClSilver;
Qrlabel15.Color:=ClSilver;
Qrlabel16.Color:=ClSilver;
Qrlabel3.Color:=ClSilver;
Qrlabel4.Color:=ClSilver;
Qrlabel5.Color:=ClSilver;
Qrlabel6.Color:=ClSilver;
Qrlabel14.Color:=ClSilver;
Qrlabel7.Color:=ClSilver;
Qrlabel12.Color:=ClSilver;
Qrlabel8.Color:=ClSilver;
Qrlabel9.Color:=ClSilver;
Qrlabel10.Color:=ClSilver;
Qrlabel11.Color:=ClSilver;
QrDBRichText1.Color:=ClSilver;
end
else
begin
QRShape1.Brush.Color:=ClWhite;
QrDbText3.Color:=ClWhite;
QrDbText6.Color:=ClWhite;
Qrlabel13.Color:=Clwhite;
Qrlabel15.Color:=ClWhite;
Qrlabel16.Color:=ClWhite;
Qrlabel3.Color:=Clwhite;
Qrlabel4.Color:=Clwhite;
Qrlabel5.Color:=Clwhite;
Qrlabel6.Color:=Clwhite;
Qrlabel14.Color:=Clwhite;
Qrlabel7.Color:=Clwhite;
Qrlabel12.Color:=Clwhite;
Qrlabel8.Color:=Clwhite;
Qrlabel9.Color:=Clwhite;
Qrlabel10.Color:=Clwhite;
Qrlabel11.Color:=Clwhite;
QrDBRichText1.Color:=Clwhite;
end;
if ibquery1Fondo.Value=1 then
QrShape2.Brush.Color:=Clblack
else
QrShape2.Brush.Color:=ClWhite;
if ibquery1Lamine.Value=1 then
QrShape3.Brush.Color:=Clblack
else
QrShape3.Brush.Color:=ClWhite;
if ibquery1Sciolina.Value=1 then
QrShape4.Brush.Color:=Clblack
else
QrShape4.Brush.Color:=ClWhite;
if ibquery1Prepgara.Value=1 then
QrShape5.Brush.Color:=Clblack
else
QrShape5.Brush.Color:=ClWhite;
if ibquery1raddrizzatura.Value=1 then
QrShape6.Brush.Color:=Clblack
else
QrShape6.Brush.Color:=ClWhite;
if ibquery1pelli.Value=1 then
QrShape7.Brush.Color:=Clblack
else
QrShape7.Brush.Color:=ClWhite;
if ibquery1Rippartic.Value=1 then
QrShape9.Brush.Color:=Clblack
else
QrShape9.Brush.Color:=ClWhite;
if ibquery1CheckAttacchi.Value=1 then
QrShape10.Brush.Color:=Clblack
else
QrShape10.Brush.Color:=ClWhite;





end;

procedure TRipBrdOrd.QRLabel1Print(sender: TObject; var Value: String);
begin
Value:=LongDayNames[DayOfWeek(IBQuery1DataRitirorich.AsDateTime)]
end;

procedure TRipBrdOrd.QRLabel3Print(sender: TObject; var Value: String);
begin
Value:=IBQuery1TipoProdotto.AsString+' - '+IBQuery1Brand.AsString+' '+IBQuery1Descrizione.AsString;
end;

procedure TRipBrdOrd.QRLabel13Print(sender: TObject; var Value: String);
begin
value:=ibquery1Rip_no.AsString+' - '+ibquery1CognRagSoc.AsString+' '+ibquery1Nome.AsString;
end;

procedure TRipBrdOrd.QRLabel2Print(sender: TObject; var Value: String);
begin
value:='Lista Riparazioni dal '+Ripmodule.edit3.text+' al '+Ripmodule.edit4.text;
end;

procedure TRipBrdOrd.QRLabel15Print(sender: TObject; var Value: String);
begin
if not IBQuery1DATAREADY.IsNull then
Value:='Ok'
else
Value:='No';
end;

procedure TRipBrdOrd.QRLabel16Print(sender: TObject; var Value: String);
begin
if not IbQuery1DATARITIRO.IsNull then
Value:='Ok'
else
Value:='No';

end;

end.
