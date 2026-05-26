unit TennisModule;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Mask, ExtCtrls, Grids, DBGrids, Buttons,
  ComCtrls, DB, Printers, IBQuery, DateUtils, Math, strutils, IBDatabase,
  jpeg, Spin;

type
  TTennisMng = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox3: TGroupBox;
    Label40: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    SpeedButton2: TSpeedButton;
    Label41: TLabel;
    DBGrid2: TDBGrid;
    Edit1: TEdit;
    Edit4: TEdit;
    ComboBox1: TComboBox;
    Button4: TButton;
    RadioGroup1: TRadioGroup;
    Edit2: TEdit;
    GroupBox4: TGroupBox;
    Label20: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label39: TLabel;
    Label90: TLabel;
    DBText8: TDBText;
    Label198: TLabel;
    DBEdit18: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBMemo2: TDBMemo;
    DBRadioGroup2: TDBRadioGroup;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBEdit51: TDBEdit;
    DBEdit56: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    BTNINSERISCI1: TBitBtn;
    BTNSALVA2: TBitBtn;
    BTNMODIFICA2: TBitBtn;
    BTNELIMINA2: TBitBtn;
    BTNANNULLA2: TBitBtn;
    BitBtn32: TBitBtn;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    CheckBox1: TCheckBox;
    Edit3: TEdit;
    Edit5: TEdit;
    TabSheet2: TTabSheet;
    TabSheet6: TTabSheet;
    GroupBox7: TGroupBox;
    Label92: TLabel;
    DBEdit45: TDBEdit;
    Label93: TLabel;
    DBEdit46: TDBEdit;
    Label94: TLabel;
    DBEdit47: TDBEdit;
    Label79: TLabel;
    DBEdit48: TDBEdit;
    ComboBox3: TComboBox;
    Label85: TLabel;
    TabSheet7: TTabSheet;
    GroupBox8: TGroupBox;
    Label89: TLabel;
    Label95: TLabel;
    Label96: TLabel;
    Label97: TLabel;
    DBGrid4: TDBGrid;
    Edit28: TEdit;
    Edit29: TEdit;
    ComboBox4: TComboBox;
    Button8: TButton;
    Edit30: TEdit;
    GroupBox9: TGroupBox;
    Label98: TLabel;
    Label99: TLabel;
    Label100: TLabel;
    Label101: TLabel;
    Label102: TLabel;
    Label103: TLabel;
    Label104: TLabel;
    Label105: TLabel;
    Label106: TLabel;
    Label107: TLabel;
    Label108: TLabel;
    Label109: TLabel;
    Label110: TLabel;
    DBEdit27: TDBEdit;
    DBEdit52: TDBEdit;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    DBEdit57: TDBEdit;
    DBEdit58: TDBEdit;
    DBEdit59: TDBEdit;
    DBEdit60: TDBEdit;
    DBEdit61: TDBEdit;
    DBEdit62: TDBEdit;
    GroupBox10: TGroupBox;
    Label111: TLabel;
    Label112: TLabel;
    Label113: TLabel;
    Label114: TLabel;
    Label115: TLabel;
    Label116: TLabel;
    Label117: TLabel;
    Label118: TLabel;
    Label119: TLabel;
    Label120: TLabel;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    Label121: TLabel;
    Label122: TLabel;
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
    BTNNUOVO4: TBitBtn;
    BTNMODIFICA4: TBitBtn;
    BTNSALVA4: TBitBtn;
    BTNANNULLA4: TBitBtn;
    BTNELIMINA4: TBitBtn;
    BitBtn11: TBitBtn;
    CheckBox2: TCheckBox;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    BitBtn15: TBitBtn;
    BitBtn16: TBitBtn;
    BitBtn17: TBitBtn;
    ComboBox5: TComboBox;
    Label123: TLabel;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    TabSheet5: TTabSheet;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    DBGrid3: TDBGrid;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit11: TDBEdit;
    Label14: TLabel;
    DBEdit12: TDBEdit;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    DBRadioGroup1: TDBRadioGroup;
    DBLookupComboBox1: TDBLookupComboBox;
    Label17: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    GroupBox6: TGroupBox;
    DBGrid7: TDBGrid;
    GroupBox11: TGroupBox;
    Label18: TLabel;
    DBEdit10: TDBEdit;
    Label19: TLabel;
    Label21: TLabel;
    DBEdit21: TDBEdit;
    Label28: TLabel;
    DBEdit26: TDBEdit;
    Label38: TLabel;
    DBEdit28: TDBEdit;
    Label44: TLabel;
    DBEdit29: TDBEdit;
    Label45: TLabel;
    Label56: TLabel;
    DBEdit41: TDBEdit;
    Label60: TLabel;
    DBEdit44: TDBEdit;
    Label61: TLabel;
    DBEdit49: TDBEdit;
    Label62: TLabel;
    DBEdit63: TDBEdit;
    Label63: TLabel;
    DBMemo1: TDBMemo;
    Label64: TLabel;
    DBEdit64: TDBEdit;
    Label66: TLabel;
    DBEdit65: TDBEdit;
    Label75: TLabel;
    Label76: TLabel;
    Edit10: TEdit;
    GroupBox12: TGroupBox;
    Label82: TLabel;
    Edit12: TEdit;
    Label86: TLabel;
    Edit11: TEdit;
    Label77: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    DBEdit19: TDBEdit;
    Label88: TLabel;
    DBEdit30: TDBEdit;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn18: TBitBtn;
    BitBtn19: TBitBtn;
    BitBtn20: TBitBtn;
    BitBtn21: TBitBtn;
    BitBtn22: TBitBtn;
    ComboBox2: TComboBox;
    Button5: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Label91: TLabel;
    Edit13: TEdit;
    Label124: TLabel;
    Edit17: TEdit;
    Label125: TLabel;
    Edit18: TEdit;
    BitBtn23: TBitBtn;
    BtnCarica: TBitBtn;
    BtnScarica: TBitBtn;
    PREVIEW2: TCheckBox;
    BitBtn24: TBitBtn;
    BitBtn39: TBitBtn;
    DBText1: TDBText;
    DBText2: TDBText;
    DBGrid8: TDBGrid;
    GroupBox5: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox13: TGroupBox;
    BitBtn2: TBitBtn;
    BitBtn14: TBitBtn;
    BitBtn25: TBitBtn;
    BitBtn26: TBitBtn;
    Label22: TLabel;
    DBEdit16: TDBEdit;
    Label46: TLabel;
    DBEdit32: TDBEdit;
    Label47: TLabel;
    DBEdit33: TDBEdit;
    Label48: TLabel;
    DBEdit34: TDBEdit;
    SpeedButton4: TSpeedButton;
    Label49: TLabel;
    Label50: TLabel;
    Label52: TLabel;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    BitBtn27: TBitBtn;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    TabSheet9: TTabSheet;
    Label51: TLabel;
    DBEdit35: TDBEdit;
    Label53: TLabel;
    DBEdit36: TDBEdit;
    Label54: TLabel;
    DBEdit37: TDBEdit;
    Label55: TLabel;
    DBEdit39: TDBEdit;
    Label65: TLabel;
    Label67: TLabel;
    BitBtn28: TBitBtn;
    BitBtn29: TBitBtn;
    DBCheckBox1: TDBCheckBox;
    GroupBox14: TGroupBox;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    DBEdit77: TDBEdit;
    DBEdit78: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    BitBtn30: TBitBtn;
    DBText3: TDBText;
    Label33: TLabel;
    DBEdit22: TDBEdit;
    Label34: TLabel;
    DBEdit31: TDBEdit;
    Label35: TLabel;
    DBEdit38: TDBEdit;
    Label36: TLabel;
    DBEdit66: TDBEdit;
    Label37: TLabel;
    DBEdit67: TDBEdit;
    Label31: TLabel;
    DBEdit25: TDBEdit;
    Label32: TLabel;
    DBEdit68: TDBEdit;
    Label70: TLabel;
    DBEdit69: TDBEdit;
    Label71: TLabel;
    DBEdit70: TDBEdit;
    Label72: TLabel;
    DBEdit71: TDBEdit;
    Label74: TLabel;
    DBEdit73: TDBEdit;
    Label78: TLabel;
    DBEdit74: TDBEdit;
    Label83: TLabel;
    DBEdit75: TDBEdit;
    Label84: TLabel;
    DBEdit76: TDBEdit;
    Label87: TLabel;
    DBEdit79: TDBEdit;
    Shape1: TShape;
    TabSheet4: TTabSheet;
    TabSheet11: TTabSheet;
    DBMemo3: TDBMemo;
    Label73: TLabel;
    Label126: TLabel;
    Label127: TLabel;
    Label128: TLabel;
    Label129: TLabel;
    DBRadioGroup3: TDBRadioGroup;
    DBEdit72: TDBEdit;
    DBEdit80: TDBEdit;
    DBEdit81: TDBEdit;
    DBEdit82: TDBEdit;
    Label130: TLabel;
    DBMemo4: TDBMemo;
    Label131: TLabel;
    Label132: TLabel;
    DBEdit83: TDBEdit;
    Label133: TLabel;
    DBEdit84: TDBEdit;
    Label134: TLabel;
    DBEdit85: TDBEdit;
    DBMemo5: TDBMemo;
    Label135: TLabel;
    BitBtn1: TBitBtn;
    DBEdit86: TDBEdit;
    DBEdit87: TDBEdit;
    Label136: TLabel;
    Label137: TLabel;
    Label138: TLabel;
    DBEdit88: TDBEdit;
    Label140: TLabel;
    DBEdit90: TDBEdit;
    DBCheckBox2: TDBCheckBox;
    Label139: TLabel;
    DBEdit89: TDBEdit;
    Label141: TLabel;
    DBEdit91: TDBEdit;
    Label142: TLabel;
    DBEdit92: TDBEdit;
    Label143: TLabel;
    DBEdit93: TDBEdit;
    Label144: TLabel;
    Label145: TLabel;
    DBMemo6: TDBMemo;
    Label146: TLabel;
    DBEdit95: TDBEdit;
    DBComboBox1: TDBComboBox;
    Label147: TLabel;
    DBEdit94: TDBEdit;
    Label148: TLabel;
    DBEdit96: TDBEdit;
    Label149: TLabel;
    DBEdit97: TDBEdit;
    Label150: TLabel;
    DBEdit98: TDBEdit;
    Label151: TLabel;
    Label152: TLabel;
    DBEdit99: TDBEdit;
    Label153: TLabel;
    DBEdit100: TDBEdit;
    DBLookupComboBox5: TDBLookupComboBox;
    Label16: TLabel;
    DBEdit15: TDBEdit;
    Label155: TLabel;
    BitBtn31: TBitBtn;
    Label156: TLabel;
    Edit14: TEdit;
    Label157: TLabel;
    Edit15: TEdit;
    DBEdit50: TDBEdit;
    DBCheckBox3: TDBCheckBox;
    Edit8: TEdit;
    Label15: TLabel;
    Label158: TLabel;
    DBEdit13: TDBEdit;
    CheckBox3: TCheckBox;
    BitBtn33: TBitBtn;
    Edit16: TEdit;
    Label160: TLabel;
    Edit9: TEdit;
    Label159: TLabel;
    DBCheckBox4: TDBCheckBox;
    Label80: TLabel;
    DBEdit101: TDBEdit;
    BitBtn34: TBitBtn;
    Edit6: TEdit;
    Edit7: TEdit;
    BitBtn35: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BTNINSERISCI1Click(Sender: TObject);
    procedure BTNMODIFICA2Click(Sender: TObject);
    procedure BTNELIMINA2Click(Sender: TObject);
    procedure BTNANNULLA2Click(Sender: TObject);
    procedure BTNSALVA2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure EditPaint(Groupbox: TGroupbox; Colore:TColor);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox1Enter(Sender: TObject);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Button4Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure TabSheet2Show(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure Edit7KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure Edit8KeyPress(Sender: TObject; var Key: Char);
    procedure Edit9KeyPress(Sender: TObject; var Key: Char);
    procedure Button3Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure TabSheet4Show(Sender: TObject);
    procedure DBEdit23KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit24KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit44KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit29KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure DBMemo2Exit(Sender: TObject);
    procedure DBLookupComboBox2KeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox3KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn32Click(Sender: TObject);
    procedure DBEdit56Exit(Sender: TObject);
    procedure ComboBox3Enter(Sender: TObject);
    procedure ComboBox3Select(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure TabSheet7Show(Sender: TObject);
    procedure Edit28KeyPress(Sender: TObject; var Key: Char);
    procedure Edit30KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox4Enter(Sender: TObject);
    procedure Edit29KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox5Select(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BTNMODIFICA4Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BTNELIMINA4Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure DBEdit58KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit58Exit(Sender: TObject);
    procedure DBEdit57KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit62KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit61KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit77Enter(Sender: TObject);
    procedure DBEdit76Enter(Sender: TObject);
    procedure DBEdit57Enter(Sender: TObject);
    procedure DBEdit58Enter(Sender: TObject);
    procedure DBEdit62Enter(Sender: TObject);
    procedure ComboBox4Select(Sender: TObject);
    procedure ComboBox5Enter(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure DBGrid4DblClick(Sender: TObject);
    procedure DBEdit15Enter(Sender: TObject);
    procedure DBRadioGroup1Exit(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure DBLookupComboBox4KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure TabSheet5Show(Sender: TObject);
    procedure BTNSALVA4Click(Sender: TObject);
    procedure BTNNUOVO4Click(Sender: TObject);
    procedure BTNANNULLA4Click(Sender: TObject);
    procedure DBEdit30Enter(Sender: TObject);
    procedure DBEdit30Exit(Sender: TObject);
    procedure ComboBox2Enter(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure BitBtn19Click(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure BitBtn21Click(Sender: TObject);
    procedure BitBtn22Click(Sender: TObject);
    procedure DBEdit28Exit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BtnScaricaClick(Sender: TObject);
    procedure BtnCaricaClick(Sender: TObject);
    procedure BitBtn39Click(Sender: TObject);
    procedure Combox2EnterOverrideDownLoad(Sender: Tobject);
    procedure Combox2EnterOverrideLoad(Sender: Tobject);
    procedure BitBtn23Click(Sender: TObject);
    procedure TabSheet6Show(Sender: TObject);
    procedure Edit12KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit41Enter(Sender: TObject);
    procedure DBEdit41Exit(Sender: TObject);
    procedure DBEdit44Exit(Sender: TObject);
    procedure DBEdit44Enter(Sender: TObject);
    procedure DBEdit49Enter(Sender: TObject);
    procedure DBEdit49Exit(Sender: TObject);
    procedure ComboBox2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid8DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid7DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BitBtn24Click(Sender: TObject);
    procedure Label22MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BitBtn14Click(Sender: TObject);
    procedure SpinEdit1Exit(Sender: TObject);
    procedure SpinEdit2Exit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn26Click(Sender: TObject);
    procedure BitBtn27Click(Sender: TObject);
    procedure ComboBox7Enter(Sender: TObject);
    procedure ComboBox7KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn29Click(Sender: TObject);
    procedure BitBtn28Click(Sender: TObject);
    procedure DBEdit37KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit39KeyPress(Sender: TObject; var Key: Char);
    procedure DBCheckBox1Click(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BitBtn30Click(Sender: TObject);
    procedure BitBtn25Click(Sender: TObject);
    procedure DBEdit75Enter(Sender: TObject);
    procedure DBEdit25Enter(Sender: TObject);
    procedure DBEdit68Enter(Sender: TObject);
    procedure DBEdit69Enter(Sender: TObject);
    procedure DBEdit70Enter(Sender: TObject);
    procedure DBEdit71Enter(Sender: TObject);
    procedure DBEdit73Enter(Sender: TObject);
    procedure DBEdit74Enter(Sender: TObject);
    procedure DBEdit72Enter(Sender: TObject);
    procedure DBEdit80Enter(Sender: TObject);
    procedure DBEdit81Enter(Sender: TObject);
    procedure DBEdit82Enter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBMemo4Exit(Sender: TObject);
    procedure DBEdit82Exit(Sender: TObject);
    procedure PageControl2Exit(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure ComboBox8Enter(Sender: TObject);
    procedure DBEdit98Enter(Sender: TObject);
    procedure DBEdit98KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit95KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit94KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit96KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit88KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit91KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit92KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit86KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit87KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit15KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn11Click(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure BitBtn31Click(Sender: TObject);
    procedure TabSheet2Hide(Sender: TObject);
    procedure BitBtn33Click(Sender: TObject);
    procedure DBEdit13Enter(Sender: TObject);
    procedure DBEdit13KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure GroupBox7DblClick(Sender: TObject);
    procedure BitBtn34Click(Sender: TObject);
    procedure Edit6Enter(Sender: TObject);
    procedure Edit7Enter(Sender: TObject);
    procedure BitBtn35Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TennisMng: TTennisMng;
  IBQueryDin:TIBQuery;
  DSQuery:TDatasource;
  EanCode:string;
implementation

uses SoftHire, Account, Nolo, Schcli, Pickdate, GesTab, Riparazione, RepAcquistoTennis,
  UnitEtiIncor, RicMat;

{$R *.dfm}

procedure TTennisMng.FormShow(Sender: TObject);
begin
if dm.IBDataSetClientiCLI_NO.Value<>1 then
begin
tabsheet2.TabVisible:=true;
Tabsheet2.Visible:=true;
groupbox14.Visible:=false;
Bitbtn32.Visible:=false;
Bitbtn30.Visible:=true;
end
else
begin
Tabsheet2.Visible:=false;
tabsheet2.TabVisible:=false;
groupbox14.Visible:=true;
Bitbtn32.Visible:=true;
Bitbtn30.Visible:=false;
end;

dm.IBDataSetArticolo.Close;
dm.IBDataSetArticolo.SelectSQL.Clear;
dm.IBDataSetArticolo.SelectSQL.Add('SELECT ARTICOLO.*');
dm.IBDataSetArticolo.SelectSQL.Add('FROM ARTICOLO');
if DM.IBDataSetClientiCLI_NO.Value=1 then
dm.IBDataSetArticolo.SelectSQL.Add('WHERE ARTICOLO.TIPO = "RACCHETTA TENNIS" AND (CLI_NO=1 OR CV=1)')
else
dm.IBDataSetArticolo.SelectSQL.Add('WHERE ARTICOLO.TIPO = "RACCHETTA TENNIS" and CLI_NO="'+DM.IBDataSetClientiCLI_NO.AsString+'"');
dm.IBDataSetArticolo.Open;

DM.IBDataSetSchedule.Close;
DM.IBDataSetSchedule.SelectSQL.Clear;
If DM.IBDataSetClientiCLI_NO.Value=1 then
begin
//Tennismng.DBGrid7.Columns.Clear;
tennismng.TabSheet7.TabVisible:=false;
Tennismng.dbgrid7.Columns.Items[1].Visible:=True;
Tennismng.dbgrid7.Columns.Items[2].Visible:=True;
//SELECT DISTINCT SCHEDULE.SCHED_NO, CLIENTI.* FROM CLIENTI JOIN SCHEDULE ON CLIENTI.CLI_NO=SCHEDULE.CLI_NO JOIN RENTEDART ON SCHEDULE.SCHED_NO=RENTEDART.SCHED_NO JOIN ARTICOLO ON RENTEDART.ART_NO=ARTICOLO.ART_NO
//WHERE (ARTICOLO.TIPO = 'RACCHETTA TENNIS')
DM.IBDataSetSchedule.SelectSQL.Add('SELECT DISTINCT SCHEDULE.*, CLIENTI.* FROM CLIENTI JOIN SCHEDULE ON CLIENTI.CLI_NO=SCHEDULE.CLI_NO JOIN RENTEDART ON SCHEDULE.SCHED_NO=RENTEDART.SCHED_NO JOIN ARTICOLO ON RENTEDART.ART_NO=ARTICOLO.ART_NO');
DM.IBDataSetSchedule.SelectSQL.Add('WHERE (ARTICOLO.TIPO = "RACCHETTA TENNIS")');
end
else
begin
tennismng.TabSheet7.TabVisible:=true;
Tennismng.dbgrid7.Columns.Items[1].Visible:=false;
Tennismng.dbgrid7.Columns.Items[2].Visible:=false;
DM.IBDataSetSchedule.SelectSQL.Add('SELECT DISTINCT SCHEDULE.*, CLIENTI.* FROM CLIENTI JOIN SCHEDULE ON CLIENTI.CLI_NO=SCHEDULE.CLI_NO JOIN RENTEDART ON SCHEDULE.SCHED_NO=RENTEDART.SCHED_NO JOIN ARTICOLO ON RENTEDART.ART_NO=ARTICOLO.ART_NO');
DM.IBDataSetSchedule.SelectSQL.Add('WHERE (ARTICOLO.TIPO = "RACCHETTA TENNIS") AND (SCHEDULE.CLI_NO='+dm.IBDataSetClientiCLI_NO.AsString+')');

//DM.IBDataSetSchedule.SelectSQL.Add('SELECT clienti.COGNRAGSOC, clienti.NOME, clienti.INDIRIZZO, clienti.N_DOC, SCHEDULE.* FROM SCHEDULE JOIN CLIENTI ON SCHEDULE.CLI_NO=CLIENTI.CLI_NO WHERE SCHEDULE.CLI_NO="'+dm.IBDataSetClientiCLI_NO.AsString+'"');
//dm.IBDataSetSchedule.SelectSQL.Add('ORDER BY SCHEDULE.SCHED_NO');
end;
DM.IBDataSetSchedule.Open;
DM.IBDatasetAcq.Close;
DM.IBDatasetAcq.SelectSQL.Clear;
DM.IBDatasetAcq.SelectSQL.Add('SELECT ACQUISTI.* FROM ACQUISTI WHERE ACQUISTI.CLI_NO="'+dm.IBDataSetClientiCLI_NO.AsString+'" and CLI_NO="'+DM.IBDataSetClientiCLI_NO.AsString+'"');
dm.IBDatasetAcq.SelectSQL.Add('ORDER BY ACQ_NO');
DM.IBDatasetAcq.Open;
  DM.IBDataSetRented.Close;
  DM.IBDataSetRented.SelectSQL.Clear;
  DM.IBDataSetRented.SelectSQL.Add('SELECT ARTICOLO.*, RENTEDART.*');
  DM.IBDataSetRented.SelectSQL.Add('FROM ARTICOLO JOIN RENTEDART ON ARTICOLO.ART_NO=RENTEDART.ART_NO');
  if not DM.IBDataSetScheduleSched_no.IsNull then
  DM.IBDataSetRented.SelectSQL.Add('WHERE (ARTICOLO.TIPO="RACCHETTA TENNIS") AND (RENTEDART.SCHED_NO="'+DM.IBDataSetScheduleSCHED_NO.AsString+'")')
  else
  DM.IBDataSetRented.SelectSQL.Add('WHERE (ARTICOLO.TIPO="RACCHETTA TENNIS") AND (RENTEDART.SCHED_NO= NULL)');
  DM.IBDataSetRented.Open;
  Edit13.Text:=inttostr(nolo.menu.QtaArtPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));
  Edit18.Text:=inttostr(nolo.menu.QtaArtApertiPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));
  Edit17.Text:=inttostr(nolo.menu.QtaArtChiusiPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));

if tennismng.TabSheet5.Showing then
Tennismng.TabSheet5show(nil)
else
Tennismng.TabSheet7show(nil);

if DM.IBDataSetArticolo.IsEmpty then
Tennismng.PageControl1.TabIndex:=0
else
begin
Tennismng.PageControl1.TabIndex:=1;
Tennismng.PageControl2.TabIndex:=0;
DM.IBDataSetIncord.Last;
end;



Tennismng.SetFocus;
end;

procedure TTennisMng.BTNINSERISCI1Click(Sender: TObject);
begin
dM.IBDataSetArticolo.Insert;
end;

procedure TTennisMng.BTNMODIFICA2Click(Sender: TObject);
begin
if ACCCONV.ShowModal=Mrok then
begin
if ACCCONV.ClassValue > 1 then
DM.IBDataSetArticolo.Edit
else
nolo.Menu.MsgNoPermission(Classification);
ACCCONV.ClassValue :=0;
end;
end;

procedure TTennisMng.BTNELIMINA2Click(Sender: TObject);
begin
if ACCCONV.ShowModal=Mrok then
begin
if ACCCONV.ClassValue > 2 then
if not DM.IBDataSetArticolo.IsEmpty then
 begin
  if  nolo.menu.QueryIsRented(DM.IBDataSetArticoloART_NO.AsString) or (not nolo.menu.QueryIsArtInRentedArt(DM.IBDataSetArticoloART_NO.AsString)) then
     DM.IBDataSetArticolo.Delete
  else
     MessageDlg('Articolo Presente In Tabella Movimenti, Permesso Negato!', mtInformation, [mbOk], 0);
 end
else
nolo.menu.MsgNoPermission(Classification);
ACCCONV.ClassValue :=0;
end;
end;

procedure TTennisMng.BTNANNULLA2Click(Sender: TObject);
begin
DM.IBDataSetArticolo.Cancel;
end;

procedure TTennisMng.BTNSALVA2Click(Sender: TObject);
begin
If not DM.IBDataSetArticoloEANCODE2.IsNull then
DM.IBDataSetArticolo.Post
else
begin
 MessageDlg('Necessario applicare un codice a barre al prodotto', mtWarning, [mbOk], 0);
 dbedit51.SetFocus;
end;
end;

procedure TTennisMng.CheckBox1Click(Sender: TObject);
begin
if DM.IBDataSetArticolo.State in [dsInsert , dsEdit] then
begin
If Checkbox1.Checked=true then
begin
CheckBox1.State:=cbChecked;
CheckBox1.Caption:='NOSTRO';
DM.IBDataSetArticoloCLI_NO.Value:=1;
end
else
begin
CheckBox1.State:=CbUnchecked;
CheckBox1.Caption:='DEL CLIENTE';
DM.IBDataSetArticoloCLI_NO.Value:=DM.IBDataSetClientiCLI_NO.value;
end;
end;
end;

procedure TTennisMng.EditPaint(Groupbox: TGroupbox; Colore:TColor);
var
I: Integer;
ChildControl: TControl;
begin
for I:= 0 to GroupBox.ControlCount -1 do
begin
ChildControl := GroupBox.Controls[I];
if not((Childcontrol is TLabel) or (Childcontrol is TDBRadioGroup)) then
TDBEDIT(ChildControl).Color:=Colore;
end;
end;




procedure TTennisMng.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if ord(Key) = 10 then begin Edit1.Clear; exit; end;
if ord(Key) = 13 then
begin
DM.IBDataSetArticolo.Close;
DM.IBDataSetArticolo.SelectSQL.Clear;
DM.IBDataSetArticolo.SelectSQL.Add('SELECT *');
DM.IBDataSetArticolo.SelectSQL.Add('FROM ARTICOLO');
if not(Edit1.Text = '') then
DM.IBDataSetArticolo.SelectSQL.Add('WHERE '+DM.IBDataSetParamEANTOSCAN.AsString +' = "'+'*'+ Edit1.Text +'*'+'" AND TIPO LIKE "%TENNIS%" and CLI_NO="'+DM.IBDataSetClientiCLI_NO.AsString+'"' )
else
DM.IBDataSetArticolo.SelectSQL.Add('WHERE TIPO LIKE "%TENNIS%" and CLI_NO="'+DM.IBDataSetClientiCLI_NO.AsString+'"' );
DM.IBDataSetArticolo.SelectSQL.Add('ORDER BY ART_NO');
DM.IBDataSetArticolo.Open;
Edit1.Clear;
end;

end;

procedure TTennisMng.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if ord(Key) = 13 then
begin
DM.IBDataSetArticolo.Close;
DM.IBDataSetArticolo.SelectSQL.Clear;
DM.IBDataSetArticolo.SelectSQL.Add('SELECT *');
DM.IBDataSetArticolo.SelectSQL.Add('FROM ARTICOLO');
if Edit2.Text<>'' then
DM.IBDataSetArticolo.SelectSQL.Add('WHERE ART_NO = "'+ Edit2.Text +'" AND TIPO LIKE "%TENNIS%" and CLI_NO="'+DM.IBDataSetClientiCLI_NO.AsString+'"')
else
DM.IBDataSetArticolo.SelectSQL.Add('WHERE CLI_NO="'+DM.IBDataSetClientiCLI_NO.AsString+'"');
DM.IBDataSetArticolo.SelectSQL.Add('ORDER BY ART_NO');
DM.IBDataSetArticolo.Open;
end;
end;

procedure TTennisMng.ComboBox1Enter(Sender: TObject);
var i:integer;
begin
DM.IBQueryTemp.Close;
DM.IBQueryTemp.SQL.Clear;
DM.IBQueryTemp.SQL.Add('Select distinct tipo from PriceList where Tipo like "%TENNIS%"');
DM.IBQueryTemp.Open;
if not DM.IBQueryTemp.IsEmpty then
begin
ComboBox1.Items.Clear;
DM.IBQueryTemp.First;
while not DM.IBQueryTemp.Eof do
begin
ComboBox1.Items.Add(DM.IBQueryTemp.Fields.Fields[0].asstring);
DM.IBQueryTemp.Next;
end;
end;

end;

procedure TTennisMng.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
DM.IBDataSetArticolo.Close;
DM.IBDataSetArticolo.SelectSQL.Clear;
DM.IBDataSetArticolo.SelectSQL.Add('SELECT *');
DM.IBDataSetArticolo.SelectSQL.Add('FROM ARTICOLO');
DM.IBDataSetArticolo.SelectSQL.Add('WHERE DESCRIZIONE LIKE "'+ Edit4.Text +'%'+'" AND TIPO LIKE "%TENNIS%" and CLI_NO="'+DM.IBDataSetClientiCLI_NO.AsString+'"');
DM.IBDataSetArticolo.SelectSQL.Add('ORDER BY ART_NO');
DM.IBDataSetArticolo.Open;
end;

procedure TTennisMng.Button4Click(Sender: TObject);
begin
  DM.IBDataSetArticolo.Close;
  DM.IBDataSetArticolo.SelectSQL.Clear;
  DM.IBDataSetArticolo.SelectSQL.Add('SELECT *');
  DM.IBDataSetArticolo.SelectSQL.Add('FROM ARTICOLO');
  dM.IBDataSetArticolo.SelectSQL.Add('WHERE TIPO like "%TENNIS%" and CLI_NO="'+DM.IBDataSetClientiCLI_NO.AsString+'"');
  DM.IBDataSetArticolo.SelectSQL.Add('ORDER BY '+ RadioGroup1.Items[RadioGroup1.ItemIndex]);
  DM.IBDataSetArticolo.Open;
Edit28.Clear;
ComboBox4.Clear;
ComboBox5.Clear;
Edit30.Clear;
Edit29.Clear;

end;

procedure TTennisMng.SpeedButton2Click(Sender: TObject);
begin
If (edit4.text='') and (combobox1.Text='') and (edit2.Text='') and (edit1.Text='') then
begin
  DM.IBDataSetArticolo.Close;
  DM.IBDataSetArticolo.SelectSQL.Clear;
  DM.IBDataSetArticolo.SelectSQL.Add('SELECT *');
  DM.IBDataSetArticolo.SelectSQL.Add('FROM ARTICOLO');
  dM.IBDataSetArticolo.SelectSQL.Add('WHERE TIPO like "%TENNIS%" and CLI_NO="'+DM.IBDataSetClientiCLI_NO.AsString+'"');
  DM.IBDataSetArticolo.SelectSQL.Add('ORDER BY '+ RadioGroup1.Items[RadioGroup1.ItemIndex]);
  DM.IBDataSetArticolo.Open;
 end;

end;

procedure TTennisMng.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
nolo.Menu.Edit3KeyPress(Sender,key);
end;

procedure TTennisMng.TabSheet2Show(Sender: TObject);
var
TempQuery:TIBQuery;
begin
pagecontrol2.ActivePageIndex:=0;
label156.Visible:=true;
label157.Visible:=true;
Edit14.Visible:=true;
Edit15.Visible:=true;
tempQuery:=TIBQuery.Create(nil);
TempQuery.Database:=DM.IBDatabase1;
TempQuery.Transaction:=DM.IBTransaction21;
TempQuery.SQL.Clear;
TempQuery.SQL.Add('SELECT COUNT(*) AS NOINC FROM INCORDATURE JOIN ARTICOLO ON INCORDATURE.ART_NO=ARTICOLO.ART_NO WHERE ARTICOLO.CLI_NO="'+DM.IBDataSetClientiCLI_NO.AsString+'"');
TempQuery.Open;
If not TempQuery.IsEmpty then
Edit14.Text:=TempQuery.Fields.fieldbyname('NOINC').asstring
else
Edit15.Text:='0';
TempQuery.Close;
TempQuery.SQL.Clear;
TempQuery.SQL.Add('SELECT FIRST 1 DATAINSERT FROM INCORDATURE JOIN ARTICOLO ON INCORDATURE.ART_NO=ARTICOLO.ART_NO WHERE ARTICOLO.CLI_NO="'+DM.IBDataSetClientiCLI_NO.AsString+'" ORDER BY DATAINSERT DESC');
TempQuery.Open;
If not TempQuery.IsEmpty then
Edit15.Text:=TempQuery.Fields.fieldbyname('DATAINSERT').asstring
else
Edit15.Text:='MAI';

{DM.IBDataSetSchedule.AfterScroll:=nil;
DM.IBDataSetSchedule.Close;
DM.IBDataSetSchedule.SelectSQL.Clear;
DM.IBDataSetSchedule.SelectSQL.Add('SELECT clienti.COGNRAGSOC, clienti.NOME, clienti.INDIRIZZO, clienti.N_DOC, SCHEDULE.* FROM SCHEDULE JOIN CLIENTI ON SCHEDULE.CLI_NO=CLIENTI.CLI_NO WHERE SCHEDULE.CLI_NO="'+dm.IBDataSetClientiCLI_NO.AsString+'"');
dm.IBDataSetSchedule.SelectSQL.Add('ORDER BY SCHED_NO');
DM.IBDataSetSchedule.Open;
  DM.IBDataSetRented.Close;
  DM.IBDataSetRented.SelectSQL.Clear;
  DM.IBDataSetRented.SelectSQL.Add('SELECT ARTICOLO.*, RENTEDART.*');
  DM.IBDataSetRented.SelectSQL.Add('FROM ARTICOLO JOIN RENTEDART ON ARTICOLO.ART_NO=RENTEDART.ART_NO');
  if not DM.IBDataSetScheduleSched_no.IsNull then
  DM.IBDataSetRented.SelectSQL.Add('WHERE (ARTICOLO.TIPO="RACCHETTA TENNIS") AND (RENTEDART.SCHED_NO="'+DM.IBDataSetScheduleSCHED_NO.AsString+'")')
  else
  DM.IBDataSetRented.SelectSQL.Add('WHERE (ARTICOLO.TIPO="RACCHETTA TENNIS") AND (RENTEDART.SCHED_NO= NULL)');
  DM.IBDataSetRented.Open;
  Edit13.Text:=inttostr(nolo.menu.QtaArtPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));
  Edit18.Text:=inttostr(nolo.menu.QtaArtApertiPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));
  Edit17.Text:=inttostr(nolo.menu.QtaArtChiusiPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));
DM.IBDataSetSchedule.AfterScroll:=DM.IBDataSetScheduleAfterScroll;}

DM.IBDatasetAcq.Close;
DM.IBDatasetAcq.SelectSQL.Clear;
DM.ibdatasetAcq.SelectSQL.Add('SELECT * FROM ACQUISTI WHERE (CLI_NO="'+dm.IBDataSetClientiCLI_NO.AsString+'" OR (CLI_NO=1 AND INUSO=1)) AND (TIPOPRODOTTO = "MATASSA") AND (DATAFINE IS NULL) ORDER BY BRAND');
DM.IBDatasetAcq.Open;

dm.IBDataSetIncord.Close;
dm.IBDataSetIncord.SelectSQL.Clear;
dm.IBDataSetIncord.SelectSQL.Add('SELECT * FROM INCORDATURE JOIN ARTICOLO ON INCORDATURE.ART_NO=ARTICOLO.ART_NO WHERE ARTICOLO.CLI_NO="'+dm.IBDataSetClientiCLI_NO.AsString+'"');
dm.IBDataSetIncord.SelectSQL.Add('ORDER BY INC_NO');
dm.IBDataSetIncord.Open;
end;

procedure TTennisMng.TabSheet3Show(Sender: TObject);
begin
DM.IBQueryTemp.Close;
  Edit13.Text:=inttostr(nolo.menu.QtaArtPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));
  Edit18.Text:=inttostr(nolo.menu.QtaArtApertiPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));
  Edit17.Text:=inttostr(nolo.menu.QtaArtChiusiPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));
//DM.IBDataSetSchedule.AfterScroll:=nil;
//DM.IBDataSetSchedule.Close;
//DM.IBDataSetSchedule.SelectSQL.Clear;
//DM.IBDataSetSchedule.SelectSQL.Add('SELECT CLIENTI.NOME, CLIENTI.COGNRAGSOC, RENTEDART.STATO, SCHEDULE.*, ARTICOLO.*');
//DM.IBDataSetSchedule.SelectSQL.Add('FROM (((ARTICOLO JOIN RENTEDART ON ARTICOLO.ART_NO=RENTEDART.ART_NO) JOIN SCHEDULE');
//if dm.IBDataSetScheduleSCHED_NO.AsString='' then
//DM.IBDataSetSchedule.SelectSQL.Add('ON RENTEDART.SCHED_NO=NULL) JOIN CLIENTI ON CLIENTI.CLI_NO=RENTEDART.CLI_NO)')
//else
//DM.IBDataSetSchedule.SelectSQL.Add('ON RENTEDART.SCHED_NO="'+dm.IBDataSetScheduleSCHED_NO.AsString+'") JOIN CLIENTI ON CLIENTI.CLI_NO=RENTEDART.CLI_NO)');
//DM.IBDataSetSchedule.SelectSQL.Add('WHERE RENTEDART.CLI_NO="'+dm.IBDataSetClientiCLI_NO.AsString+'"');
//dm.IBDataSetSchedule.Open;
end;

procedure TTennisMng.Edit7KeyPress(Sender: TObject; var Key: Char);
begin
nolo.Menu.Edit5KeyPress(Sender,key);
end;

procedure TTennisMng.SpeedButton4Click(Sender: TObject);
begin
BrDateForm.date:=date;
if BrDateForm.Showmodal= mrOk then
//    DM.IBDataSetIncordDATARICCONS.Value:=BrDateForm.Date;
    DM.IBDataSetIncordDATARICCONS.AsDateTime:=strtodatetime(datetimetostr(dateof(BrDateForm.Date))+' '+Spinedit1.text+':'+Spinedit2.text+':00');

end;

procedure TTennisMng.SpeedButton6Click(Sender: TObject);
begin
nolo.Menu.SpeedButton6Click(Sender);
end;

procedure TTennisMng.Edit8KeyPress(Sender: TObject; var Key: Char);
begin
nolo.Menu.Edit6KeyPress(sender,key);
end;

procedure TTennisMng.Edit9KeyPress(Sender: TObject; var Key: Char);
Var TmpQuery:TIBQuery;
    i:integer;
const fields : array[1..5] of string = ('DESCRIZIONE','BRAND','BARCODEART','PREZZOPUB','TAGLIA');
begin
tmpquery:=TIBQuery.Create(nil);
tmpquery.Database:=DM.IBDatabase1;
if ord(Key) = 10 then begin Edit9.Clear; exit; end;
if ord(Key) = 13 then
begin
for i:=1 to 5 do
 begin
 DM.IBDataSetACQ.Close;
 DM.IBDataSetACQ.SelectSQL.Clear;
 DM.IBDataSetACQ.SelectSQL.Add('SELECT *');
 DM.IBDataSetACQ.SelectSQL.Add('FROM ACQUISTI');
 if not(Edit9.Text = '') then
  DM.IBDatasetAcq.SelectSQL.Add('WHERE CLI_NO="'+DM.IBDataSetClientiCLI_NO.AsString+'" AND TIPOPRODOTTO="MATASSA" AND '+FIELDS[i]+' LIKE "'+Edit9.Text+'%"')
 else
  DM.IBDatasetAcq.SelectSQL.Add('WHERE CLI_NO="'+DM.IBDataSetClientiCLI_NO.AsString+'" AND TIPOPRODOTTO="MATASSA"');
  DM.IBDatasetAcq.Open;
 if not DM.IBDatasetAcq.IsEmpty then
 Begin
 tmpquery.Close;
 tmpquery.SQL.Clear;
 tmpquery.SQL.Add('SELECT COUNT(*)');
 tmpquery.SQL.Add('FROM ACQUISTI');
 if not(Edit9.Text = '') then
  tmpquery.SQL.Add('WHERE CLI_NO="'+DM.IBDataSetClientiCLI_NO.AsString+'" AND TIPOPRODOTTO="MATASSA" AND '+FIELDS[i]+' LIKE "'+Edit9.Text+'%"')
 else
  tmpquery.SQL.Add('WHERE CLI_NO="'+DM.IBDataSetClientiCLI_NO.AsString+'" AND TIPOPRODOTTO="MATASSA"');
  tmpquery.Open;
 Edit16.Text:=tmpquery.Fields.Fields[0].AsString;
 Edit9.Clear;
 exit;
end
else
 Edit16.Text:='0'

end;
end;

//nolo.Menu.Edit7KeyPress(sender,key);

end;

procedure TTennisMng.Button3Click(Sender: TObject);
begin
nolo.Menu.Button3click(sender);
end;

procedure TTennisMng.Button6Click(Sender: TObject);
begin
nolo.Menu.Button6click(sender);
end;

procedure TTennisMng.Button2Click(Sender: TObject);
begin
nolo.Menu.Button2click(sender);
end;

procedure TTennisMng.FormHide(Sender: TObject);
begin
DM.IBDataSetRented.SelectSQL.Clear;
dM.IBDataSetRented.SelectSQL.Add('SELECT RENTEDART.*, ARTICOLO.* FROM RENTEDART JOIN ARTICOLO ON ARTICOLO.ART_NO = RENTEDART.ART_NO');
dM.IBDataSetRented.SelectSQL.Add('WHERE RENTEDART.SCHED_NO =:SCHEDNO');
dM.IBDataSetRented.SelectSQL.Add('ORDER BY ARTICOLO.TIPO');
DM.IBDataSetRented.Open;
end;

procedure TTennisMng.TabSheet4Show(Sender: TObject);
begin
DM.IBQuerySchTennis.Close;
DM.IBQuerySchTennis.SQL.Clear;
DM.IBQuerySchTennis.SQL.Add('SELECT SCHEDULE.* FROM SCHEDULE WHERE SCHEDULE.CLI_NO="'+dm.IBDataSetClientiCLI_NO.AsString+'"');
DM.IBQuerySchTennis.SQL.Add('ORDER BY SCHED_NO');
DM.IBQuerySchTennis.Open;




end;

procedure TTennisMng.DBEdit23KeyPress(Sender: TObject; var Key: Char);
begin
if key in ['a'..'z']+['A'..'Z'] then
key:=#0;

end;

procedure TTennisMng.DBEdit24KeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['a'..'w']+['y'..'z']+['A'..'W']+['Y'..'Z']+['!'..'/']+[':'..'@']) then
key:=#0;
end;

