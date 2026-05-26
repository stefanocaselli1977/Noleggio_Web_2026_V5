unit Rfid_trial;

interface



uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
pTATags = ^TATags;
pint=^byte;

//TATags = packed record
//tagtype:byte;
//antenna:byte;
//labeledid: array [0..11] of byte;

TATags = packed record
TagType:byte;
AntNum:byte;
TagsID: array [0..11] of byte;
//Ids1: array [0..11] of byte;
end;

tagsarray= array[0..99]of TATags;
Ptrvalue = ^tagsarray;



  function CommOpen(var com : Thandle ; Porta:string ) : integer; stdcall; External 'UHFApiV10.dll';
  function SetBaudRate( com: Thandle;  BaudRate: integer;  ReaderAddr: byte): Integer; stdcall; external 'UHFApiV10.dll';
  function Gen2Read ( com: Thandle; Membank: integer; WordPtr: integer; WordCnt: integer; value: pchar; ReaderAddr: byte): Integer; stdcall; external 'UHFApiV10.dll';
  function SetRf ( com: Thandle; byPower: byte; byFreqType: byte; ReaderAddr: byte): Integer; stdcall; external 'UHFApiV10.dll';
  function SetAnt ( com: Thandle; ant: byte; ReaderAddr: byte): Integer; stdcall; external 'UHFApiV10.dll';
  function Gen2MultiTagIdentify ( com: Thandle; var ncount: cardinal; var value: Tagsarray; ReaderAddr: byte  ): Integer; stdcall; external 'UHFApiV10.dll';
  function ClearIDBuffer ( com: Thandle; ReaderAddr: byte  ): Integer; stdcall; external 'UHFApiV10.dll';

  type

  TRfidTest = class(TForm)
    ComboBox1: TComboBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    ComboBox2: TComboBox;
    Memo1: TMemo;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    SpeedButton2: TSpeedButton;
    Timer1: TTimer;
    Label1: TLabel;
    Label2: TLabel;
    procedure ComboBox1Select(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ComboBox2Select(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RfidTest: TRfidTest;
  h:Thandle;

implementation

//function CommOpen(com : Thandle ; Porta:pchar ) : integer; stdcall; External 'UHFApiV10.dll';

{$R *.dfm}


function ByteToHex(InByte:byte):shortstring;
const Digits:array[0..15] of char='0123456789ABCDEF';
begin
 result:=digits[InByte shr 4]+digits[InByte and $0F];
end;


function readTAG(membank:integer):string;
  var res,j,i:integer;
   PC: pchar;
  s,inp : string;
  begin
    SetLength(inp,255);
    pc := Addr(inp[1]);

  //getmem(pc,255);
  res := Gen2Read(h,membank,0,8,PC,255) ;
    if res = 0 then begin
        s := '';
        for I := 1 to 8 * 2 + 1 do begin
              s := s + Format('%.2x ', [byte(pc[i])]);
        end;
        Sleep(50);
        Result := s;
    end else
      result := '';
  end;






procedure TRfidTest.ComboBox1Select(Sender: TObject);
var
    port:Pchar;
begin

if CommOpen(h,combobox1.Text)=0 then
begin
showmessage('connected.')
end
else
showmessage('failed.');


end;

procedure TRfidTest.Button1Click(Sender: TObject);
var temp:string;
begin
temp:=readTAG(1);
if temp<>'' then
memo1.Lines.add(temp);
end;

procedure TRfidTest.Button2Click(Sender: TObject);
var temp:string;
begin
temp:=readTAG(2);
if temp<>'' then
memo1.Lines.add(temp);
end;

procedure TRfidTest.Button3Click(Sender: TObject);
var temp:string;
begin
temp:=readTAG(3);
if temp<>'' then
memo1.Lines.add(temp);
end;

procedure TRfidTest.ComboBox2Select(Sender: TObject);
var res,valuex:integer;

begin
if combobox2.Text='9600' then
valuex:=0;
if combobox2.text='19200' then
valuex:=1;
if combobox2.Text='38400' then
valuex:=2;
if combobox2.Text='57600' then
valuex:=3;
if combobox2.Text='115200' then
valuex:=4;
 res := SetBaudRate(h, valuex, 255);
  if res=0 then
  showmessage('Speed Setted')
  else
  showmessage('Speed Setting Failed');

end;

procedure TRfidTest.ComboBox3Change(Sender: TObject);
begin
Setrf(h,30,1,255);
end;

procedure TRfidTest.Button4Click(Sender: TObject);
begin
if SetRf(h,5,2,255)=0 then
  showmessage('RF Setted')
  else
  showmessage('RF Setting Failed');



end;

procedure TRfidTest.Button5Click(Sender: TObject);
begin
if SetAnt(h,4,255)=0 then
  showmessage('Ant Setted')
  else
  showmessage('Ant Setting Failed');
end;

procedure TRfidTest.Button6Click(Sender: TObject);

var //ncount:pint;
ncount:cardinal;
i: byte;
//valuex: Ptrvalue;
valuex: Tagsarray;
//listvaluex: array of ptags;
value1:tatags;
antenna:byte;


begin

// valuex:=@value;
//valuex:=value;
 antenna:=$FF;
//valuex:=^value;
//new(ncount);
ncount:=0;
//for i:=0 to 99 do
//value[i]:=TaTags.create;
//valuex:= @value;
ClearIDBuffer(h,255);


//i:= Gen2MultiTagIdentify(h,ncount,valuex^,antenna);

i:= Gen2MultiTagIdentify(h,ncount,valuex,antenna);
if(i=0) then
begin
showmessage('ok :'+inttostr(ncount)) ;
for i:=0 to ncount-1 do
begin
//showmessage(inttostr(valuex[i].TagType));
//showmessage(inttostr(valuex[i].AntNum));
showmessage(bytetohex(valuex[i].TagsId[0])+' '+bytetohex(valuex[i].Tagsid[1])+' '+bytetohex(valuex[i].Tagsid[2])+' '+bytetohex(valuex[i].Tagsid[3])+' '+bytetohex(valuex[i].Tagsid[4])+' '+bytetohex(valuex[i].Tagsid[5])+' '+bytetohex(valuex[i].Tagsid[6])+' '+bytetohex(valuex[i].Tagsid[7])+' '+bytetohex(valuex[i].Tagsid[8])+' '+bytetohex(valuex[i].Tagsid[9])+' '+bytetohex(valuex[i].Tagsid[10])+' '+bytetohex(valuex[i].Tagsid[11]));
end;
//showmessage(bytetohex(valuex[1].Ids1[0])+' '+bytetohex(valuex[1].Ids1[1])+' '+bytetohex(valuex[1].Ids1[2]));




//showmessage(p

end
 else
 begin
showmessage('no ok : '+inttostr(i));
end;
end;

procedure TRfidTest.SpeedButton1Click(Sender: TObject);
begin

//(Sender as TSpeedbutton).Down:=not ((Sender as TSpeedbutton).Down)
end;

procedure TRfidTest.SpeedButton2Click(Sender: TObject);
begin
if (Sender as TSpeedbutton).Down=true then
begin
(Sender as TSpeedbutton).Caption:='STOP SCANNING';
timer1.Enabled:=true;
end
else
begin
(Sender as TSpeedbutton).Caption:='START SCANNING';
timer1.Enabled:=false;
end;

end;

function HexToString(H: String): String;
var I: Integer;
begin
  Result:= '';
  for I := 1 to length (H) div 2 do
    Result:= Result+Char(StrToInt('$'+Copy(H,(I-1)*2+1,2)));
end;







procedure TRfidTest.Timer1Timer(Sender: TObject);
var //ncount:pint;
ncount:cardinal;
i: byte;
res,j,x:integer;
   PC: pchar;
  s1,s,inp,temp,temp1 : string;
//valuex: Ptrvalue;
valuex: Tagsarray;
//listvaluex: array of ptags;
value1:tatags;
antenna:byte;


begin

antenna:=$FF;
ncount:=0;

ClearIDBuffer(h,255);
{
i:= Gen2MultiTagIdentify(h,ncount,valuex,antenna);
if(i=0) then
begin
//showmessage('ok :'+inttostr(ncount)) ;
for i:=0 to ncount-1 do
begin
//showmessage(inttostr(valuex[i].TagType));
//showmessage(inttostr(valuex[i].AntNum));
memo1.Lines.Add(bytetohex(valuex[i].TagsId[0])+' '+bytetohex(valuex[i].Tagsid[1])+' '+bytetohex(valuex[i].Tagsid[2])+' '+bytetohex(valuex[i].Tagsid[3])+' '+bytetohex(valuex[i].Tagsid[4])+' '+bytetohex(valuex[i].Tagsid[5])+' '+bytetohex(valuex[i].Tagsid[6])+' '+bytetohex(valuex[i].Tagsid[7])+' '+bytetohex(valuex[i].Tagsid[8])+' '+bytetohex(valuex[i].Tagsid[9])+' '+bytetohex(valuex[i].Tagsid[10])+' '+bytetohex(valuex[i].Tagsid[11]));
//showmessage(bytetohex(valuex[i].TagsId[0])+' '+bytetohex(valuex[i].Tagsid[1])+' '+bytetohex(valuex[i].Tagsid[2])+' '+bytetohex(valuex[i].Tagsid[3])+' '+bytetohex(valuex[i].Tagsid[4])+' '+bytetohex(valuex[i].Tagsid[5])+' '+bytetohex(valuex[i].Tagsid[6])+' '+bytetohex(valuex[i].Tagsid[7])+' '+bytetohex(valuex[i].Tagsid[8])+' '+bytetohex(valuex[i].Tagsid[9])+' '+bytetohex(valuex[i].Tagsid[10])+' '+bytetohex(valuex[i].Tagsid[11]));
end;
 }
// procedure legge tid
 SetLength(inp,255);
    pc := Addr(inp[1]);

  //getmem(pc,255);
  res := Gen2Read(h,2,0,8,PC,255) ;
    if res = 0 then begin
        s := '';
        s1 := '';
        for I := 0 to 15 do begin
             s1 := s1 + Format('%.2x ', [byte(pc[i])]);
            // s := s + chr(byte(pc[i]));

        end;
        Sleep(50);
        //Result := s;
   //     memo1.Lines.Add(s1);
        memo1.Lines.Add(s1);
        for I := 0 to 15 do begin
             s := s + inttohex(byte(pc[i]),2);

        end;
        memo1.Lines.Add(s);



     end;
//end;
end;



procedure TRfidTest.FormCreate(Sender: TObject);
begin
//d
end;

end.
