unit ReportRiparaz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, TeEngine, Series, ExtCtrls, TeeProcs, Chart,
  Grids, DBGrids, IBQuery, DateUtils, DbChart, Mask, StrUtils;

type
  TRepLabData = class(TForm)
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Label6: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Edit27: TEdit;
    Edit28: TEdit;
    Edit29: TEdit;
    Edit30: TEdit;
    Edit31: TEdit;
    Edit32: TEdit;
    Edit33: TEdit;
    Edit34: TEdit;
    Edit35: TEdit;
    Edit36: TEdit;
    Edit37: TEdit;
    Edit38: TEdit;
    Edit39: TEdit;
    Edit40: TEdit;
    Edit41: TEdit;
    Edit42: TEdit;
    Edit43: TEdit;
    Edit44: TEdit;
    Edit45: TEdit;
    Edit46: TEdit;
    GroupBox4: TGroupBox;
    Label7: TLabel;
    SpeedButton1: TSpeedButton;
    Label8: TLabel;
    SpeedButton3: TSpeedButton;
    BitBtn3: TBitBtn;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    BitBtn4: TBitBtn;
    Label1: TLabel;
    GroupBox3: TGroupBox;
    Label2: TLabel;
    Edit1: TEdit;
    Label11: TLabel;
    Edit2: TEdit;
    Label30: TLabel;
    Edit9: TEdit;
    Chart1: TChart;
    Series1: TBarSeries;
    Chart2: TChart;
    Series2: TBarSeries;
    Series3: TBarSeries;
    Series4: TBarSeries;
    Series5: TBarSeries;
    Series6: TBarSeries;
    Series7: TBarSeries;
    ComboBox1: TComboBox;
    Label31: TLabel;
    Label32: TLabel;
    ComboBox2: TComboBox;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    procedure BitBtn3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    function  NRiparazioni(qtycost:boolean;fromdate:Tdate;todate:Tdate;Tipo:string;prezzo:integer):integer;
    function  FirstDataIntoRip:string;
    procedure viewchart1(fromdate:Tdate;ToDate:Tdate);
    procedure ComboBox1Enter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RepLabData: TRepLabData;

implementation

uses Pickdate, softhire, nolo;

{$R *.dfm}
var ripa0,rip,clirip,servrip,ripsci,ripsnow,ripalpi,ripfon,ripscar:integer;