procedure TTennisMng.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
if key in ['a'..'z']+['A'..'Z'] then
key:=#0;

end;

procedure TTennisMng.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if key in ['a'..'z']+['A'..'Z'] then
key:=#0;

end;

procedure TTennisMng.DBEdit44KeyPress(Sender: TObject; var Key: Char);
begin
if key in ['a'..'z']+['A'..'Z'] then
key:=#0;

end;

procedure TTennisMng.DBEdit29KeyPress(Sender: TObject; var Key: Char);
begin
if key in ['a'..'z']+['A'..'Z'] then
key:=#0;
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


procedure TTennisMng.DBLookupComboBox3KeyPress(Sender: TObject;
  var Key: Char);
begin
if Key= ^I then
Begin
GestTab.Caption:=GestTab.Caption+' Brand';
GestTab.DBGrid1.DataSource:=DM.DSBrand;
if GestTab.Showmodal= mrOk then
Key:=#0;
end;

end;

procedure TTennisMng.FormCreate(Sender: TObject);
  var
  scrx,scry, k:integer ;
  ratio:double;
begin
//  scrx:= GetSystemMetrics(SM_CXSCREEN); {finds screen resolution x value}
//  scry:= (GetSystemMetrics(SM_CYSCREEN)); {finds screen resolution y value}

