unit WebCam_new;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, WebcamVFW, Clipbrd, ExtCtrls;

type
  TWebCam_New_Form = class(TForm)
    Panel1: TPanel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  WebCam_New_Form: TWebCam_New_Form;
  hWndC: HWND;
  hCam: HWND;

implementation

{$R *.dfm}

procedure TWebCam_New_Form.FormShow(Sender: TObject);
begin
hCam := capCreateCaptureWindowA(
            'WebCam',
            WS_CHILD or WS_VISIBLE,
            0, 0,
            Panel1.Width,
            Panel1.Height,
            Panel1.Handle,
            0);

  if hCam = 0 then
  begin
    ShowMessage('Impossibile creare finestra di cattura');
    Exit;
  end;

  if SendMessage(hCam, WM_CAP_DRIVER_CONNECT, 0, 0) <> 0 then
  begin
    SendMessage(hCam, WM_CAP_SET_PREVIEWRATE, 33, 0); // 30 FPS
    SendMessage(hCam, WM_CAP_SET_PREVIEW, 1, 0);       // preview attiva
    Panel1.Repaint;
  end
  else
  begin
    ShowMessage('Impossibile connettersi alla webcam');
  end;
end;

procedure TWebCam_New_Form.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 SendMessage(hWndC, WM_CAP_DRIVER_DISCONNECT, 0, 0);
end;

end.
