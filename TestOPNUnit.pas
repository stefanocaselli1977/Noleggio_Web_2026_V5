unit TestOPNUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, strUtils, dateUtils, math;

type
  TOpnTest = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    ComboBox1: TComboBox;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Edit2: TEdit;
    Button7: TButton;
    Edit3: TEdit;
    Button8: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    function DecodeDataScanned(DataPacked: String):String;
    procedure Button8Click(Sender: TObject);
    procedure ComSetting(COMPORTOPN:integer);
    function DownLoadData(COMPORTOPN:integer; DataScanned:boolean):TStringList;
    function GetDeviceID :string;
    procedure Button9Click(Sender: TObject);
    procedure DeleteOPNData;
    function IsConnected(COM:integer):boolean;
    procedure FormCreate(Sender: TObject);


  private

    { Private declarations }
  public
    { Public declarations }
  end;

var
  OpnTest: TOpnTest;

implementation

uses nolo;

const
  STATUS_OK                : Integer=  0;
  COMMUNICATIONS_ERROR     : Integer= -1;
  BAD_PARAM                : Integer= -2;
  SETUP_ERROR              : Integer=-3;
  INVALID_COMMAND_NUMBER   : Integer=-4;
  COMMAND_LRC_ERROR        : Integer=-7;
  RECEIVED_CHARACTER_ERROR : Integer=-8;
  GENERAL_ERROR            : Integer=-9;
  FILE_NOT_FOUND           : Integer= 2;
  ACCESS_DENIED            : Integer= 5;

  {/// Parameter values... }
  PARAM_OFF      : Integer=0;
  PARAM_ON       : Integer=1;
  DETERMINE_SIZE : Integer=0;

  {+//****************************************************************** }
  {-* Communications setup section...* }
  {=****************************************************************** }

const
  COM1  :Integer= 0;
  COM2  :Integer= 1;
  COM3  :Integer= 2;
  COM4  :Integer= 3;
  COM5  :Integer= 4;
  COM6  :Integer= 5;
  COM7  :Integer= 6;
  COM8  :Integer= 7;
  COM9  :Integer= 8;
  COM10 :Integer= 9;
  COM11 :Integer=10;
  COM12 :Integer=11;
  COM13 :Integer=12;
  COM14 :Integer=13;
  COM15 :Integer=14;
  COM16 :Integer=15;




  Function csp2Init(nComPort: LongInt): Longint; stdcall; External 'csp2.dll';
  function csp2InitEx(ComPort: Longint) : Longint ; stdcall ; external 'Csp2.dll';
  Function csp2Restore       :Longint;  stdcall; External 'csp2.dll';
  Function csp2WakeUp        :Longint;  stdcall; External 'csp2.dll';
  Function csp2DataAvailable :Longint;  stdcall; External 'csp2.dll';
  {/// Basic Functions }
  Function csp2ReadData                 : Longint; stdcall; External 'csp2.dll';
  Function csp2ClearData                : Longint; stdcall; External 'csp2.dll';
  Function csp2PowerDown                : Longint; stdcall; External 'csp2.dll';
  Function csp2GetTime(aTimeBuf:pchar) : Longint; stdcall; External 'csp2.dll';
  Function csp2SetTime(aTimeBuf:string) : Longint; stdcall; External 'csp2.dll';
  Function csp2SetDefaults              : Longint; stdcall; External 'csp2.dll';
  {/// CSP Data Get }
  //  Function csp2GetPacket(szBarData:string; nBarcodeNumber: LongInt;nMaxLength: LongInt): Longint; stdcall; External 'csp2.dll';
  function csp2GetPacket(stPacketData : pchar; lgBarcodeNumber : integer; nMaxLength : Integer): Integer ; stdcall; external 'Csp2.dll';
  Function csp2GetDeviceId(szDeviceId:pchar; nMaxLength: LongInt) : Longint; stdcall; External 'csp2.dll';
  Function csp2GetProtocol     : Longint; stdcall; External 'csp2.dll';
  Function csp2GetSystemStatus : Longint; stdcall; External 'csp2.dll';
  Function csp2GetSwVersion(szSwVersion: string; nMaxLength: LongInt): Longint; stdcall; External 'csp2.dll';
  Function csp2GetASCIIMode :  Longint; stdcall; External 'csp2.dll';
  Function csp2GetRTCMode   :  Longint; stdcall; External 'csp2.dll';
  {/// DLL Configuration }
  Function csp2SetRetryCount(nRetryCount: LongInt): Longint; stdcall; External 'csp2.dll';
  Function csp2GetRetryCount : Longint; stdcall; External 'csp2.dll';
  {/// Miscellaneous }
  Function csp2GetDllVersion(szDllVersion: string;nMaxLength: LongInt): Longint; stdcall; External 'csp2.dll';
  Function csp2TimeStamp2Str(var Stamp: string;value: PChar;nMaxLength: LongInt): Longint; stdcall; External 'csp2.dll';
  Function csp2GetCodeType (CodeID: LongInt;CodeType: PChar;nMaxLength: LongInt): Longint; stdcall; External 'csp2.dll';
  {/// Advanced functions }
  Function csp2ReadRawData (aBuffer: string;nMaxLength: LongInt): Longint; stdcall; External 'csp2.dll';
  Function csp2SetParam(nParam: LongInt;szString: string;nMaxLength: LongInt):  Longint; stdcall; External 'csp2.dll';
  Function csp2GetParam(nParam: LongInt;szString: string;nMaxLength: LongInt):  Longint; stdcall; External 'csp2.dll';
  Function csp2Interrogate:  Longint; stdcall; External 'csp2.dll';
  Function csp2GetCTS: Longint; stdcall; External 'csp2.dll';
  Function csp2SetDTR       (nOnOff: LongInt):  Longint; stdcall; External 'csp2.dll';
  Function csp2SetDebugMode (nOnOff: LongInt):  Longint; stdcall; External 'csp2.dll';
  Function csp2StartPolling (csp2CallBack: Pointer):  Longint; stdcall; External 'csp2.dll';
  Function csp2StopPolling: Longint; stdcall; External 'csp2.dll';
  {$R *.dfm}

    procedure TOpnTest.Button1Click(Sender: TObject);
var
  Codificazione,myResult : Longint;
  myAantalBarcodes : Longint;
  i : Longint;
  DeviceID, myPacket : PChar;
  DD,TT,DDTT,timestamp:string;
  data: array[0..21] of char;
  begin
 if Combobox1.Text <> '' then
 begin
  try
    try
      myResult := csp2InitEx(strtoint(rightstr(Combobox1.Text,length(Combobox1.Text)-3)));
      myAantalBarcodes := csp2ReadData;
     // Memo1.Lines.Add('Attempt : ' + IntToStr(Attempt));
      For i := 0 to myAantalBarcodes - 1 do
      begin
        getmem(mypacket,80);
        myResult := csp2GetPacket(myPacket, i, 80);
       if myResult<0 then
       begin
       messagedlg('Errore Nella lettura Del Barcode:'+inttostr(Myresult),mterror,mbOKCancel,0);
       csp2PowerDown;
       exit;
       end
       else
       begin
       Memo1.Lines.Add(copy(strpas(myPacket),3,Myresult-6)+' '+decodedatascanned(copy(strpas(myPacket),myresult-3,4)));
       end;
      end;
     // Memo1.Lines.Add('  ---  ');
     // Attempt := Attempt + 1;
    except
      On e:Exception do
      begin
      end;
    end;
  finally
  end;
end;
end;

procedure TOpnTest.Button2Click(Sender: TObject);
var val,i:longint;
begin
Combobox1.Items.Clear;
for i:=0 to 15 do
begin
if csp2Init(i)=0 then
Combobox1.Items.Add('COM'+inttostr(i+1));
end;
end;

procedure TOpnTest.Button3Click(Sender: TObject);
begin
if csp2ClearData= 0 then
Memo1.Clear
else
showmessage('Error Connection Or Failure Device');
end;

procedure TOpnTest.Button4Click(Sender: TObject);
begin
if csp2DataAvailable >0 then
showmessage('Dati Presenti Nel Lettore');
if csp2DataAvailable =0 then
showmessage('Nessun Dato Presente Nel Lettore');
if csp2DataAvailable <0 then
showmessage('Error Connection Or Failure Device');

end;

procedure TOpnTest.Button5Click(Sender: TObject);
var timebuf: pchar;
    i:integer;
begin
//timebuf:='';
getmem(timebuf,6);
if csp2gettime(timebuf)=0 then
edit1.text:=inttostr(ord(timebuf[3]))+'/'+inttostr(ord(timebuf[4]))+'/'+inttostr(ord(timebuf[5]))+' '+inttostr(ord(timebuf[2]))+':'+inttostr(ord(timebuf[1]))+':'+inttostr(ord(timebuf[0]))
else
Showmessage('Error');

end;

procedure TOpnTest.Button6Click(Sender: TObject);
var timebuf: pchar;
    i:integer;
  myDate : TDateTime;
  myYear, myMonth, myDay : Word;
  myHour, myMin, mySec, myMilli : Word;

begin
   mydate:=now;
  DecodeDateTime(myDate, myYear, myMonth, myDay,
                 myHour, myMin, mySec, myMilli);
getmem(timebuf,5);
timebuf[0]:=chr(ord(mysec));
timebuf[1]:=chr(ord(mymin));
timebuf[2]:=chr(ord(myHour));
timebuf[3]:=chr(ord(3));
timebuf[4]:=chr(ord(myMonth));
timebuf[5]:=chr(ord(myYear));
if csp2settime(timebuf)=0 then
edit2.text:=datetimetostr(now)
else
Showmessage('Error');

end;
{$X+}
procedure TOpnTest.Button7Click(Sender: TObject);
var szDEviceId: array[0..9]of char;
    code:string;
    i,status:integer;
begin
status:=csp2GetDeviceId(szDeviceId,10);
code:='';
for i:=0 to status-1 do
code:=code+format('%.1x',[ord(szDeviceId[i])]);
edit3.Text:=code
end;


function TOpnTest.DecodeDataScanned(DataPacked: String):String;
var
seconds,minutes,hours,day,month,year:string;
Scandate:TdateTime;
begin
year:= inttostr(ord(Datapacked[4]) and 63);
month:= inttostr(((ord(Datapacked[4]) and 192)div 64) + ((ord(Datapacked[3]) and 3)*4));
day:= inttostr(((ord(Datapacked[3]) and 124) div 4));
hours:= inttostr(((ord(Datapacked[2]) and 15)*2)+((ord(Datapacked[3])and 128) div 128));
minutes:= inttostr(((ord(Datapacked[2]) and 240) div 16)+((ord(Datapacked[1]) and 3) * 16));
seconds:=inttostr(((ord(Datapacked[1]) and 252) div 4));
scandate:=strtodatetime(day+'/'+month+'/'+Year+' '+hours+':'+minutes+':'+seconds+'.0');
DecodeDataScanned:=datetimetostr(scandate);
end;

procedure TOpnTest.Button8Click(Sender: TObject);
begin
Memo1.Clear;
end;

procedure TOpnTest.ComSetting(COMPORTOPN:integer);
begin
if csp2Initex(COMPORTOPN)<>0 then
MessageDlg('COMPORT:'+inttostr(COMPORTOPN)+' NOT SUPPORTED CHANGE INTO .INI FILES',mtError, mbOKCancel, 0);
end;

function TOpnTest.GetDeviceID :string;
var szDEviceId: array[0..9]of char;
    code:string;
    i,status:integer;
begin
status:=csp2GetDeviceId(szDeviceId,10);
code:='';
for i:=0 to status-1 do
code:=code+format('%.1x',[ord(szDeviceId[i])]);
result:=code;
end;


Function TOpnTest.DownLoadData(COMPORTOPN:integer; DATASCANNED:boolean): TStringList;
var temp:Tstringlist;
    myresult,myAantalBarcodes : Longint;
    i : Longint;
    DeviceID, myPacket : PChar;
    data: array[0..21] of char;
begin
Temp:=TStringList.Create;
if csp2Initex(COMPORTOPN)=0 then
begin
myAantalBarcodes := csp2ReadData;
 For i := 0 to myAantalBarcodes - 1 do
  begin
  getmem(mypacket,80);
  myResult := csp2GetPacket(myPacket, i, 80);
  if myResult<0 then
   begin
    messagedlg('Errore Nella lettura Del Barcode:'+inttostr(Myresult),mterror,mbOKCancel,0);
    csp2PowerDown;
    exit;
   end
  else
   begin
    if datascanned = true then
    Temp.Add(copy(strpas(myPacket),3,Myresult-6)+' '+decodedatascanned(copy(strpas(myPacket),myresult-3,4)))
    else
    Temp.Add(copy(strpas(myPacket),3,Myresult-6));
   end;
 end;
result:=temp;
//temp.Free;
end
else
MessageDlg('COMPORT:'+inttostr(COMPORTOPN)+' NOT SUPPORTED CHANGE INTO .INI FILES',mtError, mbOKCancel, 0);
end;

procedure TOpnTest.DeleteOPNData;
begin
if csp2ClearData<> 0 then
showmessage('Error Connection Or Failure Device');
end;

function TOpnTest.IsConnected(COM:integer):boolean;
begin
if csp2Initex(COM)=0 then
result:=true
else
result:=false;
end;




procedure TOpnTest.Button9Click(Sender: TObject);
var box:Tmemo;
begin

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


procedure TOpnTest.FormCreate(Sender: TObject);
var
  scrx,scry, k:integer ;
  ratio:double;
begin
showmessage('catul in/out');
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
