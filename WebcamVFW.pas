unit WebcamVFW;

interface

uses
  Windows, Messages;

const
  WM_CAP_START               = WM_USER;
  WM_CAP_DRIVER_CONNECT      = WM_CAP_START + 10;
  WM_CAP_DRIVER_DISCONNECT   = WM_CAP_START + 11;
  WM_CAP_EDIT_COPY           = WM_CAP_START + 30;
  WM_CAP_SET_PREVIEW         = WM_CAP_START + 50;
  WM_CAP_SET_PREVIEWRATE     = WM_CAP_START + 52;

function capCreateCaptureWindowA(
  lpszWindowName: LPCSTR;
  dwStyle: DWORD;
  x, y, nWidth, nHeight: Integer;
  hwndParent: HWND;
  nID: Integer): HWND; stdcall;

implementation

function capCreateCaptureWindowA; external 'avicap32.dll' name 'capCreateCaptureWindowA';

end.

