unit ZFact;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, math, nolo,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, DBCtrls, ExtCtrls, Mask, DB, IBQuery, StrUtils;

type
    TCalcZFact = class(TForm)
    Label1: TLabel;
    BitBtn1: TBitBtn;
    Label13: TLabel;
    DBEdit6: TDBEdit;
    Label14: TLabel;
    DBEdit7: TDBEdit;
    Bevel1: TBevel;
    Bevel2: TBevel;
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CalcZfactNO;
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    function  CalcZToData(weight,height, age, sex,level,sole:string):TStringList;
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public

    { Public declarations }
  end;

var
  CalcZFact: TCalcZFact;
 
implementation

uses Softhire;
{$R *.dfm}

procedure TCalcZFact.BitBtn1Click(Sender: TObject);
begin
DM.IBDataSetRented.DisableControls;
DM.IBDataSetRented.First;
while not DM.IBDataSetRented.Eof do
begin
 if (DM.IBDataSetRentedZFACTOR.IsNull) or (DM.IBDataSetRentedZFACTOR.AsString='0') then
   begin
   if MessageDlg('ALCUNI FATTORI DI SGANCIO NON SONO IMPOSTATI USCIRE?', mtWarning, [mbYes, mbNo], 0) = mrYes then
   begin
   DM.IBDataSetRented.EnableControls;
   CalcZFact.close;
   exit;
   end
   else
   begin
   DM.IBDataSetRented.EnableControls;
   exit;
   end;
   end;
  DM.IBDataSetRented.Next;
end;
DM.IBDataSetRented.EnableControls;
CalcZFact.close;
end;

procedure TCalcZFact.FormShow(Sender: TObject);
begin
DM.IBDataSetRented.BeforeInsert:=DM.IBDataSetRentedBeforeInsertCalcZfact;
DM.IBDataSetRented.AfterPost:=nil;
DM.IBDataSetRented.BeforePost:=dm.ibdatasetrentedBeforePostCalcZ;
end;

procedure TCalcZFact.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if DM.IBDataSetRented.State in [dsEdit,dsInsert] then
DM.IBDataSetRented.post;
DM.IBDataSetRented.BeforeInsert:=DM.IBDataSetRentedBeforeInsert;
DM.IBDataSetRented.AfterPost:=DM.IBDataSetRentedAfterPost;
DM.IBDataSetRented.BeforePost:=nil;
DM.IBDataSetRented.Close;
DM.IBDataSetRented.Close;
DM.IBDataSetRented.SelectSQL.Clear;
DM.IBDataSetRented.SelectSQL.Add(' SELECT RENTEDART.*, ARTICOLO.* FROM RENTEDART JOIN ARTICOLO ON ARTICOLO.ART_NO = RENTEDART.ART_NO');
DM.IBDataSetRented.SelectSQL.Add('WHERE RENTEDART.SCHED_NO = :SCHEDNO ORDER BY ARTICOLO.TIPO');
 DM.IBDataSetRented.Prepare;
 DM.IBDataSetRented.Params.ByName('SCHEDNO').AsInteger:=DM.IBDataSetScheduleSCHED_NO.AsInteger;
 DM.IBDataSetRented.open;
 end;

procedure TCalcZFact.CalcZfactNo;
var fieldno,CalcNO:integer;
    eta,peso,altezza,suola1:string;
    suola:string;
