unit SceCliNew;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Softhire, QuickRpt, QRCtrls, ExtCtrls;

type
  TNewSchCli = class(TForm)
    QuickRep1: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRDBImage2: TQRDBImage;
    QRDBRichText2: TQRDBRichText;
    QRShape5: TQRShape;
    QRLabel23: TQRLabel;
    QRDBText25: TQRDBText;
    QRLabel30: TQRLabel;
    QRDBText32: TQRDBText;
    QRLabel22: TQRLabel;
    QRDBText31: TQRDBText;
    QRLabel16: TQRLabel;
    QRDBText33: TQRDBText;
    QRLabel21: TQRLabel;
    QRDBText28: TQRDBText;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel25: TQRLabel;
    QRDBText24: TQRDBText;
    QRLabel26: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel27: TQRLabel;
    QRDBText23: TQRDBText;
    QRLabel29: TQRLabel;
    QRDBText30: TQRDBText;
    QRShape2: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel4: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText19: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText1: TQRDBText;
    QRShape4: TQRShape;
    GroupFooterBand1: TQRBand;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel33: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel34: TQRLabel;
    QRDBText10: TQRDBText;
    QRShape6: TQRShape;
    QRLabel5: TQRLabel;
    QRDBRichText3: TQRDBRichText;
    QRLabel18: TQRLabel;
    QRDBText11: TQRDBText;
    QRShape3: TQRShape;
    QRLabel19: TQRLabel;
    QRLabel11: TQRLabel;
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QuickRep1NeedData(Sender: TObject; var MoreData: Boolean);
    procedure QRLabel1Print(sender: TObject; var Value: String);
    procedure QRLabel11Print(sender: TObject; var Value: String);
    procedure QRLabel5Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NewSchCli: TNewSchCli;
  NumPrinted:integer;
implementation

{$R *.dfm}

procedure TNewSchCli.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
NumPrinted:=0;
end;

procedure TNewSchCli.QuickRep1NeedData(Sender: TObject; var MoreData: Boolean);
begin
MoreData:=NumPrinted<Dm.IBDataSetParamNUMSCHEDPRN.AsInteger;
inc(numPrinted);
Quickrep1.NewColumn;
end;

procedure TNewSchCli.QRLabel1Print(sender: TObject; var Value: String);
var temp,temp1:string;
begin
temp:=inttostr(trunc(strtofloat(DM.IBDataSetScheduleNETPRICE.AsString)));
temp1:=floattostr(frac(strtofloat(DM.IBDataSetScheduleNETPRICE.AsString)));
while not (length(temp)=4) do
temp:='0'+temp;
if dm.IBDataSetParamPRINTRIPNEWBARCODE.Value=0 then
Value:='*'+'N'+inttohex(DM.IBDataSetScheduleSCHED_NO.AsInteger,5)+temp+temp1[1]+'*';
if dm.IBDataSetParamPRINTRIPNEWBARCODE.Value=1 then
Value:='*'+'N+'+inttohex(DM.IBDataSetScheduleSCHED_NO.AsInteger,5)+temp+temp1[1]+'*';
if dm.IBDataSetParamPRINTRIPNEWBARCODE.Value=2 then
Value:='*'+'N'+inttohex(DM.IBDataSetScheduleSCHED_NO.AsInteger,5)+temp+temp1[1]+'*';
end;

procedure TNewSchCli.QRLabel11Print(sender: TObject; var Value: String);
begin
Value:=inttohex(DM.IBDataSetScheduleSCHED_NO.AsInteger,5);
end;

procedure TNewSchCli.QRLabel5Print(sender: TObject; var Value: String);
begin
{if DM.IBDataSetSchedulePAGATO.AsInteger=1 then
begin
Qrlabel5.Font.Style:=[fsBold];
Value:='PAGATO';
end
else
begin
Qrlabel5.Font.Style:=[fsBold, fsunderline];
Value:='NON PAGATO';
end;}
Qrlabel5.Font.Style:=[fsBold, fsunderline];
Value:='PAGATO';
end;

end.
