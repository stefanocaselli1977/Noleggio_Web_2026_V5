unit RepArtGen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SoftHire, ExtCtrls, QuickRpt, QRCtrls;

 type
  TRepArtGeneral = class(TForm)
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRShape2: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRLabel5: TQRLabel;
    QRDBText4: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RepArtGeneral: TRepArtGeneral;

implementation

{$R *.dfm}

end.
