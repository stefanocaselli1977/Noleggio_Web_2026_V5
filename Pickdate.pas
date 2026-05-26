unit Pickdate;

interface

uses Windows, Classes, Graphics, Forms, Controls, Buttons,
  SysUtils, StdCtrls, Grids, Calendar, ExtCtrls, math;

type
  TBrDateForm = class(TForm)
    Calendar1: TCalendar;
    OkBtn: TButton;
    CancelBtn: TButton;
    TitleLabel: TLabel;
    PrevMonthBtn: TSpeedButton;
    NextMonthBtn: TSpeedButton;
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    procedure PrevMonthBtnClick(Sender: TObject);
    procedure NextMonthBtnClick(Sender: TObject);
    procedure Calendar1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure OkBtnClick(Sender: TObject);
  private
    procedure SetDate(Date: TDateTime);
    function GetDate: TDateTime;
  public
    property Date: TDateTime read GetDate write SetDate;
  end;

var
  BrDateForm: TBrDateForm;

implementation

uses nolo;

{$R *.dfm}

procedure TBrDateForm.SetDate(Date: TDateTime);
begin
 Calendar1.CalendarDate := Date;
end;

function TBrDateForm.GetDate: TDateTime;
begin
  Result := Calendar1.CalendarDate;
end;

procedure TBrDateForm.PrevMonthBtnClick(Sender: TObject);
begin
  Calendar1.PrevMonth;
end;

procedure TBrDateForm.NextMonthBtnClick(Sender: TObject);
begin
  Calendar1.NextMonth;
end;

procedure TBrDateForm.Calendar1Change(Sender: TObject);
begin
  TitleLabel.Caption := FormatDateTime('MMMM, YYYY', Calendar1.CalendarDate);
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

procedure TBrDateForm.FormCreate(Sender: TObject);
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

procedure TBrDateForm.OkBtnClick(Sender: TObject);
begin
 ModalResult := mrOk;
end;

end.
