object OpnTest: TOpnTest
  Left = 299
  Top = 147
  AutoSize = True
  BorderStyle = bsDialog
  Caption = 'OPN TEST FORM'
  ClientHeight = 345
  ClientWidth = 561
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
  object Button1: TButton
    Left = 0
    Top = 40
    Width = 137
    Height = 33
    Caption = 'DOWNLOAD BARCODES'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 288
    Top = 0
    Width = 273
    Height = 345
    TabOrder = 1
  end
  object ComboBox1: TComboBox
    Left = 152
    Top = 2
    Width = 113
    Height = 28
    Style = csDropDownList
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 20
    ParentFont = False
    TabOrder = 2
  end
  object Button2: TButton
    Left = 0
    Top = 0
    Width = 137
    Height = 33
    Caption = 'CHECK COMPORT'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 0
    Top = 80
    Width = 137
    Height = 33
    Caption = 'CLEAR ALL BARCODES'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Edit1: TEdit
    Left = 152
    Top = 160
    Width = 121
    Height = 21
    ReadOnly = True
    TabOrder = 5
  end
  object Button4: TButton
    Left = 0
    Top = 120
    Width = 137
    Height = 33
    Caption = 'CHECK AVAILABLE DATA'
    TabOrder = 6
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 0
    Top = 160
    Width = 137
    Height = 33
    Caption = 'GET TIME FROM OPN'
    TabOrder = 7
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 0
    Top = 200
    Width = 137
    Height = 33
    Caption = 'SET TIME TO OPN'
    TabOrder = 8
    OnClick = Button6Click
  end
  object Edit2: TEdit
    Left = 152
    Top = 200
    Width = 121
    Height = 21
    ReadOnly = True
    TabOrder = 9
  end
  object Button7: TButton
    Left = 0
    Top = 240
    Width = 137
    Height = 33
    Caption = 'ID DEVICE KNOWING'
    TabOrder = 10
    OnClick = Button7Click
  end
  object Edit3: TEdit
    Left = 152
    Top = 240
    Width = 121
    Height = 21
    ReadOnly = True
    TabOrder = 11
  end
  object Button8: TButton
    Left = 0
    Top = 280
    Width = 137
    Height = 33
    Caption = 'CLEAR MEMO BOX'
    TabOrder = 12
    OnClick = Button8Click
  end
end