//  ratio:=min(scrx/screenx,scry/screeny);
  {takes the smaller ratio and makes sure you dont make the window
  too big for the screen}

//  scaleby(trunc(ratio*100),100);
  {scales all controls and attempts to place them in the correct position}

  {to centre the form on the screen}
//  Nolo.Menu.Left:=centreleft(nolo.Menu.width);
//  Nolo.Menu.Top:=centretop(nolo.menu.Height) ;
end;

procedure TTennisMng.DBMemo2Exit(Sender: TObject);
begin
DBEdit51.SetFocus;
end;

procedure TTennisMng.DBLookupComboBox2KeyPress(Sender: TObject;
  var Key: Char);
begin
if Key= ^I then
Begin
GestTab.Caption:=GestTab.Caption+' Stagione';
GestTab.DBGrid1.DataSource:=DM.DSStagione;
if GestTab.Showmodal= mrOk then
Key:=#0;

end;
end;

procedure TTennisMng.BitBtn32Click(Sender: TObject);
begin
nolo.Menu.BitBtn32Click(Sender);

end;

procedure TTennisMng.DBEdit56Exit(Sender: TObject);
begin
if DM.IBDataSetArticoloVENDUTODA.IsNull then
Tennismng.DBEdit56.SetFocus
else
DM.IBDataSetArticolo.Post;
end;

procedure TTennisMng.ComboBox3Enter(Sender: TObject);
begin
DM.IBQueryTemp.Close;
DM.IBQueryTemp.SQL.Clear;
DM.IBQueryTemp.SQL.Add('Select distinct brand from articolo where tipo like "%TENNIS%"');
DM.IBQueryTemp.Open;
if not DM.IBQueryTemp.IsEmpty then
begin
ComboBox3.Items.Clear;
DM.IBQueryTemp.First;
while not DM.IBQueryTemp.Eof do
begin
ComboBox3.Items.Add(DM.IBQueryTemp.Fields.Fields[0].asstring);
DM.IBQueryTemp.Next;
end;
end;

end;

procedure TTennisMng.ComboBox3Select(Sender: TObject);
begin
DM.IBDataSetArticolo.Close;
DM.IBDataSetArticolo.SelectSQL.Clear;
DM.IBDataSetArticolo.SelectSQL.Add('SELECT *');
DM.IBDataSetArticolo.SelectSQL.Add('FROM ARTICOLO');
DM.IBDataSetArticolo.SelectSQL.Add('WHERE BRAND = "'+ ComboBox3.Text +'" AND TIPO LIKE "%TENNIS%" and CLI_NO="'+DM.IBDataSetClientiCLI_NO.AsString+'"');
DM.IBDataSetArticolo.SelectSQL.Add('ORDER BY ART_NO');
DM.IBDataSetArticolo.Open;
end;

procedure TTennisMng.DBGrid2DblClick(Sender: TObject);
begin
 DM.IBDataSetArticolo.Close;
  DM.IBDataSetArticolo.SelectSQL.Clear;
  DM.IBDataSetArticolo.SelectSQL.Add('SELECT *');
  DM.IBDataSetArticolo.SelectSQL.Add('FROM ARTICOLO');
  dM.IBDataSetArticolo.SelectSQL.Add('WHERE TIPO like "%TENNIS%" and CLI_NO="'+DM.IBDataSetClientiCLI_NO.AsString+'"');
  DM.IBDataSetArticolo.SelectSQL.Add('ORDER BY '+DBGrid2.SelectedField.FieldName);
  DM.IBDataSetArticolo.Open;

