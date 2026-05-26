unit AvailabelItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, CommCtrl,UMonthBoldStorage, Grids,
  Calendar, SMCalendar, Extctrls, strutils,DB, DBCtrls, DBGrids, dateutils,IBQuery,
  jpeg ;

type
   TAvailableItem = class(TForm)
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Label1: TLabel;
    GroupBox2: TGroupBox;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit6: TEdit;
    Label6: TLabel;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox5: TGroupBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    ComboBox1: TComboBox;
    Label7: TLabel;
    ComboBox2: TComboBox;
    Label8: TLabel;
    Label9: TLabel;
    ComboBox3: TComboBox;
    StringGrid1: TStringGrid;
    procedure FormCreate(Sender: TObject);
    procedure MonthCalendar1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox1Enter(Sender: TObject);
    procedure ComboBox2Enter(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure ComboBox1Select(Sender: TObject);
    procedure ComboBox2Select(Sender: TObject);
    procedure ComboBox3Enter(Sender: TObject);
    procedure ComboBox3CloseUp(Sender: TObject);
    procedure DrawDatesInGrid(ADate: TDateTime);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

  type                   
  TArtAvailableMonthly = array [1..31] of boolean;
  function ArtAvailabel(Art_no:string;month:word;year:word):TArtAvailableMonthly;
 // mese: array[1..31] of boolean;

  var
  AvailableItem: TAvailableItem;
  MonthlyArtAvail:TArtAvailableMonthly;
  actualyear,actualmonth,actualday:word;
  mese1: array[1..31] of boolean;
implementation

uses SoftHire,nolo;

{$R *.dfm}


procedure TAvailableItem.FormCreate(Sender: TObject);
var i:integer;
begin
for i:=1 to 31 do
mese1[i]:=false;
decodedate(today,actualyear,actualmonth,actualday);
label9.Caption:=LongMonthNames[actualmonth]+' '+inttostr(actualyear);
DrawDatesInGrid(today);
end;

procedure TAvailableItem.MonthCalendar1Click(Sender: TObject);
//var
  // year, month, day : Word;
begin
 //  DecodeDate(MonthCalendar1.Date,Year, Month, Day);
  // if FYearBoldManager.GetDayStatus(month, day) then begin
   //   lastValidDate := MonthCalendar1.Date;
       //ValidDate:=True;
  // end else begin
    //  MonthCalendar1.Date := lastValidDate;
    //  ValidDate:=False;
   end;

function ArtAvailabel(Art_no:string;month:word;year:word):TArtAvailableMonthly;
var qry1:TIBQuery;
i,endmonth:integer;
mese: array[1..31] of boolean;
year1,year2,month1,month2,dayini,dayend:word;
x,y,dataini,datafine:string;
begin
for i:=1 to 31 do
mese[i]:=true;
endmonth:=Daysinamonth(year,month);
if IsLeapYear(year) and (month=2) then
endmonth:=29;
dataini:=datetostr(strtodate('1/'+inttostr(month)+'/'+inttostr(year)) );
datafine:=datetostr(strtodate(inttostr(endmonth)+'/'+inttostr(month)+'/'+inttostr(year)));
qry1:= TIBquery.Create(nil);
qry1.Database:=DM.IBDatabase1;
qry1.Transaction:=DM.IBTransaction6;
qry1.SQL.Add('select schedule.DATASTARTRENT ,schedule.DATATAKEBACK  from rentedart join schedule on rentedart.SCHED_NO = schedule.SCHED_NO');
qry1.SQL.Add('where (rentedart.ART_NO="'+Art_no+'") and (rentedart.STATO="NOLEGGIATO")  and (((schedule.DATASTARTRENT between "'+menu.DecForSqlDate(strtodate(dataini))+'"  AND "'+menu.DecForSqlDate(strtodate(datafine))+'") OR (schedule.DATATAKEBACK between "'+menu.DecForSqlDate(strtodate(dataini))+'" AND "'+menu.DecForSqlDate(strtodate(datafine))+'")) OR (schedule.DATASTARTRENT<"'+menu.DecForSqlDate(strtodate(dataini))+'" AND schedule.DATATAKEBACK>"'+menu.DecForSqlDate(strtodate(dataini))+'")) ');
qry1.SQL.Add('order by schedule.DATASTARTRENT');
qry1.Open;
qry1.First;
while not qry1.Eof do
begin
DecodeDate(qry1.FieldByName('DATASTARTRENT').AsDateTime, Year1, Month1, Dayini);
DecodeDate(qry1.FieldByName('DATATAKEBACK').AsDateTime, Year2, Month2, Dayend);
if qry1.FieldByName('DATASTARTRENT').AsDateTime<=strtodate(dataini) then
dayini:=1;
if qry1.FieldByName('DATATAKEBACK').AsDateTime>=strtodate(datafine) then
dayend:=endmonth;
if qry1.FieldByName('DATASTARTRENT').AsDateTime=strtodate(datafine) then
dayend:=dayend+1;
for i:=dayini to dayend do
mese[i]:=false;
qry1.Next;
end;
for i:=1 to 31 do
result[i]:=mese[i];
qry1.Free;
end;

procedure TAvailableItem.Edit1KeyPress(Sender: TObject; var Key: Char);
var artno:integer;
begin

 if ord(key) = 10 then
 begin
 (Sender as TEdit).Clear;
 exit; end;
 if not((key in ['a'..'z']+['A'..'Z']+['0'..'9']) or (ord(key)=13)or (ord(key)=8)) then
   key:=#0;

   if ord(Key) = 13 then
begin
  if (length((Sender as TEdit).text)=10) and (leftstr((Sender as TEdit).text,2)='01') then
    begin
     artno:=nolo.Menu.QueryEanArtToArtno(nolo.menu.TrimEanCode((Sender as TEdit).text));
    end
    else
     artno:=strtoint((Sender as TEdit).text);
DM.IBDataSetArticolo.Close;
DM.IBDataSetArticolo.SelectSQL.Clear;
DM.IBDataSetArticolo.SelectSQL.Add('SELECT *');
DM.IBDataSetArticolo.SelectSQL.Add('FROM ARTICOLO');
DM.IBDataSetArticolo.SelectSQL.Add('WHERE ART_NO = "'+ inttostr(artno) +'"');
DM.IBDataSetArticolo.Open;
if DM.IBDataSetArticolo.IsEmpty then
MessageDlg('Codice Articolo Non Presente', mtWarning,[mbOk], 0)
else
begin
edit2.Text:=DM.IBDataSetArticoloART_NO.AsString;
edit3.Text:=DM.IBDataSetArticoloBRAND.AsString;
edit4.Text:=DM.IBDataSetArticoloDESCRIZIONE.AsString;
edit5.Text:=DM.IBDataSetArticoloMISURA.AsString;
edit6.text:=DM.IBDataSetArticoloCOLORE.AsString;
//combobox3.:=DM.IBDataSetArticoloTIPO.AsString;
dbgrid1.DataSource:=DM.DSArticolo;
dbgrid1.Columns.Clear;
dbgrid1.Columns.Add;
dbgrid1.Columns[0].FieldName:='ART_NO';
dbgrid1.Columns.Add;
dbgrid1.Columns[1].FieldName:='BRAND';
dbgrid1.Columns.Add;
dbgrid1.Columns[2].FieldName:='DESCRIZIONE';
dbgrid1.Columns.Add;
dbgrid1.Columns[3].FieldName:='MISURA';
dbgrid1.Columns.Add;
dbgrid1.Columns[4].FieldName:='COLORE';
dbgrid1.Columns.Add;
dbgrid1.Columns[5].FieldName:='TIPO';  
MonthlyArtAvail:=ArtAvailabel(edit2.Text,actualmonth,actualYear);
DrawDatesInGrid(encodedate(actualyear,actualmonth,1));
label9.Caption:=LongMonthNames[actualmonth]+' '+inttostr(actualyear);
Edit1.Clear;
end;
end;

end;

procedure TAvailableItem.ComboBox1Enter(Sender: TObject);
var Year,Month,day:word;
i,a:integer;
begin
combobox1.Clear;
DecodeDate(today, Year, Month, Day);
combobox1.Items.Add(inttostr(year+1));
a:=year-2000;
for i:=0 to a do
combobox1.Items.Add(inttostr(year-i));
combobox1.ItemIndex:=1;
combobox1.SelText:=inttostr(year);
end;

procedure TAvailableItem.ComboBox2Enter(Sender: TObject);
var i:integer;
Year,Month,day:word;
begin
combobox2.Clear;
DecodeDate(today, Year, Month, Day);
for i:=1 to 12 do
combobox2.Items.Add(longmonthnames[i]);
combobox2.ItemIndex:=Month-1;
combobox2.SelText:=longmonthnames[Month-1];

end;

procedure TAvailableItem.SpeedButton1Click(Sender: TObject);
var i:integer;
begin
//smcalendar1.PrevMonth;
if edit2.Text <>'' then
begin
dec(actualmonth);
if actualmonth=0 then
begin
dec(actualyear);
actualmonth:=12;
end;
MonthlyArtAvail:=ArtAvailabel(edit2.Text,actualmonth,actualYear);
DrawDatesInGrid(encodedate(actualyear,actualmonth,1));
label9.Caption:=LongMonthNames[actualmonth]+' '+inttostr(actualyear);
end
else
messagedlg('Codice articolo non inserito!!!',Mtwarning,[MbOk],0);
end;

procedure TAvailableItem.SpeedButton2Click(Sender: TObject);
var i:integer;
begin
//smcalendar1.NextMonth;
if edit2.Text <>'' then
begin
inc(actualmonth);
if actualmonth=13 then
begin
inc(actualyear);
actualmonth:=1;
end;
MonthlyArtAvail:=ArtAvailabel(edit2.Text,actualmonth,actualyear);
DrawDatesInGrid(encodedate(actualyear,actualmonth,1));
label9.Caption:=LongMonthNames[actualmonth]+' '+inttostr(actualyear);
end
else
messagedlg('Codice articolo non inserito!!!',Mtwarning,[MbOk],0);
end;

procedure TAvailableItem.ComboBox1Select(Sender: TObject);
begin
actualyear:=strtoint(combobox1.Text);
if edit2.Text<>'' then
begin
MonthlyArtAvail:=ArtAvailabel(edit2.Text,actualmonth,actualYear);
DrawDatesInGrid(encodedate(actualyear,actualmonth,1));
label9.Caption:=LongMonthNames[actualmonth]+' '+inttostr(actualyear);
end
else
messagedlg('Codice articolo non inserito!!!',Mtwarning,[MbOk],0);

end;

procedure TAvailableItem.ComboBox2Select(Sender: TObject);
var i:integer;
begin
for i :=0 to combobox2.Items.Count do
if combobox2.Items[i]=combobox2.text then
actualmonth:=i+1;

if edit2.Text<>'' then
begin
MonthlyArtAvail:=ArtAvailabel(edit2.Text,actualmonth,actualYear);
DrawDatesInGrid(encodedate(actualyear,actualmonth,1));
label9.Caption:=LongMonthNames[actualmonth]+' '+inttostr(actualyear);
end
else
messagedlg('Codice articolo non inserito!!!',Mtwarning,[MbOk],0);
end;

procedure TAvailableItem.ComboBox3Enter(Sender: TObject);
var qry1:TIBQuery;
begin
qry1:= TIBquery.Create(nil);
qry1.Database:=DM.IBDatabase1;
qry1.SQL.Add('select Tipo from Pricelist');
qry1.Open;
combobox3.Clear;
qry1.First;
while not qry1.Eof do
begin
combobox3.Items.Add(qry1.fieldbyname('Tipo').asstring);
qry1.Next;
end;
qry1.Free;
end;

procedure TAvailableItem.ComboBox3CloseUp(Sender: TObject);
var qry1:TIBQuery;
    datasc:TDatasource;
begin
qry1:= TIBquery.Create(nil);
qry1.Database:=DM.IBDatabase1;
qry1.SQL.Add('select art_no,Brand,descrizione,misura,colore from articolo where tipo="'+combobox3.Text+'"');
qry1.Open;
datasc:= Tdatasource.Create(nil);
datasc.DataSet:=qry1;
DBGrid1.DataSource:=datasc;
end;

procedure TAvailableItem.DrawDatesInGrid(ADate: TDateTime);
const
  DayNames: array[1..7] of string = ('Lun', 'Mar', 'Mer', 'Gio', 'Ven', 'Sab', 'Dom');
var
  i, noofdays, d, rowno, colno, rowcount: integer;
  firstday: TDateTime;
begin
for i:=1 to 6 do
begin
for d:=0 to 6 do
Stringgrid1.Cells[d,i]:='';
end;
  for I := 1 to 7 do
  StringGrid1.Cells[i-1, 0] := DayNames[i];
  colno := DayOfTheWeek(ADate)-1;
  //rowcount := WeekOfTheMonth(ADate);
  noofdays := DaysInMonth(ADate);
  rowcount:=noofdays div 7 + 1 ;

  d := 0;
  rowno := 1;
  while rowno <= rowcount+1 do
  begin
    while colno < 7 do
    begin
      Inc(d);
      StringGrid1.Cells[colno, rowno] := IntToStr(d);
      inc(colno);
      if d = noofdays then
        Exit;
    end;
    colno := 0;
    inc(rowno);
  end;
end;



procedure TAvailableItem.StringGrid1DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
 var
 noday, gginmese,indice:integer;
S: string;
  SavedAlign: word;
begin
    indice:=ARow*7+Acol;
    S := StringGrid1.Cells[ACol, ARow]; // cell contents
    SavedAlign := SetTextAlign(StringGrid1.Canvas.Handle, TA_CENTER);
    noday:=DayOfTheWeek(encodedate(actualyear,actualmonth,1))-1;
    gginmese := DaysInMonth(encodedate(actualyear,actualmonth,1));
    if Arow=0 then
      begin
      Stringgrid1.Canvas.Brush.Color:=clBtnFace;
      Stringgrid1.Canvas.Font.Style:=[fsbold];
      end
       else
     begin
      Stringgrid1.Canvas.Brush.Color:=clWhite;
      Stringgrid1.Canvas.Font.Style:=[];
     end;


if (indice>((noday)+6)) and (indice<(gginmese+6+noday)+1) then
  begin
     if MonthlyArtAvail[indice-(noday+6)]=true then
      stringgrid1.Canvas.Brush.Color:=Cllime
      else
      stringgrid1.Canvas.Brush.Color:=Clred;

   if ((indice-(noday+6)+2)<=gginmese) and ((MonthlyArtAvail[indice-(noday+6)]=true) and  ((MonthlyArtAvail[(indice-(noday+6))+2]=false) or (MonthlyArtAvail[(indice-(noday+6))+1]=false))) then
          stringgrid1.Canvas.Brush.Color:=$004080FF;
  //end;
 if (MonthlyArtAvail[indice-(noday+6)]=true) and   ((MonthlyArtAvail[(indice-(noday+6))-2]=false) or (MonthlyArtAvail[(indice-(noday+6))-1]=false)) then
  stringgrid1.Canvas.Brush.Color:=$004080FF;
         end ;




   stringgrid1.Canvas.FillRect(Rect);  //paint the backgorund red


      //draw the original text
      StringGrid1.Canvas.TextRect(Rect,Rect.Left + (Rect.Right - Rect.Left) div 2, Rect.Top + ((Rect.Bottom - Rect.top) div 2)-5, S);
    //  stringgrid1.Canvas.TextRect(Rect, Rect.Left, Rect.Top, stringgrid1.Cells[ACol, ARow]);
     SetTextAlign(StringGrid1.Canvas.Handle, SavedAlign);

      //draw focused rectangle if the current cell is selected by user
      if gdFocused in State then
         stringgrid1.Canvas.DrawFocusRect(Rect);

    end;
procedure TAvailableItem.DBGrid1DblClick(Sender: TObject);
begin
if dbgrid1.DataSource.DataSet.RecordCount>0 then
begin
edit2.Text:=dbgrid1.DataSource.DataSet.Fields.Fields[0].AsString;
edit3.Text:=dbgrid1.DataSource.DataSet.Fields.Fields[1].AsString;
edit4.Text:=dbgrid1.DataSource.DataSet.Fields.Fields[2].AsString;
edit5.Text:=dbgrid1.DataSource.DataSet.Fields.Fields[3].AsString;
edit6.Text:=dbgrid1.DataSource.DataSet.Fields.Fields[4].AsString;
MonthlyArtAvail:=ArtAvailabel(edit2.Text,actualmonth,actualYear);
DrawDatesInGrid(encodedate(actualyear,actualmonth,1));
label9.Caption:=LongMonthNames[actualmonth]+' '+inttostr(actualyear);
end
else
messagedlg('Sparare un Codice o selezionare una tipologia',Mtwarning,[MbOk],0);
end;

procedure TAvailableItem.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin

if dbgrid1.DataSource.DataSet.RecordCount>0 then
begin
edit2.Text:=dbgrid1.DataSource.DataSet.Fields.Fields[0].AsString;
edit3.Text:=dbgrid1.DataSource.DataSet.Fields.Fields[1].AsString;
edit4.Text:=dbgrid1.DataSource.DataSet.Fields.Fields[2].AsString;
edit5.Text:=dbgrid1.DataSource.DataSet.Fields.Fields[3].AsString;
edit6.Text:=dbgrid1.DataSource.DataSet.Fields.Fields[4].AsString;
MonthlyArtAvail:=ArtAvailabel(edit2.Text,actualmonth,actualYear);
DrawDatesInGrid(encodedate(actualyear,actualmonth,1));
label9.Caption:=LongMonthNames[actualmonth]+' '+inttostr(actualyear);
end
else
messagedlg('Sparare un Codice o selezionare una tipologia',Mtwarning,[MbOk],0);

end;

procedure TAvailableItem.DBGrid1TitleClick(Column: TColumn);
var qry1:TIBQuery;
    datasc:TDatasource;
begin
qry1:= TIBquery.Create(nil);
qry1.Database:=DM.IBDatabase1;
qry1.SQL.Add('select art_no,Brand,descrizione,misura,colore from articolo where tipo="'+combobox3.Text+'"');
qry1.SQL.Add('ORDER BY '+DBGrid1.SelectedField.FieldName);
qry1.Open;
datasc:= Tdatasource.Create(nil);
datasc.DataSet:=qry1;
DBGrid1.DataSource:=datasc;
end;

procedure TAvailableItem.FormShow(Sender: TObject);
var
  _Input: TInput;
begin
if edit1.Text<>'' then
begin
Edit1.SetFocus;
  _Input.Itype := INPUT_KEYBOARD;
  _Input.ki.wVk := VK_RETURN;
  _Input.ki.wScan := 0;
  _Input.ki.dwFlags := 0;
  _Input.ki.time := 0;
  _Input.ki.dwExtraInfo := 0;
  SendInput(1, _Input, SizeOf(_Input)) ;

  _Input.ki.dwFlags := KEYEVENTF_KEYUP;
  SendInput(1, _Input, SizeOf(_Input));
end;
end;

end.
