unit frontend;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  TLogopanel = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    procedure Image1Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Logopanel: TLogopanel;

implementation

uses CliForm, clienteform, nolo, NewSchedRent;

{$R *.dfm}

procedure TLogopanel.Image1Click(Sender: TObject);
begin
cliformnew.bottone:='NOLEGGIA';
//RentalCust.showmodal;
New_Sched.show;
end;

procedure TLogopanel.Image7Click(Sender: TObject);
begin
self.Close;
end;

procedure TLogopanel.Image2Click(Sender: TObject);
begin
cliformnew.bottone:='RIPARA';
RentalCust.showmodal;

end;

procedure TLogopanel.Image3Click(Sender: TObject);
begin
cliformnew.bottone:='CONTOVENDITA';
RentalCust.showmodal;
end;

procedure TLogopanel.Image5Click(Sender: TObject);
begin
nolo.Menu.Show;
end;

end.