end;

procedure TTennisMng.DBGrid4DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
DBGrid4.Canvas.Brush.Color := clbtnface;
if  (DM.IBDatasetAcqDATASALDO.IsNull) AND (DM.IBDatasetAcqDATARESO.IsNull) then
DBGrid4.Canvas.Font.Color := clRed;
if  (not  DM.IBDatasetAcqDATASALDO.IsNull) AND (DM.IBDatasetAcqDATARESO.IsNull) then
DBGrid4.Canvas.Font.Color := clGreen;
if  (not  DM.IBDatasetAcqDATASALDO.IsNull) AND (not DM.IBDatasetAcqDATARESO.IsNull) then
DBGrid4.Canvas.Font.Color := $002794E4;
if  (DM.IBDatasetAcqDATASALDO.IsNull) AND (not DM.IBDatasetAcqDATARESO.IsNull) then
DBGrid4.Canvas.Font.Color := clFuchsia;
DBGrid4.DefaultDrawColumnCell(Rect,DataCol,Column, State);
end;

procedure TTennisMng.TabSheet7Show(Sender: TObject);
var tmpQuery:TIBQuery;
begin
TmpQuery:=TIBQuery.Create(nil);
TmpQuery.Database:=DM.IBDatabase1;
TmpQuery.Transaction:=DM.IBTransaction15;
DM.IBDatasetAcq.Close;
DM.IBDatasetAcq.SelectSQL.Clear;
DM.IBDatasetAcq.SelectSQL.Add('SELECT *');
DM.IBDatasetAcq.SelectSQL.Add('FROM ACQUISTI');
DM.IBDatasetAcq.SelectSQL.Add('WHERE CLI_NO="'+DM.IBDataSetClientiCLI_NO.AsString+'"');
DM.IBDatasetAcq.Open;

TmpQuery.Close;
TmpQuery.SQL.Clear;
TmpQuery.SQL.Add('SELECT MIN(DATAINTRO), MAX(DATAINTRO), SUM(QTA), count(*), sum(prezzonet) FROM ACQUISTI WHERE CLI_NO="'+dm.IBDataSetClientiCLI_NO.AsString+'"');
TmpQuery.Open;
if not TmpQuery.Fields.Fields[0].IsNull then
begin
edit39.Text:=TmpQuery.Fields.Fields[0].AsString;
edit40.Text:=TmpQuery.Fields.Fields[1].AsString;
edit32.Text:=TmpQuery.Fields.Fields[1].AsString;
edit41.Text:=TmpQuery.Fields.Fields[2].AsString;
edit31.Text:=TmpQuery.Fields.Fields[3].AsString;
edit37.Text:=TmpQuery.Fields.Fields[4].AsString;
end
else
begin
edit39.Text:='01/01/1899';
edit40.Text:='01/01/1899';
edit32.Text:='01/01/1899';
edit41.Text:='0';
edit31.Text:='0';
edit37.Text:='0';

end;
TmpQuery.Close;
TmpQuery.SQL.Clear;
TmpQuery.SQL.Add('SELECT count(*), sum(prezzonet) FROM ACQUISTI WHERE ((CLI_NO="'+dm.IBDataSetClientiCLI_NO.AsString+'") AND (DATASALDO IS NULL) AND (DATARESO IS NULL)) ');
TmpQuery.Open;
if (TmpQuery.IsEmpty) or (TmpQuery.Fields.Fields[0].IsNull) then

//if TmpQuery.Fields.Fields[0].AsInteger=0 then
begin
edit33.Text:='0';
//edit36.Text:='0';
end
else
begin
edit33.Text:=TmpQuery.Fields.Fields[0].AsString;
//edit36.Text:=TmpQuery.Fields.Fields[1].AsString;
end;

TmpQuery.Close;
TmpQuery.SQL.Clear;
TmpQuery.SQL.Add('SELECT count(*), sum(prezzonet) FROM ACQUISTI WHERE ((CLI_NO="'+dm.IBDataSetClientiCLI_NO.AsString+'") AND (NOT(DATASALDO IS NULL)) AND (DATARESO IS NULL)) ');
TmpQuery.Open;
//if TmpQuery.Fields.Fields[0].AsInteger=0 then
if (TmpQuery.IsEmpty) or (TmpQuery.Fields.Fields[0].value=0) then
begin
edit35.Text:='0';
edit34.Text:='0';
end
else
begin
edit35.Text:=TmpQuery.Fields.Fields[0].AsString;
edit34.Text:=TmpQuery.Fields.Fields[1].AsString;
end;
TmpQuery.Close;
TmpQuery.SQL.Clear;
TmpQuery.SQL.Add('SELECT count(*), sum(prezzonet) FROM ACQUISTI WHERE ((CLI_NO="'+dm.IBDataSetClientiCLI_NO.AsString+'") AND ((DATARESO IS NOT NULL))) ');
TmpQuery.Open;
//if TmpQuery.Fields.Fields[0].AsInteger=0 then
if (TmpQuery.IsEmpty) or (TmpQuery.Fields.Fields[0].value=0) then
begin
edit42.Text:='0';
edit38.Text:='0';
end
else
begin
edit42.Text:=TmpQuery.Fields.Fields[0].AsString;
edit38.Text:=TmpQuery.Fields.Fields[1].AsString;
end;
Edit36.Text:=floattostr(strtofloat(Edit37.Text)-strtofloat(Edit34.Text)-strtofloat(Edit38.Text));
TmpQuery.Close;
TmpQuery.Free;
end;

procedure TTennisMng.Edit28KeyPress(Sender: TObject; var Key: Char);
begin
if ord(Key) = 10 then begin Edit28.Clear; exit; end;
if ord(Key) = 13 then
begin
DM.IBDatasetAcq.Close;
DM.IBDatasetAcq.SelectSQL.Clear;
DM.IBDatasetAcq.SelectSQL.Add('SELECT *');
DM.IBDatasetAcq.SelectSQL.Add('FROM ACQUISTI');
if not(Edit28.Text = '') then
DM.IBDatasetAcq.SelectSQL.Add('WHERE BARCODEART= "'+ Edit28.Text +'" and CLI_NO="'+DM.IBDataSetClientiCLI_NO.AsString+'"')
else
DM.IBDatasetAcq.SelectSQL.Add('WHERE CLI_NO="'+DM.IBDataSetClientiCLI_NO.AsString+'"');
DM.IBDatasetAcq.Open;
Edit28.Clear;
end;
end;

procedure TTennisMng.Edit30KeyPress(Sender: TObject; var Key: Char);
begin
if ord(Key) = 10 then begin Edit30.Clear; exit; end;
if ord(Key) = 13 then
begin
DM.IBDatasetAcq.Close;
DM.IBDatasetAcq.SelectSQL.Clear;
DM.IBDatasetAcq.SelectSQL.Add('SELECT *');
DM.IBDatasetAcq.SelectSQL.Add('FROM ACQUISTI');
If not(edit30.Text='') then
DM.IBDatasetAcq.SelectSQL.Add('WHERE ACQ_NO= "'+ Edit30.Text +'" and CLI_NO="'+DM.IBDataSetClientiCLI_NO.AsString+'"')
else
DM.IBDatasetAcq.SelectSQL.Add('WHERE CLI_NO="'+DM.IBDataSetClientiCLI_NO.AsString+'"');
DM.IBDatasetAcq.Open;
Edit30.Clear;
end;

end;

procedure TTennisMng.ComboBox4Enter(Sender: TObject);
var i:integer;
begin
DM.IBQueryTemp.Close;
DM.IBQueryTemp.SQL.Clear;
DM.IBQueryTemp.SQL.Add('Select distinct tipoprodotto from acquisti');
DM.IBQueryTemp.Open;
if not DM.IBQueryTemp.IsEmpty then
begin
ComboBox4.Items.Clear;
DM.IBQueryTemp.First;
while not DM.IBQueryTemp.Eof do
begin
ComboBox4.Items.Add(DM.IBQueryTemp.Fields.Fields[0].asstring);
DM.IBQueryTemp.Next;
end;
end;

end;


procedure TTennisMng.Edit29KeyPress(Sender: TObject; var Key: Char);
begin
DM.IBDataSetAcq.Close;
DM.IBDataSetAcq.SelectSQL.Clear;
DM.IBDatasetAcq.SelectSQL.Add('SELECT *');
DM.IBDataSetAcq.SelectSQL.Add('FROM ACQUISTI');
DM.IBDataSetAcq.SelectSQL.Add('WHERE DESCRIZIONE LIKE "%'+ Edit29.Text +'%" and CLI_NO="'+DM.IBDataSetClientiCLI_NO.AsString+'"');
DM.IBDataSetAcq.SelectSQL.Add('ORDER BY ACQ_NO');
DM.IBDataSetAcq.Open;

end;

procedure TTennisMng.ComboBox5Select(Sender: TObject);
begin
DM.IBDataSetAcq.Close;
DM.IBDataSetAcq.SelectSQL.Clear;
DM.IBDatasetAcq.SelectSQL.Add('SELECT *');
DM.IBDataSetAcq.SelectSQL.Add('FROM ACQUISTI');
DM.IBDataSetAcq.SelectSQL.Add('WHERE BRAND LIKE "%'+ ComboBox5.Text +'%'+'" and CLI_NO="'+DM.IBDataSetClientiCLI_NO.AsString+'"');
DM.IBDataSetAcq.SelectSQL.Add('ORDER BY ACQ_NO');
DM.IBDataSetAcq.Open;

end;

procedure TTennisMng.BitBtn4Click(Sender: TObject);
begin
DM.IBDataSetAcq.Edit;

end;

procedure TTennisMng.BTNMODIFICA4Click(Sender: TObject);
begin
dm.IBDatasetAcq.Edit;

end;

procedure TTennisMng.BitBtn7Click(Sender: TObject);
begin
DM.IBDataSetAcq.Delete;
end;

procedure TTennisMng.BitBtn9Click(Sender: TObject);
var tmpQuery:TIBQuery;
    sCHEDNO,Artno:string;
begin
Artno:=DM.IBDataSetRentedART_NO.AsString;
Schedno:=DM.IBDataSetRentedSCHED_NO.asString;
tmpQuery:=TIBQuery.Create(nil);
TmpQuery.Database:=DM.IBDatabase1;
TmpQuery.Transaction:=DM.IBTransaction6;

//TmpQuery.SQL.Clear;
//TmpQuery.SQL.Add('DELETE FROM RENTEDART WHERE ART_NO="'+Artno+'" AND SCHED_NO="'+Schedno+'"');
//TmpQuery.ExecSQL;
TmpQuery.SQL.Clear;
TmpQuery.SQL.Add('UPDATE ARTICOLO SET AVAILABLE="DISPONIBILE" WHERE ART_NO="'+Artno+'"');
TmpQuery.ExecSQL;
DM.IBDataSetRented.Delete;
 // Tennismng.edit13.Text:=inttostr(nolo.menu.ScheduleResult(DM.IBDataSetScheduleSCHED_NO.AsInteger));
 // Tennismng.edit17.Text:=inttostr(nolo.menu.QtaArtChiusiPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));
 // Tennismng.edit18.Text:=inttostr(nolo.menu.QtaArtApertiPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));

//nolo.Menu.BitBtn1Click(Sender);
end;

procedure TTennisMng.BTNELIMINA4Click(Sender: TObject);
begin
DM.IBDatasetAcq.Delete;
end;

procedure TTennisMng.BitBtn12Click(Sender: TObject);
begin
If dm.IBDatasetAcqDATARESO.IsNull then
begin
DM.IBDatasetAcq.Edit;
DM.IBDatasetAcqDATARESO.Value:=today;
DM.IBDatasetAcq.Post;
//Bitbtn12.Caption:='RIPRISTINA';
end
else
begin
DM.IBDatasetAcq.Edit;
DM.IBDatasetAcqDATARESO.Clear;
DM.IBDatasetAcq.Post;
//Bitbtn12.Caption:='RESO';
end;

end;

procedure TTennisMng.BitBtn13Click(Sender: TObject);
begin
If dm.IBDatasetAcqDATASALDO.IsNull then
begin
DM.IBDatasetAcq.Edit;
DM.IBDatasetAcqDATASALDO.Value:=now;
DM.IBDatasetAcq.Post;
//Bitbtn13.Caption:='RIPRISTINA';
end
else
begin
DM.IBDatasetAcq.Edit;
DM.IBDatasetAcqDATASALDO.Clear;
DM.IBDatasetAcq.Post;
//Bitbtn13.Caption:='PAGATO';
end;

end;

procedure TTennisMng.BitBtn15Click(Sender: TObject);
begin
if ACCCONV.ShowModal=Mrok then
begin
 if ACCCONV.ClassValue > 0 then
 begin
 if not dm.IBTransaction10.InTransaction then
 dm.IBTransaction10.StartTransaction;
 DM.IBQueryTemp.Close;
 dM.IBQueryTemp.SQL.Clear;
 dM.IBQueryTemp.SQL.Add('UPDATE ACQUISTI SET DATASALDO = "NOW" WHERE CLI_NO="'+DM.IBDataSetClientiCLI_NO.AsString+'"');
 DM.IBQueryTemp.ExecSQL;
 dm.IBTransaction10.Commit;
 DM.IBDatasetAcq.Close;
 DM.IBDatasetAcq.Open;
 tennismng.TabSheet7show(nil);
 end
 else
 nolo.menu.MsgNoPermission(ACCCONV.ClassValue);
ACCCONV.ClassValue :=0;
end;

end;

procedure TTennisMng.SpeedButton11Click(Sender: TObject);
var data:Tdatetime;
begin
if TryStrToDate(edit39.text,data) and TryStrToDate(edit40.text,data)  then
begin
DM.IBQueryTemp.Close;
DM.IBQueryTemp.SQL.Clear;
DM.IBQueryTemp.SQL.Add('SELECT MIN(DATAINTRO), MAX(DATAINTRO), SUM(QTA), count(*), sum(prezzonet) FROM ACQUISTI WHERE CLI_NO="'+dm.IBDataSetClientiCLI_NO.AsString+'" AND (DATAINTRO BETWEEN "'+nolo.menu.DecForSqlDate(strtodate(edit39.Text))+'" AND "'+nolo.menu.DecForSqlDate(strtodate(edit40.Text))+'") ');
DM.IBQueryTemp.Open;
edit32.Text:=DM.IBQueryTemp.Fields.Fields[1].AsString;
edit41.Text:=DM.IBQueryTemp.Fields.Fields[2].AsString;
edit31.Text:=DM.IBQueryTemp.Fields.Fields[3].AsString;
edit37.Text:=DM.IBQueryTemp.Fields.Fields[4].AsString;
DM.IBQueryTemp.Close;
DM.IBQueryTemp.SQL.Clear;
DM.IBQueryTemp.SQL.Add('SELECT count(*), sum(prezzonet) FROM ACQUISTI WHERE ((CLI_NO="'+dm.IBDataSetClientiCLI_NO.AsString+'") AND (DATASALDO IS NULL) AND (DATARESO IS NULL)) AND (DATAINTRO BETWEEN "'+nolo.menu.DecForSqlDate(strtodate(edit39.Text))+'" AND "'+nolo.menu.DecForSqlDate(strtodate(edit40.Text))+'") ');
DM.IBQueryTemp.Open;
edit33.Text:=DM.IBQueryTemp.Fields.Fields[0].AsString;
edit36.Text:=DM.IBQueryTemp.Fields.Fields[1].AsString;
DM.IBQueryTemp.Close;
DM.IBQueryTemp.SQL.Clear;
DM.IBQueryTemp.SQL.Add('SELECT count(*), sum(prezzonet) FROM ACQUISTI WHERE ((CLI_NO="'+dm.IBDataSetClientiCLI_NO.AsString+'") AND (NOT(DATASALDO IS NULL)) AND (DATARESO IS NULL))AND (DATAINTRO BETWEEN "'+nolo.menu.DecForSqlDate(strtodate(edit39.Text))+'" AND "'+nolo.menu.DecForSqlDate(strtodate(edit40.Text))+'")');
DM.IBQueryTemp.Open;
edit35.Text:=DM.IBQueryTemp.Fields.Fields[0].AsString;
edit34.Text:=DM.IBQueryTemp.Fields.Fields[1].AsString;
DM.IBQueryTemp.Close;
DM.IBQueryTemp.SQL.Clear;
DM.IBQueryTemp.SQL.Add('SELECT count(*), sum(prezzonet) FROM ACQUISTI WHERE ((CLI_NO="'+dm.IBDataSetClientiCLI_NO.AsString+'") AND (NOT(DATARESO IS NULL))) AND (DATAINTRO BETWEEN "'+nolo.menu.DecForSqlDate(strtodate(edit39.Text))+'" AND "'+nolo.menu.DecForSqlDate(strtodate(edit40.Text))+'")');
DM.IBQueryTemp.Open;
edit42.Text:=DM.IBQueryTemp.Fields.Fields[0].AsString;
edit38.Text:=DM.IBQueryTemp.Fields.Fields[1].AsString;
end;
end;

