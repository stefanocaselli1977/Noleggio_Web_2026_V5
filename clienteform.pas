unit clienteform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ExtCtrls, Mask, Buttons, DB, Jpeg, DateUtils, Strutils;

type
  TCLIFORMNEW = class(TForm)
    groupbox1: TGroupBox;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    DBText1: TDBText;
    Label5: TLabel;
    Label19: TLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    cognragsoc: TDBEdit;
    nome: TDBEdit;
    indirizzo: TDBEdit;
    cellulare: TDBEdit;
    telefono1: TDBEdit;
    telefono2: TDBEdit;
    email: TDBEdit;
    DBMemo1: TDBMemo;
    DBImage1: TDBImage;
    DBTipoDocGroup1: TDBRadioGroup;
    docno: TDBEdit;
    citta: TDBComboBox;
    localita: TDBComboBox;
    cap: TDBComboBox;
    BTNSALVA1: TBitBtn;
    BTNMODIFICA1: TBitBtn;
    BTNELIMINA1: TBitBtn;
    BTNANNULLA1: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    SpeedButton1: TSpeedButton;
    snapshot: TBitBtn;
    Button1: TButton;
    validat: TDBEdit;
    Label1: TLabel;
    procedure telefono1KeyPress(Sender: TObject; var Key: Char);
    procedure telefono2KeyPress(Sender: TObject; var Key: Char);
    procedure cellulareKeyPress(Sender: TObject; var Key: Char);
    procedure cognragsocKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BTNSALVA1Click(Sender: TObject);
    procedure nomeKeyPress(Sender: TObject; var Key: Char);
    procedure capKeyPress(Sender: TObject; var Key: Char);
    procedure cittaKeyPress(Sender: TObject; var Key: Char);
    procedure localitaKeyPress(Sender: TObject; var Key: Char);
    procedure emailKeyPress(Sender: TObject; var Key: Char);
    procedure BTNMODIFICA1Click(Sender: TObject);
    procedure BTNANNULLA1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BTNELIMINA1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure capEnter(Sender: TObject);
    procedure capExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure cittaExit(Sender: TObject);
    procedure localitaExit(Sender: TObject);
    procedure snapshotClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure Label18Click(Sender: TObject);
    procedure validatKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
   jpgimage:TJPEGImage;
    bottone:string;
    { Public declarations }
  end;

var
  CLIFORMNEW: TCLIFORMNEW;

implementation

uses SoftHire, Inscap, Demo03_MainForm, nolo, webcamunit, uAppPaths;

{$R *.dfm}

