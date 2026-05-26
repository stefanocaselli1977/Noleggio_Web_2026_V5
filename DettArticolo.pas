unit DettArticolo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons, Math;

type
  TDettArt = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Bevel1: TBevel;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    Label16: TLabel;
    DBEdit16: TDBEdit;
    Label17: TLabel;
    DBEdit17: TDBEdit;
    Label19: TLabel;
    Label20: TLabel;
    TOTGGRIT: TEdit;
    Label21: TLabel;
    AMMORTAMENTO: TEdit;
    Label18: TLabel;
    PRESINSCHEDA: TEdit;
    Label22: TLabel;
    MEDIA: TEdit;
    DBMemo1: TDBMemo;
    Bevel2: TBevel;
    BitBtn1: TBitBtn;
    DBEdit19: TDBEdit;
    Label23: TLabel;
    Label24: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    GGLAVORO: TEdit;
    PERMANENZA: TEdit;
    VENDMIN: TEdit;
    Label25: TLabel;
    procedure FormShow(Sender: TObject);
    function CalcPermanenza(ARTNO:String):integer;
    function CalcPresInScheda(ARTNO:String):integer;
    function CalcGGLavoro(ARTNO:String):integer;
    function CalcGGRitardo(ARTNO:String):integer;
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DettArt: TDettArt;

implementation

{$R *.dfm}

uses SoftHire;
var prezacq,prezscon,incass,vendmini,mediaeugg,ammortam:real;
    totdayused:integer;

procedure TDettArt.FormShow(Sender: TObject);
begin
if not ((DM.IBDataSetArticoloPREZZORIS.IsNull) or (DM.IBDataSetArticoloPREZZORIS.asfloat=0)) then
Begin
ammortam:=DM.IBDataSetArticoloINCNOLO.asfloat/DM.IBDataSetArticoloPREZZORIS.AsFloat*100;
ammortam:=RoundTo(ammortam,-1)
end
else
ammortam:=0;
totdayused:=calcgglavoro(DM.IBDataSetArticoloART_NO.AsString);
if not (totdayused = 0) then
mediaeugg:=DM.IBDataSetArticoloINCNOLO.AsFloat/totdayused
else
mediaeugg:=0;
prezscon:=DM.IBDataSetArticoloPREZZOSCONT.AsFloat;
incass:=DM.IBDataSetArticoloINCNOLO.AsFloat;
prezacq:=DM.IBDataSetArticoloPREZZORIS.AsFloat;
if ammortam < 200 then    //valore da mettere in parametri
vendmini:=prezscon-(incass*ammortam/100)
else
vendmini:=prezacq/2;       // valore da mettere in parametri
AMMORTAMENTO.Text:=floattostr(ammortam);
PERMANENZA.Text:=inttostr(CalcPermanenza(DM.IBDataSetArticoloART_NO.AsString));
GGLAVORO.Text:=Inttostr(totdayused);
TOTGGRIT.Text:=inttostr(CalcGGRitardo(DM.IBDataSetArticoloART_NO.AsString));
PRESINSCHEDA.Text:=inttostr(CalcPresInScheda(DM.IBDataSetArticoloART_NO.AsString));
MEDIA.Text:=floattostr(roundto(mediaeugg,-2));
VENDMIN.Text:=floattostr(vendmini);
end;

function TDettArt.CalcPermanenza(ARTNO:String):integer;
begin
DM.IBQueryTemp.Close;
DM.IBQueryTemp.SQL.Clear;
DM.IBQueryTemp.SQL.Add('SELECT "TODAY" - INTRODATE');
DM.IBQueryTemp.SQL.Add('FROM ARTICOLO');
DM.IBQueryTemp.SQL.Add('WHERE ARTICOLO.ART_NO="'+ARTNO+'"');
DM.IBQueryTemp.Open;
if not DM.IBQueryTemp.IsEmpty then
Result:=DM.IBQueryTemp.Fields.Fields[0].AsInteger
else
Result:=0;
DM.IBQueryTemp.close;
end;

function TDettArt.CalcGGLavoro(ARTNO:String):integer;
begin
DM.IBQueryTemp.Close;
DM.IBQueryTemp.SQL.Clear;
DM.IBQueryTemp.SQL.Add('SELECT SUM(SCHEDULE.DAYUSE)');
DM.IBQueryTemp.SQL.Add('FROM SCHEDULE JOIN RENTEDART ON SCHEDULE.SCHED_NO=RENTEDART.SCHED_NO');
DM.IBQueryTemp.SQL.Add('WHERE RENTEDART.ART_NO="'+ARTNO+'"');
DM.IBQueryTemp.Open;
if not DM.IBQueryTemp.IsEmpty then
Result:=DM.IBQueryTemp.Fields.Fields[0].AsInteger
else
Result:=0;
DM.IBQueryTemp.close;
end;

function TDettArt.CalcGGRitardo(ARTNO:String):integer;
begin
DM.IBQueryTemp.Close;
DM.IBQueryTemp.SQL.Clear;
DM.IBQueryTemp.SQL.Add('SELECT SUM(DATACLOSESCHD-DATATAKEBACK)');
DM.IBQueryTemp.SQL.Add('FROM SCHEDULE JOIN RENTEDART ON SCHEDULE.SCHED_NO=RENTEDART.SCHED_NO');
DM.IBQueryTemp.SQL.Add('WHERE RENTEDART.ART_NO="'+ARTNO+'" AND (SCHEDULE.STATO_CONS="RITARDO" OR SCHEDULE.STATO_CONS="GRAVE_RITARDO")');
DM.IBQueryTemp.Open;
if not DM.IBQueryTemp.IsEmpty then
Result:=DM.IBQueryTemp.Fields.Fields[0].AsInteger
else
Result:=0;
DM.IBQueryTemp.close;
end;

function TDettArt.CalcPresInScheda(ARTNO:String):integer;
begin
DM.IBQueryTemp.Close;
DM.IBQueryTemp.SQL.Clear;
DM.IBQueryTemp.SQL.Add('SELECT COUNT(*)');
DM.IBQueryTemp.SQL.Add('FROM SCHEDULE JOIN RENTEDART ON SCHEDULE.SCHED_NO=RENTEDART.SCHED_NO');
DM.IBQueryTemp.SQL.Add('WHERE RENTEDART.ART_NO="'+ARTNO+'"');
DM.IBQueryTemp.Open;
if not DM.IBQueryTemp.IsEmpty then
Result:=DM.IBQueryTemp.Fields.Fields[0].AsInteger
else
Result:=0;
DM.IBQueryTemp.close;
end;





procedure TDettArt.FormCreate(Sender: TObject);
begin
showmessage('Dettarticolo in/out');
end;

end.