begin
if dm.IBDataSetRentedETA.IsNull then
begin
MessageDlg('IMPOSTARE PARAMETRO ETA!',mtInformation,[mbOk], 0);
Exit;
end;
if dm.IBDataSetRentedPESO.IsNull then
begin
MessageDlg('IMPOSTARE PARAMETRO PESO!',mtInformation,[mbOk], 0);
Exit;
end;
if dm.IBDataSetRentedALTEZZA.IsNull then
begin
MessageDlg('IMPOSTARE PARAMETRO ALTEZZA!',mtInformation,[mbOk], 0);
Exit;
end;
if dm.IBDataSetRentedLIVELLO.IsNull then
begin
MessageDlg('IMPOSTARE PARAMETRO LIVELLO!',mtInformation,[mbOk], 0);
Exit;
end;
if dm.IBDataSetRentedCMSUOLA.IsNull then
begin
MessageDlg('IMPOSTARE PARAMETRO CMSUOLA!',mtInformation,[mbOk], 0);
Exit;
end;
if dM.IBDataSetRentedETA.AsInteger < 10 then
eta:='<10';
if (dM.IBDataSetRentedETA.AsInteger > 9) and (dM.IBDataSetRentedETA.AsInteger < 50) then
eta:='10-49';
if dM.IBDataSetRentedETA.AsInteger > 49 then
eta:='>49';
if (dM.IBDataSetRentedPeso.AsInteger > 9) and (dM.IBDataSetRentedPeso.AsInteger < 14) then
peso:='10-13';
if (dM.IBDataSetRentedPeso.AsInteger > 13) and (dM.IBDataSetRentedPeso.AsInteger < 18) then
peso:='14-17';
if (dM.IBDataSetRentedPeso.AsInteger > 17) and (dM.IBDataSetRentedPeso.AsInteger < 22) then
peso:='18-21';
if (dM.IBDataSetRentedPeso.AsInteger > 21) and (dM.IBDataSetRentedPeso.AsInteger < 26) then
peso:='22-25';
if (dM.IBDataSetRentedPeso.AsInteger > 25) and (dM.IBDataSetRentedPeso.AsInteger < 31) then
peso:='26-30';
if (dM.IBDataSetRentedPeso.AsInteger > 30) and (dM.IBDataSetRentedPeso.AsInteger < 36) then
peso:='31-35';
if (dM.IBDataSetRentedPeso.AsInteger > 35) and (dM.IBDataSetRentedPeso.AsInteger < 42) then
peso:='36-41';
if (dM.IBDataSetRentedPeso.AsInteger > 41) and (dM.IBDataSetRentedPeso.AsInteger < 49) then
peso:='42-48';
if (dM.IBDataSetRentedPeso.AsInteger > 48) and (dM.IBDataSetRentedPeso.AsInteger < 58) then
peso:='49-57';
if (dM.IBDataSetRentedPeso.AsInteger > 57) and (dM.IBDataSetRentedPeso.AsInteger < 67) then
peso:='58-66';
if (dM.IBDataSetRentedPeso.AsInteger > 66) and (dM.IBDataSetRentedPeso.AsInteger < 79) then
peso:='67-78';
if (dM.IBDataSetRentedPeso.AsInteger > 78) and (dM.IBDataSetRentedPeso.AsInteger < 95) then
peso:='79-94';
if (dM.IBDataSetRentedPeso.AsInteger > 94) then
peso:='>95';
if dM.IBDataSetRentedAltezza.AsInteger < 149 then
altezza:='<=148';
if (dM.IBDataSetRentedAltezza.AsInteger > 148) and (dM.IBDataSetRentedAltezza.AsInteger < 158) then
altezza:='149-157';
if (dM.IBDataSetRentedAltezza.AsInteger > 157) and (dM.IBDataSetRentedAltezza.AsInteger < 167) then
altezza:='158-166';
if (dM.IBDataSetRentedAltezza.AsInteger > 166) and (dM.IBDataSetRentedAltezza.AsInteger < 179) then
altezza:='167-178';
if (dM.IBDataSetRentedAltezza.AsInteger > 178) and (dM.IBDataSetRentedAltezza.AsInteger < 195) then
altezza:='179-194';
if (dM.IBDataSetRentedAltezza.AsInteger > 194) then
altezza:='>=195';
if (dM.IBDataSetRentedCMSUOLA.AsInteger < 251) then
suola1:='S250';
if (dM.IBDataSetRentedCMSUOLA.AsInteger > 250) and (dM.IBDataSetRentedCMSUOLA.AsInteger < 271) then
suola1:='S251_270';
if (dM.IBDataSetRentedCMSUOLA.AsInteger > 270) and (dM.IBDataSetRentedCMSUOLA.AsInteger < 291) then
suola1:='S271_290';
if (dM.IBDataSetRentedCMSUOLA.AsInteger > 290) and (dM.IBDataSetRentedCMSUOLA.AsInteger < 311) then
suola1:='S291_310';
if (dM.IBDataSetRentedCMSUOLA.AsInteger > 310) and (dM.IBDataSetRentedCMSUOLA.AsInteger < 331) then
suola1:='S311_330';
if (dM.IBDataSetRentedCMSUOLA.AsInteger > 330) then
suola1:='S331';

