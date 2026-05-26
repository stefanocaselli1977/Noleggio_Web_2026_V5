object DettArt: TDettArt
  Left = 275
  Top = 119
  AutoSize = True
  BorderStyle = bsDialog
  Caption = 'DETTAGLI ARTICOLO'
  ClientHeight = 536
  ClientWidth = 415
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 14
    Top = 15
    Width = 26
    Height = 13
    Caption = 'COD.'
  end
  object Label2: TLabel
    Left = 14
    Top = 47
    Width = 25
    Height = 13
    Caption = 'TIPO'
  end
  object Label3: TLabel
    Left = 222
    Top = 47
    Width = 38
    Height = 13
    Caption = 'BRAND'
  end
  object Label4: TLabel
    Left = 17
    Top = 79
    Width = 73
    Height = 13
    Caption = 'DESCRIZIONE'
  end
  object Label5: TLabel
    Left = 13
    Top = 143
    Width = 44
    Height = 13
    Caption = 'COLORE'
  end
  object Label6: TLabel
    Left = 181
    Top = 143
    Width = 42
    Height = 13
    Caption = 'MISURA'
  end
  object Label7: TLabel
    Left = 250
    Top = 111
    Width = 55
    Height = 13
    Caption = 'STAGIONE'
  end
  object Label8: TLabel
    Left = 17
    Top = 111
    Width = 36
    Height = 13
    Caption = 'STATO'
  end
  object Label9: TLabel
    Left = 33
    Top = 279
    Width = 66
    Height = 13
    Caption = 'DATA INTRO'
  end
  object Label10: TLabel
    Left = 25
    Top = 311
    Width = 77
    Height = 13
    Caption = 'DATA CANCEL.'
  end
  object Label11: TLabel
    Left = 25
    Top = 343
    Width = 75
    Height = 13
    Caption = 'PERMANENZA'
  end
  object Label12: TLabel
    Left = 33
    Top = 375
    Width = 66
    Height = 13
    Caption = 'GG. LAVORO'
  end
  object Label13: TLabel
    Left = 17
    Top = 407
    Width = 81
    Height = 13
    Caption = 'N'#176'RIPARAZIONI'
  end
  object Bevel1: TBevel
    Left = 6
    Top = 263
    Width = 409
    Height = 9
    Shape = bsTopLine
    Style = bsRaised
  end
  object Label14: TLabel
    Left = 233
    Top = 279
    Width = 74
    Height = 13
    Caption = #8364'. RISERVATO'
  end
  object Label15: TLabel
    Left = 249
    Top = 311
    Width = 54
    Height = 13
    Caption = #8364'. LISTINO'
  end
  object Label16: TLabel
    Left = 233
    Top = 343
    Width = 71
    Height = 13
    Caption = #8364'. SCONTATO'
  end
  object Label17: TLabel
    Left = 233
    Top = 375
    Width = 73
    Height = 13
    Caption = #8364'. INCASSATO'
  end
  object Label19: TLabel
    Left = 230
    Top = 439
    Width = 68
    Height = 13
    Caption = 'MIN '#8364'. VEND.'
  end
  object Label20: TLabel
    Left = 230
    Top = 407
    Width = 75
    Height = 13
    Caption = 'AMMORTAM.%'
  end
  object Label21: TLabel
    Left = 25
    Top = 439
    Width = 71
    Height = 13
    Caption = 'GG. RITARDO'
  end
  object Label18: TLabel
    Left = 33
    Top = 471
    Width = 63
    Height = 13
    Caption = 'N'#176' NOLEGGI'
  end
  object Label22: TLabel
    Left = 230
    Top = 471
    Width = 67
    Height = 13
    Caption = 'MEDIA '#8364'./GG'
  end
  object Bevel2: TBevel
    Left = 0
    Top = 503
    Width = 409
    Height = 9
    Shape = bsTopLine
    Style = bsRaised
  end
  object Label23: TLabel
    Left = 94
    Top = 15
    Width = 27
    Height = 13
    Caption = 'MAN.'
  end
  object Label24: TLabel
    Left = 182
    Top = 15
    Width = 52
    Height = 13
    Caption = 'EANCODE'
  end
  object DBText1: TDBText
    Left = 240
    Top = 0
    Width = 105
    Height = 25
    DataField = 'EANCODE'
    DataSource = DM.DSArticolo
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'IDAutomationHC39M'
    Font.Style = []
    ParentFont = False
  end
  object DBText2: TDBText
    Left = 240
    Top = 24
    Width = 105
    Height = 17
    Alignment = taCenter
    DataField = 'EANCODE'
    DataSource = DM.DSArticolo
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label25: TLabel
    Left = 13
    Top = 167
    Width = 30
    Height = 13
    Caption = 'NOTE'
  end
  object DBEdit1: TDBEdit
    Left = 38
    Top = 15
    Width = 49
    Height = 21
    DataField = 'ART_NO'
    DataSource = DM.DSArticolo
    ReadOnly = True
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 46
    Top = 47
    Width = 169
    Height = 21
    DataField = 'TIPO'
    DataSource = DM.DSArticolo
    ReadOnly = True
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 262
    Top = 47
    Width = 145
    Height = 21
    DataField = 'BRAND'
    DataSource = DM.DSArticolo
    ReadOnly = True
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 94
    Top = 79
    Width = 233
    Height = 21
    DataField = 'DESCRIZIONE'
    DataSource = DM.DSArticolo
    ReadOnly = True
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 62
    Top = 143
    Width = 113
    Height = 21
    DataField = 'COLORE'
    DataSource = DM.DSArticolo
    ReadOnly = True
    TabOrder = 4
  end
  object DBEdit6: TDBEdit
    Left = 230
    Top = 143
    Width = 41
    Height = 21
    DataField = 'MISURA'
    DataSource = DM.DSArticolo
    ReadOnly = True
    TabOrder = 5
  end
  object DBEdit7: TDBEdit
    Left = 310
    Top = 111
    Width = 89
    Height = 21
    DataField = 'STAGIONE'
    DataSource = DM.DSArticolo
    ReadOnly = True
    TabOrder = 6
  end
  object DBEdit8: TDBEdit
    Left = 54
    Top = 111
    Width = 193
    Height = 21
    DataField = 'AVAILABLE'
    DataSource = DM.DSArticolo
    ReadOnly = True
    TabOrder = 7
  end
  object DBEdit9: TDBEdit
    Left = 102
    Top = 279
    Width = 89
    Height = 21
    DataField = 'INTRODATE'
    DataSource = DM.DSArticolo
    ReadOnly = True
    TabOrder = 8
  end
  object DBEdit10: TDBEdit
    Left = 102
    Top = 311
    Width = 89
    Height = 21
    DataField = 'EXPIREDATE'
    DataSource = DM.DSArticolo
    ReadOnly = True
    TabOrder = 9
  end
  object DBEdit13: TDBEdit
    Left = 102
    Top = 407
    Width = 89
    Height = 21
    BiDiMode = bdLeftToRight
    DataField = 'RIPARAZIONI'
    DataSource = DM.DSArticolo
    ParentBiDiMode = False
    ReadOnly = True
    TabOrder = 10
  end
  object DBEdit14: TDBEdit
    Left = 310
    Top = 279
    Width = 89
    Height = 21
    DataField = 'PREZZORIS'
    DataSource = DM.DSArticolo
    ReadOnly = True
    TabOrder = 11
  end
  object DBEdit15: TDBEdit
    Left = 310
    Top = 311
    Width = 89
    Height = 21
    DataField = 'PREZZOPUB'
    DataSource = DM.DSArticolo
    ReadOnly = True
    TabOrder = 12
  end
  object DBEdit16: TDBEdit
    Left = 310
    Top = 343
    Width = 89
    Height = 21
    DataField = 'PREZZOSCONT'
    DataSource = DM.DSArticolo
    ReadOnly = True
    TabOrder = 13
  end
  object DBEdit17: TDBEdit
    Left = 310
    Top = 375
    Width = 89
    Height = 21
    DataField = 'INCNOLO'
    DataSource = DM.DSArticolo
    ReadOnly = True
    TabOrder = 14
  end
  object TOTGGRIT: TEdit
    Left = 102
    Top = 439
    Width = 89
    Height = 21
    ReadOnly = True
    TabOrder = 15
    Text = 'Edit1'
  end
  object AMMORTAMENTO: TEdit
    Left = 310
    Top = 407
    Width = 89
    Height = 21
    ReadOnly = True
    TabOrder = 16
    Text = 'Edit1'
  end
  object PRESINSCHEDA: TEdit
    Left = 102
    Top = 471
    Width = 89
    Height = 21
    ReadOnly = True
    TabOrder = 17
    Text = 'PRESINSCHEDA'
  end
  object MEDIA: TEdit
    Left = 310
    Top = 471
    Width = 89
    Height = 21
    ReadOnly = True
    TabOrder = 18
    Text = 'Edit1'
  end
  object DBMemo1: TDBMemo
    Left = 14
    Top = 183
    Width = 385
    Height = 73
    DataField = 'NOTE'
    DataSource = DM.DSArticolo
    ReadOnly = True
    TabOrder = 19
  end
  object BitBtn1: TBitBtn
    Left = 158
    Top = 511
    Width = 97
    Height = 25
    Caption = 'OK'
    ModalResult = 1
    TabOrder = 20
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
  object DBEdit19: TDBEdit
    Left = 126
    Top = 15
    Width = 49
    Height = 21
    DataField = 'MANUALCODE'
    DataSource = DM.DSArticolo
    ReadOnly = True
    TabOrder = 21
  end
  object GGLAVORO: TEdit
    Left = 102
    Top = 375
    Width = 89
    Height = 21
    ReadOnly = True
    TabOrder = 22
    Text = 'Edit1'
  end
  object PERMANENZA: TEdit
    Left = 102
    Top = 343
    Width = 89
    Height = 21
    ReadOnly = True
    TabOrder = 23
    Text = 'Edit1'
  end
  object VENDMIN: TEdit
    Left = 310
    Top = 439
    Width = 89
    Height = 21
    ReadOnly = True
    TabOrder = 24
    Text = 'Edit1'
  end
end
