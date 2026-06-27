unit nolo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, DBGrids, ExtCtrls, DBCtrls, StdCtrls, Mask,
  Buttons,strutils,DB,DateUtils,IBQuery, Math, Menus, ExtDlgs, Jpeg, Clipbrd,
  TeEngine, Series, TeeProcs, Chart, DbChart, Spin, Sellart, RepArtGen, RepCv, Ean128, iniFiles, IdSocks, OleServer, Excel2000, ComObj, Printers, DBGridObj, QuickRpt, SynPdf,EASendMailObjLib_TLB, Filectrl,
  IBCustomDataSet, IBStoredProc, IBDatabase, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient,
  IdMessageClient, IdSMTPBase, IdSMTP, IdExplicitTLSClientServerBase,
  IdMessage,IdAttachment,IdAttachmentFile,idtext, IdDNSResolver;

type
  TMenu = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EditEanCode: TEdit;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    Label8: TLabel;
    DBEdit5: TDBEdit;
    Label9: TLabel;
    DBEdit6: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit10: TDBEdit;
    Label14: TLabel;
    DBEdit11: TDBEdit;
    Label15: TLabel;
    DBEdit12: TDBEdit;
    Label16: TLabel;
    DBEdit13: TDBEdit;
    Label17: TLabel;
    DBMemo1: TDBMemo;
    Label18: TLabel;
    BTNSALVA1: TBitBtn;
    BTNELIMINA1: TBitBtn;
    BTNANNULLA1: TBitBtn;
    BTNNUOVO1: TBitBtn;
    BTNMODIFICA1: TBitBtn;
    DBText1: TDBText;
    Label5: TLabel;
    DBTipoDocGroup1: TDBRadioGroup;
    DBEdit2: TDBEdit;
    Label19: TLabel;
    DBGrid1: TDBGrid;
    EditCognome: TEdit;
    EditNome: TEdit;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    Label20: TLabel;
    DBEdit14: TDBEdit;
    Label23: TLabel;
    DBEdit17: TDBEdit;
    Label24: TLabel;
    DBEdit18: TDBEdit;
    Label25: TLabel;
    Label26: TLabel;
    DBEdit20: TDBEdit;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    DBEdit23: TDBEdit;
    Label30: TLabel;
    DBEdit24: TDBEdit;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    DBEdit31: TDBEdit;
    Label39: TLabel;
    DBMemo2: TDBMemo;
    DBGrid2: TDBGrid;
    Edit1: TEdit;
    Label40: TLabel;
    Label42: TLabel;
    Edit4: TEdit;
    Label43: TLabel;
    DBRadioGroup2: TDBRadioGroup;
    BTNSALVA2: TBitBtn;
    BTNMODIFICA2: TBitBtn;
    BTNELIMINA2: TBitBtn;
    BTNANNULLA2: TBitBtn;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    TabSheet3: TTabSheet;
    DBLookupComboBox1: TDBLookupComboBox;
    ComboBox1: TComboBox;
    SpeedButton2: TSpeedButton;
    BTNINSERISCI1: TBitBtn;
    DBEdit22: TDBEdit;
    Button4: TButton;
    RadioGroup1: TRadioGroup;
    GroupBoxScheda: TGroupBox;
    Label47: TLabel;
    DBEdit32: TDBEdit;
    Label48: TLabel;
    DBEdit33: TDBEdit;
    Label49: TLabel;
    DBEdit34: TDBEdit;
    Label50: TLabel;
    DBEdit35: TDBEdit;
    Label51: TLabel;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    Label58: TLabel;
    DBMemo3: TDBMemo;
    BTNSALVA3: TBitBtn;
    BTNMODIFICA3: TBitBtn;
    BTNELIMINA3: TBitBtn;
    BTNANNULLA3: TBitBtn;
    Label59: TLabel;
    DBEdit43: TDBEdit;
    Label60: TLabel;
    DBEdit44: TDBEdit;
    Label61: TLabel;
    DBEdit45: TDBEdit;
    Label62: TLabel;
    DBEdit46: TDBEdit;
    Label63: TLabel;
    DBEdit47: TDBEdit;
    Label64: TLabel;
    DBEdit48: TDBEdit;
    SpeedButton4: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Edit3: TEdit;
    Label31: TLabel;
    Label32: TLabel;
    Edit5: TEdit;
    Label65: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    TabSheet4: TTabSheet;
    DBGrid3: TDBGrid;
    Edit2: TEdit;
    Label41: TLabel;
    DBNavigator1: TDBNavigator;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit6: TEdit;
    Edit7: TEdit;
    Label22: TLabel;
    Label69: TLabel;
    TabSheet5: TTabSheet;
    GroupBox5: TGroupBox;
    DBGrid4: TDBGrid;
    Button6: TButton;
    GroupBox6: TGroupBox;
    Edit12: TEdit;
    Label44: TLabel;
    RadioGroup3: TRadioGroup;
    Label70: TLabel;
    Edit14: TEdit;
    Label71: TLabel;
    DBGrid6: TDBGrid;
    Edit15: TEdit;
    Edit16: TEdit;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    DBEdit16: TDBEdit;
    DBEdit25: TDBEdit;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    GroupBox9: TGroupBox;
    Label56: TLabel;
    DBEdit26: TDBEdit;
    Label66: TLabel;
    Label75: TLabel;
    DBEdit28: TDBEdit;
    Label76: TLabel;
    DBEdit29: TDBEdit;
    Label77: TLabel;
    DBEdit30: TDBEdit;
    Label78: TLabel;
    Label80: TLabel;
    DBEdit50: TDBEdit;
    Label81: TLabel;
    DBMemo4: TDBMemo;
    Label82: TLabel;
    DBImage2: TDBImage;
    DBEdit41: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    BTNSALVA7: TBitBtn;
    BTNMODIFICA7: TBitBtn;
    BTNELIMINA7: TBitBtn;
    BTNINSERISCI7: TBitBtn;
    BTNANNULLA7: TBitBtn;
    DBGrid7: TDBGrid;
    DBText6: TDBText;
    MainMenu1: TMainMenu;
    SetUp1: TMenuItem;
    Operatori1: TMenuItem;
    Listini1: TMenuItem;
    Report1: TMenuItem;
    Articoli1: TMenuItem;
    Label38: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    DBEdit27: TDBEdit;
    Label85: TLabel;
    TabSheet8: TTabSheet;
    GroupBox11: TGroupBox;
    DBGrid9: TDBGrid;
    Edit8: TEdit;
    Label86: TLabel;
    Label87: TLabel;
    BitBtn4: TBitBtn;
    Label88: TLabel;
    Edit9: TEdit;
    BitBtn5: TBitBtn;
    Label89: TLabel;
    DBEdit49: TDBEdit;
    Button5: TButton;
    Button12: TButton;
    Label90: TLabel;
    DBEdit51: TDBEdit;
    OpenPictureDialog1: TOpenPictureDialog;
    DBText8: TDBText;
    TabSheet9: TTabSheet;
    GroupBox12: TGroupBox;
    GroupBox13: TGroupBox;
    DBGrid10: TDBGrid;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit13: TEdit;
    Edit17: TEdit;
    Edit18: TEdit;
    Edit19: TEdit;
    Edit20: TEdit;
    Edit21: TEdit;
    Edit22: TEdit;
    Edit23: TEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    BitBtn6: TBitBtn;
    Label96: TLabel;
    Chart2: TChart;
    Label97: TLabel;
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
    Edit26: TEdit;
    Label110: TLabel;
    BitBtn7: TBitBtn;
    Edit27: TEdit;
    Label111: TLabel;
    Edit28: TEdit;
    Label112: TLabel;
    Label113: TLabel;
    Label114: TLabel;
    Edit29: TEdit;
    Edit30: TEdit;
    Chart1: TChart;
    Series1: TPieSeries;
    Edit31: TEdit;
    Edit32: TEdit;
    Edit33: TEdit;
    Edit34: TEdit;
    Edit35: TEdit;
    Edit36: TEdit;
    Edit37: TEdit;
    Label115: TLabel;
    Label116: TLabel;
    Label117: TLabel;
    Label118: TLabel;
    Label119: TLabel;
    Label120: TLabel;
    Label121: TLabel;
    Label122: TLabel;
    Edit38: TEdit;
    Label123: TLabel;
    Edit39: TEdit;
    Label124: TLabel;
    Edit40: TEdit;
    Label125: TLabel;
    Series2: TPieSeries;
    Finanziari1: TMenuItem;
    Schede1: TMenuItem;
    File1: TMenuItem;
    Esci1: TMenuItem;
    TabSheet10: TTabSheet;
    GroupBox14: TGroupBox;
    GroupBox15: TGroupBox;
    DBGrid11: TDBGrid;
    Label126: TLabel;
    Edit41: TEdit;
    Label127: TLabel;
    Edit42: TEdit;
    SpeedButton5: TSpeedButton;
    SpeedButton7: TSpeedButton;
    ComboBox3: TComboBox;
    Label128: TLabel;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    Label129: TLabel;
    Edit43: TEdit;
    Chart3: TChart;
    Series3: TBarSeries;
    Venduto1: TMenuItem;
    BitBtn10: TBitBtn;
    DBRadioGroup3: TDBRadioGroup;
    DBCheckBox2: TDBCheckBox;
    GroupBox16: TGroupBox;
    CheckBox1: TCheckBox;
    Label130: TLabel;
    Label131: TLabel;
    Label132: TLabel;
    BitBtn12: TBitBtn;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    GroupBox17: TGroupBox;
    ComboBox6: TComboBox;
    Label133: TLabel;
    BitBtn13: TBitBtn;
    Edit44: TEdit;
    Edit45: TEdit;
    Label134: TLabel;
    Label135: TLabel;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    Label136: TLabel;
    ComboBox7: TComboBox;
    BitBtn14: TBitBtn;
    GroupBox18: TGroupBox;
    Label140: TLabel;
    Label141: TLabel;
    Label142: TLabel;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    Label143: TLabel;
    ComboBox8: TComboBox;
    BitBtn15: TBitBtn;
    Edit46: TEdit;
    Edit47: TEdit;
    ComboBox9: TComboBox;
    ComboBox10: TComboBox;
    Label144: TLabel;
    TabSheet11: TTabSheet;
    Parametri2: TMenuItem;
    GroupBox8: TGroupBox;
    Label91: TLabel;
    Label92: TLabel;
    BitBtn16: TBitBtn;
    ComboBox2: TComboBox;
    ComboBox12: TComboBox;
    GroupBox20: TGroupBox;
    BitBtn17: TBitBtn;
    GroupBox21: TGroupBox;
    BitBtn18: TBitBtn;
    TabSheet12: TTabSheet;
    GroupBox22: TGroupBox;
    Label154: TLabel;
    DBEdit63: TDBEdit;
    Label156: TLabel;
    DBEdit65: TDBEdit;
    Label158: TLabel;
    DBEdit67: TDBEdit;
    Label159: TLabel;
    Label160: TLabel;
    DBEdit69: TDBEdit;
    Label161: TLabel;
    Label162: TLabel;
    DBEdit71: TDBEdit;
    Label163: TLabel;
    DBEdit72: TDBEdit;
    Label165: TLabel;
    Label166: TLabel;
    DBEdit75: TDBEdit;
    Label167: TLabel;
    DBMemo5: TDBMemo;
    Label169: TLabel;
    SpinEdit1: TSpinEdit;
    BitBtn22: TBitBtn;
    DBCheckBox3: TDBCheckBox;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    RadioGroup4: TRadioGroup;
    BitBtn24: TBitBtn;
    DBComboBox1: TDBComboBox;
    DBComboBox3: TDBComboBox;
    DBComboBox4: TDBComboBox;
    BitBtn25: TBitBtn;
    DBMemo9: TDBMemo;
    Label95: TLabel;
    DBEdit8: TDBEdit;
    Label137: TLabel;
    DBEdit9: TDBEdit;
    Label153: TLabel;
    DBLookupComboBox6: TDBLookupComboBox;
    DBLookupComboBox7: TDBLookupComboBox;
    DBLookupComboBox8: TDBLookupComboBox;
    DBComboBox5: TDBComboBox;
    GroupBox23: TGroupBox;
    Label79: TLabel;
    Label172: TLabel;
    Label138: TLabel;
    DBGrid12: TDBGrid;
    BitBtn26: TBitBtn;
    DBEdit52: TDBEdit;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    BitBtn11: TBitBtn;
    BitBtn19: TBitBtn;
    BitBtn20: TBitBtn;
    BitBtn21: TBitBtn;
    BitBtn23: TBitBtn;
    BitBtn27: TBitBtn;
    Label45: TLabel;
    DBEdit7: TDBEdit;
    DBEdit62: TDBEdit;
    Label94: TLabel;
    DBEdit64: TDBEdit;
    Label155: TLabel;
    Label157: TLabel;
    DBEdit66: TDBEdit;
    BitBtn28: TBitBtn;
    TabSheet13: TTabSheet;
    RichEdit1: TRichEdit;
    GroupBox25: TGroupBox;
    DBEdit68: TDBEdit;
    Label164: TLabel;
    Label170: TLabel;
    DBEdit70: TDBEdit;
    Label171: TLabel;
    DBEdit73: TDBEdit;
    Label175: TLabel;
    DBEdit74: TDBEdit;
    DBEdit76: TDBEdit;
    DBEdit77: TDBEdit;
    DBEdit78: TDBEdit;
    ComboBox13: TComboBox;
    Label176: TLabel;
    GroupBox26: TGroupBox;
    BitBtn29: TBitBtn;
    BitBtn30: TBitBtn;
    PageControl2: TPageControl;
    TabSheet14: TTabSheet;
    ComboBox14: TComboBox;
    DBGrid13: TDBGrid;
    TabSheet15: TTabSheet;
    Label177: TLabel;
    Label178: TLabel;
    Label179: TLabel;
    Label180: TLabel;
    Label181: TLabel;
    Label182: TLabel;
    Label183: TLabel;
    DBEdit15: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit21: TDBEdit;
    DBComboBox6: TDBComboBox;
    DBEdit79: TDBEdit;
    DBEdit80: TDBEdit;
    DBEdit81: TDBEdit;
    DBNavigator2: TDBNavigator;
    DBEdit82: TDBEdit;
    Label184: TLabel;
    DBImage3: TDBImage;
    Label93: TLabel;
    DBMemo10: TDBMemo;
    Label147: TLabel;
    Label139: TLabel;
    DBMemo8: TDBMemo;
    DBMemo11: TDBMemo;
    TabSheet16: TTabSheet;
    Button30: TButton;
    Button31: TButton;
    Button32: TButton;
    Button33: TButton;
    Button34: TButton;
    Button35: TButton;
    Button36: TButton;
    TabSheet17: TTabSheet;
    GroupBox10: TGroupBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    Button13: TButton;
    Button17: TButton;
    Button18: TButton;
    Button24: TButton;
    Button25: TButton;
    Button27: TButton;
    Button28: TButton;
    Button29: TButton;
    Edit48: TEdit;
    Edit49: TEdit;
    Label145: TLabel;
    DBCheckBox4: TDBCheckBox;
    TabSheet18: TTabSheet;
    GroupBox7: TGroupBox;
    Label146: TLabel;
    Label149: TLabel;
    Edit50: TEdit;
    Edit51: TEdit;
    Label150: TLabel;
    Label151: TLabel;
    Edit53: TEdit;
    Edit54: TEdit;
    Label152: TLabel;
    Edit55: TEdit;
    BitBtn31: TBitBtn;
    DBText4: TDBText;
    DBEdit55: TDBEdit;
    Label189: TLabel;
    DBText7: TDBText;
    Label190: TLabel;
    TabSheet19: TTabSheet;
    TreeView1: TTreeView;
    Label191: TLabel;
    Button22: TButton;
    DBCheckBox5: TDBCheckBox;
    ComboBox16: TComboBox;
    Label192: TLabel;
    ComboBox17: TComboBox;
    Label193: TLabel;
    Edit58: TEdit;
    Edit59: TEdit;
    SpeedButton13: TSpeedButton;
    SpeedButton12: TSpeedButton;
    Label194: TLabel;
    Label195: TLabel;
    TabSheet20: TTabSheet;
    GroupBox24: TGroupBox;
    Label196: TLabel;
    Label197: TLabel;
    Label199: TLabel;
    NUOVA: TButton;
    Button26: TButton;
    Button37: TButton;
    Button38: TButton;
    Label201: TLabel;
    Label202: TLabel;
    Label203: TLabel;
    Label204: TLabel;
    Label205: TLabel;
    Label206: TLabel;
    Label207: TLabel;
    BitBtn32: TBitBtn;
    BitBtn33: TBitBtn;
    BitBtn34: TBitBtn;
    ScannerTest1: TMenuItem;
    DBText2: TDBText;
    Label198: TLabel;
    DBEdit56: TDBEdit;
    BitBtn35: TBitBtn;
    Button23: TButton;
    TabSheet21: TTabSheet;
    ExcelOLEObject1: TExcelOLEObject;
    GroupBox27: TGroupBox;
    Label200: TLabel;
    Edit60: TEdit;
    Label208: TLabel;
    Label209: TLabel;
    Edit61: TEdit;
    Button39: TButton;
    PreCodeCombobox: TComboBox;
    Preview1: TCheckBox;
    Preview2: TCheckBox;
    PrinterSetupDialog1: TPrinterSetupDialog;
    GroupBox30: TGroupBox;
    Label212: TLabel;
    SpeedButton16: TSpeedButton;
    DBEdit59: TDBEdit;
    GroupBox31: TGroupBox;
    Label213: TLabel;
    SpeedButton17: TSpeedButton;
    DBEdit60: TDBEdit;
    Preview3: TCheckBox;
    BitBtn36: TBitBtn;
    BitBtn37: TBitBtn;
    BitBtn38: TBitBtn;
    DBCheckBox6: TDBCheckBox;
    Label211: TLabel;
    DBEdit57: TDBEdit;
    DBGridObj1: TDBGridObj;
    BitBtn40: TBitBtn;
    DBGridObj2: TDBGridObj;
    GroupBox28: TGroupBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    Label210: TLabel;
    BtnCarica: TBitBtn;
    BtnScarica: TBitBtn;
    Panel1: TPanel;
    Label54: TLabel;
    Label53: TLabel;
    Label52: TLabel;
    Label55: TLabel;
    BitBtn39: TBitBtn;
    Riparazioni1: TMenuItem;
    CheckBox3: TCheckBox;
    DBEdit58: TDBEdit;
    Label68: TLabel;
    DBCheckBox1: TDBCheckBox;
    Release1: TMenuItem;
    GroupBox29: TGroupBox;
    DBCheckBox14: TDBCheckBox;
    Edit62: TEdit;
    Edit63: TEdit;
    Label67: TLabel;
    Label214: TLabel;
    DBEdit61: TDBEdit;
    DBEdit83: TDBEdit;
    Label216: TLabel;
    Label217: TLabel;
    DBEdit84: TDBEdit;
    DBEdit85: TDBEdit;
    Button7: TButton;
    BitBtn41: TBitBtn;
    BitBtn42: TBitBtn;
    DBCheckBox15: TDBCheckBox;
    Button8: TButton;
    GroupBox19: TGroupBox;
    DBCheckBox16: TDBCheckBox;
    DBCheckBox17: TDBCheckBox;
    DBCheckBox18: TDBCheckBox;
    DBCheckBox19: TDBCheckBox;
    DBCheckBox20: TDBCheckBox;
    DBCheckBox21: TDBCheckBox;
    DBCheckBox22: TDBCheckBox;
    DBCheckBox23: TDBCheckBox;
    DBCheckBox24: TDBCheckBox;
    Label148: TLabel;
    Edit52: TEdit;
    Label173: TLabel;
    Edit56: TEdit;
    DBCheckBox25: TDBCheckBox;
    DBEdit86: TDBEdit;
    Label168: TLabel;
    SpeedButton14: TSpeedButton;
    BitBtn43: TBitBtn;
    IdSMTP1: TIdSMTP;
    IdMessage1: TIdMessage;
    IdDNSResolver1: TIdDNSResolver;
    Button19: TButton;
    Timer1: TTimer;
    DBEdit42: TDBEdit;
    SpeedButton15: TSpeedButton;
    Label46: TLabel;
    DBCheckBox26: TDBCheckBox;
    Label57: TLabel;
    DBEdit87: TDBEdit;
    Label174: TLabel;
    DBEdit88: TDBEdit;
    RfidSetup1: TMenuItem;
    Label185: TLabel;
    DBEdit89: TDBEdit;
    SpeedButton18: TSpeedButton;
    Timer2: TTimer;
    TabSheet22: TTabSheet;
    Label21: TLabel;
    DBComboBox2: TDBComboBox;
    Label186: TLabel;
    DBComboBox7: TDBComboBox;
    Label187: TLabel;
    DBComboBox8: TDBComboBox;
    DBComboBox9: TDBComboBox;
    Label188: TLabel;
    Memo1: TMemo;
    Button20: TButton;
    Button21: TButton;
    Button40: TButton;
    SpeedButton19: TSpeedButton;
    Button41: TButton;
    DBEdit90: TDBEdit;
    Label215: TLabel;
    SpeedButton20: TSpeedButton;
    Label218: TLabel;
    DBEdit91: TDBEdit;
    Label219: TLabel;
    DBEdit92: TDBEdit;
    DBCheckBox27: TDBCheckBox;
    DBCheckBox28: TDBCheckBox;
    TabSheet23: TTabSheet;
    Label220: TLabel;
    DBEdit93: TDBEdit;
    Label221: TLabel;
    DBComboBox_Cams: TDBComboBox;
    Label222: TLabel;
    DBEdit94: TDBEdit;
    BitBtn44: TBitBtn;
    SavePictureDialog1: TSavePictureDialog;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    DBCheckBox29: TDBCheckBox;
    Edit57: TEdit;
    Label223: TLabel;
    BitBtn45: TBitBtn;
    CheckRip1: TMenuItem;
    CheckPagRip1: TMenuItem;
    DBCheckBox30: TDBCheckBox;
    RadioGroup2: TRadioGroup;
    Edit64: TEdit;
    Label224: TLabel;
    DBRadioGroup4: TDBRadioGroup;
    GroupBox32: TGroupBox;
    Edit_EndPInvioSMS: TEdit;
    Edit_LoginSMS: TEdit;
    Label225: TLabel;
    Label226: TLabel;
    Edit_PswSMS: TEdit;
    Label227: TLabel;
    BitBtn46: TBitBtn;
    Edit_SenderSMS: TEdit;
    Label228: TLabel;
    Button42: TButton;
    Label229: TLabel;
    Edit_SogliaSMS: TEdit;
    Label230: TLabel;
    Edit_Emailalert: TEdit;
    Button43: TButton;
    Label231: TLabel;
    Edit_EndPCreditSMS: TEdit;
    Label232: TLabel;
    Edit_NTelTest: TEdit;
    DBImage1: TDBImage;
    Label233: TLabel;
    Image4: TImage;
    DBImage4: TDBImage;
    Image5: TImage;
    Image6: TImage;
    DBText3: TDBText;
    DBText5: TDBText;
    BTNRESET_CLI: TBitBtn;
    Label234: TLabel;
    DBEdit95: TDBEdit;
    Timer3: TTimer;
    Check_Soglia: TCheckBox;
    SpeedButton21: TSpeedButton;
    SpeedButton22: TSpeedButton;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    procedure DBMemo1Exit(Sender: TObject);
    procedure BTNSALVA1Click(Sender: TObject);
    procedure BTNELIMINA1Click(Sender: TObject);
    procedure BTNANNULLA1Click(Sender: TObject);
    procedure BTNNUOVO1Click(Sender: TObject);
    procedure BTNMODIFICA1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure EditNomeChange(Sender: TObject);
    procedure EditEanCodeKeyPress(Sender: TObject; var Key: Char);
    procedure BTNSALVA2Click(Sender: TObject);
    procedure BTNMODIFICA2Click(Sender: TObject);
    procedure BTNELIMINA2Click(Sender: TObject);
    procedure BTNANNULLA2Click(Sender: TObject);
    procedure DBLookupComboBox2KeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox3KeyPress(Sender: TObject; var Key: Char);
    procedure ComboTipoArtEnter(Sender: TObject);
    procedure DBLookupComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox1Enter(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BTNINSERISCI1Click(Sender: TObject);
    procedure DBEdit19Enter(Sender: TObject);
    procedure DBEdit21Enter(Sender: TObject);
    procedure DBEdit22Enter(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure DBMemo2Exit(Sender: TObject);
    procedure EditPaint(Colore: TColor);
    procedure BTNSALVA3Click(Sender: TObject);
    procedure BTNMODIFICA3Click(Sender: TObject);
    procedure BTNELIMINA3Click(Sender: TObject);
    procedure BTNANNULLA3Click(Sender: TObject);
    procedure DBEdit36Enter(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure TabSheet3Hide(Sender: TObject);
    procedure DBEdit37Enter(Sender: TObject);
    procedure DBEdit38Enter(Sender: TObject);
    procedure DBEdit39Enter(Sender: TObject);
    procedure DBEdit40Enter(Sender: TObject);
    procedure SetupGridPickList(const FieldName, sql: string);
    function  CalcRentedArt:Real;
    function  QueryEanArtToArtno(EANCODE: String) :integer;
    function  EanAlreadyInsert(artno: integer; schedno:integer) :boolean;
    function  QueryIsRented(ARTNO: String):boolean;
    function  IsWeekend(IniDate:Tdatetime; day:integer):boolean;
    function  TrimEanCode(temp:string):string;
    function  ControlFieldschedule :boolean;
    function  QueryArtToDownload(ARTNO: String; SCHEDNO: String):boolean;
    Function  CheckRentedStato(ARTNO:integer):boolean;
    function  PrezzoNoloArt(Tipo:string; Giorno:string):real;
    function  QueryEanSched(EANCODE: String; ORDBY:String):boolean;
    function  QueryEanSchedArtPerson(EANCODE: String; WHERECLS:String; ORDBY:String):boolean;
    function  QtaArtPerScheda(SCHED_NO:integer): integer;
    function  QtaArtChiusiPerScheda(SCHED_NO:integer): integer;
    function  ScheduleResult(SCHED_NO:integer):integer;
    function  QtaArtApertiPerScheda(SCHED_NO:integer): integer;
   // function  FirstDataIntroSched:string;
    function  ArtnoIsInArticoli(ARTNO:string): integer;
    function  QueryIsInRepair(ARTNO: String):boolean;
    function  CheckArtReplay(ARTNO:String):boolean;
    procedure DeleteArtForSched(SCHEDNO:integer);
    procedure SetSchedStatoCons;
    Procedure SetUpCVModule(Value:integer);
    Procedure SetUpRepModule(Value:integer);
    Procedure SetUpRipModule(Value:integer);
    Procedure SetUpFinVModule(Value:integer);
    Procedure SetUpOperModule(Value:integer);
    Procedure SetUpTennisModule(Value:integer);
    procedure FeeDayLateCalc(FeeTax:real);
    procedure FeeDayLateCalc1(FeeTax:real);
    procedure IncNoloCalc(SCHED_NO:Integer);

    procedure ViewChart1;
    procedure ViewChart2;
    procedure ViewChart3;
    function  ArtRentedPrice(Campo:string;Artno:string):real;
    procedure SetRentedStato1(Artno:integer; stato:string);
    procedure SetRentedStato(Artno:integer; schedno:integer; stato:string);
    procedure SetArtStato(Artno:integer; stato:string);
    Procedure RefreshRentedArt(Cli: integer; Sched:integer);
    procedure QueryRentedArtToGrid(SCHED_NO: Double);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit33Enter(Sender: TObject);
    procedure DBEdit34Enter(Sender: TObject);
    procedure DBEdit35Enter(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid5DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox1Select(Sender: TObject);
    procedure DBEdit36Exit(Sender: TObject);
    procedure DBEdit34Exit(Sender: TObject);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure TabSheet4Enter(Sender: TObject);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit39Exit(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure DBGrid4DblClick(Sender: TObject);
    procedure Edit12KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBEdit37Exit(Sender: TObject);
    procedure DBEdit38Exit(Sender: TObject);
    //procedure CalcRentedArt;
    procedure RefreshCalcRentedArt;
    procedure Button9Click(Sender: TObject);
    procedure TrimSetSchedStato;
    procedure DelSchedNull;
    procedure Button10Click(Sender: TObject);
    procedure SetRentedStatoALL(Artno:integer; stato:string);
    procedure DBImage2DblClick(Sender: TObject);
    procedure BTNSALVA7Click(Sender: TObject);
    procedure BTNMODIFICA7Click(Sender: TObject);
    procedure BTNELIMINA7Click(Sender: TObject);
    procedure BTNANNULLA7Click(Sender: TObject);
    procedure BTNINSERISCI7Click(Sender: TObject);
    procedure MsgNoPermission(ClassNo:integer);
    procedure Operatori1Click(Sender: TObject);
    procedure Listini1Click(Sender: TObject);
    procedure Report1Click(Sender: TObject);
    procedure TabSheet7Hide(Sender: TObject);
    procedure TabSheet6Hide(Sender: TObject);
    procedure TabSheet4Hide(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Articoli1Click(Sender: TObject);
    procedure TabSheet2Hide(Sender: TObject);
    procedure DBGrid6DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Edit8KeyPress(Sender: TObject; var Key: Char);
    procedure RepairRefresh;
    Procedure CalcTotSch;
    Procedure CalcStaSch;
    Procedure CalcParSch;
    Procedure CalcChiSch;
    Procedure CalcApeSch;
    Procedure CalcStaApeSch;
    Procedure CalcStaChiSch;
    Procedure CalcStaParSch;
    Procedure CalcParameter;
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure Edit9KeyPress(Sender: TObject; var Key: Char);
    procedure TabSheet8Exit(Sender: TObject);
    procedure TabSheet8Show(Sender: TObject);
    procedure DBGrid6DblClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure DBImage3DblClick(Sender: TObject);
    procedure BTNMOD8Click(Sender: TObject);
    procedure BTNSALVA8Click(Sender: TObject);
    procedure BTNANNULLA8Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    function  DecForSqlDate(Data:TDate):string;
    procedure Button14Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure TabSheet9Show(Sender: TObject);
    procedure Esci1Click(Sender: TObject);
    procedure ComboBox3Enter(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure ComboBox3Select(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    function  FirstDataExpireArt:string;
    procedure BitBtn10Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure ComboBox4Enter(Sender: TObject);
    procedure ComboBox5Enter(Sender: TObject);
    procedure TabSheet10Show(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure DBEdit22Exit(Sender: TObject);
    procedure DBRadioGroup2Change(Sender: TObject);
    procedure Edit44Click(Sender: TObject);
    procedure Edit45Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure ComboBox10Select(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Schede1Click(Sender: TObject);
    procedure TabSheet11Hide(Sender: TObject);
    procedure Parametri2Click(Sender: TObject);
    procedure Venduto1Click(Sender: TObject);
    procedure TabSheet9Hide(Sender: TObject);
    procedure TabSheet10Hide(Sender: TObject);
    function  SubRoutineSuReportScheda(datatype,whereslc,orderby:string):string;
    function  QueryIsArtInRentedArt(ARTNO: String):boolean;
    function  CalcPriceSched(Schedno:string;day:integer):real;
    Procedure DeleteEtichette;
    procedure ComboBox12Enter(Sender: TObject);
    procedure ComboBox2Enter(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton3Click(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure TabSheet5Enter(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit7KeyPress(Sender: TObject; var Key: Char);
    procedure TabSheet8Hide(Sender: TObject);
    procedure BitBtn22Click(Sender: TObject);
    procedure DBEdit71Enter(Sender: TObject);
    procedure DBEdit72Enter(Sender: TObject);
    procedure RadioGroup4Click(Sender: TObject);
//    procedure DBGrid8CellClick(Column: TColumn);
    procedure BitBtn24Click(Sender: TObject);
    procedure DBComboBox1Enter(Sender: TObject);
    procedure DBComboBox3Enter(Sender: TObject);
    procedure DBComboBox1Exit(Sender: TObject);
    procedure DBComboBox4Exit(Sender: TObject);
    procedure DBComboBox4Enter(Sender: TObject);
    procedure DBComboBox3Exit(Sender: TObject);
    procedure DBGrid5DblClick(Sender: TObject);
    procedure BitBtn25Click(Sender: TObject);
    procedure TabSheet1Hide(Sender: TObject);
    procedure TabSheet12Show(Sender: TObject);
    procedure BitBtn26Click(Sender: TObject);
    procedure DBEdit72Exit(Sender: TObject);
    procedure DBEdit65Exit(Sender: TObject);
    procedure BitBtn23Click(Sender: TObject);
    procedure Memo5Exit(Sender: TObject);
    procedure DBEdit71KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit71Exit(Sender: TObject);
    procedure TabSheet12Hide(Sender: TObject);
    procedure BitBtn27Click(Sender: TObject);
    procedure DBGrid12DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BitBtn28Click(Sender: TObject);
    procedure DBEdit21Exit(Sender: TObject);
    procedure DBEdit15Enter(Sender: TObject);
    procedure DBEdit76Enter(Sender: TObject);
    procedure DBEdit77Enter(Sender: TObject);
    procedure DBEdit78Enter(Sender: TObject);
    procedure DBEdit78Exit(Sender: TObject);
    procedure DBEdit76KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit76Exit(Sender: TObject);
    procedure BitBtn29Click(Sender: TObject);
    procedure BitBtn30Click(Sender: TObject);
    procedure ComboBox14Enter(Sender: TObject);
    procedure ComboBox14Select(Sender: TObject);
    procedure DBGrid13CellClick(Column: TColumn);
    procedure DBEdit82Enter(Sender: TObject);
    procedure Button30Click(Sender: TObject);
    procedure Button31Click(Sender: TObject);
    procedure Button32Click(Sender: TObject);
    procedure Button33Click(Sender: TObject);
    procedure Button34Click(Sender: TObject);
    procedure Button35Click(Sender: TObject);
    procedure Button36Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure Button27Click(Sender: TObject);
    procedure Button28Click(Sender: TObject);
    procedure Button29Click(Sender: TObject);
    procedure Edit48DblClick(Sender: TObject);
    procedure BitBtn31Click(Sender: TObject);
    procedure TabSheet18Show(Sender: TObject);
 //   procedure IdSMTP2Status(axSender: TObject; const axStatus: TIdStatus;
      //const asStatusText: String);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure TabSheet19Enter(Sender: TObject);
    procedure TreeView1DblClick(Sender: TObject);
    procedure TreeView1CustomDrawItem(Sender: TCustomTreeView; Node: TTreeNode;
      State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure Button22Click(Sender: TObject);
    procedure TreeView1KeyPress(Sender: TObject; var Key: Char);
    Procedure SetUpTreeVModule(Value:integer);
    procedure TabSheet4Show(Sender: TObject);
    procedure ComboBox16Enter(Sender: TObject);
    procedure ComboBox17Enter(Sender: TObject);
    procedure ComboBox17Select(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure BitBtn32Click(Sender: TObject);
    procedure BitBtn33Click(Sender: TObject);
    procedure ScannerTest1Click(Sender: TObject);
    function  isrented(lista: TstringList):boolean;
    function IsArticle(Article:string):boolean;
    procedure BitBtn34Click(Sender: TObject);
    Function DataZFactCollect(List:TstringList):TstringList;
    function IsSki(EANcode:string):string;
    function DatiSgancio(sufix:string; CodiceSci:string; List:Tstringlist):String;
    procedure DBEdit62Exit(Sender: TObject);
    procedure DBEdit56Exit(Sender: TObject);
    procedure BitBtn35Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Edit60KeyPress(Sender: TObject; var Key: Char);
    procedure Edit61KeyPress(Sender: TObject; var Key: Char);
    procedure Button39Click(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure BitBtn36Click(Sender: TObject);
    procedure SetArtStatoRip(Artno:integer; stato:string);
    function QueryCheckStatus(ARTNO: String; Stato:String):boolean;
    procedure BitBtn37Click(Sender: TObject);
    procedure BitBtn38Click(Sender: TObject);
    procedure DBComboBox4KeyPress(Sender: TObject; var Key: Char);
    procedure DBNavigator2Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBGridObj1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridObj1DblClick(Sender: TObject);
    procedure BitBtn40Click(Sender: TObject);
    procedure DBGridObj2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure TabSheet5Show(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    function  intintostr(Stringa:string):boolean;
    function  StrAllChar(Stringa:string):boolean;
    procedure BtnCaricaClick(Sender: TObject);
    procedure BtnScaricaClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure EnableSchedDatas(Readable:boolean);
    procedure EnableSchedPrice(Readable:boolean);
    procedure BitBtn39Click(Sender: TObject);
    function  NumArtQuery:integer;
    function  NumChiusiQuery:integer;
    function  NumApertiQuery:integer;
    function  CalcRentedArtNew(ART_NO:integer):Real;
    procedure DeleteArtFromRenartNoQry(RENART_NO:string);
    function  CheckArtGiaInRented(art_no:string;sched_no:string):integer;
    procedure Riparazioni1Click(Sender: TObject);
    procedure DBCheckBox1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    function OccurrOfChar(const S: string; const C: char): integer;
    procedure CheckBox3MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    Procedure SetUpLabModule(Value:integer);
    function CheckCliDatas:boolean;
    procedure Release1Click(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid4TitleClick(Column: TColumn);
    procedure DBGridObj2TitleClick(Column: TColumn);
    procedure Edit12Click(Sender: TObject);
    function  SubTotRentArtTennnis(day:integer; Schedno:string):real;
    function  SendHtmlMessage(AddrTo:string; Subject:string; Body:string; AttachFile:string; tipo:integer): Boolean;
    procedure Button7Click(Sender: TObject);
    procedure BitBtn41Click(Sender: TObject);
    procedure BitBtn42Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    function  QtaArtXScheda(schedno: integer):integer;
    procedure reportexport(aReport: TQuickRep; const aFileName: TFileName);
    function  SendEmailMessage(tipo:integer;AddrTo:string; Subject:string; Body:string; Attachfile:string): Boolean;
    procedure PreAvvisoConsegna;
    procedure AvvisoRitardo;
    procedure SpeedButton14Click(Sender: TObject);
    procedure BitBtn43Click(Sender: TObject);
    procedure Edit5DblClick(Sender: TObject);
    function  ValidateEmail(mail:string):boolean;
    procedure Button19Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure RfidSetup1Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure DBEdit89Enter(Sender: TObject);
    procedure DBEdit89Exit(Sender: TObject);
    procedure DBEdit90Enter(Sender: TObject);
    procedure DBEdit90Exit(Sender: TObject);
    procedure SpeedButton20Click(Sender: TObject);
    procedure Timer2override(Sender:Tobject);
    procedure GroupBox2Enter(Sender: TObject);
    procedure Label18Click(Sender: TObject);
    procedure DBComboBox_CamsEnter(Sender: TObject);
    procedure DBComboBox_CamsChange(Sender: TObject);
    procedure BitBtn44Click(Sender: TObject);
    procedure DBEdit94DblClick(Sender: TObject);
    procedure Image1DblClick(Sender: TObject);
    procedure LoadJpgToImageBmp(var img:Timage; path:string);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure BitBtn45Click(Sender: TObject);
    procedure CheckPagRip1Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure DBGrid9DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure Edit64KeyPress(Sender: TObject; var Key: Char);
    function CheckArtIsInRenting(ARTNO: String):boolean;
    procedure BitBtn46Click(Sender: TObject);
    procedure Button42Click(Sender: TObject);
    procedure Button43Click(Sender: TObject);
    procedure Image4DblClick(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure BTNRESET_CLIClick(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure EditCognomeEnter(Sender: TObject);
    procedure EditCognomeExit(Sender: TObject);
    procedure EditNomeEnter(Sender: TObject);
    procedure EditNomeExit(Sender: TObject);
    procedure PageControl1Changing(Sender: TObject;
      var AllowChange: Boolean);
    procedure SpeedButton21Click(Sender: TObject);
    procedure SpeedButton22Click(Sender: TObject);
    procedure DBEdit10KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit11KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit12KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit13Exit(Sender: TObject);
    procedure Edit57KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit1Exit(Sender: TObject);
    procedure MaskEdit2Exit(Sender: TObject);

//    procedure TabSheet23ContextPopup(Sender: TObject; MousePos: TPoint;
      //var Handled: Boolean);


    //  procedure IdSMTP1Connected(Sender: TObject);
//  procedure IdSMTP1Connected(Sender: TObject);
//  function  AccClassification(EANCODE:integer):integer;

  private
    { Private declarations }
  public
   function  FirstDataIntroSched:string;
    { Public declarations }
  end;


var
  Menu: TMenu;
  COMPORTOPN:string;
  WHERESLC1,EANCODE:string;
  TOTSCH,APESCH,CHISCH,PARSCH,STASCH,STAAPESCH,STACHISCH,STAPARSCH: integer;
  TOTSCHP,APESCHP,CHISCHP,PARSCHP,STASCHP,STAAPESCHP,STACHISCHP,STAPARSCHP: real;
  TOTVAL,APEVAL,CHIVAL,PARVAL,STAVAL,STAAPEVAL,STACHIVAL,STAPARVAL,TOTFATT: currency;
  CLI_NO:integer;
  Lista:Tstringlist;


const
  FeeTax: real = 3;
  pesox: string =   'A0';
  altezzax: string ='A2';
  etax: string =    'A3';
  sessox: string =  'A4';
  livellox: string ='A5';
  suolax: string =  'A6';
  screenx = 1366;
  screeny = 768;
  implementation

{$R *.dfm}

uses QRep3,Account,ViewCam ,softhire,Ean39CodeGen, GesTab, Pickdate,DettArticolo,
  RepCli, RepArti, Schcli, RepSche, RepEtic, RepList, LogInDatabase, RepOp,
  ZFact,RepZ,SceCliNew,PriceArt, TestOPNUnit, Riparazione, TennisModule,
  AllertSched,ReportRiparaz, availabelitem,ThreadEmail,Rfid_trial,
  webcamunit, docu_view,check_rip_payed, EtichettaRip_new_snow, WebCam_new, WebCam_new25,ViewCam_Show,uAppPaths,
  otpcheck,api,NewSchedRent, schedtypes;//repzfact;

function TMenu.OccurrOfChar(const S: string; const C: char): integer;
var
  i: Integer;
begin
  result := 0;
  for i := 1 to Length(S) do
    if S[i] = C then
      inc(result);
end;




procedure TMenu.DBMemo1Exit(Sender: TObject);
begin
DBEdit4.SetFocus;
end;

procedure TMenu.BTNSALVA1Click(Sender: TObject);
begin
//if fileexists(DM.IBDataSetLocalParamDOCIMAGESAVEPATH.AsString+'\Docu_'+DM.IBDataSetClientiCLI_NO.AsString+'-F.jpg') then
//if Assigned(nolo.menu.Image1.Picture.Graphic) and  (not nolo.menu.Image1.Picture.Graphic.Empty) then

{if image1.Tag=1 then
DM.IBDataSetClienti.Post
else
showmessage('Scansione Documento Fronte Obbligatoria');
}
DM.IBDataSetClienti.Post;
end;

procedure TMenu.BTNELIMINA1Click(Sender: TObject);
begin
if ACCCONV.ShowModal=Mrok then
begin
if ACCCONV.ClassValue > 2 then
if not DM.IBDataSetClienti.IsEmpty then
DM.IBDataSetClienti.Delete
else
MsgNoPermission(Classification);
ACCCONV.ClassValue :=0;
end;
end;

procedure TMenu.BTNANNULLA1Click(Sender: TObject);
begin
DM.IBDataSetClienti.Cancel;
end;

procedure TMenu.BTNNUOVO1Click(Sender: TObject);
begin
If not DM.IBDataSetClienti.isEmpty then
begin
if MessageDlg('Trovate '+ inttostr(DM.IBDataSetClienti.RecordCount)+' referenze! Inserire?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
   DM.IBDataSetClienti.Insert;
   DM.IBDataSetClientiCOGNRAGSOC.AsString:=trimleft(EditCognome.Text);
   DM.IBDataSetClientiNOME.AsString:=Trimleft(EditNome.Text);
  // DBCombobox4.SetFocus;
   DBCombobox1.SetFocus;
   end;
end
else
 Begin
  If MessageDlg('Nuova referenza! Inserire?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
     DM.IBDataSetClienti.Insert;
     DM.IBDataSetClientiCOGNRAGSOC.AsString:=trimleft(EditCognome.Text);
     DM.IBDataSetClientiNOME.AsString:=trimleft(EditNome.Text);
    // DBCombobox4.SetFocus;
     DBCombobox1.SetFocus;

    end;
 end;
end;





procedure TMenu.BTNMODIFICA1Click(Sender: TObject);
begin
if ACCCONV.ShowModal=Mrok then
begin
if ACCCONV.ClassValue > 1 then
DM.IBDataSetClienti.Edit
else
MsgNoPermission(Classification);
ACCCONV.ClassValue :=0;
end;
end;

procedure TMenu.Edit1Change(Sender: TObject);
begin
DM.IBDataSetClienti.Close;
DM.IBDataSetClienti.SelectSQL.Clear;
DM.IBDataSetClienti.SelectSQL.Add('SELECT *');
DM.IBDataSetClienti.SelectSQL.Add('FROM Clienti');
DM.IBDataSetClienti.SelectSQL.Add('WHERE COGNRAGSOC LIKE "'+ trimleft(EditCognome.Text) +'%'+'"');
if EditCognome.Text<>'' then
DM.IBDataSetClienti.SelectSQL.Add('ORDER BY COGNRAGSOC')
else
DM.IBDataSetClienti.SelectSQL.Add('ORDER BY CLI_NO');
DM.IBDataSetClienti.Open;
// procedura per il caricamento della immagini dei documenti se presenti
{if fileexists(DM.IBDataSetLocalParamDOCIMAGESAVEPATH.AsString+'\Docu_'+DM.IBDataSetClientiCLI_NO.AsString+'-F.jpg') then
begin
nolo.Menu.image1.tag:=1;
nolo.menu.LoadJpgToImageBmp(nolo.menu.image1,DM.IBDataSetLocalParamDOCIMAGESAVEPATH.AsString+'\Docu_'+DM.IBDataSetClientiCLI_NO.AsString+'-F.jpg');
end
else
nolo.Menu.image1.tag:=0;

if fileexists(DM.IBDataSetLocalParamDOCIMAGESAVEPATH.AsString+'\Docu_'+DM.IBDataSetClientiCLI_NO.AsString+'-R.jpg') then
begin
nolo.Menu.image4.tag:=1;
nolo.menu.LoadJpgToImageBmp(nolo.menu.image4,DM.IBDataSetLocalParamDOCIMAGESAVEPATH.AsString+'\Docu_'+DM.IBDataSetClientiCLI_NO.AsString+'-R.jpg');
end
else
nolo.Menu.image4.tag:=0;
     }

end;

procedure TMenu.EditNomeChange(Sender: TObject);
begin
DM.IBDataSetClienti.Close;
DM.IBDataSetClienti.SelectSQL.Clear;
DM.IBDataSetClienti.SelectSQL.Add('SELECT *');
DM.IBDataSetClienti.SelectSQL.Add('FROM CLIENTI');
DM.IBDataSetClienti.SelectSQL.Add('WHERE Nome LIKE "'+ trimleft(EditNome.Text) +'%'+'" AND COGNRAGSOC LIKE "'+ trimleft(EditCognome.Text) +'%'+'"');
if (EditCognome.Text<>'') and (EditNome.Text<>'')  then
DM.IBDataSetClienti.SelectSQL.Add('ORDER BY COGNRAGSOC')
else
DM.IBDataSetClienti.SelectSQL.Add('ORDER BY CLI_NO');
DM.IBDataSetClienti.Open;
{
if fileexists(DM.IBDataSetLocalParamDOCIMAGESAVEPATH.AsString+'\Docu_'+DM.IBDataSetClientiCLI_NO.AsString+'-F.jpg') then
begin
nolo.Menu.image1.tag:=1;
nolo.menu.LoadJpgToImageBmp(nolo.menu.image1,DM.IBDataSetLocalParamDOCIMAGESAVEPATH.AsString+'\Docu_'+DM.IBDataSetClientiCLI_NO.AsString+'-F.jpg');
end
else
nolo.Menu.image1.tag:=0;

if fileexists(DM.IBDataSetLocalParamDOCIMAGESAVEPATH.AsString+'\Docu_'+DM.IBDataSetClientiCLI_NO.AsString+'-R.jpg') then
begin
nolo.Menu.image4.tag:=1;
nolo.menu.LoadJpgToImageBmp(nolo.menu.image4,DM.IBDataSetLocalParamDOCIMAGESAVEPATH.AsString+'\Docu_'+DM.IBDataSetClientiCLI_NO.AsString+'-R.jpg');
end
else
nolo.Menu.image4.tag:=0;
 }

end;

procedure TMenu.EditEanCodeKeyPress(Sender: TObject; var Key: Char);
begin
if ord(Key) = 10 then begin EditEanCode.Clear; exit; end;
if ord(Key) = 13 then
begin
DM.IBDataSetClienti.Close;
DM.IBDataSetClienti.SelectSQL.Clear;
DM.IBDataSetClienti.SelectSQL.Add('SELECT *');
DM.IBDataSetClienti.SelectSQL.Add('FROM CLIENTI');
//DM.IBDataSetClienti.SelectSQL.Add('WHERE EANCODE = "'+'*'+ EditEanCode.Text +'*'+'"');
DM.IBDataSetClienti.SelectSQL.Add('WHERE '+DM.IBDataSetParamEANTOSCAN.AsString +' = "'+'*'+ EditEanCode.Text +'*'+'"');

//DM.IBDataSetClienti.SelectSQL.Add('WHERE '+ DM.IBDataSetParamEANTOSCAN.AsString  +' = "'+'*'+ EditEanCode.Text +'*'+'"');
DM.IBDataSetClienti.Open;
if DM.IBDataSetClienti.IsEmpty then
MessageDlg('Codice Cliente Non Presente', mtWarning,[mbOk], 0);
end;
end;

procedure TMenu.BTNSALVA2Click(Sender: TObject);
begin
DM.IBDataSetArticolo.Post;
end;

procedure TMenu.BTNMODIFICA2Click(Sender: TObject);
begin
if ACCCONV.ShowModal=Mrok then
begin
if ACCCONV.ClassValue > 1 then
DM.IBDataSetArticolo.Edit
else
MsgNoPermission(Classification);
ACCCONV.ClassValue :=0;
end;
end;

procedure TMenu.BTNELIMINA2Click(Sender: TObject);
begin
if ACCCONV.ShowModal=Mrok then
begin
if ACCCONV.ClassValue > 2 then
if not DM.IBDataSetArticolo.IsEmpty then
 begin
  if  QueryIsRented(DM.IBDataSetArticoloART_NO.AsString) or (not QueryIsArtInRentedArt(DM.IBDataSetArticoloART_NO.AsString)) then
     DM.IBDataSetArticolo.Delete
  else
     MessageDlg('Articolo Presente In Tabella Movimenti, Permesso Negato!', mtInformation, [mbOk], 0);
 end
else
MsgNoPermission(Classification);
ACCCONV.ClassValue :=0;
end;
end;

procedure TMenu.BTNANNULLA2Click(Sender: TObject);
begin
DM.IBDataSetArticolo.Cancel;
end;

procedure TMenu.DBLookupComboBox2KeyPress(Sender: TObject; var Key: Char);
begin
if Key= ^I then
Begin
GestTab.Caption:=GestTab.Caption+' Stagione';
GestTab.DBGrid1.DataSource:=DM.DSStagione;
if GestTab.Showmodal= mrOk then
Key:=#0;
end;

end;

procedure TMenu.DBLookupComboBox3KeyPress(Sender: TObject; var Key: Char);
begin
if Key= ^I then
Begin
GestTab.Caption:=GestTab.Caption+' Brand';
GestTab.DBGrid1.DataSource:=DM.DSBrand;
if GestTab.Showmodal= mrOk then
Key:=#0;
end;

end;

procedure TMenu.ComboTipoArtEnter(Sender: TObject);
var i,num:integer;
begin
//DM.IBDataSetTipo.Close;
//DM.IBDataSetTipo.SelectSQL.Clear;
//DM.IBDataSetTipo.SelectSQL.Add('SELECT Type_Art');
//DM.IBDataSetTipo.SelectSQL.Add('FROM Tipo_Articoli');
//DM.IBDataSetTipo.Open;
//DM.IBDataSetTipo.Last;
//num:=DM.IBDataSetTipo.RecNo;
//ComboTipoArt.Items.Clear;
//DM.IBDataSetTipo.First;
//for i:=1 to num do
//begin
// ComboTipoArt.Items.add(DM.IBDataSetTipo.Fields.Fields[0].asstring);
// DM.IBDataSetTipo.Next;
//end;


end;


procedure TMenu.DBLookupComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
if Key= ^I then
begin
GestTab.Caption:=GestTab.Caption+' Tipo Articolo';
GestTab.DBGrid1.DataSource:=DM.DSTipo;
if GestTab.Showmodal= mrOk then
Key:=#0;
GestTab.DBGrid1.DataSource:=Nil;
end;

end;

procedure TMenu.ComboBox1Enter(Sender: TObject);
var i:integer;
begin
DM.IBQueryTemp.Close;
DM.IBQueryTemp.SQL.Clear;
DM.IBQueryTemp.SQL.Add('Select distinct tipo from PriceList');
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

//DM.IBTableTipo.First;
//for i:=1 to DM.IBTableTipo.RecordCount do
//begin
//ComboBox1.Items.Add(DM.IBTableTipoTYPE_ART.AsString);
//DM.IBTableTipo.Next;
//end;


end;

procedure TMenu.SpeedButton2Click(Sender: TObject);
begin
If (edit4.text='') and (combobox1.Text='') and (edit2.Text='') and (edit1.Text='') then
begin
  DM.IBDataSetArticolo.Close;
  DM.IBDataSetArticolo.SelectSQL.Clear;
  DM.IBDataSetArticolo.SelectSQL.Add('SELECT *');
  DM.IBDataSetArticolo.SelectSQL.Add('FROM ARTICOLO');
  DM.IBDataSetArticolo.SelectSQL.Add('ORDER BY '+ RadioGroup1.Items[RadioGroup1.ItemIndex]);
  DM.IBDataSetArticolo.Open;
 end;
end;

procedure TMenu.BTNINSERISCI1Click(Sender: TObject);
begin
Dm.IBDataSetArticolo.Insert;
end;

procedure TMenu.DBEdit19Enter(Sender: TObject);
begin
DM.IBDataSetArticoloPREZZORIS.EditMask:='€.9999,99;1;_'

end;

procedure TMenu.DBEdit21Enter(Sender: TObject);
begin
DM.IBDataSetArticoloPREZZOSCONT.EditMask:='€.9999,99;1;_'

end;

procedure TMenu.DBEdit22Enter(Sender: TObject);
begin
DM.IBDataSetArticoloINCVENDITA.EditMask:='€.9999,99;1;_';
end;

procedure TMenu.Button4Click(Sender: TObject);
begin
  DM.IBDataSetArticolo.Close;
  DM.IBDataSetArticolo.SelectSQL.Clear;
  DM.IBDataSetArticolo.SelectSQL.Add('SELECT *');
  DM.IBDataSetArticolo.SelectSQL.Add('FROM ARTICOLO');
  DM.IBDataSetArticolo.SelectSQL.Add('ORDER BY ART_NO');
  DM.IBDataSetArticolo.Open;
Edit4.Clear;
ComboBox1.Clear;
Edit2.Clear;
Edit1.Clear;
end;

procedure TMenu.DBMemo2Exit(Sender: TObject);
begin
DbLookupcomboBox1.SetFocus;
end;

procedure TMenu.EditPaint(Colore: TColor);
begin
DBEdit14.Color:=Colore;
DBEdit17.Color:=Colore;
DBLookUpCombobox1.Color:=Colore;
DBLookUpCombobox2.Color:=Colore;
DBLookUpCombobox3.Color:=Colore;
DBEdit20.Color:=Colore;
DBEdit23.Color:=Colore;
DBEdit24.Color:=Colore;
//DBEdit15.Color:=Colore;
DBEdit76.Color:=Colore;
DBEdit77.Color:=Colore;
DBEdit78.Color:=Colore;
DBEdit22.Color:=Colore;
DBEdit31.Color:=Colore;
DBEdit18.Color:=Colore;
DBMemo2.Color:=Colore;
DBEdit27.Color:=Colore;
DBEdit49.Color:=Colore;
DBEdit51.Color:=Colore;
DBEdit56.Color:=colore;
//Tennismng.GroupBox4.
end;



procedure TMenu.BTNSALVA3Click(Sender: TObject);
//var testomail:string;
begin
//testomail:='Scheda N°'+DM.IBDataSetScheduleSCHED_NO.AsString+' Nome:'+DM.IBDataSetClientiNOME.AsString+' Cognome:'+DM.IBDataSetClientiCOGNRAGSOC.AsString+CHR(13)+'ATTENZIONE NOLEGGIO A €.0'+chr(13)+datetimetostr(now);
if DM.IBDataSetScheduleDATASTARTRENT.IsNull or DM.IBDataSetScheduleDATATAKEBACK.IsNull or DM.IBDataSetScheduleDAYUSE.IsNull then
MessageDlg('DATA_INIZIO, GIORNI_USO, DATA_RIENTRO, Dati Obligatori! ', mtWarning,[mbOk], 0)
else
//begin
Dm.IBDataSetSchedule.Post;
//if (DM.IBDataSetScheduleNETPRICE.value < 5) and (DM.IBDataSetLocalParamALLARMSCHEDCLIZERO.Value=1) and (QtaArtXScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger)>0) then
//SendHtmlMessage(Edit56.Text,'Attenzione Scheda Noleggio a €.0',testomail);
//end;
end;

procedure TMenu.BTNMODIFICA3Click(Sender: TObject);
begin
if ACCCONV.ShowModal=Mrok then
begin
if ACCCONV.ClassValue > 1 then
Dm.IBDataSetSchedule.Edit
else
MsgNoPermission(Classification);
ACCCONV.ClassValue :=0;
end;
end;

procedure TMenu.BTNELIMINA3Click(Sender: TObject);
begin
ACCCONV.ShowModal;
if ACCCONV.ClassValue > 2 then
begin
if not Dm.IBDataSetSchedule.IsEmpty then
begin
if MessageDlg('CONFERMI CANCELLAZIONE SCHEDA?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
  DeleteArtForSched(DM.IBDataSetScheduleSCHED_NO.AsInteger);
  Dm.IBDataSetSchedule.Delete;
  end;
end;
end
else
MsgNoPermission(Classification);
ACCCONV.ClassValue :=0;
end;

procedure TMenu.BTNANNULLA3Click(Sender: TObject);
begin
Dm.IBDataSetSchedule.Cancel;
end;

procedure TMenu.DBEdit36Enter(Sender: TObject);
begin
DM.IBDataSetScheduleDAYUSE.EditMask:='999;1;_';
end;

procedure TMenu.BitBtn3Click(Sender: TObject);
var
  SchedaNoleggio: TNew_Sched;
begin
{if DM.IBDataSetClienti.State in [dsinsert,dsedit] then
DM.IBDataSetClienti.Post;
if checkclidatas=true then
begin
 if ACCCONV.ShowModal=Mrok then
 begin
  if ACCCONV.ClassValue > 0 then
  begin
   DM.IBDataSetSchedule.Insert;
   DM.IBDataSetSchedule.Post;
   label69.Visible:=false;

   if DM.IBDataSetLocalParamOPNSYSTEM.Value = 1 then
   bitbtn34.Visible:=false;
edit6.Visible:=false;
edit7.Visible:=false;
label22.Visible:=true;
edit3.Visible:=true;
edit5.Visible:=true;
   if DM.IBDataSetLocalParamOPNSYSTEM.Value = 1 then
bitbtn33.Visible:=true;

   Tabsheet3.TabVisible:=true;
   Pagecontrol1.ActivePageIndex:=2;
   DM.IBDataSetSchedule.Edit;
   DBEdit33.SetFocus;
  end
  else
  MsgNoPermission(ACCCONV.ClassValue);
 end;
end
else
 begin
   allertscheda.OnShow:=AllertScheda.FormShow2;
   allertscheda.showmodal;
   allertscheda.OnShow:=AllertScheda.FormShow;
   DBMemo1.Visible:=true;
   Label3.Visible:=false;
   Allertscheda.Height:=274;
   allertscheda.Bitbtn1.Top:=228;
 end;
 ACCCONV.ClassValue :=0;
}

  SchedaNoleggio := TNew_Sched.Create(Application);
    // Passa i dati prima di mostrare la form
    SchedaNoleggio.Init(
      account.Operatore,   // OWNER — sostituisci con la tua variabile
      DM.IBDataSetClientiNOME.AsString+' '+DM.IBDataSetClientiCOGNRAGSOC.AsString,     // NOMCOGNCLI — dalla tua sorgente dati
      DM.IBDataSetClientiINDIRIZZO.AsString,      // INDIRIZZO
      dm.IBDataSetClientiCLI_NO.AsInteger              // CLI_NO
    );
    SchedaNoleggio.Show;


end;

procedure TMenu.MsgNoPermission(ClassNo:integer);
begin
MessageDlg('NON SI HA AUTORIZZAZIONE PER PROCEDERE: CLASS NO°'+inttostr(ClassNo), mtInformation, [mbOk], 0);
end;



procedure TMenu.TabSheet3Hide(Sender: TObject);
begin
//if (DM.DSSchedule.State in [dsInsert,dsEdit]) then
if (DM.DSSchedule.State=dsInsert) or (DM.DSSchedule.State=dsEdit) then
 begin
  if messagedlg('Confermi i Movimenti! [YES]:Conferma',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
     if DM.IBDataSetScheduleDATASTARTRENT.IsNull or DM.IBDataSetScheduleDATATAKEBACK.IsNull or DM.IBDataSetScheduleDAYUSE.IsNull then
      MessageDlg('DATA_INIZIO, GIORNI_USO, DATA_RIENTRO, Dati Obligatori! ', mtWarning,[mbOk], 0)
     else
      Dm.IBDataSetSchedule.Post;
    end
   else
  DM.IBDataSetSchedule.Cancel;
  //tabsheet3.TabVisible:=false;
 end;
if DM.IBTransaction7.InTransaction then
begin
DM.IBTransaction7.CommitRetaining;
DM.IBDataSetSchedule.Refresh;
end;
DM.IBQueryTemp.Close;
DM.IBQueryTemp.Transaction:=DM.IBTransaction10;
 end;

procedure TMenu.DBEdit37Enter(Sender: TObject);
begin
DM.IBDataSetScheduleSUBTOTALE.EditMask:='€.9999,99;1;_';
end;

procedure TMenu.DBEdit38Enter(Sender: TObject);
begin
DM.IBDataSetScheduleDISCOUNT.EditMask:='999%;1;_';
end;

procedure TMenu.DBEdit39Enter(Sender: TObject);
begin
DM.IBDataSetScheduleNETPRICE.EditMask:='€.9999,99;1;_';
end;

procedure TMenu.DBEdit40Enter(Sender: TObject);
begin
DM.IBDataSetScheduleFEEDAYLATE.EditMask:='€.9999,99;1;_';
end;

function Tmenu.QueryEanArtToArtno(EANCODE: String) :integer;
begin
DM.IBQueryTemp.Close;
DM.IBQueryTemp.SQL.Clear;
DM.IBQueryTemp.SQL.Add('SELECT ARTICOLO.ART_NO');
DM.IBQueryTemp.SQL.Add('FROM ARTICOLO');
DM.IBQueryTemp.SQL.Add('WHERE ARTICOLO.'+DM.IBDataSetParamEANTOSCAN.AsString+'="'+EANCODE+'"');
//DM.IBQueryTemp.SQL.Add('WHERE (ARTICOLO.EANCODE ="'+EANCODE+'") OR (ARTICOLO.EANCODE2 ="'+EANCODE+'")');
DM.IBQueryTemp.Open;
if DM.IBQueryTemp.IsEmpty then
Result:=0;
Result:=DM.IBQueryTemp.Fields.Fields[0].AsInteger;
DM.IBQueryTemp.Close;
end;

function Tmenu.QueryEanSched(EANCODE: String; ORDBY:String):boolean;
begin
DM.IBDataSetSchedule.Close;
DM.IBDataSetSchedule.SelectSQL.Clear;
DM.IBDataSetSchedule.SelectSQL.Add('SELECT COGNRAGSOC, NOME, INDIRIZZO, N_DOC, SCHEDULE.*');
DM.IBDataSetSchedule.SelectSQL.Add('FROM SCHEDULE JOIN CLIENTI ON CLIENTI.CLI_NO = SCHEDULE.CLI_NO');
DM.IBDataSetSchedule.SelectSQL.Add('WHERE SCHEDULE.EANCODE = "'+EANCODE+'"');
DM.IBDataSetSchedule.SelectSQL.Add('ORDER BY "'+ORDBY+'"');
DM.IBDataSetSchedule.Open;
If not DM.IBDatasetSchedule.IsEmpty Then
Result:=true
else
Result:=false;
end;

function Tmenu.QueryEanSchedArtPerson(EANCODE: String; WHERECLS:String; ORDBY:String):boolean;
var temp:integer;
begin
{if radiogroup2.ItemIndex = 2 then
begin
DM.IBDataSetSchedule.Close;
DM.IBDataSetSchedule.SelectSQL.Clear;
DM.IBDataSetSchedule.SelectSQL.Add('SELECT COGNRAGSOC, NOME, INDIRIZZO, N_DOC, SCHEDULE.*');
DM.IBDataSetSchedule.SelectSQL.Add('FROM SCHEDULE JOIN CLIENTI ON SCHEDULE.CLI_NO = CLIENTI.CLI_NO JOIN RENTEDART ON SCHEDULE.SCHED_NO = RENTEDART.SCHED_NO');
DM.IBDataSetSchedule.SelectSQL.Add(WHERECLS+'"'+inttostr(QueryEanArtToArtno(Eancode))+'"');
DM.IBDataSetSchedule.SelectSQL.Add('ORDER BY '+ORDBY);
DM.IBDataSetSchedule.Open;
end;
if (radiogroup2.ItemIndex = 0) OR (radiogroup2.ItemIndex = 1) then
begin
if (radiogroup2.ItemIndex=0) and (length(EANCODE)=13)  then
begin
EANCODE:=leftstr(EANCODE,7);
EANCODE:='$'+rightstr(EANCODE,5);   // ilo $ serve per identificare il valore esadecimale
temp:=strtoint64(EANCODE);
EANCODE:=ean39gen2(dM.IBDataSetParamPRE_SCHED_NO.AsString,inttostr(temp));
end;
DM.IBDataSetSchedule.Close;
DM.IBDataSetSchedule.SelectSQL.Clear;
DM.IBDataSetSchedule.SelectSQL.Add('SELECT COGNRAGSOC, NOME, INDIRIZZO, N_DOC, SCHEDULE.*');
DM.IBDataSetSchedule.SelectSQL.Add('FROM SCHEDULE JOIN CLIENTI ON CLIENTI.CLI_NO = SCHEDULE.CLI_NO');
If radiogroup1.ItemIndex = 0 then
DM.IBDataSetSchedule.SelectSQL.Add('WHERE SCHEDULE.EANCODE="'+EANCODE+'" OR SCHEDULE.EANCODE2="'+EANCODE+'"')
else
DM.IBDataSetSchedule.SelectSQL.Add(WHERECLS+'"'+EANCODE+'"');
DM.IBDataSetSchedule.SelectSQL.Add('ORDER BY '+ORDBY);
DM.IBDataSetSchedule.Open;
end;
if radiogroup2.ItemIndex = 3 then
begin
DM.IBDataSetSchedule.Close;
DM.IBDataSetSchedule.SelectSQL.Clear;
DM.IBDataSetSchedule.SelectSQL.Add('SELECT COGNRAGSOC, CLIENTI.NOME, INDIRIZZO, N_DOC, SCHEDULE.*');
DM.IBDataSetSchedule.SelectSQL.Add('FROM SCHEDULE JOIN CLIENTI ON SCHEDULE.CLI_NO = CLIENTI.CLI_NO JOIN OPERATORI ON SCHEDULE.OWNER = OPERATORI.DIP_NO');
DM.IBDataSetSchedule.SelectSQL.Add(WHERECLS+'"'+EANCODE+'"');
DM.IBDataSetSchedule.SelectSQL.Add('ORDER BY '+ORDBY);
DM.IBDataSetSchedule.Open;
end;

If DM.IBDatasetSchedule.IsEmpty Then
Result:=true
else
Result:=false;}
end;


function TMenu.QueryIsRented(ARTNO: String):boolean;
begin
if CheckArtReplay(ARTNO)=false then
begin
// if not DM.IBTransaction10.InTransaction then
// DM.IBTransaction10.StartTransaction;
 DM.IBQueryTemp.Close;
 DM.IBQueryTemp.SQL.Clear;
 DM.IBQueryTemp.SQL.Add('SELECT AVAILABLE');
 DM.IBQueryTemp.SQL.Add('FROM ARTICOLO');
 DM.IBQueryTemp.SQL.Add('WHERE ART_NO="'+ARTNO+'"');
 DM.IBQueryTemp.Open;
 if not DM.IBQueryTemp.IsEmpty then
  begin
   If (DM.IBQueryTemp.Fields.Fields[0].AsString='NOLEGGIATO') Then
    Result:=false
   else
    Result:=true;
//   DM.IBTransaction10.Commit;
//   DM.IBDataSetArticolo.Open;
//   DM.IBDataSetArticolo.Refresh;
  end
  else
  Result:=true;
end
else
Result:=true;
DM.IBQueryTemp.Close;
end;



function TMenu.QueryCheckStatus(ARTNO: String; Stato:String):boolean;
var ibquerytmp:TIBQuery;
begin
ibquerytmp:=TibQuery.Create(nil);
ibquerytmp.Transaction:=DM.IBTransaction2;
ibquerytmp.SQL.Clear;
ibquerytmp.SQL.Add('SELECT AVAILABLE, FLAGREPLAY');
ibquerytmp.SQL.Add('FROM ARTICOLO');
ibquerytmp.SQL.Add('WHERE ART_NO="'+ARTNO+'"');
ibquerytmp.Open;
If (ibquerytmp.Fields.Fields[0].AsString= stato) or (ibquerytmp.Fields.Fields[1].AsInteger=1) Then
Result:=true
else
Result:=false;
ibquerytmp.Close;
ibquerytmp.Free;
end;


function TMenu.CheckArtIsInRenting(ARTNO: String):boolean;
var ibquerytmp:TIBQuery;
begin

 ibquerytmp:=TIbQuery.Create(nil);
 ibquerytmp.Database:=DM.IBDatabase1;
 ibquerytmp.SQL.Clear;
 ibquerytmp.SQL.Add('select rentedart.STATO, articolo.FLAGREPLAY' +
                        ' from rentedart inner join articolo' +
                        ' on rentedart.ART_NO = articolo.ART_NO' +
                        ' and rentedart.STATO="NOLEGGIATO"' +
                        ' where rentedart.ART_NO="'+ARTNO+'"');
 ibquerytmp.Open;
 if ibquerytmp.IsEmpty then begin result:=false; exit; end;
 result:=true;
 ibquerytmp.Close;
 ibquerytmp.Free;
end;




function TMenu.QueryIsInRepair(ARTNO: String):boolean;
begin
//if not DM.IBTransaction10.InTransaction then
//DM.IBTransaction10.StartTransaction;
DM.IBQueryTemp.Close;
DM.IBQueryTemp.SQL.Clear;
DM.IBQueryTemp.SQL.Add('SELECT AVAILABLE');
DM.IBQueryTemp.SQL.Add('FROM ARTICOLO');
DM.IBQueryTemp.SQL.Add('WHERE ART_NO="'+ARTNO+'"');
DM.IBQueryTemp.Open;
If DM.IBQueryTemp.Fields.Fields[0].AsString='RIPARAZIONE' Then
Result:=true
else
Result:=false;
//DM.IBTransaction10.CommitRetaining;
//DM.IBDataSetArticolo.Refresh;
DM.IBQueryTemp.Close;

end;




function Tmenu.QueryIsArtInRentedArt(ARTNO: String):boolean;
begin
//if not DM.IBTransaction10.InTransaction then
///DM.IBTransaction10.StartTransaction;
DM.IBQueryTemp.Close;
DM.IBQueryTemp.SQL.Clear;
DM.IBQueryTemp.SQL.Add('SELECT COUNT(*)');
DM.IBQueryTemp.SQL.Add('FROM RENTEDART');
DM.IBQueryTemp.SQL.Add('WHERE ART_NO="'+ARTNO+'"');
DM.IBQueryTemp.Open;
If DM.IBQueryTemp.Fields.Fields[0].AsInteger=0 Then
Result:=False
else
Result:=True;
//DM.IBTransaction10.Commit;
DM.IBQueryTemp.Close;
end;

function Tmenu.QueryArtToDownload(ARTNO: String; SCHEDNO:string):boolean;
begin
//if not DM.IBTransaction10.InTransaction then
//DM.IBTransaction10.StartTransaction;
DM.IBQueryTemp.Close;
DM.IBQueryTemp.Transaction:=dM.IBTransaction6;
DM.IBQueryTemp.SQL.Clear;
DM.IBQueryTemp.SQL.Add('SELECT RENTEDART.STATO');
DM.IBQueryTemp.SQL.Add('FROM ARTICOLO JOIN RENTEDART ON RENTEDART.ART_NO = ARTICOLO.ART_NO');
DM.IBQueryTemp.SQL.Add('WHERE (RENTEDART.ART_NO="'+ARTNO+'") AND (RENTEDART.SCHED_NO="'+SCHEDNO+'")');
DM.IBQueryTemp.Open;
DM.IBQueryTemp.First;
while not DM.IBQueryTemp.eof do
 begin
  If DM.IBQueryTemp.Fields.Fields[0].AsString='NOLEGGIATO' Then
   begin
   Result:=true;
    break;
   end
  else
   Result:=false;
    DM.IBQueryTemp.Next;
 end;
//  DM.IBTransaction10.Commit;
DM.IBQueryTemp.Close;
end;






function Tmenu.EanAlreadyInsert(artno: integer ;schedno:integer) :boolean;
begin
//DM.IBQueryTemp.Close;
//DM.IBQueryTemp.SQL.Clear;
//DM.IBQueryTemp.SQL.Add('SELECT ART_NO');
//DM.IBQueryTemp.SQL.Add('FROM RENTEDART');
//DM.IBQueryTemp.SQL.Add('WHERE RENTEDART.SCHED_NO= :SCHEDNO AND RENTEDART.ART_NO =:ARTNO ');
//DM.IBQueryTemp.Params[0].Value:=schedno;
//DM.IBQueryTemp.Params[1].Value:=artno;
//DM.IBQueryTemp.Open;
//result:=DM.IBQueryTemp.IsEmpty;
end;





procedure Tmenu.QueryRentedArtToGrid(SCHED_NO: Double);
begin
DM.IBQueryArtRented.Close;
DM.IBQueryArtRented.SQL.Clear;
DM.IBQueryArtRented.SQL.Add('SELECT ARTICOLO.*');
DM.IBQueryArtRented.SQL.Add('FROM ARTICOLO ');
DM.IBQueryArtRented.SQL.Add('WHERE ARTICOLO.ART_NO IN ( SELECT RENTEDART.ART_NO FROM RENTEDART WHERE RENTEDART.SCHED_NO = "'+ floattostr(SCHED_NO) +'")');
DM.IBQueryArtRented.Open;
end;


procedure TMenu.TreeView1CustomDrawItem(Sender: TCustomTreeView;
  Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: Boolean);
  var temp:string;
      i:integer;
  begin
  if node.Level=2 then
  begin
//copy(edit12.Text,1,pos(' ',edit12.Text)-1);
 temp:=copy(node.Text,pos(' ',node.Text)+1,length(node.Text));
 for i := 1 to 5 do
 temp:=copy(temp,pos(' ',temp)+1,length(temp));
  if temp='CHIUSA' then
   Sender.Canvas.Font.Color := clgreen;
 if temp='APERTA' then
   Sender.Canvas.Font.Color := clred;
  if temp='PARZIALE' then
   Sender.Canvas.Font.Color := $004080FF;
  end;

    if node.Level=3 then
  begin
  if Ansicontainsstr(node.Text,'RESO') then
   Sender.Canvas.Font.Color := clgreen;
  if Ansicontainsstr(node.Text,'NOLEGGIATO') then
   Sender.Canvas.Font.Color := clred;

  end;







  end;

procedure TMenu.TreeView1DblClick(Sender: TObject);
Var schedno,clino,cognome,nome,temp:string;
begin
if treeview1.Selected.Level=0 then
 begin
   treeview1.Selected.DeleteChildren;
  DM.IBQueryTemp.Close;
  DM.IBQueryTemp.SQL.Clear;
  DM.IBQueryTemp.SQL.Add('SELECT DISTINCT CLIENTI.CLI_NO, CLIENTI.COGNRAGSOC, CLIENTI.NOME');
  DM.IBQueryTemp.SQL.Add('FROM SCHEDULE JOIN CLIENTI ON SCHEDULE.CLI_NO=CLIENTI.CLI_NO');
  DM.IBQueryTemp.SQL.Add('ORDER BY CLIENTI.COGNRAGSOC');
  DM.IBQueryTemp.Open;
  DM.IBQueryTemp.First;
 end;
if treeview1.Selected.Level=1 then
  begin
    treeview1.Selected.DeleteChildren;
  temp:=Treeview1.Selected.Text;
  //:=copy(temp,1,pos(' ',temp)-1);
  CLINO:=copy(temp,pos(' ',temp)+1,length(temp));
  CLINO:=Trimright(copy(CLINO,pos(' ',CLINO)+1,length(CLINO)));
  DM.IBQueryTemp.Close;
  DM.IBQueryTemp.SQL.Clear;
  DM.IBQueryTemp.SQL.Add('SELECT DISTINCT SCHEDULE.SCHED_NO, SCHEDULE.DATASTARTRENT, SCHEDULE.NETPRICE, SCHEDULE.STATO');
  DM.IBQueryTemp.SQL.Add('FROM SCHEDULE JOIN CLIENTI ON SCHEDULE.CLI_NO=CLIENTI.CLI_NO');
 // DM.IBQueryTemp.SQL.Add('WHERE CLIENTI.COGNRAGSOC LIKE "'+ COGNOME +'%" AND CLIENTI.NOME LIKE "'+ NOME +'%"');
  DM.IBQueryTemp.SQL.Add('WHERE CLIENTI.CLI_NO= "'+ CLINO +'"');
  DM.IBQueryTemp.SQL.Add('ORDER BY SCHEDULE.SCHED_NO');
  DM.IBQueryTemp.Open;

  DM.IBQueryTemp.First;
 end;
if treeview1.Selected.Level=2 then
  begin
    treeview1.Selected.DeleteChildren;
  temp:=Treeview1.Selected.Text;
  //:=copy(temp,1,pos(' ',temp)-1);
  SCHEDNO:=copy(temp,1,pos(' ',temp)-1);
  DM.IBQueryTemp.Close;
  DM.IBQueryTemp.SQL.Clear;
  DM.IBQueryTemp.SQL.Add('SELECT ARTICOLO.ART_NO, ARTICOLO.TIPO, ARTICOLO.BRAND, ARTICOLO.DESCRIZIONE, ARTICOLO.MISURA, RENTEDART.STATO');
  DM.IBQueryTemp.SQL.Add('FROM ARTICOLO JOIN RENTEDART ON ARTICOLO.ART_NO=RENTEDART.ART_NO');
  DM.IBQueryTemp.SQL.Add('WHERE RENTEDART.SCHED_NO= "'+ SCHEDNO +'"');
  DM.IBQueryTemp.SQL.Add('ORDER BY ARTICOLO.TIPO');
  DM.IBQueryTemp.Open;
  DM.IBQueryTemp.First;
 end;

  while not DM.IBQueryTemp.Eof do
   begin
   if (treeview1.Selected.Level=0) then
    TreeView1.Items.AddChild(treeview1.Selected,trimleft(DM.IBQueryTemp.Fields.Fields[1].asstring+' '+DM.IBQueryTemp.Fields.Fields[2].asstring+' '+DM.IBQueryTemp.Fields.Fields[0].asstring));
   if treeview1.Selected.Level=1 then
    TreeView1.Items.AddChild(treeview1.Selected,trimleft(DM.IBQueryTemp.Fields.Fields[0].asstring+' - '+DM.IBQueryTemp.Fields.Fields[1].asstring+' - €.'+DM.IBQueryTemp.Fields.Fields[2].asstring+' - '+DM.IBQueryTemp.Fields.Fields[3].asstring));
   if treeview1.Selected.Level=2 then
    TreeView1.Items.AddChild(treeview1.Selected,trimleft(DM.IBQueryTemp.Fields.Fields[0].asstring+' - '+DM.IBQueryTemp.Fields.Fields[1].asstring+' - '+DM.IBQueryTemp.Fields.Fields[2].asstring+' - '+DM.IBQueryTemp.Fields.Fields[3].asstring+' - '+DM.IBQueryTemp.Fields.Fields[4].asstring+' - '+DM.IBQueryTemp.Fields.Fields[5].asstring)) ;
    DM.IBQueryTemp.Next;
   end;


end;

procedure TMenu.TreeView1KeyPress(Sender: TObject; var Key: Char);
var artno,schedno,temp,clino:string;
begin
if (ord(Key) = 13) and (treeview1.Selected.Level=1)  then
begin
  temp:=Treeview1.Selected.Text;
  CLINO:=copy(temp,pos(' ',temp)+1,length(temp));
  CLINO:=copy(CLINO,pos(' ',CLINO)+1,length(CLINO));
  DM.IBDataSetClienti.Close;
  DM.IBDataSetClienti.SelectSQL.Clear;
  DM.IBDataSetClienti.SelectSQL.Add('SELECT *');
  DM.IBDataSetClienti.SelectSQL.Add('FROM Clienti');
  DM.IBDataSetClienti.SelectSQL.Add('WHERE CLI_NO= "'+ CLINO +'"');
  DM.IBDataSetClienti.Open;
Tabsheet1.TabVisible:=true;
Pagecontrol1.ActivePageIndex:=0;
end;
if (ord(Key) = 13) and (treeview1.Selected.Level=2)  then
begin
  temp:=Treeview1.Selected.Text;
  SCHEDNO:=copy(temp,1,pos(' ',temp)-1);
  DM.IBDataSetschedule.Close;
  DM.IBDataSetschedule.SelectSQL.Clear;
  DM.IBDataSetschedule.SelectSQL.Add('SELECT COGNRAGSOC, NOME, INDIRIZZO, N_DOC, SCHEDULE.*');
  DM.IBDataSetschedule.SelectSQL.Add('FROM SCHEDULE JOIN CLIENTI ON CLIENTI.CLI_NO = SCHEDULE.CLI_NO');
  DM.IBDataSetschedule.SelectSQL.Add('WHERE SCHED_NO= "'+ SCHEDNO +'"');
  DM.IBDataSetschedule.Open;
  DM.IBDataSetRented.Close;
  DM.IBDataSetRented.Prepare;
  DM.IBDataSetRented.Params.ByName('SCHEDNO').AsInteger:=strtoint(SCHEDNO);
  DM.IBDataSetRented.open;
  Edit14.Text:=inttostr(QtaArtPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));
  Edit16.Text:=inttostr(QtaArtApertiPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));
  Edit15.Text:=inttostr(QtaArtChiusiPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));
  Tabsheet3.TabVisible:=true;
 Pagecontrol1.ActivePageIndex:=2;
end;
if (ord(Key) = 13) and (treeview1.Selected.Level=3)  then
begin
temp:=Treeview1.Selected.Text;
 ARTNO:=copy(temp,1,pos(' ',temp)-1);
 DM.IBDataSetArticolo.Close;
DM.IBDataSetArticolo.SelectSQL.Clear;
DM.IBDataSetArticolo.SelectSQL.Add('SELECT *');
DM.IBDataSetArticolo.SelectSQL.Add('FROM ARTICOLO');
DM.IBDataSetArticolo.SelectSQL.Add('WHERE ARTICOLO.ART_NO = "'+ ARTNO +'"');
DM.IBDataSetArticolo.Open;
DettArt.ShowModal;
end;



end;

function Tmenu.TrimEanCode(temp:string):string;
begin
TrimEanCode:='*'+trimleft(temp)+'*';
end;

Function Tmenu.CheckArtReplay(ARTNO:String):boolean;
begin
DM.IBQueryTemp.Close;
DM.IBQueryTemp.Transaction:=DM.IBTransaction6;
//DM.IBQueryTemp.Close;
DM.IBQueryTemp.SQL.Clear;
DM.IBQueryTemp.SQL.Add('SELECT FLAGREPLAY');
DM.IBQueryTemp.SQL.Add('FROM ARTICOLO');
DM.IBQueryTemp.SQL.Add('WHERE ART_NO = "'+ ARTNO+'"');
DM.IBQueryTemp.Open;
if (DM.IBQueryTemp.Fields.Fields[0].IsNull) or (DM.IBQueryTemp.Fields.Fields[0].AsInteger=0) then
 result:=false
else
 result:=true;
DM.IBQueryTemp.Close;
end;




procedure TMenu.Edit3KeyPress(Sender: TObject; var Key: Char);
var numart,aperti,chiusi,artno: integer;
    eanstr: string;
begin
if ord(key) = 10 then
begin  (Sender as TEdit).Clear; exit; end;
if ord(key) = 13 then
begin
  if ControlFieldschedule = true then
  begin
   eanstr:=TrimEanCode((Sender as TEdit).text);
   artno:=QueryEanArtToArtno(Eanstr);
   if (QueryIsRented(inttostr(artno)) = true) and (artno>0)  then
    begin
       if artno <> NULL then
       begin
        if CheckArtReplay(inttostr(Artno))=false then
        SetArtStato(artno,'NOLEGGIATO');
        DM.IBDataSetRented.Insert;
        DM.IBDataSetRentedCLI_NO.AsFloat:=DM.IBDataSetClientiCLI_NO.Value;
        DM.IBDataSetRentedART_NO.AsFloat:=QueryEanArtToArtno(EANSTR);
        DM.IBDataSetRentedSCHED_NO.AsFloat:=DM.IBDataSetScheduleSCHED_NO.Value;
        DM.IBDataSetRentedSTATO.AsString:='NOLEGGIATO';
        DM.IBDataSetRented.Post;
        SetRentedStato(artno,DM.IBDataSetScheduleSCHED_NO.AsInteger,'NOLEGGIATO');
if not((sender as TEdit).Owner.Name='TennisMng') then
   begin
   DM.IBDataSetRented.Close;
   DM.IBDataSetRented.Prepare;
   DM.IBDataSetRented.Params.ByName('SCHEDNO').AsInteger:=DM.IBDataSetScheduleSCHED_NO.AsInteger;
   DM.IBDataSetRented.Open;
   end
   else
   begin
  DM.IBDataSetRented.Close;
  DM.IBDataSetRented.SelectSQL.Clear;
  DM.IBDataSetRented.SelectSQL.Add('SELECT ARTICOLO.*, RENTEDART.*');
  DM.IBDataSetRented.SelectSQL.Add('FROM ARTICOLO JOIN RENTEDART ON ARTICOLO.ART_NO=RENTEDART.ART_NO');
  if not DM.IBDataSetScheduleSched_no.IsNull then
  DM.IBDataSetRented.SelectSQL.Add('WHERE (ARTICOLO.TIPO="RACCHETTA TENNIS") AND (RENTEDART.SCHED_NO="'+DM.IBDataSetScheduleSCHED_NO.AsString+'")')
  else
  DM.IBDataSetRented.SelectSQL.Add('WHERE (ARTICOLO.TIPO="RACCHETTA TENNIS") AND (RENTEDART.SCHED_NO= NULL)');
  DM.IBDataSetRented.Open;
  end;

    Dm.IBDataSetRented.First;
      numart:=0; Aperti:=0; chiusi:=0;
      while not Dm.IBDataSetRented.Eof do
       begin
        inc(numart);
        if DM.IBDataSetRentedSTATO.AsString = 'NOLEGGIATO' Then
        inc(aperti)
        else
       inc(chiusi);
        DM.IBDataSetRented.Next;
       end;

(Sender as Tedit).Clear;
  if not((sender as TEdit).Owner.Name='TennisMng') then
   begin
   edit14.Text:=inttostr(numart);
   edit15.Text:=inttostr(chiusi);
   edit16.Text:=inttostr(aperti);
   end
   else
   begin
   Tennismng.edit13.Text:=inttostr(numart);
   Tennismng.edit17.Text:=inttostr(chiusi);
   Tennismng.edit18.Text:=inttostr(aperti);
   end;

   if (Chiusi=0) and (NumArt=0) and (Aperti=0) then
DM.IBDataSetScheduleSTATO.AsString:='INUTILIZZATA';
if (Chiusi=0) and (NumArt>0) and (Aperti>0) then
DM.IBDataSetScheduleSTATO.AsString:='APERTA';
if (Chiusi>0) and (NumArt>0) and (Chiusi<NumArt) then
DM.IBDataSetScheduleSTATO.AsString:='PARZIALE';
if (NumArt>0) and ((Chiusi>NumArt) or (Aperti>NumArt)) then
DM.IBDataSetScheduleSTATO.AsString:='INCOERENTE';
if (NumArt>0) and (Chiusi=NumArt) and (Aperti=0)then

Begin
DM.IBDataSetScheduleDATACLOSESCHD.AsDateTime:=today;
DM.IBDataSetScheduleSTATO.AsString:='CHIUSA'; //quando setto lo stato partono le mail al cambio dello stato stesso
end
else
DM.IBDataSetScheduleDATACLOSESCHD.Clear;

//  edit14.Text:=inttostr(ScheduleResult(DM.IBDataSetScheduleSCHED_NO.AsInteger));
//  Edit16.Text:=inttostr(QtaArtApertiPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));
//  Edit15.Text:=inttostr(QtaArtChiusiPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));

   //DM.IBQueryArtRented.Close;
   //DM.IBQueryArtRented.Params[0].AsFloat:=DM.IBDataSetScheduleSCHED_NO.Value;
   //DM.IBQueryArtRented.open;
   end
   else
   begin
   MessageDlg('Codice Inserito Non Presente nell Elenco Articoli ', mtWarning,[mbOk], 0);
   (Sender as TEdit).Clear;
   end;
  end
  else
  begin
  MessageDlg('Articolo Indisponibile', mtWarning,[mbOk], 0);
  (Sender as TEdit).Clear;
  end;
  end;
  end;
 end;

procedure TMenu.DBEdit33Enter(Sender: TObject);
begin
DM.IBDataSetScheduleDATASTARTRENT.EditMask:='99/99/9999;1;_'

end;

procedure TMenu.DBEdit34Enter(Sender: TObject);
begin
DM.IBDataSetScheduleDATATAKEBACK.EditMask:='99/99/9999;1;_';
end;

procedure TMenu.DBEdit35Enter(Sender: TObject);
begin
DM.IBDataSetScheduleDATACLOSESCHD.EditMask:='99/99/9999;1;_'
end;

procedure TMenu.SpeedButton4Click(Sender: TObject);
begin
BrDateForm.date:=date;
if BrDateForm.Showmodal= mrOk then
    DM.IBDataSetScheduleDATASTARTRENT.AsDateTime:=BrDateForm.Date;
    DM.IBDataSetScheduleDAYUSE.Value:=1;
    DM.IBDataSetScheduleDATATAKEBACK.AsDateTime:=BrDateForm.Date+1;
    end;

procedure TMenu.SpeedButton6Click(Sender: TObject);
begin
BrDateForm.date:=date;
if BrDateForm.Showmodal= mrOk then
    DM.IBDataSetScheduleDATATAKEBACK.AsDateTime:=BrDateForm.Date;
    if not tennismng.Showing=true then
    DBEdit34.SetFocus
    else
    Tennismng.DBEdit28.SetFocus

end;

Procedure Tmenu.RefreshRentedArt(Cli:integer; Sched:integer);
var num,i:integer;
begin
{ DM.IBQueryArtRented.Close;
   DM.IBQueryArtRented.Params[1].Value:=CLI;
   DM.IBQueryArtRented.Params[0].Value:=SCHED;
   DM.IBQueryArtRented.Prepare;
   DM.IBQueryArtRented.Open;
   DM.IBQueryArtRented.Last;
   num:=DM.IBQueryArtRented.RecNo;
   stringgrid1.rowcount:=num+1;
   stringgrid1.FixedRows:=1;
   DM.IBQueryArtRented.First;
   stringgrid1.Cells[0,0]:='ARTNO';
   stringgrid1.Cells[1,0]:='TIPO';
   stringgrid1.Cells[2,0]:='BRAND';
   stringgrid1.Cells[3,0]:='DESCRIZIONE';
   stringgrid1.Cells[4,0]:='MISURA';
   stringgrid1.Cells[5,0]:='STAGIONE';
  stringgrid1.Cells[6,0]:='COLORE';
 stringgrid1.Cells[6,0]:='INTRODATE';
For i:=1 to num do
 begin
  DM.IBQueryArticolo.Close;
  DM.IBQueryArticolo.Params[0].Value:=DM.IBQueryArtRentedART_NO.AsInteger;
  DM.IBQueryArticolo.open;
  DM.IBQueryArticolo.First;
  stringgrid1.Cells[0,i]:=DM.IBQueryArticoloART_NO.AsString;
  stringgrid1.Cells[1,i]:=DM.IBQueryArticoloTIPO.AsString;
  stringgrid1.Cells[2,i]:=DM.IBQueryArticoloBRAND.AsString;
  stringgrid1.Cells[3,i]:=DM.IBQueryArticoloDESCRIZIONE.AsString;
  stringgrid1.Cells[4,i]:=DM.IBQueryArticoloMISURA.AsString;
  stringgrid1.Cells[5,i]:=DM.IBQueryArticoloSTAGIONE.AsString;
  stringgrid1.Cells[6,i]:=DM.IBQueryArticoloCOLORE.AsString;
  stringgrid1.Cells[7,i]:=DM.IBQueryArticoloINTRODATE.AsString;
  DM.IBQueryArtRented.Next;
 end;}
end;


procedure TMenu.SetArtStato(Artno:integer; stato:string);
begin
if not DM.IBTransaction10.InTransaction then
DM.IBTransaction10.StartTransaction;
DM.IBQueryTemp.Close;
DM.IBQueryTemp.SQL.Clear;
DM.IBQueryTemp.SQL.Add('UPDATE ARTICOLO');
if STATO='RIPARAZIONE' then
DM.IBQueryTemp.SQL.Add('SET AVAILABLE = "'+Stato+'", RIPDATA = "NOW"')
else
DM.IBQueryTemp.SQL.Add('SET AVAILABLE = "'+Stato+'", RIPDATA = NULL');
DM.IBQueryTemp.SQL.Add('WHERE ART_NO = "'+inttostr(Artno)+'"');
DM.IBQueryTemp.ExecSQL;
DM.IBTransaction10.Commitretaining;
DM.IBDataSetArticolo.Close;
DM.IBDataSetArticolo.open;
end;

procedure TMenu.SetArtStatoRip(Artno:integer; stato:string);
begin
DM.IBQueryTemp.Close;
DM.IBQueryTemp.SQL.Clear;
DM.IBQueryTemp.SQL.Add('UPDATE ARTICOLO');
if STATO='RIPARAZIONE' then
DM.IBQueryTemp.SQL.Add('SET AVAILABLE = "'+Stato+'", RIPDATA = "NOW"')
else
DM.IBQueryTemp.SQL.Add('SET AVAILABLE = "'+Stato+'", RIPDATA = NULL');
DM.IBQueryTemp.SQL.Add('WHERE ART_NO = "'+inttostr(Artno)+'"');
DM.IBQueryTemp.ExecSQL;
end;





procedure TMenu.SetRentedStato(Artno:integer; schedno:integer; stato:string);
begin
if not DM.IBTransaction10.InTransaction then
DM.IBTransaction10.StartTransaction;
DM.IBQueryTemp.Close;
DM.IBQueryTemp.SQL.Clear;
DM.IBQueryTemp.SQL.Add('UPDATE RENTEDART');
DM.IBQueryTemp.SQL.Add('SET STATO = "'+Stato+'"');
DM.IBQueryTemp.SQL.Add('WHERE ART_NO = "'+inttostr(Artno)+'" AND SCHED_NO = "'+inttostr(schedno)+'"');
DM.IBQueryTemp.ExecSQL;
DM.IBTransaction10.Commit;
DM.IBDataSetRented.close;
DM.IBDataSetRented.open;
end;


procedure TMenu.SetRentedStatoALL(Artno:integer; stato:string);
begin
if not DM.IBTransaction10.InTransaction then
DM.IBTransaction10.StartTransaction;
DM.IBQueryTemp.Close;
DM.IBQueryTemp.SQL.Clear;
DM.IBQueryTemp.SQL.Add('UPDATE RENTEDART');
DM.IBQueryTemp.SQL.Add('SET STATO = "'+Stato+'"');
DM.IBQueryTemp.SQL.Add('WHERE ART_NO = "'+inttostr(Artno)+'"');
DM.IBQueryTemp.ExecSQL;
DM.IBTransaction10.Commit;
  DM.IBDataSetRented.Close;
 DM.IBDataSetRented.Prepare;
  DM.IBDataSetRented.Params.ByName('SCHEDNO').AsInteger:=DM.IBDataSetScheduleSCHED_NO.AsInteger;
  DM.IBDataSetRented.open;
  Edit14.Text:=inttostr(QtaArtPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));
  Edit16.Text:=inttostr(QtaArtApertiPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));
  Edit15.Text:=inttostr(QtaArtChiusiPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));


end;


procedure TMenu.SetRentedStato1(Artno:integer; stato:string);
begin
if not DM.IBTransaction10.InTransaction then
DM.IBTransaction10.StartTransaction;
DM.IBQueryTemp.Close;
DM.IBQueryTemp.SQL.Clear;
DM.IBQueryTemp.SQL.Add('UPDATE RENTEDART');
DM.IBQueryTemp.SQL.Add('SET STATO = "'+Stato+'"');
DM.IBQueryTemp.SQL.Add('WHERE ART_NO = "'+inttostr(Artno)+'"');
DM.IBQueryTemp.ExecSQL;
DM.IBTransaction10.Commit;
DM.IBDataSetRented.close;
DM.IBDataSetRented.open;
end;

// procedura che calcola il prezzo del noleggio per il giorno considerato

Function TMenu.PrezzoNoloArt(Tipo:string; giorno:string):real;
begin
//if not DM.IBTransaction10.InTransaction then
//DM.IBTransaction10.StartTransaction;
DM.IBQueryTemp.Close;
DM.IBQueryTemp.SQL.Clear;
DM.IBQueryTemp.SQL.Add('SELECT '+ Giorno);
DM.IBQueryTemp.SQL.Add('FROM PRICELIST');
DM.IBQueryTemp.SQL.Add('WHERE TIPO = "'+ Tipo+'"' );
//Memo1.Text:=DM.IBQuerytemp.Text;
DM.IBQueryTemp.Open;
if DM.IBQueryTemp.Fields.Fields[0].IsNull then
begin
result:=0;
MessageDlg('Listino non impostato', mtWarning,[mbOk], 0);
end
else
result:=DM.IBQueryTemp.Fields.Fields[0].AsFloat;
DM.IBQueryTemp.Close;
//DM.IBTransaction10.Commit;
DM.IBDataSetRented.close;
DM.IBDataSetRented.open;
end;






procedure TMenu.BitBtn2Click(Sender: TObject);
var numart,aperti,chiusi:integer;
tmpQry1,tmpqry2: TIBQuery;
begin
 if not DM.IBQuery1.IsEmpty then
   begin
        tmpQry1:=TIBQuery.Create(nil);
        tmpQry2:=TIBQuery.Create(nil);
        tmpQry1.Database:=DM.IBDatabase1;
        tmpQry2.Database:=DM.IBDatabase1;
        tmpQry1.Transaction:=DM.IBTransaction6;
        tmpQry2.Transaction:=DM.IBTransaction6;
        tmpqry1.SQL.Clear;
        tmpQry1.SQL.Add('SELECT RENTEDART.ART_NO FROM RENTEDART WHERE RENTEDART.SCHED_NO="'+DM.IBDataSetScheduleSCHED_NO.AsString+'"');
        tmpQry1.Open;
        if not tmpQry1.IsEmpty then
        begin
         tmpQry1.First;
          while not tmpQry1.Eof do
           begin
           tmpqry2.SQL.Clear;
           tmpQry2.SQL.Add('UPDATE ARTICOLO SET AVAILABLE="DISPONIBILE" WHERE ARTICOLO.ART_NO ="'+tmpqry1.fieldbyname('ART_NO').AsString+'" AND ARTICOLO.FLAGREPLAY=0');
           tmpQry2.ExecSQL;
           tmpqry1.Next;
           end;
        tmpqry2.Close;
        tmpqry2.SQL.Clear;
        tmpQry2.SQL.Add('DELETE FROM RENTEDART WHERE RENTEDART.SCHED_NO="'+DM.IBDataSetScheduleSCHED_NO.AsString+'"');
        tmpqry2.ExecSQL;
        tmpqry1.Free;
        tmpqry2.Free;
   DM.IBQuery1.Close;
   dM.IBQuery1.Prepare;
   DM.IBQuery1.ParamByName('SCHEDNO').AsInteger:=DM.IBDataSetScheduleSCHED_NO.AsInteger;
   DM.IBQuery1.Open;
   edit14.Text:=inttostr(ScheduleResult(DM.IBDataSetScheduleSCHED_NO.AsInteger));
   Edit16.Text:=inttostr(QtaArtApertiPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));
   Edit15.Text:=inttostr(QtaArtChiusiPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));
   RefreshCalcRentedart;
   DM.IBDataSetScheduleNETPRICE.AsFloat:=DM.IBDataSetScheduleSUBTOTALE.AsFloat-(DM.IBDataSetScheduleSUBTOTALE.AsFloat*DM.IBDataSetScheduleDISCOUNT.AsFloat/100);
   end;
   end;
{
if not DM.IBDataSetRented.IsEmpty then
begin
repeat
SetArtStato(DM.IBDataSetRentedART_NO.AsInteger,'DISPONIBILE');
DM.IBDataSetRented.Delete;
until DM.IBDataSetRented.IsEmpty;
end;
   numart:=0; Aperti:=0; chiusi:=0;
   DM.IBDataSetRented.First;
   while not Dm.IBDataSetRented.Eof do
   begin
   inc(numart);
   if DM.IBDataSetRentedSTATO.AsString = 'NOLEGGIATO' Then
   inc(aperti)
   else
   inc(chiusi);
   DM.IBDataSetRented.Next;
   end;
   edit14.Text:=inttostr(numart);
   edit15.Text:=inttostr(chiusi);
   edit16.Text:=inttostr(aperti);}
end;

procedure TMenu.TabSheet3Show(Sender: TObject);
begin
DM.IBQueryTemp.Close;
DM.IBQueryTemp.Transaction:=DM.IBTransaction6;
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
  DM.IBDataSetRented.open;

DM.IBQuery1.Close;
dM.IBQuery1.Prepare;
DM.IBQuery1.ParamByName('SCHEDNO').AsInteger:=DM.IBDataSetScheduleSCHED_NO.AsInteger;
DM.IBQuery1.Open;

  Edit14.Text:=inttostr(QtaArtPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));
  Edit16.Text:=inttostr(QtaArtApertiPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));
  Edit15.Text:=inttostr(QtaArtChiusiPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));
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


procedure TMenu.FormCreate(Sender: TObject);
var Noloini:TiniFile;
  checksoglia,scrx,scry, k:integer ;
  ratio:double;
  adoconn1:widestring;
 
  begin


//bitbtn39.ControlStyle := bitbtn39.ControlStyle + [csClickEvents];
bitbtn40.ControlStyle := bitbtn40.ControlStyle + [csClickEvents];
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
if DM.IBDataSetClienti.Active = true then
begin
Editcognome.Clear;
EditNome.Clear;
end;
tabsheet7.TabVisible:=false;
tabsheet8.TabVisible:=false;
tabsheet6.TabVisible:=false;
tabsheet4.TabVisible:=false;
tabsheet11.TabVisible:=false;
tabsheet12.TabVisible:=false;
tabsheet10.TabVisible:=false;
tabsheet9.TabVisible:=false;
tabsheet2.TabVisible:=false;

//  SetupCVModule(DM.IBDataSetLocalParamENABCV.AsInteger);
//  SetUpRepModule(DM.IBDataSetLocalParamENABREP.AsInteger);
//  SetUpOperModule(DM.IBDataSetLocalParamENABOPER.AsInteger);
//  SetUpRipModule(DM.IBDataSetLocalParamENABRIP.AsInteger);
//  SetUpFinVModule(DM.IBDataSetLocalParamENABFINV.AsInteger);
//  SetUpTreeVModule(DM.IBDataSetLocalParamENABTREE.AsInteger);
//  SetUpLabModule(DM.IBDataSetLocalParamENABLABMODULE.AsInteger);
//  SetUpTennisModule(DM.IBDataSetLocalParamENABTENNIS.AsInteger);

//pagecontrol1.TabIndex:=0;
passwordDlg.Show;
pagecontrol1.TabIndex:=0;
TabSheet1.Visible:=true;


//Noloini:=Tinifile.Create(changefileext(Application.exename,'.ini'));
Noloini:=Tinifile.Create(AppDataPath+'nolosoft.ini');
try
COMPORTOPN:=Noloini.ReadString('OPN','COMPORT','1');
Edit50.Text:=Noloini.ReadString('SMTP','HOST','serverps.psport.local');
Edit53.Text:=Noloini.ReadString('SMTP','USERNAME','');
Edit54.Text:=Noloini.ReadString('SMTP','PASSWORD','');
Edit55.Text:=Noloini.ReadString('SMTP','PORT','25');
Edit51.Text:=Noloini.ReadString('MAIL','FROM','');
Edit52.Text:=Noloini.ReadString('SMTP','SMSSERVER','');
Edit56.Text:=Noloini.ReadString('MAIL','TO','');
Edit_EndPInvioSMS.text:=Noloini.ReadString('SMS','ENDPOINT_INOLTRO','');
Edit_EndPCreditSMS.text:=Noloini.ReadString('SMS','ENDPOINT_CREDITI','');
Edit_LoginSMS.text:=Noloini.ReadString('SMS','LOGIN','');
Edit_PswSMS.text:=Noloini.ReadString('SMS','PSW','');
Edit_SenderSMS.text:=Noloini.ReadString('SMS','SENDER','');
Edit_SogliaSMS.text:=Noloini.ReadString('SMS','SOGLIA_SMS','0');
Edit_Emailalert.text:=Noloini.ReadString('SMS','EMAIL_SOGLIA','');
Edit_NTelTest.text:=Noloini.ReadString('SMS','NUMTEL_TEST','');
checksoglia:=Noloini.ReadInteger('SMS','ABILITA_CHECK_SOGLIA',0);
adoconn1 :=
  'Provider=Microsoft.Jet.OLEDB.4.0;' +
  'User ID=Admin;' +
  'Data Source=' + AppDataPath + 'CAPNEW.mdb;' +
  'Persist Security Info=False;' +
  'Jet OLEDB:System Database="";' +
  'Jet OLEDB:Registry Path="";' +
  'Jet OLEDB:Database Password="";' +
  'Jet OLEDB:Engine Type=5;' +
  'Jet OLEDB:Database Locking Mode=1;' +
  'Jet OLEDB:Global Partial Bulk Ops=2;' +
  'Jet OLEDB:Global Bulk Transactions=1;' +
  'Jet OLEDB:New Database Password="";' +
  'Jet OLEDB:Create System Database=False;' +
  'Jet OLEDB:Encrypt Database=False;' +
  'Jet OLEDB:Compact Without Replica Repair=False;' +
  'Jet OLEDB:SFP=False';
  DM.ADOConnection1.ConnectionString:=adoconn1;
if checksoglia=1 then
check_soglia.Checked:=true
else
check_soglia.Checked:=false;
finally
noloini.Free;
end;
timer1.Enabled:=true;
if Dm.IBDataSetLocalParamOPNSYSTEM.Value = 1 then
begin
if CommOpen(Rfid_trial.h,'COM5')<>0 then
showmessage('Set Rfid Com Port Failed.');
if SetBaudRate(Rfid_trial.h, 4, 255)<>0 then
showmessage('Set BaudRate Failed.');
if SetRf(h,30,0,255)<>0 then
showmessage('Set Ant Power Failed');
if SetAnt(Rfid_trial.h,4,255)<>0 then
showmessage('Set Rfid Ant Failed');
end;
end;



Procedure Tmenu.SetUpRepModule(Value:integer);
begin
if value=1 then
begin
tabsheet6.Visible:=true;
Report1.Visible:=true;
end
else
begin
tabsheet6.Visible:=false;
Report1.Visible:=false;
end;
end;

Procedure Tmenu.SetUpFinVModule(Value:integer);
begin
if value=1 then
begin
tabsheet10.Visible:=true;
Venduto1.Visible:=true;
end
else
begin
tabsheet10.Visible:=false;
Venduto1.Visible:=false;
end;
end;

Procedure Tmenu.SetUpTreeVModule(Value:integer);
begin
if value=1 then
begin
tabsheet19.Visible:=true;
tabsheet19.tabvisible:=true;
end
else
begin
tabsheet19.Visible:=false;
tabsheet19.tabvisible:=false;
end;
end;

Procedure Tmenu.SetUpRipModule(Value:integer);
begin
if value=1 then
begin
tabsheet8.Visible:=true;
Tabsheet8.TabVisible:=true;
//Report1.Visible:=true;
end
else
begin
Pagecontrol1.TabIndex:=0;
tabsheet8.Visible:=false;
Tabsheet8.TabVisible:=false;
//Report1.Visible:=false;
end;
end;

Procedure Tmenu.SetUpLabModule(Value:integer);
begin
if value=1 then
Bitbtn35.Visible:=true
else
Bitbtn35.Visible:=false;
end;

Procedure Tmenu.SetUpTennisModule(Value:integer);
begin
if value=1 then
Bitbtn38.Visible:=true
else
Bitbtn38.Visible:=false;
end;







Procedure Tmenu.SetUpOperModule(Value:integer);
begin
if value=1 then
begin
tabsheet7.Visible:=true;
Operatori1.Visible:=true;
end
else
begin
tabsheet7.Visible:=false;
Operatori1.Visible:=false;
end;
end;


Procedure Tmenu.SetUpCVModule(Value:integer);
begin
if value=1 then
begin
tabsheet12.Visible:=true;
BitBtn22.Visible:=true;
end
else
begin
BitBtn22.Visible:=false;
tabsheet12.Visible:=false;
end;
end;



procedure TMenu.DBGrid5DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
 var datarect: TRect;
  begin
   (Sender as TDBgrid).Canvas.Brush.Color := clBlack;
    if DM.IBDataSetRentedSTATO.AsString='NOLEGGIATO' then
    (Sender as TDBgrid).Canvas.Font.Color := clRed
    else
    (Sender as TDBgrid).Canvas.Font.Color := clLime;
   (Sender as TDBgrid).DefaultDrawColumnCell(Rect,DataCol,Column, State);

   end;

procedure TMenu.BitBtn1Click(Sender: TObject);
var numart,aperti,chiusi:integer;
    renartnotemp:string;
    tmp:TIBQuery;
    begin
{DM.IBDataSetRented.selectSQL.Clear;
DM.IBDataSetRented.selectSQL.Add('SELECT RENART_NO, FLAGREPLY FROM RENTEDART JOIN ARTICOLO ON RENTEDART.ART_NO=ARTICOLO.ART_NO  WHERE ART_NO="'+DM.IBQuery1.FieldByName('ART_NO').AsString+'" AND SCHED_NO ="'+dm.IBDataSetScheduleSCHED_NO.AsString+'"');
DM.IBDataSetRented.Open;}

//if not DM.IBDataSetRented.IsEmpty then
//begin
// if DM.IBDataSetRented.FieldValues['FLAGREPLY'] = 1 then
//  begin
//  renartnotemp:=DM.IBDataSetRented.FieldValues['RENART_NO'];


  //SetArtStato(DM.IBDataSetRentedART_NO.AsInteger,'DISPONIBILE');
//if

tmp:=TIBQuery.Create(nil);
tmp.Database:=DM.IBDatabase1;
tmp.Transaction:=DM.IBTransaction6;
tmp.SQL.Add('SELECT RENART_NO, FLAGREPLAY FROM RENTEDART JOIN ARTICOLO ON RENTEDART.ART_NO=ARTICOLO.ART_NO WHERE SCHED_NO="'+dm.IBDataSetScheduleSCHED_NO.AsString+'" AND ART_NO="'+DM.IBQuery1.FieldByName('ART_NO').Asstring+'"');
tmp.Open;
if not tmp.IsEmpty then
begin
if tmp.FieldByName('FLAGREPLAY').AsInteger=0 then
SetArtStato(DM.IBQuery1.FieldByName('ART_NO').AsInteger,'DISPONIBILE');
DeleteArtFromRenartNoQry(tmp.fieldbyname('RENART_NO').asstring);
if DM.IBDataSetScheduleSUBTOTALE.AsFloat <> 0 then
begin
DM.IBDataSetScheduleSUBTOTALE.AsFloat:=DM.IBDataSetScheduleSUBTOTALE.AsFloat - CalcRentedArtNew(DM.IBQuery1.FieldByName('ART_NO').AsInteger);
DM.IBDataSetScheduleNETPRICE.AsFloat:=DM.IBDataSetScheduleSUBTOTALE.AsFloat+(DM.IBDataSetScheduleSUBTOTALE.AsFloat*DM.IBDataSetScheduleDISCOUNT.AsFloat/100);
end;
end;
tmp.Free;

   DM.IBQuery1.Close;
   dM.IBQuery1.Prepare;
   DM.IBQuery1.ParamByName('SCHEDNO').AsInteger:=DM.IBDataSetScheduleSCHED_NO.AsInteger;
   DM.IBQuery1.Open;

// DM.IBDataSetRented.Delete;

//end;
//   numart:=0; Aperti:=0; chiusi:=0;
//   DM.IBDataSetRented.First;
//   while not Dm.IBDataSetRented.Eof do
//   begin
//   inc(numart);
//   if DM.IBDataSetRentedSTATO.AsString = 'NOLEGGIATO' Then
//   inc(aperti)
//   else
 //  inc(chiusi);
 //  DM.IBDataSetRented.Next;
 //  end;
//   edit14.Text:=inttostr(numart);
//   edit15.Text:=inttostr(chiusi);
//   edit16.Text:=inttostr(aperti);
   edit14.Text:=inttostr(ScheduleResult(DM.IBDataSetScheduleSCHED_NO.AsInteger));
   Edit16.Text:=inttostr(QtaArtApertiPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));
   Edit15.Text:=inttostr(QtaArtChiusiPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));


   //edit14.Text:=inttostr(NumArtQuery);
   //edit15.Text:=inttostr(NumChiusiQuery);
   //edit16.Text:=inttostr(NumApertiQuery);

//dM.RefreshRentedartQuery;
//  edit14.Text:=inttostr(ScheduleResult(DM.IBDataSetScheduleSCHED_NO.AsInteger));
//  Edit16.Text:=inttostr(QtaArtApertiPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));
//  Edit15.Text:=inttostr(QtaArtChiusiPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));

end;

procedure TMenu.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if ord(Key) = 10 then begin Edit1.Clear; exit; end;
if ord(Key) = 13 then
begin
DM.IBDataSetArticolo.Close;
DM.IBDataSetArticolo.SelectSQL.Clear;
DM.IBDataSetArticolo.SelectSQL.Add('SELECT *');
DM.IBDataSetArticolo.SelectSQL.Add('FROM ARTICOLO');
//DM.IBDataSetArticolo.SelectSQL.Add('WHERE EANCODE = "'+'*'+ Edit1.Text +'*'+'"');
DM.IBDataSetArticolo.SelectSQL.Add('WHERE '+DM.IBDataSetParamEANTOSCAN.AsString +' = "'+'*'+ Edit1.Text +'*'+'"');
DM.IBDataSetArticolo.SelectSQL.Add('ORDER BY ART_NO');
DM.IBDataSetArticolo.Open;
if DM.IBDataSetArticolo.IsEmpty then
MessageDlg('Codice Articolo Non Presente', mtWarning,[mbOk], 0)
else
Edit1.Clear;
end;

end;

procedure TMenu.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if ord(Key) = 13 then
begin
DM.IBDataSetArticolo.Close;
DM.IBDataSetArticolo.SelectSQL.Clear;
DM.IBDataSetArticolo.SelectSQL.Add('SELECT *');
DM.IBDataSetArticolo.SelectSQL.Add('FROM ARTICOLO');
if Edit2.Text<>'' then
DM.IBDataSetArticolo.SelectSQL.Add('WHERE ART_NO = "'+ Edit2.Text +'"');
DM.IBDataSetArticolo.SelectSQL.Add('ORDER BY ART_NO');
DM.IBDataSetArticolo.Open;
if DM.IBDataSetArticolo.IsEmpty then
MessageDlg('Codice Articolo Non Presente', mtWarning,[mbOk], 0);

end;
end;

procedure TMenu.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
DM.IBDataSetArticolo.Close;
DM.IBDataSetArticolo.SelectSQL.Clear;
DM.IBDataSetArticolo.SelectSQL.Add('SELECT *');
DM.IBDataSetArticolo.SelectSQL.Add('FROM ARTICOLO');
DM.IBDataSetArticolo.SelectSQL.Add('WHERE DESCRIZIONE LIKE "'+ Edit4.Text +'%'+'"');
DM.IBDataSetArticolo.SelectSQL.Add('ORDER BY ART_NO');
DM.IBDataSetArticolo.Open;
end;

procedure TMenu.ComboBox1Select(Sender: TObject);
begin
DM.IBDataSetArticolo.Close;
DM.IBDataSetArticolo.SelectSQL.Clear;
DM.IBDataSetArticolo.SelectSQL.Add('SELECT *');
DM.IBDataSetArticolo.SelectSQL.Add('FROM ARTICOLO');
DM.IBDataSetArticolo.SelectSQL.Add('WHERE TIPO = "'+ ComboBox1.Text +'"');
DM.IBDataSetArticolo.SelectSQL.Add('ORDER BY ART_NO');
DM.IBDataSetArticolo.Open;

end;

procedure TMenu.DBEdit36Exit(Sender: TObject);
begin
if not DM.IBDataSetScheduleDATASTARTRENT.IsNull then
DM.IBDataSetScheduleDATATAKEBACK.AsDateTime:=incday(DM.IBDataSetScheduleDATASTARTRENT.AsDateTime,DM.IBDataSetScheduleDAYUSE.AsInteger);
//Label22.Caption:=DBEdit36.Text;

end;

procedure TMenu.DBEdit34Exit(Sender: TObject);
begin
//if (DM.IBDataSetScheduleDAYUSE.IsNull) or (DM.IBDataSetScheduleDAYUSE.AsInteger=0) then
DM.IBDataSetScheduleDAYUSE.AsInteger:=round(DM.IBDataSetScheduleDATATAKEBACK.AsDateTime-DM.IBDataSetScheduleDATASTARTRENT.AsDateTime);
end;


function CheckArtIsReserved(IdArt:string;Dadata:string;Adata:string):integer;
var stored1:TIBStoredProc;
    transac1:TIBTransaction;
    dbase:TIBDatabase;

begin
dbase:=TIBDatabase.Create(DM);
//dbase.DatabaseName:='D:\Noleggio 24-05-17\NOLEGGIO_OK.FDB';
dbase.DatabaseName:=DM.IBDatabase1.DatabaseName;
dbase.SQLDialect:=3;
dbase.Params.Add('user_name=sysdba');
dbase.Params.Add('password=masterkey');
dbase.Params.Add('sql_role_name=master');
dbase.LoginPrompt:=false;
dbase.Connected:=true;
transac1:=TIBTransaction.Create(DM);
transac1.DefaultDatabase:=dbase;
transac1.Params.Add('read_committed');
transac1.Params.Add('rec_version');
transac1.Params.Add('nowait');
transac1.DefaultAction:=TACommit;
stored1:= TIBStoredProc.Create(DM);
stored1.Database:=dbase;
stored1.Transaction:=transac1;
transac1.Active:=false;
stored1.StoredProcName:='ARTICAVAIL';
stored1.ParamByName('ARTICNO').Asinteger:=strtoint(IdArt);
stored1.ParamByName('DADATA').AsDateTime:=strtodate(Dadata);
stored1.ParamByName('ADATA').AsDateTime:=strtodate(Adata);
stored1.ExecProc;
result:=stored1.ParamByName('AVAIL').AsInteger;
stored1.Free;
transac1.Free;
dbase.Free;
end;


function checkinrentedart(artid:string; schedid:string):boolean;
var tmp:TIBQuery;
begin
tmp:=TIBQuery.Create(nil);
tmp.Database:=DM.IBDatabase1;
tmp.Transaction:=DM.IBTransaction6;
tmp.SQL.Add('SELECT MAX(RENART_NO) FROM RENTEDART JOIN ARTICOLO ON RENTEDART.ART_NO=ARTICOLO.ART_NO WHERE RENTEDART.SCHED_NO="'+schedid+'" AND RENTEDART.ART_NO="'+artid+'" AND ARTICOLO.FLAGREPLAY=0 AND RENTEDART.STATO="NOLEGGIATO"');
tmp.Open;
if tmp.Fields.Fields[0].IsNull then
result:=true //se non ci sono articolo = o articoli replicabili restituisce true
else
result:=false;
end;

function artnofromrfid(Rfidcode:string):string;
var tmp:TIBQuery;
begin
tmp:=TIBQuery.Create(nil);
tmp.Database:=DM.IBDatabase1;
tmp.Transaction:=DM.IBTransaction6;
tmp.SQL.Add('SELECT ART_NO FROM ARTICOLO WHERE MANUALCODE="'+Rfidcode+'" OR MANUALCODE1="'+Rfidcode+'"');
tmp.Open;
if tmp.IsEmpty then
result:='NULL'
else
result:=tmp.Fields.Fields[0].AsString;
end;






procedure TMenu.Edit5KeyPress(Sender: TObject; var Key: Char);
var renartno,numart,aperti,chiusi,artno: integer;
    Qry1tmp:TIBQuery;
    eanstr: string;
    edit:string;
    flagunreserved:boolean;
    begin

//if Tennismng.Showing=false then
//Edit:='Edit3'
//else
//Edit:='Edit12';

  flagunreserved:=false;




 if ((sender as TEdit).Name='Edit3') or ((sender as TEdit).Name='Edit12') then
  begin
   if ord(key) = 10 then
    begin  (Sender as TEdit).Clear; exit; end;
  end
   else
  begin
   if key in ['a'..'z']+['A'..'Z'] then
   key:=#0;
  end;

 if (ord(key) = 13)  then
  begin
  if ControlFieldschedule = true then
  begin
 if ((sender as TEdit).Name='Edit3') or ((sender as TEdit).Name='Edit12') then
   begin
   if (length((Sender as TEdit).text)=10) and (leftstr((Sender as TEdit).text,2)='01') then
    begin
     eanstr:=TrimEanCode((Sender as TEdit).text);
     artno:=QueryEanArtToArtno(Eanstr);
    end
    else
     artno:=strtoint((Sender as TEdit).text);
 end
  else
 artno:=ArtnoIsInArticoli((Sender as TEdit).Text);

  //(not DM.IBDataSetParamIGNORESERVATION.Asinteger=0)  and
 // Devo sistemare la procedura sotto: al posto dei giorni, la variabile Dayreservstart Dayreservback
 if  (DM.IBDataSetParamIGNORESERVATION.Asinteger=0) and (CheckArtIsReserved(inttostr(artno),datetimetostr(-DM.IBDataSetParamDAYRESERVSTART.Value),datetimetostr(DM.IBDataSetScheduleDATATAKEBACK.Value+DM.IBDataSetParamDAYRESERVBACK.Value))=1) then
   begin
   showmessage('Articolo non disponibile per il periodo immesso');
   exit;
   end;
 //if (QueryIsRented(inttostr(artno)) = true)and (artno>0)  then   //controllo se l'articolo è già noleggiato
 if  QueryCheckStatus(inttostr(artno),'DISPONIBILE') and (artno>0) and checkinrentedart(inttostr(artno),DM.IBDataSetScheduleSCHED_NO.AsString)  then   //controllo se l'articolo è già noleggiato
   begin
   if artno <> NULL then
   begin
   //DEVO FARE UNA NUOVA QUERY DOVE CONTROLLO SE IL PRODOTTO è PRESENTE
   //if CheckArtReplay(inttostr(Artno))=false then
   //SetArtStato(artno,'NOLEGGIATO');

   renartno:=CheckArtGiaInRented(inttostr(artno),DM.IBDataSetScheduleSCHED_NO.AsString);
//   if (Renartno =0) and (CheckArtReplay(inttostr(Artno))=true) then
    if (Renartno =0) then
    begin
   Qry1Tmp:=TIBQuery.Create(nil);
   Qry1Tmp.active:=false;
   Qry1Tmp.DataBase := DM.IBDatabase1;
   Qry1Tmp.Transaction:=DM.IBTransaction6;
   Qry1Tmp.SQL.Text := 'INSERT INTO RENTEDART (RENART_NO,CLI_NO,ART_NO,SCHED_NO,STATO) VALUES("'+DM.GenID('RENARTNO_GEN')+'","'+DM.IBDataSetClientiCLI_NO.AsString+'","'+inttostr(ARTNO)+'","'+DM.IBDataSetScheduleSCHED_NO.AsString+'","NOLEGGIATO")';
   Qry1Tmp.ExecSQL;
   Qry1Tmp.Free;
   end
   else
   begin
   Qry1Tmp:=TIBQuery.Create(nil);
   Qry1Tmp.active:=false;
   Qry1Tmp.DataBase := DM.IBDatabase1;
   Qry1Tmp.Transaction:=DM.IBTransaction6;
   Qry1Tmp.SQL.Text := 'UPDATE RENTEDART SET STATO ="NOLEGGIATO" WHERE RENART_NO="'+inttostr(RENARTNO)+'"';
   Qry1Tmp.ExecSQL;
   Qry1Tmp.Free;
      end;

   DM.IBDataSetScheduleSUBTOTALE.AsFloat:=DM.IBDataSetScheduleSUBTOTALE.AsFloat + CalcRentedArtNew(ARTNO);
   DM.IBDataSetScheduleNETPRICE.AsFloat:=DM.IBDataSetScheduleSUBTOTALE.AsFloat+(DM.IBDataSetScheduleSUBTOTALE.AsFloat*DM.IBDataSetScheduleDISCOUNT.AsFloat/100);


  // DM.IBDataSetRented.Insert;
  // DM.IBDataSetRentedCLI_NO.AsFloat:=DM.IBDataSetClientiCLI_NO.Value;
  // DM.IBDataSetRentedART_NO.AsFloat:=ArtNo;
  // DM.IBDataSetRentedSCHED_NO.AsFloat:=DM.IBDataSetScheduleSCHED_NO.Value;
//   DM.IBDataSetRentedSTATO.AsString:='NOLEGGIATO';
 //  DM.IBDataSetRented.Post;

  { DM.IBQuery1.Close;
   dM.IBQuery1.Prepare;
   DM.IBQuery1.ParamByName('SCHEDNO').AsInteger:=DM.IBDataSetScheduleSCHED_NO.AsInteger;
   DM.IBQuery1.Open;}

  // SetRentedStato(artno,DM.IBDataSetScheduleSCHED_NO.AsInteger,'NOLEGGIATO');

  // if not((sender as TEdit).Owner.Name='TennisMng') then
   if TennisMng.Showing=false then
   begin
   DM.IBQuery1.Close;
   dM.IBQuery1.Prepare;
   DM.IBQuery1.ParamByName('SCHEDNO').AsInteger:=DM.IBDataSetScheduleSCHED_NO.AsInteger;
   DM.IBQuery1.Open;
//   DM.IBDataSetRented.Close;
//   DM.IBDataSetRented.Prepare;
//   DM.IBDataSetRented.Params.ByName('SCHEDNO').AsInteger:=DM.IBDataSetScheduleSCHED_NO.AsInteger;
//   DM.IBDataSetRented.Open;
   end
   else
   begin
  DM.IBDataSetRented.Close;
  DM.IBDataSetRented.SelectSQL.Clear;
  DM.IBDataSetRented.SelectSQL.Add('SELECT ARTICOLO.*, RENTEDART.*');
  DM.IBDataSetRented.SelectSQL.Add('FROM ARTICOLO JOIN RENTEDART ON ARTICOLO.ART_NO=RENTEDART.ART_NO');
  if not DM.IBDataSetScheduleSched_no.IsNull then
  DM.IBDataSetRented.SelectSQL.Add('WHERE (ARTICOLO.TIPO="RACCHETTA TENNIS") AND (RENTEDART.SCHED_NO="'+DM.IBDataSetScheduleSCHED_NO.AsString+'")')
  else
  DM.IBDataSetRented.SelectSQL.Add('WHERE (ARTICOLO.TIPO="RACCHETTA TENNIS") AND (RENTEDART.SCHED_NO= NULL)');
  DM.IBDataSetRented.Open;
   end;
   //Dm.IBDataSetRented.DisableControls;
   //Dm.IBDataSetRented.First;
   numart:=0; Aperti:=0; chiusi:=0;
   //while not Dm.IBDataSetRented.Eof do
   //begin
   //inc(numart);
   //if DM.IBDataSetRentedSTATO.AsString = 'NOLEGGIATO' Then
   //inc(aperti)
   //else
   //inc(chiusi);
   //DM.IBDataSetRented.Next;
   //end;
   //Dm.IBDataSetRented.EnableControls;
//  if not((sender as TEdit).Owner.Name='TennisMng') then
    if TennisMng.Showing=false then
   begin
   edit14.Text:=inttostr(ScheduleResult(DM.IBDataSetScheduleSCHED_NO.AsInteger));
   Edit16.Text:=inttostr(QtaArtApertiPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));
   Edit15.Text:=inttostr(QtaArtChiusiPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));

  //edit14.Text:=inttostr(numart);
  //edit15.Text:=inttostr(chiusi);
  //edit16.Text:=inttostr(aperti);






   end
   else
   begin
 Tennismng.edit13.Text:=softhire.DM.ArticoliNoleggiati;
 Tennismng.edit17.Text:=softhire.DM.ArticoliDaConsegnare;
 Tennismng.edit18.Text:=softhire.DM.ArticoliConsegnati;
  chiusi:=strtoint(Tennismng.edit18.text);
  Numart:=strtoint(Tennismng.edit13.text);
  aperti:=strtoint(Tennismng.edit17.text);
  if (Chiusi=0) and (NumArt=0) and (Aperti=0) then
DM.IBDataSetScheduleSTATO.AsString:='INUTILIZZATA';
if (Chiusi=0) and (NumArt>0) and (Aperti>0) then
DM.IBDataSetScheduleSTATO.AsString:='APERTA';
if (Chiusi>0) and (NumArt>0) and (Chiusi<NumArt) then
DM.IBDataSetScheduleSTATO.AsString:='PARZIALE';
if (NumArt>0) and ((Chiusi>NumArt) or (Aperti>NumArt)) then
DM.IBDataSetScheduleSTATO.AsString:='INCOERENTE';
if (NumArt>0) and (Chiusi=NumArt) and (Aperti=0)then
DM.IBDataSetScheduleSTATO.AsString:='CHIUSA';

   //Tennismng.edit13.Text:=inttostr(ScheduleResult(DM.IBDataSetScheduleSCHED_NO.AsInteger));
   //Tennismng.edit17.Text:=inttostr(QtaArtChiusiPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));
   //Tennismng.edit18.Text:=inttostr(QtaArtApertiPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));
   end;
   (sender as Tedit).Clear;

//if (Chiusi=0) and (NumArt=0) and (Aperti=0) then
//DM.IBDataSetScheduleSTATO.AsString:='INUTILIZZATA';
//if (Chiusi=0) and (NumArt>0) and (Aperti>0) then
//DM.IBDataSetScheduleSTATO.AsString:='APERTA';
//if (Chiusi>0) and (NumArt>0) and (Chiusi<NumArt) then
//DM.IBDataSetScheduleSTATO.AsString:='PARZIALE';
//if (NumArt>0) and ((Chiusi>NumArt) or (Aperti>NumArt)) then
//DM.IBDataSetScheduleSTATO.AsString:='INCOERENTE';
//if (NumArt>0) and (Chiusi=NumArt) and (Aperti=0)then

//Begin
//DM.IBDataSetScheduleSTATO.AsString:='CHIUSA';
//DM.IBDataSetScheduleDATACLOSESCHD.AsDateTime:=today;
//end
//else
//if NOT dm.IBDataSetScheduleDATACLOSESCHD.IsNull then
//DM.IBDataSetScheduleDATACLOSESCHD.Clear;


 // 3 righe seguenti tolte l' 11/12/18
 //  edit14.Text:=inttostr(ScheduleResult(DM.IBDataSetScheduleSCHED_NO.AsInteger));
 //  Edit16.Text:=inttostr(QtaArtApertiPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));
 //  Edit15.Text:=inttostr(QtaArtChiusiPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));

     //DM.IBQueryArtRented.Close;
   //DM.IBQueryArtRented.Params[0].AsFloat:=DM.IBDataSetScheduleSCHED_NO.Value;
   //DM.IBQueryArtRented.open;
   end
   else
   begin
   MessageDlg('Codice Inserito Non Presente nell Elenco Articoli ', mtWarning,[mbOk], 0);
   (Sender as Tedit).Clear;
   end;
  end
  else
  begin
  MessageDlg('Articolo Indisponibile', mtWarning,[mbOk], 0);
  (Sender as Tedit).Clear;
  end;
  end;
 end;
end;

function Tmenu.CheckArtGiaInRented(art_no:string;sched_no:string):integer;
var TempQry:tIBQuery;
begin
TempQry:=TIBQuery.Create(nil);
TempQry.Database:=DM.IBDatabase1;
TempQry.Transaction:=DM.IBTransaction6;
TempQry.SQL.Clear;
//TempQry.SQL.Add('SELECT RENART_NO, FLAGREPLAY FROM RENTEDART JOIN ARTICOLO ON RENTEDART.ART_NO=ARTICOLO.ART_NO WHERE SCHED_NO="'+SCHED_NO+'" AND ART_NO="'+ART_NO+'"');
TempQry.SQL.Add('SELECT RENART_NO FROM RENTEDART WHERE SCHED_NO="'+SCHED_NO+'" AND ART_NO="'+ART_NO+'" AND STATO="RESO"');
Tempqry.Open;
if TempQry.IsEmpty then
Result:=0
else
result:=Tempqry.Fields.FieldByName('RENART_NO').AsInteger;
Tempqry.Close;
Tempqry.Free;
end;






procedure TMenu.Button3Click(Sender: TObject);
begin
if not DM.IBDataSetScheduleDATASTARTRENT.IsNull then
begin
DM.IBDataSetScheduleDAYUSE.AsInteger:=2;
DM.IBDataSetScheduleDATATAKEBACK.AsDateTime:=incday(DM.IBDataSetScheduleDATASTARTRENT.AsDateTime,DM.IBDataSetScheduleDAYUSE.AsInteger);
if (Sender as TButton).Owner.Name='TennisMng' then
Tennismng.Edit12.setfocus
else
Edit3.SetFocus;
end;
end;

procedure TMenu.Button2Click(Sender: TObject);
begin
if not DM.IBDataSetScheduleDATASTARTRENT.IsNull then
begin
DM.IBDataSetScheduleDAYUSE.AsInteger:=31;
DM.IBDataSetScheduleDATATAKEBACK.AsDateTime:=incday(DM.IBDataSetScheduleDATASTARTRENT.AsDateTime,DM.IBDataSetScheduleDAYUSE.AsInteger);
if (Sender as TButton).Owner.Name='TennisMng' then
Tennismng.Edit12.setfocus
else
Edit3.SetFocus;
end;
end;

function TMenu.ControlFieldschedule :boolean;
begin
if DM.IBDataSetScheduleDATASTARTRENT.IsNull or DM.IBDataSetScheduleDATATAKEBACK.IsNull or DM.IBDataSetScheduleDAYUSE.IsNull then
begin
result:=false;
MessageDlg('Inizio Noleggio, Fine Noleggio, Giorni Utilizzo ', mtWarning,[mbOk], 0);
end
else
result:=true;
end;


procedure TMenu.SetupGridPickList(const FieldName, sql: string);
var
  slPickList:TStringList;
  Query : TIBQuery;
  i : integer;
begin
  slPickList:=TStringList.Create;
  Query := TIBQuery.Create(self);
  try
    Query.database := DM.IBDatabase1;
    Query.SQL.Text := sql;
    Query.Open;
    //Fill the string list
    while not Query.EOF do
    begin
      slPickList.Add(Query.Fields[0].AsString);
      Query.Next;
    end; //while

    //place the list it the correct column
    for i:=0 to DBGrid3.Columns.Count-1 do
      if DBGrid3.Columns[i].FieldName = FieldName then
      begin
        DBGrid3.Columns[i].PickList:=slPickList;
        Break;
      end;
  finally
    slPickList.Free;
    Query.Free;
  end;
end; (*SetupGridPickList*)


procedure TMenu.TabSheet4Enter(Sender: TObject);
begin
SetupGridPickList('TIPO', 'SELECT TYPE_ART FROM TIPO_ARTICOLI');

end;

procedure TMenu.Edit6KeyPress(Sender: TObject; var Key: Char);
var count,artno: integer;
    rentartno,eanstr: string;
begin
if ord(key) = 10 then
begin  (Sender as TEdit).Clear; exit; end;
if ord(key) = 13 then
begin
 eanstr:=TrimEanCode((Sender as TEdit).text);
 artno:=QueryEanArtToArtno(Eanstr);
 if QueryArtToDownload(inttostr(artno), DM.IBDataSetScheduleSCHED_NO.AsString) = true then
  begin
   if artno <> NULL then
   begin
   if CheckArtReplay(inttostr(Artno))=true then
    BEGIN
     if not DM.IBTransaction10.InTransaction then
      DM.IBTransaction10.StartTransaction;
      DM.IBQueryTemp.Close;
      DM.IBQueryTemp.SQL.Clear;
      DM.IBQueryTemp.SQL.Add('SELECT RENTEDART.RENART_NO');
      DM.IBQueryTemp.SQL.Add('FROM RENTEDART');
      DM.IBQueryTemp.SQL.Add('WHERE RENTEDART.SCHED_NO = "'+DM.IBDataSetScheduleSCHED_NO.AsString+'" AND RENTEDART.ART_NO = "'+inttostr(Artno)+'" AND RENTEDART.STATO = "NOLEGGIATO"');
      DM.IBQueryTemp.Open;
      Rentartno:=DM.IBQueryTemp.Fields.Fields[0].asString;
      DM.IBQueryTemp.Close;
      DM.IBQueryTemp.SQL.Clear;
      DM.IBQueryTemp.SQL.Add('SELECT COUNT(*)');
      DM.IBQueryTemp.SQL.Add('FROM RENTEDART');
      DM.IBQueryTemp.SQL.Add('WHERE RENTEDART.SCHED_NO = "'+DM.IBDataSetScheduleSCHED_NO.AsString+'" AND RENTEDART.ART_NO = "'+inttostr(Artno)+'" AND RENTEDART.STATO = "NOLEGGIATO"');
      DM.IBQueryTemp.Open;
      Count:=DM.IBQueryTemp.Fields.Fields[0].AsInteger;
       if (NOT (Rentartno=Null)) and (Count>0) then
        begin
         DM.IBQueryTemp.Close;
         DM.IBQueryTemp.SQL.Clear;
         DM.IBQueryTemp.SQL.Add('UPDATE RENTEDART');
         DM.IBQueryTemp.SQL.Add('SET RENTEDART.STATO = "RESO"');
         DM.IBQueryTemp.SQL.Add('WHERE RENTEDART.RENART_NO = "'+Rentartno+'"');
         DM.IBQueryTemp.ExecSQL;
        end;
   DM.IBTransaction10.Commit;
      if not((sender as TEdit).Owner.Name='TennisMng') then
   begin
   DM.IBDataSetRented.Close;
   DM.IBDataSetRented.Prepare;
   DM.IBDataSetRented.Params.ByName('SCHEDNO').AsInteger:=DM.IBDataSetScheduleSCHED_NO.AsInteger;
   DM.IBDataSetRented.Open;
   edit14.Text:=inttostr(ScheduleResult(DM.IBDataSetScheduleSCHED_NO.AsInteger));
   Edit16.Text:=inttostr(QtaArtApertiPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));
   Edit15.Text:=inttostr(QtaArtChiusiPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));
   end
   else
   begin
  DM.IBDataSetRented.Close;
  DM.IBDataSetRented.SelectSQL.Clear;
  DM.IBDataSetRented.SelectSQL.Add('SELECT ARTICOLO.*, RENTEDART.*');
  DM.IBDataSetRented.SelectSQL.Add('FROM ARTICOLO JOIN RENTEDART ON ARTICOLO.ART_NO=RENTEDART.ART_NO');
  if not DM.IBDataSetScheduleSched_no.IsNull then
  DM.IBDataSetRented.SelectSQL.Add('WHERE (ARTICOLO.TIPO="RACCHETTA TENNIS") AND (RENTEDART.SCHED_NO="'+DM.IBDataSetScheduleSCHED_NO.AsString+'")')
  else
  DM.IBDataSetRented.SelectSQL.Add('WHERE (ARTICOLO.TIPO="RACCHETTA TENNIS") AND (RENTEDART.SCHED_NO= NULL)');
  DM.IBDataSetRented.Open;
   Tennismng.edit13.Text:=inttostr(ScheduleResult(DM.IBDataSetScheduleSCHED_NO.AsInteger));
   Tennismng.Edit18.Text:=inttostr(QtaArtApertiPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));
   Tennismng.Edit17.Text:=inttostr(QtaArtChiusiPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));
  end;
   (Sender as TEdit).Clear;
    END
   else
   begin
   SetArtStato(artno,'DISPONIBILE');
   SetRentedStato(artno,DM.IBDataSetRentedSCHED_NO.AsInteger, 'RESO');
  if not((sender as TEdit).Owner.Name='TennisMng') then
   begin
   DM.IBDataSetRented.Close;
   DM.IBDataSetRented.Prepare;
   DM.IBDataSetRented.Params.ByName('SCHEDNO').AsInteger:=DM.IBDataSetScheduleSCHED_NO.AsInteger;
   DM.IBDataSetRented.Open;
   edit14.Text:=inttostr(ScheduleResult(DM.IBDataSetScheduleSCHED_NO.AsInteger));
   Edit16.Text:=inttostr(QtaArtApertiPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));
   Edit15.Text:=inttostr(QtaArtChiusiPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));
   end
   else
   begin
  DM.IBDataSetRented.Close;
  DM.IBDataSetRented.SelectSQL.Clear;
  DM.IBDataSetRented.SelectSQL.Add('SELECT ARTICOLO.*, RENTEDART.*');
  DM.IBDataSetRented.SelectSQL.Add('FROM ARTICOLO JOIN RENTEDART ON ARTICOLO.ART_NO=RENTEDART.ART_NO');
  if not DM.IBDataSetScheduleSched_no.IsNull then
  DM.IBDataSetRented.SelectSQL.Add('WHERE (ARTICOLO.TIPO="RACCHETTA TENNIS") AND (RENTEDART.SCHED_NO="'+DM.IBDataSetScheduleSCHED_NO.AsString+'")')
  else
  DM.IBDataSetRented.SelectSQL.Add('WHERE (ARTICOLO.TIPO="RACCHETTA TENNIS") AND (RENTEDART.SCHED_NO= NULL)');
  DM.IBDataSetRented.Open;
   Tennismng.edit13.Text:=inttostr(ScheduleResult(DM.IBDataSetScheduleSCHED_NO.AsInteger));
   Tennismng.Edit18.Text:=inttostr(QtaArtApertiPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));
   Tennismng.Edit17.Text:=inttostr(QtaArtChiusiPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));
  end;
  (Sender as TEdit).Clear;
     //DM.IBQueryArtRented.Close;
   //DM.IBQueryArtRented.Params[0].AsFloat:=DM.IBDataSetScheduleSCHED_NO.Value;
   //DM.IBQueryArtRented.open;
   end;
   end
   else
   begin
   MessageDlg('Articolo Non Presente Nella Scheda Noleggio ', mtWarning,[mbOk], 0);
   (Sender as TEdit).Clear;
   end;
  end
  else
  begin
  MessageDlg('Articolo Già Scaricato', mtWarning,[mbOk], 0);
  (Sender as TEdit).Clear;
  end;
  end;
  DM.IBQueryTemp.Close;
  end;

procedure TMenu.DBEdit39Exit(Sender: TObject);
begin
if DM.IBDataSetScheduleSUBTOTALE.AsFloat <> 0 then
//DM.IBDataSetScheduleDISCOUNT.AsFloat:=RoundTo((1-(DM.IBDataSetScheduleNETPRICE.AsFloat/DM.IBDataSetScheduleSUBTOTALE.AsFloat))*100,-2);
DM.IBDataSetScheduleDISCOUNT.AsFloat:=roundTo(((100*DM.IBDataSetScheduleNETPRICE.AsFloat/DM.IBDataSetScheduleSUBTOTALE.AsFloat)-100 ),-2);
if (sender as tDBedit).Name='DBEdit39' then
DBedit33.SetFocus
else
Tennismng.DBedit26.SetFocus;

end;

procedure TMenu.Button6Click(Sender: TObject);
begin
if not DM.IBDataSetScheduleDATASTARTRENT.IsNull then
begin
DM.IBDataSetScheduleDAYUSE.AsInteger:=7;
DM.IBDataSetScheduleDATATAKEBACK.AsDateTime:=incday(DM.IBDataSetScheduleDATASTARTRENT.AsDateTime,7);
if (Sender as TButton).Owner.Name='TennisMng' then
Tennismng.Edit12.setfocus
else
Edit3.SetFocus;
end;

end;

procedure TMenu.DBGrid4DblClick(Sender: TObject);
var                      // sezione nuovo software
  SchedNo   : Double;    // sezione nuovo software
  Risposta  : TRispostaGetSchedule; // sezione nuovo software
  FormSched : TNew_Sched;   // sezione nuovo software
begin

if DBGrid4.SelectedField.FieldName = 'CLI_NO'  THEN
 Begin
  DM.IBDataSetClienti.Close;
  DM.IBDataSetClienti.SelectSQL.Clear;
  DM.IBDataSetClienti.SelectSQL.Add('SELECT *');
  DM.IBDataSetClienti.SelectSQL.Add('FROM Clienti');
  DM.IBDataSetClienti.SelectSQL.Add('WHERE CLI_NO = "'+ DBgrid4.Fields[1].AsString +'"');
  DM.IBDataSetClienti.Open;
  if not DM.IBDataSetClienti.IsEmpty then
  begin
  Tabsheet1.TabVisible:=true;
  Pagecontrol1.ActivePageIndex:=0;
  end;
 end;

 // inizio sezione vecchio software query sul db e apertura tabsheet locale
{
 if not (DBGrid4.SelectedField.FieldName = 'CLI_NO') THEN
 begin
  Tabsheet3.TabVisible:=true;
  Pagecontrol1.ActivePageIndex:=2;
end;
} // fine sezione vecchio software query sul db e apertura tabsheet locale

 if DBGrid4.SelectedField = nil then Exit;
  if DBGrid4.SelectedField.FieldName <> 'SCHED_NO' then Exit;

  // Legge SCHED_NO dal dataset collegato a DBGrid4
  SchedNo := DM.IBDataSetScheduleSCHED_NO.AsFloat;  // <-- adatta al tuo dataset

  // Chiama l'API
  if not GetSchedule(SchedNo, Risposta) then
  begin
    ShowMessage('Errore recupero scheda: ' + Risposta.ErrorMsg);
    Exit;
  end;

  // Crea la form e popola
  FormSched := TNew_Sched.Create(Application);
  try
    FormSched.LoadFromRisposta(Risposta);
    FormSched.ShowModal;
  finally
    FormSched.Free;
  end;
end;


procedure TMenu.Edit12KeyPress(Sender: TObject; var Key: Char);
var eanstr,Whereslc,Ordby:string;
COGNOME,NOME,EANCODE:string;
temp:integer;
begin
// case radiogroup2.ItemIndex  of
//  0: whereslc:='WHERE SCHEDULE.EANCODE =';
//  2: whereslc:='WHERE RENTEDART.ART_NO =';
//  1: whereslc:='WHERE CLIENTI.EANCODE =';
//  3: whereslc:='WHERE OPERATORI.EANCODE =';
// end;
 case radiogroup3.ItemIndex  of
  0: Ordby:='SCHED_NO';
  1: Ordby:='COGNRAGSOC';
  //2: Ordby:='DATAINTRO';
  2: Ordby:='DATASTARTRENT';
  3: Ordby:='DATATAKEBACK';
  4: Ordby:='DAYUSE';
  5: Ordby:='STATO';
 end;

 if ord(key) = 10 then
begin  Edit12.Clear; exit; end;
if ord(key) = 13 then
begin

If edit12.Text='' then
  begin
   DM.IBDataSetSchedule.Close;
   DM.IBDataSetSchedule.SelectSQL.Clear;
   DM.IBDataSetSchedule.SelectSQL.Add('SELECT COGNRAGSOC, NOME, INDIRIZZO, N_DOC, SCHEDULE.*');
   DM.IBDataSetSchedule.SelectSQL.Add('FROM SCHEDULE JOIN CLIENTI ON CLIENTI.CLI_NO = SCHEDULE.CLI_NO');
   if not ((edit58.Text='') and (edit59.Text='')) then
   DM.IBDataSetSchedule.SelectSQL.Add('WHERE DATAINTRO BETWEEN "'+DecForSqlDate(strtodate(edit58.Text))+'" AND "'+DecForSqlDate(strtodate(edit59.Text))+'"');
   if not (sender= DBGrid4) then
   DM.IBDataSetSchedule.SelectSQL.Add('ORDER BY '+ORDBY)
   else
   DM.IBDataSetSchedule.SelectSQL.Add('ORDER BY '+ (Sender as TDBGrid).SelectedField.FieldName);
   DM.IBDataSetSchedule.Open;
  end;

  If ((LeftStr(edit12.Text, 1)='N') and (length(edit12.Text)=11)) or ((LeftStr(edit12.Text, 2)='N+') and (length(edit12.Text)=12)) then
  begin // query su codice scheda;
   //eanstr:=TrimEanCode(Edit12.text);
   if length(edit12.Text)=11 then
    EANCODE:=leftstr(edit12.text,6)
   else
    EANCODE:=leftstr(edit12.text,7);

   EANCODE:='$'+rightstr(EANCODE,5);   // ilo $ serve per identificare il valore esadecimale
   temp:=strtoint64(EANCODE);
   EANCODE:=ean39gen2(dM.IBDataSetParamPRE_SCHED_NO.AsString,inttostr(temp));
   DM.IBDataSetSchedule.Close;
   DM.IBDataSetSchedule.SelectSQL.Clear;
   DM.IBDataSetSchedule.SelectSQL.Add('SELECT COGNRAGSOC, NOME, INDIRIZZO, N_DOC, SCHEDULE.*');
   DM.IBDataSetSchedule.SelectSQL.Add('FROM SCHEDULE JOIN CLIENTI ON CLIENTI.CLI_NO = SCHEDULE.CLI_NO');
   if DM.IBDataSetParamEANTOSCAN.Value ='EANCODE2' then
    DM.IBDataSetSchedule.SelectSQL.Add('WHERE SCHEDULE.EANCODE2="'+EANCODE+'"')
     else
    DM.IBDataSetSchedule.SelectSQL.Add('WHERE SCHEDULE.EANCODE="'+EANCODE+'"');
if not (sender=DBGrid4) then
   DM.IBDataSetSchedule.SelectSQL.Add('ORDER BY '+ORDBY)
   else
   DM.IBDataSetSchedule.SelectSQL.Add('ORDER BY '+ (Sender as TDBGrid).SelectedField.FieldName);

   DM.IBDataSetSchedule.Open;
     if DM.IBDataSetSchedule.IsEmpty then
        MessageDlg('Scheda Noleggio Non Trovata', mtWarning,[mbOk], 0);
  end;

  if (not intintostr(edit12.Text)) and (length(Edit12.Text)>0) then
   begin
if OccurrOfChar(edit12.Text,' ')>1 then
begin
 COGNOME:=rightstr(edit12.Text,length(edit12.Text)-pos(' ',edit12.Text));
    NOME:=leftstr(edit12.Text,pos(' ',edit12.Text)-1);
end
else
begin
    COGNOME:=copy(edit12.Text,1,pos(' ',edit12.Text)-1);
    NOME:=copy(edit12.Text,pos(' ',edit12.Text)+1,length(edit12.Text));
end;
    DM.IBDataSetSchedule.Close;
    DM.IBDataSetSchedule.SelectSQL.Clear;
    DM.IBDataSetSchedule.SelectSQL.Add('SELECT COGNRAGSOC, NOME, INDIRIZZO, N_DOC, SCHEDULE.*');
    DM.IBDataSetSchedule.SelectSQL.Add('FROM SCHEDULE JOIN CLIENTI ON CLIENTI.CLI_NO = SCHEDULE.CLI_NO');
    if not (combobox17.Text='') then
    DM.IBDataSetSchedule.SelectSQL.Add('WHERE CLIENTI.COGNRAGSOC LIKE "'+ COGNOME +'%" AND CLIENTI.NOME LIKE "'+ NOME +'%" AND DATAINTRO BETWEEN "'+DecForSqlDate(strtodate(edit58.Text))+'" AND "'+DecForSqlDate(strtodate(edit59.Text))+'"'+ whereslc1 )
    else
    DM.IBDataSetSchedule.SelectSQL.Add('WHERE CLIENTI.COGNRAGSOC LIKE "'+ COGNOME +'%" AND CLIENTI.NOME LIKE "'+ NOME +'%"'+whereslc1);
if not (sender= DBGrid4) then
   DM.IBDataSetSchedule.SelectSQL.Add('ORDER BY '+ORDBY)
 //  DM.IBDataSetSchedule.SelectSQL.Add('ORDER BY '+ORDBY)
   else
   DM.IBDataSetSchedule.SelectSQL.Add('ORDER BY '+ (Sender as TDBGrid).SelectedField.FieldName);

//    DM.IBDataSetSchedule.SelectSQL.Add('ORDER BY SCHED_NO');
    DM.IBDataSetSchedule.Open;
    if DM.IBDataSetSchedule.IsEmpty then
     begin
    DM.IBDataSetSchedule.Close;
    DM.IBDataSetSchedule.SelectSQL.Clear;
    DM.IBDataSetSchedule.SelectSQL.Add('SELECT COGNRAGSOC, NOME, INDIRIZZO, N_DOC, SCHEDULE.*');
    DM.IBDataSetSchedule.SelectSQL.Add('FROM SCHEDULE JOIN CLIENTI ON CLIENTI.CLI_NO = SCHEDULE.CLI_NO');
    if not (combobox17.Text='') then
    DM.IBDataSetSchedule.SelectSQL.Add('WHERE CLIENTI.COGNRAGSOC LIKE "'+ NOME +'%" AND CLIENTI.NOME LIKE "'+ COGNOME +'%" AND DATAINTRO BETWEEN "'+DecForSqlDate(strtodate(edit58.Text))+'" AND "'+DecForSqlDate(strtodate(edit59.Text))+'"'+ whereslc1)
    else
    DM.IBDataSetSchedule.SelectSQL.Add('WHERE CLIENTI.COGNRAGSOC LIKE "'+ NOME +'%" AND CLIENTI.NOME LIKE "'+ COGNOME +'%"'+ whereslc1);
if not (sender= DBGrid4) then
   DM.IBDataSetSchedule.SelectSQL.Add('ORDER BY '+ORDBY)
 //  DM.IBDataSetSchedule.SelectSQL.Add('ORDER BY '+ORDBY)
   else
   DM.IBDataSetSchedule.SelectSQL.Add('ORDER BY '+ (Sender as TDBGrid).SelectedField.FieldName);

//    DM.IBDataSetSchedule.SelectSQL.Add('ORDER BY SCHED_NO');
    DM.IBDataSetSchedule.Open;
      if (DM.IBDataSetSchedule.IsEmpty) and  (OccurrOfChar(edit12.Text,' ')>1) then
       begin
        COGNOME:=rightstr(edit12.Text,length(edit12.Text)-pos(' ',edit12.Text));
        NOME:=leftstr(edit12.Text,pos(' ',edit12.Text)-1)+' '+leftstr(COGNOME,pos(' ',COGNOME)-1);
        COGNOME:=rightstr(COGNOME,length(COGNOME)-pos(' ',COGNOME));
        DM.IBDataSetSchedule.Close;
        DM.IBDataSetSchedule.SelectSQL.Clear;
        DM.IBDataSetSchedule.SelectSQL.Add('SELECT COGNRAGSOC, NOME, INDIRIZZO, N_DOC, SCHEDULE.*');
        DM.IBDataSetSchedule.SelectSQL.Add('FROM SCHEDULE JOIN CLIENTI ON CLIENTI.CLI_NO = SCHEDULE.CLI_NO');
        if not (combobox17.Text='') then
        DM.IBDataSetSchedule.SelectSQL.Add('WHERE CLIENTI.COGNRAGSOC LIKE "'+ COGNOME +'%" AND CLIENTI.NOME LIKE "'+ NOME +'%" AND DATAINTRO BETWEEN "'+DecForSqlDate(strtodate(edit58.Text))+'" AND "'+DecForSqlDate(strtodate(edit59.Text))+'"'+ whereslc1 )
        else
        DM.IBDataSetSchedule.SelectSQL.Add('WHERE CLIENTI.COGNRAGSOC LIKE "'+ COGNOME +'%" AND CLIENTI.NOME LIKE "'+ NOME +'%"'+whereslc1);
  if not (sender= DBGrid4) then
   DM.IBDataSetSchedule.SelectSQL.Add('ORDER BY '+ORDBY)
 //  DM.IBDataSetSchedule.SelectSQL.Add('ORDER BY '+ORDBY)
   else
   DM.IBDataSetSchedule.SelectSQL.Add('ORDER BY '+ (Sender as TDBGrid).SelectedField.FieldName);

//        DM.IBDataSetSchedule.SelectSQL.Add('ORDER BY SCHED_NO');
        DM.IBDataSetSchedule.Open;
        if DM.IBDataSetSchedule.IsEmpty then
         begin
          DM.IBDataSetSchedule.Close;
          DM.IBDataSetSchedule.SelectSQL.Clear;
          DM.IBDataSetSchedule.SelectSQL.Add('SELECT COGNRAGSOC, NOME, INDIRIZZO, N_DOC, SCHEDULE.*');
          DM.IBDataSetSchedule.SelectSQL.Add('FROM SCHEDULE JOIN CLIENTI ON CLIENTI.CLI_NO = SCHEDULE.CLI_NO');
          if not (combobox17.Text='') then
          DM.IBDataSetSchedule.SelectSQL.Add('WHERE CLIENTI.COGNRAGSOC LIKE "'+ NOME +'%" AND CLIENTI.NOME LIKE "'+ COGNOME +'%" AND DATAINTRO BETWEEN "'+DecForSqlDate(strtodate(edit58.Text))+'" AND "'+DecForSqlDate(strtodate(edit59.Text))+'"'+ whereslc1 )
          else
          DM.IBDataSetSchedule.SelectSQL.Add('WHERE CLIENTI.COGNRAGSOC LIKE "'+ NOME +'%" AND CLIENTI.NOME LIKE "'+ COGNOME +'%"'+whereslc1);
  if not (sender= DBGrid4) then
   DM.IBDataSetSchedule.SelectSQL.Add('ORDER BY '+ORDBY)
 //  DM.IBDataSetSchedule.SelectSQL.Add('ORDER BY '+ORDBY)
   else
   DM.IBDataSetSchedule.SelectSQL.Add('ORDER BY '+ (Sender as TDBGrid).SelectedField.FieldName);

//          DM.IBDataSetSchedule.SelectSQL.Add('ORDER BY SCHED_NO');
          DM.IBDataSetSchedule.Open;
          if DM.IBDataSetSchedule.IsEmpty then
          MessageDlg('Scheda Noleggio Non Trovata', mtWarning,[mbOk], 0);
         end;
        end
       else
      if DM.IBDataSetSchedule.IsEmpty then
      begin
      COGNOME:= COGNOME+' '+NOME;
        DM.IBDataSetSchedule.Close;
        DM.IBDataSetSchedule.SelectSQL.Clear;
        DM.IBDataSetSchedule.SelectSQL.Add('SELECT COGNRAGSOC, NOME, INDIRIZZO, N_DOC, SCHEDULE.*');
        DM.IBDataSetSchedule.SelectSQL.Add('FROM SCHEDULE JOIN CLIENTI ON CLIENTI.CLI_NO = SCHEDULE.CLI_NO');
        if not (combobox17.Text='') then
        DM.IBDataSetSchedule.SelectSQL.Add('WHERE CLIENTI.COGNRAGSOC LIKE "'+ COGNOME +'%" AND DATAINTRO BETWEEN "'+DecForSqlDate(strtodate(edit58.Text))+'" AND "'+DecForSqlDate(strtodate(edit59.Text))+'"'+ whereslc1 )
        else
        DM.IBDataSetSchedule.SelectSQL.Add('WHERE CLIENTI.COGNRAGSOC LIKE "'+ COGNOME +'%"'+whereslc1);
  if not (sender= DBGrid4) then
   DM.IBDataSetSchedule.SelectSQL.Add('ORDER BY '+ORDBY)
 //  DM.IBDataSetSchedule.SelectSQL.Add('ORDER BY '+ORDBY)
   else
   DM.IBDataSetSchedule.SelectSQL.Add('ORDER BY '+ (Sender as TDBGrid).SelectedField.FieldName);

//        DM.IBDataSetSchedule.SelectSQL.Add('ORDER BY SCHED_NO');
        DM.IBDataSetSchedule.Open;
        if DM.IBDataSetSchedule.IsEmpty then
       MessageDlg('Scheda Noleggio Non Trovata', mtWarning,[mbOk], 0);
      end;

      end;

    end;

   if StrAllChar(edit12.Text) and (length(Edit12.Text)<7) and (length(Edit12.Text)>0) then
   begin // query su codice articolo;
   DM.IBDataSetSchedule.Close;
   DM.IBDataSetSchedule.SelectSQL.Clear;
   DM.IBDataSetSchedule.SelectSQL.Add('SELECT COGNRAGSOC, NOME, INDIRIZZO, N_DOC, SCHEDULE.*');
   DM.IBDataSetSchedule.SelectSQL.Add('FROM SCHEDULE JOIN CLIENTI ON SCHEDULE.CLI_NO = CLIENTI.CLI_NO JOIN RENTEDART ON SCHEDULE.SCHED_NO = RENTEDART.SCHED_NO');
   if not (combobox17.Text='') then
   DM.IBDataSetSchedule.SelectSQL.Add('WHERE RENTEDART.ART_NO = "'+edit12.Text+'" AND SCHEDULE.DATAINTRO BETWEEN "'+DecForSqlDate(strtodate(edit58.Text))+'" AND "'+DecForSqlDate(strtodate(edit59.Text))+'"'+ whereslc1)
   else
   DM.IBDataSetSchedule.SelectSQL.Add('WHERE RENTEDART.ART_NO = "'+edit12.text+'"'+ whereslc1);
  if not (sender= DBGrid4) then
   DM.IBDataSetSchedule.SelectSQL.Add('ORDER BY '+ORDBY)
 //  DM.IBDataSetSchedule.SelectSQL.Add('ORDER BY '+ORDBY)
   else
   DM.IBDataSetSchedule.SelectSQL.Add('ORDER BY '+ (Sender as TDBGrid).SelectedField.FieldName);

//   DM.IBDataSetSchedule.SelectSQL.Add('ORDER BY '+ORDBY);
   DM.IBDataSetSchedule.Open;
   if DM.IBDataSetSchedule.IsEmpty then
   MessageDlg('Scheda Noleggio Non Trovata', mtWarning,[mbOk], 0);
   end;

  If (LeftStr(edit12.Text, 2)='01') and (length(Edit12.Text)=10) then
  begin // query su codice articolo;
   EANCODE:=TrimEanCode(Edit12.text);
   DM.IBDataSetSchedule.Close;
   DM.IBDataSetSchedule.SelectSQL.Clear;
   DM.IBDataSetSchedule.SelectSQL.Add('SELECT COGNRAGSOC, NOME, INDIRIZZO, N_DOC, SCHEDULE.*');
   DM.IBDataSetSchedule.SelectSQL.Add('FROM SCHEDULE JOIN CLIENTI ON SCHEDULE.CLI_NO = CLIENTI.CLI_NO JOIN RENTEDART ON SCHEDULE.SCHED_NO = RENTEDART.SCHED_NO');
   if not (combobox17.Text='') then
   DM.IBDataSetSchedule.SelectSQL.Add('WHERE RENTEDART.ART_NO = "'+inttostr(QueryEanArtToArtno(EANCODE))+'" AND SCHEDULE.DATAINTRO BETWEEN "'+DecForSqlDate(strtodate(edit58.Text))+'" AND "'+DecForSqlDate(strtodate(edit59.Text))+'"'+ whereslc1)
   else
   DM.IBDataSetSchedule.SelectSQL.Add('WHERE RENTEDART.ART_NO = "'+inttostr(QueryEanArtToArtno(EANCODE))+'"'+whereslc1);
  if not (sender= DBGrid4) then
   DM.IBDataSetSchedule.SelectSQL.Add('ORDER BY '+ORDBY)
 //  DM.IBDataSetSchedule.SelectSQL.Add('ORDER BY '+ORDBY)
   else
   DM.IBDataSetSchedule.SelectSQL.Add('ORDER BY '+ (Sender as TDBGrid).SelectedField.FieldName);

//   DM.IBDataSetSchedule.SelectSQL.Add('ORDER BY '+ORDBY);
   DM.IBDataSetSchedule.Open;
   if DM.IBDataSetSchedule.IsEmpty then
   MessageDlg('Scheda Noleggio Non Trovata', mtWarning,[mbOk], 0);
   end;

  If (LeftStr(edit12.Text, 2)='04') and (length(Edit12.Text)=10) then
  begin // query su codice articolo;
  EANCODE:=TrimEanCode(Edit12.text);
  DM.IBDataSetSchedule.Close;
  DM.IBDataSetSchedule.SelectSQL.Clear;
  DM.IBDataSetSchedule.SelectSQL.Add('SELECT COGNRAGSOC, CLIENTI.NOME, INDIRIZZO, N_DOC, SCHEDULE.*');
  DM.IBDataSetSchedule.SelectSQL.Add('FROM SCHEDULE JOIN CLIENTI ON SCHEDULE.CLI_NO = CLIENTI.CLI_NO JOIN OPERATORI ON SCHEDULE.OWNER = OPERATORI.DIP_NO');
  if (not (combobox17.Text='')) and (DM.IBDataSetParamEANTOSCAN.Value='EANCODE2')  then
  DM.IBDataSetSchedule.SelectSQL.Add('WHERE OPERATORI.EANCODE2 ="'+EANCODE+'" AND SCHEDULE.DATAINTRO BETWEEN "'+DecForSqlDate(strtodate(edit58.Text))+'" AND "'+DecForSqlDate(strtodate(edit59.Text))+'"'+whereslc1);
  if (not (combobox17.Text='')) and (DM.IBDataSetParamEANTOSCAN.Value='EANCODE')  then
  DM.IBDataSetSchedule.SelectSQL.Add('WHERE OPERATORI.EANCODE ="'+EANCODE+'" AND SCHEDULE.DATAINTRO BETWEEN "'+DecForSqlDate(strtodate(edit58.Text))+'" AND "'+DecForSqlDate(strtodate(edit59.Text))+'"'+whereslc1);
  if (combobox17.Text='') and (DM.IBDataSetParamEANTOSCAN.Value='EANCODE2')  then
  DM.IBDataSetSchedule.SelectSQL.Add('WHERE OPERATORI.EANCODE2 ="'+EANCODE+'"'+whereslc1);
  if (combobox17.Text='') and (DM.IBDataSetParamEANTOSCAN.Value='EANCODE')  then
  DM.IBDataSetSchedule.SelectSQL.Add('WHERE OPERATORI.EANCODE ="'+EANCODE+'"'+whereslc1);
  if not (sender= DBGrid4) then
   DM.IBDataSetSchedule.SelectSQL.Add('ORDER BY '+ORDBY)
 //  DM.IBDataSetSchedule.SelectSQL.Add('ORDER BY '+ORDBY)
   else
   DM.IBDataSetSchedule.SelectSQL.Add('ORDER BY '+ (Sender as TDBGrid).SelectedField.FieldName);

//  DM.IBDataSetSchedule.SelectSQL.Add('ORDER BY '+ORDBY);
  DM.IBDataSetSchedule.Open;
  if DM.IBDataSetSchedule.IsEmpty then
   MessageDlg('Scheda Noleggio Non Trovata', mtWarning,[mbOk], 0);
  end;

  If (LeftStr(edit12.Text, 2)='02') and (length(Edit12.Text)=10) then
  begin // query su codice cliente;
   EANCODE:=TrimEanCode(Edit12.text);
   DM.IBDataSetSchedule.Close;
   DM.IBDataSetSchedule.SelectSQL.Clear;
   DM.IBDataSetSchedule.SelectSQL.Add('SELECT COGNRAGSOC, NOME, INDIRIZZO, N_DOC, SCHEDULE.*');
   DM.IBDataSetSchedule.SelectSQL.Add('FROM SCHEDULE JOIN CLIENTI ON SCHEDULE.CLI_NO = CLIENTI.CLI_NO');
   if (not (combobox17.Text='')) and (DM.IBDataSetParamEANTOSCAN.Value='EANCODE2')  then
   DM.IBDataSetSchedule.SelectSQL.Add('WHERE CLIENTI.EANCODE2 = "'+EANCODE+'" AND SCHEDULE.DATAINTRO BETWEEN "'+DecForSqlDate(strtodate(edit58.Text))+'" AND "'+DecForSqlDate(strtodate(edit59.Text))+'"'+whereslc1);
   if (not (combobox17.Text='')) and (DM.IBDataSetParamEANTOSCAN.Value='EANCODE')  then
   DM.IBDataSetSchedule.SelectSQL.Add('WHERE CLIENTI.EANCODE = "'+EANCODE+'" AND SCHEDULE.DATAINTRO BETWEEN "'+DecForSqlDate(strtodate(edit58.Text))+'" AND "'+DecForSqlDate(strtodate(edit59.Text))+'"'+whereslc1);
   if (combobox17.Text='') and (DM.IBDataSetParamEANTOSCAN.Value='EANCODE2')  then
   DM.IBDataSetSchedule.SelectSQL.Add('WHERE CLIENTI.EANCODE2 = "'+EANCODE+'"'+whereslc1);
   if (combobox17.Text='') and (DM.IBDataSetParamEANTOSCAN.Value='EANCODE')  then
   DM.IBDataSetSchedule.SelectSQL.Add('WHERE CLIENTI.EANCODE = "'+EANCODE+'"'+whereslc1);
  if not (sender= DBGrid4) then
   DM.IBDataSetSchedule.SelectSQL.Add('ORDER BY '+ORDBY)
 //  DM.IBDataSetSchedule.SelectSQL.Add('ORDER BY '+ORDBY)
   else
   DM.IBDataSetSchedule.SelectSQL.Add('ORDER BY '+ (Sender as TDBGrid).SelectedField.FieldName);

//   DM.IBDataSetSchedule.SelectSQL.Add('ORDER BY '+ORDBY);
   DM.IBDataSetSchedule.Open;
     if DM.IBDataSetSchedule.IsEmpty then
        MessageDlg('Scheda Noleggio Non Trovata', mtWarning,[mbOk], 0);
  end;

//edit12.Clear;
end;
end;

{  if QueryEanSchedArtPerson(eanstr,WHERESLC,ORDBY) then
   begin
    COGNOME:=copy(edit12.Text,1,pos(' ',edit12.Text)-1);
    NOME:=copy(edit12.Text,pos(' ',edit12.Text)+1,length(edit12.Text));
    DM.IBDataSetSchedule.Close;
    DM.IBDataSetSchedule.SelectSQL.Clear;
    DM.IBDataSetSchedule.SelectSQL.Add('SELECT COGNRAGSOC, NOME, INDIRIZZO, N_DOC, SCHEDULE.*');
    DM.IBDataSetSchedule.SelectSQL.Add('FROM SCHEDULE JOIN CLIENTI ON CLIENTI.CLI_NO = SCHEDULE.CLI_NO');
    if not (combobox17.Text='') then
    DM.IBDataSetSchedule.SelectSQL.Add('WHERE CLIENTI.COGNRAGSOC LIKE "'+ COGNOME +'%" AND CLIENTI.NOME LIKE "'+ NOME +'%" AND DATAINTRO BETWEEN "'+DecForSqlDate(strtodate(edit58.Text))+'" AND "'+DecForSqlDate(strtodate(edit59.Text))+'"')
    else
    DM.IBDataSetSchedule.SelectSQL.Add('WHERE CLIENTI.COGNRAGSOC LIKE "'+ COGNOME +'%" AND CLIENTI.NOME LIKE "'+ NOME +'%"');
    DM.IBDataSetSchedule.SelectSQL.Add('ORDER BY SCHED_NO');
    DM.IBDataSetSchedule.Open;
    if DM.IBDataSetSchedule.IsEmpty then
     begin
    DM.IBDataSetSchedule.Close;
    DM.IBDataSetSchedule.SelectSQL.Clear;
    DM.IBDataSetSchedule.SelectSQL.Add('SELECT COGNRAGSOC, NOME, INDIRIZZO, N_DOC, SCHEDULE.*');
    DM.IBDataSetSchedule.SelectSQL.Add('FROM SCHEDULE JOIN CLIENTI ON CLIENTI.CLI_NO = SCHEDULE.CLI_NO');
    if not (combobox17.Text='') then
    DM.IBDataSetSchedule.SelectSQL.Add('WHERE CLIENTI.COGNRAGSOC LIKE "'+ NOME +'%" AND CLIENTI.NOME LIKE "'+ COGNOME +'%" AND DATAINTRO BETWEEN "'+DecForSqlDate(strtodate(edit58.Text))+'" AND "'+DecForSqlDate(strtodate(edit59.Text))+'"')
    else
    DM.IBDataSetSchedule.SelectSQL.Add('WHERE CLIENTI.COGNRAGSOC LIKE "'+ NOME +'%" AND CLIENTI.NOME LIKE "'+ COGNOME +'%"');
    DM.IBDataSetSchedule.SelectSQL.Add('ORDER BY SCHED_NO');
    DM.IBDataSetSchedule.Open;
      if DM.IBDataSetSchedule.IsEmpty then
        MessageDlg('Scheda Noleggio Non Trovata', mtWarning,[mbOk], 0);
     end;
    end;


    Edit12.Clear;
end;
end; }



function Tmenu.intintostr(Stringa:string):boolean;
var i:integer;
begin
intintostr:=false;
if (length(Edit12.Text)=0) then
exit;
i:=1;
 while not(i=length(stringa)) do
  begin
   if stringa[i] in ['0'..'9'] then
   begin
    intintostr:=true;
    break;
   end;
  inc(i);
  end;
end;

function Tmenu.StrAllChar(Stringa:string):boolean;
var i:integer;
begin
StrAllChar:=true;
if (length(Edit12.Text)=0) then
exit;
i:=1;
 while not(i=length(stringa)) do
  begin
   if stringa[i] in ['A'..'Z'] then
   begin
    StrAllChar:=false;
    break;
   end;
  inc(i);
  end;
end;





function Tmenu.QtaArtPerScheda(SCHED_NO:integer): integer;
begin
//if not DM.IBTransaction10.InTransaction then
//DM.IBTransaction10.StartTransaction;
DM.IBQueryTemp.Close;
DM.IBQueryTemp.SQL.Clear;
DM.IBQueryTemp.SQL.Add('SELECT COUNT(*)');
DM.IBQueryTemp.SQL.Add('FROM RENTEDART');
DM.IBQueryTemp.SQL.Add('WHERE SCHED_NO = "'+inttostr(SCHED_NO)+'"');
DM.IBQueryTemp.Open;
result:=DM.IBQueryTemp.Fields.Fields[0].AsInteger;
DM.IBQueryTemp.Close;
//DM.IBTransaction10.Commit;
end;

function Tmenu.QtaArtChiusiPerScheda(SCHED_NO:integer): integer;
begin
//if not DM.IBTransaction10.InTransaction then
//DM.IBTransaction10.StartTransaction;
DM.IBQueryTemp.Close;
DM.IBQueryTemp.SQL.Clear;
DM.IBQueryTemp.SQL.Add('SELECT COUNT(*)');
DM.IBQueryTemp.SQL.Add('FROM SCHEDULE JOIN RENTEDART ON RENTEDART.SCHED_NO = SCHEDULE.SCHED_NO');
DM.IBQueryTemp.SQL.Add('WHERE (SCHEDULE.SCHED_NO = "'+inttostr(SCHED_NO)+'") AND (RENTEDART.STATO = "RESO")');
DM.IBQueryTemp.Open;
result:=DM.IBQueryTemp.Fields.Fields[0].AsInteger;
DM.IBQueryTemp.Close;
//DM.IBTransaction10.Commit;
end;

function Tmenu.QtaArtApertiPerScheda(SCHED_NO:integer): integer;
begin
//if not DM.IBTransaction10.InTransaction then
//DM.IBTransaction10.StartTransaction;
DM.IBQueryTemp.Close;
DM.IBQueryTemp.SQL.Clear;
DM.IBQueryTemp.SQL.Add('SELECT COUNT(*)');
DM.IBQueryTemp.SQL.Add('FROM SCHEDULE JOIN RENTEDART ON RENTEDART.SCHED_NO = SCHEDULE.SCHED_NO');
DM.IBQueryTemp.SQL.Add('WHERE (SCHEDULE.SCHED_NO = "'+inttostr(SCHED_NO)+'") AND (RENTEDART.STATO = "NOLEGGIATO")');
DM.IBQueryTemp.Open;
result:=DM.IBQueryTemp.Fields.Fields[0].AsInteger;
DM.IBQueryTemp.Close;
//DM.IBTransaction10.Commit;
end;


function Tmenu.ScheduleResult(SCHED_NO:integer):Integer;
Var ArtAperti,ArtChiusi,QtaArticoli:integer;
begin
ArtChiusi:=QtaArtChiusiPerScheda(SCHED_NO);
ArtAperti:=QtaArtApertiPerScheda(SCHED_NO);
QtaArticoli:=QtaArtPerScheda(SCHED_NO);
if (ArtChiusi=0) and (QtaArticoli=0) and (ArtAperti=0) then
DM.IBDataSetScheduleSTATO.AsString:='INUTILIZZATA';
if (ArtChiusi=0) and (QtaArticoli>0) and (ArtAperti>0) then
DM.IBDataSetScheduleSTATO.AsString:='APERTA';
if (ArtChiusi>0) and (QtaArticoli>0) and (ArtChiusi<QtaArticoli) then
DM.IBDataSetScheduleSTATO.AsString:='PARZIALE';
if (QtaArticoli>0) and ((ArtChiusi>QtaArticoli) or (ArtAperti>QtaArticoli)) then
DM.IBDataSetScheduleSTATO.AsString:='INCOERENTE';
if (QtaArticoli>0) and (ArtChiusi=QtaArticoli) and (ArtAperti=0)then
Begin
DM.IBDataSetScheduleDATACLOSESCHD.AsDateTime:=today;
DM.IBDataSetScheduleSTATO.AsString:='CHIUSA';
end
else
DM.IBDataSetScheduleDATACLOSESCHD.Clear;
result:=QtaArticoli;
end;

procedure TMenu.SetSchedStatoCons;
begin
DM.IBQueryTemp.Transaction:=DM.IBTransaction10;
if not DM.IBTransaction10.InTransaction then
DM.IBTransaction10.StartTransaction;
DM.IBQueryTemp.Close;
DM.IBQueryTemp.SQL.Clear;
DM.IBQueryTemp.SQL.Add('UPDATE SCHEDULE');
DM.IBQueryTemp.SQL.Add('SET STATO_CONS = "REGOLARE"');
DM.IBQueryTemp.SQL.Add('WHERE (STATO <> "CHIUSA") AND ((DATATAKEBACK > "TODAY") OR (DATATAKEBACK = "TODAY"))');
DM.IBQueryTemp.ExecSQL;
DM.IBQueryTemp.SQL.Clear;
DM.IBQueryTemp.SQL.Add('UPDATE SCHEDULE');
DM.IBQueryTemp.SQL.Add('SET STATO_CONS = "RITARDO"');
DM.IBQueryTemp.SQL.Add('WHERE (STATO <> "CHIUSA") AND (DATATAKEBACK < "TODAY") AND (("TODAY"-DATATAKEBACK)<7) AND (("TODAY"-DATATAKEBACK)>0)');
DM.IBQueryTemp.ExecSQL;
DM.IBQueryTemp.SQL.Clear;
DM.IBQueryTemp.SQL.Add('UPDATE SCHEDULE');
DM.IBQueryTemp.SQL.Add('SET STATO_CONS = "GRAVE_RITARDO"');
DM.IBQueryTemp.SQL.Add('WHERE (STATO <> "CHIUSA") AND (DATATAKEBACK < "TODAY") AND (("TODAY"-DATATAKEBACK)>7)');
DM.IBQueryTemp.ExecSQL;
DM.IBTransaction10.Commit;
//DM.IBDataSetSchedule.close;
//DM.IBDataSetSchedule.Open;
end;

function Tmenu.ArtnoIsInArticoli(ARTNO:string): integer;
begin
if not (ARTNO='') then
begin
//if not DM.IBTransaction10.InTransaction then
//DM.IBTransaction10.StartTransaction;
//DM.IBQueryTemp.Transaction:=DM.IBTransaction6;
//DM.IBQueryTemp.Close;
DM.IBQueryTemp.SQL.Clear;
DM.IBQueryTemp.SQL.Add('SELECT ART_NO');
DM.IBQueryTemp.SQL.Add('FROM ARTICOLO');
DM.IBQueryTemp.SQL.Add('WHERE ART_NO = "'+ARTNO+'"');
DM.IBQueryTemp.Open;
if not DM.IBQueryTemp.IsEmpty then
result:=DM.IBQueryTemp.Fields.Fields[0].AsInteger
else
result:=0;
//if DM.IBTransaction10.InTransaction then
//DM.IBTransaction10.Commit;
end
else
result:=0;
DM.IBQueryTemp.Close;
end;


// Funzione di passaggio per arrivare al calcolo del costo in base al giorno di nolo e al tipo
function TMenu.CalcRentedArt:Real;
var campo:string; day:integer;
begin
day:=DM.IBDataSetScheduleDAYUSE.AsInteger;
{if DM.IBDataSetScheduleDAYUSE.AsInteger = 154 then
campo:='STAGIONE';
if DM.IBDataSetScheduleDAYUSE.AsInteger = 2 then
campo:='WEEKEND';
if DM.IBDataSetScheduleDAYUSE.AsInteger = 31 then
campo:='MENSILE';
if DM.IBDataSetScheduleDAYUSE.AsInteger = 1 then
campo:='D1';
if (DM.IBDataSetScheduleDAYUSE.AsInteger > 2) AND (DM.IBDataSetScheduleDAYUSE.AsInteger < 31)then
campo:='D'+DM.IBDataSetScheduleDAYUSE.AsString;
Result:=ArtRentedPrice(campo,DM.IBDataSetRentedArt_no.AsString);}
Campo:='Null';
if (Day >20) and (Day <32) then
campo:='DA21A31';
if (Day >31) and (Day <46) then
campo:='DA32A45';
if (Day >45) and (Day <61) then
campo:='DA46A60';
if (Day >60) then
campo:='STAGIONE';
if (DM.IBDataSetScheduleDAYUSE.AsInteger > 0) AND (DM.IBDataSetScheduleDAYUSE.AsInteger < 21)then
campo:='D'+inttostr(Day);
if (IsWeekend(dM.IBDataSetScheduleDATASTARTRENT.AsDateTime,Day)) and (Campo='D2') then
campo:='WEEKEND';
if not((campo='NULL') or (Day=0)) then
Result:=ArtRentedPrice(campo,DM.IBDataSetRentedArt_no.AsString)
//Result:=ArtRentedPrice(campo,)
else
begin
 result:=0;
 MessageDlg('Impostare i giorni di noleggio!', mtInformation, [mbOk], 0);
 DbEdit36.SetFocus;
end;

end;


function TMenu.CalcRentedArtNew(ART_NO:integer):Real;
var campo:string; day:integer;
begin
day:=DM.IBDataSetScheduleDAYUSE.AsInteger;
{if DM.IBDataSetScheduleDAYUSE.AsInteger = 154 then
campo:='STAGIONE';
if DM.IBDataSetScheduleDAYUSE.AsInteger = 2 then
campo:='WEEKEND';
if DM.IBDataSetScheduleDAYUSE.AsInteger = 31 then
campo:='MENSILE';
if DM.IBDataSetScheduleDAYUSE.AsInteger = 1 then
campo:='D1';
if (DM.IBDataSetScheduleDAYUSE.AsInteger > 2) AND (DM.IBDataSetScheduleDAYUSE.AsInteger < 31)then
campo:='D'+DM.IBDataSetScheduleDAYUSE.AsString;
Result:=ArtRentedPrice(campo,DM.IBDataSetRentedArt_no.AsString);}
Campo:='Null';
if (Day >20) and (Day <32) then
campo:='DA21A31';
if (Day >31) and (Day <46) then
campo:='DA32A45';
if (Day >45) and (Day <61) then
campo:='DA46A60';
if (Day >60) then
campo:='STAGIONE';
if (DM.IBDataSetScheduleDAYUSE.AsInteger > 0) AND (DM.IBDataSetScheduleDAYUSE.AsInteger < 21)then
campo:='D'+inttostr(Day);
if (IsWeekend(dM.IBDataSetScheduleDATASTARTRENT.AsDateTime,Day)) and (Campo='D2') then
campo:='WEEKEND';
if not((campo='NULL') or (Day=0)) then
Result:=ArtRentedPrice(campo,inttostr(ART_NO))
//Result:=ArtRentedPrice(campo,)
else
begin
 result:=0;
 MessageDlg('Impostare i giorni di noleggio!', mtInformation, [mbOk], 0);
 DbEdit36.SetFocus;
end;
end;

// funzione che calcola il prezzo del giorno di nolo dal tipo dell'articolo noleggiato in base ai gg.
function TMenu.ArtRentedPrice(Campo:string;Artno:string):real;
begin
DM.IBQueryTemp.Close;
DM.IBQueryTemp.SQL.Clear;
DM.IBQueryTemp.SQL.Add('SELECT PRICELIST.'+Campo+' FROM PRICELIST WHERE TIPO = (SELECT TIPO FROM ARTICOLO WHERE ART_NO ="'+ARTNO+'")');
DM.IBQueryTemp.Open;
if not DM.IBQueryTemp.IsEmpty then
result:=DM.IBQueryTemp.Fields.Fields[0].AsFloat
else
result:=0;
//DM.IBTransaction10.Commit;
end;

{function TMenu.SubTotRentArtTennnis(Campo:string; Schedno:string):real;
begin
DM.IBQueryTemp.Close;
DM.IBQueryTemp.SQL.Clear;
DM.IBQueryTemp.SQL.Add('SELECT SUM(PRICELIST.'+Campo+') FROM PRICELIST JOIN ARTICOLO ON PRICELIST.TIPO=ARTICOLO.TIPO');
DM.IBQueryTemp.SQL.Add('JOIN RENTEDART ON ARTICOLO.ART_NO=RENTEDART.ART_NO WHERE RENTEDART.SCHED_NO="'+SCHEDNO+'"');
DM.IBQueryTemp.Open;
if not DM.IBQueryTemp.IsEmpty then
result:=DM.IBQueryTemp.Fields.Fields[0].AsFloat
else
result:=0;
end;}

function TMenu.SubTotRentArtTennnis(day:integer;Schedno:string):real;
var campo:string;
tmp:TIBQuery;
begin
//day:=DM.IBDataSetScheduleDAYUSE.AsInteger;
Campo:='Null';
if (Day >20) and (Day <32) then
campo:='DA21A31';
if (Day >31) and (Day <46) then
campo:='DA32A45';
if (Day >45) and (Day <61) then
campo:='DA46A60';
if (Day >60) then
campo:='STAGIONE';
if (DM.IBDataSetScheduleDAYUSE.AsInteger > 0) AND (DM.IBDataSetScheduleDAYUSE.AsInteger < 21)then
campo:='D'+inttostr(Day);
if (IsWeekend(dM.IBDataSetScheduleDATASTARTRENT.AsDateTime,Day)) and (Campo='D2') then
campo:='WEEKEND';
if not((campo='NULL') or (Day=0)) then
begin
 tmp:=TIBQuery.Create(nil);
 tmp.Database:=DM.IBDatabase1;
 tmp.Transaction:=DM.IBTransaction6;
 tmp.SQL.Clear;
 tmp.SQL.Add('SELECT SUM(PRICELIST.'+Campo+')AS TOTALE FROM PRICELIST JOIN ARTICOLO ON PRICELIST.TIPO=ARTICOLO.TIPO');
 tmp.SQL.Add('JOIN RENTEDART ON ARTICOLO.ART_NO=RENTEDART.ART_NO WHERE RENTEDART.SCHED_NO="'+SCHEDNO+'"');
 tmp.Open;
 if not tmp.IsEmpty then
 result:=tmp.Fields.fieldbyname('TOTALE').asinteger
 else
 result:=0;
end
else
begin
 result:=0;
 MessageDlg('Impostare i giorni di noleggio!', mtInformation, [mbOk], 0);
 Tennismng.DbEdit30.SetFocus;
end;
end;











procedure TMenu.DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
//DBGrid4.Canvas.Brush.Color := clBlack;
if (DM.IBDataSetScheduleDAYUSE.AsInteger > 120) then
DBGrid4.Canvas.Brush.Color := clYellow
else
DBGrid4.Canvas.Brush.Color := clBtnFace;
if (DM.IBDataSetScheduleSTATO_CONS.AsString = 'RITARDO') AND (DM.IBDataSetScheduleSTATO.AsString <> 'CHIUSA') then
DBGrid4.Canvas.Font.Color := clFuchsia;
if (DM.IBDataSetScheduleSTATO_CONS.AsString = 'GRAVE_RITARDO') AND (DM.IBDataSetScheduleSTATO.AsString <> 'CHIUSA') then
DBGrid4.Canvas.Font.Color := CLRED;
IF DM.IBDataSetScheduleSTATO.AsString = 'CHIUSA' then
DBGrid4.Canvas.Font.Color := ClGreen;
if (DM.IBDataSetScheduleSTATO.AsString = 'REGOLARE') AND (DM.IBDataSetScheduleSTATO.AsString = 'APERTA') then
DBGrid4.Canvas.Font.Color := ClBlue;
if (DM.IBDataSetScheduleSTATO.AsString = 'PARZIALE') AND (DM.IBDataSetScheduleSTATO.AsString = 'APERTA') then
DBGrid4.Canvas.Font.Color := clYellow;
DBGrid4.DefaultDrawColumnCell(Rect,DataCol,Column, State);

end;

procedure TMenu.DBEdit37Exit(Sender: TObject);
begin
{if DM.IBDataSetScheduleSUBTOTALE.AsFloat= 0 then
DM.ibdatasetscheduleNETPRICE.AsFloat:=DM.IBDataSetScheduleSUBTOTALE.AsFloat
else
begin
 if DM.IBDataSetScheduleDISCOUNT.AsFloat = 0 then
  DM.ibdatasetscheduleNETPRICE.AsFloat:=RoundTo(DM.IBDataSetScheduleSUBTOTALE.AsFloat,-2)
  else
  DM.ibdatasetscheduleNETPRICE.AsFloat:=RoundTo(DM.ibdatasetscheduleSUBTOTALE.AsFloat-(DM.ibdatasetscheduleSUBTOTALE.AsFloat*DM.IBDataSetScheduleDISCOUNT.AsFloat/100),-2);
end; }

end;

procedure TMenu.DBEdit38Exit(Sender: TObject);
begin
if DM.IBDataSetScheduleDISCOUNT.AsFloat=0 then
DM.ibdatasetscheduleNETPRICE.AsFloat:=DM.ibdatasetscheduleSUBTOTALE.AsFloat
else
begin
  if DM.IBDatasetscheduleSUBTOTALE.AsFloat <>0 tHEN
   DM.ibdatasetscheduleNETPRICE.AsFloat:=RoundTo(DM.ibdatasetscheduleSUBTOTALE.AsFloat+(DM.ibdatasetscheduleSUBTOTALE.AsFloat*DM.IBDataSetScheduleDISCOUNT.AsFloat/100),-2)
  else
   DM.ibdatasetscheduleNETPRICE.AsFloat:=RoundTo(DM.ibdatasetscheduleSUBTOTALE.AsFloat,-2);
end;
end;


procedure Tmenu.RefreshCalcRentedArt;
var tmpquery:TIbquery;
begin
if tennismng.Showing=false then
begin
DM.IBDataSetScheduleSUBTOTALE.AsInteger:=0;
//DM.IBDataSetRented.First;
DM.IBQuery1.DisableControls;
DM.IBQuery1.First;
//while not DM.IBDataSetRented.Eof do
while not DM.IBQuery1.Eof do
begin
//if DM.IBDataSetRentedSTATO.AsString = 'NOLEGGIATO' Then
DM.IBDataSetScheduleSUBTOTALE.AsFloat:=DM.IBDataSetScheduleSUBTOTALE.AsFloat + CalcRentedArtNew(DM.IBQuery1.fieldbyname('ART_NO').AsInteger);
//CalcRentedArt;
//DM.IBDataSetRented.Next;
DM.ibquery1.Next;
end;
dM.IBQuery1.EnableControls;
end
else
begin

end;




end;


procedure TMenu.DeleteArtForSched(SCHEDNO:integer);
begin
if not DM.IBTransaction10.InTransaction then
DM.IBTransaction10.StartTransaction;
DM.IBQueryTemp.Close;
DM.IBQueryTemp.SQL.Clear;
DM.IBQueryTemp.SQL.Add('DELETE FROM RENTEDART');
DM.IBQueryTemp.SQL.Add('WHERE RENTEDART.SCHED_NO = "'+inttostr(SCHEDNO)+'"');
DM.IBQueryTemp.ExecSQL;
DM.IBTransaction10.Commit;
end;

procedure TMenu.FeeDayLateCalc(FeeTax:real);
begin
if not DM.IBTransaction10.InTransaction then
DM.IBTransaction10.StartTransaction;
DM.IBQueryTemp.Close;
DM.IBQueryTemp.SQL.Clear;
DM.IBQueryTemp.SQL.Add('UPDATE SCHEDULE');
DM.IBQueryTemp.SQL.Add('SET FEEDAYLATE =  "'+floattostr(FEETAX)+'" * ("TODAY" - SCHEDULE.DATATAKEBACK) ');
DM.IBQueryTemp.SQL.Add('WHERE ( "TODAY" > SCHEDULE.DATATAKEBACK ) AND ((SCHEDULE.STATO = "APERTA")OR(SCHEDULE.STATO = "PARZIALE"))');
DM.IBQueryTemp.ExecSQL;
DM.IBQueryTemp.Close;
DM.IBQueryTemp.SQL.Clear;
DM.IBQueryTemp.SQL.Add('UPDATE SCHEDULE');
DM.IBQueryTemp.SQL.Add('SET FEEDAYLATE = 0');
DM.IBQueryTemp.SQL.Add('WHERE (SCHEDULE.DATATAKEBACK >"TODAY") OR (SCHEDULE.DATATAKEBACK ="TODAY")');
DM.IBQueryTemp.ExecSQL;
DM.IBQueryTemp.Close;
DM.IBQueryTemp.SQL.Clear;
DM.IBQueryTemp.SQL.Add('UPDATE SCHEDULE');
DM.IBQueryTemp.SQL.Add('SET FEEDAYLATE =  "'+floattostr(FEETAX)+'" * (SCHEDULE.DATACLOSESCHD - SCHEDULE.DATATAKEBACK) ');
DM.IBQueryTemp.SQL.Add('WHERE SCHEDULE.DATACLOSESCHD > SCHEDULE.DATATAKEBACK');
DM.IBQueryTemp.ExecSQL;
DM.IBTransaction10.Commit;
DM.IBDataSetSchedule.Refresh;
end;

procedure TMenu.FeeDayLateCalc1(FeeTax:real);
var ibqry:TIBQuery;
begin
ibqry:=Tibquery.Create(nil);
ibqry.Database:=DM.IBDatabase1;
ibqry.Transaction:=DM.IBTransaction7;
if not DM.IBTransaction7.InTransaction then
DM.IBTransaction7.StartTransaction;
ibqry.Close;
ibqry.SQL.Clear;
ibqry.SQL.Add('UPDATE SCHEDULE');
ibqry.SQL.Add('SET FEEDAYLATE =  "'+floattostr(FEETAX)+'" * ("TODAY" - SCHEDULE.DATATAKEBACK) ');
ibqry.SQL.Add('WHERE ( "TODAY" > SCHEDULE.DATATAKEBACK ) AND ((SCHEDULE.STATO = "APERTA")OR(SCHEDULE.STATO = "PARZIALE"))');
ibqry.ExecSQL;
ibqry.Close;
ibqry.SQL.Clear;
ibqry.SQL.Add('UPDATE SCHEDULE');
ibqry.SQL.Add('SET FEEDAYLATE = 0');
ibqry.SQL.Add('WHERE (SCHEDULE.DATATAKEBACK >"TODAY") OR (SCHEDULE.DATATAKEBACK ="TODAY")');
ibqry.ExecSQL;
ibqry.Close;
ibqry.SQL.Clear;
ibqry.SQL.Add('UPDATE SCHEDULE');
ibqry.SQL.Add('SET FEEDAYLATE =  "'+floattostr(FEETAX)+'" * (SCHEDULE.DATACLOSESCHD - SCHEDULE.DATATAKEBACK) ');
ibqry.SQL.Add('WHERE SCHEDULE.DATACLOSESCHD > SCHEDULE.DATATAKEBACK');
ibqry.ExecSQL;
if not(DM.IBDataSetSchedule.State in [dsinsert,dsEdit]) then
begin
DM.IBTransaction7.CommitRetaining;
DM.IBDataSetSchedule.Refresh;
end;
end;



// Funzione Di refresh sul calcolo dell' intero noleggio
function TMenu.CalcPriceSched(Schedno:string;day:integer):real;
var campo:string;
begin
{if Day = 154 then
campo:='STAGIONE';
if Day = 2 then
campo:='WEEKEND';
if Day = 31 then
campo:='MENSILE';
if Day = 1 then
campo:='D1';
if (DM.IBDataSetScheduleDAYUSE.AsInteger > 2) AND (DM.IBDataSetScheduleDAYUSE.AsInteger < 31)then
campo:='D'+inttostr(Day);
if not DM.IBTransaction10.InTransaction then
DM.IBTransaction10.StartTransaction;
DM.IBQueryTemp.Close;
DM.IBQueryTemp.SQL.Clear;
DM.IBQueryTemp.SQL.Add('SELECT SUM('+Campo+')');
DM.IBQueryTemp.SQL.Add('from (rentedart join articolo on rentedart.art_no=articolo.art_no) join pricelist on articolo.tipo=pricelist.tipo');
DM.IBQueryTemp.SQL.Add('where rentedart.sched_no="'+schedno+'"');
DM.IBQueryTemp.Open;
if DM.IBQueryTemp.Fields.Fields[0].IsNull then
result:=0
else
result:=DM.IBQueryTemp.Fields.Fields[0].AsFloat;
DM.IBTransaction10.Commit;}
Campo:='Null';
if (Day >20) and (Day <32) then
campo:='DA21A31';
if (Day >31) and (Day <46) then
campo:='DA32A45';
if (Day >45) and (Day <61) then
campo:='DA46A60';
if (Day >60) then
campo:='STAGIONE';
if (DM.IBDataSetScheduleDAYUSE.AsInteger > 0) AND (DM.IBDataSetScheduleDAYUSE.AsInteger < 21)then
campo:='D'+inttostr(Day);
if (IsWeekend(dM.IBDataSetScheduleDATASTARTRENT.AsDateTime,Day)) and (Campo='D2') then
campo:='WEEKEND';
if not((campo='NULL') or (Day=0)) then
begin
 if not DM.IBTransaction10.InTransaction then
  DM.IBTransaction10.StartTransaction;
  DM.IBQueryTemp.Close;
  DM.IBQueryTemp.SQL.Clear;
  DM.IBQueryTemp.SQL.Add('SELECT SUM('+Campo+')');
  DM.IBQueryTemp.SQL.Add('from (rentedart join articolo on rentedart.art_no=articolo.art_no) join pricelist on articolo.tipo=pricelist.tipo');
  DM.IBQueryTemp.SQL.Add('where rentedart.sched_no="'+schedno+'"');
  DM.IBQueryTemp.Open;
  if DM.IBQueryTemp.Fields.Fields[0].IsNull then
  result:=0
  else
  result:=DM.IBQueryTemp.Fields.Fields[0].AsFloat;
  DM.IBTransaction10.Commit;
end
else
begin
 MessageDlg('Impostare i giorni di noleggio!', mtInformation, [mbOk], 0);
 DbEdit36.SetFocus;
end;
end;

function TMenu.IsWeekend(IniDate:Tdatetime; day:integer):boolean;
var i:integer;
begin
result:=false;
i:=1;
if day=2 then
begin
 while not ((result=true) or (I>Day)) do
  begin
   if (Dayoftheweek(Inidate) =6) or (Dayoftheweek(Inidate) =7) then
    result:=true;
   incday(IniDate,1);
   inc(i);
  end;
end;
end;

procedure TMENU.IncNoloCalc(SCHED_NO:Integer);
var Listino,IncNolo,Discount,Temp:Real;
begin
DM.IBDataSetRented.DisableControls;
dM.IBDataSetRented.First;
while not DM.IBDataSetRented.Eof do
begin
 Listino:=CalcRentedArt;
  if Listino=NULL then
  Listino:=0;
  Discount:=DM.IBDataSetScheduleDISCOUNT.AsFloat;
//  If not ((Discount = 0)or(Listino=0)) then
// IncNolo:=Round((Listino+(Listino*Discount/100)))
    If (Discount = 0) and (Listino <>0) then
   IncNolo:=Round(Listino);
    If (Discount <> 0) and (Listino =0) then
   IncNolo:=0;
    If (Discount = 0) and (Listino =0) then
   IncNolo:=0;
    If (Discount <> 0) and (Listino <>0) then
   IncNolo:=Round((Listino+(Listino*Discount/100)));
  //  else
  // IncNolo:=Listino;
   DM.IBQueryTemp.Close;
    DM.IBQueryTemp.SQL.Clear;
     DM.IBQueryTemp.SQL.Add('SELECT INCNOLO');
      DM.IBQueryTemp.SQL.Add('FROM ARTICOLO');
    DM.IBQueryTemp.SQL.Add('WHERE ARTICOLO.ART_NO ='+DM.IBDataSetRentedART_NO.asString+'');
   DM.IBQueryTemp.Open;
    Temp:=DM.IBQueryTemp.Fields.Fields[0].AsFloat+incnolo;
    DM.IBQueryTemp.Close;
   if not DM.IBTransaction10.InTransaction then
   DM.IBTransaction10.StartTransaction;
     DM.IBQueryTemp.SQL.Clear;
      DM.IBQueryTemp.SQL.Add('UPDATE ARTICOLO');
       DM.IBQueryTemp.SQL.Add('SET INCNOLO = "'+floattostr(round(temp))+'"');
       DM.IBQueryTemp.SQL.Add('WHERE  ARTICOLO.ART_NO ='+DM.IBDataSetRentedART_NO.asString+'');
      DM.IBQueryTemp.ExecSQL;
     DM.IBTransaction10.Commit;
    DM.IBDataSetRented.Next;
   end;
DM.IBDataSetArticolo.Refresh;
DM.IBDataSetRented.EnableControls;
  end;



procedure TMenu.Button9Click(Sender: TObject);
begin
DM.IBDataSetSchedule.Close;
DM.IBDataSetSchedule.SelectSQL.Clear;
DM.IBDataSetSchedule.SelectSQL.Add('SELECT COGNRAGSOC, NOME, INDIRIZZO, N_DOC, SCHEDULE.*');
DM.IBDataSetSchedule.SelectSQL.Add('FROM SCHEDULE JOIN CLIENTI ON CLIENTI.CLI_NO = SCHEDULE.CLI_NO');
if not (combobox17.Text='') then
DM.IBDataSetSchedule.SelectSQL.Add('WHERE (SCHEDULE.STATO_CONS = "RITARDO" OR SCHEDULE.STATO_CONS = "GRAVE_RITARDO") '+WHERESLC1+' AND DATAINTRO BETWEEN "'+DecForSqlDate(strtodate(edit58.Text))+'" AND "'+DecForSqlDate(strtodate(edit59.Text))+'"')
else
DM.IBDataSetSchedule.SelectSQL.Add('WHERE (SCHEDULE.STATO_CONS = "RITARDO" OR SCHEDULE.STATO_CONS = "GRAVE_RITARDO")' +WHERESLC1 );
DM.IBDataSetSchedule.SelectSQL.Add('ORDER BY DATATAKEBACK');
DM.IBDataSetSchedule.Open;


//SetSchedStatoCons;
//TrimSetSchedStato;

end;

procedure TMenu.TrimSetSchedStato; //LEGATO AI BOTTONI DI RINFRESCO
begin
if not DM.IBTransaction10.InTransaction then
DM.IBTransaction10.StartTransaction;
DM.IBQueryTemp.Close;
DM.IBQueryTemp.SQL.Clear;
DM.IBQueryTemp.SQL.Add('UPDATE SCHEDULE');
DM.IBQueryTemp.SQL.Add('SET STATO = "INUTILIZZATA", STATO_CONS = "REGOLARE" ');
DM.IBQueryTemp.SQL.Add('WHERE (DATATAKEBACK IS NULL) or (DATASTARTRENT IS NULL)');
DM.IBQueryTemp.ExecSQL;
DM.IBTransaction10.Commit;
End;

procedure TMenu.DelSchedNull; //LEGATO AI BOTTONI DI RINFRESCO
begin
if not DM.IBTransaction10.InTransaction then
DM.IBTransaction10.StartTransaction;
DM.IBQueryTemp.Close;
DM.IBQueryTemp.SQL.Clear;
DM.IBQueryTemp.SQL.Add('DELETE FROM SCHEDULE');
DM.IBQueryTemp.SQL.Add('WHERE (STATO = "INUTILIZZATA") OR (STATO = "INCOERENTE") OR (DAYUSE = 0)OR (DAYUSE IS NULL)');
DM.IBQueryTemp.ExecSQL;
DM.IBTransaction10.Commit;
DM.IBDataSetSchedule.Close;
DM.IBDataSetSchedule.Open;

End;


procedure TMenu.Button10Click(Sender: TObject);
begin
DM.IBDataSetSchedule.Close;
DM.IBDataSetSchedule.SelectSQL.Clear;
DM.IBDataSetSchedule.SelectSQL.Add('SELECT COGNRAGSOC, NOME, INDIRIZZO, N_DOC, SCHEDULE.*');
DM.IBDataSetSchedule.SelectSQL.Add('FROM SCHEDULE JOIN CLIENTI ON CLIENTI.CLI_NO = SCHEDULE.CLI_NO');
if not (combobox17.Text='') then
DM.IBDataSetSchedule.SelectSQL.Add('WHERE SCHEDULE.STATO = "PARZIALE" '+WHERESLC1+' AND DATAINTRO BETWEEN "'+DecForSqlDate(strtodate(edit58.Text))+'" AND "'+DecForSqlDate(strtodate(edit59.Text))+'"')
else
DM.IBDataSetSchedule.SelectSQL.Add('WHERE SCHEDULE.STATO = "PARZIALE" '+WHERESLC1);
DM.IBDataSetSchedule.SelectSQL.Add('ORDER BY SCHED_NO');
DM.IBDataSetSchedule.Open;
end;

procedure TMenu.DBImage2DblClick(Sender: TObject);
begin
viewcamsnap.Button1.OnClick:=viewcamsnap.ImageToOperatore;
//ViewCamsnap.tsCap321.Connected:=true;
ViewCamsnap.Showmodal;
end;

procedure TMenu.BTNSALVA7Click(Sender: TObject);
begin
IF not (DM.IBDataSetOpCOGNOME.IsNull OR DM.IBDataSetOpNOME.IsNull) then
dm.IBDataSetOp.Post
else
  MessageDlg('COGNOME e NOME OBBLIGATORI!', mtWarning,[mbOk], 0);

end;

procedure TMenu.BTNMODIFICA7Click(Sender: TObject);
begin
DM.IBDataSetOp.Edit;
end;

procedure TMenu.BTNELIMINA7Click(Sender: TObject);
begin
If not DM.IBDataSetOp.IsEmpty then
DM.IBDataSetOp.Delete;
end;

procedure TMenu.BTNANNULLA7Click(Sender: TObject);
begin
DM.IBDataSetOp.Cancel;
end;

procedure TMenu.BTNINSERISCI7Click(Sender: TObject);
begin
DM.IBDataSetOp.Insert;
end;


procedure TMenu.Operatori1Click(Sender: TObject);
begin
if ACCCONV.ShowModal=Mrok then
begin
if ACCCONV.ClassValue = 3  then
begin
TabSheet7.TabVisible:=true;
Pagecontrol1.ActivePageIndex:=6;
end
else
MsgNoPermission(Classification);
ACCCONV.ClassValue :=0;
end;
end;

procedure TMenu.Listini1Click(Sender: TObject);
begin
if ACCCONV.ShowModal=Mrok then
begin
if ACCCONV.ClassValue = 3 then
begin
TabSheet4.TabVisible:=true;
Pagecontrol1.ActivePageIndex:=3;
end
else
MsgNoPermission(Classification);
ACCCONV.ClassValue :=0;
end;
end;

procedure TMenu.Report1Click(Sender: TObject);
begin
if ACCCONV.ShowModal=Mrok then
begin
if ACCCONV.ClassValue = 3 then
begin
TabSheet6.TabVisible:=true;
Pagecontrol1.ActivePageIndex:=5;
end
else
MsgNoPermission(Classification);
ACCCONV.ClassValue :=0;
end;
end;

procedure TMenu.TabSheet7Hide(Sender: TObject);
begin
//Pagecontrol1.ActivePageIndex:=0;
//Tabsheet1.SetFocus;
Tabsheet7.tabVisible:=false;
end;

procedure TMenu.TabSheet6Hide(Sender: TObject);
begin
Pagecontrol1.ActivePageIndex:=0;
Tabsheet6.tabVisible:=false;
Tabsheet1.SetFocus;
end;

procedure TMenu.TabSheet4Hide(Sender: TObject);
begin
Tabsheet4.tabVisible:=false;
Pagecontrol1.ActivePageIndex:=0;
Tabsheet1.SetFocus;
end;

procedure TMenu.TabSheet4Show(Sender: TObject);
begin
if  ((Sender as Ttabsheet).TabVisible = false) then
    begin
 //   pagecontrol1.Pages[0].SetFocus;
    end;
end;

procedure TMenu.Button11Click(Sender: TObject);
begin
DM.IBDataSetSchedule.Close;
DM.IBDataSetSchedule.SelectSQL.Clear;
DM.IBDataSetSchedule.SelectSQL.Add('SELECT COGNRAGSOC, NOME, INDIRIZZO, N_DOC, SCHEDULE.*');
DM.IBDataSetSchedule.SelectSQL.Add('FROM SCHEDULE JOIN CLIENTI ON CLIENTI.CLI_NO = SCHEDULE.CLI_NO');
if not (combobox17.Text='') then
DM.IBDataSetSchedule.SelectSQL.Add('WHERE SCHEDULE.STATO = "INUTILIZZATA" AND DATAINTRO BETWEEN "'+DecForSqlDate(strtodate(edit58.Text))+'" AND "'+DecForSqlDate(strtodate(edit59.Text))+'"')
else
DM.IBDataSetSchedule.SelectSQL.Add('WHERE SCHEDULE.STATO = "INUTILIZZATA"');
DM.IBDataSetSchedule.SelectSQL.Add('ORDER BY SCHED_NO');
DM.IBDataSetSchedule.Open;

end;

procedure TMenu.Articoli1Click(Sender: TObject);
begin
if ACCCONV.ShowModal=Mrok then
begin
if ACCCONV.ClassValue = 3 then
begin
TabSheet2.TabVisible:=true;
Pagecontrol1.ActivePageIndex:=1;
end
else
MsgNoPermission(Classification);
ACCCONV.ClassValue :=0;
end;
end;

procedure TMenu.TabSheet2Hide(Sender: TObject);
begin
Pagecontrol1.ActivePageIndex:=0;
Tabsheet2.tabVisible:=false;

end;

procedure TMenu.DBGrid6DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
DBGrid6.Canvas.Brush.Color := ClBtnFace;
if DM.IBDataSetRentedSTATO.AsString = 'RESO' then
DBGrid6.Canvas.Font.Color := ClGreen;
if DM.IBDataSetRentedSTATO.AsString = 'NOLEGGIATO' then
DBGrid6.Canvas.Font.Color := ClRed;
DBGrid6.DefaultDrawColumnCell(Rect,DataCol,Column, State);

end;

Function TMenu.CheckRentedStato(ARTNO:integer):boolean;
begin
DM.IBQueryTemp.Close;
DM.IBQueryTemp.SQL.Clear;
DM.IBQueryTemp.SQL.Add('SELECT count(*)');
DM.IBQueryTemp.SQL.Add('FROM RENTEDART');
DM.IBQueryTemp.SQL.Add('WHERE (ART_NO = "'+ inttostr(ARTNO) +'") AND (STATO = "NOLEGGIATO")');
DM.IBQueryTemp.Open;
if DM.IBQueryTemp.IsEmpty then
result:=false
else
result:=true;
end;






procedure TMenu.Edit8KeyPress(Sender: TObject; var Key: Char);
var line:integer;
begin
if ord(Key) = 10 then begin Edit8.Clear; exit; end;
if ord(Key) = 13 then
 begin
 dbgrid9.DataSource:=nil;
  if QueryEanArtToArtno('*'+Edit8.text+'*')>0 then
  line:=1
  else
  line:=0;
 if QueryIsRented(inttostr(QueryEanArtToArtno('*'+Edit8.text+'*'))) then
  begin
  if not DM.IBTransaction10.InTransaction then
   DM.IBTransaction10.StartTransaction;
    DM.IBQueryTemp.Close;
    DM.IBQueryTemp.SQL.Clear;
    DM.IBQueryTemp.SQL.Add('UPDATE ARTICOLO');
    DM.IBQueryTemp.SQL.Add('SET AVAILABLE = "RIPARAZIONE", RIPDATA = "TODAY"');
    if line=0 then
    DM.IBQueryTemp.SQL.Add('WHERE ART_NO = "'+ Edit8.Text +'"')
    else
    DM.IBQueryTemp.SQL.Add('WHERE '+DM.IBDataSetParamEANTOSCAN.AsString+' = "'+'*'+ Edit8.Text +'*'+'"');
    DM.IBQueryTemp.Open;
    dbgrid9.DataSource:=DM.DSQueryTemp;
 RepairRefresh;
 Edit8.Clear;
 end
 else
 Begin
 messagedlg('ARTICOLO IN NOLEGGIO, SCARICARE DA SCHEDA!',mtInformation,[mbOk], 0);
 dbgrid9.DataSource:=DM.DSQueryTemp;
 RepairRefresh;
 Edit8.Clear;
 end;
 end;
 end;

procedure TMenu.RepairRefresh;
begin
  DM.IBQueryTemp.Close;
  DM.IBQueryTemp.SQL.Clear;
  DM.IBQueryTemp.SQL.Add('SELECT *');
  DM.IBQueryTemp.SQL.Add('FROM ARTICOLO');
  DM.IBQueryTemp.SQL.Add('WHERE AVAILABLE = "RIPARAZIONE"');
  DM.IBQueryTemp.Open;
end;




procedure TMenu.BitBtn4Click(Sender: TObject);
begin
 if DM.IBTransaction10.InTransaction then
  Begin
   DM.IBTransaction10.Commit;
   DM.IBDataSetArticolo.Close;
   DM.IBDataSetArticolo.Open;
   RepairRefresh;
   end;
end;

procedure TMenu.BitBtn5Click(Sender: TObject);
begin
 if DM.IBTransaction10.InTransaction then
    DM.IBTransaction10.Rollback;
    RepairRefresh;
end;

procedure TMenu.Edit9KeyPress(Sender: TObject; var Key: Char);
var line:integer;
begin
if ord(Key) = 10 then begin Edit9.Clear; exit; end;
if ord(Key) = 13 then
 begin
 dbgrid9.DataSource:=nil;
    if QueryEanArtToArtno('*'+Edit9.text+'*')>0 then
  line:=1
  else
  line:=0;
  if QueryIsInRepair(inttostr(QueryEanArtToArtno('*'+Edit9.text+'*')))or QueryIsInRepair(Edit9.text)  then
  begin
  if not DM.IBTransaction10.InTransaction then
  DM.IBTransaction10.StartTransaction;
  DM.IBQueryTemp.Close;
  DM.IBQueryTemp.SQL.Clear;
  DM.IBQueryTemp.SQL.Add('UPDATE ARTICOLO');
  DM.IBQueryTemp.SQL.Add('SET AVAILABLE = "DISPONIBILE", RIPDATA = NULL, RIPARAZIONI=RIPARAZIONI+1 ');
    if line=1 then
    DM.IBQueryTemp.SQL.Add('WHERE '+DM.IBDataSetParamEANTOSCAN.AsString+' = "'+'*'+ Edit9.Text +'*'+'"')
    else
    DM.IBQueryTemp.SQL.Add('WHERE ART_NO = "'+ Edit9.Text +'"');
  DM.IBQueryTemp.Open;
  dbgrid9.DataSource:=DM.DSQueryTemp;
  RepairRefresh;
  Edit9.Clear;
  end
 else
 Begin
 messagedlg('ARTICOLO NON IN LISTA RIPARAZIONE',mtInformation,[mbOk], 0);
 dbgrid9.DataSource:=DM.DSQueryTemp;
 RepairRefresh;
 Edit9.Clear;
 end;
end;
end;

procedure TMenu.TabSheet8Exit(Sender: TObject);
begin
  if DM.IBTransaction10.InTransaction then
   DM.IBTransaction10.Rollback;

end;

procedure TMenu.TabSheet8Show(Sender: TObject);
var query1: Tibquery;
    dsquery: Tdatasource;
begin
//dbgrid9.DataSource:=DM.DSQueryTemp;
//RepairRefresh;
query1:=Tibquery.Create(nil);
dsquery:=Tdatasource.Create(nil);
dsquery.DataSet:=query1;
query1.Database:=DM.IBDatabase1;
query1.SQL.Add('SELECT RIP_NO,COGNRAGSOC,NOME,DATARITIRORICH,SC_NUMCASSA,SC_DATAORA,SC_NUMDOC,SC_IMPORTO,PAGATO, TIPOPRODOTTO, BRAND, DESCRIZIONE,PREZZO FROM RIPARAZIONE INNER JOIN CLIENTI ON RIPARAZIONE.CLI_NO=CLIENTI.CLI_NO ORDER BY RIP_NO DESC');
query1.Open;
dbgrid9.DataSource:=dsquery;
//query1.close;
end;

procedure TMenu.DBGrid6DblClick(Sender: TObject);
begin
DM.IBDataSetArticolo.Close;
DM.IBDataSetArticolo.SelectSQL.Clear;
DM.IBDataSetArticolo.SelectSQL.Add('SELECT *');
DM.IBDataSetArticolo.SelectSQL.Add('FROM ARTICOLO');
DM.IBDataSetArticolo.SelectSQL.Add('WHERE ARTICOLO.ART_NO = "'+ DM.IBDataSetRentedART_NO.AsString +'"');
DM.IBDataSetArticolo.Open;
DettArt.ShowModal;
end;

procedure TMenu.Button5Click(Sender: TObject);
begin
DM.IBDataSetSchedule.Close;
DM.IBDataSetSchedule.SelectSQL.Clear;
DM.IBDataSetSchedule.SelectSQL.Add('SELECT COGNRAGSOC, NOME, INDIRIZZO, N_DOC, SCHEDULE.*');
DM.IBDataSetSchedule.SelectSQL.Add('FROM SCHEDULE JOIN CLIENTI ON CLIENTI.CLI_NO = SCHEDULE.CLI_NO');
if not (combobox17.Text='') then
DM.IBDataSetSchedule.SelectSQL.Add('WHERE SCHEDULE.DAYUSE > 120 '+WHERESLC1+' AND DATAINTRO BETWEEN "'+DecForSqlDate(strtodate(edit58.Text))+'" AND "'+DecForSqlDate(strtodate(edit59.Text))+'"')
else
DM.IBDataSetSchedule.SelectSQL.Add('WHERE SCHEDULE.DAYUSE > 120' +WHERESLC1 );
DM.IBDataSetSchedule.SelectSQL.Add('ORDER BY SCHED_NO');
DM.IBDataSetSchedule.Open;

end;

procedure TMenu.Button12Click(Sender: TObject);
begin
DM.IBDataSetSchedule.Close;
DM.IBDataSetSchedule.SelectSQL.Clear;
DM.IBDataSetSchedule.SelectSQL.Add('SELECT COGNRAGSOC, NOME, INDIRIZZO, N_DOC, SCHEDULE.*');
DM.IBDataSetSchedule.SelectSQL.Add('FROM SCHEDULE JOIN CLIENTI ON CLIENTI.CLI_NO = SCHEDULE.CLI_NO');
if not (combobox17.Text='') then
DM.IBDataSetSchedule.SelectSQL.Add('WHERE DATAINTRO BETWEEN "'+DecForSqlDate(strtodate(edit58.Text))+'" AND "'+DecForSqlDate(strtodate(edit59.Text))+'"');
DM.IBDataSetSchedule.SelectSQL.Add('ORDER BY SCHED_NO');
DM.IBDataSetSchedule.Open;

end;

procedure TMenu.DBImage3DblClick(Sender: TObject);
Var SpicFileName:String;
    JP: TJPegImage;
    C:  TClipboard;
begin
 if OpenPictureDialog1.Execute then
  begin
   JP:=TJPegImage.create;
   C:=TClipboard.create;
   SpicFilename:=OpenPictureDialog1.FileName;
    try
     JP.LoadFromFile(SpicFileName);
     C.assign(JP);
     DBImage3.PasteFromClipboard;
    finally
     JP.free;
     C.free;
    end;
  end;
end;

procedure TMenu.BTNMOD8Click(Sender: TObject);
begin
dm.IBDataSetParam.Edit;
end;

procedure TMenu.BTNSALVA8Click(Sender: TObject);
begin
dm.IBDataSetParam.Post;
end;

procedure TMenu.BTNANNULLA8Click(Sender: TObject);
begin
dm.IBDataSetParam.Cancel;
end;

procedure TMenu.BitBtn6Click(Sender: TObject);
var datein,dateout:Tdatetime;
begin
if trystrtodate(maskedit1.Text,datein) and trystrtodate(maskedit2.Text,dateout) then
//if (maskedit1.Text<>'') AND (maskedit2.Text<>'') then
begin
DM.IBDataSetSchedule.Close;
DM.IBDataSetSchedule.SelectSQL.Clear;
DM.IBDataSetSchedule.SelectSQL.Add('SELECT COGNRAGSOC, NOME, INDIRIZZO, N_DOC, SCHEDULE.*');
DM.IBDataSetSchedule.SelectSQL.Add('FROM SCHEDULE JOIN CLIENTI ON CLIENTI.CLI_NO = SCHEDULE.CLI_NO');
DM.IBDataSetSchedule.SelectSQL.Add('WHERE SCHEDULE.DATAINTRO BETWEEN "'+ DecForSqlDate(strtodate(maskedit1.Text)) +'" AND "'+ DecForSqlDate(strtodate(maskedit2.Text)) +'"');
DM.IBDataSetSchedule.SelectSQL.Add('ORDER BY SCHED_NO');
DM.IBDataSetSchedule.Open;
CalcParameter;
ViewChart1;
ViewChart2;
end
else
begin
maskedit1.Text:=firstdataintrosched;
maskedit2.Text:=datetostr(today);
DM.IBDataSetSchedule.Close;
DM.IBDataSetSchedule.SelectSQL.Clear;
DM.IBDataSetSchedule.SelectSQL.Add('SELECT COGNRAGSOC, NOME, INDIRIZZO, N_DOC, SCHEDULE.*');
DM.IBDataSetSchedule.SelectSQL.Add('FROM SCHEDULE JOIN CLIENTI ON CLIENTI.CLI_NO = SCHEDULE.CLI_NO');
DM.IBDataSetSchedule.SelectSQL.Add('WHERE SCHEDULE.DATAINTRO BETWEEN "'+ DecForSqlDate(strtodate(maskedit1.Text)) +'" AND "'+ DecForSqlDate(strtodate(maskedit2.Text)) +'"');
DM.IBDataSetSchedule.SelectSQL.Add('ORDER BY SCHED_NO');
DM.IBDataSetSchedule.Open;
CalcParameter;
ViewChart1;
ViewChart2;
end;
end;

function TMenu.FirstDataIntroSched:string;
begin
  DM.IBQueryTemp.SQL.Clear;
  DM.IBQueryTemp.SQL.Add('SELECT MIN(DATAINTRO)');
  DM.IBQueryTemp.SQL.Add('FROM SCHEDULE');
  DM.IBQueryTemp.Open;
  If not dm.IBQueryTemp.IsEmpty Then
  result:=DM.IBQueryTemp.Fields.Fields[0].AsString
  else
  result:='01/01/2000';
end;

function TMenu.FirstDataExpireArt:string;
begin
  DM.IBQueryTemp.close;
  DM.IBQueryTemp.SQL.Clear;
  DM.IBQueryTemp.SQL.Add('SELECT MIN(EXPIREDATE)');
  DM.IBQueryTemp.SQL.Add('FROM ARTICOLO');
  DM.IBQueryTemp.Open;
 If not dm.IBQueryTemp.Fields.Fields[0].IsNull Then
  result:=DM.IBQueryTemp.Fields.Fields[0].AsString
  else
  result:='01/01/1999';
end;



procedure TMenu.SpeedButton1Click(Sender: TObject);
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

function TMenu.DecForSqlDate(Data:TDate):string;
var gg,aaaa,mmmok:string;
mmm:integer;
begin
gg:=inttostr(dayof(Data));
mmm:=monthof(Data);
aaaa:=inttostr(yearof(data));
case mmm of
  1: mmmok:= 'JAN';
  2: mmmok:= 'FEB';
  3: mmmok:= 'MAR';
  4: mmmok:= 'APR';
  5: mmmok:= 'MAY';
  6: mmmok:= 'JUN';
  7: mmmok:= 'JUL';
  8: mmmok:= 'AUG';
  9: mmmok:= 'SEP';
  10: mmmok:= 'OCT';
  11: mmmok:= 'NOV';
  12: mmmok:= 'DEC';
end;
Result:=gg+'-'+mmmok+'-'+aaaa;
end;

procedure TMenu.Button14Click(Sender: TObject);
begin
maskedit1.Text:=datetostr(today);
maskedit2.Text:=datetostr(today);
Bitbtn6.Click;
CalcParameter;
ViewChart1;
ViewChart2;
end;

procedure TMenu.BitBtn7Click(Sender: TObject);
begin
maskedit1.Text:=firstdataintrosched;
maskedit2.Text:=datetostr(today);
Bitbtn6.Click;
ViewChart1;
ViewChart2;
end;

procedure TMenu.Button15Click(Sender: TObject);
begin
maskedit1.Text:='01/'+RightStr('00' + inttostr(monthof(today)), 2)+'/'+inttostr(yearof(today));
maskedit2.Text:=inttostr(daysinamonth(yearof(today),monthof(today)))+'/'+RightStr('00' + inttostr(monthof(today)), 2)+'/'+inttostr(yearof(today));
Bitbtn6.Click;
CalcParameter;
ViewChart1;
ViewChart2;
end;

procedure TMenu.Button16Click(Sender: TObject);
begin
maskedit1.Text:='01/01/'+inttostr(yearof(today));
maskedit2.Text:='31/12/'+inttostr(yearof(today));
Bitbtn6.Click;
CalcParameter;
ViewChart1;
ViewChart2;
end;

Procedure TMenu.CalcTotSch;
begin
  DM.IBQueryTemp.Close;
  DM.IBQueryTemp.SQL.Clear;
  DM.IBQueryTemp.SQL.Add('SELECT COUNT(*), SUM(NETPRICE)');
  DM.IBQueryTemp.SQL.Add('FROM SCHEDULE');
  DM.IBQueryTemp.SQL.Add('WHERE SCHEDULE.DATAINTRO BETWEEN "'+ DecForSqlDate(strtodate(maskedit1.Text)) +'" AND "'+ DecForSqlDate(strtodate(maskedit2.Text)) +'"');
  DM.IBQueryTemp.Open;
  if DM.IBQueryTemp.IsEmpty then
  begin
  TOTSCH:=0;
  TOTVAL:=0;
  end
  else
  begin
  TOTSCH:=DM.IBQueryTemp.Fields.Fields[0].asinteger;
  TOTVAL:=DM.IBQueryTemp.Fields.Fields[1].ascurrency;
  end;
end;

Procedure TMenu.CalcApeSch;
begin
  DM.IBQueryTemp.Close;
  DM.IBQueryTemp.SQL.Clear;
  DM.IBQueryTemp.SQL.Add('SELECT COUNT(*), SUM(NETPRICE)');
  DM.IBQueryTemp.SQL.Add('FROM SCHEDULE');
  DM.IBQueryTemp.SQL.Add('WHERE (STATO="APERTA") AND SCHEDULE.DATAINTRO BETWEEN "'+ DecForSqlDate(strtodate(maskedit1.Text)) +'" AND "'+ DecForSqlDate(strtodate(maskedit2.Text)) +'"');
  DM.IBQueryTemp.Open;
  if DM.IBQueryTemp.IsEmpty then
  begin
  APESCH:=0;
  APEVAL:=0;
  end
  else
  begin
  APESCH:=DM.IBQueryTemp.Fields.Fields[0].asinteger;
  APEVAL:=DM.IBQueryTemp.Fields.Fields[1].ascurrency;
  end;
end;

Procedure TMenu.CalcChiSch;
begin
  DM.IBQueryTemp.Close;
  DM.IBQueryTemp.SQL.Clear;
  DM.IBQueryTemp.SQL.Add('SELECT COUNT(*), SUM(NETPRICE)');
  DM.IBQueryTemp.SQL.Add('FROM SCHEDULE');
  DM.IBQueryTemp.SQL.Add('WHERE (STATO="CHIUSA") AND SCHEDULE.DATAINTRO BETWEEN "'+ DecForSqlDate(strtodate(maskedit1.Text)) +'" AND "'+ DecForSqlDate(strtodate(maskedit2.Text)) +'"');
  DM.IBQueryTemp.Open;
  if DM.IBQueryTemp.IsEmpty then
  begin
  CHISCH:=0;
  CHIVAL:=0;
  end
  else
  begin
  CHISCH:=DM.IBQueryTemp.Fields.Fields[0].asinteger;
  CHIVAL:=DM.IBQueryTemp.Fields.Fields[1].ascurrency;
  end;
end;

Procedure TMenu.CalcParSch;
begin
  DM.IBQueryTemp.Close;
  DM.IBQueryTemp.SQL.Clear;
  DM.IBQueryTemp.SQL.Add('SELECT COUNT(*), SUM(NETPRICE)');
  DM.IBQueryTemp.SQL.Add('FROM SCHEDULE');
  DM.IBQueryTemp.SQL.Add('WHERE (STATO="PARZIALE") AND SCHEDULE.DATAINTRO BETWEEN "'+ DecForSqlDate(strtodate(maskedit1.Text)) +'" AND "'+ DecForSqlDate(strtodate(maskedit2.Text)) +'"');
  DM.IBQueryTemp.Open;
  if DM.IBQueryTemp.IsEmpty then
  begin
  PARSCH:=0;
  PARVAL:=0;
  end
  else
  begin
  PARSCH:=DM.IBQueryTemp.Fields.Fields[0].asinteger;
  PARVAL:=DM.IBQueryTemp.Fields.Fields[1].ascurrency;
  end;
end;

Procedure TMenu.CalcStaSch;
begin
  DM.IBQueryTemp.Close;
  DM.IBQueryTemp.SQL.Clear;
  DM.IBQueryTemp.SQL.Add('SELECT COUNT(*), SUM(NETPRICE)');
  DM.IBQueryTemp.SQL.Add('FROM SCHEDULE');
  DM.IBQueryTemp.SQL.Add('WHERE (DAYUSE>120) AND SCHEDULE.DATAINTRO BETWEEN "'+ DecForSqlDate(strtodate(maskedit1.Text)) +'" AND "'+ DecForSqlDate(strtodate(maskedit2.Text)) +'"');
  DM.IBQueryTemp.Open;
  if DM.IBQueryTemp.IsEmpty then
  begin
  STASCH:=0;
  STAVAL:=0;
  end
  else
  begin
  STASCH:=DM.IBQueryTemp.Fields.Fields[0].asinteger;
  STAVAL:=DM.IBQueryTemp.Fields.Fields[1].ascurrency;
  end;
end;

Procedure TMenu.CalcStaApeSch;
begin
  DM.IBQueryTemp.Close;
  DM.IBQueryTemp.SQL.Clear;
  DM.IBQueryTemp.SQL.Add('SELECT COUNT(*), SUM(NETPRICE)');
  DM.IBQueryTemp.SQL.Add('FROM SCHEDULE');
  DM.IBQueryTemp.SQL.Add('WHERE (DAYUSE>120) AND (STATO="APERTA") AND SCHEDULE.DATAINTRO BETWEEN "'+ DecForSqlDate(strtodate(maskedit1.Text)) +'" AND "'+ DecForSqlDate(strtodate(maskedit2.Text)) +'"');
  DM.IBQueryTemp.Open;
  if DM.IBQueryTemp.IsEmpty then
  begin
  STAAPESCH:=0;
  STAAPEVAL:=0;
  end
  else
  begin
  STAAPESCH:=DM.IBQueryTemp.Fields.Fields[0].asinteger;
  STAAPEVAL:=DM.IBQueryTemp.Fields.Fields[1].ascurrency;
  end;
end;

Procedure TMenu.CalcStaChiSch;
begin
  DM.IBQueryTemp.Close;
  DM.IBQueryTemp.SQL.Clear;
  DM.IBQueryTemp.SQL.Add('SELECT COUNT(*), SUM(NETPRICE)');
  DM.IBQueryTemp.SQL.Add('FROM SCHEDULE');
  DM.IBQueryTemp.SQL.Add('WHERE (DAYUSE>120) AND (STATO="CHIUSA") AND SCHEDULE.DATAINTRO BETWEEN "'+ DecForSqlDate(strtodate(maskedit1.Text)) +'" AND "'+ DecForSqlDate(strtodate(maskedit2.Text)) +'"');
  DM.IBQueryTemp.Open;
  if DM.IBQueryTemp.IsEmpty then
  begin
  STACHISCH:=0;
  STACHIVAL:=0;
  end
  else
  begin
  STACHISCH:=DM.IBQueryTemp.Fields.Fields[0].asinteger;
  STACHIVAL:=DM.IBQueryTemp.Fields.Fields[1].ascurrency;
  end;
end;

Procedure TMenu.CalcStaParSch;
begin
  DM.IBQueryTemp.Close;
  DM.IBQueryTemp.SQL.Clear;
  DM.IBQueryTemp.SQL.Add('SELECT COUNT(*), SUM(NETPRICE)');
  DM.IBQueryTemp.SQL.Add('FROM SCHEDULE');
  DM.IBQueryTemp.SQL.Add('WHERE (DAYUSE>120) AND (STATO="PARZIALE") AND SCHEDULE.DATAINTRO BETWEEN "'+ DecForSqlDate(strtodate(maskedit1.Text)) +'" AND "'+ DecForSqlDate(strtodate(maskedit2.Text)) +'"');
  DM.IBQueryTemp.Open;
  if DM.IBQueryTemp.IsEmpty then
  begin
  STAPARSCH:=0;
  STAPARVAL:=0;
  end
  else
  begin
  STAPARSCH:=DM.IBQueryTemp.Fields.Fields[0].asinteger;
  STAPARVAL:=DM.IBQueryTemp.Fields.Fields[1].ascurrency;
  end;
end;

Procedure TMenu.CalcParameter;
begin
CalcTotSch;
CalcStaSch;
CalcParSch;
CalcChiSch;
CalcApeSch;
CalcStaApeSch;
CalcStaChiSch;
CalcStaParSch;
If TOTSCH>0 then
begin
 APESCHP:=APESCH/TOTSCH*100;
 CHISCHP:=CHISCH/TOTSCH*100;
 PARSCHP:=PARSCH/TOTSCH*100;
 STASCHP:=STASCH/TOTSCH*100;
  If STASCH>0 then
  begin
   STAAPESCHP:=STAAPESCH/STASCH*100;
   STACHISCHP:=STACHISCH/STASCH*100;
   STAPARSCHP:=STAPARSCH/STASCH*100;
  end
  else
  begin
   STAAPESCHP:=0;
   STACHISCHP:=0;
   STAPARSCHP:=0;
  end;
  end
else
begin
 APESCHP:=0;
 CHISCHP:=0;
 PARSCHP:=0;
 STASCHP:=0;
 STAAPESCHP:=0;
 STACHISCHP:=0;
 STAPARSCHP:=0;
end;
edit10.Text:=inttostr(TOTSCH);
edit19.Text:=currtostr(TOTVAL);
edit11.Text:=inttostr(APESCH);
edit20.Text:=currtostr(APEVAL);
edit13.Text:=inttostr(CHISCH);
edit21.Text:=currtostr(CHIVAL);
edit17.Text:=inttostr(PARSCH);
edit22.Text:=currtostr(PARVAL);
edit18.Text:=inttostr(STASCH);
edit23.Text:=currtostr(STAVAL);
edit27.Text:=inttostr(STAAPESCH);
edit29.Text:=currtostr(STAAPEVAL);
edit28.Text:=inttostr(STACHISCH);
edit30.Text:=currtostr(STACHIVAL);
edit26.Text:=currtostr(TOTVAL);
edit38.Text:=inttostr(STAPARSCH);
edit40.Text:=currtostr(STAPARVAL);
edit34.Text:='100';
edit31.Text:=floattostr(APESCHP);
edit32.Text:=floattostr(CHISCHP);
edit33.Text:=floattostr(PARSCHP);
edit35.Text:=floattostr(STASCHP);
edit36.Text:=floattostr(STAAPESCHP);
edit37.Text:=floattostr(STACHISCHP);
edit39.Text:=floattostr(STAPARSCHP);
end;

procedure TMenu.ViewChart1;
begin
With series1 do
begin
clear;
add(APESCHP,'% APERTE',clRed);
add(PARSCHP,'% PARZIALI',$000080FF);
add(CHISCHP,'% CHIUSE',clLime);
add(STASCHP,'% STAGIONALI',clFuchsia);
end;
end;

procedure TMenu.ViewChart2;
begin
With series2 do
begin
clear;
add(STAAPESCHP,'% APERTE',clyellow);
add(STAPARSCHP,'% PARZIALI',clFuchsia);
add(STACHISCHP,'% CHIUSE',clBlue);
end;
end;

procedure TMenu.ViewChart3;
Var recno,i,TOTVEND:integer;
    VALPER:real;
begin
if (edit41.Text='') OR (edit42.Text='') then
begin
Edit41.Text:=firstdataexpireart;
Edit42.Text:=datetostr(today);
end;
 series3.clear;
  DM.IBQueryTemp.Close;
  DM.IBQueryTemp.SQL.Clear;
  DM.IBQueryTemp.SQL.Add('SELECT COUNT(*)');
  DM.IBQueryTemp.SQL.Add('FROM ARTICOLO');
  DM.IBQueryTemp.SQL.Add('WHERE ARTICOLO.EXPIREDATE IS NOT NULL');
  DM.IBQueryTemp.Open;
  If not Dm.IBQueryTemp.Fields.Fields[0].IsNull then
   TOTVEND:=Dm.IBQueryTemp.Fields.Fields[0].AsInteger
  else
   TOTVEND:=0;

DM.IBQueryZFact.Close;
DM.IBQueryZFact.SQL.Clear;
DM.IBQueryZFact.SQL.Add('SELECT * FROM TIPO_ARTICOLI');
DM.IBQueryZFact.Open;
dM.IBQueryZFact.Last;
recno:=dM.IBQueryZFact.RecNo;
if not DM.IBQueryZFact.IsEmpty then
DM.IBQueryZFact.First;
 for i:=1 to recno do
 begin
  DM.IBQueryTemp.Close;
  DM.IBQueryTemp.SQL.Clear;
  DM.IBQueryTemp.SQL.Add('SELECT COUNT(*)');
  DM.IBQueryTemp.SQL.Add('FROM ARTICOLO');
  DM.IBQueryTemp.SQL.Add('WHERE (TIPO ="'+Combobox3.Text+'") AND (EXPIREDATE IS NOT NULL) AND ARTICOLO.EXPIREDATE BETWEEN "'+ DecForSqlDate(strtodate(edit41.Text)) +'" AND "'+ DecForSqlDate(strtodate(edit42.Text)) +'"');
  DM.IBQueryTemp.Open;
   if (not DM.IBQueryTemp.IsEmpty) and (TOTVEND>0) then
    VALPER:=DM.ibqueryTemp.fields.fields[0].asinteger/TOTVEND
   else
    VALPER:=0;
  Series3.add(VALPER,Copy(DM.IBQueryZFact.Fields.Fields[0].AsString,0,10),clTeeColor);
  DM.IBQueryZFact.Next;
  end;
//  DM.IBTableTipo.EnableControls;
//  if dM.IBTransaction3.InTransaction then
// begin
//  DM.IBTransaction3.Commit;
//  dM.IBTableTipo.Refresh;
// end;
  end;



procedure TMenu.TabSheet9Show(Sender: TObject);
begin
maskedit1.Text:=firstdataintrosched;
maskedit2.Text:=datetostr(today);
Bitbtn6.Click;
ViewChart1;
ViewChart2;
end;


procedure TMenu.Esci1Click(Sender: TObject);
begin
nolo.Menu.Close;
end;

procedure TMenu.ComboBox3Enter(Sender: TObject);
var recno,i:integer;
begin
ComboBox3.Items.Clear;
DM.IBQueryTemp.Close;
DM.IBQueryTemp.SQL.Clear;
DM.IBQueryTemp.SQL.Add('SELECT * FROM TIPO_ARTICOLI');
DM.IBQueryTemp.Open;
dM.IBQueryTemp.Last;
recno:=dM.IBQueryTemp.RecNo;
if not DM.IBQueryTemp.IsEmpty then
begin
 DM.IBQueryTemp.First;
  for i:=1 to recno do
   begin
   ComboBox3.Items.Add(DM.IBQueryTemp.Fields.Fields[0].asstring);
   DM.IBQueryTemp.Next;
   end;
  end;
end;

procedure TMenu.SpeedButton5Click(Sender: TObject);
begin
BrDateForm.date:=date;
if BrDateForm.Showmodal= mrOk then
    EDIT41.Text:=datetostr(BrDateForm.Date);

end;

procedure TMenu.SpeedButton7Click(Sender: TObject);
begin
BrDateForm.date:=date;
if BrDateForm.Showmodal= mrOk then
    EDIT42.Text:=datetostr(BrDateForm.Date);

end;

procedure TMenu.BitBtn8Click(Sender: TObject);
begin
if (edit41.Text<>'') AND (edit42.Text<>'') then
begin
DM.IBDataSetArticolo.Close;
DM.IBDataSetArticolo.SelectSQL.Clear;
DM.IBDataSetArticolo.SelectSQL.Add('SELECT *');
DM.IBDataSetArticolo.SelectSQL.Add('FROM ARTICOLO');
DM.IBDataSetArticolo.SelectSQL.Add('WHERE (EXPIREDATE IS NOT NULL) AND ARTICOLO.EXPIREDATE BETWEEN "'+ DecForSqlDate(strtodate(edit41.Text)) +'" AND "'+ DecForSqlDate(strtodate(edit42.Text)) +'"');
DM.IBDataSetArticolo.SelectSQL.Add('ORDER BY ART_NO');
DM.IBDataSetArticolo.Open;
viewchart3;
end
else
begin
edit41.Text:=firstdataexpireart;
edit42.Text:=datetostr(today);
DM.IBDataSetArticolo.Close;
DM.IBDataSetArticolo.SelectSQL.Clear;
DM.IBDataSetArticolo.SelectSQL.Add('SELECT *');
DM.IBDataSetArticolo.SelectSQL.Add('FROM ARTICOLO');
DM.IBDataSetArticolo.SelectSQL.Add('WHERE (EXPIREDATE IS NOT NULL) AND ARTICOLO.INTRODATE BETWEEN "'+ DecForSqlDate(strtodate(edit41.Text)) +'" AND "'+ DecForSqlDate(strtodate(edit42.Text)) +'"');
DM.IBDataSetArticolo.SelectSQL.Add('ORDER BY ART_NO');
DM.IBDataSetArticolo.Open;
viewchart3;
end;

end;

procedure TMenu.ComboBox3Select(Sender: TObject);
begin
DM.IBDataSetArticolo.Close;
DM.IBDataSetArticolo.SelectSQL.Clear;
DM.IBDataSetArticolo.SelectSQL.Add('SELECT *');
DM.IBDataSetArticolo.SelectSQL.Add('FROM ARTICOLO');
DM.IBDataSetArticolo.SelectSQL.Add('WHERE (EXPIREDATE IS NOT NULL) AND (TIPO ="'+Combobox3.Text+'")');
DM.IBDataSetArticolo.SelectSQL.Add('ORDER BY ART_NO');
DM.IBDataSetArticolo.Open;
viewchart3;
end;

procedure TMenu.BitBtn9Click(Sender: TObject);
begin
if (edit41.Text<>'') AND (edit42.Text<>'') then
begin
DM.IBDataSetArticolo.Close;
DM.IBDataSetArticolo.SelectSQL.Clear;
DM.IBDataSetArticolo.SelectSQL.Add('SELECT *');
DM.IBDataSetArticolo.SelectSQL.Add('FROM ARTICOLO');
DM.IBDataSetArticolo.SelectSQL.Add('WHERE (TIPO="'+Combobox3.Text +'") AND (EXPIREDATE IS NOT NULL) AND ARTICOLO.INTRODATE BETWEEN "'+ DecForSqlDate(strtodate(edit41.Text)) +'" AND "'+ DecForSqlDate(strtodate(edit42.Text)) +'"');
DM.IBDataSetArticolo.SelectSQL.Add('ORDER BY ART_NO');
DM.IBDataSetArticolo.Open;
viewchart3;
end
else
begin
edit41.Text:=firstdataexpireart;
edit42.Text:=datetostr(today);
DM.IBDataSetArticolo.Close;
DM.IBDataSetArticolo.SelectSQL.Clear;
DM.IBDataSetArticolo.SelectSQL.Add('SELECT *');
DM.IBDataSetArticolo.SelectSQL.Add('FROM ARTICOLO');
DM.IBDataSetArticolo.SelectSQL.Add('WHERE (EXPIREDATE IS NOT NULL) AND ARTICOLO.INTRODATE BETWEEN "'+ DecForSqlDate(strtodate(edit41.Text)) +'" AND "'+ DecForSqlDate(strtodate(edit42.Text)) +'"');
DM.IBDataSetArticolo.SelectSQL.Add('ORDER BY ART_NO');
DM.IBDataSetArticolo.Open;
viewchart3;
end;

end;

procedure TMenu.BitBtn10Click(Sender: TObject);
begin
ReportOp.QuickRep1.Preview;
end;

procedure TMenu.CheckBox1Click(Sender: TObject);
begin
if checkbox1.Checked = true then
begin
Combobox4.Enabled:=false;
Combobox5.Enabled:=false;
end
else
begin
Combobox4.Enabled:=true;
Combobox5.Enabled:=true;
end

end;

procedure TMenu.ComboBox4Enter(Sender: TObject);
begin
  DBGrid13.DataSource:=nil;
  DBGrid9.DataSource:=nil;
  DM.IBQueryTemp.Close;
  DM.IBQueryTemp.SQL.Clear;
  DM.IBQueryTemp.SQL.Add('SELECT CLI_NO');
  DM.IBQueryTemp.SQL.Add('FROM CLIENTI ORDER BY CLI_NO');
  DM.IBQueryTemp.Open;
  DM.IBQueryTemp.First;
  Combobox4.Clear;
  while not DM.IBQueryTemp.Eof do
  begin
  Combobox4.Items.Add(DM.IBQueryTemp.Fields.Fields[0].AsString);
  DM.IBQueryTemp.Next;
  end;
    DM.IBQueryTemp.Close;
    DBGrid13.DataSource:=DM.DSQueryTemp;
    DBGrid9.DataSource:=DM.DSQueryTemp;
 end;

procedure TMenu.ComboBox5Enter(Sender: TObject);
var valore:string;
begin
    DBGrid13.DataSource:=nil;
    DBGrid9.DataSource:=nil;
if Combobox4.Text='' then
valore:='0'
else
valore:=inttostr(strtoint(combobox4.Text)-1);
DM.IBQueryTemp.Close;
  DM.IBQueryTemp.SQL.Clear;
  DM.IBQueryTemp.SQL.Add('SELECT CLI_NO');
  DM.IBQueryTemp.SQL.Add('FROM CLIENTI');
  DM.IBQueryTemp.SQL.Add('WHERE CLI_NO >"'+valore+'" ORDER BY CLI_NO');
  DM.IBQueryTemp.Open;
  DM.IBQueryTemp.First;
  Combobox5.Clear;
  while not DM.IBQueryTemp.Eof do
  begin
  Combobox5.Items.Add(DM.IBQueryTemp.Fields.Fields[0].AsString);
  DM.IBQueryTemp.Next;
  end;
DM.IBQueryTemp.Close;
    DBGrid13.DataSource:=DM.DSQueryTemp;
    DBGrid9.DataSource:=DM.DSQueryTemp;

    end;

procedure TMenu.TabSheet10Show(Sender: TObject);
begin
edit41.Text:=firstdataexpireart;
edit42.Text:=datetostr(today);
DM.IBDataSetArticolo.Close;
DM.IBDataSetArticolo.SelectSQL.Clear;
DM.IBDataSetArticolo.SelectSQL.Add('SELECT *');
DM.IBDataSetArticolo.SelectSQL.Add('FROM ARTICOLO');
DM.IBDataSetArticolo.SelectSQL.Add('WHERE (EXPIREDATE IS NOT NULL) AND ARTICOLO.INTRODATE BETWEEN "'+ DecForSqlDate(strtodate(edit41.Text)) +'" AND "'+ DecForSqlDate(strtodate(edit42.Text)) +'"');
DM.IBDataSetArticolo.SelectSQL.Add('ORDER BY ART_NO');
DM.IBDataSetArticolo.Open;
viewchart3;
end;

procedure TMenu.BitBtn12Click(Sender: TObject);
begin
if checkbox1.Checked=true then
begin
DM.IBDataSetClienti.Close;
DM.IBDataSetClienti.SelectSQL.Clear;
DM.IBDataSetClienti.SelectSQL.Add('SELECT *');
DM.IBDataSetClienti.SelectSQL.Add('FROM CLIENTI');
DM.IBDataSetClienti.SelectSQL.Add('WHERE STATOTESSERA = "RICHIESTA"');
DM.IBDataSetClienti.SelectSQL.Add('ORDER BY CLI_NO');
DM.IBDataSetClienti.Open;
RepTesCli.QuickRep1.Preview;
end
else
begin
if (combobox4.Text<>'') and (combobox5.Text<>'') then
begin
DM.IBDataSetClienti.Close;
DM.IBDataSetClienti.SelectSQL.Clear;
DM.IBDataSetClienti.SelectSQL.Add('SELECT *');
DM.IBDataSetClienti.SelectSQL.Add('FROM CLIENTI');
DM.IBDataSetClienti.SelectSQL.Add('WHERE CLI_NO BETWEEN "'+cOMBOBOX4.Text+'" AND "'+COMBOBOX5.Text+'"');
DM.IBDataSetClienti.SelectSQL.Add('ORDER BY CLI_NO');
DM.IBDataSetClienti.Open;
RepTesCli.QuickRep1.Preview;
end
else
MessageDlg('I DUE CAMPI "DA" "A" DEVONO AVERE UN VALORE VALIDO', mtInformation,[mbOk], 0);
end

end;

procedure TMenu.DBEdit22Exit(Sender: TObject);
begin

{if (DM.IBDataSetArticoloINCVENDITA.OldValue = 0 ) and (DM.IBDataSetArticoloINCVENDITA.NewValue > 0 ) then
begin
DM.IBDataSetArticolo.DisableControls;
DM.IBDataSetArticoloAVAILABLE.AsString:='VENDUTO';
DBRadiogroup2.ItemIndex:=4;
DM.IBDataSetArticoloEXPIREDATE.AsDateTime:=now;
DM.IBDataSetArticoloRIPDATA.Clear;
DM.IBDataSetArticolo.EnableControls;
end;
if (DM.IBDataSetArticoloINCVENDITA.OldValue > 0 ) and (DM.IBDataSetArticoloINCVENDITA.NewValue = 0 ) then
Begin
DM.IBDataSetArticoloAVAILABLE.AsString:='DISPONIBILE';
DM.IBDataSetArticoloRIPDATA.Clear;
DM.IBDataSetArticoloEXPIREDATE.Clear;
end;}

end;

procedure TMenu.DBRadioGroup2Change(Sender: TObject);
begin
{if (DM.IBDataSetArticoloAVAILABLE.OldValue <> 'RIPARAZIONE') and (DM.IBDataSetArticoloAVAILABLE.NewValue = 'RIPARAZIONE') then
begin
DM.IBDataSetArticoloRIPARAZIONI.Value:=DM.IBDataSetArticoloRIPARAZIONI.AsInteger+1;
DM.IBDataSetArticoloRIPDATA.AsDateTime:=now;
end;
if (DM.IBDataSetArticoloAVAILABLE.OldValue = 'RIPARAZIONE') and (DM.IBDataSetArticoloAVAILABLE.NewValue = 'DISPONIBILE') then
DM.IBDataSetArticoloRIPDATA.Clear;
if (DM.IBDataSetArticoloAVAILABLE.OldValue = 'NOLEGGIATO') and (DM.IBDataSetArticoloAVAILABLE.NewValue = 'DISPONIBILE') Then
SetRentedStato(DM.IBDataSetArticoloART_NO.AsInteger,DM.IBDataSetScheduleSCHED_NO.AsInteger, 'RESO');
if (DM.IBDataSetArticoloAVAILABLE.NewValue = 'VENDUTO') and (DM.IBDataSetArticoloINCVENDITA.newValue = 0) Then
DBEdit22.SetFocus;
 }
end;

procedure TMenu.Edit44Click(Sender: TObject);
begin
BrDateForm.date:=date;
if BrDateForm.Showmodal= mrOk then
    EDIT44.Text:=datetostr(BrDateForm.Date);

end;

procedure TMenu.Edit45Click(Sender: TObject);
begin
BrDateForm.date:=date;
if BrDateForm.Showmodal= mrOk then
        EDIT45.Text:=datetostr(BrDateForm.Date);

end;

procedure TMenu.BitBtn13Click(Sender: TObject);
var whereslc,orderby:string;
begin
if combobox6.Text='DISPONIBILI' then
  whereslc:='(AVAILABLE = "DISPONIBILE")';
if combobox6.Text='VENDUTI' then
  whereslc:='(AVAILABLE = "VENDUTO")';
if combobox6.Text='NOLEGGIATI' then
  whereslc:='(AVAILABLE = "NOLEGGIATO")';
if combobox6.Text='RIPARAZIONE' then
  whereslc:='(AVAILABLE = "RIPARAZIONE")';
if combobox6.Text='PRENOTATI' then
  whereslc:='(AVAILABLE = "PRENOTATO")';
if combobox6.Text='DISMESSI' then
  whereslc:='(AVAILABLE = "DISMESSO")';

if combobox7.Text='ID' then
orderby:='ORDER BY ART_NO';
if combobox7.Text='TIPO' then
orderby:='ORDER BY TIPO';
if combobox7.Text='MARCA' then
orderby:='ORDER BY BRAND';
if combobox7.Text='MISURA' then
orderby:='ORDER BY MISURA';
if combobox7.Text='STAGIONE' then
orderby:='ORDER BY STAGIONE';
if combobox7.Text='DATA INTRO' then
orderby:='ORDER BY INTRODATE';
if combobox6.Text<>'' then
begin
  if (edit44.Text<>'') AND (edit45.Text<>'') then
 begin
  DM.IBDataSetArticolo.Close;
  DM.IBDataSetArticolo.SelectSQL.Clear;
  DM.IBDataSetArticolo.SelectSQL.Add('SELECT *');
  DM.IBDataSetArticolo.SelectSQL.Add('FROM ARTICOLO');
   if combobox6.Text='TUTTI' then
    DM.IBDataSetArticolo.SelectSQL.Add('WHERE INTRODATE BETWEEN "'+ DecForSqlDate(strtodate(edit44.Text)) +'" AND "'+ DecForSqlDate(strtodate(edit45.Text)) +'"')
   else
    DM.IBDataSetArticolo.SelectSQL.Add('WHERE '+WHERESLC+' AND INTRODATE BETWEEN "'+ DecForSqlDate(strtodate(edit44.Text)) +'" AND "'+ DecForSqlDate(strtodate(edit45.Text)) +'"');
  if combobox7.Text<>'' then
  DM.IBDataSetArticolo.SelectSQL.Add(OrderBy);
  DM.IBDataSetArticolo.Open;
  DM.IBQueryTemp.Close;
  DM.IBQueryTemp.SQL.Clear;
  DM.IBQueryTemp.SQL.Add('SELECT count(*),sum(incnolo)');
//  DM.IBQueryTemp.SQL.Add('SELECT count(*)');
    DM.IBQueryTemp.SQL.Add('FROM ARTICOLO');
   if combobox6.Text='TUTTI' then
    DM.IBQueryTemp.SQL.Add('WHERE INTRODATE BETWEEN "'+ DecForSqlDate(strtodate(edit44.Text)) +'" AND "'+ DecForSqlDate(strtodate(edit45.Text)) +'"')
  else
    DM.IBQueryTemp.SQL.Add('WHERE '+WHERESLC+' AND INTRODATE BETWEEN "'+ DecForSqlDate(strtodate(edit44.Text)) +'" AND "'+ DecForSqlDate(strtodate(edit45.Text)) +'"');
  if combobox7.Text<>'' then
//  DM.IBQueryTemp.SQL.Add(OrderBy);
  DM.IBQueryTemp.Open;

   RepArt.QRLabel10.Caption:=DM.IBQueryTemp.Fields.Fields[0].AsString;
   RepArt.QRLabel22.Caption:=DM.IBQueryTemp.Fields.Fields[1].AsString;
  RepArt.QRLabel4.Caption:=EDIT44.Text;
  RepArt.QRLabel5.Caption:=EDIT45.Text;
  RepArt.QRLabel8.Caption:=Combobox7.Text;
  RepArt.QRLabel1.Caption:='REPORT ARTICOLI '+Combobox6.Text;
  RepArt.QuickRep1.Preview;
 end
  else
 begin
  DM.IBDataSetArticolo.Close;
   DM.IBDataSetArticolo.SelectSQL.Clear;
   DM.IBDataSetArticolo.SelectSQL.Add('SELECT *');
   DM.IBDataSetArticolo.SelectSQL.Add('FROM ARTICOLO');
     if combobox6.Text<>'TUTTI' then
      DM.IBDataSetArticolo.SelectSQL.Add('WHERE '+WHERESLC);
  if combobox7.Text<>'' then
    DM.IBDataSetArticolo.SelectSQL.Add(OrderBy);
   DM.IBDataSetArticolo.Open;

    DM.IBQueryTemp.Close;
  DM.IBQueryTemp.SQL.Clear;
  DM.IBQueryTemp.SQL.Add('SELECT count(*),sum(incnolo)');
  DM.IBQueryTemp.SQL.Add('FROM ARTICOLO');
     if combobox6.Text<>'TUTTI' then
      DM.IBQueryTemp.SQL.Add('WHERE '+WHERESLC);
  if combobox7.Text<>'' then
  //DM.IBQueryTemp.SQL.Add(OrderBy);
  DM.IBQueryTemp.Open;

   RepArt.QRLabel10.Caption:=DM.IBQueryTemp.Fields.Fields[0].AsString;
   RepArt.QRLabel22.Caption:=DM.IBQueryTemp.Fields.Fields[1].AsString;

  RepArt.QRLabel4.Caption:=EDIT44.Text;
  RepArt.QRLabel5.Caption:=EDIT45.Text;
  RepArt.QRLabel8.Caption:=Combobox7.Text;
  RepArt.QRLabel1.Caption:='REPORT ARTICOLI '+Combobox6.Text;
  RepArt.QuickRep1.Preview;
 end;
end;
end;

procedure TMenu.SpeedButton8Click(Sender: TObject);
begin
BrDateForm.date:=date;
if BrDateForm.Showmodal= mrOk then
    EDIT44.Text:=datetostr(BrDateForm.Date);
end;

procedure TMenu.SpeedButton9Click(Sender: TObject);
begin
BrDateForm.date:=date;
if BrDateForm.Showmodal= mrOk then
    EDIT45.Text:=datetostr(BrDateForm.Date);
    RepArt.QRLabel5.Caption:=EDIT45.Text

end;


procedure Tmenu.ReportExport(aReport: TQuickRep; const aFileName: TFileName);
var Pdf: TPdfDocument;
     aMeta: TMetaFile;
     i: integer;
begin
  Pdf := TPdfDocument.Create;
  try
    aReport.Prepare;
    for i := 1 to aReport.QRPrinter.PageCount do begin
      aMeta := aReport.QRPrinter.GetPage(i);
      try
        Pdf.DefaultPageWidth := MulDiv(aMeta.Width,72,Pdf.ScreenLogPixels);
        Pdf.DefaultPageHeight := MulDiv(aMeta.Height,72,Pdf.ScreenLogPixels);
        Pdf.AddPage;
        // draw the page content
        Pdf.Canvas.RenderMetaFile(aMeta,1,0,0);
      finally
        aMeta.Free;
      end;
    end;
    Pdf.SaveToFile(aFileName);
  finally
    Pdf.free;
  end;
end;

procedure SetUnsetDateReceipt(SchedNo:string;Action:boolean);
var ibtemp:TIBQuery;
begin
ibtemp:=TIBQuery.create(nil);
ibtemp.Database:=DM.IBDatabase1;
ibtemp.Transaction:=DM.IBTransaction7;
if not Dm.IBTransaction7.InTransaction then
DM.IBTransaction7.StartTransaction;
if Action then
ibtemp.SQL.add('UPDATE SCHEDULE SET RECEIPTSENT="NOW" WHERE SCHED_NO="'+schedNo+'"')
else
ibtemp.SQL.add('UPDATE SCHEDULE SET RECEIPTSENT=NULL WHERE SCHED_NO="'+schedNo+'"');
ibtemp.ExecSQL;
DM.IBTransaction7.Commitretaining;
DM.IBDataSetSchedule.Refresh;
ibtemp.Free;
end;


procedure TMenu.DBGrid9DrawDataCell(Sender: TObject; const Rect: TRect;
  Field: TField; State: TGridDrawState);
var
  DataSource: TDataSource;
  DataSet: TDataSet;
  Query: TComponent;
  value: integer;
begin
  // Ottieni il DataSource collegato al DBGrid
  DataSource := DBGrid9.DataSource;

  if Assigned(DataSource) then
    begin
     DataSet := DataSource.DataSet;
       if Assigned(DataSet) then
      begin
       value:=TIBQuery(DataSet).fieldbyname('PAGATO').asinteger;
    if value = 0 then
    begin
      DBGrid9.Canvas.Brush.Color := $008080FF; // Colore rosso per minorenni
      DBgRID9.Canvas.Font.Color:= clWhite;
    end;
    if value = 1 then
    begin
      DBGrid9.Canvas.Brush.Color := clLime; // Colore verde per maggiorenni
      DBgRID9.Canvas.Font.Color:= clBlack
    end;

  // Disegna lo sfondo personalizzato
  DBGrid9.Canvas.FillRect(Rect);

  // Disegna il testo della cella
  DBGrid9.Canvas.TextRect(Rect, Rect.Left + 2, Rect.Top + 2, Field.AsString);
   end;
   end;
end;


procedure TMenu.BitBtn14Click(Sender: TObject);
var ibtemp:TIBQuery; ThreadEmail,ThreadEmail1:TThreadSendMail;
 testomail:string;
begin
if DM.IBDataSetScheduleDATASTARTRENT.IsNull or DM.IBDataSetScheduleDATATAKEBACK.IsNull or DM.IBDataSetScheduleDAYUSE.IsNull then
MessageDlg('DATA_INIZIO, GIORNI_USO, DATA_RIENTRO, Dati Obligatori! ', mtWarning,[mbOk], 0)
else
begin
if (DM.IBDataSetSchedule.State = dsinsert) or (DM.IBDataSetSchedule.State = dsEdit) then
Dm.IBDataSetSchedule.Post;
if DM.IBDataSetSchedulePAGATO.AsInteger = 1 then
  Schecli.QRLabel4.Caption:='PAGATO'
else
Schecli.QRLabel4.Caption:='DA PAGARE';
NewSchCli.QuickRep1.PrinterSettings.FirstPage:=1;
NewSchCli.Quickrep1.PrinterSettings.LastPage:=1;
NewschCli.QuickRep1.PrinterSettings.PrinterIndex:=Printer.Printers.IndexOf(dm.IBDataSetLocalParamPAPER_PRINTER.AsString);
if preview2.Checked=false then
begin
NewSchCli.QuickRep1.Print;
end
else
NewSchCli.QuickRep1.Preview;
end;

// aggiunto 31/12/2018
ibtemp:=TIBQuery.create(nil);
ibtemp.Database:=DM.IBDatabase1;
ibtemp.SQL.add('select cognragsoc,nome,cellulare,telefono1,email from clienti where cli_no="'+DM.IBDataSetScheduleCLI_NO.AsString+'"');
ibtemp.Open;
if not ibtemp.IsEmpty then
begin
if (DM.IBDataSetLocalParamSAVESCHEDTOPDF.Value = 1)and (QtaArtXScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger)>0) then
begin
try
 ReportExport(NewschCli.QuickRep1,DM.IBDataSetLocalParamPATHFILEPDFSCHED.AsString+'\'+DM.IBDataSetScheduleSCHED_NO.AsString+'-'+ibtemp.fieldbyname('COGNRAGSOC').asstring+'-'+ibtemp.fieldbyname('NOME').asstring+'.PDF');
except
 showmessage('Errore creazione PDF: Percorso non valido o diritti di scrittura mancanti');
end;
end;

if (DM.IBDataSetLocalParamSENDNOLOTOCLI.Value = 1)and (QtaArtXScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger)>0) and (DM.IBDataSetScheduleRECEIPTSENT.IsNull) then
begin
//if messagedlg('Invia Ricevuta Via Mail Al Cliente?',mtinformation, mbOKCancel, 0)= 1 then
//begin
 if not ibtemp.FieldByName('EMAIL').IsNull then
  begin
   ReportExport(NewschCli.QuickRep1,DM.IBDataSetLocalParamPATHFILEPDFSCHED.AsString+'\'+DM.IBDataSetScheduleSCHED_NO.AsString+'-'+ibtemp.fieldbyname('COGNRAGSOC').asstring+'-'+ibtemp.fieldbyname('NOME').asstring+'.PDF');
 //  testomail:='Buongiorno, in allegato la ricevuta di nolegggio appena effettuata, Scheda N°'+DM.IBDataSetScheduleSCHED_NO.AsString+' Nome:'+ibtemp.fieldbyname('NOME').asstring+' Cognome:'+ibtemp.fieldbyname('COGNRAGSOC').asstring+CHR(13)+datetimetostr(now);
 ThreadEmail:= TThreadSendMail.Create(5,ibtemp.fieldbyname('EMAIL').asstring,'RICEVUTA NOLEGGIO N°'+dm.IBDataSetScheduleSCHED_NO.AsString+' PRESSO PARMASPORT DEL '+datetimetostr(now),testomail,DM.IBDataSetLocalParamPATHFILEPDFSCHED.AsString+'\'+DM.IBDataSetScheduleSCHED_NO.AsString+'-'+ibtemp.fieldbyname('COGNRAGSOC').asstring+'-'+ibtemp.fieldbyname('NOME').asstring+'.PDF','',edit50.Text,strtoint(edit55.text),edit53.Text,edit54.Text);
if ThreadEmail.validEmail(ibtemp.fieldbyname('EMAIL').asstring) then
threademail.Execute;
SetUnsetDateReceipt(DM.IBDataSetScheduleSCHED_NO.AsString,true);

  end;
//end;
end;


 end;





end;


procedure TMenu.BitBtn15Click(Sender: TObject);
Var whereslc,orderby,Datatype:string;
begin
  if Edit46.Text=''  then
  Edit46.Text:=datetostr(today);
  if Edit47.Text=''  then
  Edit47.Text:=datetostr(today);
   if combobox8.Text='CHIUSE' then
    whereslc:='SCHEDULE.STATO = "CHIUSA"';
  if combobox8.Text='APERTE' then
    whereslc:='(STATO = "APERTA")';
  if combobox8.Text='PARZIALI' then
    whereslc:='(STATO = "PARZIALE")';
  if combobox8.Text='DA PAGARE' then
    whereslc:='(PAGATO = "0")';
  if combobox8.Text='IN RITARDO' then
    whereslc:='(STATO_CONS = "RITARDO")';
  if combobox8.Text='INUTILIZZATE' then
    whereslc:='(STATO = "INUTILIZZATA")';
  if combobox9.Text='ID' then
    orderby:='ORDER BY SCHEDULE.SCHED_NO';
  if combobox9.Text='COGN/RAGSOC' then
    orderby:='ORDER BY COGNRAGSOC';
  if combobox9.Text='DATA INTRO' then
    orderby:='ORDER BY DATAINTRO';
  if combobox9.Text='DATA RIENTRO' then
    orderby:='ORDER BY DATATAKEBACK';
  if combobox9.Text='OPCODE' then
    orderby:='ORDER BY OWNER';
  if combobox9.Text='STATO SCHEDA' then
    orderby:='ORDER BY STATO';
  if combobox9.Text='STATO CONSEGNA' then
    orderby:='ORDER BY STATO_CONS';
  if combobox10.Text='DATA INTRO' then
    datatype:='DATAINTRO';
  if combobox10.Text='DATA STARTNOLO' then
    datatype:='DATASTARTRENT';
  if combobox10.Text='DATA RICONSEGNA' then
    datatype:='DATATAKEBACK';
if combobox8.Text<>'' then
begin
  if (edit46.Text<>'') AND (edit47.Text<>'') then
 begin
  DM.IBDataSetSchedule.Close;
  DM.IBDataSetSchedule.SelectSQL.Clear;
  DM.IBDataSetSchedule.SelectSQL.Add('SELECT *');
  DM.IBDataSetSchedule.SelectSQL.Add('FROM SCHEDULE JOIN CLIENTI ON CLIENTI.CLI_NO = SCHEDULE.CLI_NO');
   if combobox8.Text='TUTTE' then
    Begin
     if combobox10.Text<>'' then
      DM.IBDataSetSchedule.SelectSQL.Add('WHERE '+DATATYPE+' BETWEEN "'+ DecForSqlDate(strtodate(edit46.Text)) +'" AND "'+ DecForSqlDate(strtodate(edit47.Text)) +'"')
    end
   else
    Begin
     if combobox10.Text<>'' then
      DM.IBDataSetSchedule.SelectSQL.Add('WHERE '+WHERESLC+' AND '+DATATYPE+' BETWEEN "'+ DecForSqlDate(strtodate(edit46.Text)) +'" AND "'+ DecForSqlDate(strtodate(edit47.Text)) +'"')
     else
      DM.IBDataSetSchedule.SelectSQL.Add('WHERE '+WHERESLC);
    end;
  if combobox9.Text<>'' then
  DM.IBDataSetSchedule.SelectSQL.Add(OrderBy);
  DM.IBDataSetSchedule.Open;
 end
 else
 begin
  DM.IBDataSetSchedule.Close;
  DM.IBDataSetSchedule.SelectSQL.Clear;
  DM.IBDataSetSchedule.SelectSQL.Add('SELECT *');
  DM.IBDataSetSchedule.SelectSQL.Add('FROM SCHEDULE JOIN CLIENTI ON CLIENTI.CLI_NO = SCHEDULE.CLI_NO');
   if combobox8.Text='TUTTE' then
    Begin
     if combobox10.Text<>'' then
      DM.IBDataSetSchedule.SelectSQL.Add('WHERE '+DATATYPE+' BETWEEN "'+ DecForSqlDate(strtodate(edit46.Text)) +'" AND "'+ DecForSqlDate(strtodate(edit47.Text)) +'"')
    end
   else
    Begin
     if combobox10.Text<>'' then
      DM.IBDataSetSchedule.SelectSQL.Add('WHERE '+WHERESLC+' AND '+DATATYPE+' BETWEEN "'+ DecForSqlDate(strtodate(edit46.Text)) +'" AND "'+ DecForSqlDate(strtodate(edit47.Text)) +'"')
     else
      DM.IBDataSetSchedule.SelectSQL.Add('WHERE '+WHERESLC);
    end;
  if combobox9.Text<>'' then
  DM.IBDataSetSchedule.SelectSQL.Add(OrderBy);
  DM.IBDataSetSchedule.Open;
 end;
 RepSchedule.qrlabel19.Caption:=Edit46.Text;
 RepSchedule.qrlabel24.Caption:=Edit47.Text;
 RepSchedule.qrlabel17.Caption:=Combobox8.Text;
 RepSchedule.qrlabel22.Caption:=Combobox9.Text;
 RepSchedule.qrlabel26.Caption:=Combobox10.Text;
 RepSchedule.qrlabel16.Caption:=SubRoutineSuReportScheda(datatype,whereslc,orderby);
 RepSchedule.QuickRep1.PreviewModal;
end;
end;

Function TMenu.SubRoutineSuReportScheda(datatype,whereslc,orderby:string):string;
begin
  if (edit46.Text<>'') AND (edit47.Text<>'') then
 begin
  DM.IBQueryTemp.Close;
  DM.IBQueryTemp.SQL.Clear;
  DM.IBQueryTemp.SQL.Add('SELECT COUNT(*)');
  DM.IBQueryTemp.SQL.Add('FROM SCHEDULE JOIN CLIENTI ON CLIENTI.CLI_NO = SCHEDULE.CLI_NO');
   if combobox8.Text='TUTTE' then
    Begin
     if combobox10.Text<>'' then
      DM.IBQueryTemp.SQL.Add('WHERE '+DATATYPE+' BETWEEN "'+ DecForSqlDate(strtodate(edit46.Text)) +'" AND "'+ DecForSqlDate(strtodate(edit47.Text)) +'"')
    end
   else
    Begin
     if combobox10.Text<>'' then
      DM.IBQueryTemp.SQL.Add('WHERE '+WHERESLC+' AND '+DATATYPE+' BETWEEN "'+ DecForSqlDate(strtodate(edit46.Text)) +'" AND "'+ DecForSqlDate(strtodate(edit47.Text)) +'"')
     else
      DM.IBQueryTemp.SQL.Add('WHERE '+WHERESLC);
    end;
  if combobox9.Text<>'' then
  //DM.IBQueryTemp.SQL.Add(OrderBy);
  DM.IBQueryTemp.Open;
 end
 else
 begin
  DM.IBQueryTemp.Close;
  DM.IBQueryTemp.SQL.Clear;
  DM.IBQueryTemp.SQL.Add('SELECT COUNT(*)');
  DM.IBQueryTemp.SQL.Add('FROM SCHEDULE JOIN CLIENTI ON CLIENTI.CLI_NO = SCHEDULE.CLI_NO');
   if combobox8.Text='TUTTE' then
    Begin
     if combobox10.Text<>'' then
      DM.IBQueryTemp.SQL.Add('WHERE '+DATATYPE+' BETWEEN "'+ DecForSqlDate(strtodate(edit46.Text)) +'" AND "'+ DecForSqlDate(strtodate(edit47.Text)) +'"')
    end
   else
    Begin
     if combobox10.Text<>'' then
      DM.IBQueryTemp.SQL.Add('WHERE '+WHERESLC+' AND '+DATATYPE+' BETWEEN "'+ DecForSqlDate(strtodate(edit46.Text)) +'" AND "'+ DecForSqlDate(strtodate(edit47.Text)) +'"')
     else
      DM.IBQueryTemp.SQL.Add('WHERE '+WHERESLC);
    end;
  if combobox9.Text<>'' then
  //DM.IBQueryTemp.SQL.Add(OrderBy);
  DM.IBQueryTemp.Open;
 end;
 if not DM.IBQueryTemp.IsEmpty then
 result:=DM.IBQueryTemp.Fields.Fields[0].AsString
 else
 result:='0';
end;






procedure TMenu.SpeedButton10Click(Sender: TObject);
begin
BrDateForm.date:=date;
if BrDateForm.Showmodal= mrOk then
    EDIT46.Text:=datetostr(BrDateForm.Date);

end;

procedure TMenu.SpeedButton11Click(Sender: TObject);
begin
BrDateForm.date:=date;
if BrDateForm.Showmodal= mrOk then
    EDIT47.Text:=datetostr(BrDateForm.Date);

end;

procedure TMenu.SpeedButton12Click(Sender: TObject);
begin
BrDateForm.date:=date;
if BrDateForm.Showmodal= mrOk then
    EDIT59.Text:=datetostr(BrDateForm.Date);

end;

procedure TMenu.SpeedButton13Click(Sender: TObject);
begin
BrDateForm.date:=date;
if BrDateForm.Showmodal= mrOk then
    EDIT58.Text:=datetostr(BrDateForm.Date);

end;

procedure TMenu.ComboBox10Select(Sender: TObject);
begin
If Combobox10.Text = '' then
begin
edit46.Clear;
edit47.Clear;
edit46.Enabled:=false;
edit47.Enabled:=false;
speedbutton10.Enabled:=false;
speedbutton11.Enabled:=false;
end
else
begin
edit46.Enabled:=true;
edit47.Enabled:=true;
speedbutton10.Enabled:=true;
speedbutton11.Enabled:=true;
end;

end;

procedure TMenu.Button18Click(Sender: TObject);
begin
DelSchedNull;
end;

procedure TMenu.Schede1Click(Sender: TObject);
begin
if ACCCONV.ShowModal=Mrok then
begin
if ACCCONV.ClassValue = 3 then
begin
TabSheet9.TabVisible:=true;
Pagecontrol1.ActivePageIndex:=8;
end
else
MsgNoPermission(Classification);
ACCCONV.ClassValue :=0;
end;
end;

procedure TMenu.TabSheet11Hide(Sender: TObject);
begin
If DM.IBDataSetParam.State in [dsEdit,dsInsert] then
DM.IBDataSetParam.Post;
//if pagecontrol1.ActivePageIndex <>1 then
Pagecontrol1.ActivePageIndex:=0;
Tabsheet11.TabVisible:=false;
Tabsheet1.SetFocus;
end;

procedure TMenu.Parametri2Click(Sender: TObject);
begin
if ACCCONV.ShowModal=Mrok then
begin
if ACCCONV.ClassValue = 3 then
begin
TabSheet11.TabVisible:=true;
Pagecontrol1.ActivePageIndex:=10;
end
else
MsgNoPermission(Classification);
ACCCONV.ClassValue :=0;
end;

end;

procedure TMenu.Venduto1Click(Sender: TObject);
begin
if ACCCONV.ShowModal=Mrok then
begin
if ACCCONV.ClassValue = 3 then
begin
TabSheet10.TabVisible:=true;
Pagecontrol1.ActivePageIndex:=9;
end
else
MsgNoPermission(Classification);
ACCCONV.ClassValue :=0;
end;

end;

procedure TMenu.TabSheet9Hide(Sender: TObject);
begin
Pagecontrol1.ActivePageIndex:=0;
tabsheet9.TabVisible:=false;
Tabsheet1.SetFocus;
end;

procedure TMenu.TabSheet10Hide(Sender: TObject);
begin
Pagecontrol1.ActivePageIndex:=0;
Tabsheet10.TabVisible:=false;
Tabsheet1.SetFocus;
end;

procedure TMenu.ComboBox12Enter(Sender: TObject);
var valore:string;
begin
    DBGrid13.DataSource:=nil;
    DBGrid9.DataSource:=nil;
if Combobox2.Text='' then
valore:='0'
else
valore:=inttostr(strtoint(combobox2.Text)-1);
DM.IBQueryTemp.Close;
  DM.IBQueryTemp.SQL.Clear;
  DM.IBQueryTemp.SQL.Add('SELECT ART_NO');
  DM.IBQueryTemp.SQL.Add('FROM ARTICOLO');
  DM.IBQueryTemp.SQL.Add('WHERE ART_NO >"'+valore+'" ORDER BY ART_NO');
  DM.IBQueryTemp.Open;
  DM.IBQueryTemp.First;
  Combobox12.Clear;
  while not DM.IBQueryTemp.Eof do
  begin
  Combobox12.Items.Add(DM.IBQueryTemp.Fields.Fields[0].AsString);
  DM.IBQueryTemp.Next;
  end;
  DM.IBQueryTemp.Close;
    DBGrid13.DataSource:=DM.DSQueryTemp;
    DBGrid9.DataSource:=DM.DSQueryTemp;
    end;

procedure TMenu.ComboBox2Enter(Sender: TObject);
begin
  DBGrid13.DataSource:=nil;
  DBGrid9.DataSource:=nil;
  DM.IBQueryTemp.Close;
  DM.IBQueryTemp.SQL.Clear;
  DM.IBQueryTemp.SQL.Add('SELECT ART_NO');
  DM.IBQueryTemp.SQL.Add('FROM ARTICOLO');
  DM.IBQueryTemp.SQL.Add('ORDER BY ART_NO');
  DM.IBQueryTemp.Open;
  DM.IBQueryTemp.First;
  Combobox2.Clear;
  while not DM.IBQueryTemp.Eof do
  begin
  Combobox2.Items.Add(DM.IBQueryTemp.Fields.Fields[0].AsString);
  DM.IBQueryTemp.Next;
  end;
    DM.IBQueryTemp.Close;
    DBGrid13.DataSource:=DM.DSQueryTemp;
    DBGrid9.DataSource:=DM.DSQueryTemp;
 end;

procedure TMenu.BitBtn16Click(Sender: TObject);
var i:integer;
begin
if (combobox2.Text<>'') and (combobox12.Text<>'') then
begin
DM.IBDataSetArticolo.Close;
DM.IBDataSetArticolo.SelectSQL.Clear;
DM.IBDataSetArticolo.SelectSQL.Add('SELECT *');
DM.IBDataSetArticolo.SelectSQL.Add('FROM ARTICOLO');
DM.IBDataSetArticolo.SelectSQL.Add('WHERE ART_NO BETWEEN "'+cOMBOBOX2.Text+'" AND "'+COMBOBOX12.Text+'"');
DM.IBDataSetArticolo.SelectSQL.Add('ORDER BY ART_NO');
DM.IBDataSetArticolo.Open;
DeleteEtichette;
for i:=1 to SpinEdit1.Value-1 do
begin
DM.IBDataSetEtichette.Insert;
DM.IBDataSetEtichette.Post;
end;
DM.IBDataSetArticolo.First;
DM.IBDataSetEtichette.Last;
while not DM.IBDataSetArticolo.Eof do
begin
DM.IBDataSetEtichette.Insert;
//if DM.IBDataSetParamEANTOSCAN.AsString='EANCODE' then
if Combobox13.text='EANCODE' then
DM.IBDataSetEtichetteEANCODE.AsString:=DM.IBDataSetArticoloEANCODE.AsString
else
DM.IBDataSetEtichetteEANCODE.AsString:=DM.IBDataSetArticoloEANCODE2.AsString;
DM.IBDataSetEtichetteMANUALCODE.AsString:=DM.IBDataSetArticoloART_NO.AsString;
DM.IBDataSetEtichette.Post;
DM.IBDataSetArticolo.Next;
end;
etichette.QuickRep1.Preview;
end
else
MessageDlg('I DUE CAMPI "DA" "A" DEVONO AVERE UN VALORE VALIDO', mtInformation,[mbOk], 0);

end;

Procedure Tmenu.DeleteEtichette;
begin
DM.IBDataSetEtichette.First;
while not DM.IBDataSetEtichette.Eof do
begin
DM.IBDataSetEtichette.Delete;
end;
end;






procedure TMenu.BitBtn17Click(Sender: TObject);
begin
REPLISTINO.QuickRep1.PreviewModal;
end;

procedure TMenu.BitBtn18Click(Sender: TObject);
begin
Operatori.QuickRep1.Preview;
end;

procedure TMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
PasswordDlg.Show;
end;

procedure TMenu.SpeedButton3Click(Sender: TObject);
var datavalid:Tdatetime;
begin
//BrDateForm.date:=date;
if TryStrToDate(maskedit2.Text, datavalid) then
begin
BrDateForm.date:=datavalid;
if BrDateForm.Showmodal= mrOk then
   Maskedit2.Text:=datetostr(BrDateForm.Date);
   // EDIT25.Text:=datetostr(BrDateForm.Date);
end
else
showmessage('Data inserita non valida');

end;

procedure TMenu.TabSheet1Show(Sender: TObject);
begin
//EditCognome.Clear;
//EditNome.Clear;
//EditEanCode.Clear;
//EditEANCode.SetFocus;
//EditCognome.OnChange(sender);
//DM.IBDataSetClienti.Refresh;
end;

procedure TMenu.TabSheet5Enter(Sender: TObject);
begin
{
    DM.IBDataSetSchedule.Close;
    DM.IBDataSetSchedule.SelectSQL.Clear;
    DM.IBDataSetSchedule.SelectSQL.Add('SELECT COGNRAGSOC, NOME, INDIRIZZO, N_DOC, SCHEDULE.*');
    DM.IBDataSetSchedule.SelectSQL.Add('FROM SCHEDULE JOIN CLIENTI ON CLIENTI.CLI_NO = SCHEDULE.CLI_NO');
    if not (combobox17.Text='') then
    DM.IBDataSetSchedule.SelectSQL.Add('WHERE DATAINTRO BETWEEN "'+DecForSqlDate(strtodate(edit58.Text))+'" AND "'+DecForSqlDate(strtodate(edit59.Text))+'"');
    DM.IBDataSetSchedule.SelectSQL.Add('ORDER BY SCHED_NO');
    DM.IBDataSetSchedule.Open;
    DM.IBDataSetSchedule.Last;
}
    end;

procedure TMenu.TabSheet2Show(Sender: TObject);
begin
DM.IBDataSetArticolo.Close;
DM.IBDataSetArticolo.SelectSQL.Clear;
DM.IBDataSetArticolo.SelectSQL.Add('SELECT *');
DM.IBDataSetArticolo.SelectSQL.Add('FROM ARTICOLO');
DM.IBDataSetArticolo.SelectSQL.Add('ORDER BY ART_NO');
DM.IBDataSetArticolo.Open;
end;

procedure TMenu.DBGrid3KeyPress(Sender: TObject; var Key: Char);
begin
key:=upcase(key);
end;

procedure TMenu.Edit7KeyPress(Sender: TObject; var Key: Char);
var count,artno: integer;
    rentartno,eanstr: string;
begin
 if ((sender as TEdit).Name='Edit6') or ((sender as TEdit).Name='Edit12') then
  begin
   if ord(key) = 10 then
   begin  (Sender as TEdit).Clear; exit; end;
  end
  else
   begin
   if key in ['a'..'z']+['A'..'Z'] then
   key:=#0;
   end;

if ord(key) = 13 then
begin
 if ((sender as TEdit).Name='Edit6') or ((sender as TEdit).Name='Edit12') then
  begin
//   prefix:=leftstr((Sender as TEdit).text,2)
   if (length((Sender as TEdit).text)=10) and (leftstr((Sender as TEdit).text,2)='01') then
    begin
     eanstr:=TrimEanCode((Sender as TEdit).text);
     artno:=QueryEanArtToArtno(Eanstr);
    end
    else
     artno:=strtoint((Sender as TEdit).text);
   end
  else
  artno:=ArtnoIsInArticoli((Sender as TEdit).Text);

 if QueryArtToDownload(inttostr(artno), DM.IBDataSetScheduleSCHED_NO.AsString) = true then
  begin
   if artno <> NULL then
   begin
       if CheckArtReplay(inttostr(Artno))=true then
    BEGIN
      if not DM.IBTransaction6.InTransaction then
      DM.IBTransaction6.StartTransaction;
      DM.IBQueryTemp.Close;
      DM.IBQueryTemp.SQL.Clear;
      DM.IBQueryTemp.SQL.Add('SELECT RENTEDART.RENART_NO');
      DM.IBQueryTemp.SQL.Add('FROM RENTEDART');
      DM.IBQueryTemp.SQL.Add('WHERE RENTEDART.SCHED_NO = "'+DM.IBDataSetScheduleSCHED_NO.AsString+'" AND RENTEDART.ART_NO = "'+inttostr(Artno)+'" AND RENTEDART.STATO = "NOLEGGIATO"');
      DM.IBQueryTemp.Open;
      Rentartno:=DM.IBQueryTemp.Fields.Fields[0].asString;
      DM.IBQueryTemp.Close;
      DM.IBQueryTemp.SQL.Clear;
      DM.IBQueryTemp.SQL.Add('SELECT COUNT(*)');
      DM.IBQueryTemp.SQL.Add('FROM RENTEDART');
      DM.IBQueryTemp.SQL.Add('WHERE RENTEDART.SCHED_NO = "'+DM.IBDataSetScheduleSCHED_NO.AsString+'" AND RENTEDART.ART_NO = "'+inttostr(Artno)+'" AND RENTEDART.STATO = "NOLEGGIATO"');
      DM.IBQueryTemp.Open;
      Count:=DM.IBQueryTemp.Fields.Fields[0].AsInteger;

      if (NOT (Rentartno=Null)) and (Count>0) then
        begin
         DM.IBQueryTemp.Close;
         DM.IBQueryTemp.SQL.Clear;
         DM.IBQueryTemp.SQL.Add('UPDATE RENTEDART');
         DM.IBQueryTemp.SQL.Add('SET RENTEDART.STATO = "RESO"');
         DM.IBQueryTemp.SQL.Add('WHERE RENTEDART.RENART_NO = "'+Rentartno+'"');
         DM.IBQueryTemp.Open;
        end;
   DM.IBQuery1.Close;
   dM.IBQuery1.Prepare;
   DM.IBQuery1.ParamByName('SCHEDNO').AsInteger:=DM.IBDataSetScheduleSCHED_NO.AsInteger;
   DM.IBQuery1.Open;

     //DM.IBTransaction6.Commit;
   //if not((sender as TEdit).Owner.Name='TennisMng') then
  if tennismng.Showing=false then

   begin
//   DM.IBDataSetRented.Close;
//   DM.IBDataSetRented.Prepare;
//   DM.IBDataSetRented.Params.ByName('SCHEDNO').AsInteger:=DM.IBDataSetScheduleSCHED_NO.AsInteger;
//   DM.IBDataSetRented.Open;
   DM.IBQuery1.Close;
   dM.IBQuery1.Prepare;
   DM.IBQuery1.ParamByName('SCHEDNO').AsInteger:=DM.IBDataSetScheduleSCHED_NO.AsInteger;
   DM.IBQuery1.Open;


   edit14.Text:=inttostr(ScheduleResult(DM.IBDataSetScheduleSCHED_NO.AsInteger));
   Edit16.Text:=inttostr(QtaArtApertiPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));
   Edit15.Text:=inttostr(QtaArtChiusiPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));
   end
   else
   begin
  DM.IBDataSetRented.Close;
  DM.IBDataSetRented.SelectSQL.Clear;
  DM.IBDataSetRented.SelectSQL.Add('SELECT ARTICOLO.*, RENTEDART.*');
  DM.IBDataSetRented.SelectSQL.Add('FROM ARTICOLO JOIN RENTEDART ON ARTICOLO.ART_NO=RENTEDART.ART_NO');
  if not DM.IBDataSetScheduleSched_no.IsNull then
  DM.IBDataSetRented.SelectSQL.Add('WHERE (ARTICOLO.TIPO="RACCHETTA TENNIS") AND (RENTEDART.SCHED_NO="'+DM.IBDataSetScheduleSCHED_NO.AsString+'")')
  else
  DM.IBDataSetRented.SelectSQL.Add('WHERE (ARTICOLO.TIPO="RACCHETTA TENNIS") AND (RENTEDART.SCHED_NO= NULL)');
  DM.IBDataSetRented.Open;
   Tennismng.edit13.Text:=inttostr(ScheduleResult(DM.IBDataSetScheduleSCHED_NO.AsInteger));
   Tennismng.Edit18.Text:=inttostr(QtaArtApertiPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));
   Tennismng.Edit17.Text:=inttostr(QtaArtChiusiPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));
  end;
  (Sender as TEdit).Clear;
   END
   else
   begin
   SetArtStato(artno,'DISPONIBILE');
   SetRentedStato(artno,DM.IBDataSetRentedSCHED_NO.AsInteger, 'RESO');
   //   if not((sender as TEdit).Owner.Name='TennisMng') then
   if Tennismng.Showing=false then
   begin
   DM.IBDataSetRented.Close;
   DM.IBDataSetRented.Prepare;
   DM.IBDataSetRented.Params.ByName('SCHEDNO').AsInteger:=DM.IBDataSetScheduleSCHED_NO.AsInteger;
   DM.IBDataSetRented.Open;
   DM.IBQuery1.Close;
   dM.IBQuery1.Prepare;
   DM.IBQuery1.ParamByName('SCHEDNO').AsInteger:=DM.IBDataSetScheduleSCHED_NO.AsInteger;
   DM.IBQuery1.Open;
   edit14.Text:=inttostr(ScheduleResult(DM.IBDataSetScheduleSCHED_NO.AsInteger));
   Edit16.Text:=inttostr(QtaArtApertiPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));
   Edit15.Text:=inttostr(QtaArtChiusiPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));
   end
   else
   begin
  DM.IBDataSetRented.Close;
  DM.IBDataSetRented.SelectSQL.Clear;
  DM.IBDataSetRented.SelectSQL.Add('SELECT ARTICOLO.*, RENTEDART.*');
  DM.IBDataSetRented.SelectSQL.Add('FROM ARTICOLO JOIN RENTEDART ON ARTICOLO.ART_NO=RENTEDART.ART_NO');
  if not DM.IBDataSetScheduleSched_no.IsNull then
  DM.IBDataSetRented.SelectSQL.Add('WHERE (ARTICOLO.TIPO="RACCHETTA TENNIS") AND (RENTEDART.SCHED_NO="'+DM.IBDataSetScheduleSCHED_NO.AsString+'")')
  else
  DM.IBDataSetRented.SelectSQL.Add('WHERE (ARTICOLO.TIPO="RACCHETTA TENNIS") AND (RENTEDART.SCHED_NO= NULL)');
  DM.IBDataSetRented.Open;
   Tennismng.edit13.Text:=inttostr(ScheduleResult(DM.IBDataSetScheduleSCHED_NO.AsInteger));
   Tennismng.Edit18.Text:=inttostr(QtaArtApertiPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));
   Tennismng.Edit17.Text:=inttostr(QtaArtChiusiPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));
  end;
   (Sender as TEdit).Clear;
   end;
   end
   else
   begin
   MessageDlg('Articolo Non Presente Nella Scheda Noleggio ', mtWarning,[mbOk], 0);
   (Sender as TEdit).Clear;
   end;
  end
  else
  begin
  MessageDlg('Articolo Già Scaricato', mtWarning,[mbOk], 0);
  (Sender as TEdit).Clear;
  end;
  end;
end;


procedure TMenu.TabSheet8Hide(Sender: TObject);
begin
//  if DM.IBTransaction10.InTransaction then
//   DM.IBTransaction10.Rollback;

end;

procedure TMenu.BitBtn22Click(Sender: TObject);
var SavePlace: TBookMark;
begin
EditCognome.OnChange:=nil;
EditNome.OnChange:=nil;
SavePlace :=DM.IBDataSetClienti.GetBookmark;
if DM.IBDataSetClienti.State in [dsinsert,dsedit] then
DM.IBDataSetClienti.Post;

if  (not DM.IBDataSetClientiEMAIL.IsNull) and (not DM.IBDataSetClientiCELLULARE.IsNull) then
begin
 if ACCCONV.ShowModal=Mrok then
 begin
  if ACCCONV.ClassValue > 0 then
  begin
    Tabsheet12.TabVisible:=true;
    Pagecontrol1.ActivePageIndex:=11;
    DM.IBDataSetClienti.GotoBookmark(SavePlace);
    DM.IBDataSetArticolo.Close;
    dm.IBDataSetArticolo.SelectSQL.Clear;
    DM.IBDataSetArticolo.SelectSQL.Add('SELECT * FROM ARTICOLO WHERE (CLI_NO="'+DM.IBDataSetClientiCLI_NO.AsString+'" AND CV="1")');
    //DM.IBDataSetArticolo.SelectSQL.Add('SELECT * FROM ARTICOLO WHERE CLI_NO="'+DM.IBDataSetClientiCLI_NO.AsString+'"');
    DM.IBDataSetArticolo.Open;
  //  DM.IBDataSetClienti.GotoBookmark(SavePlace);
  end
  else
   MsgNoPermission(ACCCONV.ClassValue);
 end;
 end
  else
 begin
   allertscheda.OnShow:=AllertScheda.FormShow2;
   allertscheda.showmodal;
   allertscheda.OnShow:=AllertScheda.FormShow;
  // memo1.Visible:=false;
   DBMemo1.Visible:=true;
   Label3.Visible:=false;
   Allertscheda.Height:=274;
   allertscheda.Bitbtn1.Top:=228;
 end;
ACCCONV.ClassValue :=0;
EditCognome.OnChange:=Edit1Change;
EditNome.OnChange:=EditNomeChange;
end;

procedure TMenu.DBEdit71Enter(Sender: TObject);
begin
DM.IBDataSetArticoloPREZZOPUB.EditMask:='€.9999,99;1;_'

end;

procedure TMenu.DBEdit72Enter(Sender: TObject);
begin
DM.IBDataSetArticoloPREZZORIS.EditMask:='€.9999,99;1;_'
end;

procedure TMenu.RadioGroup4Click(Sender: TObject);
begin
 case radiogroup4.ItemIndex  of
  0: whereslc1:='AND SCHEDULE.STATO = "APERTA"';
  1: whereslc1:='AND SCHEDULE.STATO = "CHIUSA"';
  2: whereslc1:='';
  3: whereslc1:='AND SCHEDULE.STATO = "INUTILIZZATA"'
 end;

end;


procedure TMenu.BitBtn24Click(Sender: TObject);
begin
DM.IBDataSetRented.Close;
DM.IBDataSetRented.SelectSQL.Clear;
DM.IBDataSetRented.SelectSQL.Add('SELECT RENTEDART.*, ARTICOLO.*');
DM.IBDataSetRented.SelectSQL.Add('FROM RENTEDART JOIN ARTICOLO ON ARTICOLO.ART_NO = RENTEDART.ART_NO');
DM.IBDataSetRented.SelectSQL.Add('WHERE RENTEDART.SCHED_NO = "'+DM.IBDataSetScheduleSCHED_NO.AsString+'" AND ARTICOLO.TIPO LIKE "SCI%"');
DM.IBDataSetRented.SelectSQL.Add('ORDER BY ARTICOLO.TIPO');
DM.IBDataSetRented.Open;
CalcZfact.ShowModal;
   DM.IBQuery1.Close;
   dM.IBQuery1.Prepare;
   DM.IBQuery1.ParamByName('SCHEDNO').AsInteger:=DM.IBDataSetScheduleSCHED_NO.AsInteger;
   DM.IBQuery1.Open;
end;

procedure TMenu.DBComboBox1Enter(Sender: TObject);
begin
DM.ADOQuery1.Close;
DM.ADOQuery1.SQL.Clear;
DM.ADOQuery1.SQL.Add('SELECT DISTINCT CITTA FROM COMUNI');
DM.ADOQuery1.Open;
DM.ADOQuery1.First;
DBCombobox1.Clear;
while not DM.ADOQuery1.Eof do
begin
DBcombobox1.Items.Add(DM.ADOQuery1.Fields.Fields[0].AsString);
DM.ADOQuery1.Next;
end;
DBcombobox1.Field.Value:=DM.IBDataSetClientiCITTA.AsString;
end;

procedure TMenu.DBComboBox3Enter(Sender: TObject);
begin
DM.ADOQuery1.Close;
DM.ADOQuery1.SQL.Clear;
DM.ADOQuery1.SQL.Add('SELECT DISTINCT LOCALITA FROM COMUNI');
if ((not DM.IBDataSetClientiCAP.IsNull) AND (not DM.IBDataSetClientiCITTA.IsNull)) then
DM.ADOQuery1.SQL.Add('WHERE CITTA = "'+DM.IBDataSetClientiCITTA.AsString+'" AND CAP = "'+DM.IBDataSetClientiCAP.AsString+'"' );
if (DM.IBDataSetClientiCAP.IsNull AND (not DM.IBDataSetClientiCITTA.IsNull)) then
DM.ADOQuery1.SQL.Add('WHERE CITTA = "'+DM.IBDataSetClientiCITTA.AsString+'"');
if ((not DM.IBDataSetClientiCAP.IsNull) AND DM.IBDataSetClientiCITTA.IsNull) then
DM.ADOQuery1.SQL.Add('WHERE CAP = "'+DM.IBDataSetClientiCAP.AsString+'"');
DM.ADOQuery1.Open;
DM.ADOQuery1.First;
DBCombobox3.Clear;
while not DM.ADOQuery1.Eof do
begin
DBcombobox3.Items.Add(DM.ADOQuery1.Fields.Fields[0].AsString);
DM.ADOQuery1.Next;
end;
DBCombobox3.Field.AsString:=DM.IBDataSetClientiPAESE.AsString;
end;

procedure TMenu.DBComboBox1Exit(Sender: TObject);
begin
if (DBCombobox1.Text='') and (not DM.IBDataSetClientiCITTA.IsNull) then
DBcombobox1.Field.AsString:=DM.IBDataSetClientiCITTA.AsString;
//if (not DM.IBDataSetClientiPAESE.IsNull) and (not DM.IBDataSetClientiCAP.IsNull) then
//begin
//DM.ADOQuery1.Close;
//DM.ADOQuery1.SQL.Clear;
//DM.ADOQuery1.SQL.Add('SELECT CITTA FROM COMUNI');
//DM.ADOQuery1.SQL.add('WHERE CAP="'+DM.IBDataSetClientiCAP.AsString+'" AND LOCALITA="'+DM.IBDataSetClientiPAESE.AsString+'"');
//DM.ADOQuery1.Open;
//end;
//if not DM.ADOQuery1.IsEmpty then
//DM.IBDataSetClientiCITTA.AsString:=DM.ADOQuery1.Fields.Fields[0].AsString
end;

procedure TMenu.DBComboBox4Exit(Sender: TObject);
begin
if (DBCombobox4.Text='') and (not DM.IBDataSetClientiCAP.IsNull) then
DBcombobox4.Field.AsString:=DM.IBDataSetClientiCAP.AsString;
//DM.ADOQuery1.Close;
//DM.ADOQuery1.SQL.Clear;
//DM.ADOQuery1.SQL.Add('SELECT CITTA, LOCALITA FROM COMUNI');
//DM.ADOQuery1.SQL.Add('WHERE CAP = "'+DBCombobox4.Text+'"');
//DM.ADOQuery1.Open;
//if not DM.ADOQuery1.IsEmpty then
//begin
//DM.IBDataSetClientiCITTA.AsString:=DM.ADOQuery1.Fields.Fields[1].AsString;
//DM.IBDataSetClientiPAESE.AsString:=DM.ADOQuery1.Fields.Fields[0].AsString;
//end;
end;

procedure TMenu.DBComboBox4Enter(Sender: TObject);
begin
if DM.IBDataSetClientiCITTA.IsNull or DM.IBDataSetClientiPAESE.IsNull then
begin
DM.ADOQuery1.Close;
DM.ADOQuery1.SQL.Clear;
DM.ADOQuery1.SQL.Add('SELECT DISTINCT CAP FROM COMUNI');
DM.ADOQuery1.Open;
end;
if ((not DM.IBDataSetClientiCITTA.IsNull) AND (not DM.IBDataSetClientiPAESE.IsNull)) then
begin
DM.ADOQuery1.Close;
DM.ADOQuery1.SQL.Clear;
DM.ADOQuery1.SQL.Add('SELECT DISTINCT CAP FROM COMUNI');
DM.ADOQuery1.SQL.add('WHERE LOCALITA="'+DM.IBDataSetClientiPAESE.AsString+'" AND CITTA="'+DM.IBDataSetClientiCITTA.AsString+'"');
DM.ADOQuery1.Open;
end;
if (DM.IBDataSetClientiCITTA.IsNull AND (not DM.IBDataSetClientiPAESE.IsNull)) then
begin
DM.ADOQuery1.Close;
DM.ADOQuery1.SQL.Clear;
DM.ADOQuery1.SQL.Add('SELECT DISTINCT CAP FROM COMUNI');
DM.ADOQuery1.SQL.add('WHERE LOCALITA="'+DM.IBDataSetClientiPAESE.AsString+'"');
DM.ADOQuery1.Open;
end;
if ((not DM.IBDataSetClientiCITTA.IsNull) AND DM.IBDataSetClientiPAESE.IsNull) then
begin
DM.ADOQuery1.Close;
DM.ADOQuery1.SQL.Clear;
DM.ADOQuery1.SQL.Add('SELECT DISTINCT CAP FROM COMUNI');
DM.ADOQuery1.SQL.add('WHERE CITTA="'+DM.IBDataSetClientiCITTA.AsString+'"');
DM.ADOQuery1.Open;
end;
DM.ADOQuery1.First;
DBCombobox4.Clear;
while not DM.ADOQuery1.Eof do
begin
DBcombobox4.Items.Add(DM.ADOQuery1.Fields.Fields[0].AsString);
DM.ADOQuery1.Next;
end;
end;

procedure TMenu.DBComboBox3Exit(Sender: TObject);
begin
if (DBCombobox3.Text='') and (not DM.IBDataSetClientiPAESE.IsNull) then
DBcombobox3.Field.AsString:=DM.IBDataSetClientiPAESE.AsString
//if (not DM.IBDataSetClientiCAP.IsNull) and (not DM.IBDataSetClientiCITTA.IsNull) then
//begin
//DM.ADOQuery1.Close;
//DM.ADOQuery1.SQL.Clear;
//DM.ADOQuery1.SQL.Add('SELECT DISTINCT CITTA, CAP FROM COMUNI');
//DM.ADOQuery1.SQL.add('WHERE LOCALITA="'+DM.IBDataSetClientiPAESE.AsString+'" AND CAP="'+DM.IBDataSetClientiPAESE.AsString+'"');
//DM.ADOQuery1.Open;
//end;
//if not DM.ADOQuery1.IsEmpty then
//begin
//DM.IBDataSetClientiCITTA.AsString:=DM.ADOQuery1.Fields.Fields[0].AsString;
//DM.IBDataSetClientiCAP.AsString:=DM.ADOQuery1.Fields.Fields[1].AsString;
//DBEdit6.SetFocus;
//end
end;

procedure TMenu.DBGrid5DblClick(Sender: TObject);
var renart:string;
begin
renart:=DM.IBDataSetRentedRENART_NO.AsString;
DM.IBDataSetRented.Close;
DM.IBDataSetRented.SelectSQL.Clear;
DM.IBDataSetRented.SelectSQL.Add('SELECT RENTEDART.*, ARTICOLO.*');
DM.IBDataSetRented.SelectSQL.Add('FROM RENTEDART JOIN ARTICOLO ON ARTICOLO.ART_NO = RENTEDART.ART_NO');
DM.IBDataSetRented.SelectSQL.Add('WHERE RENTEDART.SCHED_NO = "'+DM.IBDataSetScheduleSCHED_NO.AsString+'" AND ARTICOLO.TIPO LIKE "SCI%" AND RENTEDART.RENART_NO="'+renart +'"');
DM.IBDataSetRented.SelectSQL.Add('ORDER BY ARTICOLO.TIPO');
DM.IBDataSetRented.Open;
if not DM.IBDataSetRented.IsEmpty then
begin
CalcZFact.showmodal;
DM.IBDataSetRented.Edit;
end
else
begin
DM.IBDataSetRented.Close;
DM.IBDataSetRented.SelectSQL.Clear;
DM.IBDataSetRented.SelectSQL.Add(' SELECT RENTEDART.*, ARTICOLO.* FROM RENTEDART JOIN ARTICOLO ON ARTICOLO.ART_NO = RENTEDART.ART_NO');
DM.IBDataSetRented.SelectSQL.Add('WHERE RENTEDART.SCHED_NO = :SCHEDNO ORDER BY ARTICOLO.TIPO');
DM.IBDataSetRented.Prepare;
 DM.IBDataSetRented.Params.ByName('SCHEDNO').AsInteger:=DM.IBDataSetScheduleSCHED_NO.AsInteger;
 DM.IBDataSetRented.open;
end;
end;

procedure TMenu.BitBtn25Click(Sender: TObject);
begin
Dm.IBQueryZFact.Close;
dm.IBQueryZFact.SQL.Clear;
dm.IBQueryZFact.SQL.Add('SELECT RENTEDART.*, ARTICOLO.* FROM RENTEDART JOIN ARTICOLO  ON ARTICOLO.ART_NO = RENTEDART.ART_NO WHERE (RENTEDART.SCHED_NO = :SCHEDNO) AND (ARTICOLO.TIPO LIKE "SCI%") ORDER BY ARTICOLO.TIPO');
dm.IBQueryZFact.Prepare;
dm.IBQueryZFact.Params.ParamByName('SCHEDNO').Value:=DM.IBDataSetScheduleSCHED_NO.Value;
DM.IBQueryZFact.Open;
RepZFact.PrinterSettings.PrinterIndex:=Printer.Printers.IndexOf(dm.IBDataSetLocalParamPAPER_PRINTER.AsString);
if preview3.Checked=false then
RepZfact.Print
else
RepZfact.Preview;
end;

procedure TMenu.TabSheet1Hide(Sender: TObject);
begin
EditCognome.Clear;
EditNome.Clear;
EditEanCode.Clear;
//EditEANCode.SetFocus;
if (DM.IBDataSetClienti.State= dsEdit) or (DM.IBDataSetClienti.State= dsInsert) then
DM.IBDataSetClienti.Post;
end;

procedure TMenu.TabSheet12Show(Sender: TObject);
begin
DM.IBDataSetArticolo.Close;
dm.IBDataSetArticolo.SelectSQL.Clear;
//DM.IBDataSetArticolo.SelectSQL.Add('SELECT * FROM ARTICOLO WHERE (CLI_NO="'+DM.IBDataSetClientiCLI_NO.AsString+'" AND AVAILABLE="CV")');
DM.IBDataSetArticolo.SelectSQL.Add('SELECT * FROM ARTICOLO WHERE (CLI_NO="'+DM.IBDataSetClientiCLI_NO.AsString+'" AND CV=1)');
DM.IBDataSetArticolo.Open;
end;

procedure TMenu.BitBtn26Click(Sender: TObject);
begin
dm.IBDataSetArticolo.Insert;
dm.IBDataSetArticoloCLI_NO.AsInteger:=dm.IBDataSetClientiCLI_NO.AsInteger;
//dm.IBDataSetArticoloAVAILABLE.Value:='DISPONIBILE';
dm.IBDataSetArticoloCV.AsInteger:=1;
DM.IBDataSetArticoloOWNER.AsString:=Account.Operatore;

end;

procedure TMenu.DBEdit72Exit(Sender: TObject);
begin
//if DM.IBDataSetParamRICUSATO.Value<>0 then
//if (DM.IBDataSetArticoloPREZZORIS.AsFloat = 0) or DM.IBDataSetArticoloPREZZORIS.IsNull then
//DM.IBDataSetArticoloPREZZORIS.AsFloat:=dM.IBDataSetArticoloPREZZOSCONT.Value+(dM.IBDataSetArticoloPREZZOSCONT.Value*DM.IBDataSetParamRICUSATO.Value/100)
//else
//DM.IBDataSetArticoloPREZZORIS.AsFloat:=0;

end;

procedure TMenu.DBEdit65Exit(Sender: TObject);
begin
DblookupCombobox6.SetFocus;
end;

procedure TMenu.BitBtn23Click(Sender: TObject);
begin
Bitbtn32Click(nil);
{if ACCCONV.ShowModal=Mrok then
/ begin
  if ACCCONV.ClassValue > 0 then
   begin
   if Selledart.ShowModal = MrOk then
    begin
    //DM.IBDataSetArticoloINCVENDITA.Value:=Selledart.HKCurrEdit1.Value;
    DM.IBDataSetArticoloVENDUTODA.Value:=Account.Operatore;
    DM.IBDataSetArticoloEXPIREDATE.Value:=today;
    DM.IBDataSetArticoloAVAILABLE.Value:='VENDUTO';
    end
    else
    DM.IBDataSetArticoloINCVENDITA.Value:=0;
   end;
 end; }

end;

procedure TMenu.Memo5Exit(Sender: TObject);
begin
DblookUpcombobox6.SetFocus;
end;

procedure TMenu.DBEdit71KeyPress(Sender: TObject; var Key: Char);
begin
if Key= ^I then
begin
DM.IBDataSetArticoloPREZZOPUB.EditMask:='€.9999,99;1;_';
DbEdit71.ReadOnly:=false;
end;

end;

procedure TMenu.DBEdit71Exit(Sender: TObject);
begin
DBEdit71.ReadOnly:=true;
end;

procedure TMenu.TabSheet12Hide(Sender: TObject);
begin
//Pagecontrol1.ActivePageIndex:=0;
Tabsheet12.TabVisible:=false;
//Tabsheet1.SetFocus;
//EditCognome.OnChange(sender);
end;

procedure TMenu.BitBtn27Click(Sender: TObject);
begin
if ACCCONV.ShowModal=Mrok then
 begin
  if ACCCONV.ClassValue > 0 then
   DM.IBDataSetArticoloDATASALDOCLI.Value:=today;
   DM.IBDataSetArticolo.Post;
   end
  else
  begin
   DM.IBDataSetArticoloDATASALDOCLI.Clear;
   DM.IBDataSetArticolo.Cancel;
  end;
end;

procedure TMenu.DBGrid12DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
if DM.IBDataSetArticoloAVAILABLE.AsString='VENDUTO' then
begin
if not DM.IBDataSetArticoloDATASALDOCLI.IsNull then
DBGrid12.Canvas.Font.Color := clLime
else
DBGrid12.Canvas.Font.Color := clYellow;
end
else
DBGrid12.Canvas.Font.Color := clRed;
DBGrid12.DefaultDrawColumnCell(Rect,DataCol,Column, State);
end;

procedure TMenu.BitBtn28Click(Sender: TObject);
var tipo,stagione,brand,descrizione,misura,colore:string;
    prezzopub,prezzoris,prezzoscont:real;
begin
if not (DM.IBDataSetArticolo.State in [dsInsert,dsEdit]) then
begin
tipo:=DM.IBDataSetArticoloTIPO.AsString;
stagione:=DM.IBDataSetArticoloSTAGIONE.AsString;
brand:=DM.IBDataSetArticoloBRAND.AsString;
descrizione:=DM.IBDataSetArticoloDESCRIZIONE.AsString;
misura:=DM.IBDataSetArticoloMISURA.AsString;
colore:=DM.IBDataSetArticoloCOLORE.AsString;
prezzopub:=DM.IBDataSetArticoloPREZZOPUB.AsCurrency;
prezzoris:=DM.IBDataSetArticoloPREZZORIS.AsCurrency;
prezzoscont:=DM.IBDataSetArticoloPREZZOSCONT.AsCurrency;
DM.IBDataSetArticolo.Append;
DM.IBDataSetArticoloTIPO.Value:=tipo;
DM.IBDataSetArticoloSTAGIONE.Value:=stagione;
DM.IBDataSetArticoloBRAND.Value:=brand;
DM.IBDataSetArticoloDESCRIZIONE.Value:=descrizione;
DM.IBDataSetArticoloMISURA.Value:=misura;
DM.IBDataSetArticoloCOLORE.Value:=colore;
DM.IBDataSetArticoloPREZZOPUB.Value:=prezzopub;
DM.IBDataSetArticoloPREZZORIS.Value:=prezzoris;
DM.IBDataSetArticoloPREZZOSCONT.Value:=prezzoscont;
DM.IBDataSetArticolo.Post;
end
else
MessageDlg('Prima Di Dupplicare Salvare Le Modifiche', mtinformation,[mbOk], 0);


end;

procedure TMenu.DBEdit21Exit(Sender: TObject);
begin
DbLookUpCombobox1.SetFocus;
end;

procedure TMenu.DBEdit15Enter(Sender: TObject);
begin
DM.IBDataSetArticoloPREZZORIS.EditMask:='€.9999,99;1;_'
end;

procedure TMenu.DBEdit76Enter(Sender: TObject);
begin
DM.IBDataSetArticoloPREZZOPUB.EditMask:='€.9999,99;1;_'

end;

procedure TMenu.DBEdit77Enter(Sender: TObject);
begin
DM.IBDataSetArticoloPREZZORIS.EditMask:='€.9999,99;1;_'

end;

procedure TMenu.DBEdit78Enter(Sender: TObject);
begin
DM.IBDataSetArticoloPREZZOSCONT.EditMask:='€.9999,99;1;_'

end;

procedure TMenu.DBEdit78Exit(Sender: TObject);
begin
DBlookupcombobox1.SetFocus;
end;

procedure TMenu.DBEdit76KeyPress(Sender: TObject; var Key: Char);
begin
if Key= ^I then
begin
DBEdit76.ReadOnly:=false;
DM.IBDataSetArticoloPREZZOPUB.EditMask:='€.9999,99;1;_'
end;
end;

procedure TMenu.DBEdit76Exit(Sender: TObject);
begin
DBEdit76.ReadOnly:=true;

end;

procedure TMenu.BitBtn29Click(Sender: TObject);
begin
RepArtGeneral.QRDBText2.DataField:=DM.IBDataSetParamEANTOSCAN.Value;
dm.IBDataSetArticolo.Close;
dm.IBDataSetArticolo.SelectSQL.Clear;
IF Combobox16.Text='GENERALI' then
dm.IBDataSetArticolo.SelectSQL.add('Select * from Articolo Where Brand= "NEUTRA" Order By Art_no');
IF Combobox16.Text='TUTTI' then
dm.IBDataSetArticolo.SelectSQL.add('Select * from Articolo Order By Art_no');
IF (Combobox16.Text<>'TUTTI') and (Combobox16.Text<>'GENERALI') then
dm.IBDataSetArticolo.SelectSQL.add('Select * from Articolo Where Tipo= "'+Combobox16.Text+'" Order By Art_no ');
dm.IBDataSetArticolo.Open;
RepArtGeneral.QuickRep1.Preview;

end;

procedure TMenu.BitBtn30Click(Sender: TObject);
begin
if not DM.IBDataSetArticolo.IsEmpty then
begin
RepContov.QuickRep1.PrinterSettings.FirstPage:=1;
RepContov.Quickrep1.PrinterSettings.LastPage:=1;
Repcontov.QuickRep1.PrinterSettings.PrinterIndex:=Printer.Printers.IndexOf(dm.IBDataSetLocalParamPAPER_PRINTER.AsString);
if preview1.Checked=false then
RepContov.QuickRep1.Print
else
RepContov.QuickRep1.Preview;
end;
end;

procedure TMenu.ComboBox14Enter(Sender: TObject);
begin
dbgrid13.DataSource:=nil;
Combobox14.Clear;
DM.IBQueryTemp.Close;
DM.IBQueryTemp.SQL.Clear;
DM.IBQueryTemp.SQL.Add('SELECT DISTINCT RDB$RELATION_NAME');
DM.IBQueryTemp.SQL.Add('FROM RDB$RELATION_CONSTRAINTS');
DM.IBQueryTemp.Open;
DM.IBQueryTemp.First;
while not DM.IBQueryTemp.Eof do
begin
Combobox14.Items.Add(DM.IBQueryTemp.Fields.Fields[0].asstring);
DM.IBQueryTemp.Next;
end;
DM.IBQueryTemp.Close;
dbgrid13.DataSource:=DM.DSQueryTemp;
end;

procedure TMenu.ComboBox14Select(Sender: TObject);
begin
DM.IBQueryTemp.Close;
DM.IBQueryTemp.SQL.Clear;
DM.IBQueryTemp.SQL.Add('SELECT *');
DM.IBQueryTemp.SQL.Add('FROM '+ComboBox14.Text);
if label145.Caption<>'' then
DM.IBQueryTemp.SQL.Add('ORDER BY '+Label145.Caption);
DM.IBQueryTemp.Open;
end;

procedure TMenu.ComboBox16Enter(Sender: TObject);
begin
DM.IBQueryTemp.Close;
dm.IBQueryTemp.SQL.Clear;
DM.IBQueryTemp.SQL.Add('SELECT DISTINCT TIPO FROM ARTICOLO');
dm.IBQueryTemp.Open;
dm.IBQueryTemp.First;
(Sender as tcombobox).Clear;
(Sender as tcombobox).Items.Add('TUTTI');
(Sender as tcombobox).Items.Add('GENERALI');
while not dm.IBQueryTemp.Eof do
begin
if DM.IBQueryTemp.Fields.Fields[0].asstring<>'' then
(Sender as tcombobox).Items.Add(DM.IBQueryTemp.Fields.Fields[0].asstring);
DM.IBQueryTemp.Next;
end;
end;

procedure TMenu.ComboBox17Enter(Sender: TObject);
var yearmin,monthmin,daymin,yearmax,monthmax,daymax:word;
  i: integer;
begin
combobox17.Clear;
combobox17.Items.Add('TUTTI');
DM.IBQueryTemp.Close;
DM.IBQueryTemp.SQL.Clear;
DM.IBQueryTemp.SQL.Add('select Min(DataIntro),Max(dataIntro) from schedule');
DM.IBQueryTemp.Open;
if not DM.IBQueryTemp.IsEmpty then
begin
decodedate(DM.IBQueryTemp.Fields.Fields[0].AsDateTime,YearMin,MonthMin,DayMin);
decodedate(DM.IBQueryTemp.Fields.Fields[1].AsDateTime,YearMax,MonthMax,DayMax);
if DM.IBQueryTemp.Fields.Fields[0].AsDateTime >  strtodate('29/09/'+inttostr(Yearmin)) then
yearmin:=yearmin
else
yearmin:=yearmin-1;
if DM.IBQueryTemp.Fields.Fields[1].AsDateTime >  strtodate('29/09/'+inttostr(Yearmax)) then
Yearmax:=yearmax
else
yearmax:=yearmax-1;
for i := yearmin to yearmax do
combobox17.Items.Add('AI '+inttostr(i)+'-'+inttostr(i+1));
end;
end;

procedure TMenu.ComboBox17Select(Sender: TObject);
begin
dM.IBQueryTemp.Close;
dM.IBQueryTemp.SQL.Clear;
dM.IBQueryTemp.SQL.Add('Select Min(Dataintro),Max(Dataintro) from Schedule');
dM.IBQueryTemp.Open;
if Combobox17.Text='TUTTI' then
begin
Edit58.Enabled:=True;
Edit59.Enabled:=true;
Edit58.Text:=DM.IBQueryTemp.Fields.Fields[0].asstring;
Edit59.Text:=DM.IBQueryTemp.Fields.fields[1].asstring;
DM.IBDataSetSchedule.Close;
DM.IBDataSetSchedule.SelectSQL.Clear;
DM.IBDataSetSchedule.SelectSQL.Add('SELECT COGNRAGSOC, NOME, INDIRIZZO, N_DOC, SCHEDULE.*');
DM.IBDataSetSchedule.SelectSQL.Add('FROM SCHEDULE JOIN CLIENTI ON CLIENTI.CLI_NO = SCHEDULE.CLI_NO');
if not (combobox17.Text='') then
DM.IBDataSetSchedule.SelectSQL.Add('WHERE DATAINTRO BETWEEN "'+DecForSqlDate(strtodate(edit58.Text))+'" AND "'+DecForSqlDate(strtodate(edit59.Text))+'"');
DM.IBDataSetSchedule.SelectSQL.Add('ORDER BY SCHED_NO');
DM.IBDataSetSchedule.Open;
SpeedButton12.Enabled:=true;
SpeedButton13.Enabled:=true;
end
else
begin
Edit58.Enabled:=false;
Edit59.Enabled:=false;
SpeedButton12.Enabled:=false;
SpeedButton13.Enabled:=false;
Edit58.Text:='30/09/'+copy(combobox17.Text,pos(' ',combobox17.Text)+1,4);
Edit59.text:='29/09/'+copy(combobox17.Text,pos('-',combobox17.Text)+1,4);
DM.IBDataSetSchedule.Close;
DM.IBDataSetSchedule.SelectSQL.Clear;
DM.IBDataSetSchedule.SelectSQL.Add('SELECT COGNRAGSOC, NOME, INDIRIZZO, N_DOC, SCHEDULE.*');
DM.IBDataSetSchedule.SelectSQL.Add('FROM SCHEDULE JOIN CLIENTI ON CLIENTI.CLI_NO = SCHEDULE.CLI_NO');
if not (combobox17.Text='') then
DM.IBDataSetSchedule.SelectSQL.Add('WHERE DATAINTRO BETWEEN "'+DecForSqlDate(strtodate(edit58.Text))+'" AND "'+DecForSqlDate(strtodate(edit59.Text))+'"');
DM.IBDataSetSchedule.SelectSQL.Add('ORDER BY SCHED_NO');
DM.IBDataSetSchedule.Open;

end;
end;

procedure TMenu.DBGrid13CellClick(Column: TColumn);
begin
label145.Caption:=dbgrid13.SelectedField.FieldName;

end;

procedure TMenu.DBGrid1DblClick(Sender: TObject);
begin
//if (DBGrid1.SelectedField.FieldName = 'COGNRAGSOC') OR (DBGrid1.SelectedField.FieldName = 'NOME') THEN
//Bitbtn22click(Sender);
 DM.IBDataSetClienti.Close;
 DM.IBDataSetClienti.SelectSQL.Clear;
 DM.IBDataSetClienti.SelectSQL.Add('SELECT *');
 DM.IBDataSetClienti.SelectSQL.Add('FROM CLIENTI');
 DM.IBDataSetClienti.SelectSQL.Add('ORDER BY '+DBGrid1.SelectedField.FieldName);
 DM.IBDataSetClienti.Open;
end;

procedure TMenu.DBEdit82Enter(Sender: TObject);
begin
DM.IBDataSetParamRICUSATO.EditMask:='999%;1;_';
end;

procedure TMenu.Button30Click(Sender: TObject);
begin
if not DM.IBTransaction10.InTransaction then
DM.IBTransaction10.StartTransaction;
DM.IBDataSetSchedule.DisableControls;
DM.IBDataSetSchedule.First;
while not DM.IBDataSetSchedule.Eof do
begin
DM.IBQueryTemp.Close;
dm.IBQueryTemp.SQL.Clear;
DM.IBQueryTemp.SQL.Add('UPDATE SCHEDULE SET EANCODE="'+Ean39Gen1('SCHED'+'2010',DM.IBDataSetScheduleSCHED_NO.AsString) +'", EANCODE2="'+Ean39Gen2(DM.IBDataSetParamPRE_SCHED_NO.AsString,DM.IBDataSetScheduleSCHED_NO.AsString)+'" WHERE SCHED_NO="'+dm.IBDataSetScheduleSCHED_NO.AsString+'"');
dm.IBQueryTemp.ExecSQL;
DM.IBDataSetSchedule.Next;
end;
DM.IBDataSetSchedule.EnableControls;
DM.IBTransaction10.Commit;
DM.IBDataSetSchedule.Close;
DM.IBDataSetSchedulE.Open;

end;

procedure TMenu.Button31Click(Sender: TObject);
begin
while DM.IBTransaction10.InTransaction do
DM.IBTransaction10.Commit;
DM.IBTransaction10.StartTransaction;
DM.IBDataSetOp.DisableControls;
DM.IBDataSetOp.First;
while not DM.IBDataSetOp.Eof do
begin
DM.IBQueryTemp.Close;
dm.IBQueryTemp.SQL.Clear;
DM.IBQueryTemp.SQL.Add('UPDATE OPERATORI SET EANCODE="'+Ean39Gen1(DM.IBDataSetOpCOGNOME.AsString+DM.IBDataSetOpNOME.AsString,DM.IBDataSetOpDIP_NO.AsString)+'", EANCODE2="'+Ean39Gen2(DM.IBDataSetParamPRE_OP_NO.AsString,DM.IBDataSetOpDIP_NO.AsString) +'" WHERE DIP_NO="'+dm.IBDataSetOpDIP_NO.AsString+'"');
DM.IBQueryTemp.Prepare;
dm.IBQueryTemp.open;
DM.IBDataSetOp.Next;
end;
DM.IBTransaction10.Commit;
DM.IBDataSetOp.EnableControls;
DM.IBDataSetOp.Close;
DM.IBDataSetOp.Open;

end;

procedure TMenu.Button32Click(Sender: TObject);
var prova:string;
    i:integer;
begin
if not DM.IBTransaction10.InTransaction then
DM.IBTransaction10.StartTransaction;
DM.IBDataSetClienti.DisableControls;
DM.IBDataSetClienti.First;
while not DM.IBDataSetClienti.Eof do
begin
if DM.IBDataSetClientiEANCODE2.IsNull then
begin
DM.IBQueryTemp.Close;
dm.IBQueryTemp.SQL.Clear;
DM.IBQueryTemp.SQL.Add('UPDATE CLIENTI SET EANCODE="'+Ean39Gen1(DM.IBDataSetClientiCOGNRAGSOC.AsString+DM.IBDataSetClientiNOME.AsString,DM.IBDataSetClientiCLI_NO.AsString)+'",EANCODE2="'+Ean39Gen2(DM.IBDataSetParamPREF_CLI_NO.AsString,DM.IBDataSetClientiCLI_NO.AsString)+'" WHERE CLI_NO="'+dm.IBDataSetClientiCLI_NO.AsString+'"');
dm.IBQueryTemp.ExecSQL;
end;
DM.IBDataSetClienti.Next;
end;

DM.IBDataSetClienti.EnableControls;
DM.IBTransaction10.Commit;
DM.IBDataSetClienti.Close;
DM.IBDataSetClienti.Open;

{if not DM.IBTransaction10.InTransaction then
 DM.IBTransaction10.StartTransaction;
  DM.IBQueryTemp.Close;
  DM.IBQueryTemp.SQL.Clear;
  DM.IBQueryTemp.SQL.Add('UPDATE CLIENTI');
  DM.IBQueryTemp.SQL.Add('SET STATOTESSERA = "NONRICHIESTA"');
  DM.IBQueryTemp.SQL.Add('WHERE STATOTESSERA IS NULL');
  DM.IBQueryTemp.Open;
 DM.IBTransaction10.Commit;
 DM.IBDataSetClienti.Close;
 DM.IBDataSetClienti.Open;}
//prova:= Ean39gen('01',DM.IBDataSetClientiCLI_NO.AsString);
end;

procedure TMenu.Button33Click(Sender: TObject);
begin
if not DM.IBTransaction10.InTransaction then
DM.IBTransaction10.StartTransaction;
DM.IBDataSetArticolo.DisableControls;
DM.IBDataSetArticolo.First;
while not DM.IBDataSetArticolo.Eof do
begin
DM.IBQueryTemp.Close;
dm.IBQueryTemp.SQL.Clear;
//DM.IBQueryTemp.SQL.Add('UPDATE ARTICOLO SET EANCODE="'+Ean39Gen1(DM.IBDataSetArticoloDESCRIZIONE.AsString+DM.IBDataSetArticoloBRAND.AsString,DM.IBDataSetArticoloART_NO.AsString)+'",EANCODE2="'+Ean39Gen2(DM.IBDataSetParamPREF_ART_NO.AsString,DM.IBDataSetArticoloART_NO.AsString) +'" WHERE ART_NO="'+dm.IBDataSetArticoloART_NO.AsString+'"');
DM.IBQueryTemp.SQL.Add('UPDATE ARTICOLO SET EANCODE="'+Ean39Gen2(DM.IBDataSetParamPREF_ART_NO.AsString,DM.IBDataSetArticoloART_NO.AsString)+'", EANCODE2="'+Ean39Gen2(DM.IBDataSetParamPREF_ART_NO.AsString,DM.IBDataSetArticoloART_NO.AsString)+'" WHERE ART_NO="'+dm.IBDataSetArticoloART_NO.AsString+'"');
dm.IBQueryTemp.ExecSQL;
DM.IBDataSetArticolo.Next;
end;
DM.IBDataSetArticolo.EnableControls;
DM.IBTransaction10.Commit;
DM.IBDataSetArticolo.Close;
DM.IBDataSetArticolo.Open;

{if not DM.IBTransaction10.InTransaction then
 DM.IBTransaction10.StartTransaction;
  DM.IBQueryTemp.Close;
  DM.IBQueryTemp.SQL.Clear;
  DM.IBQueryTemp.SQL.Add('UPDATE OPERATORI');
  DM.IBQueryTemp.SQL.Add('SET TESSERA = 0');
  DM.IBQueryTemp.SQL.Add('WHERE TESSERA IS NULL');
  DM.IBQueryTemp.Open;
 DM.IBTransaction10.Commit;
 DM.IBDataSetClienti.Refresh;}

end;

procedure TMenu.Button34Click(Sender: TObject);
begin
if not DM.IBTransaction10.InTransaction then
DM.IBTransaction10.StartTransaction;
  DM.IBQueryTemp.Close;
  dm.IBQueryTemp.SQL.Clear;
  DM.IBQueryTemp.SQL.Add('DELETE FROM SEASON');
  dm.IBQueryTemp.ExecSQL;
DM.IBTransaction10.Commit;
DM.IBQueryTemp.Close;
dm.IBQueryTemp.SQL.Clear;
DM.IBQueryTemp.SQL.Add('SELECT DISTINCT STAGIONE FROM ARTICOLO');
dm.IBQueryTemp.Open;
dm.IBQueryTemp.First;
if not DM.IBTransaction4.InTransaction then
DM.IBTransaction4.StartTransaction;
 while not DM.IBQueryTemp.Eof do
  begin
  DM.IBDataSetStagione.Close;
  dm.IBDataSetStagione.SelectSQL.Clear;
  DM.IBDataSetStagione.SelectSQL.Add('INSERT INTO SEASON (STAGIONE) VALUES ("'+dm.IBQueryTemp.Fields.Fields[0].AsString+'")');
  dm.IBDataSetStagione.ExecSQL;
  DM.IBQueryTemp.Next;
  end;
dm.IBTransaction4.Commit;
  dm.IBDataSetStagione.SelectSQL.Clear;
  DM.IBDataSetStagione.SelectSQL.Add('SELECT * FROM SEASON');
  DM.IBDataSetStagione.Open;

end;

procedure TMenu.Button35Click(Sender: TObject);
begin
if not DM.IBTransaction10.InTransaction then
DM.IBTransaction10.StartTransaction;
  DM.IBQueryTemp.Close;
  dm.IBQueryTemp.SQL.Clear;
  DM.IBQueryTemp.SQL.Add('DELETE FROM MARCHIO');
  dm.IBQueryTemp.ExecSQL;
DM.IBTransaction10.Commit;
DM.IBQueryTemp.Close;
dm.IBQueryTemp.SQL.Clear;
DM.IBQueryTemp.SQL.Add('SELECT DISTINCT BRAND FROM ARTICOLO');
dm.IBQueryTemp.Open;
dm.IBQueryTemp.First;
if not DM.IBTransaction5.InTransaction then
DM.IBTransaction5.StartTransaction;
 while not DM.IBQueryTemp.Eof do
  begin
  DM.IBDataSetBrand.Close;
  dm.IBDataSetBrand.SelectSQL.Clear;
  DM.IBDataSetBrand.SelectSQL.Add('INSERT INTO MARCHIO (BRANDS) VALUES ("'+dm.IBQueryTemp.Fields.Fields[0].AsString+'")');
  dm.IBDataSetBrand.ExecSQL;
  DM.IBQueryTemp.Next;
  end;
dm.IBTransaction5.Commit;
  dm.IBDataSetBrand.SelectSQL.Clear;
  DM.IBDataSetBrand.SelectSQL.Add('SELECT * FROM MARCHIO');
  DM.IBDataSetBrand.Open;

end;

procedure TMenu.Button36Click(Sender: TObject);
begin
if not DM.IBTransaction10.InTransaction then
DM.IBTransaction10.StartTransaction;
DM.IBQueryTemp.Close;
DM.IBQueryTemp.SQL.Clear;
DM.IBQueryTemp.SQL.Add('DELETE FROM TIPO_ARTICOLI');
DM.IBQueryTemp.ExecSQL;
DM.IBTransaction10.Commit;
DM.IBQueryTemp.Close;
dm.IBQueryTemp.SQL.Clear;
DM.IBQueryTemp.SQL.Add('SELECT DISTINCT TIPO FROM ARTICOLO');
dm.IBQueryTemp.Open;
dm.IBQueryTemp.First;
if not DM.IBTransaction5.InTransaction then
DM.IBTransaction5.StartTransaction;
 while not DM.IBQueryTemp.Eof do
  begin
  DM.IBDataSetBrand.Close;
  dm.IBDataSetBrand.SelectSQL.Clear;
  DM.IBDataSetBrand.SelectSQL.Add('INSERT INTO TIPO_ARTICOLI (TYPE_ART) VALUES ("'+dm.IBQueryTemp.Fields.Fields[0].AsString+'")');
  dm.IBDataSetBrand.ExecSQL;
  DM.IBQueryTemp.Next;
  end;
 dm.IBTransaction5.Commit;
  dm.IBDataSetBrand.SelectSQL.Clear;
  DM.IBDataSetBrand.SelectSQL.Add('SELECT * FROM TIPO_ARTICOLI');
  DM.IBDataSetBrand.Open;

end;

procedure TMenu.Button13Click(Sender: TObject);
begin
FeeDayLateCalc1(Feetax);
end;

procedure TMenu.Button17Click(Sender: TObject);
begin
SetSchedStatoCons;
DM.IBDataSetSchedule.close;
DM.IBDataSetSchedule.Open;
TrimSetSchedStato;

end;

procedure TMenu.Button24Click(Sender: TObject);
begin
IF not (DM.DSArticolo.State = dsEdit) then
DM.IBDataSetArticolo.Edit;
DM.IBDataSetArticoloEXPIREDATE.Clear;
DM.IBDataSetArticoloINCVENDITA.Clear;
DM.IBDataSetArticoloAVAILABLE.Value:='DISPONIBILE';
DM.IBDataSetArticolo.post;

end;

procedure TMenu.Button25Click(Sender: TObject);
begin
if not DM.IBTransaction10.InTransaction then
 DM.IBTransaction10.StartTransaction;
  DM.IBQueryTemp.Close;
  DM.IBQueryTemp.SQL.Clear;
  DM.IBQueryTemp.SQL.Add('UPDATE CLIENTI');
  DM.IBQueryTemp.SQL.Add('SET STATOTESSERA = "NONRICHIESTA"');
  DM.IBQueryTemp.SQL.Add('WHERE STATOTESSERA IS NULL');
  DM.IBQueryTemp.Open;
 DM.IBTransaction10.Commit;
 DM.IBDataSetClienti.Close;
 DM.IBDataSetClienti.Open;

end;

procedure TMenu.Button27Click(Sender: TObject);
begin
if not DM.IBTransaction10.InTransaction then
 DM.IBTransaction10.StartTransaction;
  DM.IBQueryTemp.Close;
  DM.IBQueryTemp.SQL.Clear;
  DM.IBQueryTemp.SQL.Add('UPDATE OPERATORI');
  DM.IBQueryTemp.SQL.Add('SET TESSERA = 0');
  DM.IBQueryTemp.SQL.Add('WHERE TESSERA IS NULL');
  DM.IBQueryTemp.Open;
 DM.IBTransaction10.Commit;
 DM.IBDataSetClienti.Refresh;

end;

procedure TMenu.Button28Click(Sender: TObject);
begin
//FeeDayLateCalc(Feetax);
if not DM.IBTransaction10.InTransaction then
DM.IBTransaction10.StartTransaction;
DM.IBQueryTemp.Close;
DM.IBQueryTemp.SQL.Clear;
DM.IBQueryTemp.SQL.Add('UPDATE ARTICOLO');
DM.IBQueryTemp.SQL.Add('SET FLAGREPLAY = 0');
DM.IBQueryTemp.ExecSQL;
DM.IBTransaction10.Commit;

end;

procedure TMenu.Button29Click(Sender: TObject);
var i,ticono:integer;
EANCODE:string;
begin
if not DM.IBTransaction10.InTransaction then
DM.IBTransaction10.StartTransaction;
DM.IBQueryTemp.Close;
DM.IBQueryTemp.SQL.Clear;
DM.IBQueryTemp.SQL.Add('SELECT COUNT(*) FROM ETICART');
DM.IBQueryTemp.Open;
if (DM.IBQueryTemp.Fields.Fields[0].IsNull) or (DM.IBQueryTemp.Fields.Fields[0].AsInteger=0) then
ticono:=1
else
ticono:=DM.IBQueryTemp.Fields.Fields[0].AsInteger;
i:=strtoint(edit49.text);
repeat
EANCODE:='01'+INTTOHEX(ticono,8);
DM.IBQueryTemp.Close;
DM.IBQueryTemp.SQL.Clear;
DM.IBQueryTemp.SQL.Add('INSERT INTO ETICART (EANCODE) VALUES ("'+EANCODE+'")');
DM.IBQueryTemp.ExecSQL;
inc(ticono);
until ticono>i;
DM.IBTransaction10.Commit;
end;

procedure TMenu.Edit48DblClick(Sender: TObject);
begin
DM.IBQueryTemp.Close;
DM.IBQueryTemp.SQL.Clear;
DM.IBQueryTemp.SQL.Add('SELECT COUNT(*) FROM ETICART');
DM.IBQueryTemp.Open;
if DM.IBQueryTemp.Fields.Fields[0].IsNull or (DM.IBQueryTemp.Fields.Fields[0].AsInteger=0) then
Edit48.Text:='1'
else
Edit48.Text:=DM.IBQueryTemp.Fields.Fields[0].AsString;

end;


procedure TMenu.BitBtn31Click(Sender: TObject);
var Noloini:Tinifile;
begin
//Noloini:=Tinifile.Create(changefileext(Application.exename,'.ini'));
Noloini:=Tinifile.Create(AppDataPath+'nolosoft.ini');
try
Noloini.WriteString('SMTP','HOST',Edit50.Text);
Noloini.WriteString('MAIL','FROM',Edit51.Text);
Noloini.WriteString('SMTP','USERNAME',Edit53.Text);
Noloini.WriteString('SMTP','PASSWORD',Edit54.Text);
Noloini.WriteString('SMTP','PORT',Edit55.Text);
Noloini.WriteString('SMTP','SMSSERVER',Edit52.Text);
Noloini.WriteString('MAIL','TO',Edit56.Text);
finally
noloini.Free;
end;
end;

procedure TMenu.TabSheet18Show(Sender: TObject);
var Noloini:Tinifile;
begin
//Noloini:=Tinifile.Create(changefileext(Application.exename,'.ini'));
Noloini:=Tinifile.Create(AppDataPath+'nolosoft.ini');
try
Edit50.Text:=Noloini.ReadString('SMTP','HOST','serverps.psport.local');
Edit53.Text:=Noloini.ReadString('SMTP','USERNAME','');
Edit54.Text:=Noloini.ReadString('SMTP','PASSWORD','');
Edit55.Text:=Noloini.ReadString('SMTP','PORT','25');
Edit51.Text:=Noloini.ReadString('MAIL','FROM','');
Edit52.Text:=Noloini.ReadString('SMTP','SMSSERVER','');
Edit56.Text:=Noloini.ReadString('MAIL','TO','');
//IdSMTP2.SocksInfo.Host:=Noloini.ReadString('SMTP','HOST','serverps.psport.local');
//IdSMTP2.SocksInfo.UserID:=Noloini.ReadString('SMTP','USERNAME','');
//IdSMTP2.SocksInfo.Password:=Noloini.ReadString('SMTP','PASSWORD','');
//IdSMTP2.Port:=StrToint(Noloini.ReadString('SMTP','PORT','25'));
finally
noloini.Free;
end;

end;

procedure TMenu.TabSheet19Enter(Sender: TObject);
begin
if treeview1.Items.Count=0 then
begin
treeview1.Items.Clear;
Treeview1.Items.AddFirst(  nil,  'NOLEGGIO PARMASPORT'  ).Selected:=true;
end;
//DM.IBQueryTemp.Close;
//DM.IBQueryTemp.SQL.Clear;
//DM.IBQueryTemp.SQL.Add('SELECT DISTINCT CLIENTI.COGNRAGSOC, CLIENTI.NOME');
//DM.IBQueryTemp.SQL.Add('FROM SCHEDULE JOIN CLIENTI ON SCHEDULE.CLI_NO=CLIENTI.CLI_NO');
//DM.IBQueryTemp.SQL.Add('ORDER BY CLIENTI.COGNRAGSOC');
//DM.IBQueryTemp.Open;
//DM.IBQueryTemp.First;
//while not DM.IBQueryTemp.Eof do
//begin
//TreeView1.Items.AddChild(Treeview1.Items.Item[0],DM.IBQueryTemp.Fields.Fields[0].asstring+' '+DM.IBQueryTemp.Fields.Fields[1].asstring);
//DM.IBQueryTemp.Next;
end;

//procedure TMenu.IdSMTP2Status(axSender: TObject; const axStatus: TIdStatus;
//  const asStatusText: String);
//begin
 // Memo1.Lines.Insert(0,'Status: ' + AsStatusText);

//end;






function TMenu.SendHtmlMessage(AddrTo:string; Subject:string; Body:string; Attachfile:string; tipo:integer): Boolean;
var
  Memotemp:TStringlist;
  cid: widestring;
  sttmp:String;
  ind1:integer;
  ora:real;
  attfile: TIdAttachment;
  attimg: TIdAttachment;
  logo,bdy:Tidtext;
  imgpath:string;
begin
  Memotemp:=TStringlist.Create;
  ora:=now;
IdSMTP1.Host :=edit50.Text;       //'authsmtp.register.it';
IdSMTP1.Port :=strtoint(edit55.Text);       // 25;
idSMTP1.Username:=edit53.Text;      //'smtp@parmasport-rental.it';
idSMTP1.Password:=edit54.Text;    //'D41C477o@';
IdMessage1.From.Address := edit51.Text; //'noleggio@parmasport.it';
//IdMessage1.Subject   := Subject; //'test subject';
IdMessage1.Body.Clear;
//idmessage1.ContentType:= 'multipart/related; type="text/html"';

  if tipo=1 then
  begin
   Memotemp.LoadFromFile(getcurrentdir+'\Avviso noleggio riconsegna.html');
   sttmp:=memotemp.Text;
   sttmp  := StringReplace(sttmp, '%1', DM.IBDataSetScheduleNOME.AsString+' '+DM.IBDataSetScheduleCOGNRAGSOC.AsString,[rfReplaceAll, rfIgnoreCase]);
   sttmp  := StringReplace(sttmp, '%2', DM.IBDataSetScheduleDATATAKEBACK.AsString,[rfReplaceAll, rfIgnoreCase]);
   //cid := ExtractFilePath(Application.exename)+'Rental and repair Logo Parmasport.jpg';
   //sttmp  := StringReplace(sttmp, '%3', cid,[rfReplaceAll, rfIgnoreCase]);
   IdMessage1.Recipients.EMailAddresses := AddrTo; //'stefano@parmasport.it' ;
   Bdy := TIdText.Create(idmessage1.MessageParts);
   Bdy.Body.Text:=sttmp;
   Bdy.ContentType := 'text/html';
  // imgpath:= ExtractFilePath(Application.exename)+'Rental and repair Logo Parmasport.jpg';
   imgpath:= AppDataPath+'Rental and repair Logo Parmasport.jpg';

   attimg:= TIdAttachmentfile.Create(bdy.MessageParts, imgpath);
   attimg.ContentDisposition:='inline';
   attimg.ContentType := 'image/jpg';
   attimg.ExtraHeaders.Values['Content-ID']:='<%3>';
  end;

   if tipo=2 then
  begin
      IdMessage1.From.Address := 'stefano@parmasport.it';
   IdMessage1.Recipients.EMailAddresses := AddrTo+edit52.Text; //'stefano@parmasport.it' ;
 //  IdMessage1.Body.Text := body+' Numero Riconsegna: '+stringreplace(floattostr(ora), ',','/',[rfReplaceAll, rfIgnoreCase]);//'test email body';
  IdMessage1.Body.Text := body;

 end;

  if tipo=3 then
  begin
   Memotemp.LoadFromFile(getcurrentdir+'\Ricevuta riconsegna chiusura.html');
   sttmp:=memotemp.Text;
   sttmp  := StringReplace(sttmp, '%1', DM.IBDataSetScheduleNOME.AsString+' '+DM.IBDataSetScheduleCOGNRAGSOC.AsString,[rfReplaceAll, rfIgnoreCase]);
   sttmp  := StringReplace(sttmp, '%2', (stringreplace(floattostr(ora), ',','/',[rfReplaceAll, rfIgnoreCase])),[rfReplaceAll, rfIgnoreCase]);
  // cid := oSmtp.AddInline('D:\Noleggio 20-07-17 WebAddicted\Rental and repair Logo Parmasport.jpg' );
  // sttmp  := StringReplace(sttmp, '%3', cid,[rfReplaceAll, rfIgnoreCase]);
   sttmp  := StringReplace(sttmp, '%4', datetimetostr(ora),[rfReplaceAll, rfIgnoreCase]);
   sttmp  := StringReplace(sttmp, '%5', DM.IBDataSetScheduleSCHED_NO.AsString,[rfReplaceAll, rfIgnoreCase]);
   sttmp  := StringReplace(sttmp, '%6', DM.IBDataSetScheduleDATASTARTRENT.AsString,[rfReplaceAll, rfIgnoreCase]);
   sttmp  := StringReplace(sttmp, '%7', DM.IBDataSetScheduleDATATAKEBACK.AsString,[rfReplaceAll, rfIgnoreCase]);
   IdMessage1.Recipients.EMailAddresses := AddrTo; //'stefano@parmasport.it' ;
  // IdMessage1.Body.Text := sttmp;
   Bdy := TIdText.Create(idmessage1.MessageParts);
   Bdy.Body.Text:=sttmp;
   Bdy.ContentType := 'text/html';
  // imgpath:= ExtractFilePath(Application.exename)+'Rental and repair Logo Parmasport.jpg';

   imgpath:= AppDataPath+'Rental and repair Logo Parmasport.jpg';
   attimg:= TIdAttachmentfile.Create(bdy.MessageParts, imgpath);
   attimg.ContentDisposition:='inline';
   attimg.ContentType := 'image/jpg';
   attimg.ExtraHeaders.Values['Content-ID']:='<%3>';
   end;


if (attachfile <> '') then
 begin
     if FileExists(Attachfile) then
      TIdAttachmentFile.Create(idmessage1.MessageParts, attachFile);
 end;

IdSMTP1.Connect ;
IdSMTP1.Send(IdMessage1) ;
IdSMTP1.Disconnect;

 end;

function TMenu.SendEmailMessage(tipo:integer;AddrTo:string; Subject:string; Body:string; Attachfile:string): Boolean;
var
  Memotemp:TStringlist;
  cid: widestring;
  sttmp:String;
  ind1:integer;
  ora:real;
  idSMTP2: TIdSMTP;
  idmessage2: TIdMessage;
   attfile: TIdAttachment;
  attimg: TIdAttachment;
  testomail,logo,bdy:Tidtext;
  imgpath:string;
 begin
 //AddrTo:=Threademail.ValidmultipleMail(AddrTo);
 //if length(AddrTo)=0 then
 //exit;


 idsmtp2:=Tidsmtp.Create;
 idmessage2:=Tidmessage.Create;
 IdSMTP2.Host :=edit50.Text;       //'authsmtp.register.it';
IdSMTP2.Port :=strtoint(edit55.Text);       // 25;
idSMTP2.Username:=edit53.Text;      //'smtp@parmasport-rental.it';
idSMTP2.Password:=edit54.Text;    //'D41C477o@';
if tipo=1 then
begin
IdMessage2.From.Address := edit51.Text; //'noleggio@parmasport.it';
IdMessage2.Subject:= Subject; //'test subject';
IdMessage2.Body.Clear;
IdMessage2.Recipients.EMailAddresses := AddrTo; //'stefano@parmasport.it' ;
idmessage2.ContentType:= 'multipart/related; type="text/html"';
   Bdy := TIdText.Create(idmessage2.MessageParts);
   Bdy.Body.Text:=body;
   Bdy.ContentType := 'text/html';
//   imgpath:= ExtractFilePath(Application.exename)+'Rental and repair Logo Parmasport.jpg';
   imgpath:= AppDataPath+'Rental and repair Logo Parmasport.jpg';

   attimg:= TIdAttachmentfile.Create(idmessage2.MessageParts, imgpath);
   attimg.ContentDisposition:='inline';
   attimg.ContentType := 'image/jpg';
   attimg.ExtraHeaders.Values['Content-ID']:='<%3>';
end;
if tipo=2 then
begin
IdMessage2.From.Address := 'stefano@parmasport.it'; //'noleggio@parmasport.it';
IdMessage2.Body.Clear;
IdMessage2.Recipients.EMailAddresses := AddrTo+edit52.text; //'stefano@parmasport.it' ;
idmessage2.ContentType:= 'text/plain';
idmessage2.Body.Text:=body;
end;
 if (attachfile <> '') then
 begin
     if FileExists(Attachfile) then
     TIdAttachmentFile.Create(idmessage2.MessageParts, attachFile);
end;
IdSMTP2.Connect ;
IdSMTP2.Send(IdMessage2) ;
IdSMTP2.Disconnect;
end;

procedure TMenu.PreAvvisoConsegna;
var ibquery1,ibquery:Tibquery;
    ThreadEmail : TThreadSendMail;
    Memotemp:TStringlist;
    sttmp:String;
    ibtransactionX:TIbtransaction;
    begin
    ibtransactionx:=Tibtransaction.Create(nil);
    ibtransactionx.DefaultDatabase:=DM.IBDatabase1;
    ibtransactionx.DefaultAction:=TACommitRetaining;
    memotemp:=TStringlist.Create;
//    Memotemp.LoadFromFile(getcurrentdir+'\Avviso Noleggio Riconsegna.html');
ibquery:=Tibquery.Create(nil);
ibquery.Database:=DM.IBDatabase1;
ibquery.Transaction:=DM.IBTransaction7;
ibquery1:=Tibquery.Create(nil);
ibquery1.Database:=DM.IBDatabase1;
ibquery1.Transaction:=IBTransactionx;
 if not ibtransactionx.InTransaction then
      ibtransactionx.StartTransaction;


// INIZIO INVIO PREAVVISO
ibquery.SQL.Add('SELECT CLIENTI.NOME,CLIENTI.COGNRAGSOC,CLIENTI.CELLULARE,CLIENTI.EMAIL,SCHEDULE.SCHED_NO, SCHEDULE.DATATAKEBACK,');
ibquery.SQL.Add('SCHEDULE.DATASTARTRENT FROM CLIENTI JOIN SCHEDULE ON CLIENTI.CLI_NO=SCHEDULE.CLI_NO WHERE SCHEDULE.DATATAKEBACK="'+DecForSqlDate(now+1)+'" AND SCHEDULE.STATO<>"CHIUSA" AND SCHEDULE.DATELASTADV IS NULL AND SCHEDULE.DATAINTRO>"'+DecForSqlDate(strtodate(DM.IBDataSetParamSTRADVFRMDATA.AsString))+'"');
ibquery.SQL.Add('AND STOPADV=0');
ibquery.Open;

if not Ibquery.IsEmpty then
 begin
  ibquery.First;
  while not ibquery.Eof do
   begin
    if (DM.IBDataSetLocalParamEMAILCONSEGNA.Value=1) and (ibquery.Fields.Fieldbyname('EMAIL').AsString<>'') and ( length(ibquery.Fields.Fieldbyname('EMAIL').AsString)>1) then
     begin
     Memotemp.LoadFromFile(getcurrentdir+'\Avviso Noleggio Riconsegna.html');
      sttmp:=memotemp.Text;
      sttmp:= StringReplace(sttmp, '%1', ibquery.Fields.Fieldbyname('Nome').AsString+' '+ibquery.Fields.Fieldbyname('CognRagSoc').AsString,[rfReplaceAll, rfIgnoreCase]);
      sttmp:= StringReplace(sttmp, '%2', ibquery.Fields.Fieldbyname('Datatakeback').AsString,[rfReplaceAll, rfIgnoreCase]);
      ReportExport(NewschCli.QuickRep1,DM.IBDataSetLocalParamPATHFILEPDFSCHED.AsString+'\'+ibquery.Fieldbyname('SCHED_NO').AsString+'-'+ibquery.fieldbyname('COGNRAGSOC').asstring+'-'+ibquery.fieldbyname('NOME').asstring+'.PDF');
      SendEmailMessage(1,ibquery.Fields.Fieldbyname('EMAIL').AsString,'Ricevuta Noleggio',sttmp,DM.IBDataSetLocalParamPATHFILEPDFSCHED.AsString+'\'+ibquery.Fieldbyname('SCHED_NO').AsString+'-'+ibquery.fieldbyname('COGNRAGSOC').asstring+'-'+ibquery.fieldbyname('NOME').asstring+'.PDF');
     end;
    if (DM.IBDataSetLocalParamSMSCONSEGNA.Value=1) and (ibquery.Fields.Fieldbyname('CELLULARE').AsString<>'') then
     begin
      Memotemp.LoadFromFile(getcurrentdir+'\Avviso Noleggio Riconsegna sms.txt');
      sttmp:=memotemp.Text;
      sttmp:= StringReplace(sttmp, '%2', ibquery.Fields.Fieldbyname('Datatakeback').AsString,[rfReplaceAll, rfIgnoreCase]);
       //invio messaggio nuovo http
      if checkPhoneNumber(ibquery.Fields.Fieldbyname('CELLULARE').AsString) then
      SendSMS(edit_loginSMS.Text,edit_pswSMS.Text,sttmp,ibquery.Fields.Fieldbyname('CELLULARE').AsString,Edit_SenderSMS.Text,Edit_EndPInvioSMS.text);

       //invio messaggio vecchio modo
      //SendEmailMessage(2,ibquery.Fields.Fieldbyname('CELLULARE').AsString,'Ricevuta Noleggio',sttmp,'');


     end;
    if (DM.IBDataSetLocalParamSMSCONSEGNA.Value=1) or (DM.IBDataSetLocalParamEMAILCONSEGNA.Value=1) then
     Begin
       ibquery1.SQL.Add('UPDATE SCHEDULE SET DATELASTADV="'+DecForSqlDate(now)+'", NOADV=1 WHERE SCHEDULE.SCHED_NO= :numsched');
      ibquery1.ParamByName('numsched').Value:=ibquery.Fields.fieldbyname('sched_no').Value;
      ibquery1.ExecSQL;
    end;
   ibquery.Next;
   end;
end;  // FINE INVIO PREAVVISO

// INIZIO INVIO RITARDO1
 ibquery.Close;
 ibquery.SQL.Clear;
ibquery.SQL.Add('SELECT CLIENTI.NOME,CLIENTI.COGNRAGSOC,CLIENTI.CELLULARE,CLIENTI.EMAIL,SCHEDULE.SCHED_NO, SCHEDULE.DATATAKEBACK, SCHEDULE.DATAINTRO,');
ibquery.SQL.Add('SCHEDULE.DATASTARTRENT FROM CLIENTI JOIN SCHEDULE ON CLIENTI.CLI_NO=SCHEDULE.CLI_NO WHERE SCHEDULE.DATATAKEBACK="'+DecForSqlDate(now-2)+'" AND SCHEDULE.STATO="APERTA" AND SCHEDULE.DATAINTRO>"'+DecForSqlDate(strtodate(DM.IBDataSetParamSTRADVFRMDATA.AsString))+'"');
ibquery.SQL.Add('AND STOPADV=0');
ibquery.Open;

if not Ibquery.IsEmpty then
 begin
  ibquery.First;
  while not ibquery.Eof do
   begin
    if DM.IBDataSetLocalParamEMAILCONSEGNA.Value=1 then
     begin
     Memotemp.LoadFromFile(getcurrentdir+'\Avviso Ritardo1.html');
      sttmp:=memotemp.Text;
      sttmp:= StringReplace(sttmp, '%1', ibquery.Fields.Fieldbyname('Nome').AsString+' '+ibquery.Fields.Fieldbyname('CognRagSoc').AsString,[rfReplaceAll, rfIgnoreCase]);
      sttmp:= StringReplace(sttmp, '%2', ibquery.Fields.Fieldbyname('Sched_no').AsString,[rfReplaceAll, rfIgnoreCase]);
      sttmp:= StringReplace(sttmp, '%4', ibquery.Fields.Fieldbyname('Dataintro').AsString,[rfReplaceAll, rfIgnoreCase]);
      sttmp:= StringReplace(sttmp, '%5', ibquery.Fields.Fieldbyname('Datatakeback').AsString,[rfReplaceAll, rfIgnoreCase]);

    //  ReportExport(NewschCli.QuickRep1,DM.IBDataSetLocalParamPATHFILEPDFSCHED.AsString+'\'+ibquery.Fieldbyname('SCHED_NO').AsString+'-'+ibquery.fieldbyname('COGNRAGSOC').asstring+'-'+ibquery.fieldbyname('NOME').asstring+'.PDF');
      SendEmailMessage(1,ibquery.Fields.Fieldbyname('EMAIL').AsString,'AVVISO RITARDO CONSEGNA No.1',sttmp,'');
     end;
    if DM.IBDataSetLocalParamSMSCONSEGNA.Value=1 then
     begin
      Memotemp.LoadFromFile(getcurrentdir+'\Avviso noleggio riconsegna1 sms.txt');
      sttmp:=memotemp.Text;
      sttmp:= StringReplace(sttmp, '%2', ibquery.Fields.Fieldbyname('Datatakeback').AsString,[rfReplaceAll, rfIgnoreCase]);

      //invio messaggio nuovo http
      //SendEmailMessage(2,ibquery.Fields.Fieldbyname('CELLULARE').AsString,'',sttmp,'');
      //invio messaggio nuovo http
        if checkPhoneNumber(ibquery.Fields.Fieldbyname('CELLULARE').AsString) then
      SendSMS(edit_loginSMS.Text,edit_pswSMS.Text,sttmp,ibquery.Fields.Fieldbyname('CELLULARE').AsString,Edit_SenderSMS.Text,Edit_EndPInvioSMS.text);


     end;
    if (DM.IBDataSetLocalParamSMSCONSEGNA.Value=1) or (DM.IBDataSetLocalParamEMAILCONSEGNA.Value=1) then
     Begin
      ibquery1.Close;
       ibquery1.SQL.Clear;
       ibquery1.SQL.Add('UPDATE SCHEDULE SET DATELASTADV="'+DecForSqlDate(now)+'", NOADV=2 WHERE SCHEDULE.SCHED_NO= :numsched');
      ibquery1.ParamByName('numsched').Value:=ibquery.Fields.fieldbyname('sched_no').Value;
      ibquery1.ExecSQL;
      end;
   ibquery.Next;
   end;
end;  // FINE INVIO RITARDO1

 // INIZIO INVIO RITARDO2
 ibquery.Close;
 ibquery.SQL.Clear;
 ibquery.SQL.Add('SELECT CLIENTI.NOME,CLIENTI.COGNRAGSOC,CLIENTI.CELLULARE,CLIENTI.EMAIL,SCHEDULE.SCHED_NO, SCHEDULE.DATATAKEBACK,');
ibquery.SQL.Add('SCHEDULE.DATASTARTRENT FROM CLIENTI JOIN SCHEDULE ON CLIENTI.CLI_NO=SCHEDULE.CLI_NO WHERE SCHEDULE.DATATAKEBACK="'+DecForSqlDate(now-4)+'" AND SCHEDULE.STATO="APERTA" AND SCHEDULE.DATAINTRO>"'+DecForSqlDate(strtodate(DM.IBDataSetParamSTRADVFRMDATA.AsString))+'"');
ibquery.SQL.Add('AND STOPADV=0');
ibquery.Open;


 if not Ibquery.IsEmpty then
 begin
  ibquery.First;
  while not ibquery.Eof do
   begin
    if DM.IBDataSetLocalParamEMAILCONSEGNA.Value=1 then
     begin
     Memotemp.LoadFromFile(getcurrentdir+'\Avviso Ritardo2.html');
      sttmp:=memotemp.Text;
      sttmp:= StringReplace(sttmp, '%1', ibquery.Fields.Fieldbyname('Nome').AsString+' '+ibquery.Fields.Fieldbyname('CognRagSoc').AsString,[rfReplaceAll, rfIgnoreCase]);
     // sttmp:= StringReplace(sttmp, '%2', ibquery.Fields.Fieldbyname('Sched_no').AsString,[rfReplaceAll, rfIgnoreCase]);
     // sttmp:= StringReplace(sttmp, '%4', ibquery.Fields.Fieldbyname('Dataintro').AsString,[rfReplaceAll, rfIgnoreCase]);
     // sttmp:= StringReplace(sttmp, '%5', ibquery.Fields.Fieldbyname('Datatakeback').AsString,[rfReplaceAll, rfIgnoreCase]);

    //  ReportExport(NewschCli.QuickRep1,DM.IBDataSetLocalParamPATHFILEPDFSCHED.AsString+'\'+ibquery.Fieldbyname('SCHED_NO').AsString+'-'+ibquery.fieldbyname('COGNRAGSOC').asstring+'-'+ibquery.fieldbyname('NOME').asstring+'.PDF');
      SendEmailMessage(1,ibquery.Fields.Fieldbyname('EMAIL').AsString,'AVVISO RITARDO CONSEGNA No.2',sttmp,'');
     end;
    if DM.IBDataSetLocalParamSMSCONSEGNA.Value=1 then
     begin
      Memotemp.LoadFromFile(getcurrentdir+'\Avviso noleggio riconsegna2 sms.txt');
      sttmp:=memotemp.Text;

      //invio messaggio vecchio modo
      //SendEmailMessage(2,ibquery.Fields.Fieldbyname('CELLULARE').AsString,'',sttmp,'');

      //invio messaggio nuovo http
          if checkPhoneNumber(ibquery.Fields.Fieldbyname('CELLULARE').AsString) then
      SendSMS(edit_loginSMS.Text,edit_pswSMS.Text,sttmp,ibquery.Fields.Fieldbyname('CELLULARE').AsString,Edit_SenderSMS.Text,Edit_EndPInvioSMS.text);

     end;
    if (DM.IBDataSetLocalParamSMSCONSEGNA.Value=1) or (DM.IBDataSetLocalParamEMAILCONSEGNA.Value=1) then
     Begin
      if not ibtransactionx.InTransaction then
      ibtransactionx.StartTransaction;
      ibquery1.SQL.Add('UPDATE SCHEDULE SET DATELASTADV="'+DecForSqlDate(now)+'", NOADV=3 WHERE SCHEDULE.SCHED_NO= :numsched');
      ibquery1.ParamByName('numsched').Value:=ibquery.Fields.fieldbyname('sched_no').Value;
      ibquery1.ExecSQL;
     end;
   ibquery.Next;
   end;
end;  // FINE INVIO RITARDO2

// INIZIO INVIO RITARDO3
 ibquery.Close;
 ibquery.SQL.Clear;
 ibquery.SQL.Add('SELECT CLIENTI.NOME,CLIENTI.COGNRAGSOC,CLIENTI.CELLULARE,CLIENTI.EMAIL,SCHEDULE.SCHED_NO, SCHEDULE.DATATAKEBACK,SCHEDULE.DATAINTRO,');
ibquery.SQL.Add('SCHEDULE.DATASTARTRENT FROM CLIENTI JOIN SCHEDULE ON CLIENTI.CLI_NO=SCHEDULE.CLI_NO WHERE SCHEDULE.DATATAKEBACK="'+DecForSqlDate(now-7)+'" AND SCHEDULE.STATO="APERTA" AND SCHEDULE.DATAINTRO>"'+DecForSqlDate(strtodate(DM.IBDataSetParamSTRADVFRMDATA.AsString))+'"');
ibquery.SQL.Add('AND STOPADV=0');
ibquery.Open;


 if not Ibquery.IsEmpty then
 begin
  ibquery.First;
  while not ibquery.Eof do
   begin
    if DM.IBDataSetLocalParamEMAILCONSEGNA.Value=1 then
     begin
     Memotemp.LoadFromFile(getcurrentdir+'\Avviso Ritardo3.html');
      sttmp:=memotemp.Text;
      sttmp:= StringReplace(sttmp, '%1', ibquery.Fields.Fieldbyname('Nome').AsString+' '+ibquery.Fields.Fieldbyname('CognRagSoc').AsString,[rfReplaceAll, rfIgnoreCase]);
     // sttmp:= StringReplace(sttmp, '%2', ibquery.Fields.Fieldbyname('Sched_no').AsString,[rfReplaceAll, rfIgnoreCase]);
      sttmp:= StringReplace(sttmp, '%2', ibquery.Fields.Fieldbyname('Dataintro').AsString,[rfReplaceAll, rfIgnoreCase]);
     // sttmp:= StringReplace(sttmp, '%5', ibquery.Fields.Fieldbyname('Datatakeback').AsString,[rfReplaceAll, rfIgnoreCase]);

    //  ReportExport(NewschCli.QuickRep1,DM.IBDataSetLocalParamPATHFILEPDFSCHED.AsString+'\'+ibquery.Fieldbyname('SCHED_NO').AsString+'-'+ibquery.fieldbyname('COGNRAGSOC').asstring+'-'+ibquery.fieldbyname('NOME').asstring+'.PDF');
      SendEmailMessage(1,ibquery.Fields.Fieldbyname('EMAIL').AsString,'AVVISO RITARDO CONSEGNA No.3',sttmp,'');
     end;
    if DM.IBDataSetLocalParamSMSCONSEGNA.Value=1 then
     begin
      Memotemp.LoadFromFile(getcurrentdir+'\Avviso noleggio riconsegna3 sms.txt');
      sttmp:=memotemp.Text;

      //SendEmailMessage(2,ibquery.Fields.Fieldbyname('CELLULARE').AsString,'',sttmp,'');
     //invio messaggio nuovo http
        if checkPhoneNumber(ibquery.Fields.Fieldbyname('CELLULARE').AsString) then
      SendSMS(edit_loginSMS.Text,edit_pswSMS.Text,sttmp,ibquery.Fields.Fieldbyname('CELLULARE').AsString,Edit_SenderSMS.Text,Edit_EndPInvioSMS.text);

     end;
    if (DM.IBDataSetLocalParamSMSCONSEGNA.Value=1) or (DM.IBDataSetLocalParamEMAILCONSEGNA.Value=1) then
     Begin
      if not ibtransactionx.InTransaction then
      ibtransactionx.StartTransaction;
      ibquery1.SQL.Add('UPDATE SCHEDULE SET DATELASTADV="'+DecForSqlDate(now)+'", NOADV=4 WHERE SCHEDULE.SCHED_NO= :numsched');
      ibquery1.ParamByName('numsched').Value:=ibquery.Fields.fieldbyname('sched_no').Value;
      ibquery1.ExecSQL;
     end;
   ibquery.Next;
   end;
end;  // FINE INVIO RITARDO3
if  ibtransactionx.InTransaction then
ibtransactionx.Commit;


end;

procedure TMenu.AvvisoRitardo;
var ibquery1,ibquery:Tibquery;
    ThreadEmail : TThreadSendMail;
    Memotemp:TStringlist;
    sttmp:String;
    ibtransactionX:TIbtransaction;
    begin
    ibtransactionx:=Tibtransaction.Create(nil);
    ibtransactionx.DefaultDatabase:=DM.IBDatabase1;
    ibtransactionx.DefaultAction:=TACommitRetaining;
   memotemp:=TStringlist.Create;
   Memotemp.LoadFromFile(getcurrentdir+'\Avviso Noleggio Riconsegna.html');
ibquery1:=Tibquery.Create(nil);
ibquery1.Database:=DM.IBDatabase1;
ibquery1.Transaction:=IBTransactionx;
ibquery1.SQL.Add('UPDATE SCHEDULE SET DATELASTADV="'+datetimetostr(now)+'", NOADV=NOADV+1 WHERE SCHEDULE.SCHED_NO= :numsched');
ibquery:=Tibquery.Create(nil);
ibquery.Database:=DM.IBDatabase1;
ibquery.Transaction:=DM.IBTransaction7;
ibquery.SQL.Add('SELECT CLIENTI.NOME,CLIENTI.COGNRAGSOC,CLIENTI.CELLULARE,CLIENTI.EMAIL,SCHEDULE.SCHED_NO, SCHEDULE.DATATAKEBACK,');
ibquery.SQL.Add('SCHEDULE.DATASTARTRENT FROM CLIENTI JOIN SCHEDULE ON CLIENTI.CLI_NO=SCHEDULE.CLI_NO WHERE SCHEDULE.DATATAKEBACK="'+DecForSqlDate(now-3)+'" AND SCHEDULE.STATO="APERTA" AND SCHEDULE.DATELASTADV<"'+DecForSqlDate(now)+'" AND SCHEDULE.DATAINTRO>"'+DecForSqlDate(strtodate(DM.IBDataSetParamSTRADVFRMDATA.AsString))+'"');
ibquery.SQL.Add('AND SCHEDULE.STOPADV=0');
ibquery.Open;
if not Ibquery.IsEmpty then
begin
ibquery.First;
 while not ibquery.Eof do
 begin
if DM.IBDataSetLocalParamEMAILCONSEGNA.Value=1 then
begin
   sttmp:=memotemp.Text;
   sttmp:= StringReplace(sttmp, '%1', ibquery.Fields.Fieldbyname('Nome').AsString+' '+ibquery.Fields.Fieldbyname('CognRagSoc').AsString,[rfReplaceAll, rfIgnoreCase]);
   sttmp:= StringReplace(sttmp, '%2', ibquery.Fields.Fieldbyname('Datatakeback').AsString,[rfReplaceAll, rfIgnoreCase]);
   ReportExport(NewschCli.QuickRep1,DM.IBDataSetLocalParamPATHFILEPDFSCHED.AsString+'\'+ibquery.Fieldbyname('SCHED_NO').AsString+'-'+ibquery.fieldbyname('COGNRAGSOC').asstring+'-'+ibquery.fieldbyname('NOME').asstring+'.PDF');
   SendEmailMessage(1,ibquery.Fields.Fieldbyname('EMAIL').AsString,'Ricevuta Noleggio',sttmp,DM.IBDataSetLocalParamPATHFILEPDFSCHED.AsString+'\'+ibquery.Fieldbyname('SCHED_NO').AsString+'-'+ibquery.fieldbyname('COGNRAGSOC').asstring+'-'+ibquery.fieldbyname('NOME').asstring+'.PDF');
 end;
if DM.IBDataSetLocalParamSMSCONSEGNA.Value=1 then
begin
     Memotemp.LoadFromFile(getcurrentdir+'\Avviso Noleggio Riconsegna sms.txt');
    sttmp:=memotemp.Text;
    sttmp:= StringReplace(sttmp, '%2', ibquery.Fields.Fieldbyname('Datatakeback').AsString,[rfReplaceAll, rfIgnoreCase]);
//   SendEmailMessage(2,ibquery.Fields.Fieldbyname('CELLULARE').AsString,'Ricevuta Noleggio',sttmp,'');
 //invio messaggio nuovo http
    if checkPhoneNumber(ibquery.Fields.Fieldbyname('CELLULARE').AsString) then
      SendSMS(edit_loginSMS.Text,edit_pswSMS.Text,sttmp,ibquery.Fields.Fieldbyname('CELLULARE').AsString,Edit_SenderSMS.Text,Edit_EndPInvioSMS.text);

  end;
 if (DM.IBDataSetLocalParamSMSCONSEGNA.Value=1) or (DM.IBDataSetLocalParamEMAILCONSEGNA.Value=1) then
   Begin
   if not ibtransactionx.InTransaction then
   ibtransactionx.StartTransaction;
   ibquery1.ParamByName('numsched').Value:=ibquery.Fields.fieldbyname('sched_no').Value;
   ibquery1.ExecSQL;
   ibtransactionx.Commit;
end;
   ibquery.Next;
 end;
end;
end;












procedure TMenu.Button22Click(Sender: TObject);
begin
treeview1.Items.Clear;
Treeview1.Items.AddFirst(  nil,  'NOLEGGIO PARMASPORT'  ).Selected:=true;
end;

procedure TMenu.BitBtn32Click(Sender: TObject);
begin
GestPriceArt.ShowModal;
if GestPriceArt.ModalResult =mrOk then
begin
 DM.IBDataSetArticolo.Edit;
 DM.IBDataSetArticoloINCVENDITA.AsCurrency:=strtofloat(rightstr(Gestpriceart.MaskEdit1.Text,7));
if Tennismng.Active=true then
  Tennismng.DBRadioGroup2.ItemIndex:=4
 else
 DBRadiogroup2.ItemIndex:=4;
 DM.IBDataSetArticoloAVAILABLE.AsString:='VENDUTO';
  if not dM.IBDataSetArticoloVENDUTODA.IsNull then
   begin
    DM.IBDataSetArticolo.Post;
    Gestpriceart.MaskEdit1.Clear;
   end
   else
   begin
   messagedlg('Inserire il nome nel campo "VEDUTO DA"',mtInformation,[mbok],0);
if Tennismng.Active=true then
Tennismng.DBEdit56.SetFocus
else
begin
   if pagecontrol1.ActivePageIndex=11  then
   DBEdit62.SetFocus;
   if pagecontrol1.ActivePageIndex=1  then
   DBEdit56.SetFocus;
end;
   end;

end;

if GestPriceArt.ModalResult  =mrRetry then
begin
DM.IBDataSetArticolo.Edit;
DM.IBDataSetArticoloINCVENDITA.Clear;
if Tennismng.Active=true then
  Tennismng.DBRadioGroup2.ItemIndex:=0
 else
 DBRadiogroup2.ItemIndex:=0;
DM.IBDataSetArticoloAVAILABLE.AsString:='DISPONIBILE';
DM.IBDataSetArticolo.Post;
end;
end;

procedure TMenu.BitBtn33Click(Sender: TObject);
var CodeList:Tstringlist;
    Artno,numart,aperti,chiusi,i:integer;
    etay,pesoy,altezzay,livelloy,sessoy,suolay:string;
begin
 if ControlFieldschedule = true then
  begin
   if OpnTest.IsConnected(strtoint(COMPORTOPN)) then
    begin
     CodeList:=TStringList.Create;
     CodeList.Assign(OpnTest.DownLoadData(strtoint(COMPORTOPN),false));
     if codelist.Count<>0 then
      begin
       if (isrented(Codelist) = true) then
        begin
         For i:=0 to codelist.Count-1 do
         begin
          if isarticle(codelist[i]) = true then
          begin
           artno:=QueryEanArtToArtno('*'+Codelist[i]+'*');
           if CheckArtReplay(inttostr(Artno))=false then
           SetArtStato(artno,'NOLEGGIATO');
           ETAy:=datisgancio(ETAx,codelist[i],codelist);
           PESOy:=datisgancio(PESOx,codelist[i],codelist);
           ALTEZZAy:=datisgancio(ALTEZZAx,codelist[i],codelist);
           SESSOy:=datisgancio(SESSOx,codelist[i],codelist);
           SUOLAy:=datisgancio(SUOLAx,codelist[i],codelist);
           LIVELLOy:=datisgancio(LIVELLOx,codelist[i],codelist);
           DM.IBDataSetRented.Insert;
           DM.IBDataSetRentedCLI_NO.AsFloat:=DM.IBDataSetClientiCLI_NO.Value;
           DM.IBDataSetRentedART_NO.AsFloat:=QueryEanArtToArtno('*'+Codelist[i]+'*');
           DM.IBDataSetRentedSCHED_NO.AsFloat:=DM.IBDataSetScheduleSCHED_NO.Value;
           DM.IBDataSetRentedETA.AsString:=ETAy;
           DM.IBDataSetRentedPESO.AsString:=PESOy;
           DM.IBDataSetRentedALTEZZA.AsString:=ALTEZZAy;
           DM.IBDataSetRentedSESSO.AsString:=SESSOy;
           DM.IBDataSetRentedCMSUOLA.AsString:=SUOLAy;
           DM.IBDataSetRentedLIVELLO.AsString:=LIVELLOy;
           if (isski('*'+codelist[i]+'*')<>'False') and (CalcZfact.calcZtoData(pesoy,altezzay,etay,sessoy,livelloy,suolay)<>Nil) then
            begin
             DM.IBDataSetRentedZFACTOR.AsString:=CalcZfact.calcZtoData(pesoy,altezzay,etay,sessoy,livelloy,suolay)[0];
             DM.IBDataSetRentedCODICE.AsString:=CalcZfact.calcZtoData(pesoy,altezzay,etay,sessoy,livelloy,suolay)[1];
            end;
           DM.IBDataSetRentedSTATO.AsString:='NOLEGGIATO';
           DM.IBDataSetRented.Post;
           SetRentedStato(artno,DM.IBDataSetScheduleSCHED_NO.AsInteger,'NOLEGGIATO');
          end;
         end;
        DM.IBDataSetRented.Close;
        DM.IBDataSetRented.Prepare;
        DM.IBDataSetRented.Params.ByName('SCHEDNO').AsInteger:=DM.IBDataSetScheduleSCHED_NO.AsInteger;
        DM.IBDataSetRented.Open;
        Dm.IBDataSetRented.First;
        numart:=0; Aperti:=0; chiusi:=0;
        while not Dm.IBDataSetRented.Eof do
         begin
          inc(numart);
          if DM.IBDataSetRentedSTATO.AsString = 'NOLEGGIATO' Then
          inc(aperti)
          else
          inc(chiusi);
          DM.IBDataSetRented.Next;
         end;
      edit14.Text:=inttostr(numart);
      edit15.Text:=inttostr(chiusi);
      edit16.Text:=inttostr(aperti);
      if (Chiusi=0) and (NumArt=0) and (Aperti=0) then
      DM.IBDataSetScheduleSTATO.AsString:='INUTILIZZATA';
      if (Chiusi=0) and (NumArt>0) and (Aperti>0) then
      DM.IBDataSetScheduleSTATO.AsString:='APERTA';
      if (Chiusi>0) and (NumArt>0) and (Chiusi<NumArt) then
      DM.IBDataSetScheduleSTATO.AsString:='PARZIALE';
      if (NumArt>0) and ((Chiusi>NumArt) or (Aperti>NumArt)) then
      DM.IBDataSetScheduleSTATO.AsString:='INCOERENTE';
      if (NumArt>0) and (Chiusi=NumArt) and (Aperti=0)then
       Begin
       DM.IBDataSetScheduleDATACLOSESCHD.AsDateTime:=today;
       DM.IBDataSetScheduleSTATO.AsString:='CHIUSA';
       end
       else
       DM.IBDataSetScheduleDATACLOSESCHD.Clear;
      if  MessageDlg('Caricamento OK? Vuoi passare alla modalità Manuale?', mtWarning,[mbYes,mbNo], 0)= mrYes then
       Bitbtn24.Click;
      //          OpnTest.DeleteOPNData;
     end
      else
       MessageDlg('Uno o Piu codici Della Lista Sono Già In Uso', mtWarning,[mbOk], 0);
    end
    else
     MessageDlg('Lo Scanner Non Contiene Dati', mtWarning,[mbOk], 0);
    Codelist.Destroy;
    OpnTest.DeleteOPNData;
   end
   else
   messagedlg('Scanner Non Connesso, inserire USB e riprovare!',mtWarning,[mbOk],0)
   end
   else
   MessageDlg('Campi: "Data Inizio, Giorni Uso, Data Rientro" OBBLIGATORI', mtWarning,[mbOk], 0);
end;

function Tmenu.Isrented(lista:TStringList):boolean;
var i:integer;
begin
result:=true;
for i:=0 to lista.Count-1 do
begin
if isArticle(lista[i]) = true then
begin
result:=QueryIsRented(inttostr(QueryEanArtToArtno(lista[i])));
if result = false then
break;
end;
end;
end;

function Tmenu.IsArticle(Article:string):boolean;
begin
if (Ansicomparestr(Copy(Article, 1, 2),'01')=0) or (Ansicomparestr(Copy(Article, 1, 2),'00')=0) then
result:=True
else
result:=False;
end;



procedure TMenu.ScannerTest1Click(Sender: TObject);
begin
OPNtest.Showmodal;
end;

procedure TMenu.BitBtn34Click(Sender: TObject);
var Codelist:TStringlist;
    count,artno: integer;
    rentartno,eanstr: string;
    i:integer;
begin
   if OpnTest.IsConnected(strtoint(COMPORTOPN)) then
   begin
    CodeList:=TStringList.Create;
    CodeList.Assign(OpnTest.DownLoadData(strtoint(COMPORTOPN),false));
    if CodeList.Count>0 then
    begin
    for i:=0 to CodeList.count-1 do
    begin
       artno:=QueryEanArtToArtno('*'+Codelist[i]+'*');
    if QueryArtToDownload(inttostr(artno), DM.IBDataSetScheduleSCHED_NO.AsString) = true then
      begin
       if artno <> NULL then
        begin
         if CheckArtReplay(inttostr(Artno))=true then
          BEGIN
           if not DM.IBTransaction10.InTransaction then
           DM.IBTransaction10.StartTransaction;
           DM.IBQueryTemp.Close;
           DM.IBQueryTemp.SQL.Clear;
           DM.IBQueryTemp.SQL.Add('SELECT RENTEDART.RENART_NO');
           DM.IBQueryTemp.SQL.Add('FROM RENTEDART');
           DM.IBQueryTemp.SQL.Add('WHERE RENTEDART.SCHED_NO = "'+DM.IBDataSetScheduleSCHED_NO.AsString+'" AND RENTEDART.ART_NO = "'+inttostr(Artno)+'" AND RENTEDART.STATO = "NOLEGGIATO"');
           DM.IBQueryTemp.Open;
           Rentartno:=DM.IBQueryTemp.Fields.Fields[0].asString;
           DM.IBQueryTemp.Close;
           DM.IBQueryTemp.SQL.Clear;
           DM.IBQueryTemp.SQL.Add('SELECT COUNT(*)');
           DM.IBQueryTemp.SQL.Add('FROM RENTEDART');
           DM.IBQueryTemp.SQL.Add('WHERE RENTEDART.SCHED_NO = "'+DM.IBDataSetScheduleSCHED_NO.AsString+'" AND RENTEDART.ART_NO = "'+inttostr(Artno)+'" AND RENTEDART.STATO = "NOLEGGIATO"');
           DM.IBQueryTemp.Open;
           Count:=DM.IBQueryTemp.Fields.Fields[0].AsInteger;
           if (NOT (Rentartno=Null)) and (Count>0) then
            begin
             DM.IBQueryTemp.Close;
             DM.IBQueryTemp.SQL.Clear;
             DM.IBQueryTemp.SQL.Add('UPDATE RENTEDART');
             DM.IBQueryTemp.SQL.Add('SET RENTEDART.STATO = "RESO"');
             DM.IBQueryTemp.SQL.Add('WHERE RENTEDART.RENART_NO = "'+Rentartno+'"');
             DM.IBQueryTemp.Open;
            end;
           DM.IBTransaction10.Commit;
           DM.IBDataSetRented.Close;
          END
         else
          begin
           SetArtStato(artno,'DISPONIBILE');
           SetRentedStato(artno,DM.IBDataSetRentedSCHED_NO.AsInteger, 'RESO');
           DM.IBDataSetRented.Close;
          end;
   end
   else
   MessageDlg('Articolo Non Presente Nella Scheda Noleggio ', mtWarning,[mbOk], 0);
  end
  else
  MessageDlg('Articolo Già Scaricato', mtWarning,[mbOk], 0);
 end;
    DM.IBDataSetRented.Prepare;
    DM.IBDataSetRented.Params.ByName('SCHEDNO').AsInteger:=DM.IBDataSetScheduleSCHED_NO.AsInteger;
    DM.IBDataSetRented.Open;
    edit14.Text:=inttostr(ScheduleResult(DM.IBDataSetScheduleSCHED_NO.AsInteger));
    Edit16.Text:=inttostr(QtaArtApertiPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));
    Edit15.Text:=inttostr(QtaArtChiusiPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));
end
else
MessageDlg('Lo Scanner Non Contiene Dati', mtWarning,[mbOk], 0);
Codelist.Destroy;
OpnTest.DeleteOPNData;
end
else
messagedlg('Scanner Non Connesso, inserire USB e riprovare!',mtWarning,[mbOk],0);
end;



Function TMenu.DataZFactCollect(List:TstringList):TstringList;
var Temp:Tstringlist;
    i:integer;
    idSci:integer;
    peso:string;
    begin
Temp:=Tstringlist.Create;
for i:=0 to List.Count do
 begin
 if isski('*'+list[i]+'*')<>'false' then
  Temp.Add(isski(List[i]))

end;
end;


function Tmenu.DatiSgancio(sufix:string; CodiceSci:string; List:TStringList):String;
var prog,i:integer;
    temp: string;
    ok:boolean;
    begin
temp:='   ';
prog:=1;
ok:=false;
for i:=0 to list.Count-1 do
 begin
 if codiceSci=list[i] then
  ok:=true;
  if (leftstr(list[i],2)=sufix) and (ok=true) then
  begin
   temp[prog]:=rightstr(list[i],1)[1];
   if prog<4 then
   inc(prog)
   else
   break;
  end;
  if not((i+1)>(list.Count-1)) then
   if ((leftstr(list[i+1],2)='00') or (leftstr(list[i+1],2)='01')) and (list[i+1]<>codicesci) then
  break;
 end;
 if sufix=livellox then
 begin
 if trim(temp)='A' then
 temp:='AVANZATO';
 if trim(temp)='M' then
 temp:='MEDIO';
if trim(temp)='B' then
 temp:='BASE';
 end;
 if trim(temp)='' then
 result:=''
 else
 result:=trim(temp);

 end;



function TMenu.IsSki(EANCode:string):string;
begin
DM.IBQueryTemp.SQL.Clear;
DM.IBQueryTemp.SQL.Add('SELECT ARTICOLO.ART_NO');
DM.IBQueryTemp.SQL.Add('FROM ARTICOLO');
DM.IBQueryTemp.SQL.Add('WHERE '+DM.IBDataSetParamEANTOSCAN.AsString+'= "'+EANCode+'" AND ARTICOLO.TIPO LIKE "SCI%"');
DM.IBQueryTemp.SQL.Add('ORDER BY ARTICOLO.TIPO');
DM.IBQueryTemp.Open;
if not DM.IBQueryTemp.IsEmpty then
result:=DM.IBQueryTemp.Fields.Fields[0].AsString
else
result:='False';
DM.IBQueryTemp.Close;
end;


procedure TMenu.DBEdit62Exit(Sender: TObject);
begin
if DM.IBDataSetArticoloVENDUTODA.IsNull then
DBEdit62.SetFocus
else
DM.IBDataSetArticolo.Post;
end;

procedure TMenu.DBEdit56Exit(Sender: TObject);
begin
if DM.IBDataSetArticoloVENDUTODA.IsNull then
nolo.Menu.DBEdit56.SetFocus
else
DM.IBDataSetArticolo.Post;

end;

procedure TMenu.BitBtn35Click(Sender: TObject);
begin
if DM.IBDataSetClienti.State in [dsinsert,dsedit] then
begin
ShowMessage('Scheda cliente aperta Salvare o Annullare.');
Exit;  // esce subito dalla procedura
end;

//if  (not DM.IBDataSetClientiEMAIL.IsNull) and (not DM.IBDataSetClientiCELLULARE.IsNull)  then
if checkclidatas=true then
 begin
  if ACCCONV.ShowModal=Mrok then
   begin
    if ACCCONV.ClassValue > 0 then
     Ripmodule.showmodal
     else
     MsgNoPermission(ACCCONV.ClassValue);
   end;
 end
  else
   begin
   allertscheda.OnShow:=AllertScheda.FormShow2;
   allertscheda.showmodal;
   allertscheda.OnShow:=AllertScheda.FormShow;
  // memo1.Visible:=false;
   DBMemo1.Visible:=true;
   Label3.Visible:=false;
   Allertscheda.Height:=274;
   allertscheda.Bitbtn1.Top:=228;
   end;
   ACCCONV.ClassValue :=0;
end;

procedure TMenu.Button23Click(Sender: TObject);
begin
if not DM.IBTransaction10.InTransaction then
DM.IBTransaction10.StartTransaction;
DM.IBDataSetRip.DisableControls;
DM.IBDataSetRip.First;
while not DM.IBDataSetRip.Eof do
begin
DM.IBQueryTemp.Close;
dm.IBQueryTemp.SQL.Clear;
DM.IBQueryTemp.SQL.Add('UPDATE RIPARAZIONE SET EANCODE="'+Ean39Gen2(DM.IBDataSetParamPREF_RIP_NO.AsString,DM.IBDataSetRipRIP_NO.AsString) +'" WHERE RIP_NO="'+dm.IBDataSetRipRIP_NO.AsString+'"');
dm.IBQueryTemp.ExecSQL;
DM.IBDataSetRip.Next;
end;
DM.IBDataSetRip.EnableControls;
DM.IBTransaction10.Commit;
dm.IBDataSetRip.Refresh;
end;



procedure TMenu.Edit60KeyPress(Sender: TObject; var Key: Char);
begin
if not ((ord(key) = 08) or (ord(key) = 03)or (ord(key) = 27)) then
 begin
  if not (key in ['0'..'9']) then
   key:=#0;
 end;
end;

procedure TMenu.Edit61KeyPress(Sender: TObject; var Key: Char);
begin
if not ((ord(key) = 08) or (ord(key) = 03)or (ord(key) = 27)) then
 begin
  if not (key in ['0'..'9']) then
   key:=#0;
 end;


end;

procedure TMenu.Button39Click(Sender: TObject);
var saveDialog : TSaveDialog;
    i:integer;
    oXL, oWB, oSheet, oRng, VArray : OleVariant;
    prefaction:String;
    begin
if (edit60.Text<>'') and (edit61.Text<>'') then
begin
  saveDialog := TSaveDialog.Create(self);
  saveDialog.Title := 'Salvataggio File Etichette XLS';
  saveDialog.InitialDir := GetCurrentDir;
  saveDialog.Filter := 'Exel file|*.XLSX';
  saveDialog.DefaultExt := 'XLSX';
  saveDialog.FilterIndex := 1;
  if saveDialog.Execute then
  begin
   oXL := CreateOleObject('Excel.Application');
   oXL.Workbooks.Add;
   oSheet:=oXL.ActiveSheet;
     prefaction:=copy(PreCodeComboBox.Text,1,2);
    osheet.cells[1,3]:='CODICE';
    osheet.cells[1,2]:='EANCODE';
    osheet.cells[1,1]:='PROGRESS.';
   for i:=1 to (strtoint(edit61.Text)-strtoint(edit60.Text)) do
    begin
    osheet.cells[i+1,3].numberformat:= '@';
    osheet.cells[i+1,3]:=Ean39Gen2Nox(prefaction,inttostr(i+strtoint(edit60.Text)));
    osheet.cells[i+1,2]:=Ean39Gen2(prefaction,inttostr(i+strtoint(edit60.Text)));
    osheet.cells[i+1,1]:=inttostr((strtoint(edit60.Text)+i));
   // osheet.cells[i+1,4]:=Ean39Gen1(prefaction,inttostr(i+strtoint(edit60.Text)));
    end;
    oxl.Application.workbooks[1].SaveAs(savedialog.FileName); // or xlOpenXMLWorkbook (51)
   oxl.Application.Quit;
  end
  else ShowMessage('Save file was cancelled');
 saveDialog.Free;
end
else
showmessage('Campi "Dal" e "Al" devono avere un valore');
end;

procedure TMenu.SpeedButton16Click(Sender: TObject);
begin
if PrinterSetupDialog1.Execute() then
begin
DM.IBDataSetLocalParamETIC_PRINTER.Value:= Printer.Printers[Printer.PrinterIndex];
//Printer.PrinterIndex:=Printer.Printers.IndexOf(txtPrinterName.Text);
//PrinterSetupDialog1.Execute;
end;

end;

procedure TMenu.SpeedButton17Click(Sender: TObject);
begin
if PrinterSetupDialog1.Execute() then
begin
dm.IBDataSetLocalParamPAPER_PRINTER.Value:= Printer.Printers[Printer.PrinterIndex];
//Printer.PrinterIndex:=Printer.Printers.IndexOf(txtPrinterName.Text);
//PrinterSetupDialog1.Execute;
end;
end;

procedure TMenu.BitBtn36Click(Sender: TObject);
Var CodeList:Tstringlist;
    i:integer;
begin
 if OpnTest.IsConnected(strtoint(nolo.COMPORTOPN)) then
  begin
   CodeList:=TStringList.Create;
   try
   CodeList.Assign(OpnTest.DownLoadData(strtoint(nolo.COMPORTOPN),false));
   if CodeList.Count>0 then
    begin
     if not DM.IBTransaction10.InTransaction then
     DM.IBTransaction10.StartTransaction;
     for i:=0 to CodeList.count-1 do
     begin
     if QueryCheckStatus(inttostr(QueryEanArtToArtno('*'+Codelist[i]+'*')),'DISPONIBILE') = true then
     SetArtStatoRip(QueryEanArtToArtno('*'+Codelist[i]+'*'),'RIPARAZIONE')
     else
     messagedlg('ARTICOLO ARTNO:'+inttostr(QueryEanArtToArtno('*'+Codelist[i]+'*'))+' non disponibile, CONTROLLARE!!',Mtwarning,[MbOk],0);
    end;
    end;
   finally
   codelist.Free;
  end;
   RepairRefresh;
  end;
end;

procedure TMenu.BitBtn37Click(Sender: TObject);
Var CodeList:Tstringlist;
    i:integer;
begin
 if OpnTest.IsConnected(strtoint(nolo.COMPORTOPN)) then
  begin
   CodeList:=TStringList.Create;
   try
   CodeList.Assign(OpnTest.DownLoadData(strtoint(nolo.COMPORTOPN),false));
   if CodeList.Count>0 then
    begin
     if not DM.IBTransaction10.InTransaction then
     DM.IBTransaction10.StartTransaction;
     for i:=0 to CodeList.count-1 do
     begin
     if QueryCheckStatus(inttostr(QueryEanArtToArtno('*'+Codelist[i]+'*')),'RIPARAZIONE') = true then
     SetArtStatoRip(QueryEanArtToArtno('*'+Codelist[i]+'*'),'DISPONIBILE')
     else
     messagedlg('ARTICOLO ARTNO:'+inttostr(QueryEanArtToArtno('*'+Codelist[i]+'*'))+' non in riparazione, CONTROLLARE!!',Mtwarning,[MbOk],0);
    end;
    end;
   finally
   codelist.Free;
  end;
   RepairRefresh;
  end;

end;

procedure TMenu.BitBtn38Click(Sender: TObject);
begin
//DM.IBDataSetSchedule.AfterScroll:=nil;
dm.IBDataSetArticolo.Close;
dm.IBDataSetArticolo.SelectSQL.Clear;
dm.IBDataSetArticolo.SelectSQL.Add('SELECT CLIENTI.CLI_NO, CLIENTI.NOME, CLIENTI.COGNRAGSOC, CLIENTI.INDIRIZZO, ARTICOLO.*');
dm.IBDataSetArticolo.SelectSQL.Add('FROM ARTICOLO JOIN CLIENTI ON ARTICOLO.CLI_NO=CLIENTI.CLI_NO');
dm.IBDataSetArticolo.SelectSQL.Add('WHERE ARTICOLO.TIPO = "RACCHETTA TENNIS"');
dm.IBDataSetArticolo.Open;
//Tennismng.show;
Tennismng.showmodal;

//DM.IBDatasetschedule.AfterScroll:=DM.IBDataSetScheduleAfterScroll;
dm.IBDataSetArticolo.Close;
dm.IBDataSetArticolo.SelectSQL.Clear;
dm.IBDataSetArticolo.SelectSQL.Add('SELECT ARTICOLO.*');
dm.IBDataSetArticolo.SelectSQL.Add('FROM ARTICOLO');
dm.IBDataSetArticolo.SelectSQL.Add('ORDER BY CLI_NO');
dm.IBDataSetArticolo.Open;

end;

procedure TMenu.DBComboBox4KeyPress(Sender: TObject; var Key: Char);
begin
if key in ['a'..'z']+['A'..'Z'] then
key:=#0;
end;

procedure TMenu.DBNavigator2Click(Sender: TObject; Button: TNavigateBtn);
begin
if button = nbEdit then
DM.IBDataSetLocalParam.Edit;
if button = nbpost then
DM.IBDataSetLocalParam.Post;
if button = nbdelete then
DM.IBDataSetLocalParam.Delete;
if button = nbcancel then
DM.IBDataSetLocalParam.Cancel;
if button = nbInsert then
DM.IBDataSetLocalParam.Insert;
if button = nbFirst then
DM.IBDataSetLocalParam.First;
if button = nbPrior then
DM.IBDataSetLocalParam.Prior;
if button = nbNext then
DM.IBDataSetLocalParam.Next;
if button = nbLast then
DM.IBDataSetLocalParam.Last;
end;


procedure TMenu.DBGridObj1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
Var DataRect : TRect ;
Begin
   (Sender as TDBgrid).Canvas.Brush.Color := clBlack;
    if DM.IBQuery1.FieldByName('STATO').AsString='NOLEGGIATO' then
//    if DM.IBDataSetRentedSTATO.AsString='NOLEGGIATO' then
    (Sender as TDBgrid).Canvas.Font.Color := clRed
    else
    (Sender as TDBgrid).Canvas.Font.Color := clLime;
   (Sender as TDBgrid).DefaultDrawColumnCell(Rect,DataCol,Column, State);

   // Place the button in the first column.
  If  (DM.IBDataSetLocalParamENABLABMODULE.Value=1) and (Column.Title.Caption = 'AZIONE') and ((AnsiContainsText(DM.IBQuery1.FieldByName('TIPO').AsString, 'SCI') or (AnsiContainsText(DM.IBQuery1.FieldByName('TIPO').AsString, 'SNOWBOARD')))) and (not AnsiContainsText(DM.IBQuery1.FieldByName('TIPO').AsString, 'SCARPONE')) and (not AnsiContainsText(DM.IBQuery1.FieldByName('TIPO').AsString, 'SCARPONI'))and (not AnsiContainsText(DM.IBQuery1.FieldByName('TIPO').AsString, 'SCARPE')) Then
    //If (Column.Title.Caption = 'AZIONE') and ((AnsiContainsText(DM.IBDataSetRentedTIPO.AsString, 'SCI') or (AnsiContainsText(DM.IBDataSetRentedTIPO.AsString, 'SNOWBOARD')))) and (not AnsiContainsText(DM.IBDataSetRentedTIPO.AsString, 'SCARPONE')) and (not AnsiContainsText(DM.IBDataSetRentedTIPO.AsString, 'SCARPONI'))and (not AnsiContainsText(DM.IBDataSetRentedTIPO.AsString, 'SCARPE')) Then
    Begin
     Bitbtn40.Visible:=true;
     With DBGridObj1 Do Begin
      DataRect := CellRect(Column.Index,Row);
     end;
     // Assign the button's parent to the grid.
     If BitBtn40.Parent <> DBGridObj1 Then
   begin
    BitBtn40.Parent := DBGridObj1;
    end;
   // Set the button's coordinates.
   // In this case, right justify the button.
   If BitBtn40.Left <> (DataRect.Right) Then
      BitBtn40.Left := (DataRect.Right) ;
   If (BitBtn40.Top <> DataRect.Top) Then
      BitBtn40.Top :=  DataRect.Top ;
     // BitBtn39.Width := (DataRect.Right-datarect.Left);

   // Make sure the button's height fits in row.
   If (BitBtn40.Height <> (DataRect.Bottom-DataRect.Top)) Then
      BitBtn40.Height := (DataRect.Bottom-DataRect.Top);
   End
     else
     Bitbtn40.Visible:=false;
   end;

procedure TMenu.DBGridObj1DblClick(Sender: TObject);
var renart:string;
begin
renart:=DM.IBDataSetRentedRENART_NO.AsString;
DM.IBDataSetRented.Close;
DM.IBDataSetRented.SelectSQL.Clear;
DM.IBDataSetRented.SelectSQL.Add('SELECT RENTEDART.*, ARTICOLO.*');
DM.IBDataSetRented.SelectSQL.Add('FROM RENTEDART JOIN ARTICOLO ON ARTICOLO.ART_NO = RENTEDART.ART_NO');
DM.IBDataSetRented.SelectSQL.Add('WHERE RENTEDART.SCHED_NO = "'+DM.IBDataSetScheduleSCHED_NO.AsString+'" AND ARTICOLO.TIPO LIKE "SCI%" AND RENTEDART.RENART_NO="'+renart +'"');
DM.IBDataSetRented.SelectSQL.Add('ORDER BY ARTICOLO.TIPO');
DM.IBDataSetRented.Open;
if not DM.IBDataSetRented.IsEmpty then
begin
CalcZFact.showmodal;
DM.IBDataSetRented.Edit;
end
else
begin
DM.IBDataSetRented.Close;
DM.IBDataSetRented.SelectSQL.Clear;
DM.IBDataSetRented.SelectSQL.Add('SELECT RENTEDART.*, ARTICOLO.* FROM RENTEDART JOIN ARTICOLO ON ARTICOLO.ART_NO = RENTEDART.ART_NO');
DM.IBDataSetRented.SelectSQL.Add('WHERE RENTEDART.SCHED_NO = :SCHEDNO ORDER BY ARTICOLO.TIPO');
DM.IBDataSetRented.Prepare;
 DM.IBDataSetRented.Params.ByName('SCHEDNO').AsInteger:=DM.IBDataSetScheduleSCHED_NO.AsInteger;
 DM.IBDataSetRented.open;
end;
end;

procedure TMenu.BitBtn40Click(Sender: TObject);
begin
DM.IBDataSetClienti.Close;
DM.IBDataSetClienti.SelectSQL.Clear;
DM.IBDataSetClienti.SelectSQL.Add('SELECT *');
DM.IBDataSetClienti.SelectSQL.Add('FROM Clienti');
DM.IBDataSetClienti.SelectSQL.Add('WHERE CLI_NO = "'+DM.IBDataSetScheduleCLI_NO.AsString+'"');
DM.IBDataSetClienti.Open;
   DM.IBDataSetRip.Insert;
   DM.IBDataSetRipCLI_NO.AsInteger:=DM.IBDataSetScheduleCLI_NO.AsInteger;
   //if AnsiContainsText(DM.IBDataSetRentedTIPO.AsString, 'ALPINISMO') then
   if AnsiContainsText(DM.IBQuery1.fieldbyname('TIPO').AsString, 'ALPINISMO') then
   DM.IBDataSetRipTIPOPRODOTTO.Value:='SCI ALPINISMO';
 //  if (not(AnsiContainsText(DM.IBDataSetRentedTIPO.AsString, 'ALPINISMO'))) and AnsiContainsText(DM.IBDataSetRentedTIPO.AsString, 'SCI')  then
   if (not(AnsiContainsText(DM.IBQuery1.fieldbyname('TIPO').AsString, 'ALPINISMO'))) and AnsiContainsText(DM.IBDataSetRentedTIPO.AsString, 'SCI')  then
   DM.IBDataSetRipTIPOPRODOTTO.Value:='SCI';
//   if AnsiContainsText(DM.IBDataSetRentedTIPO.AsString, 'SNOWBOARD') then
    if AnsiContainsText(DM.IBQuery1.fieldbyname('TIPO').AsString, 'SNOWBOARD') then
   DM.IBDataSetRipTIPOPRODOTTO.Value:='SNOWBOARD';
//   if AnsiContainsText(DM.IBDataSetRentedTIPO.AsString, 'FONDO') then
   if AnsiContainsText(DM.IBQuery1.fieldbyname('TIPO').AsString, 'FONDO') then
   DM.IBDataSetRipTIPOPRODOTTO.Value:='FONDO';
   DM.IBDataSetRipSCHED_NO.Value:=DM.IBDataSetScheduleSCHED_NO.AsInteger;
  // DM.IBDataSetRipBRAND.Value:=DM.IBDataSetRentedBRAND.AsString;
   DM.IBDataSetRipBRAND.Value:=DM.IBQuery1.fieldbyname('BRAND').AsString;
//   DM.IBDataSetRipDESCRIZIONE.Value:=DM.IBDataSetRentedDESCRIZIONE.AsString+' NOLEGGIO';
   DM.IBDataSetRipDESCRIZIONE.Value:=DM.IBQuery1.fieldbyname('DESCRIZIONE').AsString+' NOLEGGIO';
   DM.IBDataSetRipPREZZO.Value:=0;
   DM.IBDataSetRipOWNER.Value:=DM.IBDataSetScheduleOWNER.Value;
   DM.IBDataSetRipDATARITIRORICH.Value:=DM.IBDataSetScheduleDATASTARTRENT.Value-1;
   DM.IBDataSetRipTIPOPAGAM.Value:='PAGATO';
   DM.IBDataSetRip.Post;

   Ripmodule.showmodal;
end;

procedure TMenu.DBGridObj2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if (DM.IBDataSetScheduleDAYUSE.AsInteger > 120) then
DBGridObj2.Canvas.Brush.Color := clYellow
else
DBGridObj2.Canvas.Brush.Color := clBtnFace;
if (DM.IBDataSetScheduleSTATO_CONS.AsString = 'RITARDO') AND (DM.IBDataSetScheduleSTATO.AsString <> 'CHIUSA') then
DBGridObj2.Canvas.Font.Color := clFuchsia;
if (DM.IBDataSetScheduleSTATO_CONS.AsString = 'GRAVE_RITARDO') AND (DM.IBDataSetScheduleSTATO.AsString <> 'CHIUSA') then
DBGridObj2.Canvas.Font.Color := CLRED;
IF DM.IBDataSetScheduleSTATO.AsString = 'CHIUSA' then
DBGridObj2.Canvas.Font.Color := ClGreen;
if (DM.IBDataSetScheduleSTATO.AsString = 'REGOLARE') AND (DM.IBDataSetScheduleSTATO.AsString = 'APERTA') then
DBGridObj2.Canvas.Font.Color := ClBlue;
if (DM.IBDataSetScheduleSTATO.AsString = 'PARZIALE') AND (DM.IBDataSetScheduleSTATO.AsString = 'APERTA') then
DBGridObj2.Canvas.Font.Color := clYellow;
DBGridObj2.DefaultDrawColumnCell(Rect,DataCol,Column, State);

end;

procedure TMenu.TabSheet5Show(Sender: TObject);
begin
Edit12.SetFocus;

end;

procedure TMenu.DBEdit4Exit(Sender: TObject);
begin
DM.IBDataSetClientiCOGNRAGSOC.Value:=trimleft(DM.IBDataSetClientiCOGNRAGSOC.AsString);
end;

procedure TMenu.DBEdit5Exit(Sender: TObject);
begin
DM.IBDataSetClientiNOME.Value:=trimleft(DM.IBDataSetClientiNOME.AsString)
end;

procedure TMenu.BtnCaricaClick(Sender: TObject);
begin
if ACCCONV.ShowModal=Mrok then
begin
if ACCCONV.ClassValue > 1 then
Dm.IBDataSetSchedule.Edit
else
MsgNoPermission(Classification);
ACCCONV.ClassValue :=0;
label69.Visible:=false;
  if DM.IBDataSetLocalParamOPNSYSTEM.Value = 1 then
bitbtn34.Visible:=false;
edit6.Visible:=false;
edit7.Visible:=false;
label22.Visible:=true;
edit3.Visible:=true;
edit5.Visible:=true;
   if DM.IBDataSetLocalParamOPNSYSTEM.Value = 1 then
bitbtn33.Visible:=true;
end;

end;

procedure TMenu.BtnScaricaClick(Sender: TObject);
begin
if ACCCONV.ShowModal=Mrok then
begin
if ACCCONV.ClassValue > 1 then
Dm.IBDataSetSchedule.Edit
else
MsgNoPermission(Classification);
ACCCONV.ClassValue :=0;
label69.Visible:=true;
   if DM.IBDataSetLocalParamOPNSYSTEM.Value = 1 then
bitbtn34.Visible:=true;
edit6.Visible:=true;
edit7.Visible:=true;
label22.Visible:=false;
edit3.Visible:=false;
edit5.Visible:=false;
   if DM.IBDataSetLocalParamOPNSYSTEM.Value = 1 then
bitbtn33.Visible:=false;
end;

end;

procedure TMenu.Button1Click(Sender: TObject);
var DataRicAnno: String;
begin
if not DM.IBDataSetScheduleDATASTARTRENT.IsNull then
begin
DM.IBDataSetScheduleDAYUSE.AsInteger:=154;
if monthof(DM.IBDataSetScheduleDATAINTRO.AsDateTime)>5 then
DM.IBDataSetScheduleDATATAKEBACK.AsDateTime:=strtodatetime('1/05/'+inttostr(yearof(incyear(now))))
else
DM.IBDataSetScheduleDATATAKEBACK.AsDateTime:=strtodatetime('1/05/'+inttostr(yearof(now)));
if (Sender as TButton).Owner.Name='TennisMng' then
Tennismng.Edit12.setfocus
else
Edit3.SetFocus;
end;
end;

procedure TMenu.EnableSchedDatas(Readable:boolean);
begin
DBEdit32.readonly:=readable;
DBEdit33.readonly:=readable;
DBEdit34.readonly:=readable;
DBEdit35.readonly:=readable;
DBEdit36.readonly:=readable;
speedbutton4.enabled:=not readable;
speedbutton6.enabled:=not readable;
Button1.enabled:= not readable;
Button2.enabled:= not readable;
Button6.enabled:= not readable;
Button3.enabled:= not readable;
end;

procedure TMenu.EnableSchedPrice(Readable:boolean);
begin
DBEdit40.readonly:=readable;
DBEdit37.readonly:=readable;
DBEdit38.readonly:=readable;
DBEdit39.readonly:=readable;
//DBCheckbox1.readonly:=readable;
Button39.enabled:= not readable;
end;




procedure TMenu.BitBtn39Click(Sender: TObject);
begin
if tennismng.Showing=false then
 begin
  RefreshCalcRentedArt;
  DM.IBDataSetScheduleNETPRICE.AsFloat:=DM.IBDataSetScheduleSUBTOTALE.AsFloat-(DM.IBDataSetScheduleSUBTOTALE.AsFloat*DM.IBDataSetScheduleDISCOUNT.AsFloat/100);
 end
else
 begin
 if DM.IBDataSetRented.IsEmpty then
  DM.IBDataSetScheduleSUBTOTALE.AsFloat:=0
 else
  DM.IBDataSetScheduleSUBTOTALE.AsFloat:=SubTotRentArtTennnis(DM.IBDataSetScheduleDAYUSE.AsInteger,DM.IBDataSetScheduleSCHED_NO.AsString);
  DM.IBDataSetScheduleNETPRICE.AsFloat:=DM.IBDataSetScheduleSUBTOTALE.AsFloat-(DM.IBDataSetScheduleSUBTOTALE.AsFloat*DM.IBDataSetScheduleDISCOUNT.AsFloat/100);
end;
end;

function TMenu.NumArtQuery:integer;
begin
dM.IBQuery1.Close;
dM.IBQuery1.SQL.Clear;
dM.IBQuery1.SQL.Add('SELECT COUNT(*) FROM RENTEDART WHERE SCHED_NO='+dm.IBDataSetScheduleSCHED_NO.AsString);
dm.IBQuery1.Open;
if not DM.IBQuery1.IsEmpty then
result:=DM.IBQuery1.Fields.Fields[0].AsInteger
else
result:=0;
end;

function TMenu.NumApertiQuery:integer;
begin
dM.IBQuery1.Close;
dM.IBQuery1.SQL.Clear;
dM.IBQuery1.SQL.Add('SELECT COUNT(*) FROM RENTEDART WHERE SCHED_NO="'+dm.IBDataSetScheduleSCHED_NO.AsString+'" AND STATO = "NOLEGGIATO"');
dm.IBQuery1.Open;
if not DM.IBQuery1.IsEmpty then
result:=DM.IBQuery1.Fields.Fields[0].AsInteger
else
result:=0;
end;

function TMenu.NumChiusiQuery:integer;
begin
dM.IBQuery1.Close;
dM.IBQuery1.SQL.Clear;
dM.IBQuery1.SQL.Add('SELECT COUNT(*) FROM RENTEDART WHERE SCHED_NO="'+dm.IBDataSetScheduleSCHED_NO.AsString+'" AND STATO = "RESO"');
dm.IBQuery1.Open;
if not DM.IBQuery1.IsEmpty then
result:=DM.IBQuery1.Fields.Fields[0].AsInteger
else
result:=0;
dM.IBQuery1.Close;
end;

procedure TMenu.DeleteArtFromRenartNoQry(RENART_NO:string);
var tmpQuery:TIBQuery;
begin
tmpQuery:=TIBQuery.Create(nil);
TmpQuery.Database:=DM.IBDatabase1;
TmpQuery.Transaction:=DM.IBTransaction6;
TmpQuery.SQL.Clear;
TmpQuery.SQL.Add('DELETE FROM RENTEDART WHERE RENART_NO ='+RENART_NO);
TmpQuery.ExecSQL;
TmpQuery.Free;
end;

procedure TMenu.Riparazioni1Click(Sender: TObject);
begin
RepLabData.Show;
end;

procedure TMenu.DBCheckBox1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
if DM.IBDataSetSchedulePAGATO.IsNull then
 begin
  //DBCheckbox1.Caption:='DA PAGARE';
  //DBCheckbox1.Color:=clRed;
end
else
begin
 //DBCheckbox1.Caption:='PAGATO';
 //DBCheckbox1.Color:=clLime;
end;

end;

procedure TMenu.CheckBox3MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
if checkbox3.Checked=true then
begin
checkbox3.Caption:='PAGATO';
checkbox3.Color:=clLime;
DM.IBDataSetSchedulePAGATO.Value:=1;
end
else
begin
checkbox3.Caption:='DA PAGARE';
checkbox3.Color:=clRed;
DM.IBDataSetSchedulePAGATO.Value:=0;
end;
end;

function TMenu.CheckCliDatas:boolean;
begin
if DM.IBDataSetLocalParamALERTDATICLI.Value = 1 then
begin
if (( (not DM.IBDataSetClientiCELLULARE.IsNull) or  (not DM.IBDataSetClientiTELEFONO1.IsNull) or (not DM.IBDataSetClientiTELEFONO2.IsNull)) and (not DM.IBDataSetClientiEMAIL.IsNull)) then
result:=true
else
result:=false;
end
else
Result:=true;
end;



procedure TMenu.Release1Click(Sender: TObject);
begin
//showmessage('Ver: 10/03/22, Folder: "Noleggio_Web_2021_V1"');
showmessage(DM.IBDataSetParamSOFTWARE_VERSION.AsString);
end;

procedure TMenu.DBGrid2DblClick(Sender: TObject);
begin
 DM.IBDataSetArticolo.Close;
  DM.IBDataSetArticolo.SelectSQL.Clear;
  DM.IBDataSetArticolo.SelectSQL.Add('SELECT *');
  DM.IBDataSetArticolo.SelectSQL.Add('FROM ARTICOLO');
  dM.IBDataSetArticolo.SelectSQL.Add('WHERE TIPO not like "%TENNIS%"');
  DM.IBDataSetArticolo.SelectSQL.Add('ORDER BY '+DBGrid2.SelectedField.FieldName);
  DM.IBDataSetArticolo.Open;

end;

procedure TMenu.DBGrid4TitleClick(Column: TColumn);
var key:char;
begin
//DM.IBDataSetSchedule.Close;
//DM.IBDataSetSchedule.SelectSQL.Clear;
//DM.IBDataSetSchedule.SelectSQL.Add('SELECT COGNRAGSOC, NOME, INDIRIZZO, N_DOC, SCHEDULE.*');
//DM.IBDataSetSchedule.SelectSQL.Add('FROM SCHEDULE JOIN CLIENTI ON CLIENTI.CLI_NO = SCHEDULE.CLI_NO');
//if not (combobox17.Text='') then
//DM.IBDataSetSchedule.SelectSQL.Add('WHERE DATAINTRO BETWEEN "'+DecForSqlDate(strtodate(edit58.Text))+'" AND "'+DecForSqlDate(strtodate(edit59.Text))+'"');
//DM.IBDataSetSchedule.SelectSQL.Add('ORDER BY '+column.FieldName);
//DM.IBDataSetSchedule.Open;
key:=chr(13);
edit12.OnKeyPress(DBGrid4,key);
end;

procedure TMenu.DBGridObj2TitleClick(Column: TColumn);
begin
DM.IBDataSetSchedule.Close;
DM.IBDataSetSchedule.SelectSQL.Clear;
DM.IBDataSetSchedule.SelectSQL.Add('SELECT COGNRAGSOC, NOME, INDIRIZZO, N_DOC, SCHEDULE.*');
DM.IBDataSetSchedule.SelectSQL.Add('FROM SCHEDULE JOIN CLIENTI ON CLIENTI.CLI_NO = SCHEDULE.CLI_NO');
if not (combobox17.Text='') then
DM.IBDataSetSchedule.SelectSQL.Add('WHERE DATAINTRO BETWEEN "'+DecForSqlDate(strtodate(edit58.Text))+'" AND "'+DecForSqlDate(strtodate(edit59.Text))+'"');
DM.IBDataSetSchedule.SelectSQL.Add('ORDER BY '+column.FieldName);
DM.IBDataSetSchedule.Open;

end;

procedure TMenu.Edit12Click(Sender: TObject);
begin
edit12.clear;
end;

procedure TMenu.Button7Click(Sender: TObject);
var ibQuery:TIBQuery;
begin
ibquery:=Tibquery.Create(nil);
ibquery.Database:=DM.IBDatabase2;
ibquery.Transaction:=DM.IBTransaction18;
if not DM.IBTransaction18.InTransaction then
DM.IBTransaction18.StartTransaction;
ibquery.SQL.Clear;
ibquery.SQL.Add('INSERT INTO LOCALSETINGS (IDSETTINGS,POSTAZIONE,ETIC_PRINTER,PAPER_PRINTER,ALERTSCHEDNOLO,ALERTDATICLI,DEFTIPORIP,ENABCV,ENABFINV,ENABFINSCHE,ENABRIP,ENABOPER,ENABREP,ENABTREE,ENABTENNIS,ENABLABMODULE,NOLOSOFT_VER,INCORDOMAGGIO) VALUES("'+DM.GenID2('GEN_LOCSETTINGS_ID')+'","'+dm.IBDataSetLocalParamPOSTAZIONE.AsString+'","'+dm.IBDataSetLocalParamETIC_PRINTER.AsString+'","'+dm.IBDataSetLocalParamPAPER_PRINTER.AsString+'",');
ibquery.SQL.Add('"'+dm.IBDataSetLocalParamALERTSCHEDNOLO.AsString+'","'+dm.IBDataSetLocalParamALERTDATICLI.AsString+'","'+dm.IBDataSetLocalParamDEFTIPORIP.AsString+'","'+dm.IBDataSetLocalParamENABCV.AsString+'","'+dm.IBDataSetLocalParamENABFINV.AsString+'","'+dm.IBDataSetLocalParamENABFINSCHE.AsString+'","'+dm.IBDataSetLocalParamENABRIP.AsString+'","'+dm.IBDataSetLocalParamENABOPER.AsString+'","'+dm.IBDataSetLocalParamENABREP.AsString+'","'+dm.IBDataSetLocalParamENABTREE.AsString+'",');
ibquery.SQL.Add('"'+dm.IBDataSetLocalParamENABTENNIS.AsString+'","'+dm.IBDataSetLocalParamENABLABMODULE.AsString+'","'+dm.IBDataSetLocalParamNOLOSOFT_VER.AsString+'","'+dm.IBDataSetLocalParamINCORDOMAGGIO.AsString+'")');
ibquery.ExecSQL;
if DM.IBTransaction18.InTransaction then
DM.IBTransaction18.Commitretaining;
DM.IBDataSetLocalParam.Close;
DM.IBDataSetLocalParam.Open;
ibquery.Database:=DM.IBDatabase1;
ibquery.Transaction:=DM.IBTransaction13;
if not DM.IBTransaction13.InTransaction then
DM.IBTransaction13.StartTransaction;
ibquery.SQL.Clear;
ibquery.SQL.Add('INSERT INTO PARAMETRI (PARAM_NO,RAGSOC,ADMINPSW,EANTOSCAN,TAXFEELATE,NUMSCHEDPRN,ADDRESS,SERVERDB,ROOT,PREF_ART_NO,PREF_CLI_NO,PRE_SCHED_NO,PRE_OP_NO,PRE_CV_NO,PREF_RIP_NO,PREF_INC_NO,RICUSATO,DAYWORKREADY,LOGO,NOTE,NOTE1) VALUES("'+DM.GenID('PARAMNO_GEN')+'","'+dm.IBDataSetParamRAGSOC.AsString+'","'+dm.IBDataSetParamADMINPSW.AsString+'","'+dm.IBDataSetParamEANTOSCAN.AsString+'","'+dm.IBDataSetParamTAXFEELATE.AsString+'",');
ibquery.SQL.Add('"'+dm.IBDataSetParamNUMSCHEDPRN.AsString+'","'+dm.IBDataSetParamADDRESS.AsString+'","'+dm.IBDataSetParamSERVERDB.AsString+'","'+dm.IBDataSetParamROOT.AsString+'","'+dm.IBDataSetParamPREF_ART_NO.AsString+'","'+dm.IBDataSetParamPREF_CLI_NO.AsString+'","'+dm.IBDataSetParamPRE_SCHED_NO.AsString+'","'+dm.IBDataSetParamPRE_OP_NO.AsString+'","'+dm.IBDataSetParamPRE_CV_NO.AsString+'","'+dm.IBDataSetParamPREF_RIP_NO.AsString+'","'+dm.IBDataSetParamPREF_INC_NO.AsString+'",');
ibquery.SQL.Add('"'+dm.IBDataSetParamRICUSATO.AsString+'","'+dm.IBDataSetParamDAYWORKREADY.AsString+'",:LOGO,"'+DM.IBDataSetParamNOTE.AsString+'","'+DM.IBDataSetParamNOTE1.AsString+'")');
ibquery.ParamByName('LOGO').AsBlob:=dm.IBDataSetParamLOGO.Value;
ibquery.ExecSQL;
if DM.IBTransaction13.InTransaction then
DM.IBTransaction13.Commitretaining;
DM.IBDataSetParam.Close;
DM.IBDataSetParam.Open;
ibquery.Close;
ibquery.Free;
end;

procedure TMenu.BitBtn41Click(Sender: TObject);
begin
if Bitbtn41.Caption='TUTTI GLI ARTICOLI' then
begin
Bitbtn41.Caption:='SOLO ARTICOLI CV';
dm.IBDataSetArticolo.Close;
dm.IBDataSetArticolo.SelectSQL.Clear;
dm.IBDataSetArticolo.SelectSQL.Add('SELECT * FROM ARTICOLO WHERE CLI_NO="'+dm.IBDataSetClientiCLI_NO.AsString+'"');
dm.IBDataSetArticolo.Open;
end
else
begin
Bitbtn41.Caption:='TUTTI GLI ARTICOLI';
dm.IBDataSetArticolo.Close;
dm.IBDataSetArticolo.SelectSQL.Clear;
DM.IBDataSetArticolo.SelectSQL.Add('SELECT * FROM ARTICOLO WHERE (CLI_NO="'+DM.IBDataSetClientiCLI_NO.AsString+'" AND CV=1)');
//dm.IBDataSetArticolo.SelectSQL.Add('SELECT * FROM ARTICOLO WHERE CLI_NO="'+dm.IBDataSetClientiCLI_NO.AsString+'"');
dm.IBDataSetArticolo.Open;
end



end;

procedure TMenu.BitBtn42Click(Sender: TObject);
begin
if not (DM.IBDataSetArticolo.State in [dsEdit,dsInsert]) then
dm.IBDataSetArticolo.Edit;
dm.IBDataSetArticoloCV.AsInteger:=0;
dm.IBDataSetArticolo.Post;
dm.IBDataSetArticolo.Close;
dm.IBDataSetArticolo.SelectSQL.Clear;
DM.IBDataSetArticolo.SelectSQL.Add('SELECT * FROM ARTICOLO WHERE (CLI_NO="'+DM.IBDataSetClientiCLI_NO.AsString+'" AND CV=1)');
dm.IBDataSetArticolo.Open;
end;

procedure TMenu.Button8Click(Sender: TObject);
  var
  Memotemp10:TStringlist;
    sttmp:String;
    begin
 memotemp10:=TStringlist.Create;
 memotemp10.LoadFromFile(getcurrentdir+'\Ricevuta_Noleggio.html');
 sttmp:=Memotemp10.Text;
 sttmp:= StringReplace(sttmp, '%1', DM.IBDataSetScheduleNOME.AsString+' '+DM.IBDataSetScheduleCOGNRAGSOC.AsString,[rfReplaceAll, rfIgnoreCase]);

//SendEmailMessage1(edit56.text,'Prova','Ciao','');
//SendHtmlMessage(edit56.text,'Prova','Ciao','D:\Noleggio 20-07-17 WebAddicted\Prova.pdf',1);  //causale 1 finale : manda testo
//Sendemailmessage('+393357116528@sms.kqumg.it','','PROVAZZO','');
//('3357116528@sms.kqumg.it','','Ciao MAGUUUUUU','',2);
SendEmailMessage(1,edit56.text,'prova',sttmp, 'D:\Noleggio 20-07-17 WebAddicted\Prova.pdf');
//SendHtmlMessage('+393357116528','Prova','Ciao','',2);  //causale 2 finale : manda SMS

end;



function TMenu.QtaArtXScheda(Schedno:integer):integer;
var Querytemp:TIBQuery;
begin
querytemp:=TIBQuery.Create(nil);
querytemp.Transaction:=DM.IBTransaction6;
QueryTemp.SQL.Add('SELECT COUNT(*) FROM RENTEDART WHERE SCHED_NO="'+IntToStr(SCHEDNO)+'"');
Querytemp.Open;
if not querytemp.IsEmpty then
result:=querytemp.FieldByName('COUNT').AsInteger
else
result:=0;
end;


procedure TMenu.SpeedButton14Click(Sender: TObject);
var dir:string;
const seldirhelp=1000;
begin
if SelectDirectory(dir, [sdAllowCreate, sdPerformCreate, sdPrompt],SELDIRHELP) then
DM.IBDataSetLocalParamPATHFILEPDFSCHED.Value:=dir;
end;

procedure TMenu.BitBtn43Click(Sender: TObject);
begin
AvailableItem.ShowModal;
end;

procedure TMenu.Edit5DblClick(Sender: TObject);
begin
AvailableItem.Edit1.Text:=(Sender as Tedit).Text;
BitBtn43Click(Sender);
end;



function Tmenu.ValidateEmail(mail:string):boolean;
var
  I: Integer;
  user, domain: string;
begin
  Result := False;

  I := Pos('@', mail);
  if I = 0 then Exit;

  user := Copy(mail, 1, I-1);
  domain := Copy(mail, I+1, MaxInt);

  IdDNSResolver1.Host :='8.8.8.8';
  IdDNSResolver1.QueryType := [qtMX];

  try
    IdDNSResolver1.Resolve(domain);
  except
    Exit;
  end;

  for I := 0 to IdDNSResolver1.QueryResult.Count-1 do
  begin
    if IdDNSResolver1.QueryResult[I] is TMXRecord then
    begin
      IdSMTP1.Host := TMXRecord(IdDNSResolver1.QueryResult[I]).ExchangeServer;
      try
        IdSMTP1.Connect;
        try
          IdSMTP1.Verify(user);
          Result := True;
          Exit;
        finally
          IdSMTP1.Disconnect;
        end;
      except
      end;
    end;
  end;
end;





procedure TMenu.Button19Click(Sender: TObject);
var   ThreadEmail,ThreadEmail1 : TThreadSendMail;
begin
//ThreadEmail:=TThreadSendMail.Create(1,'stefano@parmasport.it','prova','prova','D:\Noleggio 20-07-17 WebAddicted\Prova.pdf','',edit50.Text,strtoint(edit55.text),edit53.Text,edit54.Text);
//threademail.Execute;
//ThreadEmail1:=TThreadSendMail.Create(2,'3357116528','prova','prova','','',edit50.Text,strtoint(edit55.text),edit53.Text,edit54.Text);
//threademail1.Execute;
PreAvvisoConsegna;
end;

procedure TMenu.Timer1Timer(Sender: TObject);
var
 myHour, myMin, mySec, myMilli : Word;
begin
if DM.IBDatabase1.Connected=true then
 begin
  DecodeTime(now, myHour, myMin, mySec, myMilli);
  if (myhour>20) and (myhour<22)  then
   PreAvvisoConsegna;
  if (myhour>22) and (myhour<24)  then
   begin
    FeeDayLateCalc1(DM.IBDataSetParamTAXFEELATE.AsFloat);
    SetSchedStatoCons;
   end;
 end;
end;




procedure TMenu.SpeedButton15Click(Sender: TObject);
begin
if not (DM.IBDataSetParam.State=dsEdit) then
DM.IBDataSetParam.Edit;
BrDateForm.date:=date;
if BrDateForm.Showmodal= mrOk then
    DM.IBDataSetParamSTRADVFRMDATA.AsDateTime:=BrDateForm.Date;
    DM.IBDataSetParam.Post;
    end;

procedure TMenu.RfidSetup1Click(Sender: TObject);
begin
Rfid_trial.Rfidtest.show;

end;

procedure TMenu.Timer2Timer(Sender: TObject);
var
ncount:cardinal;
i: byte;
res,j,x:integer;
   PC: pchar;
  s1,s,inp,temp,temp1 : string;
valuex: Tagsarray;
value1:tatags;
antenna:byte;
begin
antenna:=$FF;
ncount:=0;

ClearIDBuffer(Rfid_trial.h,255);
SetLength(inp,255);
pc:=Addr(inp[1]);
res:=Gen2Read(Rfid_trial.h,2,0,8,PC,255) ;
    if res = 0 then begin
        s:= '';
        for I := 0 to 15 do
        begin
        s := s + inttohex(byte(pc[i]),2);
        end;
        Sleep(50);
        if Timer2.tag=1 then
        DM.IBDataSetArticoloMANUALCODE.Value:=s
        else
        DM.IBDataSetArticoloMANUALCODE1.Value:=s;
        Timer2.Enabled:=false;
    end;
end;


procedure TMenu.Timer2override(Sender:Tobject);
var
ncount:cardinal;
i: byte;
res,j,x:integer;
Index: Integer;
  PC: pchar;
  s1,s,inp,temp,temp1 : string;
valuex: Tagsarray;
value1:tatags;
antenna:byte;
begin
antenna:=$FF;
ncount:=0;
ClearIDBuffer(Rfid_trial.h,255);
SetLength(inp,255);
pc:=Addr(inp[1]);
res:=Gen2Read(Rfid_trial.h,2,0,8,PC,255) ;
    if res = 0 then begin
        s:= '';
        for I := 0 to 15 do
        begin
        s := s + inttohex(byte(pc[i]),2);
        end;
        Sleep(50);
        //Lista.Sort;
        //if not lista.Find(s, Index) then
        Lista.Append(s);
        end;

end;


procedure TMenu.DBEdit89Enter(Sender: TObject);
begin
timer2.Tag:=1;
timer2.Enabled:=true;
end;

procedure TMenu.DBEdit89Exit(Sender: TObject);
begin
timer2.Enabled:=false;
end;

procedure TMenu.DBEdit90Enter(Sender: TObject);
begin
timer2.Tag:=2;
timer2.Enabled:=true;
end;

procedure TMenu.DBEdit90Exit(Sender: TObject);
begin
timer2.Enabled:=false;
end;

procedure TMenu.SpeedButton20Click(Sender: TObject);
var renartno,numart,aperti,chiusi,i,index:integer;
Qry1Tmp: Tibquery;
begin
 if ControlFieldschedule = true then
 begin
  if (Sender as TSpeedbutton).Down=true then
   begin
     if not assigned(Lista) then
     Lista:=Tstringlist.Create
     else
     Lista.clear;
     timer2.OnTimer:=Timer2override;
     timer2.Enabled:=true;
    end
  else
  begin
   timer2.Enabled:=false;
   timer2.OnTimer:=Timer2Timer;
   if edit3.Visible=true then
   begin //carico
       Lista.Sort;
      for i := 0 to lista.Count-1 do
       begin
        if (not lista.Find(artnofromrfid(lista[i]), Index)) then
        lista[i]:=artnofromrfid(lista[i])
        else
        lista[i]:='NULL';
        if lista[i]='NULL' then
        begin
        lista[i]:='! Rfid Code '+lista[i]+' Non codificato';
        continue;
        end;
       // if length(lista[i])<8 or lista[i]<>'' or lista[i]<>'' then
         if CheckArtIsReserved(lista[i],datetimetostr(DM.IBDataSetScheduleDATASTARTRENT.Value-DM.IBDataSetParamDAYRESERVSTART.Value),datetimetostr(DM.IBDataSetScheduleDATATAKEBACK.Value+DM.IBDataSetParamDAYRESERVBACK.Value))=1  then
        begin
        lista[i]:='! Articolo '+lista[i]+' Già prenotato per il periodo';
        continue;
        end;
       if  QueryCheckStatus(lista[i],'DISPONIBILE') and (lista[i]<>'') and (lista[i]<>'0') and checkinrentedart(lista[i],DM.IBDataSetScheduleSCHED_NO.AsString)=false  then   //controllo se l'articolo è già noleggiato
        begin
        lista[i]:='! Articolo '+lista[i]+' Già noleggiato';
        continue;
        end;
       end;
      for i := 0 to lista.Count-1 do
       begin
         if AnsiPos('!',lista[i]) = 0 then
         begin
         renartno:=CheckArtGiaInRented(lista[i],DM.IBDataSetScheduleSCHED_NO.AsString);
          if (Renartno =0) then
           begin
            Qry1Tmp:=TIBQuery.Create(nil);
            Qry1Tmp.active:=false;
            Qry1Tmp.DataBase := DM.IBDatabase1;
            Qry1Tmp.Transaction:=DM.IBTransaction6;
            Qry1Tmp.SQL.Text := 'INSERT INTO RENTEDART (RENART_NO,CLI_NO,ART_NO,SCHED_NO,STATO) VALUES("'+DM.GenID('RENARTNO_GEN')+'","'+DM.IBDataSetClientiCLI_NO.AsString+'","'+lista[i]+'","'+DM.IBDataSetScheduleSCHED_NO.AsString+'","NOLEGGIATO")';
            Qry1Tmp.ExecSQL;
            Qry1Tmp.Free;
           end
           else
           begin
            Qry1Tmp:=TIBQuery.Create(nil);
            Qry1Tmp.active:=false;
            Qry1Tmp.DataBase := DM.IBDatabase1;
            Qry1Tmp.Transaction:=DM.IBTransaction6;
            Qry1Tmp.SQL.Text := 'UPDATE RENTEDART SET STATO ="NOLEGGIATO" WHERE RENART_NO="'+inttostr(RENARTNO)+'"';
            Qry1Tmp.ExecSQL;
            Qry1Tmp.Free;
           end;
           DM.IBDataSetScheduleSUBTOTALE.AsFloat:=DM.IBDataSetScheduleSUBTOTALE.AsFloat + CalcRentedArtNew(strtoint(lista[i]));
           DM.IBDataSetScheduleNETPRICE.AsFloat:=DM.IBDataSetScheduleSUBTOTALE.AsFloat+(DM.IBDataSetScheduleSUBTOTALE.AsFloat*DM.IBDataSetScheduleDISCOUNT.AsFloat/100);
           numart:=0; Aperti:=0; chiusi:=0;
           edit14.Text:=inttostr(ScheduleResult(DM.IBDataSetScheduleSCHED_NO.AsInteger));
           Edit16.Text:=inttostr(QtaArtApertiPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));
           Edit15.Text:=inttostr(QtaArtChiusiPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));
 end;
       end;
   DM.IBQuery1.Close;
   dM.IBQuery1.Prepare;
   DM.IBQuery1.ParamByName('SCHEDNO').AsInteger:=DM.IBDataSetScheduleSCHED_NO.AsInteger;
   DM.IBQuery1.Open;



   end
     else
  begin //scarico
        Lista.Sort;
      for i := 0 to lista.Count-1 do
       begin
        if not lista.Find(artnofromrfid(lista[i]), Index) then
        lista[i]:=artnofromrfid(lista[i]);
        if lista[i]='NULL' then
        begin
        lista[i]:='! Rfid Code '+lista[i]+' Non codificato';
        continue;
        end;
        if QueryArtToDownload(lista[i], DM.IBDataSetScheduleSCHED_NO.AsString) = false then
        begin
        lista[i]:='! Articolo '+lista[i]+' Già scaricato';
        continue;
        end;
       end;
      for i := 0 to lista.Count-1 do
       begin
         if AnsiPos('!',lista[i]) = 0 then
         begin
         SetArtStato(strtoint(lista[i]),'DISPONIBILE');
         SetRentedStato(strtoint(lista[i]),DM.IBDataSetRentedSCHED_NO.AsInteger, 'RESO');
         end;
         end;
         DM.IBDataSetRented.Close;
         DM.IBDataSetRented.Prepare;
         DM.IBDataSetRented.Params.ByName('SCHEDNO').AsInteger:=DM.IBDataSetScheduleSCHED_NO.AsInteger;
         DM.IBDataSetRented.Open;
         DM.IBQuery1.Close;
         dM.IBQuery1.Prepare;
         DM.IBQuery1.ParamByName('SCHEDNO').AsInteger:=DM.IBDataSetScheduleSCHED_NO.AsInteger;
         DM.IBQuery1.Open;
         edit14.Text:=inttostr(ScheduleResult(DM.IBDataSetScheduleSCHED_NO.AsInteger));
         Edit16.Text:=inttostr(QtaArtApertiPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));
         Edit15.Text:=inttostr(QtaArtChiusiPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));









  end;   //scarico
  end;
  end
 else
 begin
 if (Sender as TSpeedbutton).Down=true then
  (Sender as TSpeedbutton).Down:=false;
 end;
 end;


procedure TMenu.GroupBox2Enter(Sender: TObject);
begin
DM.ADOQuery1.Close;
DM.ADOQuery1.SQL.Clear;
DM.ADOQuery1.SQL.Add('SELECT DISTINCT CITTA FROM COMUNI');
DM.ADOQuery1.Open;
DM.ADOQuery1.First;
DBCombobox1.Clear;
while not DM.ADOQuery1.Eof do
begin
DBcombobox1.Items.Add(DM.ADOQuery1.Fields.Fields[0].AsString);
DM.ADOQuery1.Next;
end;
DBcombobox1.Field.Value:=DM.IBDataSetClientiCITTA.AsString;
end;


procedure TMenu.Label18Click(Sender: TObject);
begin
//webcam.show;
end;

procedure TMenu.DBComboBox_CamsEnter(Sender: TObject);
begin
DBCombobox_cams.Items:=webcam.ComboBox_Cams.Items;
end;

procedure TMenu.DBComboBox_CamsChange(Sender: TObject);
begin
DM.IBDataSetLocalParamCAMERAID.Value:=DBcombobox_cams.itemIndex+1;
end;

procedure TMenu.BitBtn44Click(Sender: TObject);
begin
webcam.show;
end;

procedure TMenu.DBEdit94DblClick(Sender: TObject);
begin
savepicturedialog1.Execute;
DM.IBDataSetLocalParamDOCIMAGESAVEPATH.Value:=ExtractFilePath(savepicturedialog1.FileName);
end;

procedure TMenu.LoadJpgToImageBmp(var img:Timage; path:string);
 var
   jpg: TJpegImage;
   bmp: TBitmap;
   img1: Timage;
 begin
   jpg := TJpegImage.Create;
   jpg.LoadFromFile(path);
   bmp := TBitmap.Create;
   bmp.Assign(jpg);
   img1:=Timage.Create(nil);
   img.Picture.assign(bmp);
   jpg.free;
   bmp.Free;
end;


procedure TMenu.Image1DblClick(Sender: TObject);
var formcam:TVideoForm;
    imgold:Timage;
begin
if  ((not DM.IBDataSetLocalParamCAMERA.IsNull) and (not DM.IBDataSetLocalParamCAMERAID.IsNull) and (not DM.IBDataSetLocalParamDOCIMAGESAVEPATH.IsNull)) then
begin
imgold:=Timage.create(nil);
imgold.Picture.Bitmap.Assign(image1.Picture.Bitmap);
Formcam:=TVideoForm.Create(Menu);
Formcam.idCamdevice:=0;
Formcam.Name:='FormCam';
Formcam.imageobj.Picture.Bitmap.Assign(image1.Picture.Bitmap);
Formcam.showModal;
if Formcam.imageobj.Picture.Graphic = nil then
 begin
 image1.Picture.Bitmap.Assign(imgold.Picture.Bitmap);
 end
 else
 begin
 image1.Tag:=1;
 image1.Picture.Bitmap.Assign(Formcam.imageobj.Picture.Bitmap);
 end;
Formcam.Destroy;
end;

{if fileexists(DM.IBDataSetLocalParamDOCIMAGESAVEPATH.AsString+'\Docu_'+DM.IBDataSetClientiCLI_NO.AsString+'-F.jpg') then
LoadJpgToImageBmp(image1,DM.IBDataSetLocalParamDOCIMAGESAVEPATH.AsString+'\Docu_'+DM.IBDataSetClientiCLI_NO.AsString+'-F.jpg')
else
//image1.Picture.LoadFromFile('E:\Noleggio_Web_2021_V1\annulla.bmp');
image1.Picture.LoadFromFile(extractfilepath(Application.exename)+'annulla.bmp' );
}

// devo salvare il jpg con lafter post quando ho già id cli
end;



procedure TMenu.Image2Click(Sender: TObject);
var stringa:string;
begin
 if fileexists(DM.IBDataSetLocalParamDOCIMAGESAVEPATH.AsString+'\Docu_'+DM.IBDataSetClientiCLI_NO.AsString+'-F.jpg') then
  begin
 stringa:=stringreplace(DateTimeToStr(now), '/', '-',[rfReplaceAll, rfIgnoreCase]);
 stringa:=stringreplace(stringa, ':', '-',[rfReplaceAll, rfIgnoreCase]);
 RenameFile(DM.IBDataSetLocalParamDOCIMAGESAVEPATH.AsString+'\Docu_'+DM.IBDataSetClientiCLI_NO.AsString+'-F.jpg', DM.IBDataSetLocalParamDOCIMAGESAVEPATH.AsString+'\Docu_'+DM.IBDataSetClientiCLI_NO.AsString+'_'+stringa+'-F.jpg');  //+stringreplace(DateTimeToStr(now), '/', '-',[rfReplaceAll, rfIgnoreCase])+
// showmessage('ok conversion')
// else
// showmessage('fail conversion');
 //  image1.Picture.LoadFromFile('E:\Noleggio_Web_2021_V1\annulla.bmp');
//  image1.Picture.LoadFromFile(extractfilepath(Application.exename)+'annulla.bmp' );
  image1.Picture.LoadFromFile(AppDataPath+'annulla.bmp' );

  image1.Tag:=0; //non caricato 0 caricato 1
  end
  else
  begin
  if image1.Tag=1 then
   begin
   //image1.Picture.LoadFromFile(extractfilepath(Application.exename)+'annulla.bmp' );
   image1.Picture.LoadFromFile(AppDataPath+'annulla.bmp' );
   image1.Tag:=0; //non caricato 0 caricato 1
   end;
  end;
end;

procedure TMenu.Image3Click(Sender: TObject);
begin
if fileexists(DM.IBDataSetLocalParamDOCIMAGESAVEPATH.AsString+'\Docu_'+DM.IBDataSetClientiCLI_NO.AsString+'-F.jpg') then
begin
 doc_view.docupath:=DM.IBDataSetLocalParamDOCIMAGESAVEPATH.AsString+'\Docu_'+DM.IBDataSetClientiCLI_NO.AsString+'-F.jpg';
 doc_view.showmodal;
end
else
begin
 if image1.Tag=1 then
 begin
 doc_view.docupath:='';
  doc_view.Image1.Picture.Assign(image1.Picture);
  doc_view.showmodal;
  end;
end;



end;

procedure TMenu.BitBtn45Click(Sender: TObject);
begin
dm.IBDataSetLocalParamCAMERA.Clear;
dm.IBDataSetLocalParamCAMERAID.Clear;
dm.IBDataSetLocalParamDOCIMAGESAVEPATH.Clear;
end;


procedure TMenu.CheckPagRip1Click(Sender: TObject);
begin
checkrippayed.show;
end;

procedure TMenu.RadioGroup2Click(Sender: TObject);
var query1: Tibquery;
    dsquery: Tdatasource;
    orderby:string;
begin
query1:=Tibquery.Create(nil);
dsquery:=Tdatasource.Create(nil);
dsquery.DataSet:=query1;
query1.Database:=DM.IBDatabase1;
query1.SQL.Add('SELECT RIP_NO,COGNRAGSOC,NOME,DATARITIRORICH,SC_NUMCASSA,SC_DATAORA,SC_NUMDOC,SC_IMPORTO,PAGATO, TIPOPRODOTTO, BRAND, DESCRIZIONE,PREZZO FROM RIPARAZIONE INNER JOIN CLIENTI ON RIPARAZIONE.CLI_NO=CLIENTI.CLI_NO ');

 case RadioGroup2.ItemIndex of 
    0: orderby:='ORDER BY DATARITIRORICH DESC';
    1: orderby:='ORDER BY RIP_NO DESC';
    2: orderby:='ORDER BY COGNRAGSOC,NOME DESC';
    end;
query1.SQL.Add(orderby);
query1.Open;
dbgrid9.DataSource:=dsquery;

end;

procedure SplitText(const Input: string; Parts: TStringList);
var   TempString: string;
begin
  if Assigned(Parts) then
  begin
    Parts.Clear;                      // Clear any existing content in the list
    Parts.Delimiter := ' ';           // Set the delimiter to a space
                      // Clear the list

    // Replace multiple spaces with a single space
    TempString := Trim(Input);
    while Pos('  ', TempString) > 0 do
      TempString := StringReplace(TempString, '  ', ' ', [rfReplaceAll]);
    Parts.DelimitedText := Input;     // Assign the input text
  end;
 end;


procedure TMenu.Image6Click(Sender: TObject);
var stringa:string;
begin
 if fileexists(DM.IBDataSetLocalParamDOCIMAGESAVEPATH.AsString+'\Docu_'+DM.IBDataSetClientiCLI_NO.AsString+'-R.jpg') then
  begin
 stringa:=stringreplace(DateTimeToStr(now), '/', '-',[rfReplaceAll, rfIgnoreCase]);
 stringa:=stringreplace(stringa, ':', '-',[rfReplaceAll, rfIgnoreCase]);
 RenameFile(DM.IBDataSetLocalParamDOCIMAGESAVEPATH.AsString+'\Docu_'+DM.IBDataSetClientiCLI_NO.AsString+'-R.jpg', DM.IBDataSetLocalParamDOCIMAGESAVEPATH.AsString+'\Docu_'+DM.IBDataSetClientiCLI_NO.AsString+'_'+stringa+'-R.jpg');  //+stringreplace(DateTimeToStr(now), '/', '-',[rfReplaceAll, rfIgnoreCase])+
// showmessage('ok conversion')
// else
// showmessage('fail conversion');
 //  image1.Picture.LoadFromFile('E:\Noleggio_Web_2021_V1\annulla.bmp');
  //image4.Picture.LoadFromFile(extractfilepath(Application.exename)+'annulla.bmp' );
  image4.Picture.LoadFromFile(AppDataPath+'annulla.bmp' );
  image4.Tag:=0; //non caricato 0 caricato 1
  end
  else
  begin
  if image4.Tag=1 then
   begin
   //image4.Picture.LoadFromFile(extractfilepath(Application.exename)+'annulla.bmp' );
   image4.Picture.LoadFromFile(AppDataPath+'annulla.bmp' );
   image4.Tag:=0; //non caricato 0 caricato 1
   end;
  end;
end;



procedure TMenu.Edit64KeyPress(Sender: TObject; var Key: Char);
var query1: Tibquery;
    dsquery: Tdatasource;
    orderby:string;
    Value: integer; // Use Extended to cover both integers and floating-point numbers
    splittedstr:Tstringlist;
begin
query1:=Tibquery.Create(nil);
dsquery:=Tdatasource.Create(nil);
dsquery.DataSet:=query1;
query1.Database:=DM.IBDatabase1;
 if Key = #13 then // Rileva il tasto Enter (codice ASCII 13)
  begin
  if not TryStrToInt(edit64.text, Value) then
   begin
    splittedstr:=Tstringlist.create();
    SplitText(edit64.text, splittedstr);
    query1.SQL.Clear;
    query1.SQL.Add('SELECT RIP_NO,COGNRAGSOC,NOME,DATARITIRORICH,SC_NUMCASSA,SC_DATAORA,SC_NUMDOC,SC_IMPORTO,PAGATO, TIPOPRODOTTO, BRAND, DESCRIZIONE,PREZZO FROM RIPARAZIONE INNER JOIN CLIENTI ON RIPARAZIONE.CLI_NO=CLIENTI.CLI_NO ');
   // query1.SQL.add(' WHERE COGNRAGSOC LIKE "%'+Edit64.text+'%"');
    case splittedstr.count of
    1:query1.SQL.add(' WHERE COGNRAGSOC LIKE "%'+splittedstr[0]+'%"');
    2:query1.SQL.add(' WHERE COGNRAGSOC LIKE "%'+splittedstr[0]+'%" and NOME LIKE "%'+splittedstr[1]+'%"');
      end;
      query1.Open;
     if query1.IsEmpty  then
      begin
       query1.SQL.Clear;
       query1.SQL.Add('SELECT RIP_NO,COGNRAGSOC,NOME,DATARITIRORICH,SC_NUMCASSA,SC_DATAORA,SC_NUMDOC,SC_IMPORTO,PAGATO, TIPOPRODOTTO, BRAND, DESCRIZIONE,PREZZO FROM RIPARAZIONE INNER JOIN CLIENTI ON RIPARAZIONE.CLI_NO=CLIENTI.CLI_NO ');
       query1.SQL.add(' WHERE COGNRAGSOC LIKE "%'+splittedstr[1]+'%" and NOME LIKE "%'+splittedstr[0]+'%"');
       query1.Open;
       if query1.IsEmpty  then
        showmessage(edit64.text+' NESSUN RISULTATO');
      end;
   end
   else
    begin
    query1.SQL.Clear;
    query1.SQL.Add('SELECT RIP_NO,COGNRAGSOC,NOME,DATARITIRORICH,SC_NUMCASSA,SC_DATAORA,SC_NUMDOC,SC_IMPORTO,PAGATO, TIPOPRODOTTO, BRAND, DESCRIZIONE,PREZZO FROM RIPARAZIONE INNER JOIN CLIENTI ON RIPARAZIONE.CLI_NO=CLIENTI.CLI_NO ');
    query1.SQL.add(' WHERE RIP_NO = '+Edit64.text);
    query1.Open;
    if query1.IsEmpty then
    showmessage('RIPARAZIONE N° '+Edit64.text+' NON TROVATA');
    end;
  dbgrid9.DataSource:=dsquery;
    Edit64.Clear;
  end;

end;

procedure TMenu.BitBtn46Click(Sender: TObject);
var Noloini:Tinifile;
begin
//Noloini:=Tinifile.Create(changefileext(Application.exename,'.ini'));
Noloini:=Tinifile.Create(AppDataPath+'nolosoft.ini');

try
Noloini.WriteString('SMS','ENDPOINT_INOLTRO',Edit_EndPInvioSMS.Text);
Noloini.WriteString('SMS','ENDPOINT_CREDITI',Edit_EndPCreditSMS.Text);
Noloini.WriteString('SMS','LOGIN',Edit_LoginSMS.Text);
Noloini.WriteString('SMS','PSW',Edit_PswSMS.Text);
Noloini.WriteString('SMS','SENDER',Edit_SenderSMS.Text);
Noloini.WriteString('SMS','SOGLIA_SMS',Edit_SogliaSMS.Text);
Noloini.WriteString('SMS','EMAIL_SOGLIA',Edit_Emailalert.Text);
Noloini.WriteString('SMS','NUMTEL_TEST',Edit_NTelTest.Text);
if check_soglia.Checked then
Noloini.WriteInteger('SMS','ABILITA_CHECK_SOGLIA',1)
else
Noloini.WriteInteger('SMS','ABILITA_CHECK_SOGLIA',0);

finally
noloini.Free;
end;
end;

function IsValidEmail(const AEmail: string): Boolean;
var
  AtPos, DotPos, i: Integer;
  LocalPart, DomainPart: string;
begin
  Result := False;

  if Length(AEmail) < 6 then Exit;

  AtPos := Pos('@', AEmail);
  if AtPos < 2 then Exit;
  if AtPos = Length(AEmail) then Exit;

  LocalPart  := Copy(AEmail, 1, AtPos - 1);
  DomainPart := Copy(AEmail, AtPos + 1, Length(AEmail));

  DotPos := Pos('.', DomainPart);
  if DotPos < 2 then Exit;
  if DomainPart[Length(DomainPart)] = '.' then Exit;
  if (Length(DomainPart) - DotPos) < 2 then Exit;

  for i := 1 to Length(LocalPart) do
    if not (LocalPart[i] in
      ['a'..'z', 'A'..'Z', '0'..'9', '.', '_', '%', '+', '-']) then
      Exit;

  for i := 1 to Length(DomainPart) do
    if not (DomainPart[i] in
      ['a'..'z', 'A'..'Z', '0'..'9', '.', '-']) then
      Exit;

  Result := True;
end;


procedure TMenu.Button42Click(Sender: TObject);
begin
if SendSMS(edit_loginSMS.Text,edit_pswSMS.Text,'TEST SMS',Edit_NTelTest.text,Edit_SenderSMS.Text,Edit_EndPInvioSMS.text) then
showmessage('sms inviato con successo')
else
showmessage('sms non inviato, errore!');
end;

procedure TMenu.Button43Click(Sender: TObject);
begin
showmessage(inttostr(CheckSMSCredit(edit_loginSMS.Text,edit_pswSMS.Text,Edit_EndPCreditSMS.Text)));
end;

procedure TMenu.Image4DblClick(Sender: TObject);
var formcam:TVideoForm;
    imgold:Timage;
begin
if  ((not DM.IBDataSetLocalParamCAMERA.IsNull) and (not DM.IBDataSetLocalParamCAMERAID.IsNull) and (not DM.IBDataSetLocalParamDOCIMAGESAVEPATH.IsNull)) then
begin
{webcam.F_R:=False;
webcam.showmodal;
if assigned(webcam.BMP) then
begin
Image4.Picture.Assign(webcam.BMP);
image4.Tag:=1; //foto documento assegnata
//webcam.bmp.free;
end;}
imgold:=Timage.create(nil);
imgold.Picture.Bitmap.Assign(image4.Picture.Bitmap);
Formcam:=TVideoForm.Create(Menu);
Formcam.idCamdevice:=0;
Formcam.Name:='FormCam';
Formcam.imageobj.Picture.Bitmap.Assign(image4.Picture.Bitmap);
Formcam.showModal;
if Formcam.imageobj.Picture.Graphic = nil then
 begin
 image4.Picture.Bitmap.Assign(imgold.Picture.Bitmap);
 end
 else
 begin
 image4.Tag:=1;
 image4.Picture.Bitmap.Assign(Formcam.imageobj.Picture.Bitmap);
 end;
Formcam.Destroy;
end;

{
if fileexists(DM.IBDataSetLocalParamDOCIMAGESAVEPATH.AsString+'\Docu_'+DM.IBDataSetClientiCLI_NO.AsString+'-R.jpg') then
LoadJpgToImageBmp(image4,DM.IBDataSetLocalParamDOCIMAGESAVEPATH.AsString+'\Docu_'+DM.IBDataSetClientiCLI_NO.AsString+'-R.jpg')
else
//image1.Picture.LoadFromFile('E:\Noleggio_Web_2021_V1\annulla.bmp');
image4.Picture.LoadFromFile(extractfilepath(Application.exename)+'annulla.bmp' );
}
end;

procedure TMenu.Image5Click(Sender: TObject);
begin
if fileexists(DM.IBDataSetLocalParamDOCIMAGESAVEPATH.AsString+'\Docu_'+DM.IBDataSetClientiCLI_NO.AsString+'-R.jpg') then
begin
 doc_view.docupath:=DM.IBDataSetLocalParamDOCIMAGESAVEPATH.AsString+'\Docu_'+DM.IBDataSetClientiCLI_NO.AsString+'-R.jpg';
 doc_view.showmodal;
end
else
begin
 if image4.Tag=1 then
 begin
 doc_view.docupath:='';
  doc_view.Image1.Picture.Assign(image4.Picture);
  doc_view.showmodal;
  end;
end;
end;

procedure TMenu.BTNRESET_CLIClick(Sender: TObject);
begin
DM.IBDataSetClienti.Close;
DM.IBDataSetClienti.SelectSQL.Clear;
DM.IBDataSetClienti.SelectSQL.Add('SELECT *');
DM.IBDataSetClienti.SelectSQL.Add('FROM Clienti');
DM.IBDataSetClienti.SelectSQL.Add('ORDER BY CLI_NO');
DM.IBDataSetClienti.Open;
EditCognome.Clear;
EditNome.Clear;
end;

procedure TMenu.Timer3Timer(Sender: TObject);
var  ThreadEmail:TThreadSendMail;
begin

if (trunc(now) > trunc(DM.IBDataSetParamDATA_ALLARM_LIM_SMS.AsDateTime)) and check_soglia.Checked then
begin
if CheckSMSCredit(edit_loginSMS.Text,edit_pswSMS.Text,Edit_EndPCreditSMS.Text)<strtoint(Edit_SogliaSMS.text) then
 begin
  ThreadEmail:=TThreadSendMail.Create(4,Edit56.Text,'ALERT LIMITE SMS','limite sms minimo raggiunto: '+Edit_SogliaSMS.text,'','',edit50.Text,strtoint(edit55.text),edit53.Text,edit54.Text);
//  if Threademail.ValidEmail(Edit56.Text) then
  ThreadEmail.Execute;
  if not (DM.IBDataSetParam.State in [dsEdit,dsinsert]) then
  DM.IBDataSetParam.Edit;
  DM.IBDataSetParamDATA_ALLARM_LIM_SMS.Value:=now;
  DM.IBDataSetParam.Post;
end;
end;
timer3.Enabled:=false;
end;

procedure TMenu.EditCognomeEnter(Sender: TObject);
begin
// dm.LockAfterScroll:=true;
//dm.IBDataSetClienti.DisableControls;
end;

procedure TMenu.EditCognomeExit(Sender: TObject);
begin
//dm.LockAfterScroll:=false;
//dm.IBDataSetClienti.EnableControls;
end;

procedure TMenu.EditNomeEnter(Sender: TObject);
begin
 dm.LockAfterScroll:=true;

end;

procedure TMenu.EditNomeExit(Sender: TObject);
begin
dm.LockAfterScroll:=false;
end;

procedure TMenu.PageControl1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
 if DM.IBDataSetClienti.State in [dsEdit,dsinsert] then
   begin
    AllowChange := False;  // impedisce il cambio
    showmessage('Scheda cliente aperta Salavare o Annullare');
    end;
end;

procedure TMenu.SpeedButton21Click(Sender: TObject);
begin
if (length(DM.IBDataSetClientiCELLULARE.Text)>9) then
begin
checkotp.otp:=random(999999);
SendSmsOtp('SMS',trim(DM.IBDataSetClientiCELLULARE.Text),checkotp.otp);
checkotp.tipo:='SMS';
if checkotp.ShowModal= mrok then
DM.IBDataSetClientiDATAVALID_CELL.Value:=now;
end;
end;





procedure TMenu.SpeedButton22Click(Sender: TObject);
begin
if IsValidEmail(DM.IBDataSetClientiEmail.AsString) then
begin
checkotp.otp:=random(999999);
SendEmailMessage(1,DM.IBDataSetClientiEmail.AsString,'Codice OTP: '+inttostr(checkotp.otp),'Codice per validazione Email OTP: '+inttostr(checkotp.otp),'');
checkotp.tipo:='EMAIL';
if checkotp.ShowModal= mrok then
DM.IBDataSetClientiDATAVALID_MAIL.Value:=now;
end;

end;

procedure TMenu.DBEdit10KeyPress(Sender: TObject; var Key: Char);
begin
  // Cifre, +, Backspace (#8)
  if not (Key in ['0'..'9', '+', #8]) then
  begin
    Key := #0;
    MessageBeep(0); // Bip opzionale
  end;

  // Il "+" si può mettere solo come primo carattere
  if (Key = '+') and (DBEdit10.SelStart > 0) then
  begin
    Key := #0;
    MessageBeep(0);
  end;
end;

procedure TMenu.DBEdit11KeyPress(Sender: TObject; var Key: Char);
begin
  // Cifre, +, Backspace (#8)
  if not (Key in ['0'..'9', '+', #8]) then
  begin
    Key := #0;
    MessageBeep(0); // Bip opzionale
  end;

  // Il "+" si può mettere solo come primo carattere
  if (Key = '+') and (DBEdit11.SelStart > 0) then
  begin
    Key := #0;
    MessageBeep(0);
  end;
end;

procedure TMenu.DBEdit12KeyPress(Sender: TObject; var Key: Char);
begin
  // Cifre, +, Backspace (#8)
  if not (Key in ['0'..'9', '+', #8]) then
  begin
    Key := #0;
    MessageBeep(0); // Bip opzionale
  end;

  // Il "+" si può mettere solo come primo carattere
  if (Key = '+') and (DBEdit12.SelStart > 0) then
  begin
    Key := #0;
    MessageBeep(0);
  end;
end;


procedure TMenu.DBEdit13Exit(Sender: TObject);
begin
  if DBEdit13.Text = '' then Exit; // campo vuoto: nessun controllo

  if not IsValidEmail(DBEdit13.Text) then
  begin
    ShowMessage('? Indirizzo email non valido!' + #13#10 +
                'Formato atteso: nome@dominio.it');
    DBEdit13.SetFocus; // riporta il focus sul campo
  end;
end;



procedure TMenu.Edit57KeyPress(Sender: TObject; var Key: Char);
var
  Products : TProductArray;
  i        : Integer;
  Info     : string;
begin
  if key=#13 then
   begin
  // Passa uno o più codici
  if GetProductInventario([edit57.text], Products) then
  begin
    if Length(Products) = 0 then
    begin
      ShowMessage('Nessun prodotto trovato.');
      edit57.Clear;
      Exit;
    end;

    // Esempio: mostra il primo risultato
    for i := 0 to High(Products) do
    begin
  DM.IBDataSetArticoloSTAGIONE.Value:=Products[i].Season;
  DM.IBDataSetArticoloBRAND.Value:=Products[i].Brand;
  DM.IBDataSetArticoloDESCRIZIONE.Value:=Products[i].Titolo;
  DM.IBDataSetArticoloMISURA.Value:=Products[i].Taglia;
  DM.IBDataSetArticoloCOLORE.Value:=Products[i].Colore;
  DM.IBDataSetArticoloPREZZORIS.Value:=strtofloat(StringReplace(Products[i].Pacq, '.', ',', []));
  DM.IBDataSetArticoloPREZZOPUB.Value:=strtofloat(StringReplace(Products[i].Pven, '.', ',', []));
  DM.IBDataSetArticoloPREZZOSCONT.Value:=strtofloat(StringReplace(Products[i].Pven, '.', ',', []))*0.7;
  edit57.Clear;
   end;
  end;
  end;
end;

procedure TMenu.MaskEdit1Exit(Sender: TObject);
begin
BrDateForm.date:=strtodate(maskedit1.Text);
end;

procedure TMenu.MaskEdit2Exit(Sender: TObject);
begin
BrDateForm.date:=strtodate(maskedit2.Text);
end;

end.