procedure TRepLabData.BitBtn3Click(Sender: TObject);
Var TmpQuery:TIBQuery;
datein,dateout:Tdatetime;
begin
if trystrtodate(maskedit1.Text,datein) and trystrtodate(maskedit2.Text,dateout) then
begin
ripa0:=NRiparazioni(true,strtodate(maskedit1.text),strtodate(maskedit2.text),'',1);
clirip:=NRiparazioni(true,strtodate(maskedit1.text),strtodate(maskedit2.text),'',3);
servrip:=NRiparazioni(true,strtodate(maskedit1.text),strtodate(maskedit2.text),'',4);
rip:=clirip+servrip;
ripsci:=NRiparazioni(true,strtodate(maskedit1.text),strtodate(maskedit2.text),'SCI',2);
ripsnow:=NRiparazioni(true,strtodate(maskedit1.text),strtodate(maskedit2.text),'SNOWBOARD',2);
ripalpi:=NRiparazioni(true,strtodate(maskedit1.text),strtodate(maskedit2.text),'SCI ALPINISMO',2);
ripfon:=NRiparazioni(true,strtodate(maskedit1.text),strtodate(maskedit2.text),'FONDO',2);
ripscar:=NRiparazioni(true,strtodate(maskedit1.text),strtodate(maskedit2.text),'SCARPONI',2);
edit1.Text:=inttostr(ripa0);
edit4.Text:=inttostr(clirip);
edit5.Text:=inttostr(servrip);
edit6.Text:='100';
edit3.Text:=inttostr(ripsci+ripsnow+ripalpi+ripfon+ripscar);
edit2.Text:=Format('%.1f', [(ripa0/(clirip+servrip)*100)]);
edit27.text:=Format('%.1f', [(clirip/(clirip+servrip)*100)]);
edit29.Text:=inttostr(ripsci);
edit28.Text:=Format('%.1f', [(servrip/(clirip+servrip)*100)]);
edit30.Text:=Format('%.1f', [(ripsci/(clirip+servrip)*100)]);
edit32.Text:=Format('%.1f', [(ripsnow/(clirip+servrip)*100)]);
edit34.Text:=Format('%.1f', [(ripalpi/(clirip+servrip)*100)]);
edit36.Text:=Format('%.1f', [(ripfon/(clirip+servrip)*100)]);
edit38.Text:=Format('%.1f', [(ripscar/(clirip+servrip)*100)]);
edit31.Text:=inttostr(ripsnow);
edit33.Text:=inttostr(ripalpi);
edit35.Text:=inttostr(ripfon);
edit37.Text:=inttostr(ripscar);
edit39.Text:=inttostr(NRiparazioni(false,strtodate(maskedit1.text),strtodate(maskedit2.text),'',2));
edit40.Text:=inttostr(NRiparazioni(false,strtodate(maskedit1.text),strtodate(maskedit2.text),'',3));
edit41.Text:=inttostr(NRiparazioni(false,strtodate(maskedit1.text),strtodate(maskedit2.text),'',4));
edit9.Text:=inttostr(NRiparazioni(false,strtodate(maskedit1.text),strtodate(maskedit2.text),'',1));
edit42.Text:=inttostr(NRiparazioni(false,strtodate(maskedit1.text),strtodate(maskedit2.text),'SCI',2));
edit43.Text:=inttostr(NRiparazioni(false,strtodate(maskedit1.text),strtodate(maskedit2.text),'SNOWBOARD',2));
edit44.Text:=inttostr(NRiparazioni(false,strtodate(maskedit1.text),strtodate(maskedit2.text),'SCI ALPINISMO',2));
edit45.Text:=inttostr(NRiparazioni(false,strtodate(maskedit1.text),strtodate(maskedit2.text),'FONDO',2));
edit46.Text:=inttostr(NRiparazioni(false,strtodate(maskedit1.text),strtodate(maskedit2.text),'SCARPONI',2));
viewchart1(strtodate(maskedit1.text),strtodate(maskedit2.text));
end
else
begin
maskedit1.Text:=firstdataintorip;
maskedit2.Text:=datetostr(today);
ripa0:=NRiparazioni(true,strtodate(maskedit1.text),strtodate(maskedit2.text),'',1);
clirip:=NRiparazioni(true,strtodate(maskedit1.text),strtodate(maskedit2.text),'',3);
servrip:=NRiparazioni(true,strtodate(maskedit1.text),strtodate(maskedit2.text),'',4);
rip:=clirip+servrip;
ripsci:=NRiparazioni(true,strtodate(maskedit1.text),strtodate(maskedit2.text),'SCI',2);
ripsnow:=NRiparazioni(true,strtodate(maskedit1.text),strtodate(maskedit2.text),'SNOWBOARD',2);
ripalpi:=NRiparazioni(true,strtodate(maskedit1.text),strtodate(maskedit2.text),'SCI ALPINISMO',2);
ripfon:=NRiparazioni(true,strtodate(maskedit1.text),strtodate(maskedit2.text),'FONDO',2);
ripscar:=NRiparazioni(true,strtodate(maskedit1.text),strtodate(maskedit2.text),'SCARPONI',2);
edit1.Text:=inttostr(ripa0);
edit4.Text:=inttostr(clirip);
edit5.Text:=inttostr(servrip);
edit3.Text:=inttostr(clirip+servrip);
edit6.Text:='100';
edit2.Text:=Format('%.1f', [(ripa0/(clirip+servrip)*100)]);
edit27.text:=Format('%.1f', [(clirip/(clirip+servrip)*100)]);
edit29.Text:=inttostr(ripsci);
edit28.Text:=Format('%.1f', [(servrip/(clirip+servrip)*100)]);
edit30.Text:=Format('%.1f', [(ripsci/(clirip+servrip)*100)]);
edit32.Text:=Format('%.1f', [(ripsnow/(clirip+servrip)*100)]);
edit34.Text:=Format('%.1f', [(ripalpi/(clirip+servrip)*100)]);
edit36.Text:=Format('%.1f', [(ripfon/(clirip+servrip)*100)]);
edit38.Text:=Format('%.1f', [(ripscar/(clirip+servrip)*100)]);
edit31.Text:=inttostr(ripsnow);
edit33.Text:=inttostr(ripalpi);
edit35.Text:=inttostr(ripfon);
edit37.Text:=inttostr(ripscar);
edit39.Text:=inttostr(NRiparazioni(false,strtodate(maskedit1.text),strtodate(maskedit2.text),'',2));
edit40.Text:=inttostr(NRiparazioni(false,strtodate(maskedit1.text),strtodate(maskedit2.text),'',3));
edit41.Text:=inttostr(NRiparazioni(false,strtodate(maskedit1.text),strtodate(maskedit2.text),'',4));
edit9.Text:=inttostr(NRiparazioni(false,strtodate(maskedit1.text),strtodate(maskedit2.text),'',1));
edit42.Text:=inttostr(NRiparazioni(false,strtodate(maskedit1.text),strtodate(maskedit2.text),'SCI',2));
edit43.Text:=inttostr(NRiparazioni(false,strtodate(maskedit1.text),strtodate(maskedit2.text),'SNOWBOARD',2));
edit44.Text:=inttostr(NRiparazioni(false,strtodate(maskedit1.text),strtodate(maskedit2.text),'SCI ALPINISMO',2));
edit45.Text:=inttostr(NRiparazioni(false,strtodate(maskedit1.text),strtodate(maskedit2.text),'FONDO',2));
edit46.Text:=inttostr(NRiparazioni(false,strtodate(maskedit1.text),strtodate(maskedit2.text),'SCARPONI',2));
viewchart1(strtodate(maskedit1.text),strtodate(maskedit2.text));
end;

