object WebCam_25: TWebCam_25
  Left = 192
  Top = 125
  Width = 635
  Height = 534
  Caption = 'WebCam'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 601
    Height = 449
    Caption = 'Panel1'
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 8
    Top = 464
    Width = 75
    Height = 25
    Caption = 'CATTURA'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 88
    Top = 464
    Width = 75
    Height = 25
    Caption = 'CHIUSURA'
    TabOrder = 2
    OnClick = BitBtn2Click
  end
end
