unit PriceArt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, Math;

type
  TGestPriceArt = class(TForm)
    MaskEdit1: TMaskEdit;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label2: TLabel;
    procedure MaskEdit1Enter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  GestPriceArt: TGestPriceArt;

implementation


{$R *.dfm}
Uses Nolo,Softhire;

procedure TGestPriceArt.MaskEdit1Enter(Sender: TObject);
begin
(Sender As TMaskEdit).EditMask:='€.9999,99;1;_';
end;

procedure TGestPriceArt.FormShow(Sender: TObject);
begin
if not DM.IBDataSetArticoloINCVENDITA.IsNull then
Label2.Caption:='Vecchio Valore €.'+DM.IBDataSetArticoloINCVENDITA.AsString
else
Label2.Caption:='';
if (DM.IBDataSetArticoloEXPIREDATE.IsNull and DM.IBDataSetArticoloINCVENDITA.IsNull) then
begin
Maskedit1.Enabled:=true;
Bitbtn1.Enabled:=true;
bitbtn3.Enabled:=false;
end
else
begin
Maskedit1.Enabled:=false;
Bitbtn1.Enabled:=false;
bitbtn3.Enabled:=true;
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


procedure TGestPriceArt.FormCreate(Sender: TObject);
var
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
//  (Sender as TForm).Left:=centreleft((Sender as TForm).width);
//  (Sender as TForm).Top:=centretop((Sender as TForm).Height) ;

end;

end.