procedure TTennisMng.SpeedButton9Click(Sender: TObject);
begin
BrDateForm.date:=date;
if BrDateForm.Showmodal= mrOk then
    EDIT39.Text:=datetostr(BrDateForm.Date);

end;

procedure TTennisMng.SpeedButton10Click(Sender: TObject);
begin
BrDateForm.date:=date;
if BrDateForm.Showmodal= mrOk then
    EDIT40.Text:=datetostr(BrDateForm.Date);

end;

procedure TTennisMng.DBEdit58KeyPress(Sender: TObject; var Key: Char);
begin
if key in ['a'..'z']+['A'..'Z'] then
key:=#0;
end;

procedure TTennisMng.DBEdit58Exit(Sender: TObject);
begin
DM.IBDatasetAcqSCONTO.AsFloat:=abs(roundTo(((100*DM.IBDatasetAcqPREZZONET.AsFloat/DM.IBDatasetAcqPREZZOPUB.AsFloat)-100 ),-2));
if Tennismng.TabSheet7.Showing then
DBEdit53.SetFocus
else
DBEdit9.SetFocus;

end;

procedure TTennisMng.DBEdit57KeyPress(Sender: TObject; var Key: Char);
begin
if key in ['a'..'z']+['A'..'Z'] then
key:=#0;

end;

procedure TTennisMng.DBEdit62KeyPress(Sender: TObject; var Key: Char);
begin
if key in ['a'..'z']+['A'..'Z'] then
key:=#0;

end;

procedure TTennisMng.DBEdit61KeyPress(Sender: TObject; var Key: Char);
begin
if key in ['a'..'z']+['A'..'Z'] then
key:=#0;

end;

procedure TTennisMng.DBEdit77Enter(Sender: TObject);
begin
DM.IBDataSetArticoloPREZZORIS.EditMask:='€.9999,99;1;_'

end;

procedure TTennisMng.DBEdit76Enter(Sender: TObject);
begin
(sender as TDBEdit).Field.EditMask:='€.9999,99;1;_'
end;

procedure TTennisMng.DBEdit57Enter(Sender: TObject);
begin
DM.IBDatasetAcqPREZZOPUB.EditMask:='€.9999,99;1;_'

end;

procedure TTennisMng.DBEdit58Enter(Sender: TObject);
begin
DM.IBDatasetAcqPREZZONET.EditMask:='€.9999,99;1;_'

end;

procedure TTennisMng.DBEdit62Enter(Sender: TObject);
begin
DM.IBDatasetAcqSCONTO.EditMask:='999%;1;_';

end;

procedure TTennisMng.ComboBox4Select(Sender: TObject);
begin
DM.IBDataSetAcq.Close;
DM.IBDataSetAcq.SelectSQL.Clear;
DM.IBDatasetAcq.SelectSQL.Add('SELECT *');
DM.IBDataSetAcq.SelectSQL.Add('FROM ACQUISTI');
DM.IBDataSetAcq.SelectSQL.Add('WHERE TIPOPRODOTTO LIKE "%'+ ComboBox4.Text +'%'+'" and CLI_NO="'+DM.IBDataSetClientiCLI_NO.AsString+'"');
DM.IBDataSetAcq.SelectSQL.Add('ORDER BY ACQ_NO');
DM.IBDataSetAcq.Open;

end;

procedure TTennisMng.ComboBox5Enter(Sender: TObject);
begin
DM.IBQueryTemp.Close;
DM.IBQueryTemp.SQL.Clear;
DM.IBQueryTemp.SQL.Add('Select distinct brand from acquisti');
DM.IBQueryTemp.Open;
if not DM.IBQueryTemp.IsEmpty then
begin
ComboBox5.Items.Clear;
DM.IBQueryTemp.First;
while not DM.IBQueryTemp.Eof do
begin
ComboBox5.Items.Add(DM.IBQueryTemp.Fields.Fields[0].asstring);
DM.IBQueryTemp.Next;
end;
end;
end;

procedure TTennisMng.Button8Click(Sender: TObject);
begin
 DM.IBDataSetAcq.Close;
  DM.IBDataSetAcq.SelectSQL.Clear;
  DM.IBDataSetAcq.SelectSQL.Add('SELECT *');
  DM.IBDataSetAcq.SelectSQL.Add('FROM ACQUISTI');
  DM.IBDataSetAcq.SelectSQL.Add('WHERE CLI_NO="'+DM.IBDataSetClientiCLI_NO.AsString+'"');
  DM.IBDataSetAcq.SelectSQL.Add('ORDER BY ACQ_NO');
  DM.IBDataSetAcq.Open;
Edit28.Clear;
ComboBox4.Clear;
ComboBox5.Clear;
Edit30.Clear;
Edit29.Clear;
end;

procedure TTennisMng.DBGrid4DblClick(Sender: TObject);
begin
DM.IBDatasetAcq.Close;
  DM.IBDatasetAcq.SelectSQL.Clear;
  DM.IBDatasetAcq.SelectSQL.Add('SELECT *');
  DM.IBDatasetAcq.SelectSQL.Add('FROM ACQUISTI');
  dM.IBDatasetAcq.SelectSQL.Add('WHERE CLI_NO="'+DM.IBDataSetClientiCLI_NO.AsString+'"');
  DM.IBDatasetAcq.SelectSQL.Add('ORDER BY '+DBGrid4.SelectedField.FieldName);
  DM.IBDatasetAcq.Open;
end;

procedure TTennisMng.DBEdit15Enter(Sender: TObject);
begin
DM.IBDataSetMatPREZZO_PUB.EditMask:='€.9999,99;1;_'

end;

procedure TTennisMng.DBRadioGroup1Exit(Sender: TObject);
begin
DBEdit9.SetFocus;
end;

procedure TTennisMng.BitBtn3Click(Sender: TObject);
begin
dm.IBDatasetAcq.Insert;
end;

procedure TTennisMng.BitBtn5Click(Sender: TObject);
begin
DM.IBDataSetAcq.Post;

end;

procedure TTennisMng.BitBtn6Click(Sender: TObject);
begin
DM.IBDataSetAcq.Cancel;
end;

procedure TTennisMng.BitBtn8Click(Sender: TObject);
begin
 if ((Sender as Tbitbtn).Caption='RIPRISTINA') then
  begin
   IF DM.IBDataSetAcq.State=dsbrowse then
    begin
    DM.IBDataSetAcq.Edit;
    DM.IBDataSetAcqDATAFINE.Clear;
    DM.IBDataSetAcq.post;
    end
   else
   DM.IBDataSetAcqDATAFINE.clear;
  end
 else
  begin
   IF DM.IBDataSetAcq.State=dsbrowse then
    begin
     DM.IBDataSetAcq.Edit;
     DM.IBDataSetAcqDATAFINE.Value:=now;
     DM.IBDataSetAcq.post;
    end
   else
   DM.IBDataSetAcqDATAFINE.Value:=now;
 end;
end;

procedure TTennisMng.DBLookupComboBox4KeyPress(Sender: TObject;
  var Key: Char);
begin
if Key= ^I then
begin
GestTab.Caption:=GestTab.Caption+'Tipo Articolo';
GestTab.DBGrid1.DataSource:=DM.DSTipo;
if GestTab.Showmodal= mrOk then
Key:=#0;
GestTab.DBGrid1.DataSource:=Nil;

end;
end;

procedure TTennisMng.DBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
DBGrid3.Canvas.Brush.Color := clbtnface;
if DM.IBDatasetAcqDATAFINE.IsNull then
DBGrid3.Canvas.Font.Color := clGreen
else
DBGrid3.Canvas.Font.Color := clRed;

if DM.IBDatasetAcqINUSO.Value=1 then
DBGrid3.Canvas.Font.Color :=$ffa500;

DBGrid3.DefaultDrawColumnCell(Rect,DataCol,Column, State);

end;

procedure TTennisMng.TabSheet5Show(Sender: TObject);
begin
DM.IBDatasetAcq.Close;
DM.IBDatasetAcq.SelectSQL.Clear;
//DM.IBDatasetAcq.SelectSQL.Add('SELECT COUNT(*)AS GIAC,DESCRIZIONE, BRAND, PREZZOPUB, PREZZONET, TAGLIA, SCONTO, SEZIONE, INUSO, COLOREMATASSA, DATAFINE');
//DM.IBDatasetAcq.SelectSQL.Add('FROM ACQUISTI');
//DM.IBDatasetAcq.SelectSQL.Add('WHERE CLI_NO="'+DM.IBDataSetClientiCLI_NO.AsString+'" AND TIPOPRODOTTO="MATASSA"');
//DM.IBDatasetAcq.SelectSQL.Add('GROUP BY DESCRIZIONE, BRAND, PREZZOPUB, PREZZONET, TAGLIA, SCONTO, SEZIONE, INUSO, COLOREMATASSA, DATAFINE');
DM.IBDatasetAcq.SelectSQL.Add('SELECT *');
DM.IBDatasetAcq.SelectSQL.Add('FROM ACQUISTI');
DM.IBDatasetAcq.SelectSQL.Add('WHERE CLI_NO="'+DM.IBDataSetClientiCLI_NO.AsString+'" AND TIPOPRODOTTO="MATASSA"');
DM.IBDatasetAcq.SelectSQL.Add('ORDER BY BRAND, DESCRIZIONE');
DM.IBDatasetAcq.Open;
//IBQueryDin:=TIbQuery.Create(nil);
//IBQueryDin.Database:=DM.IBDatabase1;
//IBQueryDin.Transaction:=DM.IBTransaction15;
//IBQueryDin.SQL.Add('SELECT COUNT(*)AS GIAC,DESCRIZIONE, BRAND, PREZZOPUB, PREZZONET, TAGLIA, SCONTO, SEZIONE, INUSO, COLOREMATASSA, DATAFINE');
//IBQueryDin.SQL.Add('FROM ACQUISTI');
//IBQueryDin.SQL.Add('WHERE CLI_NO="'+DM.IBDataSetClientiCLI_NO.AsString+'" AND TIPOPRODOTTO="MATASSA"');
//IBQueryDin.SQL.Add('GROUP BY DESCRIZIONE, BRAND, PREZZOPUB, PREZZONET, TAGLIA, SCONTO, SEZIONE, INUSO, COLOREMATASSA, DATAFINE');
//IBQueryDin.Open;
//DSQuery:=TDatasource.Create(nil);
//DSQuery.DataSet:=IBQueryDin;
//DBGrid3.DataSource:=DSQuery;


end;

procedure TTennisMng.BTNSALVA4Click(Sender: TObject);
begin
DM.IBDatasetAcq.Post;
end;

procedure TTennisMng.BTNNUOVO4Click(Sender: TObject);
begin
DM.IBDatasetAcq.Insert;
end;

procedure TTennisMng.BTNANNULLA4Click(Sender: TObject);
begin
dM.IBDatasetAcq.Cancel;
end;

procedure TTennisMng.DBEdit30Enter(Sender: TObject);
begin
nolo.Menu.DBEdit36Enter(Sender);
end;

procedure TTennisMng.DBEdit30Exit(Sender: TObject);
begin
nolo.Menu.DBEdit36Exit(Sender);
end;

procedure TTennisMng.ComboBox2Enter(Sender: TObject);
var tmpQuery:TIBQuery;
begin
Combobox2.Items.Clear;
Combobox2.clear;
tmpQuery:=TIBQuery.Create(nil);
TmpQuery.Database:=DM.IBDatabase1;
TmpQuery.Transaction:=DM.IBTransaction6;
TmpQuery.SQL.Clear;
TmpQuery.SQL.Add('SELECT ART_NO, DESCRIZIONE, BRAND, COLORE, MISURA, TIPO, STAGIONE FROM ARTICOLO WHERE (AVAILABLE="DISPONIBILE" AND TIPO LIKE "%TENNIS%") AND (CLI_NO=1 OR CV=1) AND (NOT CLI_NO="'+dm.IBDataSetClientiCLI_NO.AsString+'")  ORDER BY BRAND');
///TmpQuery.SQL.Add('SELECT ART_NO, DESCRIZIONE, BRAND, COLORE, MISURA, TIPO, STAGIONE FROM ARTICOLO WHERE AVAILABLE="DISPONIBILE" AND TIPO LIKE "%TENNIS%" ORDER BY BRAND');
TmpQuery.Open;
If not TmpQuery.IsEmpty then
begin
tmpquery.First;
While not tmpquery.Eof do
begin
combobox2.Items.Add(tmpQuery.fieldbyname('BRAND').AsString+' '+tmpQuery.fieldbyname('DESCRIZIONE').AsString+' - L'+tmpQuery.fieldbyname('MISURA').AsString+' - '+tmpQuery.fieldbyname('COLORE').AsString+' - '+tmpQuery.fieldbyname('STAGIONE').AsString+' > '+tmpQuery.fieldbyname('ART_NO').AsString);
tmpquery.Next;
end;
end;
TmpQuery.Free;
end;

procedure TTennisMng.Combox2EnterOverrideLoad(Sender: Tobject);
var tmpQuery:TIBQuery;
begin
tmpQuery:=TIBQuery.Create(nil);
TmpQuery.Database:=DM.IBDatabase1;
TmpQuery.Transaction:=DM.IBTransaction6;
TmpQuery.SQL.Clear;
TmpQuery.SQL.Add('SELECT ART_NO, DESCRIZIONE, BRAND, COLORE, MISURA, TIPO, STAGIONE FROM ARTICOLO WHERE (AVAILABLE="DISPONIBILE" AND TIPO LIKE "%TENNIS%") AND (CLI_NO=1 OR CV=1) AND (NOT CLI_NO="'+dm.IBDataSetClientiCLI_NO.AsString+'")  ORDER BY BRAND');
//TmpQuery.SQL.Add('SELECT ART_NO, DESCRIZIONE, BRAND, COLORE, MISURA, TIPO, STAGIONE FROM ARTICOLO WHERE (AVAILABLE="DISPONIBILE" AND TIPO LIKE "%TENNIS%") AND (CLI_NO=1 OR CV=1)  ORDER BY BRAND');
//TmpQuery.SQL.Add('SELECT ART_NO, DESCRIZIONE, BRAND, COLORE, MISURA, TIPO, STAGIONE FROM ARTICOLO WHERE AVAILABLE="DISPONIBILE" AND TIPO LIKE "%TENNIS%" ORDER BY BRAND');
TmpQuery.Open;
If not TmpQuery.IsEmpty then
begin
tmpquery.First;
Combobox2.Clear;
While not tmpquery.Eof do
begin
(Sender as Tcombobox).Items.Add(tmpQuery.fieldbyname('BRAND').AsString+' '+tmpQuery.fieldbyname('DESCRIZIONE').AsString+' - L'+tmpQuery.fieldbyname('MISURA').AsString+' - '+tmpQuery.fieldbyname('COLORE').AsString+' - '+tmpQuery.fieldbyname('STAGIONE').AsString+' > '+tmpQuery.fieldbyname('ART_NO').AsString);
tmpquery.Next;
end;
end;
TmpQuery.Free;
end;