DM.IBQueryZFact.Close;
DM.IBQueryZFact.SQL.Clear;
DM.IBQueryZFact.SQL.Add('SELECT * FROM CALCZFACT WHERE PESO="'+peso+'"');
DM.IBQueryZFact.Open;
CalcNo:=DM.IBQueryZFact.Fields.Fields[0].AsInteger;
if DM.IBQueryZFact.Fields.Fields[2].AsString <> altezza then
CalcNo:=CalcNo-1;
if DM.IBDataSetRentedLIVELLO.AsString='BASE' Then
CalcNo:=CalcNo;
if DM.IBDataSetRentedLIVELLO.AsString='MEDIO' Then
CalcNo:=CalcNo+1;
if DM.IBDataSetRentedLIVELLO.AsString='AVANZATO' Then
CalcNo:=CalcNo+2;
if eta='<10' then
CalcNo:=CalcNo-1;
if eta='10-49' then
CalcNo:=CalcNo;
if eta='>49' then
CalcNo:=CalcNo-1;
if suola1='S250' then
fieldno:=4;
if suola1='S251_270' then
fieldno:=5;
if suola1='S271_290' then
fieldno:=6;
if suola1='S291_310' then
fieldno:=7;
if suola1='S311_330' then
fieldno:=8;
if suola1='S331' then
fieldno:=9;
DM.IBQueryZFact.Close;
DM.IBQueryZFact.SQL.Clear;
DM.IBQueryZFact.SQL.Add('SELECT '+suola1+',CODICE FROM CALCZFACT WHERE CALCZFACT_NO="'+inttostr(CalcNo)+'"');
DM.IBQueryZFact.Open;
if DM.IBQueryZFact.Fields.Fields[0].AsString<>'0' then
begin
DM.IBDataSetRentedZFACTOR.AsString:=DM.IBQueryZFact.Fields.Fields[0].AsString;
DM.IBDataSetRentedCODICE.AsString:=DM.IBQueryZFact.Fields.Fields[1].AsString;
end
else
begin
fieldno:=fieldno+1;
if fieldno=4 then
suola:='S250';
if fieldno=5 then
suola:='S251_270';
if fieldno=6 then
suola:='S271_290';
if fieldno=7 then
suola:='S291_310';
if fieldno=8 then
suola:='S311_330';
if fieldno=9 then
suola:='S331';
DM.IBQueryZFact.Close;
DM.IBQueryZFact.SQL.Clear;
DM.IBQueryZFact.SQL.Add('SELECT '+SUOLA+',CODICE FROM CALCZFACT WHERE CALCZFACT_NO="'+inttostr(CalcNo)+'"');
DM.IBQueryZFact.Open;
DM.IBDataSetRentedZFACTOR.AsString:=DM.IBQueryZFact.Fields.Fields[0].AsString;
DM.IBDataSetRentedCODICE.AsString:=DM.IBQueryZFact.Fields.Fields[1].AsString;
end;
end;

function TCalcZFact.CalcZToData(weight,height,age,sex,level,sole:string):Tstringlist;
var fieldno,CalcNO:integer;
    eta1,peso1,altezza1,livello1,sesso1,suola1,mm1:integer;
    eta,peso,altezza,livello,sesso,suola,mm:string;
    sole1:string;
    risultato:TStringlist;
