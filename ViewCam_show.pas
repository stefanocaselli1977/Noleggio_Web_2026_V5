unit ViewCam_show;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DSUtil, StdCtrls, DSPack, DirectShow9, Menus, ExtCtrls;

type
  TVideoForm = class(TForm)
    FilterGraph: TFilterGraph;
    VideoWindow: TVideoWindow;
    Filter: TFilter;
    SampleGrabber: TSampleGrabber;
    SnapShot: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SnapShotClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Déclarations privées }
  public
    imageobj:Timage;
    idCamdevice:integer;
    { Déclarations publiques }
    procedure OnSelectDevice(sender: TObject);

  end;

var
  VideoForm: TVideoForm;
  SysDev: TSysDevEnum;
implementation

{$R *.dfm}

procedure TVideoForm.FormCreate(Sender: TObject);
var
  i: integer;
  Device: TMenuItem;
begin
imageobj:= Timage.Create(nil);
  SysDev:= TSysDevEnum.Create(CLSID_VideoInputDeviceCategory);
{  if SysDev.CountFilters > 0 then
    for i := 0 to SysDev.CountFilters - 1 do
    begin
      Device := TMenuItem.Create(Devices);
      Device.Caption := SysDev.Filters[i].FriendlyName;
      Device.Tag := i;
      Device.OnClick := OnSelectDevice;
      Devices.Add(Device);
    end;}
end;

procedure TVideoForm.OnSelectDevice(sender: TObject);
begin
  FilterGraph.ClearGraph;
  FilterGraph.Active := false;
  Filter.BaseFilter.Moniker := SysDev.GetMoniker(TMenuItem(Sender).tag);
  FilterGraph.Active := true;
  with FilterGraph as ICaptureGraphBuilder2 do
    RenderStream(@PIN_CATEGORY_PREVIEW, nil, Filter as IBaseFilter, SampleGrabber as IBaseFilter, VideoWindow as IbaseFilter);
  FilterGraph.Play;
end;

procedure TVideoForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
{  SysDev.Free;
  FilterGraph.Stop;
  FilterGraph.ClearGraph;
  FilterGraph.Active := false;
  FilterGraph.Free; }
 // freeandnil(imageobj);
end;

procedure TVideoForm.SnapShotClick(Sender: TObject);
begin
  SampleGrabber.GetBitmap(Imageobj.Picture.Bitmap);
  close;
end;

procedure TVideoForm.FormShow(Sender: TObject);
begin
if not assigned(imageobj) then
imageobj:= Timage.Create(nil);
imageobj.Picture.Assign(nil);
FilterGraph.ClearGraph;
  FilterGraph.Active := false;
  Filter.BaseFilter.Moniker := SysDev.GetMoniker(idCamdevice);
  FilterGraph.Active := true;
  with FilterGraph as ICaptureGraphBuilder2 do
    RenderStream(@PIN_CATEGORY_PREVIEW, nil, Filter as IBaseFilter, SampleGrabber as IBaseFilter, VideoWindow as IbaseFilter);
  FilterGraph.Play;
end;

procedure TVideoForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   SysDev.Free;
  FilterGraph.Stop;
  FilterGraph.ClearGraph;
  FilterGraph.Active := false;
  FilterGraph.Free;
end;

end.
