unit docu_view;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, JPEG;

type
  TDoc_view = class(TForm)
    Image1: TImage;
    procedure FormShow(Sender: TObject);
  private
   { Private declarations }

  public
   docupath:string;
   { Public declarations }
  end;

var
  Doc_view: TDoc_view;

implementation

{$R *.dfm}

procedure TDoc_view.FormShow(Sender: TObject);
var
  jpg: TJpegImage;
   bmp: TBitmap;
   img1: Timage;
 begin
   if not (docupath = '') then
   begin
   jpg := TJpegImage.Create;
   jpg.LoadFromFile(docupath);
   bmp := TBitmap.Create;
   bmp.Assign(jpg);
   image1.Picture.Assign(bmp);
   bmp.Free;
   jpg.free;
   end;
end;

end.
