unit webcamunit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Menus, MMSystem, JPEG, VFrames, ExtDlgs;

type
  TWebCam = class(TForm)
    ComboBox_Cams: TComboBox;
    Label_Cameras: TLabel;
    SpeedButton_RunVideo: TSpeedButton;
    SpeedButton_Stop: TSpeedButton;
    BitBtn_SaveBMP: TBitBtn;
    SavePictureDialog1: TSavePictureDialog;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton_RunVideoClick(Sender: TObject);
    procedure SpeedButton_StopClick(Sender: TObject);
    procedure BitBtn_SaveBMPClick(Sender: TObject);
  private
    VideoImage: TVideoImage;
    VideoBMP: array[0..1] of TBitmap;
    VideoBMPIndex: Integer;
    OnNewFrameBusy: Boolean;
    LocalJPG: TJPEGImage;
    Initialized: Boolean;

    procedure InitFrame;
    procedure UpdateCamList;
    procedure OnNewFrame(Sender: TObject; Width, Height: Integer; DataPtr: Pointer);
    procedure CleanVideo;
  public
    procedure StopWebCam;
    procedure CloseWebCam;
  end;

var
  WebCam: TWebCam;


implementation

uses nolo;
{$R *.dfm}

procedure TWebCam.FormCreate(Sender: TObject);
begin
  Initialized := False;
  OnNewFrameBusy := False;
end;

procedure TWebCam.FormShow(Sender: TObject);
begin
  InitFrame;
end;

procedure TWebCam.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  StopWebCam;
  CloseWebCam;
end;

procedure TWebCam.InitFrame;
var
  i: Integer;
begin
  if Initialized then Exit;
  Initialized := True;

  if not Assigned(LocalJPG) then
    LocalJPG := TJPEGImage.Create;

  // Inizializza bitmap
  for i := 0 to 1 do
  begin
    VideoBMP[i] := TBitmap.Create;
    VideoBMP[i].PixelFormat := pf24bit;
  end;

  // Inizializza VideoImage
  VideoImage := TVideoImage.Create;
  VideoImage.SetDisplayCanvas(nil); // disegna manualmente nel nostro Image1
  VideoImage.OnNewVideoFrame := OnNewFrame;

  UpdateCamList;

  SpeedButton_RunVideo.Enabled := ComboBox_Cams.Items.Count > 0;
  SpeedButton_Stop.Enabled := False;
end;

procedure TWebCam.UpdateCamList;
var
  SL: TStringList;
begin
  SL := TStringList.Create;
  try
    VideoImage.GetListOfDevices(SL);
    ComboBox_Cams.Items.Assign(SL);
    if SL.Count > 0 then
      ComboBox_Cams.ItemIndex := 0;
  finally
    SL.Free;
  end;
end;

procedure TWebCam.OnNewFrame(Sender: TObject; Width, Height: Integer; DataPtr: Pointer);
begin
  if OnNewFrameBusy then Exit;
  OnNewFrameBusy := True;

  VideoBMPIndex := 1 - VideoBMPIndex;
  VideoImage.GetBitmap(VideoBMP[VideoBMPIndex]);

  // Mostra nel TImage
  Image1.Picture.Assign(VideoBMP[VideoBMPIndex]);

  OnNewFrameBusy := False;
end;

procedure TWebCam.SpeedButton_RunVideoClick(Sender: TObject);
begin
  if not Assigned(VideoImage) then Exit;

  // Avvia la webcam
  if ComboBox_Cams.ItemIndex >= 0 then
  begin
    if VideoImage.VideoStart('#' + IntToStr(ComboBox_Cams.ItemIndex + 1)) <> 0 then
    begin
      ShowMessage('Impossibile avviare la webcam');
      Exit;
    end;
  end;

  SpeedButton_RunVideo.Enabled := False;
  SpeedButton_Stop.Enabled := True;
end;

procedure TWebCam.SpeedButton_StopClick(Sender: TObject);
begin
  StopWebCam;
end;

procedure TWebCam.StopWebCam;
begin
  if Assigned(VideoImage) then
  begin
    VideoImage.VideoStop;
    SpeedButton_RunVideo.Enabled := True;
    SpeedButton_Stop.Enabled := False;
  end;
end;

procedure TWebCam.CloseWebCam;
var
  i: Integer;
begin
  if Assigned(VideoImage) then
  begin
    VideoImage.Free;
    VideoImage := nil;
  end;

  for i := 0 to 1 do
  begin
    if Assigned(VideoBMP[i]) then
      VideoBMP[i].Free;
  end;

  if Assigned(LocalJPG) then
  begin
    LocalJPG.Free;
    LocalJPG := nil;
  end;

  Initialized := False;
end;

procedure TWebCam.CleanVideo;
begin
  if Assigned(Image1.Picture.Graphic) then
    Image1.Picture.Graphic := nil;
end;

procedure TWebCam.BitBtn_SaveBMPClick(Sender: TObject);
begin
  if Assigned(VideoBMP[VideoBMPIndex]) then
  begin
    LocalJPG.Assign(VideoBMP[VideoBMPIndex]);

  end;
end;

end.
end.
