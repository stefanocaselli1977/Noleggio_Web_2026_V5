unit Account;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, math;

  //type TClassValue = Integer;


  type
  TACCCONV = class(TForm)
  Edit1: TEdit;
   Function ScanCode(EANCODE:string):integer;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormHide(Sender: TObject);
    procedure FormCreate(Sender: TObject);

   private
    function  GetLevel:integer;
    Procedure SetLevel(ClassValue: integer);
   public
    property ClassValue: integer read GetLevel write SetLevel;
   end;

var
  ACCCONV: TACCCONV;
  Classification:integer;
  Operatore:String;

implementation
uses nolo, softhire;

{$R *.dfm}
Function TACCCONV.GetLevel:Integer;
begin
result:=Classification;
end;

Procedure  TACCCONV.SetLevel(ClassValue: integer);
begin
//Label1.caption:=inttostr(classValue);
end;

Function TACCCONV.ScanCode(EANCODE:string):integer;
begin
//if not DM.IBTransaction10.InTransaction then
//DM.IBTransaction10.StartTransaction;
DM.IBQueryTemp.Close;
DM.IBQueryTemp.SQL.Clear;
DM.IBQueryTemp.SQL.Add('SELECT CODICE, DIP_NO');
DM.IBQueryTemp.SQL.Add('FROM OPERATORI');
//DM.IBQueryTemp.SQL.Add('WHERE '+DM.IBDataSetParamEANTOSCAN.AsString+' = "'+'*'+ Edit1.Text +'*'+'"');
DM.IBQueryTemp.SQL.Add('WHERE EANCODE = "'+'*'+ Edit1.Text +'*'+'"');
DM.IBQueryTemp.Open;
//DM.IBTransaction10.Commit;
if not DM.IBQueryTemp.IsEmpty then
 begin
  Operatore:=DM.IBQueryTemp.Fields.Fields[1].AsString;
  result:=DM.IBQueryTemp.Fields.Fields[0].AsInteger;
 end
else
 begin
  //if Edit1.text='STECASO100177' then
  if Edit1.text=DM.IBDataSetParamADMINPSW.AsString then
    begin
  result:=3;
  Operatore:='1';
  end
  else
  result:=0;
 end;
end;

procedure TACCCONV.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if ord(Key) = 10 then begin Edit1.Clear; exit; end;
if ord(Key) = 13 then
begin
 Classification:=ACCCONV.ScanCode(Edit1.Text);
 if Classification > 0 then
  ACCConv.ModalResult:=mrOk
  else
  ACCConv.ModalResult:=mrCancel;
  end;
 end;

procedure TACCCONV.FormHide(Sender: TObject);
begin
Edit1.Clear;
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

procedure TACCCONV.FormCreate(Sender: TObject);
var
  scrx,scry, k:integer ;
  ratio:double;
begin
//  scrx:= GetSystemMetrics(SM_CXSCREEN); {finds screen resolution x value}
 // scry:= (GetSystemMetrics(SM_CYSCREEN)); {finds screen resolution y value}

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