procedure TCLIFORMNEW.telefono1KeyPress(Sender: TObject; var Key: Char);
begin
if Key In ['0'..'9','+',#127,#8] Then // #8 = backspace
      inherited
    Else
      Key := #0;

end;

procedure TCLIFORMNEW.telefono2KeyPress(Sender: TObject; var Key: Char);
begin
if Key In ['0'..'9','+',#127,#8] Then // #8 = backspace
      inherited
    Else
      Key := #0;

end;

procedure TCLIFORMNEW.cellulareKeyPress(Sender: TObject; var Key: Char);
begin
if Key In ['0'..'9','+',#127,#8] Then // #8 = backspace
      inherited
    Else
      Key := #0;

end;



procedure TCLIFORMNEW.cognragsocKeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in ['a'..'z','A'..'Z','0'..'9',#32,#8,#127,#13,#9]) then
     Key := #0;
 end;

procedure TCLIFORMNEW.FormShow(Sender: TObject);
begin
if bottone='NOLEGGIA' then
begin
//bitbtn2.Glyph.LoadFromFile(ExtractFileDir(Application.ExeName)+'\noleggio.bmp');
bitbtn2.Glyph.LoadFromFile(AppDataPath+'noleggio.bmp');
bitbtn2.Visible:=true;
bitbtn2.Caption:=bottone;
docno.Visible:=true;
snapshot.Visible:=true;
label19.Visible:=true;
end;
if bottone='RIPARA' then
begin
//bitbtn2.Glyph.LoadFromFile(ExtractFileDir(Application.ExeName)+'\ripara.bmp');
bitbtn2.Glyph.LoadFromFile(AppdataPath+'ripara.bmp');
bitbtn2.Visible:=true;
bitbtn2.Caption:=bottone;
docno.Visible:=false;
snapshot.Visible:=false;
label19.Visible:=false;
end;
if bottone='CONTOVENDITA' then
begin
//bitbtn2.Glyph.LoadFromFile(ExtractFileDir(Application.ExeName)+'\contov.bmp');
bitbtn2.Glyph.LoadFromFile(AppDataPath+'contov.bmp');
bitbtn2.Visible:=true;
bitbtn2.Caption:=bottone;
docno.Visible:=true;
snapshot.Visible:=true;
label19.Visible:=true;
end;
if bottone='' then
begin
bitbtn2.Visible:=false;
end;
end;


procedure TCLIFORMNEW.BTNSALVA1Click(Sender: TObject);
begin
DM.ibdatasetclienti.post;
if assigned(cliformnew.jpgimage) then
begin
  //jpgimage.SaveToFile(ExtractFileDir(Application.ExeName)+'\'+DM.IBDataSetClientiCLI_NO.asstring+'-'+DM.IBDataSetClientiCOGNRAGSOC.asstring+' '+DM.IBDataSetClientiNOME.asstring+'.jpg');
  jpgimage.SaveToFile(Appdatapath+DM.IBDataSetClientiCLI_NO.asstring+'-'+DM.IBDataSetClientiCOGNRAGSOC.asstring+' '+DM.IBDataSetClientiNOME.asstring+'.jpg');
  end;

end;

procedure TCLIFORMNEW.nomeKeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in ['a'..'z','A'..'Z','0'..'9',#32,#8,#127,#13,#9]) then
     Key := #0;

end;

procedure TCLIFORMNEW.capKeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in ['0'..'9',#32,#8,#127,#13,#9]) then
     Key := #0;

if key=#13 then
begin
capExit(sender);
citta.SetFocus;
end;
end;

procedure TCLIFORMNEW.cittaKeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in ['a'..'z','A'..'Z',#32,#8,#127,#13,#9]) then
     Key := #0;
if key=#13 then
begin
cittaExit(sender);
localita.SetFocus;
end;
end;

procedure TCLIFORMNEW.localitaKeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in ['a'..'z','A'..'Z',#32,#8,#127,#13,#9]) then
     Key := #0;

end;

procedure TCLIFORMNEW.emailKeyPress(Sender: TObject; var Key: Char);
begin
if Key In ['0'..'9',#127,#8] Then // #8 = backspace
      inherited
    Else
      Key := #0;
 end;


procedure TCLIFORMNEW.BTNMODIFICA1Click(Sender: TObject);
begin
DM.IBDataSetClienti.Edit;
end;

procedure TCLIFORMNEW.BTNANNULLA1Click(Sender: TObject);
begin
DM.IBDataSetClienti.Cancel;
cliformnew.Close;
end;

procedure TCLIFORMNEW.BitBtn1Click(Sender: TObject);
begin
Self.Close;
end;

procedure TCLIFORMNEW.BTNELIMINA1Click(Sender: TObject);
begin
if messagedlg('ELIMINARE LO STORICO CLIENTE?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
begin
//DM.IBDataSetClienti.DisableControls;
DM.IBDataSetClientiDELETEDATE.Value:=now;
DM.IBDataSetClienti.Post;
//DM.IBDataSetClienti.EnableControls;
DM.IBDataSetClienti.Refresh;
cliformnew.Close;
end;
end;

procedure TCLIFORMNEW.FormClose(Sender: TObject; var Action: TCloseAction);
begin
If (DM.IBDataSetClienti.State = dsEdit) or (DM.IBDataSetClienti.State = dsInsert) then
begin
  if MessageDlg('SCHEDA APERTA,I DATI VERRANNO PERSI CONTINUARE ?', mtConfirmation, [mbYes, mbNo], 0 ) = mrYes then
   begin
    DM.IBDataSetClienti.Cancel;
       Action := cahide;
    end
  else
    Action := caNone;
end;

end;

procedure TCLIFORMNEW.capEnter(Sender: TObject);
begin
DM.ADOQuery1.Close;
DM.ADOQuery1.SQL.Clear;
DM.ADOQuery1.SQL.Add('SELECT DISTINCT CAP FROM COMUNI');
DM.ADOQuery1.Open;
DM.ADOQuery1.First;
cap.Clear;
if not DM.ADOQuery1.IsEmpty then
begin
 while not DM.ADOQuery1.Eof do
  begin
   cap.Items.Add(DM.ADOQuery1.Fields.Fields[0].AsString);
   DM.ADOQuery1.Next;
  end;
 end
else
begin

end;

  //DBcombobox1.Field.Value:=DM.IBDataSetClientiCITTA.AsString;
end;

procedure TCLIFORMNEW.capExit(Sender: TObject);
begin
DM.ADOQuery1.Close;
DM.ADOQuery1.SQL.Clear;
DM.ADOQuery1.SQL.Add('SELECT distinct CITTA FROM COMUNI WHERE CAP="'+DM.IBDataSetClientiCAP.AsString+'"');
DM.ADOQuery1.Open;
if not DM.ADOQuery1.IsEmpty then
begin
DM.IBDataSetClientiCITTA.Value:=DM.ADOQuery1.FieldValues['CITTA'];
DM.ADOQuery1.Close;
DM.ADOQuery1.SQL.Clear;
DM.ADOQuery1.SQL.Add('SELECT LOCALITA FROM COMUNI WHERE CAP="'+DM.IBDataSetClientiCAP.AsString+'"');
DM.ADOQuery1.Open;
localita.Clear;
 while not DM.ADOQuery1.Eof do
  begin
   localita.Items.Add(DM.ADOQuery1.Fields.Fields[0].AsString);
   DM.ADOQuery1.Next;
  end;
end
else
begin
if messagedlg('CAP non trovato inserire nuovo riferimento?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
begin
insertcap.cap.Text:=cap.Text;
insertcap.showmodal;
end

end;


end;

procedure TCLIFORMNEW.SpeedButton1Click(Sender: TObject);
var temp:string;
begin
temp:=DM.IBDataSetClientiNOME.Value;
DM.IBDataSetClientiNOME.Value:=DM.IBDataSetClientiCOGNRAGSOC.Value;
DM.IBDataSetClientiCOGNRAGSOC.Value:=temp;
end;

procedure TCLIFORMNEW.cittaExit(Sender: TObject);
begin
DM.ADOQuery1.Close;
DM.ADOQuery1.SQL.Clear;
DM.ADOQuery1.SQL.Add('SELECT * FROM COMUNI WHERE CITTA="'+citta.Text+'"');
DM.ADOQuery1.Open;
DM.ADOQuery1.First;
if DM.ADOQuery1.IsEmpty then
begin
if messagedlg('CITTA non trovata inserire nuovo riferimento?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
begin
insertcap.cap.Text:=cap.Text;
insertcap.citta.Text:=citta.Text;
insertcap.showmodal;
end;
end;
end;

procedure TCLIFORMNEW.localitaExit(Sender: TObject);
begin
DM.ADOQuery1.Close;
DM.ADOQuery1.SQL.Clear;
DM.ADOQuery1.SQL.Add('SELECT * FROM COMUNI WHERE LOCALITA="'+localita.Text+'"');
DM.ADOQuery1.Open;
DM.ADOQuery1.First;
if DM.ADOQuery1.IsEmpty then
begin
if messagedlg('LOCALITA non trovata inserire nuovo riferimento?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
begin
insertcap.cap.Text:=cap.Text;
insertcap.citta.Text:=citta.Text;
insertcap.paese.Text:=localita.Text;
//insertcap.paese.SetFocus;
insertcap.showmodal;
end;
end;

end;

procedure TCLIFORMNEW.snapshotClick(Sender: TObject);
begin
//webcam.Id_cli:=DM.IBDataSetClientiCLI_NO.AsString;
//webcam.show;
//cliformnew.jpgimage:=webcam.LocalJPG;
end;

procedure TCLIFORMNEW.Button1Click(Sender: TObject);
var ii:integer;
    giorno,mese,validation,temp:string;
begin
for ii := 0 to groupbox1.ControlCount - 1 do
 begin
  if (groupbox1.Controls[ii] is TDBEdit) then
  begin
   (groupbox1.Controls[ii] as Tdbedit).Color:=clbtnface;
    groupbox1.Controls[ii].Enabled:=false;
  end;
  if(groupbox1.Controls[ii] is TDBCombobox) then
  begin
   (groupbox1.Controls[ii] as TdbCombobox).Color:=clbtnface;
    groupbox1.Controls[ii].Enabled:=false;
  end;
    if(groupbox1.Controls[ii] is TSpeedButton) then
    groupbox1.Controls[ii].Enabled:=false;
 end;
validat.Enabled:=true;
validat.Color:=clwindow;
validat.setfocus;
temp:=cognragsoc.Text+nome.Text;
giorno:=inttostr(dayof(today));
mese:=inttostr(monthof(today));
while length(giorno)<=1 do
giorno:='0'+giorno;
while length(mese)<=1 do
mese:='0'+mese;
if leftstr(cellulare.text,1)='+' then
cellulare.text:=copy(cellulare.text,3,length(cellulare.text));
validation:=inttostr(length(temp))+copy(cellulare.Text, 0, 1)+copy(cellulare.Text,length(cellulare.Text),1)+giorno+mese+rightstr(inttostr(yearof(today)),2);
nolo.menu.SendEmailMessage(2,cellulare.Text,'Validazione Cellulare','Noleggio ParmaSport numero validazione:'+validation,'');

end;

procedure TCLIFORMNEW.Label5Click(Sender: TObject);
begin
indirizzo.Text:='VIA TITO SANBUCA,4';
cap.Text:='43122';
citta.text:='PARMA';
localita.Text:='PARADIGNA';
telefono1.Text:='0521601478';
cellulare.Text:='3357116528';
email.Text:='STEFANO@PARMASPORT.IT';
docno.Text:='012345678900';

end;

procedure TCLIFORMNEW.Label18Click(Sender: TObject);
begin
nolo.Menu.Show;
end;

procedure TCLIFORMNEW.validatKeyPress(Sender: TObject; var Key: Char);
var ii:integer;
 giorno,mese,validation,temp:string;
begin
if Key In ['0'..'9',#13,#127,#8] Then // #8 = backspace
      inherited
    Else
      Key := #0;
if key=#13 then
begin
temp:=cognragsoc.Text+nome.Text;
giorno:=inttostr(dayof(today));
mese:=inttostr(monthof(today));
while length(giorno)<=1 do
giorno:='0'+giorno;
while length(mese)<=1 do
mese:='0'+mese;
validation:=inttostr(length(temp))+copy(cellulare.Text, 0, 1)+copy(cellulare.Text,length(cellulare.Text),1)+giorno+mese+rightstr(inttostr(yearof(today)),2);
if validat.Text =validation then
 begin
  for ii := 0 to groupbox1.ControlCount - 1 do
 begin
  if (groupbox1.Controls[ii] is TDBEdit) then
  begin
   (groupbox1.Controls[ii] as Tdbedit).Color:=clwindow;
    groupbox1.Controls[ii].Enabled:=true;
  end;
  if(groupbox1.Controls[ii] is TDBCombobox) then
  begin
   (groupbox1.Controls[ii] as TdbCombobox).Color:=clwindow;
    groupbox1.Controls[ii].Enabled:=true;
  end;
    if(groupbox1.Controls[ii] is TSpeedButton) then
    groupbox1.Controls[ii].Enabled:=true;
 end;

 end;

end;


end;

end.
