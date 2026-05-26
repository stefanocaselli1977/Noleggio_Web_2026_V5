unit otpcheck;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, softhire,uAppPaths;

type
  Tcheckotp = class(TForm)
    Label1: TLabel;
    Image1: TImage;
    Otpverify: TEdit;
    procedure FormShow(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
  otp:integer;
  tipo:string;
    { Public declarations }
  end;

var
  checkotp: Tcheckotp;

implementation

{$R *.dfm}

procedure Tcheckotp.FormShow(Sender: TObject);
begin
checkotp.caption:=tipo;
if tipo='SMS' then
begin
image1.Picture.LoadFromFile(AppDataPath+'otpsms.jpg');
checkotp.Caption:='Check OTP SMS';
end
else
begin
image1.Picture.LoadFromFile(AppDataPath+'otpemail.jpg');
checkotp.Caption:='Check OTP EMAIL';
end;


end;

procedure Tcheckotp.Image1Click(Sender: TObject);
begin
if  (tipo='SMS') then
begin
If (otpverify.text=inttostr(otp)) then
begin
otpverify.Color:=cllime;
showmessage('VALIDAZIONE SMS CORRETTA');
otpverify.Clear;
otpverify.Color:=clwhite;
checkotp.modalresult:=mrok;
exit;
end
else
begin
otpverify.Color:=clred;
showmessage('VALIDAZIONE SMS FALLITA');
otpverify.Clear;
otpverify.Color:=clwhite;
exit;
end;
end;

if (tipo='EMAIL') then
begin
If (otpverify.text=inttostr(otp)) then
begin
otpverify.Color:=cllime;
showmessage('VALIDAZIONE EMAIL CORRETTA');
otpverify.Clear;
otpverify.Color:=clwhite;
checkotp.modalresult:=mrok;
exit;
end
else
begin
otpverify.Color:=clred;
showmessage('VALIDAZIONE EMAIL FALLITA');
otpverify.Clear;
otpverify.Color:=clwhite;
exit;
end;
end;


end;

end.