end;

//end;

procedure TRepLabData.SpeedButton1Click(Sender: TObject);
var datavalid:Tdatetime;
begin
//BrDateForm.date:=date;
if TryStrToDate(maskedit1.Text, datavalid) then
begin
BrDateForm.date:=datavalid;
if BrDateForm.Showmodal= mrOk then
   Maskedit1.Text:=datetostr(BrDateForm.Date);
   // EDIT24.Text:=datetostr(BrDateForm.Date);
end
else
showmessage('Data inserita non valida');
end;

procedure TRepLabData.SpeedButton3Click(Sender: TObject);
var datavalid:Tdatetime;
begin
//BrDateForm.date:=date;
if TryStrToDate(maskedit2.Text, datavalid) then
begin
BrDateForm.date:=datavalid;
if BrDateForm.Showmodal= mrOk then
   Maskedit2.Text:=datetostr(BrDateForm.Date);
   // EDIT24.Text:=datetostr(BrDateForm.Date);
end
else
showmessage('Data inserita non valida');
end;


procedure TRepLabData.viewchart1(fromdate:Tdate;toDate:Tdate);
begin
With series1 do
begin
clear;
chart1.Title.Text.Clear;
chart1.Title.Text.Add('N° RIPARAZIONI PER TIPO DAL '+datetostr(fromdate)+' AL '+datetostr(todate));
add(RIPSCI,'RIP. SCI',clRed);
add(RIPSNOW,'RIP. SNOW',$000080FF);
add(RIPALPI,'RIP. ALPINISMO',clyellow);
add(RIPFON,'RIP. FONDO',clBlue);
add(RIPSCAR,'RIP. SCARPONI',cllime);
end;
end;






//function TRepLabData.NRiparazioni(fromdate:Tdate;Todate:Tdate):integer;
//var Qry:TIBQuery;
//begin
//Qry:=TIBQuery.Create(nil);
//qry.Database:=dM.IBDatabase1;
//qry.SQL.Add('select count(*) as ripno from riparazione where riparazione.datainsert between "'+nolo.Menu.DecForSqlDate(fromdate) +'" AND "'+ nolo.menu.DecForSqlDate(todate) +'" AND prezzo>0');
//qry.Open;
//if not qry.IsEmpty then
//result:=qry.FieldByName('RIPNO').AsInteger
//else
//result:=0;
//end;

function TRepLabData.NRiparazioni(qtycost:boolean;fromdate:Tdate;Todate:Tdate;Tipo:string;prezzo:integer):integer;
var Qry:TIBQuery;
    tipologia:string;