procedure TTennisMng.Combox2EnterOverrideDownLoad(Sender: Tobject);
var tmpQuery:TIBQuery;
begin
tmpQuery:=TIBQuery.Create(nil);
TmpQuery.Database:=DM.IBDatabase1;
TmpQuery.Transaction:=DM.IBTransaction6;
TmpQuery.SQL.Clear;
TmpQuery.SQL.Add('SELECT ART_NO, DESCRIZIONE, BRAND, COLORE, MISURA, TIPO, STAGIONE FROM RENTEDART JOIN ARTICOLO ON ARTICOLO.ART_NO=RENTEDART.ART_NO  WHERE RENTEDART.STATO="NOLEGGIATO" AND RENTEDART.SCHED_NO="'+dm.IBDataSetScheduleSCHED_NO.AsString+'" ORDER BY BRAND');
TmpQuery.Open;
If not TmpQuery.IsEmpty then
begin
tmpquery.First;
Combobox2.Clear;
While not tmpquery.Eof do
begin
(Sender as Tcombobox).Items.Add(tmpQuery.fieldbyname('BRAND').AsString+' '+tmpQuery.fieldbyname('DESCRIZIONE').AsString+' - L'+tmpQuery.fieldbyname('MISURA').AsString+' - '+tmpQuery.fieldbyname('COLORE').AsString+' - '+tmpQuery.fieldbyname('STAGIONE').AsString+' > '+tmpQuery.fieldbyname('ART_NO').AsString);
tmpquery.Next;
end;
end;
TmpQuery.Free;
end;









procedure TTennisMng.BitBtn18Click(Sender: TObject);
begin
DM.IBDataSetSchedule.Insert;
end;

procedure TTennisMng.BitBtn19Click(Sender: TObject);
begin
nolo.Menu.BTNMODIFICA3Click(sender);
end;

procedure TTennisMng.BitBtn20Click(Sender: TObject);
begin
NOLO.Menu.BTNSALVA3Click(Sender);
end;

procedure TTennisMng.BitBtn21Click(Sender: TObject);
begin
DM.IBDataSetSchedule.Cancel;
end;

procedure TTennisMng.BitBtn22Click(Sender: TObject);
begin
nolo.Menu.BTNELIMINA3Click(Sender);
end;

procedure TTennisMng.DBEdit28Exit(Sender: TObject);
begin
nolo.Menu.DBEdit34Exit(Sender);
end;

procedure TTennisMng.SpeedButton1Click(Sender: TObject);
begin
nolo.Menu.SpeedButton4Click(Sender);end;

procedure TTennisMng.SpeedButton3Click(Sender: TObject);
begin
nolo.Menu.SpeedButton6Click(Sender);

end;

procedure TTennisMng.Button5Click(Sender: TObject);
begin
nolo.Menu.Button1click(sender);

end;

procedure TTennisMng.Button9Click(Sender: TObject);
begin
nolo.Menu.Button2click(sender);

end;

procedure TTennisMng.Button10Click(Sender: TObject);
begin
nolo.Menu.Button6click(sender);

end;

procedure TTennisMng.Button11Click(Sender: TObject);
begin
nolo.Menu.Button3click(sender);

end;

procedure TTennisMng.BitBtn10Click(Sender: TObject);
var tmpQuery1:TIBQuery;
    tmpQuery2:TIBQuery;
    tmpTran:TIBTransaction;
    SCHEDNO:string;
begin
Tmptran:= TIBTransaction.create (nil);
TMPtran.DefaultDatabase:=DM.IBDatabase1;
tmpQuery1:=TIBQuery.Create(nil);
TmpQuery1.Database:=DM.IBDatabase1;
tmpQuery2:=TIBQuery.Create(nil);
TmpQuery2.Database:=DM.IBDatabase1;
//TmpQuery2.Transaction:=TmpTran;
TmpQuery2.Transaction:=DM.IBTransaction6;
TmpQuery1.Transaction:=DM.IBTransaction6;
TmpQuery1.SQL.Clear;
TmpQuery1.SQL.Add('SELECT ART_NO as ARTNO FROM RENTEDART WHERE SCHED_NO="'+DM.IBDataSetScheduleSCHED_NO.AsString+'"');
TmpQuery1.Open;
TmpQuery1.First;
//if not Tmptran.InTransaction then
//Tmptran.StartTransaction;
while not TmpQuery1.Eof do
begin
TmpQuery2.Close;
TmpQuery2.SQL.Clear;
TmpQuery2.SQL.Add('UPDATE ARTICOLO SET AVAILABLE="DISPONIBILE" WHERE ART_NO ="'+Tmpquery1.fieldbyname('ARTNO').AsString+'"');
TmpQuery2.ExecSQL;
TmpQuery1.Next;
end;
//if Tmptran.InTransaction then
//Tmptran.Commit;
DM.IBDataSetRented.First;
while not DM.IBDataSetRented.IsEmpty do
DM.IBDataSetRented.Delete;

{TMpQuery1.Close;
TmpQuery1.SQL.Clear;
TmpQuery1.SQL.Add('DELETE FROM RENTEDART WHERE SCHED_NO="'+DM.IBDataSetScheduleSCHED_NO.AsString+'"');
TmpQuery1.ExecSQL;}

TmpQuery1.Free;
TmpQuery2.Free;
TmpTran.Free;


{DM.IBDataSetRented.Close;
DM.IBDataSetRented.SelectSQL.Clear;
dM.IBDataSetRented.SelectSQL.Add('SELECT articolo.ART_NO, rentedart.renart_no, rentedart.sched_no, articolo.cli_no, articolo.TIPO,');
dM.IBDataSetRented.SelectSQL.Add('articolo.BRAND,articolo.DESCRIZIONE,articolo.MISURA,articolo.STAGIONE,rentedart.STATO,count(rentedart.ART_NO)  AS QTA, articolo.available, articolo.eancode, rentedart.eta,');
dM.IBDataSetRented.SelectSQL.Add('rentedart.peso, rentedart.altezza, rentedart.sesso, rentedart.cmsuola, rentedart.livello,rentedart.zfactor, rentedart.codice');
dM.IBDataSetRented.SelectSQL.Add('FROM articolo join rentedart on articolo.art_no=rentedart.art_no join schedule on schedule.SCHED_NO=rentedart.sched_no');
dM.IBDataSetRented.SelectSQL.Add('WHERE RENTEDART.SCHED_NO = :SCHEDNO');
dM.IBDataSetRented.SelectSQL.Add('GROUP BY articolo.ART_NO, rentedart.renart_no,rentedart.sched_no, articolo.cli_no, articolo.ART_NO,articolo.tipo,articolo.BRAND,articolo.DESCRIZIONE,articolo.MISURA,articolo.STAGIONE,rentedart.STATO,');
dM.IBDataSetRented.SelectSQL.Add('rentedart.ART_NO, articolo.available, articolo.eancode, rentedart.eta, rentedart.peso,rentedart.altezza, rentedart.sesso, rentedart.cmsuola, rentedart.livello,rentedart.zfactor, rentedart.codice');
  DM.IBDataSetRented.Close;
  DM.IBDataSetRented.Prepare;
  DM.IBDataSetRented.Params.ByName('SCHEDNO').AsInteger:=DM.IBDataSetScheduleSCHED_NO.AsInteger;
  DM.IBDataSetRented.open;}
//nolo.Menu.BitBtn2Click(Sender);
//   Tennismng.edit13.Text:=inttostr(nolo.menu.ScheduleResult(DM.IBDataSetScheduleSCHED_NO.AsInteger));
//   Tennismng.edit17.Text:=inttostr(nolo.menu.QtaArtChiusiPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));
//   Tennismng.edit18.Text:=inttostr(nolo.menu.QtaArtApertiPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));

end;

procedure TTennisMng.BtnScaricaClick(Sender: TObject);
begin
 nolo.Menu.BtnScaricaClick(Sender);
Edit12.Color:=ClRed;
Edit12.OnKeyPress:=nolo.Menu.Edit7KeyPress;
Combobox2.Color:=ClRed;
Combobox2.OnEnter:=Combox2EnterOverrideDownLoad;
end;

procedure TTennisMng.BtnCaricaClick(Sender: TObject);
begin
nolo.Menu.BtnCaricaClick(Sender);
Edit12.Color:=ClLime;
Edit12.OnKeyPress:=nolo.Menu.Edit5KeyPress;
Combobox2.Color:=ClLime;
Combobox2.OnEnter:=Combox2EnterOverrideLoad;

end;

procedure TTennisMng.BitBtn39Click(Sender: TObject);
begin
nolo.Menu.BitBtn39Click(Sender);
end;






procedure TTennisMng.BitBtn23Click(Sender: TObject);
begin
if Bitbtn23.Caption='PAGATO' then
begin
DM.IBDataSetSchedulePAGATO.Value:=0;
bitbtn23.Caption:='RIPRISTINA';
end
else
begin
DM.IBDataSetSchedulePAGATO.Value:=1;
bitbtn23.Caption:='PAGATO';
end;
end;

procedure TTennisMng.TabSheet6Show(Sender: TObject);
begin
DM.IBDataSetSchedule.Close;
DM.IBDataSetSchedule.SelectSQL.Clear;
DM.IBDataSetSchedule.Close;
DM.IBDataSetSchedule.SelectSQL.Clear;
If DM.IBDataSetClientiCLI_NO.Value=1 then
begin
//Tennismng.DBGrid7.Columns.Clear;
if not (tennismng.DBGrid7.Columns.Items[1].FieldName='COGNRAGSOC') then
begin
Tennismng.dbgrid7.Columns.Items[1].Visible:=True;
Tennismng.dbgrid7.Columns.Items[2].Visible:=True;
end;
//SELECT DISTINCT SCHEDULE.SCHED_NO, CLIENTI.* FROM CLIENTI JOIN SCHEDULE ON CLIENTI.CLI_NO=SCHEDULE.CLI_NO JOIN RENTEDART ON SCHEDULE.SCHED_NO=RENTEDART.SCHED_NO JOIN ARTICOLO ON RENTEDART.ART_NO=ARTICOLO.ART_NO
//WHERE (ARTICOLO.TIPO = 'RACCHETTA TENNIS')
DM.IBDataSetSchedule.SelectSQL.Add('SELECT DISTINCT SCHEDULE.*, CLIENTI.* FROM CLIENTI JOIN SCHEDULE ON CLIENTI.CLI_NO=SCHEDULE.CLI_NO JOIN RENTEDART ON SCHEDULE.SCHED_NO=RENTEDART.SCHED_NO JOIN ARTICOLO ON RENTEDART.ART_NO=ARTICOLO.ART_NO');
DM.IBDataSetSchedule.SelectSQL.Add('WHERE (ARTICOLO.TIPO = "RACCHETTA TENNIS")');
end
else
begin
if tennismng.DBGrid7.Columns.Items[1].FieldName='COGNRAGSOC' then
begin
Tennismng.dbgrid7.Columns.Items[1].Visible:=False;
Tennismng.dbgrid7.Columns.Items[2].Visible:=False;
end;
DM.IBDataSetSchedule.SelectSQL.Add('SELECT DISTINCT SCHEDULE.*, CLIENTI.* FROM CLIENTI JOIN SCHEDULE ON CLIENTI.CLI_NO=SCHEDULE.CLI_NO JOIN RENTEDART ON SCHEDULE.SCHED_NO=RENTEDART.SCHED_NO JOIN ARTICOLO ON RENTEDART.ART_NO=ARTICOLO.ART_NO');
DM.IBDataSetSchedule.SelectSQL.Add('WHERE (ARTICOLO.TIPO = "RACCHETTA TENNIS") AND (SCHEDULE.CLI_NO='+dm.IBDataSetClientiCLI_NO.AsString+')');

//DM.IBDataSetSchedule.SelectSQL.Add('SELECT clienti.COGNRAGSOC, clienti.NOME, clienti.INDIRIZZO, clienti.N_DOC, SCHEDULE.* FROM SCHEDULE JOIN CLIENTI ON SCHEDULE.CLI_NO=CLIENTI.CLI_NO WHERE SCHEDULE.CLI_NO="'+dm.IBDataSetClientiCLI_NO.AsString+'"');
//dm.IBDataSetSchedule.SelectSQL.Add('ORDER BY SCHEDULE.SCHED_NO');
end;
DM.IBDataSetSchedule.Open;




//DM.IBDataSetSchedule.SelectSQL.Add('SELECT DISTINCT SCHEDULE.*,clienti.*');
//DM.IBDataSetSchedule.SelectSQL.Add('FROM ARTICOLO JOIN RENTEDART ON ARTICOLO.ART_NO=RENTEDART.ART_NO JOIN SCHEDULE');
//DM.IBDataSetSchedule.SelectSQL.Add('ON RENTEDART.SCHED_NO=SCHEDULE.SCHED_NO JOIN CLIENTI ON CLIENTI.CLI_NO=RENTEDART.CLI_NO');
//DM.IBDataSetSchedule.SelectSQL.Add('WHERE SCHEDULE.CLI_NO="'+dm.IBDataSetClientiCLI_NO.AsString+'" AND ARTICOLO.TIPO LIKE "%RACCHETTA TENNIS%"');
//dm.IBDataSetSchedule.Open;
Edit13.Text:=inttostr(nolo.menu.QtaArtPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));
Edit18.Text:=inttostr(nolo.menu.QtaArtApertiPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));
Edit17.Text:=inttostr(nolo.menu.QtaArtChiusiPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));
end;

procedure TTennisMng.Edit12KeyPress(Sender: TObject; var Key: Char);
begin
nolo.Menu.Edit5KeyPress(sender,Key);
end;

procedure TTennisMng.DBEdit41Enter(Sender: TObject);
begin
nolo.Menu.DBEdit37Enter(Sender);
end;

procedure TTennisMng.DBEdit41Exit(Sender: TObject);
begin
nolo.Menu.DBEdit37Exit(Sender);

end;

procedure TTennisMng.DBEdit44Exit(Sender: TObject);
begin
nolo.Menu.DBEdit38Exit(Sender);
end;

procedure TTennisMng.DBEdit44Enter(Sender: TObject);
begin
nolo.Menu.DBEdit38Enter(Sender);

end;

procedure TTennisMng.DBEdit49Enter(Sender: TObject);
begin
nolo.Menu.DBEdit39Enter(Sender);

end;

procedure TTennisMng.DBEdit49Exit(Sender: TObject);
begin
nolo.Menu.DBEdit39Exit(Sender);
end;

procedure TTennisMng.ComboBox2KeyPress(Sender: TObject; var Key: Char);
begin
if ord(key)=13 then
begin
if combobox2.Color=clLime then
begin
nolo.Menu.edit5.Text:=copy(combobox2.Text,pos('>',Combobox2.Text)+2,length(Combobox2.text));
nolo.Menu.edit5Keypress(nolo.Menu.Edit5,key);
Combox2EnterOverrideLoad(Combobox2);
end
else
begin
nolo.Menu.edit7.Text:=copy(combobox2.Text,pos('>',Combobox2.Text)+2,length(Combobox2.text));
nolo.Menu.Edit7KeyPress(nolo.menu.Edit7,key);
Combox2EnterOverrideDownLoad(Combobox2);
end;
key:=#0;
end;
end;

procedure TTennisMng.DBGrid8DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
nolo.Menu.DBGrid5DrawColumnCell(Sender, Rect, DataCol, Column, State);
end;

