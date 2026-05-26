unit Riparazione;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, math,
  Dialogs, StdCtrls, DBCtrls, Buttons, ExtCtrls, Mask, Grids, DBGrids,
  StrUtils, DB, IBQuery, DateUtils, Printers,QuickRpt;

type
  TRipmodule = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label18: TLabel;
    DBEdit18: TDBEdit;
    Label20: TLabel;
    DBEdit19: TDBEdit;
    Label21: TLabel;
    DBEdit20: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    DBLookupComboBox3: TDBLookupComboBox;
    SpeedButton4: TSpeedButton;
    GroupBox2: TGroupBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    Label22: TLabel;
    Label19: TLabel;
    DBEdit21: TDBEdit;
    Label23: TLabel;
    DBEdit22: TDBEdit;
    DBCheckBox8: TDBCheckBox;
    DBRadioGroup2: TDBRadioGroup;
    GroupBox3: TGroupBox;
    BitBtn11: TBitBtn;
    BitBtn19: TBitBtn;
    BitBtn20: TBitBtn;
    BitBtn21: TBitBtn;
    BitBtn30: TBitBtn;
    DBGrid1: TDBGrid;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    DBCheckBox10: TDBCheckBox;
    BitBtn26: TBitBtn;
    BitBtn33: TBitBtn;
    BitBtn1: TBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    Label8: TLabel;
    Label12: TLabel;
    GroupBox4: TGroupBox;
    BitBtn2: TBitBtn;
    Edit3: TEdit;
    SpeedButton1: TSpeedButton;
    Edit4: TEdit;
    SpeedButton2: TSpeedButton;
    Label13: TLabel;
    Label14: TLabel;
    Edit5: TEdit;
    Label15: TLabel;
    Edit6: TEdit;
    Label16: TLabel;
    DBCheckBox9: TDBCheckBox;
    GroupBox5: TGroupBox;
    DBRadioGroup3: TDBRadioGroup;
    DBEdit8: TDBEdit;
    DBEdit11: TDBEdit;
    Label17: TLabel;
    Label24: TLabel;
    DBEdit12: TDBEdit;
    Label25: TLabel;
    BitBtn3: TBitBtn;
    Preview3: TCheckBox;
    Preview4: TCheckBox;
    Preview5: TCheckBox;
    DBText1: TDBText;
    DBMemo1: TDBMemo;
    DBEdit13: TDBEdit;
    Label26: TLabel;
    GroupBox6: TGroupBox;
    Label27: TLabel;
    DBMemo2: TDBMemo;
    Panel1: TPanel;
    Panel2: TPanel;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox15: TDBCheckBox;
    DBCheckBox16: TDBCheckBox;
    DBCheckBox17: TDBCheckBox;
    DBCheckBox19: TDBCheckBox;
    CheckBox1: TCheckBox;
    DBCheckBox14: TDBCheckBox;
    DBCheckBox18: TDBCheckBox;
    DBCheckBox21: TDBCheckBox;
    DBCheckBox22: TDBCheckBox;
    CheckBox2: TCheckBox;
    DBCK1: TDBCheckBox;
    GroupBox7: TGroupBox;
    DBEdit14: TDBEdit;
    Label28: TLabel;
    DBCheckBox11: TDBCheckBox;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn19Click(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure BitBtn21Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure DBEdit21KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn26Click(Sender: TObject);
    procedure DBEdit18KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit22KeyPress(Sender: TObject; var Key: Char);
    procedure DBCheckBox7MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBEdit18Exit(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure GroupBox1Enter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn33Click(Sender: TObject);
    procedure SetArticoloPronto(EANCODE: string);
    procedure BitBtn30Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Label11DblClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    Procedure SetArticoloRitirato(EANCODE: string);
    Function  IsNumeric(s:string):boolean;
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5Exit(Sender: TObject);
    procedure Edit6Exit(Sender: TObject);
    procedure DBCheckBox9Click(Sender: TObject);
    procedure DBEdit8KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit11KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
    procedure Label6DblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBLookupComboBox3KeyPress(Sender: TObject; var Key: Char);
    procedure DBRadioGroup1Enter(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure DBRadioGroup2Change(Sender: TObject);
    procedure DBRadioGroup1Change(Sender: TObject);
    procedure DBCheckBox1Click(Sender: TObject);
    procedure DBCheckBox2Click(Sender: TObject);
    procedure DBCheckBox3Click(Sender: TObject);
    procedure DBCheckBox4Click(Sender: TObject);
    function GetPriceRip(param1,param2:string):string;
    procedure DBCheckBox7Click(Sender: TObject);
    procedure DBCheckBox6Click(Sender: TObject);
    procedure DBCheckBox8Click(Sender: TObject);
    procedure DBCheckBox13Click(Sender: TObject);
    procedure DBCheckBox15Click(Sender: TObject);
    procedure DBCheckBox19Click(Sender: TObject);
    procedure DBCheckBox16Click(Sender: TObject);
    procedure DBCheckBox17Click(Sender: TObject);
    procedure DBCheckBox22Click(Sender: TObject);
    procedure DBCheckBox18Click(Sender: TObject);
    procedure DBCheckBox14Click(Sender: TObject);
    procedure DBCK1Click(Sender: TObject);
    procedure DBCheckBox21Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Ripmodule: TRipmodule;
  COMPORTOPN: string;
  ripquerystring,ripprequerystring: string;


implementation

uses SoftHire, Pickdate, TestOPNUnit, repRipa, nolo, RepripList,
  RepBoarderOrd, EticRip, EtiAttSnow, Ean39codegen, GesTab,
  EtichettaRip_new, EtichettaRip_new_snow, EtichettaRip_New_Scarp;


{$R *.dfm}


procedure TRipmodule.BitBtn11Click(Sender: TObject);
begin
DM.IBDataSetRip.Post;
end;

procedure TRipmodule.BitBtn19Click(Sender: TObject);
begin
DM.IBDataSetRip.Edit;
end;

procedure TRipmodule.BitBtn20Click(Sender: TObject);
begin                                                                   
DM.IBDataSetRip.Delete;
end;

procedure TRipmodule.BitBtn21Click(Sender: TObject);
begin
DM.IBDataSetRip.Cancel
end;

procedure TRipmodule.SpeedButton4Click(Sender: TObject);
begin
BrDateForm.date:=date;
if BrDateForm.Showmodal= mrOk then
    DM.IBDataSetRipDATARITIRORICH.Value:=BrDateForm.Date;

end;

procedure TRipmodule.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  DrawState: Integer;
  DrawRect: TRect;
begin
  DBGrid1.Canvas.Brush.Color := clwhite;
  DBGrid1.Canvas.Font.Color := clBlack;
if DM.IBDataSetRipDATARITIRO.IsNull and DM.IBDataSetRipDATAREADY.IsNull then
 begin
  DBGrid1.Canvas.Brush.Color := clBlack;
  DBGrid1.Canvas.Font.Color := clred;
 end;
 if (not DM.IBDataSetRipDATAREADY.IsNull) and DM.IBDataSetRipDATARITIRO.IsNull then
 begin
  DBGrid1.Canvas.Brush.Color := clBlack;
  DBGrid1.Canvas.Font.Color := clyellow;
 end;
 if (not DM.IBDataSetRipDATARITIRO.IsNull) and (not DM.IBDataSetRipDATAREADY.IsNull) then
 begin
  DBGrid1.Canvas.Brush.Color := clBlack;
  DBGrid1.Canvas.Font.Color := clLime;
 end;

 DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column, State);
    if AnsiMatchStr(Column.Field.FieldName, ['FONDO','LAMINE','SCIOLINA','PREPGARA','RIPPARTIC','RADDRIZZATURA','CHECKATTACCHI','PELLI','URGENZA']) then
    begin
      DrawRect:=Rect;
      InflateRect(DrawRect,-1,-1);
     if Column.Field.Value= 0 then
     drawstate:=DFCS_BUTTONCHECK;
     if Column.Field.Value= 1 then
     drawstate:=DFCS_CHECKED;
     DBGrid1.Canvas.FillRect(Rect);
      DrawFrameControl(DBGrid1.Canvas.Handle, DrawRect, DFC_BUTTON, DrawState);
    end;
  end;
//end;

procedure TRipmodule.DBGrid1ColExit(Sender: TObject);
begin
if (DBGrid1.SelectedField.FieldName = 'FONDO') OR (DBGrid1.SelectedField.FieldName = 'LAMINE') then
 DBCheckBox10.Visible := False;


end;

procedure TRipmodule.DBEdit21KeyPress(Sender: TObject; var Key: Char);
begin
if not ((ord(key) = 08) or (ord(key) = 03)or (ord(key) = 27)) then
 begin
  if (not (key in ['0'..'9'])) or (length(dbedit21.EditText)>2) then
   key:=#0;
 end;

end;

procedure TRipmodule.BitBtn26Click(Sender: TObject);
begin
DM.IBDataSetRip.Insert;
end;

procedure TRipmodule.DBEdit18KeyPress(Sender: TObject; var Key: Char);
begin
if not ((ord(key) = 08) or (ord(key) = 03)or (ord(key) = 27)) then
 begin
  if (not (key in ['0'..'9']+[','])) then
   key:=#0;
 end;
end;

procedure TRipmodule.DBEdit22KeyPress(Sender: TObject; var Key: Char);
begin
if not ((ord(key) = 08) or (ord(key) = 03)or (ord(key) = 27)) then
 begin
  if (not (key in ['0'..'9'])) or (length(dbedit22.EditText)>2) then
   key:=#0;
 end;

end;

procedure TRipmodule.DBCheckBox7MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
if DBCheckbox7.Checked = true then
begin
ripmodule.DBEdit21.enabled:=true;
ripmodule.DBEdit22.enabled:=true;
end
else
begin
ripmodule.DBEdit21.enabled:=false;
ripmodule.DBEdit22.enabled:=false;
end;

end;

procedure TRipmodule.DBEdit18Exit(Sender: TObject);
begin
DBRadioGroup1.SetFocus;
end;

procedure TRipmodule.DBEdit7Exit(Sender: TObject);
begin
if ansicontainsstr(DM.IBDataSetRipTIPOPRODOTTO.AsString,'SCI') then
DBCheckBox1.SetFocus;
if ansicontainsstr(DM.IBDataSetRipTIPOPRODOTTO.AsString,'SNOWBOARD') then
DBCheckBox1.SetFocus;
if ansicontainsstr(DM.IBDataSetRipTIPOPRODOTTO.AsString,'FONDO') then
DBCheckBox1.SetFocus;
if ansicontainsstr(DM.IBDataSetRipTIPOPRODOTTO.AsString,'SCARPONI') then
CheckBox1.SetFocus;

end;

procedure TRipmodule.GroupBox1Enter(Sender: TObject);
begin
DBRAdiogroup1.SetFocus;
end;

procedure TRipmodule.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (DM.IBDataSetRip.State in [dsEdit, dsInsert]) then
begin
if messagedlg('Scheda Aperta Salvare?',mtConfirmation,mbOkCancel,0) = MrOK then
 DM.IBDataSetRip.Post
 else
 DM.IBDataSetRip.Cancel;
end;

end;

procedure TRipmodule.BitBtn33Click(Sender: TObject);
Var CodeList:Tstringlist;
    i:integer;
    begin
if OpnTest.IsConnected(strtoint(nolo.COMPORTOPN)) then
 begin
 CodeList:=TStringList.Create;
 CodeList.Assign(OpnTest.DownLoadData(strtoint(nolo.COMPORTOPN),false));
  if CodeList.Count>0 then
   begin
    if not DM.IBTransaction10.InTransaction then
     DM.IBTransaction10.StartTransaction;
     for i:=0 to CodeList.count-1 do
     begin
     if (sender as Tbutton).Name = 'BitBtn33' then
     SetArticoloPronto(Codelist[i]);
     if (sender as Tbutton).Name = 'BitBtn1' then
     SetArticoloRitirato(Codelist[i]);
     end;
     DM.IBTransaction10.Commit;
     DM.IBDataSetRip.Close;
     dm.IBDataSetRip.Open;
   if MessageDlg('Vuoi cancellare i dati nello scanner?', mtWarning,[mbyes,mbNo], 0)=mryes then
    begin
    Codelist.Destroy;
    OpnTest.DeleteOPNData;
    end;

  // dm.IBDataSetRip.SelectSQL.Clear;
  //   dm.IBDataSetRip.SelectSQL.Add('SELECT COGNRAGSOC, NOME, RIPARAZIONE.*');
  //   dm.IBDataSetRip.SelectSQL.Add('FROM RIPARAZIONE JOIN CLIENTI ON CLIENTI.CLI_NO=RIPARAZIONE.CLI_NO');
  //   dm.IBDataSetRip.SelectSQL.Add('WHERE CLI_NO="'+dm.IBDataSetClientiCLI_NO.AsString+'"');
  //   dm.IBDataSetRip.Open;

   end;
 end;
end;

Procedure TRipmodule.SetArticoloPronto(EANCODE: string);
var EANCODE1:string;
    temp:integer;
begin
 if length(EANCODE)=11 then
 begin
 EANCODE1:=leftstr(EANCODE,7);
 EANCODE1:='$'+rightstr(EANCODE1,5);   // ilo $ serve per identificare il valore esadecimale
 temp:=strtoint64(EANCODE1);
 EANCODE1:=ean39gen2(dm.IBDataSetParamPREF_RIP_NO.AsString,inttostr(temp));
 EANCODE1:=rightstr(EANCODE1,11);
 EANCODE1:=leftstr(EANCODE1,10);
 end;
 DM.IBQueryTemp.Close;
 DM.IBQueryTemp.SQL.Clear;
 DM.IBQueryTemp.SQL.Add('UPDATE RIPARAZIONE');
 DM.IBQueryTemp.SQL.Add('SET DATAREADY= "NOW" ');
 //if isnumeric(EANCODE) and (EANCODE[1]<>'0') then
 if (length(EANCODE)<11) and (isnumeric(EANCODE)) then
  DM.IBQueryTemp.SQL.Add('WHERE RIP_NO="'+EANCODE+'"')
 else
  DM.IBQueryTemp.SQL.Add('WHERE EANCODERIP = "*'+EANCODE1+'*"');
 DM.IBQueryTemp.ExecSQL;
end;

Procedure TRipmodule.SetArticoloRitirato(EANCODE: string);
var EANCODE1:string;
    temp:integer;
begin
 if length(EANCODE)=11 then
 begin
 EANCODE1:=leftstr(EANCODE,7);
 EANCODE1:='$'+rightstr(EANCODE1,5);   // ilo $ serve per identificare il valore esadecimale
 temp:=strtoint64(EANCODE1);
 EANCODE1:=ean39gen2(dm.IBDataSetParamPREF_RIP_NO.AsString,inttostr(temp));
 EANCODE1:=rightstr(EANCODE1,11);
 EANCODE1:=leftstr(EANCODE1,10);
 end;
 DM.IBQueryTemp.Close;
 DM.IBQueryTemp.SQL.Clear;
 DM.IBQueryTemp.SQL.Add('UPDATE RIPARAZIONE');
 DM.IBQueryTemp.SQL.Add('SET DATARITIRO= "NOW" ');
// if isnumeric(EANCODE) and (EANCODE[1]<>'0') then
 if (length(EANCODE)<11) and (isnumeric(EANCODE)) then
   DM.IBQueryTemp.SQL.Add('WHERE RIP_NO="'+EANCODE+'"')
 else
  DM.IBQueryTemp.SQL.Add('WHERE EANCODERIP = "*'+EANCODE1+'*"');
  DM.IBQueryTemp.ExecSQL;
end;

function FindQRChild(Parent: TComponent; const AName: string): TComponent;
var i:integer;
begin
  Result := nil;
  for i := 0 to Parent.ComponentCount - 1 do
  begin
    if SameText(Parent.Components[i].Name, AName) then
      begin
      Result:=Parent.Components[i];
      Exit;
      end;

    Result := FindQRChild(Parent.Components[i], AName);
    if Result <> nil then Exit;
  end;
end;


procedure TRipmodule.BitBtn30Click(Sender: TObject);
var Rip_no:string;
    Segnalibro:TBookmark;
    tempqr:TQuickRep;
begin
{ ******* vecchia routine della versione V3 in giu
if DM.IBDataSetRip.State in [dsEdit,dsInsert] then
DM.IBDataSetRip.Post;
Segnalibro:=DM.ibdatasetrip.GetBookmark;
Rip_no:=DM.IbdatasetRipRip_no.AsString;
DM.IBDataSetRip.Close;
dm.IBDataSetRip.SelectSQL.Clear;
dm.IBDataSetRip.SelectSQL.Add('SELECT COGNRAGSOC, NOME, RIPARAZIONE.*');
dm.IBDataSetRip.SelectSQL.Add('FROM RIPARAZIONE JOIN CLIENTI ON CLIENTI.CLI_NO=RIPARAZIONE.CLI_NO');
dm.IBDataSetRip.SelectSQL.Add('WHERE RIPARAZIONE.CLI_NO="'+dm.IBDataSetClientiCLI_NO.AsString+'" AND  RIP_NO= "'+RIP_NO+'"');
dm.IBDataSetRip.Open;
Etichetta.QuickRep1.PrinterSettings.FirstPage:=1;
Etichetta.Quickrep1.PrinterSettings.LastPage:=1;
Etichetta.QuickRep1.PrinterSettings.PrinterIndex:=Printer.Printers.IndexOf(dm.IBDataSetLocalParamETIC_PRINTER.AsString);
Etichetta.QuickRep1.PrinterSettings.Copies:=2;
if Preview3.Checked=false then
Etichetta.QuickRep1.Print
else
Etichetta.QuickRep1.Preview;
DM.IBDataSetRip.Close;
dm.IBDataSetRip.SelectSQL.Clear;
dm.IBDataSetRip.SelectSQL.Add('SELECT COGNRAGSOC, NOME, RIPARAZIONE.*');
dm.IBDataSetRip.SelectSQL.Add('FROM RIPARAZIONE JOIN CLIENTI ON CLIENTI.CLI_NO=RIPARAZIONE.CLI_NO');
dm.IBDataSetRip.SelectSQL.Add('WHERE CLI_NO="'+dm.IBDataSetClientiCLI_NO.AsString+'"');
dm.IBDataSetRip.Open;
DM.IBDataSetRip.GotoBookmark(Segnalibro);
******* vecchia routine della versione V3 in giu }

// ****** NUOVA ROUTINE
if DM.IBDataSetRip.State in [dsEdit,dsInsert] then
DM.IBDataSetRip.Post;
Segnalibro:=DM.ibdatasetrip.GetBookmark;
Rip_no:=DM.IbdatasetRipRip_no.AsString;
DM.IBDataSetRip.Close;
dm.IBDataSetRip.SelectSQL.Clear;
dm.IBDataSetRip.SelectSQL.Add('SELECT COGNRAGSOC, NOME, RIPARAZIONE.*');
dm.IBDataSetRip.SelectSQL.Add('FROM RIPARAZIONE JOIN CLIENTI ON CLIENTI.CLI_NO=RIPARAZIONE.CLI_NO');
dm.IBDataSetRip.SelectSQL.Add('WHERE RIPARAZIONE.CLI_NO="'+dm.IBDataSetClientiCLI_NO.AsString+'" AND  RIP_NO= "'+RIP_NO+'"');
dm.IBDataSetRip.Open;
if DM.IBDataSetRipTIPOPRODOTTO.AsString = 'SNOWBOARD' then
tempqr:=Etichette_new_snow.Quickrep1;
if DM.IBDataSetRipTIPOPRODOTTO.AsString ='SCI' then
tempqr:=Etichetta_new.Quickrep1;
if DM.IBDataSetRipTIPOPRODOTTO.AsString ='FONDO' then
tempqr:=Etichetta_new.Quickrep1;
if DM.IBDataSetRipTIPOPRODOTTO.AsString = 'SCARPONI' then
tempqr:=Etichetta_new_Scarp.Quickrep1;


tempqr.PrinterSettings.FirstPage:=1;
tempqr.PrinterSettings.LastPage:=1;
tempqr.PrinterSettings.PrinterIndex:=Printer.Printers.IndexOf(dm.IBDataSetLocalParamETIC_PRINTER.AsString);
tempqr.PrinterSettings.Copies:=2;
if Preview3.Checked=false then
tempqr.Print
else
tempqr.Preview;
DM.IBDataSetRip.Close;
dm.IBDataSetRip.SelectSQL.Clear;
dm.IBDataSetRip.SelectSQL.Add('SELECT COGNRAGSOC, NOME, RIPARAZIONE.*');
dm.IBDataSetRip.SelectSQL.Add('FROM RIPARAZIONE JOIN CLIENTI ON CLIENTI.CLI_NO=RIPARAZIONE.CLI_NO');
dm.IBDataSetRip.SelectSQL.Add('WHERE CLI_NO="'+dm.IBDataSetClientiCLI_NO.AsString+'"');
dm.IBDataSetRip.Open;
DM.IBDataSetRip.GotoBookmark(Segnalibro);

end;

procedure TRipmodule.FormShow(Sender: TObject);
begin
ripquerystring:='';
DM.IBDataSetRip.Close;
dm.IBDataSetRip.SelectSQL.Clear;
dm.IBDataSetRip.SelectSQL.Add('SELECT COGNRAGSOC, NOME, RIPARAZIONE.*');
dm.IBDataSetRip.SelectSQL.Add('FROM RIPARAZIONE JOIN CLIENTI ON CLIENTI.CLI_NO=RIPARAZIONE.CLI_NO');
dm.IBDataSetRip.SelectSQL.Add('WHERE CLI_NO="'+dm.IBDataSetClientiCLI_NO.AsString+'"');
dm.IBDataSetRip.SelectSQL.Add('ORDER BY RIP_NO');
dm.IBDataSetRip.Open;
dm.IBDataSetRip.Last;
end;

procedure TRipmodule.Label11DblClick(Sender: TObject);
begin
DM.IBDataSetRipDATAREADY.Clear;
end;

procedure TRipmodule.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if  (key=#13) and (length(Edit1.Text)>0) then
  begin
  if not DM.IBTransaction10.InTransaction then
  DM.IBTransaction10.StartTransaction;
  SetArticoloPronto(Edit1.Text);
  DM.IBTransaction10.Commit;
  DM.IBDataSetRip.Close;
  DM.IBDataSetRip.Open;
  Edit1.Clear;
  end;
end;

procedure TRipmodule.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if (key=#13) and (length(Edit2.Text)>0) then
  begin
  if not DM.IBTransaction10.InTransaction then
  DM.IBTransaction10.StartTransaction;
  SetArticoloRitirato(Edit2.Text);
  DM.IBTransaction10.Commit;
  DM.IBDataSetRip.Close;
  DM.IBDataSetRip.Open;
  Edit2.Clear;
  end;
 end;

Function TRipmodule.IsNumeric(s:string):boolean;
var i:integer;
begin
 Result := True;
  for i := 1 to Length(s) do
  begin
    if not(s[i] in ['0'..'9']) then
    begin
      Result := False;
      Break;
    end;
  end;
end;




procedure TRipmodule.BitBtn2Click(Sender: TObject);
begin
if ((Edit3.Text<>'') and (edit4.text<>''))  then
begin
RipBrdord.IBQuery1.Close;
RipBrdord.IBQuery1.SQL.Clear;
RipBrdord.IBQuery1.SQL.Add('SELECT COGNRAGSOC, NOME, RIPARAZIONE.*');
RipBrdord.IBQuery1.SQL.Add('FROM RIPARAZIONE JOIN CLIENTI ON CLIENTI.CLI_NO=RIPARAZIONE.CLI_NO');
RipBrdord.IBQuery1.SQL.Add('WHERE DATARITIRORICH BETWEEN "'+ nolo.Menu.DecForSqlDate(strtodate(edit3.Text)) +'" AND "'+ nolo.menu.DecForSqlDate(strtodate(edit4.Text)) +'"');
RipBrdord.IBQuery1.SQL.Add('ORDER BY RIPARAZIONE.DATARITIRORICH DESC');
RipBrdord.IBQuery1.Open;
RipBrdord.QuickRep1.PrinterSettings.FirstPage:=1;
RipBrdord.Quickrep1.PrinterSettings.LastPage:=1;
RipBrdord.QuickRep1.PrinterSettings.PrinterIndex:=Printer.Printers.IndexOf(dm.IBDataSetParamPRINTER_FORM.AsString);
RipBrdord.QuickRep1.PrinterSettings.Copies:=1;
if Preview5.Checked=false then
RipBrdord.QuickRep1.Print
else
RipBrdord.QuickRep1.Preview;
end
else
showmessage('I campi DAL e AL devono avere un valore');

end;


procedure TRipmodule.SpeedButton1Click(Sender: TObject);
begin
BrDateForm.date:=date;
if BrDateForm.Showmodal= mrOk then
    edit3.text:=datetimetostr(BrDateForm.Date);

end;

procedure TRipmodule.SpeedButton2Click(Sender: TObject);
begin
BrDateForm.date:=date;
if BrDateForm.Showmodal= mrOk then
    edit4.text:=datetimetostr(BrDateForm.Date);

end;

procedure TRipmodule.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
if not ((ord(key) = 08) or (ord(key) = 03)or (ord(key) = 27)) then
 begin
  if (not (key in ['0'..'9'])) or (length(Edit5.Text)>2) then
   key:=#0;
 end;

end;

procedure TRipmodule.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
if not ((ord(key) = 08) or (ord(key) = 03)or (ord(key) = 27)) then
 begin
  if (not (key in ['0'..'9'])) or (length(Edit6.Text)>1) then
   key:=#0;
 end;

end;

procedure TRipmodule.Edit5Exit(Sender: TObject);
begin
if (DM.IBDataSetRipURGENZA.Value=1)  then
begin
if ripmodule.Edit5.Text='' then
edit5.Text:='00';
if ripmodule.Edit6.Text='' then
edit6.Text:='00';
DM.IBDataSetRipDATARITIRORICH.AsDateTime:=strtodatetime(datetimetostr(dateof(DM.IBDataSetRipDATARITIRORICH.AsDateTime))+' '+ripmodule.Edit5.text+':'+ripmodule.Edit6.text+':00');
end;
end;

procedure TRipmodule.Edit6Exit(Sender: TObject);
begin
if (DM.IBDataSetRipURGENZA.Value=1)  then
begin
if ripmodule.Edit5.Text='' then
edit5.Text:='00';
if ripmodule.Edit6.Text='' then
edit6.Text:='00';
DM.IBDataSetRipDATARITIRORICH.AsDateTime:=strtodatetime(datetimetostr(dateof(DM.IBDataSetRipDATARITIRORICH.AsDateTime))+' '+ripmodule.Edit5.text+':'+ripmodule.Edit6.text+':00');
end;
end;

procedure TRipmodule.DBCheckBox9Click(Sender: TObject);
begin
if (sender as TdbCheckbox).Checked then
begin
 Ripmodule.Edit5.Enabled:=true;
 Ripmodule.Edit6.Enabled:=true;
 Ripmodule.Edit5.Text:=inttostr(hourof(now)+2);
 Ripmodule.Edit6.text:='00';
 if DM.IBDataSetRip.State in [dsEdit,dsInsert] then
 DM.IBDataSetRipDATARITIRORICH.Value:=strtodatetime(datetimetostr(today)+' '+inttostr(hourof(now)+2)+':00'+':00');
 end
else
begin
 Ripmodule.Edit5.Clear;
 Ripmodule.Edit6.Clear;
 Ripmodule.Edit5.Enabled:=false;
 Ripmodule.Edit6.Enabled:=false;
 if DM.IBDataSetRip.State in [dsEdit,dsInsert] then
 DM.IBDataSetRipDATARITIRORICH.AsDateTime:=dateof(dm.IBDataSetRipDATARITIRORICH.AsDateTime);
  end;

end;

procedure TRipmodule.DBEdit8KeyPress(Sender: TObject; var Key: Char);
begin
if not ((ord(key) = 08) or (ord(key) = 03)or (ord(key) = 27)) then
 begin
  if (not (key in ['0'..'9']+['+','-'])) or (length(dbedit8.EditText)>2) then
   key:=#0;
 end;

end;

procedure TRipmodule.DBEdit11KeyPress(Sender: TObject; var Key: Char);
begin
if not ((ord(key) = 08) or (ord(key) = 03)or (ord(key) = 27)) then
 begin
  if (not (key in ['0'..'9']+['+','-'])) or (length(dbedit11.EditText)>2) then
   key:=#0;
 end;

end;

procedure TRipmodule.BitBtn3Click(Sender: TObject);
var Rip_no:string;
Segnalibro:TBookmark;
begin
if DM.IBDataSetRip.State in [dsEdit,dsInsert] then
DM.IBDataSetRip.Post;
//Segnalibro:=DM.ibdatasetrip.GetBookmark;
Rip_no:=DM.IbdatasetRipRip_no.AsString;
//DM.IBDataSetRip.Close;
//dm.IBDataSetRip.SelectSQL.Clear;
//dm.IBDataSetRip.SelectSQL.Add('SELECT COGNRAGSOC, NOME, RIPARAZIONE.*');
//dm.IBDataSetRip.SelectSQL.Add('SELECT RIPARAZIONE.*');
//dm.IBDataSetRip.SelectSQL.Add('FROM RIPARAZIONE JOIN CLIENTI ON CLIENTI.CLI_NO=RIPARAZIONE.CLI_NO');
//dm.IBDataSetRip.SelectSQL.Add('WHERE RIPARAZIONE.CLI_NO="'+dm.IBDataSetClientiCLI_NO.AsString+'" AND  RIP_NO= "'+RIP_NO+'"');
//dm.IBDataSetRip.Open;
EticAttacSnow.QuickRep1.PrinterSettings.FirstPage:=1;
EticAttacSnow.Quickrep1.PrinterSettings.LastPage:=1;
EticAttacSnow.QuickRep1.PrinterSettings.PrinterIndex:=Printer.Printers.IndexOf(dm.IBDataSetLocalParamETIC_PRINTER.AsString);
if Preview4.Checked=false then
EticAttacSnow.QuickRep1.Print
else
EticAttacSnow.QuickRep1.Preview;
//DM.IBDataSetRip.Close;
//dm.IBDataSetRip.SelectSQL.Clear;
//dm.IBDataSetRip.SelectSQL.Add('SELECT COGNRAGSOC, NOME, RIPARAZIONE.*');
//dm.IBDataSetRip.SelectSQL.Add('FROM RIPARAZIONE JOIN CLIENTI ON CLIENTI.CLI_NO=RIPARAZIONE.CLI_NO');
//dm.IBDataSetRip.SelectSQL.Add('WHERE CLI_NO="'+dm.IBDataSetClientiCLI_NO.AsString+'"');
//dm.IBDataSetRip.Open;
//DM.IBDataSetRip.GotoBookmark(Segnalibro);
end;

procedure TRipmodule.Label6DblClick(Sender: TObject);
begin
DM.IBDataSetRipDATARITIRO.Clear;
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

procedure TRipmodule.FormActivate(Sender: TObject);
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
//  (Sender as TForm).Left:=centreleft((Sender as TForm).width);
//  (Sender as TForm).Top:=centretop((Sender as TForm).Height) ;

end;

procedure TRipmodule.DBLookupComboBox3KeyPress(Sender: TObject;
  var Key: Char);
begin
if Key= ^I then
begin
GestTab.Caption:=GestTab.Caption+' Brand';
GestTab.DBGrid1.DataSource:=DM.DSBrand;
if GestTab.Showmodal= mrOk then
Key:=#0;
GestTab.DBGrid1.DataSource:=Nil;
end;

end;



procedure TRipmodule.DBRadioGroup1Enter(Sender: TObject);
begin
label3.Visible:=true;
end;

procedure TRipmodule.CheckBox1Click(Sender: TObject);
begin
if DM.IBDataSetRip.State in [dsEdit, dsInsert] then
begin
If Checkbox1.Checked = true  then
begin
Panel1.Enabled:=true;
DM.IBDataSetRipBOOT_SX.Value:=1;
end
else
begin
Panel1.Enabled:=false;
DM.IBDataSetRipBOOT_SX.Value:=0;
end;
end;
end;

procedure TRipmodule.CheckBox2Click(Sender: TObject);
begin
if DM.IBDataSetRip.State in [dsEdit, dsInsert] then
begin
If Checkbox2.Checked = true  then
begin
Panel2.Enabled:=true;
DM.IBDataSetRipBOOT_DX.Value:=1;
end
else
begin
Panel2.Enabled:=false;
DM.IBDataSetRipBOOT_DX.Value:=0;
end;
end;

end;

procedure TRipmodule.DBRadioGroup2Change(Sender: TObject);
begin
//if dbradiogroup2.Value='OMAGGIO' then
//DM.IBDataSetRipPREZZO.Value:=0;

if (dbradiogroup2.Value='OMAGGIO') and (DM.DSRiparazione.State in [dsEdit,dsInsert])  then
begin
DM.IBDataSetRipPREZZO.Value:=0;
ripmodule.DBEdit18.Color:=cllime;
ripmodule.label29.Color:=cllime;
ripmodule.label29.caption:='PAGATO';
end;
end;

procedure TRipmodule.DBRadioGroup1Change(Sender: TObject);
begin
if dbradiogroup1.Value='SCI' then
ripprequerystring:='RIP_SCI';
if dbradiogroup1.Value='SNOWBOARD' then
ripprequerystring:='RIP_SNOW';
if dbradiogroup1.Value='SCI ALPINISMO' then
ripprequerystring:='RIP_ALP';
if dbradiogroup1.Value='FONDO' then
ripprequerystring:='RIP_FONDO';
if dbradiogroup1.Value='SCARPONI' then
ripprequerystring:='RIP_SCARPONE';
dbcheckbox1.Checked:=false;
dbcheckbox2.Checked:=false;
dbcheckbox3.Checked:=false;
dbcheckbox4.Checked:=false;
dbcheckbox5.Checked:=false;
dbcheckbox6.Checked:=false;
dbcheckbox7.Checked:=false;
dbcheckbox8.Checked:=false;

end;

function OrdinaStringa(const Input: string): string;
var
  CharArray: array of Char;
  i, j: Integer;
  Temp: Char;
begin
  // Converte la stringa in un array dinamico di caratteri
  SetLength(CharArray, Length(Input));
  for i := 1 to Length(Input) do
    CharArray[i - 1] := Input[i];

  // Bubble Sort per ordinare i caratteri
  for i := Low(CharArray) to High(CharArray) - 1 do
    for j := i + 1 to High(CharArray) do
      if CharArray[i] > CharArray[j] then
      begin
        Temp := CharArray[i];
        CharArray[i] := CharArray[j];
        CharArray[j] := Temp;
      end;

  // Ricostruisce la stringa dall'array ordinato
  Result := '';
  for i := Low(CharArray) to High(CharArray) do
    Result := Result + CharArray[i];
end;

function EliminaCarattere(const Input: string; CarattereDaRimuovere: Char): string;
begin
  Result := StringReplace(Input, CarattereDaRimuovere, '', [rfReplaceAll]);
end;


procedure TRipmodule.DBCheckBox1Click(Sender: TObject);
begin
if dbcheckbox1.Checked=true then
  ripquerystring:=ripquerystring+'F'
 else
  ripquerystring:=eliminacarattere(ripquerystring,'F');

ripquerystring:=OrdinaStringa(ripquerystring);
  if DM.DSRiparazione.State in [dsEdit,dsInsert] then
 DM.IBDataSetRipPREZZO.Value:=StrToIntDef(getPriceRip(ripprequerystring,ripquerystring),0);
end;

procedure TRipmodule.DBCheckBox2Click(Sender: TObject);
begin
if dbcheckbox2.Checked=true then
  ripquerystring:=ripquerystring+'L'
 else
  ripquerystring:=eliminacarattere(ripquerystring,'L');

ripquerystring:=OrdinaStringa(ripquerystring);
  if DM.DSRiparazione.State in [dsEdit,dsInsert] then
DM.IBDataSetRipPREZZO.Value:=StrToIntDef(getPriceRip(ripprequerystring,ripquerystring),0);
end;

procedure TRipmodule.DBCheckBox3Click(Sender: TObject);
begin
if dbcheckbox3.Checked=true then
  ripquerystring:=ripquerystring+'S'
 else
  ripquerystring:=eliminacarattere(ripquerystring,'S');

ripquerystring:=OrdinaStringa(ripquerystring);
  if DM.DSRiparazione.State in [dsEdit,dsInsert] then
DM.IBDataSetRipPREZZO.Value:=StrToIntDef(getPriceRip(ripprequerystring,ripquerystring),0);
end;

procedure TRipmodule.DBCheckBox4Click(Sender: TObject);
var tempprezzo:integer;
begin
tempprezzo:=StrToIntDef(getPriceRip(ripprequerystring,'GP'),0);

if dbcheckbox4.Checked=true then
 begin
  //ripquerystring:='GP';
  if DM.DSRiparazione.State in [dsEdit,dsInsert] then
  begin
  DM.IBDataSetRipFONDO.Value:=0;
  DM.IBDataSetRipLAMINE.Value:=0;
  DM.IBDataSetRipSCIOLINA.Value:=0;
  DM.IBDataSetRipPREZZO.Value:=tempprezzo;
  end;
end
else
begin
  ripquerystring:='';
    if DM.DSRiparazione.State in [dsEdit,dsInsert] then
    DM.IBDataSetRipPREZZO.Value:=DM.IBDataSetRipPREZZO.Value-tempprezzo;
end;
end;

function TRipmodule.GetPriceRip(param1,param2:string):string;
var query:Tibquery;
begin
query:=Tibquery.create(nil);
query.Database:=DM.IBDatabase1;
query.SQL.Text:='select D1 from pricelist where tipo='+quotedstr(param1)+' and descrizione='+quotedstr(param2);
query.Open;
if not query.IsEmpty then
result:=query.Fieldbyname('D1').asstring
else
result:='0';
end;





procedure TRipmodule.DBCheckBox7Click(Sender: TObject);
var querystr:string;
var prezzotemp:integer;
begin
 querystr:='AC';
 prezzotemp:=StrToIntDef(getPriceRip(ripprequerystring,'CA'),0);
  if DM.DSRiparazione.State in [dsEdit,dsInsert] then
  begin
        if dbcheckbox7.Checked=true then
         DM.IBDataSetRipPREZZO.Value:=DM.IBDataSetRipPREZZO.Value+prezzotemp
        else
         DM.IBDataSetRipPREZZO.Value:=DM.IBDataSetRipPREZZO.Value-prezzotemp;
  end;
end;

procedure TRipmodule.DBCheckBox6Click(Sender: TObject);
var querystr:string;
var prezzotemp:integer;
begin
 //querystr:='RADSCI';
 prezzotemp:=StrToIntDef(getPriceRip(ripprequerystring,'RADSCI'),0);
  if DM.DSRiparazione.State in [dsEdit,dsInsert] then
  begin
        if dbcheckbox6.Checked=true then
         DM.IBDataSetRipPREZZO.Value:=DM.IBDataSetRipPREZZO.Value+prezzotemp
        else
         DM.IBDataSetRipPREZZO.Value:=DM.IBDataSetRipPREZZO.Value-prezzotemp;
  end;
end;

procedure TRipmodule.DBCheckBox8Click(Sender: TObject);
var querystr:string;
    prezzotemp:integer;
begin
 //querystr:='COLLA';
 prezzotemp:=StrToIntDef(getPriceRip(ripprequerystring,'COLLA'),0);
  if DM.DSRiparazione.State in [dsEdit,dsInsert] then
  begin
        if dbcheckbox8.Checked=true then
         DM.IBDataSetRipPREZZO.Value:=DM.IBDataSetRipPREZZO.Value+prezzotemp
        else
         DM.IBDataSetRipPREZZO.Value:=DM.IBDataSetRipPREZZO.Value-prezzotemp;
  end;
end;



procedure TRipmodule.DBCheckBox13Click(Sender: TObject);
var querystr:string;
var prezzotemp:integer;
begin
// querystr:='AP';
 prezzotemp:=StrToIntDef(getPriceRip(ripprequerystring,'AP'),0);
  if DM.DSRiparazione.State in [dsEdit,dsInsert] then
  begin
        if dbcheckbox13.Checked=true then
         DM.IBDataSetRipPREZZO.Value:=DM.IBDataSetRipPREZZO.Value+prezzotemp
        else
         DM.IBDataSetRipPREZZO.Value:=DM.IBDataSetRipPREZZO.Value-prezzotemp;
  end;

end;

procedure TRipmodule.DBCheckBox15Click(Sender: TObject);
var querystr:string;
var prezzotemp:integer;
begin
// querystr:='AC';
 prezzotemp:=StrToIntDef(getPriceRip(ripprequerystring,'AC'),0);
  if DM.DSRiparazione.State in [dsEdit,dsInsert] then
  begin
        if dbcheckbox15.Checked=true then
         DM.IBDataSetRipPREZZO.Value:=DM.IBDataSetRipPREZZO.Value+prezzotemp
        else
         DM.IBDataSetRipPREZZO.Value:=DM.IBDataSetRipPREZZO.Value-prezzotemp;
  end;

end;

procedure TRipmodule.DBCheckBox19Click(Sender: TObject);
var querystr:string;
var prezzotemp:integer;
begin
// querystr:='CG';
 prezzotemp:=StrToIntDef(getPriceRip(ripprequerystring,'CG'),0);
  if DM.DSRiparazione.State in [dsEdit,dsInsert] then
  begin
        if dbcheckbox19.Checked=true then
         DM.IBDataSetRipPREZZO.Value:=DM.IBDataSetRipPREZZO.Value+prezzotemp
        else
         DM.IBDataSetRipPREZZO.Value:=DM.IBDataSetRipPREZZO.Value-prezzotemp;
  end;

end;

procedure TRipmodule.DBCheckBox16Click(Sender: TObject);
var querystr:string;
var prezzotemp:integer;
begin
// querystr:='AM';
 prezzotemp:=StrToIntDef(getPriceRip(ripprequerystring,'AM'),0);
  if DM.DSRiparazione.State in [dsEdit,dsInsert] then
  begin
        if dbcheckbox16.Checked=true then
         DM.IBDataSetRipPREZZO.Value:=DM.IBDataSetRipPREZZO.Value+prezzotemp
        else
         DM.IBDataSetRipPREZZO.Value:=DM.IBDataSetRipPREZZO.Value-prezzotemp;
  end;

end;

procedure TRipmodule.DBCheckBox17Click(Sender: TObject);
var querystr:string;
var prezzotemp:integer;
begin
// querystr:='SOLETTA';
 prezzotemp:=StrToIntDef(getPriceRip(ripprequerystring,'SOLETTA'),0);
  if DM.DSRiparazione.State in [dsEdit,dsInsert] then
  begin
        if dbcheckbox17.Checked=true then
         DM.IBDataSetRipPREZZO.Value:=DM.IBDataSetRipPREZZO.Value+prezzotemp
        else
         DM.IBDataSetRipPREZZO.Value:=DM.IBDataSetRipPREZZO.Value-prezzotemp;
  end;

end;

procedure TRipmodule.DBCheckBox22Click(Sender: TObject);
var querystr:string;
var prezzotemp:integer;
begin
// querystr:='SOLETTA';
 prezzotemp:=StrToIntDef(getPriceRip(ripprequerystring,'SOLETTA'),0);
  if DM.DSRiparazione.State in [dsEdit,dsInsert] then
  begin
        if dbcheckbox22.Checked=true then
         DM.IBDataSetRipPREZZO.Value:=DM.IBDataSetRipPREZZO.Value+prezzotemp
        else
         DM.IBDataSetRipPREZZO.Value:=DM.IBDataSetRipPREZZO.Value-prezzotemp;
  end;

end;

procedure TRipmodule.DBCheckBox18Click(Sender: TObject);
var querystr:string;
var prezzotemp:integer;
begin
// querystr:='AP';
 prezzotemp:=StrToIntDef(getPriceRip(ripprequerystring,'AP'),0);
  if DM.DSRiparazione.State in [dsEdit,dsInsert] then
  begin
        if dbcheckbox18.Checked=true then
         DM.IBDataSetRipPREZZO.Value:=DM.IBDataSetRipPREZZO.Value+prezzotemp
        else
         DM.IBDataSetRipPREZZO.Value:=DM.IBDataSetRipPREZZO.Value-prezzotemp;
  end;

end;

procedure TRipmodule.DBCheckBox14Click(Sender: TObject);
var querystr:string;
var prezzotemp:integer;
begin
// querystr:='AC';
 prezzotemp:=StrToIntDef(getPriceRip(ripprequerystring,'AC'),0);
  if DM.DSRiparazione.State in [dsEdit,dsInsert] then
  begin
        if dbcheckbox14.Checked=true then
         DM.IBDataSetRipPREZZO.Value:=DM.IBDataSetRipPREZZO.Value+prezzotemp
        else
         DM.IBDataSetRipPREZZO.Value:=DM.IBDataSetRipPREZZO.Value-prezzotemp;
  end;

end;

procedure TRipmodule.DBCK1Click(Sender: TObject);
var querystr:string;
var prezzotemp:integer;
begin
// querystr:='CG';
 prezzotemp:=StrToIntDef(getPriceRip(ripprequerystring,'CG'),0);
  if DM.DSRiparazione.State in [dsEdit,dsInsert] then
  begin
        if dbck1.Checked=true then
         DM.IBDataSetRipPREZZO.Value:=DM.IBDataSetRipPREZZO.Value+prezzotemp
        else
         DM.IBDataSetRipPREZZO.Value:=DM.IBDataSetRipPREZZO.Value-prezzotemp;
  end;

end;

procedure TRipmodule.DBCheckBox21Click(Sender: TObject);
var querystr:string;
var prezzotemp:integer;
begin
// querystr:='AM';
 prezzotemp:=StrToIntDef(getPriceRip(ripprequerystring,'AM'),0);
  if DM.DSRiparazione.State in [dsEdit,dsInsert] then
  begin
        if dbcheckbox21.Checked=true then
         DM.IBDataSetRipPREZZO.Value:=DM.IBDataSetRipPREZZO.Value+prezzotemp
        else
         DM.IBDataSetRipPREZZO.Value:=DM.IBDataSetRipPREZZO.Value-prezzotemp;
  end;

end;

end.
