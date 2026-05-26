unit LogInDatabase;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, Dialogs, IniFiles, math;

type
  TPasswordDlg = class(TForm)
    Label1: TLabel;
    Password: TEdit;
    OKBtn: TButton;
    CancelBtn: TButton;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label3: TLabel;
    Bevel1: TBevel;
    OpenDialog1: TOpenDialog;
    Label4: TLabel;
    procedure OKBtnClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Label2DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PasswordDlg: TPasswordDlg;
  RDP,COMPORTOPN:string;

  implementation

{$R *.dfm}

uses Softhire,nolo, frontend,uAppPaths;

procedure TPasswordDlg.OKBtnClick(Sender: TObject);
const
  cnMaxUserNameLen = 254;
var
  sUserName     : string;
  dwUserNameLen : DWord;
begin
 if DM.IBDatabase1.Connected = false then
begin
 if (Edit1.Text = '') or (Password.Text = '') or (Edit2.Text = '') then
  begin
   if MessageDlg('TUTTI I CAMPI DEVONO ESSERE COMPLETI, CONTINUARE?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
   passwordDlg.close;
  end
else
 begin
 DM.IBDatabase1.Connected:=true;
// DM.IBDatabase2.DatabaseName:=ExtractFilepath(Application.ExeName)+'NOLOLOCAL.FDB';
 DM.IBDatabase2.Connected:=true;
 //DM.IBDatabase1.Connected:=true;
 end;
if DM.IBDatabase1.Connected=true and DM.IBDatabase2.Connected=true then
begin
if RDP='YES' then
begin
  dwUserNameLen := cnMaxUserNameLen-1;
  SetLength( sUserName, cnMaxUserNameLen );
  Win32Check(GetUserName( PChar(sUserName), dwUserNameLen ));
  sUserName := PChar( sUserName );
 // nolo.Menu.Label174.Caption:=sUserName;
  dm.IBDataSetLocalParam.Close;
  dm.IBDataSetLocalParam.SelectSQL.Clear;
  DM.IBDataSetLocalParam.SelectSQL.Add('SELECT * FROM LOCALSETINGS WHERE POSTAZIONE ="'+UpperCase(sUserName)+'"');
  dm.IBDataSetLocalParam.Open;
  if not DM.IBDataSetLocalParam.IsEmpty then
  begin
  dm.IBDataSetParam.Close;
  dm.IBDataSetParam.SelectSQL.Clear;
  DM.IBDataSetParam.SelectSQL.Add('SELECT * FROM PARAMETRI WHERE PARAM_NO="'+dm.IBDataSetLocalParamIDSETTINGS.AsString+'"');
  dm.IBDataSetParam.Open;
  end
  else
begin
  dm.IBDataSetLocalParam.Close;
  dm.IBDataSetLocalParam.SelectSQL.Clear;
  DM.IBDataSetLocalParam.SelectSQL.Add('SELECT * FROM LOCALSETINGS');
  dm.IBDataSetLocalParam.Open;
end;
end;
  nolo.Menu.SetUpCVModule(DM.IBDataSetLocalParamENABCV.AsInteger);
  nolo.menu.SetUpRepModule(DM.IBDataSetLocalParamENABREP.AsInteger);
  nolo.menu.SetUpOperModule(DM.IBDataSetLocalParamENABOPER.AsInteger);
  nolo.menu.SetUpRipModule(DM.IBDataSetLocalParamENABRIP.AsInteger);
  nolo.menu.SetUpFinVModule(DM.IBDataSetLocalParamENABFINV.AsInteger);
  nolo.menu.SetUpTreeVModule(DM.IBDataSetLocalParamENABTREE.AsInteger);
  nolo.menu.SetUpLabModule(DM.IBDataSetLocalParamENABLABMODULE.AsInteger);
  nolo.Menu.SetUpTennisModule(DM.IBDataSetLocalParamENABTENNIS.AsInteger);
   if DM.IBDataSetLocalParamENABLEADVISE.AsInteger = 0 Then
  nolo.Menu.Timer1.Enabled:=false
  else
  nolo.Menu.Timer1.Enabled:=true;
  end;
if DM.IBDatabase1.Connected=true then
begin
//nolo.Menu.Show;
passwordDlg.hide;
logopanel.Show;

end;
end
else
begin
DM.IBDatabase1.Connected:=false;
DM.IBDatabase2.Connected:=false;
passwordDlg.Close;
end;
end;

procedure TPasswordDlg.CancelBtnClick(Sender: TObject);
begin
PasswordDlg.Close;
end;

procedure TPasswordDlg.FormShow(Sender: TObject);
begin
Edit1.Enabled:=not DM.IBDatabase1.Connected;
password.Enabled:=not DM.IBDatabase1.Connected;
Edit2.Enabled:=not DM.IBDatabase1.Connected;
if DM.IBDatabase1.Connected=true then
begin
OKBtn.Caption:='LOG-OFF';
CancelBtn.Enabled:=false;
end
else
begin
OKBtn.Caption:='LOG-ON';
CancelBtn.Enabled:=true;
end
end;

procedure TPasswordDlg.Label2DblClick(Sender: TObject);
var str1:string;
begin
if OpenDialog1.Execute then
Begin
if pos('Serverps2',OpenDialog1.FileName)>0 then
begin
str1:=copy(OpenDialog1.FileName,3,length(OpenDialog1.FileName));
DM.IBDatabase1.DatabaseName:=copy(str1,0,(pos('\',str1)-1))+':D:'+copy(str1,pos('\',str1),length(str1));
end
else
DM.IBDatabase1.DatabaseName:=OpenDialog1.FileName;
label4.caption:=DM.IBDatabase1.DatabaseName;
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

procedure TPasswordDlg.FormCreate(Sender: TObject);
var Noloini:TiniFile;
    ServerName,FileName,Directory,LocalFileDb,CapDBFilePath:string;

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
 // (Sender as TForm).Top:=centretop((Sender as TForm).Height) ;


//Noloini:=Tinifile.Create(changefileext(Application.exename,'.ini'));
//ShowMessage(AppDataPath);
try
Noloini:=Tinifile.Create(AppDataPath+'nolosoft.ini');
try
serverName:=Noloini.ReadString('DATABASEFB','SERVER','');
Directory:=Noloini.ReadString('DATABASEFB','DIRECTORY','D:\Noleggio 06-09-15 Last Rel\');
FileName:=Noloini.ReadString('DATABASEFB','FILEDB','Noleggio_ok.FDB');
LocalFileDB:=Noloini.ReadString('DATABASELOCAL','DBLOCALPATH','D:\Noleggio 06-09-15 Last Rel\NOLOLOCAL.FDB');
CapDBFilePath:=Noloini.ReadString('DATABASECAP','DBCAPSTRING','Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\Noleggio 06-09-15 Last Rel\cap1.mdb;Persist Security Info=False');
COMPORTOPN:=Noloini.ReadString('OPN','COMPORT','16');
Rdp:=Noloini.ReadString('MODE','RDP','NO');
finally
noloini.Free;
end;
except
  on E: Exception do
    MessageBox(0, PChar(E.Message), 'Errore INI', MB_ICONERROR);
end;
if Servername='' then
DM.IBDatabase1.DatabaseName:=ServerName+directory+filename
else
DM.IBDatabase1.DatabaseName:=ServerName+':'+directory+filename;
DM.IBDatabase2.DatabaseName:=LocalFileDB;
//DM.ADOConnection1.ConnectionString:=CapDBFilePath;

end;



procedure TPasswordDlg.Label1DblClick(Sender: TObject);
begin
showmessage('Destinazione Paramentri utente: '+AppDataPath);
end;

end.

