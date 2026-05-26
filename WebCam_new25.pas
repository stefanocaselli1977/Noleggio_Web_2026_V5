unit WebCam_new25;


interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, jpeg, Clipbrd, Buttons;

type
  TWebCam_25 = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    CamHandle: HWND;
    procedure OpenCamera;
    procedure CloseCamera;
  public
    CapturedBitmap: TBitmap;   // <-- RISULTATO DELLA FORM
  end;

implementation

{$R *.DFM}

const
  WM_CAP_START = $400;
  WM_CAP_DRIVER_CONNECT = WM_CAP_START + 10;
  WM_CAP_DRIVER_DISCONNECT = WM_CAP_START + 11;
  WM_CAP_EDIT_COPY = WM_CAP_START + 30;

  WM_CAP_SET_PREVIEW = WM_CAP_START + 50;
  WM_CAP_SET_PREVIEWRATE = WM_CAP_START + 52;
  WM_CAP_SET_SCALE = WM_CAP_START + 53;

function capCreateCaptureWindowA(lpszWindowName: PChar; dwStyle: DWORD;
  x, y, nWidth, nHeight: Integer; hwndParent: HWND;
  nID: Integer): HWND; stdcall;
  external 'avicap32.dll' name 'capCreateCaptureWindowA';

procedure TWebCam_25.FormShow(Sender: TObject);
begin
  CapturedBitmap := nil; // nessuna immagine catturata
  OpenCamera;
end;

procedure TWebCam_25.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  CloseCamera;
  Action := caFree;
end;

procedure TWebCam_25.BitBtn2Click(Sender: TObject);
begin
  Close;  // chiude la ShowModal
end;

procedure TWebCam_25.OpenCamera;
begin
  CamHandle := capCreateCaptureWindowA('Webcam',
    WS_CHILD or WS_VISIBLE,
    0, 0, Panel1.Width, Panel1.Height,
    Panel1.Handle, 0);

  if CamHandle <> 0 then
  begin
    if SendMessage(CamHandle, WM_CAP_DRIVER_CONNECT, 0, 0) <> 0 then
    begin
    Sleep(300);
      SendMessage(CamHandle, WM_CAP_SET_SCALE, 1, 0);
      SendMessage(CamHandle, WM_CAP_SET_PREVIEWRATE, 30, 0);
      SendMessage(CamHandle, WM_CAP_SET_PREVIEW, 1, 0);
    end
    else
    begin
      ShowMessage('Nessuna webcam trovata.');
      CloseCamera;
    end;
  end;
end;

procedure TWebCam_25.CloseCamera;
begin
  if CamHandle <> 0 then
  begin
    SendMessage(CamHandle, WM_CAP_DRIVER_DISCONNECT, 0, 0);
    CamHandle := 0;
  end;
end;

procedure TWebCam_25.BitBtn1Click(Sender: TObject);
var
  Bmp: TBitmap;
begin
  if CamHandle = 0 then
  begin
    ShowMessage('Webcam non attiva.');
    Exit;
  end;

  SendMessage(CamHandle, WM_CAP_EDIT_COPY, 0, 0);

  if Clipboard.HasFormat(CF_BITMAP) then
  begin
    Bmp := TBitmap.Create;
    try
      Bmp.Assign(Clipboard);

      // Cancella un eventuale bitmap precedente
      if CapturedBitmap <> nil then
        FreeAndNil(CapturedBitmap);

      // Salva il risultato come TBitmap
      CapturedBitmap := TBitmap.Create;
      CapturedBitmap.Assign(Bmp);

      ShowMessage('Immagine catturata!');

    finally
      Bmp.Free;
    end;
  end;
end;



end.