begin
Qry:=TIBQuery.Create(nil);
qry.Database:=dM.IBDatabase1;
if qtycost=true then
qry.SQL.Add('select count(*) as ripno from riparazione')
else
qry.SQL.Add('select sum(prezzo) as ripno from riparazione');
if tipo<>''  then
tipologia:='AND TIPOPRODOTTO = "'+TIPO+'"'
else
tipologia:='';
if prezzo=0 then
qry.SQL.Add('where riparazione.datainsert between "'+nolo.Menu.DecForSqlDate(fromdate) +'" AND "'+ nolo.menu.DecForSqlDate(todate) +'"'+TIPOLOGIA+' AND PREZZO>0');
if prezzo=1 then
qry.SQL.Add('where riparazione.datainsert between "'+nolo.Menu.DecForSqlDate(fromdate) +'" AND "'+ nolo.menu.DecForSqlDate(todate) +'"'+TIPOLOGIA+' AND PREZZO=0 AND SCHED_NO IS NULL');
if prezzo=2 then
qry.SQL.Add('where riparazione.datainsert between "'+nolo.Menu.DecForSqlDate(fromdate) +'" AND "'+ nolo.menu.DecForSqlDate(todate) +'"'+TIPOLOGIA);
if prezzo=3 then
qry.SQL.Add('where riparazione.datainsert between "'+nolo.Menu.DecForSqlDate(fromdate) +'" AND "'+ nolo.menu.DecForSqlDate(todate) +'"'+TIPOLOGIA+' AND SCHED_NO = 0');
if prezzo=4 then
qry.SQL.Add('where riparazione.datainsert between "'+nolo.Menu.DecForSqlDate(fromdate) +'" AND "'+ nolo.menu.DecForSqlDate(todate) +'"'+TIPOLOGIA+' AND SCHED_NO<>0');
qry.Open;
if not qry.IsEmpty then
result:=qry.FieldByName('RIPNO').AsInteger
else
result:=0;
end;




function TRepLabData.FirstDataIntoRip:string;
var qry2:TIBQuery;
begin
  qry2:=TIBQuery.Create(nil);
  qry2.Database:=DM.IBDatabase1;
  qry2.SQL.Clear;
  qry2.SQL.Add('SELECT MIN(DATAINSERT) as FIRSTDATE FROM RIPARAZIONE');
  qry2.Open;
  If not qry2.IsEmpty Then
  result:=Qry2.fieldbyname('FIRSTDATE').AsString
  else
  result:='01/01/2000';
  qry2.Free;
  end;

procedure TRepLabData.ComboBox1Enter(Sender: TObject);
var yearmin,monthmin,daymin,yearmax,monthmax,daymax:word;
  i: integer;
  TmpQry:TIBQuery;
  begin
TmpQry:=TIBQuery.create(nil);
TMpQry.Database:=DM.IBDatabase1;
combobox1.Clear;
combobox1.Items.Add('TUTTI');
TMpQry.Close;
TMpQry.SQL.Clear;
TMpQry.SQL.Add('select Min(DataInsert),Max(dataInsert) from RIPARAZIONE');
TMpQry.Open;
if not TMpQry.IsEmpty then
begin
decodedate(TMpQry.Fields.Fields[0].AsDateTime,YearMin,MonthMin,DayMin);
decodedate(TMpQry.Fields.Fields[1].AsDateTime,YearMax,MonthMax,DayMax);
if TMpQry.Fields.Fields[0].AsDateTime >  strtodate('29/09/'+inttostr(Yearmin)) then
yearmin:=yearmin
else
yearmin:=yearmin-1;
if TMpQry.Fields.Fields[1].AsDateTime >  strtodate('29/09/'+inttostr(Yearmax)) then
Yearmax:=yearmax
else
yearmax:=yearmax-1;
for i := yearmin to yearmax do
combobox1.Items.Add('AI '+inttostr(i)+'-'+inttostr(i+1));
end;


end;

procedure TRepLabData.FormShow(Sender: TObject);
begin
maskedit1.Text:=datetostr(today);
maskedit2.Text:=datetostr(today);
end;

procedure TRepLabData.Button4Click(Sender: TObject);
begin
maskedit1.Text:=datetostr(today);
maskedit2.Text:=datetostr(today);
bitbtn3.Click;

end;

procedure TRepLabData.Button5Click(Sender: TObject);
begin
maskedit1.Text:='01/'+RightStr('00' + inttostr(monthof(today)), 2)+'/'+inttostr(yearof(today));
maskedit2.Text:=inttostr(daysinamonth(yearof(today),monthof(today)))+'/'+RightStr('00' + inttostr(monthof(today)), 2)+'/'+inttostr(yearof(today));
Bitbtn3.Click;

end;

procedure TRepLabData.Button6Click(Sender: TObject);
begin
maskedit1.Text:='01/01/'+inttostr(yearof(today));
maskedit2.Text:='31/12/'+inttostr(yearof(today));
Bitbtn3.Click;

end;

procedure TRepLabData.BitBtn4Click(Sender: TObject);
begin
maskedit1.Text:=nolo.menu.firstdataintrosched;
maskedit2.Text:=datetostr(today);
Bitbtn3.Click;

end;

end.