procedure TTennisMng.DBGrid7DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
DBGrid7.Canvas.Brush.Color := clBtnFace;
//DBGrid7.Canvas.Font.Color :=clBlack;
if (DM.IBDataSetScheduleSTATO_CONS.AsString = 'RITARDO') AND (DM.IBDataSetScheduleSTATO.AsString = 'APERTA') then
begin
DBGrid7.Canvas.Font.Color := clFuchsia;
DBGrid7.Canvas.Brush.Color:= clBlack;
end;
if (DM.IBDataSetScheduleSTATO_CONS.AsString = 'GRAVE_RITARDO') AND (DM.IBDataSetScheduleSTATO.AsString = 'APERTA') then
begin
DBGrid7.Canvas.Font.Color := CLRED;
DBGrid7.Canvas.Brush.Color:= clBlack;
end;
IF DM.IBDataSetScheduleSTATO.AsString = 'CHIUSA' then
begin
DBGrid7.Canvas.Font.Color := ClGreen;
DBGrid7.Canvas.Brush.Color := clBtnFace;
end;
if (DM.IBDataSetScheduleSTATO_CONS.AsString = 'REGOLARE') AND (DM.IBDataSetScheduleSTATO.AsString = 'APERTA')then
begin
DBGrid7.Canvas.Brush.Color := clBtnFace;
DBGrid7.Canvas.Font.Color := ClBlue;
end;
if (DM.IBDataSetScheduleSTATO_CONS.AsString = 'REGOLARE') AND (DM.IBDataSetScheduleSTATO.AsString = 'PARZIALE') then
begin
DBGrid7.Canvas.Font.Color := clYellow;
DBGrid7.Canvas.Brush.Color:= clBlack;
end;
DBGrid7.DefaultDrawColumnCell(Rect,DataCol,Column, State);
end;

procedure TTennisMng.BitBtn24Click(Sender: TObject);
begin
ScheCli.QuickRep1.PrinterSettings.FirstPage:=1;
ScheCli.Quickrep1.PrinterSettings.LastPage:=1;
scheCli.QuickRep1.PrinterSettings.PrinterIndex:=Printer.Printers.IndexOf(dm.IBDataSetParamPRINTER_FORM.AsString);
if preview2.Checked=false then
ScheCli.QuickRep1.Print
else
ScheCli.QuickRep1.Preview;

end;

procedure TTennisMng.Label22MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
//label22.Caption:=inttostr(X);
//label31.Caption:=inttostr(y);
end;

procedure TTennisMng.BitBtn14Click(Sender: TObject);
begin
DM.IBDataSetIncord.Edit;
end;

procedure TTennisMng.SpinEdit1Exit(Sender: TObject);
begin
if (DM.IBDataSetIncordURGENTE.Value=1)  then
begin
Spinedit1.Text:=timetostr(hourof(now));
Spinedit2.Text:=timetostr(minuteof(now));
end;
DM.IBDataSetIncordDATARICCONS.AsDateTime:=strtodatetime(datetimetostr(dateof(DM.IBDataSetIncordDATARICCONS.AsDateTime))+' '+Spinedit1.text+':'+Spinedit2.text+':00');

end;

procedure TTennisMng.SpinEdit2Exit(Sender: TObject);
begin
DM.IBDataSetIncordDATARICCONS.AsDateTime:=strtodatetime(datetimetostr(dateof(DM.IBDataSetIncordDATARICCONS.AsDateTime))+' '+Spinedit1.text+':'+Spinedit2.text+':00');
end;

procedure TTennisMng.BitBtn2Click(Sender: TObject);
begin
DM.IBDataSetIncord.Post;
end;

procedure TTennisMng.BitBtn26Click(Sender: TObject);
begin
dm.IBDataSetIncord.Cancel;
end;

procedure TTennisMng.BitBtn27Click(Sender: TObject);
begin
if not (DM.IBDataSetIncord.State in [DSEDIT,DSINSERT]) then
Dm.IBDataSetIncord.Edit;
if dm.IBDataSetIncordDATAREADY.IsNull then
 begin
  Dm.IBDataSetIncordDATAREADY.Value:=now;
  Bitbtn27.Caption:='NON PRONTA';
 end
else
 begin
  Dm.IBDataSetIncordDATAREADY.Clear;
  Bitbtn27.Caption:='PRONTA';
 end;
Dm.IBDataSetIncord.Post;
end;



procedure TTennisMng.ComboBox7Enter(Sender: TObject);
var tmpQuery:TIBQuery;
begin
end;



procedure TTennisMng.ComboBox7KeyPress(Sender: TObject; var Key: Char);
var tmpQuery:TIBQuery;
begin
end;

procedure TTennisMng.BitBtn29Click(Sender: TObject);
begin
//if Combobox7.Text<>'' then
//begin
//Combobox8.Text:=Combobox7.Text;
DM.IBDataSetIncordID_MATHOR.Value:=DM.IBDataSetIncordID_MATVERT.Value;
//end;
end;

procedure TTennisMng.BitBtn28Click(Sender: TObject);
begin
DM.IBDataSetIncordTENSVERT.AsFloat:=DM.IBDataSetArticoloTENSV.AsFloat;
DM.IBDataSetIncordTENSORIZ.AsFloat:=DM.IBDataSetArticoloTENSH.AsFloat;
end;

procedure TTennisMng.DBEdit37KeyPress(Sender: TObject; var Key: Char);
begin
if not ((ord(key) = 08) or (ord(key) = 03)or (ord(key) = 27)) then
 begin
  if (not (key in ['0'..'9']+[','])) then
   key:=#0;
 end;

end;

procedure TTennisMng.DBEdit39KeyPress(Sender: TObject; var Key: Char);
begin
if not ((ord(key) = 08) or (ord(key) = 03)or (ord(key) = 27)) then
 begin
  if (not (key in ['0'..'9']+[','])) then
   key:=#0;
 end;

end;

procedure TTennisMng.DBCheckBox1Click(Sender: TObject);
begin
if (sender as TdbCheckbox).Checked=true then
begin
 Tennismng.SpinEdit1.Enabled:=false;
 Tennismng.SpinEdit1.Text:=inttostr(hourof(now)+1);
 Tennismng.SpinEdit2.Enabled:=false;
 Tennismng.SpinEdit2.Text:=inttostr(minuteof(now));
 if DM.IBDataSetIncord.State in [dsEdit,dsInsert] then
DM.IBDataSetIncordDATARICCONS.AsDateTime:=inchour(now,1);
// DM.IBDataSetIncordDATARICCONS.Value:=strtodatetime(datetostr(today)+' '+timetostr((now)+1));
 end
else
begin
 Tennismng.SpinEdit1.Enabled:=true;
 Tennismng.SpinEdit2.Enabled:=true;
 Tennismng.SpinEdit1.Text:=inttostr(hourof(now));
 Tennismng.SpinEdit2.Text:=inttostr(minuteof(now));
 if DM.IBDataSetIncord.State in [dsEdit,dsInsert] then
 DM.IBDataSetIncordDATARICCONS.Value:=now+DM.IBDataSetParamDAYWORKREADY.AsInteger;
 end;

end;

procedure TTennisMng.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
DBGrid2.Canvas.Brush.Color := clbtnface;
if  DM.IBDataSetArticoloCV.Value=1 then
DBGrid2.Canvas.Font.Color := clRed
else
DBGrid2.Canvas.Font.Color := clBlack;
DBGrid2.DefaultDrawColumnCell(Rect,DataCol,Column, State);

end;

procedure TTennisMng.BitBtn30Click(Sender: TObject);
var tmpIbQuery:TIBQuery;
begin
tmpIbQuery:=TIBQuery.Create(nil);
tmpIBQuery.Database:=DM.IBDatabase1;
tmpIBQuery.Transaction:=DM.IBTransaction15;
tmpIBQuery.SQL.add('SELECT count(*) FROM ACQUISTI WHERE (TIPOPRODOTTO="MATASSA") AND (CLI_NO=1 OR CLI_NO="'+dm.IBDataSetClientiCLI_NO.AsString+'")');
tmpIBQuery.Open;
if not((tmpIBQuery.IsEmpty) or (tmpIBQuery.Fields.Fields[0].AsInteger=0)) then
begin
tennismng.Pagecontrol1.ActivePageIndex:=1;
DM.IBDataSetIncord.Insert;
end
else
ShowMessage('NESSUNA MATRASSA CARICATA! Effettuare il carico matasse');
tmpIBQuery.Close;
tmpIBQuery.Free;
  end;

procedure TTennisMng.BitBtn25Click(Sender: TObject);
begin
DM.IBDataSetIncord.Delete;
end;

procedure TTennisMng.DBEdit75Enter(Sender: TObject);
begin
DM.IBDataSetIncordSCONTO.EditMask:='999%;1;_';
end;

procedure TTennisMng.DBEdit25Enter(Sender: TObject);
begin
DM.IBDataSetIncordCOSTO_INCORD.EditMask:='€.9999,99;1;_';
end;

procedure TTennisMng.DBEdit68Enter(Sender: TObject);
begin
(sender as TDBEdit).Field.EditMask:='€.9999,99;1;_'
end;

procedure TTennisMng.DBEdit69Enter(Sender: TObject);
begin
(sender as TDBEdit).Field.EditMask:='€.9999,99;1;_'

end;

procedure TTennisMng.DBEdit70Enter(Sender: TObject);
begin
(sender as TDBEdit).Field.EditMask:='€.9999,99;1;_'

end;

procedure TTennisMng.DBEdit71Enter(Sender: TObject);
begin
(sender as TDBEdit).Field.EditMask:='€.9999,99;1;_'

end;

procedure TTennisMng.DBEdit73Enter(Sender: TObject);
begin
(sender as TDBEdit).Field.EditMask:='€.9999,99;1;_'

end;

procedure TTennisMng.DBEdit74Enter(Sender: TObject);
begin
(sender as TDBEdit).Field.EditMask:='€.9999,99;1;_'

end;

procedure TTennisMng.DBEdit72Enter(Sender: TObject);
begin
(sender as TDBEdit).Field.EditMask:='€.9999,99;1;_'

end;

procedure TTennisMng.DBEdit80Enter(Sender: TObject);
begin
(sender as TDBEdit).Field.EditMask:='€.9999,99;1;_'

end;

procedure TTennisMng.DBEdit81Enter(Sender: TObject);
begin
(sender as TDBEdit).Field.EditMask:='€.9999,99;1;_'

end;

procedure TTennisMng.DBEdit82Enter(Sender: TObject);
begin
(sender as TDBEdit).Field.EditMask:='€.9999,99;1;_'

end;

procedure TTennisMng.BitBtn1Click(Sender: TObject);
begin
If DM.IBDataSetIncordDATASALDO.IsNull then
begin
DM.IBDataSetIncord.AutoCalcFields:=false;
DM.IBDataSetIncord.Edit;
DM.IBDataSetIncordDATASALDO.Value:=now;
dm.IBDataSetIncordAcconto.Value:=dm.IBDataSetIncordTOTALE.Value;
DM.IBDataSetIncordTIPOPAGAMENTO.Value:='PAGATO';
DM.IBDataSetIncord.Post;
Bitbtn1.Caption:='RIPRISTINA';
DM.IBDataSetIncord.AutoCalcFields:=true;
end
else
begin
DM.IBDataSetIncord.AutoCalcFields:=false;
DM.IBDataSetIncord.Edit;
DM.IBDataSetIncordDATASALDO.Clear;
dm.IBDataSetIncordACCONTO.Value:=0;
DM.IBDataSetIncordTIPOPAGAMENTO.Value:='DA PAGARE';
DM.IBDataSetIncord.Post;
Bitbtn1.Caption:='PAGATO';
DM.IBDataSetIncord.AutoCalcFields:=true;
end;
end;

procedure TTennisMng.DBMemo4Exit(Sender: TObject);
begin
//IF dm.IBDataSetIncordMOTIVOINCAZERO.IsNull then
//begin
//DBMEMO4.SetFocus;
//ShowMessage('SCRIVERE UN MOTIVO PER GIUSTIFICARE UN TOTALE A €.0');
//end;
end;

procedure TTennisMng.DBEdit82Exit(Sender: TObject);
begin
if DM.IBDataSetIncordSUBTOTALE.Value<>0 then
DM.IBDataSetIncordSCONTO.Value:=-1*round((DM.IBDataSetIncordTOTALE.Value-DM.IBDataSetIncordSUBTOTALE.Value)*100/DM.IBDataSetIncordSUBTOTALE.Value);
//DM.IBDataSetIncordTOTALE.FieldKind:=fkcalculated;
//DM.IBDataSetIncord.AutoCalcFields:=true;
end;

procedure TTennisMng.PageControl2Exit(Sender: TObject);
begin
DBEdit25.SetFocus;
end;

procedure TTennisMng.DBGrid1DblClick(Sender: TObject);
begin
dm.IBDataSetIncord.Close;
dm.IBDataSetIncord.SelectSQL.Clear;
dm.IBDataSetIncord.SelectSQL.Add('SELECT * FROM INCORDATURE JOIN ARTICOLO ON INCORDATURE.ART_NO=ARTICOLO.ART_NO WHERE ARTICOLO.CLI_NO="'+dm.IBDataSetClientiCLI_NO.AsString+'"');
dm.IBDataSetIncord.SelectSQL.Add('ORDER BY INCORDATURE.'+DBGrid1.SelectedField.FieldName);
dm.IBDataSetIncord.Open;
end;

procedure TTennisMng.ComboBox8Enter(Sender: TObject);
var TmpQuery: TIBQuery;
begin
end;

procedure TTennisMng.DBEdit98Enter(Sender: TObject);
begin
DM.IBDatasetAcqPREZZOPUB.EditMask:='€.9999,99;1;_'

end;

procedure TTennisMng.DBEdit98KeyPress(Sender: TObject; var Key: Char);
begin
if key in ['a'..'z']+['A'..'Z'] then
key:=#0;

end;

procedure TTennisMng.DBEdit95KeyPress(Sender: TObject; var Key: Char);
begin
if key in ['a'..'z']+['A'..'Z'] then
key:=#0;

end;

procedure TTennisMng.DBEdit94KeyPress(Sender: TObject; var Key: Char);
begin
if key in ['a'..'z']+['A'..'Z'] then
key:=#0;

end;

procedure TTennisMng.DBEdit96KeyPress(Sender: TObject; var Key: Char);
begin
if key in ['a'..'z']+['A'..'Z'] then
key:=#0;

end;

procedure TTennisMng.DBEdit88KeyPress(Sender: TObject; var Key: Char);
begin
if key in ['a'..'z']+['A'..'Z'] then
key:=#0;

end;

procedure TTennisMng.DBEdit91KeyPress(Sender: TObject; var Key: Char);
begin
if key in ['a'..'z']+['A'..'Z'] then
key:=#0;

end;

procedure TTennisMng.DBEdit92KeyPress(Sender: TObject; var Key: Char);
begin
if key in ['a'..'z']+['A'..'Z'] then
key:=#0;

end;

procedure TTennisMng.DBEdit86KeyPress(Sender: TObject; var Key: Char);
begin
if key in ['a'..'z']+['A'..'Z'] then
key:=#0;

end;

procedure TTennisMng.DBEdit87KeyPress(Sender: TObject; var Key: Char);
begin
if key in ['a'..'z']+['A'..'Z'] then
key:=#0;

end;

procedure TTennisMng.DBEdit15KeyPress(Sender: TObject; var Key: Char);
begin
if key in ['a'..'z']+['A'..'Z'] then
key:=#0;

end;

procedure TTennisMng.BitBtn11Click(Sender: TObject);
begin
Quickreport1.Preview;
end;

procedure TTennisMng.TabSheet1Show(Sender: TObject);
begin
DM.IBQueryTemp.Close;
DM.IBQueryTemp.SQL.Clear;
if not (DM.IBDataSetArticoloCLI_NO.AsString='') then
begin
DM.IBQueryTemp.SQL.Add('SELECT NOME, COGNRAGSOC FROM CLIENTI WHERE CLI_NO = "'+DM.IBDataSetArticoloCLI_NO.asstring+'"');
DM.IBQueryTemp.Open;
 if not DM.IBQueryTemp.IsEmpty then
 begin
  Tennismng.Edit3.Text:=DM.IBQueryTemp.Fields.Fields[0].AsString;
  Tennismng.Edit5.Text:=DM.IBQueryTemp.Fields.Fields[1].AsString;
 end;
DM.IBQueryTemp.Close;
end
else
 begin
  Tennismng.Edit5.Text:=DM.IBDataSetClientiCOGNRAGSOC.AsString;
  Tennismng.Edit3.Text:=DM.IBDataSetClientiNOME.AsString;
 end;

 dm.IBDataSetArticolo.Close;
