object AllertScheda: TAllertScheda
  Left = 334
  Top = 298
  BorderStyle = bsDialog
  Caption = 'Allert Scheda'
  ClientHeight = 238
  ClientWidth = 454
  Color = clRed
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 29
    Top = 1
    Width = 389
    Height = 59
    Caption = 'ATTENZIONE!!'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -48
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 56
    Width = 428
    Height = 16
    Caption = 'CI SONO NOTE DA LEGGERE PRIMA DI CHIUDERE LA SCHEDA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 5
    Top = 201
    Width = 362
    Height = 35
    Caption = 'SCHEDA NON PAGATA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clYellow
    Font.Height = -29
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object DBMemo1: TDBMemo
    Left = 16
    Top = 80
    Width = 417
    Height = 113
    DataField = 'NOTE'
    DataSource = DM.DSSchedule
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 376
    Top = 208
    Width = 75
    Height = 25
    Caption = 'OK'
    ModalResult = 1
    TabOrder = 1
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      555555555555555555555555555555555555555555FF55555555555559055555
      55555555577FF5555555555599905555555555557777F5555555555599905555
      555555557777FF5555555559999905555555555777777F555555559999990555
      5555557777777FF5555557990599905555555777757777F55555790555599055
      55557775555777FF5555555555599905555555555557777F5555555555559905
      555555555555777FF5555555555559905555555555555777FF55555555555579
      05555555555555777FF5555555555557905555555555555777FF555555555555
      5990555555555555577755555555555555555555555555555555}
    NumGlyphs = 2
  end
  object Memo1: TMemo
    Left = 8
    Top = 56
    Width = 433
    Height = 89
    Alignment = taCenter
    Color = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clYellow
    Font.Height = -21
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    Lines.Strings = (
      'DATI CLIENTE INCOMPLETI !!!!!!'
      'NECESSARIO CELLULARE E E-MAIL'
      'INSERIRE PRIMA DI PROCEDERE')
    ParentFont = False
    TabOrder = 2
  end
end
