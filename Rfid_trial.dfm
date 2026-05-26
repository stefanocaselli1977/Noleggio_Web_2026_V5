object RfidTest: TRfidTest
  Left = 192
  Top = 125
  Width = 614
  Height = 409
  Caption = 'RfidTest'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton2: TSpeedButton
    Left = 8
    Top = 264
    Width = 105
    Height = 33
    AllowAllUp = True
    GroupIndex = 1
    Caption = 'SCAN ALL TAGS'
    OnClick = SpeedButton2Click
  end
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 62
    Height = 13
    Caption = 'Set Com Port'
  end
  object Label2: TLabel
    Left = 8
    Top = 56
    Width = 62
    Height = 13
    Caption = 'Set Baudrate'
  end
  object ComboBox1: TComboBox
    Left = 8
    Top = 32
    Width = 105
    Height = 21
    ItemHeight = 13
    TabOrder = 0
    OnSelect = ComboBox1Select
    Items.Strings = (
      'COM1'
      'COM2'
      'COM3'
      'COM4'
      'COM5'
      'COM6'
      'COM7'
      'COM8'
      'COM9'
      'COM10')
  end
  object Button1: TButton
    Left = 8
    Top = 168
    Width = 105
    Height = 25
    Caption = 'Read EPC'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 200
    Width = 105
    Height = 25
    Caption = 'Read TID'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 8
    Top = 232
    Width = 105
    Height = 25
    Caption = 'Read USER'
    TabOrder = 3
    OnClick = Button3Click
  end
  object ComboBox2: TComboBox
    Left = 8
    Top = 72
    Width = 105
    Height = 21
    ItemHeight = 13
    TabOrder = 4
    OnSelect = ComboBox2Select
    Items.Strings = (
      '9600'
      '19200'
      '38400'
      '57600'
      '115200')
  end
  object Memo1: TMemo
    Left = 120
    Top = 8
    Width = 457
    Height = 353
    ScrollBars = ssBoth
    TabOrder = 5
  end
  object Button4: TButton
    Left = 8
    Top = 104
    Width = 105
    Height = 25
    Caption = 'Set RF'
    TabOrder = 6
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 8
    Top = 136
    Width = 105
    Height = 25
    Caption = 'Set Ant'
    TabOrder = 7
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 8
    Top = 304
    Width = 105
    Height = 25
    Caption = 'ScanMulti'
    TabOrder = 8
    OnClick = Button6Click
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 10
    OnTimer = Timer1Timer
    Left = 8
    Top = 336
  end
end