begin
risultato:=TStringList.Create;
if (weight='') or (height='') or (age='') or (sex='')or (level='')or (sole='')then
begin
MessageDlg('Uno o Più Parametri Incogruenti, IMPOSSIBILE calcolare Z Factor!',mtInformation,[mbOk], 0);
Risultato.Destroy;
Exit;
end;
Peso1:=strtoint(weight);
Altezza1:=strtoint(height);
Eta1:=strtoint(age);
//Sesso1:=Sex;
//Livello1:=Level;
mm1:=strtoint(sole);
if ETA1 < 10 then
eta:='<10';
if (ETA1 > 9) and (ETA1 < 50) then
eta:='10-49';
if ETA1 > 49 then
eta:='>49';
if (Peso1 > 9) and (Peso1 < 14) then
peso:='10-13';
if (Peso1 > 13) and (Peso1 < 18) then
peso:='14-17';
if (Peso1 > 17) and (Peso1 < 22) then
peso:='18-21';
if (Peso1 > 21) and (Peso1 < 26) then
peso:='22-25';
if (Peso1 > 25) and (Peso1 < 31) then
peso:='26-30';
if (Peso1 > 30) and (Peso1 < 36) then
peso:='31-35';
if (Peso1 > 35) and (Peso1 < 42) then
peso:='36-41';
if (Peso1 > 41) and (Peso1 < 49) then
peso:='42-48';
if (Peso1 > 48) and (Peso1 < 58) then
peso:='49-57';
if (Peso1 > 57) and (Peso1 < 67) then
peso:='58-66';
if (Peso1 > 66) and (Peso1 < 79) then
peso:='67-78';
if (Peso1 > 78) and (Peso1 < 95) then
peso:='79-94';
if (Peso1 > 94) then
peso:='>95';
if Altezza1 < 149 then
altezza:='<=148';
if (Altezza1 > 148) and (Altezza1 < 158) then
altezza:='149-157';
if (Altezza1 > 157) and (Altezza1 < 167) then
altezza:='158-166';
if (Altezza1 > 166) and (Altezza1 < 179) then
altezza:='167-178';
if (Altezza1 > 178) and (Altezza1 < 195) then
altezza:='179-194';
if (Altezza1 > 194) then
altezza:='>=195';
if (mm1 < 251) then
sole:='S250';
if (mm1 > 250) and (mm1 < 271) then
sole:='S251_270';
if (mm1 > 270) and (mm1 < 291) then
sole:='S271_290';
if (mm1 > 290) and (mm1 < 311) then
sole:='S291_310';
if (mm1 > 310) and (mm1 < 331) then
sole:='S311_330';
if (mm1 > 330) then
sole:='S331';

DM.IBQueryZFact.Close;
DM.IBQueryZFact.SQL.Clear;
DM.IBQueryZFact.SQL.Add('SELECT * FROM CALCZFACT WHERE PESO="'+peso+'"');
DM.IBQueryZFact.Open;
CalcNo:=DM.IBQueryZFact.Fields.Fields[0].AsInteger;
if DM.IBQueryZFact.Fields.Fields[2].AsString <> altezza then
CalcNo:=CalcNo-1;
if level='BASE' Then
CalcNo:=CalcNo;
if level='MEDIO' Then
CalcNo:=CalcNo+1;
if level='AVANZATO' Then
CalcNo:=CalcNo+2;
if eta='<10' then
CalcNo:=CalcNo-1;
if eta='10-49' then
CalcNo:=CalcNo;
if eta='>49' then
CalcNo:=CalcNo-1;
if sole='S250' then
fieldno:=4;
if sole='S251_270' then
fieldno:=5;
if sole='S271_290' then
fieldno:=6;
if sole='S291_310' then
fieldno:=7;
if sole='S311_330' then
fieldno:=8;
if sole='S331' then
fieldno:=9;
DM.IBQueryZFact.Close;
DM.IBQueryZFact.SQL.Clear;
DM.IBQueryZFact.SQL.Add('SELECT '+sole+',CODICE FROM CALCZFACT WHERE CALCZFACT_NO="'+inttostr(CalcNo)+'"');
DM.IBQueryZFact.Open;
if (DM.IBQueryZFact.Fields.Fields[0].AsString<>'0') and (not DM.IBQueryZFact.IsEmpty)   then
begin
risultato.clear;;
Risultato.add(DM.IBQueryZFact.Fields.Fields[0].AsString);
Risultato.Append(DM.IBQueryZFact.Fields.Fields[1].AsString);
result:=risultato;
end
else
begin
fieldno:=fieldno+1;
if fieldno=4 then
sole1:='S250';
if fieldno=5 then
sole1:='S251_270';
if fieldno=6 then
sole1:='S271_290';
if fieldno=7 then
sole1:='S291_310';
if fieldno=8 then
sole1:='S311_330';
if fieldno=9 then
sole1:='S331';
DM.IBQueryZFact.Close;
DM.IBQueryZFact.SQL.Clear;
DM.IBQueryZFact.SQL.Add('SELECT '+sole1+',CODICE FROM CALCZFACT WHERE CALCZFACT_NO="'+inttostr(CalcNo)+'"');
DM.IBQueryZFact.Open;
if (DM.IBQueryZFact.Fields.Fields[0].AsString<>'0') and (not DM.IBQueryZFact.IsEmpty) then
begin
risultato.Clear;
risultato.Add(DM.IBQueryZFact.Fields.Fields[0].AsString);
risultato.Append(DM.IBQueryZFact.Fields.Fields[1].AsString);
result:=risultato;
end;
//risultato.Destroy;
end;
end;







