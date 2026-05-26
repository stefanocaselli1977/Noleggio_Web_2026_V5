unit Inscap;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TInsertCap = class(TForm)
    cap: TEdit;
    citta: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    paese: TEdit;
    Label3: TLabel;
    BTNSALVA1: TBitBtn;
    procedure capKeyPress(Sender: TObject; var Key: Char);
    procedure cittaKeyPress(Sender: TObject; var Key: Char);
    procedure paeseKeyPress(Sender: TObject; var Key: Char);
    procedure BTNSALVA1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InsertCap: TInsertCap;

implementation

uses SoftHire, clienteform;

{$R *.dfm}

procedure TInsertCap.capKeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in ['0'..'9',#32,#8,#127,#13,#9]) then
     Key := #0;

end;

procedure TInsertCap.cittaKeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in ['A'..'Z','a'..'z',#32,#8,#127,#13,#9]) then
     Key := #0;
end;

procedure TInsertCap.paeseKeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in ['A'..'Z','a'..'z',#32,#8,#127,#13,#9]) then
     Key := #0;

end;

procedure TInsertCap.BTNSALVA1Click(Sender: TObject);
begin
insertcap.Close;
end;

procedure TInsertCap.FormShow(Sender: TObject);
begin
{if paese.Text<>'' then
paese.ReadOnly:=true
else
begin
paese.ReadOnly:=false;
paese.SetFocus;
end;
if cap.Text<>'' then
cap.ReadOnly:=true
else
begin
cap.ReadOnly:=false;
cap.SetFocus;
end;
if citta.Text<>'' then
citta.ReadOnly:=true
else
begin
citta.ReadOnly:=false;
citta.SetFocus;
end;}
end;

procedure TInsertCap.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (cap.Text='') or (citta.Text='') or (paese.Text='') then
showmessage('Tutti i campi devono essere compilati')
else
begin
try
dm.adoquery1.Close;
dm.adoquery1.SQL.Clear;
dm.adoquery1.SQL.Text:='INSERT INTO COMUNI (CAP,CITTA,LOCALITA) VALUES ("'+CAP.Text+'","'+CITTA.Text+'","'+PAESE.Text+'")  ';
dm.adoquery1.ExecSQL;
insertcap.Close;
cliformnew.cap.Text:=cap.Text;
cliformnew.citta.Text:=citta.Text;
cliformnew.localita.Text:=paese.Text;
cliformnew.telefono1.setfocus;
except
showmessage('Errore di inserimento del nuovo record');
end;
end;
end;

end.