dm.IBDataSetArticolo.SelectSQL.Clear;
dm.IBDataSetArticolo.SelectSQL.Add('SELECT ARTICOLO.*');
dm.IBDataSetArticolo.SelectSQL.Add('FROM ARTICOLO');
if DM.IBDataSetClientiCLI_NO.Value=1 then
dm.IBDataSetArticolo.SelectSQL.Add('WHERE ARTICOLO.TIPO = "RACCHETTA TENNIS" AND (CLI_NO=1 OR CV=1)')
else
dm.IBDataSetArticolo.SelectSQL.Add('WHERE ARTICOLO.TIPO = "RACCHETTA TENNIS" and CLI_NO="'+DM.IBDataSetClientiCLI_NO.AsString+'"');
dm.IBDataSetArticolo.Open;





 end;

procedure TTennisMng.BitBtn31Click(Sender: TObject);
begin
Etiincord.QuickRep1.PrinterSettings.PrinterIndex:=Printer.Printers.IndexOf(dm.IBDataSetLocalParamETIC_PRINTER.AsString);
Etiincord.QuickRep1.PrinterSettings.Copies:=2;
if Checkbox3.Checked=false then
EtiIncord.QuickRep1.Print
else
EtiIncord.QuickRep1.Preview;
end;

procedure TTennisMng.TabSheet2Hide(Sender: TObject);
begin
label156.Visible:=false;
label157.Visible:=false;
Edit14.Visible:=false;
Edit15.Visible:=false;

end;

procedure TTennisMng.BitBtn33Click(Sender: TObject);
var Tipoprodotto, brand,descrizione,barcodeart,dataintro,datasaldo,prezzopub,prezzonet,taglia,datareso,qta,
sconto,dataultimamod,tipopagammatassa,sezione,colorematassa:string;
begin
if not (DM.IBDatasetAcq.State in [dsInsert,dsEdit]) then
begin
Tipoprodotto:=DM.IBDatasetAcqTIPOPRODOTTO.AsString;
brand:=DM.IBDatasetAcqBRAND.AsString;
descrizione:=DM.IBDatasetAcqDESCRIZIONE.AsString;
barcodeart:=DM.IBDatasetAcqBARCODEART.AsString;
dataintro:=DM.IBDatasetAcqDATAINTRO.AsString;
datasaldo:=DM.IBDatasetAcqDATASALDO.AsString;
prezzopub:=DM.IBDatasetAcqPREZZOPUB.AsString;
prezzonet:=DM.IBDatasetAcqPREZZONET.AsString;
taglia:=DM.IBDatasetAcqTAGLIA.AsString;
datareso:=DM.IBDatasetAcqDATARESO.AsString;
qta:=DM.IBDatasetAcqQTA.AsString;
sconto:=DM.IBDatasetAcqSCONTO.AsString;
dataultimamod:=DM.IBDatasetAcqDATAULTIMAMOD.AsString;
tipopagammatassa:=DM.IBDatasetAcqTIPOPAGAMMATASSA.AsString;
sezione:=DM.IBDatasetAcqSEZIONE.AsString;
colorematassa:=DM.IBDatasetAcqCOLOREMATASSA.AsString;
DM.IBDataSetAcq.Append;
DM.IBDatasetAcqTIPOPRODOTTO.AsString:=Tipoprodotto;
DM.IBDatasetAcqBRAND.AsString:=brand;
DM.IBDatasetAcqDESCRIZIONE.AsString:=descrizione;
DM.IBDatasetAcqBARCODEART.AsString:=barcodeart;
DM.IBDatasetAcqDATAINTRO.AsString:=DataIntro;
DM.IBDatasetAcqDATASALDO.AsString:=datasaldo;
DM.IBDatasetAcqPREZZOPUB.AsString:=prezzopub;
DM.IBDatasetAcqPREZZONET.AsString:=prezzonet;
DM.IBDatasetAcqTAGLIA.AsString:=taglia;
DM.IBDatasetAcqDATARESO.AsString:=datareso;
DM.IBDatasetAcqQTA.AsString:=qta;
DM.IBDatasetAcqSCONTO.AsString:=sconto;
DM.IBDatasetAcqDATAULTIMAMOD.AsString:=dataultimamod;
DM.IBDatasetAcqTIPOPAGAMMATASSA.AsString:=tipopagammatassa;
DM.IBDatasetAcqSEZIONE.AsString:=sezione;
DM.IBDataSetAcq.Post;
end;
end;


procedure TTennisMng.DBEdit13Enter(Sender: TObject);
begin
DM.IBDatasetAcqSEZIONE.EditMask:='€.9999,99;1;_'
end;

procedure TTennisMng.DBEdit13KeyPress(Sender: TObject; var Key: Char);
begin
if key in ['a'..'z']+['A'..'Z'] then
key:=#0;

end;

procedure TTennisMng.DBGrid3DblClick(Sender: TObject);
begin
 DM.IBDatasetAcq.Close;
  DM.IBDatasetAcq.SelectSQL.Clear;
  DM.IBDatasetAcq.SelectSQL.Add('SELECT *');
  DM.IBDatasetAcq.SelectSQL.Add('FROM ACQUISTI');
  DM.IBDatasetAcq.SelectSQL.Add('WHERE CLI_NO="'+DM.IBDataSetClientiCLI_NO.AsString+'" AND TIPOPRODOTTO="MATASSA"');
  DM.IBDatasetAcq.SelectSQL.Add('ORDER BY '+DBGrid3.SelectedField.FieldName);
  DM.IBDatasetAcq.Open;

end;

procedure TTennisMng.FormKeyPress(Sender: TObject; var Key: Char);
var bkmark:TbookMark;
begin
if ord(Key) = 10 then begin Eancode:=''; exit; end;
  if (ord(Key) = 13) and (eancode<>'') then
   begin
    bkmark:=DM.IBDataSetClienti.GetBookmark;
    DM.IBDataSetClienti.Close;
    DM.IBDataSetClienti.SelectSQL.Clear;
    DM.IBDataSetClienti.SelectSQL.Add('SELECT CLIENTI.*, articolo.eancode2 FROM CLIENTI JOIN ARTICOLO ON ARTICOLO.CLI_NO=CLIENTI.CLI_NO WHERE ARTICOLO.EANCODE2 ="*'+ eancode +'*"');
    DM.IBDataSetClienti.SelectSQL.Add('AND ARTICOLO.TIPO="RACCHETTA TENNIS"');
    DM.IBDataSetClienti.Open;
    if DM.IBDataSetClienti.IsEmpty then
     begin
    eancode:='';
    DM.IBDataSetClienti.Close;
    DM.IBDataSetClienti.SelectSQL.Clear;
    DM.IBDataSetClienti.SelectSQL.Add('SELECT * FROM CLIENTI ORDER BY CLI_NO');
    DM.IBDataSetClienti.Open;
    DM.IBDataSetClienti.GotoBookmark(bkMark)
     end
    else
     begin
     bkmark:=DM.IBDataSetArticolo.GetBookmark;
     DM.IBDataSetArticolo.Close;
     DM.IBDataSetArticolo.SelectSQL.Clear;
     DM.IBDataSetArticolo.SelectSQL.Add('SELECT *');
     DM.IBDataSetArticolo.SelectSQL.Add('FROM ARTICOLO');
     DM.IBDataSetArticolo.SelectSQL.Add('WHERE '+DM.IBDataSetParamEANTOSCAN.AsString +' = "'+'*'+ Eancode +'*'+'"');
     //DM.IBDataSetArticolo.SelectSQL.Add('WHERE TIPO LIKE "%TENNIS%" and CLI_NO="'+DM.IBDataSetClientiCLI_NO.AsString+'"' );
     DM.IBDataSetArticolo.SelectSQL.Add('ORDER BY ART_NO');
     DM.IBDataSetArticolo.Open;
     if DM.IBDataSetArticolo.IsEmpty then
      DM.IBDataSetArticolo.GotoBookmark(bkMark)
     else
      Tennismng.Pagecontrol1.ActivePageIndex:=1;
      Eancode:='';
     end;
   end
   else
   Eancode:=Eancode+key;
end;

procedure TTennisMng.GroupBox7DblClick(Sender: TObject);
begin
Tennismng.SetFocus;
end;

procedure TTennisMng.BitBtn34Click(Sender: TObject);
Var TmpIbQuery:TIBQuery;
    //BkMrk:TBookmark;
begin
//Bkmrk:=DM.IBDatasetAcq.GetBookmark;
TmpIbQuery:=TIBQuery.Create(nil);
tmpibQuery.Database:=DM.IBDatabase1;
tmpibquery.Transaction:=DM.IBTransaction15;
if not DM.IBTransaction15.InTransaction then
DM.IBTransaction15.StartTransaction;
tmpibquery.SQL.Clear;
tmpibquery.SQL.Add('INSERT INTO ACQUISTI (ACQ_NO,CLI_NO,TIPOPRODOTTO,BRAND,DESCRIZIONE,BARCODEART,DATAINTRO,DATASALDO,PREZZOPUB,PREZZONET,TAGLIA,DATARESO,QTA,SCONTO,DATAULTIMAMOD,TIPOPAGAMMATASSA, SEZIONE, DATAFINE,COLOREMATASSA,INUSO)');
tmpibquery.SQL.Add('SELECT GEN_ID(GEN_ACQUISTI_ID,1),CLI_NO, TIPOPRODOTTO,BRAND,DESCRIZIONE,BARCODEART,DATAINTRO,DATASALDO,PREZZOPUB,PREZZONET,TAGLIA,DATARESO,QTA-1,SCONTO,DATAULTIMAMOD,TIPOPAGAMMATASSA, SEZIONE, DATAFINE,COLOREMATASSA,"1"');
tmpibquery.SQL.Add('FROM ACQUISTI WHERE ACQ_NO = "'+DM.IBDatasetAcqACQ_NO.AsString+'"');
tmpibQuery.ExecSQL;
DM.IBTransaction15.Commit;
if DM.IBDatasetAcq.Active=false then
DM.IBDatasetAcq.Open;
DM.IBDatasetAcq.Last;
//DM.IBDatasetAcq.GotoBookmark(BKmrk);
tmpibquery.Free;
end;

procedure TTennisMng.Edit6Enter(Sender: TObject);
Var TmpIbQuery:TIBQuery;
begin
TmpIbQuery:=TIBQuery.Create(nil);
tmpibQuery.Database:=DM.IBDatabase1;
if not dm.IBDataSetIncordID_MATVERT.IsNull then
begin
tmpibQuery.SQL.Clear;
tmpibQuery.SQL.Add('SELECT SEZIONE FROM ACQUISTI WHERE ACQ_NO="'+dm.IBDataSetIncordID_MATVERT.AsString+'"');
tmpibQuery.Open;
if (not tmpibQuery.FieldByName('SEZIONE').IsNull) and (not tmpibQuery.IsEmpty) and (DM.IBDataSetIncordCOSTO_INCORD.Value>0) then
DM.IBDataSetIncordCOSTO_INCORD.Value:=DM.IBDataSetIncordCOSTO_INCORD.Value-tmpibquery.fieldbyname('SEZIONE').AsFloat/2;
end;
RicMat.RicMatasse.ShowModal;
DM.IBDataSetIncordCOSTO_INCORD.Clear;
DM.IBDataSetIncordID_MATVERT.Value:=DM.IBDatasetAcqACQ_NO.Value;
DM.IBDataSetIncordEANCODEMATO.Value:=DM.IBDatasetAcqBARCODEART.Value;
DM.IBDataSetIncordCOSTO_INCORD.Value:=DM.IBDataSetIncordCOSTO_INCORD.Value+DM.IBDatasetAcqSEZIONE.AsFloat/2;
Edit6.Text:=DM.IBDatasetAcqBRAND.AsString+' '+DM.IBDatasetAcqDESCRIZIONE.AsString+' '+DM.IBDatasetAcqTAGLIA.AsString;
tmpibQuery.Close;
tmpibQuery.Free;
end;

procedure TTennisMng.Edit7Enter(Sender: TObject);
Var TmpIbQuery:TIBQuery;
begin
TmpIbQuery:=TIBQuery.Create(nil);
tmpibQuery.Database:=DM.IBDatabase1;
if not dm.IBDataSetIncordID_MATHOR.IsNull then
begin
tmpibQuery.SQL.Clear;
tmpibQuery.SQL.Add('SELECT SEZIONE FROM ACQUISTI WHERE ACQ_NO="'+dm.IBDataSetIncordID_MATHOR.AsString+'"');
tmpibQuery.Open;
if (not tmpibQuery.FieldByName('SEZIONE').IsNull) and (not tmpibQuery.IsEmpty) and (DM.IBDataSetIncordCOSTO_INCORD.Value>0) then
DM.IBDataSetIncordCOSTO_INCORD.Value:=DM.IBDataSetIncordCOSTO_INCORD.Value-tmpibquery.fieldbyname('SEZIONE').AsFloat/2;
end;
RicMat.RicMatasse.ShowModal;
DM.IBDataSetIncordID_MATHOR.Value:=DM.IBDatasetAcqACQ_NO.Value;
DM.IBDataSetIncordEANCODEMATH.Value:=DM.IBDatasetAcqBARCODEART.Value;
DM.IBDataSetIncordCOSTO_INCORD.Value:=DM.IBDataSetIncordCOSTO_INCORD.Value+DM.IBDatasetAcqSEZIONE.AsFloat/2;
Edit7.Text:=DM.IBDatasetAcqBRAND.AsString+' '+DM.IBDatasetAcqDESCRIZIONE.AsString+' '+DM.IBDatasetAcqTAGLIA.AsString;
tmpibQuery.Close;
tmpibQuery.Free;

end;

procedure TTennisMng.BitBtn35Click(Sender: TObject);
var ibquery:TIBQuery;
begin
//incordatura con ultima racchetta inserita la racchetta

ibquery:=TIBQuery.Create(nil);
ibquery.Transaction:=DM.IBTransaction21;
ibquery.Database:=DM.IBDatabase1;
if not DM.IBTransaction21.InTransaction then
DM.IBTransaction21.StartTransaction;
ibquery.SQL.Clear;
if dm.IBDataSetIncordSCONTO.Value = NULL then
dm.IBDataSetIncordSCONTO.Value:=0;
if dm.IBDataSetIncordID_MATHOR.Value = null then
dm.IBDataSetIncordID_MATHOR.Value:=0;
if dm.IBDataSetIncordID_MATVERT.Value = null then
dm.IBDataSetIncordID_MATVERT.Value:=0;
if dm.IBDataSetIncordEANCODEMATH.AsString = '' then
//dm.IBDataSetIncordEANCODEMATH.Value:='0';  Sono arrivato quà
if dm.IBDataSetIncordEANCODEMATO.AsString = '' then
dm.IBDataSetIncordEANCODEMATO.Value:='0';
if dm.IBDataSetIncordID_MATHOR.Value = null then
dm.IBDataSetIncordID_MATHOR.Value:=0;
if dm.IBDataSetIncordID_MATVERT.Value = null then
dm.IBDataSetIncordID_MATVERT.Value:=0;
ibquery.SQL.Add('INSERT INTO INCORDATURE (INC_NO,ART_NO,DATAINSERT,COSTO_INCORD,DATARICCONS,ID_MATHOR,ID_MATVERT,TENSORIZ,TENSVERT,EANCODEMATH,EANCODEMATO,SCONTO) VALUES("'+DM.GenID('GEN_INCORDATURE_ID')+'","'+dm.IBDataSetIncordART_NO.AsString+'","'+datetimetostr(now)+'","'+DM.IBDataSetIncordCOSTO_INCORD.AsString+'","'+datetimetostr(incday(now,1))+'","'+dm.IBDataSetIncordID_MATHOR.AsString+'","'+dm.IBDataSetIncordID_MATVERT.AsString+'","'+dm.IBDataSetIncordTENSORIZ.AsString+'","'+dm.IBDataSetIncordTENSVERT.AsString+'","'+dm.IBDataSetIncordEANCODEMATH.AsString+'","'+dm.IBDataSetIncordEANCODEMATO.AsString+'","'+dm.IBDataSetIncordSCONTO.AsString+'")');
ibquery.ExecSQL;
if DM.IBTransaction21.InTransaction then
DM.IBTransaction21.Commit;
dm.IBDataSetIncord.Open;
dm.IBDataSetIncord.Last;
end;

end.




