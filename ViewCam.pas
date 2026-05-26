unit ViewCam;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, StdCtrls, tscap32_rt;

type
  TViewCamSnap = class(TForm)
    Button1: TButton;
    tsCap321: TtsCap32;
    procedure ImageToCliente(Sender: TObject);
    procedure ImageToOperatore(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewCamSnap: TViewCamSnap;

implementation
uses nolo;


{$R *.dfm}

procedure TViewCamSnap.Button1Click(Sender: TObject);
begin
tscap321.CopyToClipBoard:=true;
nolo.Menu.DBImage1.PasteFromClipboard;
tscap321.Connected:=false;
viewcamsnap.Close;
end;

procedure TViewCamSnap.ImageToCliente(Sender: TObject);
begin
tscap321.CopyToClipBoard:=true;
nolo.Menu.DBImage1.PasteFromClipboard;
tscap321.Connected:=false;
viewcamsnap.Close;
end;

procedure TViewCamSnap.ImageToOperatore(Sender: TObject);
begin
//tscap321.CopyToClipBoard:=true;
//nolo.Menu.DBImage2.PasteFromClipboard;
//tscap321.Connected:=false;
//viewcamsnap.Close;
end;



procedure TViewCamSnap.FormHide(Sender: TObject);
begin
//Videograbber1.StopPreview;
//ViewCamsnap.ViewCam.Connected:=false;
end;

procedure TViewCamSnap.FormShow(Sender: TObject);
begin
//ViewCamsnap.ViewCam.Connected:=true;
end;

procedure TViewCamSnap.FormCreate(Sender: TObject);
begin
 showmessage('viewcam out');
end;

end.
