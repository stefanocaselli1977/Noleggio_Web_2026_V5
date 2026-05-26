unit uAppPaths;

interface

function AppDataPath: string;
function LocalAppDataPath: string;
function ProgramDataPath: string;

implementation

uses
  Windows, SysUtils, ShlObj;

const
  CSIDL_APPDATA        = $001A;
  CSIDL_LOCAL_APPDATA  = $001C;
  CSIDL_COMMON_APPDATA = $0023;

  SHFolderDLL = 'shfolder.dll';

function SHGetFolderPath(hwnd: HWND; csidl: Integer; hToken: THandle;
  dwFlags: DWORD; pszPath: PChar): HRESULT; stdcall;
  external SHFolderDLL name 'SHGetFolderPathA';

function GetSpecialFolder(CSIDL: Integer): string;
var
  Path: array[0..MAX_PATH] of Char;
begin
  if SHGetFolderPath(0, CSIDL, 0, 0, Path) = S_OK then
    Result := IncludeTrailingPathDelimiter(Path)
  else
    Result := '';
end;

function AppDataPath_old: string;
begin
  Result := GetSpecialFolder(CSIDL_APPDATA) + 'NoloSoft\';
  ForceDirectories(Result);
end;

function AppDataPath: string;
begin
 Result:= GetSpecialFolder(CSIDL_COMMON_APPDATA)+ 'NoloSoft\';
  ForceDirectories(Result);
end;


function LocalAppDataPath: string;
begin
  Result := GetSpecialFolder(CSIDL_LOCAL_APPDATA) + 'NoloSoft\';
  ForceDirectories(Result);
end;

function ProgramDataPath: string;
begin
  Result := GetSpecialFolder(CSIDL_COMMON_APPDATA) + 'NoloSoft\';
  ForceDirectories(Result);
end;

end.