procedure TCalcZFact.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if AnsiMatchStr(DBGrid1.SelectedField.FieldName,['ETA','PESO','ALTEZZA','CMSUOLA'])  then
 begin
  if not((key in ['0'..'9']) or (key = chr(8))) then
  key:=#0;
 end;

if AnsiMatchstr(DBGrid1.SelectedField.FieldName,['SESSO'])  then
 begin
  if not((key = 'M') or (key = 'F')) then
  key:=#0;
 end;

if AnsiMatchstr(DBGrid1.SelectedField.FieldName,['LIVELLO'])  then
 begin
  if not (( key in ['a'..'z'] + ['A'..'Z'] ) or (key = chr(8)) ) then
  key:=#0
  else
  key:=upcase(key);
 end;




 end;

procedure TCalcZFact.DBGrid1CellClick(Column: TColumn);
begin
  if Column.PickList.Count > 0 then
  begin
    keybd_event(VK_F2,0,0,0);
    keybd_event(VK_F2,0,KEYEVENTF_KEYUP,0);
    keybd_event(VK_MENU,0,0,0);
    keybd_event(VK_DOWN,0,0,0);
    keybd_event(VK_DOWN,0,KEYEVENTF_KEYUP,0);
    keybd_event(VK_MENU,0,KEYEVENTF_KEYUP,0);
  end;
end;

function centreleft(fw:integer):integer;
  {calculates the form.left}
var
  smcx:integer;
begin
  smcx:=GetSystemMetrics(SM_CXSCREEN);
  centreleft:=(smcx-fw) div 2;
end;

function centretop(fh:integer):integer;
  {calculates the form.top}
var
  smcy:integer;
begin
  smcy:=GetSystemMetrics(SM_CYSCREEN);
  centretop:=(smcy-fh) div 2;
end;

procedure TCalcZFact.FormCreate(Sender: TObject);
var
  scrx,scry, k:integer ;
  ratio:double;
 begin
//  scrx:= GetSystemMetrics(SM_CXSCREEN); {finds screen resolution x value}
//  scry:= (GetSystemMetrics(SM_CYSCREEN)); {finds screen resolution y value}

//  ratio:=min(scrx/nolo.screenx,scry/nolo.screeny);
  {takes the smaller ratio and makes sure you dont make the window
  too big for the screen}

//  scaleby(trunc(ratio*100),100);
  {scales all controls and attempts to place them in the correct position}

  {to centre the form on the screen}
// (Sender as TForm).Left:=centreleft((Sender as TForm).width);
//  (Sender as TForm).Top:=centretop((Sender as TForm).Height) ;
end;

end.
