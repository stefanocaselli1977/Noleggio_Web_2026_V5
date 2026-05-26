object Ripmodule: TRipmodule
  Left = 460
  Top = 351
  BorderStyle = bsDialog
  Caption = 'Modulo Riparazione'
  ClientHeight = 706
  ClientWidth = 1016
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 88
    Top = 0
    Width = 134
    Height = 13
    Caption = 'COGNOME / RAGSOCIALE'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 304
    Top = 0
    Width = 32
    Height = 13
    Caption = 'NOME'
    FocusControl = DBEdit2
  end
  object Label4: TLabel
    Left = 8
    Top = 0
    Width = 32
    Height = 13
    Caption = 'CLINO'
    FocusControl = DBEdit4
  end
  object Label8: TLabel
    Left = 400
    Top = 51
    Width = 134
    Height = 13
    Caption = 'EANCODE ART. RITIRATO'
  end
  object Label12: TLabel
    Left = 264
    Top = 51
    Width = 129
    Height = 13
    Caption = 'EANCODE ART. PRONTO'
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 104
    Width = 993
    Height = 385
    Caption = 'RIPARAZIONE'
    TabOrder = 0
    object Label5: TLabel
      Left = 8
      Top = 64
      Width = 80
      Height = 13
      Caption = 'DATA INSERIM.'
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 816
      Top = 144
      Width = 69
      Height = 13
      Caption = 'DATA RITIRO'
      FocusControl = DBEdit6
      OnDblClick = Label6DblClick
    end
    object Label7: TLabel
      Left = 816
      Top = 16
      Width = 129
      Height = 13
      Caption = 'DATA RICHIESTA RITIRO'
      FocusControl = DBEdit7
    end
    object Label9: TLabel
      Left = 112
      Top = 64
      Width = 38
      Height = 13
      Caption = 'BRAND'
    end
    object Label10: TLabel
      Left = 312
      Top = 64
      Width = 73
      Height = 13
      Caption = 'DESCRIZIONE'
      FocusControl = DBEdit10
    end
    object Label18: TLabel
      Left = 816
      Top = 292
      Width = 44
      Height = 13
      Caption = 'PREZZO'
      FocusControl = DBEdit18
    end
    object Label20: TLabel
      Left = 816
      Top = 104
      Width = 69
      Height = 13
      Caption = 'RITIRATO DA'
      FocusControl = DBEdit19
    end
    object Label21: TLabel
      Left = 136
      Top = 16
      Width = 15
      Height = 13
      Caption = 'OP'
      FocusControl = DBEdit20
    end
    object Label3: TLabel
      Left = 8
      Top = 16
      Width = 40
      Height = 13
      Caption = 'RIP_NO'
      FocusControl = DBEdit3
    end
    object SpeedButton4: TSpeedButton
      Left = 960
      Top = 32
      Width = 25
      Height = 25
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        003337777777777777F330FFFFFFFFFFF03337F3333FFF3337F330FFFF000FFF
        F03337F33377733337F330FFFFF0FFFFF03337F33337F33337F330FFFF00FFFF
        F03337F33377F33337F330FFFFF0FFFFF03337F33337333337F330FFFFFFFFFF
        F03337FFF3F3F3F3F7F33000F0F0F0F0F0333777F7F7F7F7F7F330F0F000F070
        F03337F7F777F777F7F330F0F0F0F070F03337F7F7373777F7F330F0FF0FF0F0
        F03337F733733737F7F330FFFFFFFF00003337F33333337777F330FFFFFFFF0F
        F03337FFFFFFFF7F373330999999990F033337777777777F733330FFFFFFFF00
        333337FFFFFFFF77333330000000000333333777777777733333}
      NumGlyphs = 2
      OnClick = SpeedButton4Click
    end
    object Label11: TLabel
      Left = 816
      Top = 184
      Width = 134
      Height = 13
      Caption = 'DATA OGGETTO PRONTO'
      FocusControl = DBEdit9
      OnDblClick = Label11DblClick
    end
    object Label15: TLabel
      Left = 864
      Top = 68
      Width = 8
      Height = 29
      Caption = ':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label16: TLabel
      Left = 828
      Top = 79
      Width = 52
      Height = 13
      Caption = 'X LE ORE:'
    end
    object DBText1: TDBText
      Left = 816
      Top = 224
      Width = 161
      Height = 49
      Alignment = taCenter
      Color = clWhite
      DataField = 'EANCODERIP'
      DataSource = DM.DSRiparazione
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'IDAutomationHC39M'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label26: TLabel
      Left = 72
      Top = 16
      Width = 59
      Height = 13
      Caption = 'SCHED_NO'
      FocusControl = DBEdit20
    end
    object Label29: TLabel
      Left = 816
      Top = 343
      Width = 115
      Height = 20
      Caption = 'NON PAGATO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit5: TDBEdit
      Left = 8
      Top = 80
      Width = 97
      Height = 21
      DataField = 'DATAINSERT'
      DataSource = DM.DSRiparazione
      ReadOnly = True
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 816
      Top = 160
      Width = 161
      Height = 21
      DataField = 'DATARITIRO'
      DataSource = DM.DSRiparazione
      ReadOnly = True
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 816
      Top = 32
      Width = 145
      Height = 24
      DataField = 'DATARITIRORICH'
      DataSource = DM.DSRiparazione
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      OnExit = DBEdit7Exit
    end
    object DBEdit10: TDBEdit
      Left = 312
      Top = 80
      Width = 385
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DESCRIZIONE'
      DataSource = DM.DSRiparazione
      TabOrder = 2
    end
    object DBEdit18: TDBEdit
      Left = 816
      Top = 306
      Width = 121
      Height = 37
      DataField = 'PREZZO'
      DataSource = DM.DSRiparazione
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -23
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
      OnExit = DBEdit18Exit
      OnKeyPress = DBEdit18KeyPress
    end
    object DBEdit19: TDBEdit
      Left = 816
      Top = 120
      Width = 161
      Height = 21
      CharCase = ecUpperCase
      DataField = 'RITIRATODA'
      DataSource = DM.DSRiparazione
      TabOrder = 6
    end
    object DBEdit20: TDBEdit
      Left = 136
      Top = 32
      Width = 41
      Height = 21
      DataField = 'OWNER'
      DataSource = DM.DSRiparazione
      ReadOnly = True
      TabOrder = 7
    end
    object DBEdit3: TDBEdit
      Left = 8
      Top = 32
      Width = 57
      Height = 21
      DataField = 'RIP_NO'
      DataSource = DM.DSRiparazione
      ReadOnly = True
      TabOrder = 8
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 184
      Top = 16
      Width = 625
      Height = 41
      Caption = 'PRODOTTO'
      Columns = 5
      DataField = 'TIPOPRODOTTO'
      DataSource = DM.DSRiparazione
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Items.Strings = (
        'SCI'
        'SNOWBOARD'
        'SCI ALPINISMO'
        'FONDO'
        'SCARPONI')
      ParentFont = False
      TabOrder = 0
      Values.Strings = (
        'SCI'
        'SNOWBOARD'
        'SCI ALPINISMO'
        'FONDO'
        'SCARPONI')
      OnChange = DBRadioGroup1Change
      OnEnter = DBRadioGroup1Enter
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 112
      Top = 80
      Width = 193
      Height = 21
      DataField = 'BRAND'
      DataSource = DM.DSRiparazione
      KeyField = 'BRANDS'
      ListField = 'BRANDS'
      ListSource = DM.DSBrand
      TabOrder = 1
      OnKeyPress = DBLookupComboBox3KeyPress
    end
    object GroupBox2: TGroupBox
      Left = 8
      Top = 104
      Width = 801
      Height = 217
      Caption = 'LAVORAZIONI SCI E S NOWBOARD'
      TabOrder = 9
      object Label22: TLabel
        Left = 188
        Top = 37
        Width = 18
        Height = 16
        Caption = 'KG'
        FocusControl = DBEdit21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label19: TLabel
        Left = 11
        Top = 159
        Width = 38
        Height = 16
        Caption = 'NOTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label23: TLabel
        Left = 267
        Top = 36
        Width = 22
        Height = 16
        Caption = 'MM'
        FocusControl = DBEdit22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBCheckBox1: TDBCheckBox
        Left = 8
        Top = 16
        Width = 97
        Height = 17
        Caption = 'FONDO'
        DataField = 'FONDO'
        DataSource = DM.DSRiparazione
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        ValueChecked = '1'
        ValueUnchecked = '0'
        OnClick = DBCheckBox1Click
      end
      object DBCheckBox2: TDBCheckBox
        Left = 92
        Top = 16
        Width = 97
        Height = 17
        Caption = 'LAMINE'
        DataField = 'LAMINE'
        DataSource = DM.DSRiparazione
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        ValueChecked = '1'
        ValueUnchecked = '0'
        OnClick = DBCheckBox2Click
      end
      object DBCheckBox3: TDBCheckBox
        Left = 176
        Top = 16
        Width = 97
        Height = 17
        Caption = 'SCIOLINA'
        DataField = 'SCIOLINA'
        DataSource = DM.DSRiparazione
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        ValueChecked = '1'
        ValueUnchecked = '0'
        OnClick = DBCheckBox3Click
      end
      object DBCheckBox4: TDBCheckBox
        Left = 264
        Top = 16
        Width = 105
        Height = 17
        Caption = 'PREP. GARA'
        DataField = 'PREPGARA'
        DataSource = DM.DSRiparazione
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        ValueChecked = '1'
        ValueUnchecked = '0'
        OnClick = DBCheckBox4Click
      end
      object DBCheckBox5: TDBCheckBox
        Left = 8
        Top = 136
        Width = 169
        Height = 17
        Caption = 'RIPARAZIONE PARTIC.'
        DataField = 'RIPPARTIC'
        DataSource = DM.DSRiparazione
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox6: TDBCheckBox
        Left = 8
        Top = 64
        Width = 169
        Height = 17
        Caption = 'RADDRIZZATURA SCI'
        DataField = 'RADDRIZZATURA'
        DataSource = DM.DSRiparazione
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        ValueChecked = '1'
        ValueUnchecked = '0'
        OnClick = DBCheckBox6Click
      end
      object DBCheckBox7: TDBCheckBox
        Left = 8
        Top = 40
        Width = 169
        Height = 17
        Caption = 'CONTROLLO ATTACCHI'
        DataField = 'CHECKATTACCHI'
        DataSource = DM.DSRiparazione
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        ValueChecked = '1'
        ValueUnchecked = '0'
        OnClick = DBCheckBox7Click
        OnMouseUp = DBCheckBox7MouseUp
      end
      object DBEdit21: TDBEdit
        Left = 211
        Top = 36
        Width = 54
        Height = 24
        DataField = 'KG'
        DataSource = DM.DSRiparazione
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnKeyPress = DBEdit21KeyPress
      end
      object DBEdit22: TDBEdit
        Left = 291
        Top = 36
        Width = 54
        Height = 24
        DataField = 'MMSUOLA'
        DataSource = DM.DSRiparazione
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        OnKeyPress = DBEdit22KeyPress
      end
      object DBCheckBox8: TDBCheckBox
        Left = 8
        Top = 92
        Width = 57
        Height = 17
        Caption = 'PELLI'
        DataField = 'PELLI'
        DataSource = DM.DSRiparazione
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        ValueChecked = '1'
        ValueUnchecked = '0'
        OnClick = DBCheckBox8Click
      end
      object GroupBox5: TGroupBox
        Left = 186
        Top = 36
        Width = 335
        Height = 49
        Caption = 'SNOW. ATTACCHI'
        TabOrder = 10
        object Label17: TLabel
          Left = 137
          Top = 15
          Width = 8
          Height = 29
          Caption = #176
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label24: TLabel
          Left = 188
          Top = 15
          Width = 8
          Height = 29
          Caption = #176
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label25: TLabel
          Left = 200
          Top = 7
          Width = 93
          Height = 13
          Caption = 'MARCA-MODELLO'
        end
        object Label30: TLabel
          Left = 107
          Top = 8
          Width = 15
          Height = 13
          Caption = 'DX'
        end
        object Label31: TLabel
          Left = 163
          Top = 8
          Width = 14
          Height = 13
          Caption = 'SX'
        end
        object DBRadioGroup3: TDBRadioGroup
          Left = 8
          Top = 11
          Width = 81
          Height = 30
          Columns = 2
          DataField = 'STANCESNOW'
          DataSource = DM.DSRiparazione
          Items.Strings = (
            'DX'
            'SX')
          TabOrder = 0
          Values.Strings = (
            'DX'
            'SX')
        end
        object DBEdit8: TDBEdit
          Left = 94
          Top = 19
          Width = 41
          Height = 21
          DataField = 'DXDEG'
          DataSource = DM.DSRiparazione
          TabOrder = 1
          OnKeyPress = DBEdit8KeyPress
        end
        object DBEdit11: TDBEdit
          Left = 148
          Top = 19
          Width = 41
          Height = 21
          DataField = 'SXDEG'
          DataSource = DM.DSRiparazione
          TabOrder = 2
          OnKeyPress = DBEdit11KeyPress
        end
        object DBEdit12: TDBEdit
          Left = 200
          Top = 19
          Width = 129
          Height = 21
          CharCase = ecUpperCase
          DataField = 'BINDINGS'
          DataSource = DM.DSRiparazione
          TabOrder = 3
        end
      end
      object DBMemo1: TDBMemo
        Left = 56
        Top = 160
        Width = 737
        Height = 49
        DataField = 'NOTE1'
        DataSource = DM.DSRiparazione
        TabOrder = 11
      end
      object GroupBox7: TGroupBox
        Left = 64
        Top = 88
        Width = 457
        Height = 41
        TabOrder = 12
        object Label28: TLabel
          Left = 168
          Top = 14
          Width = 16
          Height = 13
          Caption = 'CM'
        end
        object DBEdit14: TDBEdit
          Left = 190
          Top = 13
          Width = 57
          Height = 21
          TabOrder = 0
        end
        object DBCheckBox11: TDBCheckBox
          Left = 8
          Top = 13
          Width = 161
          Height = 17
          Caption = 'RIPRISTINARE PELLI'
          DataField = 'PELLI'
          DataSource = DM.DSRiparazione
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
      end
    end
    object DBRadioGroup2: TDBRadioGroup
      Left = 8
      Top = 328
      Width = 801
      Height = 37
      Caption = 'STATO SCHEDA RIPARAZIONE'
      Columns = 4
      DataField = 'TIPOPAGAM'
      DataSource = DM.DSRiparazione
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Items.Strings = (
        'DA SEGNARE'
        'OMAGGIO'
        'PAGARE A CONSEGNA'
        'PAGARE IN ANTICIPO')
      ParentFont = False
      TabOrder = 10
      Values.Strings = (
        'DA SEGNARE'
        'OMAGGIO'
        'PAGARE A CONSEGNA'
        'PAGARE IN ANTICIPO')
      OnChange = DBRadioGroup2Change
    end
    object DBEdit9: TDBEdit
      Left = 816
      Top = 200
      Width = 161
      Height = 21
      DataField = 'DATAREADY'
      DataSource = DM.DSRiparazione
      ReadOnly = True
      TabOrder = 12
    end
    object Edit5: TEdit
      Left = 880
      Top = 72
      Width = 33
      Height = 28
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      OnExit = Edit5Exit
      OnKeyPress = Edit5KeyPress
    end
    object Edit6: TEdit
      Left = 920
      Top = 72
      Width = 33
      Height = 28
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
      OnExit = Edit6Exit
      OnKeyPress = Edit6KeyPress
    end
    object DBCheckBox9: TDBCheckBox
      Left = 884
      Top = 56
      Width = 76
      Height = 17
      Caption = 'URGENTE'
      DataField = 'URGENZA'
      DataSource = DM.DSRiparazione
      TabOrder = 15
      ValueChecked = '1'
      ValueUnchecked = '0'
      OnClick = DBCheckBox9Click
    end
    object DBEdit13: TDBEdit
      Left = 72
      Top = 32
      Width = 57
      Height = 21
      DataField = 'SCHED_NO'
      DataSource = DM.DSRiparazione
      ReadOnly = True
      TabOrder = 16
    end
    object GroupBox6: TGroupBox
      Left = 8
      Top = 104
      Width = 801
      Height = 217
      Caption = 'LAVORAZIONE SCARPONI'
      TabOrder = 17
      Visible = False
      object Label27: TLabel
        Left = 368
        Top = 8
        Width = 30
        Height = 13
        Caption = 'NOTE'
        FocusControl = DBMemo2
      end
      object DBMemo2: TDBMemo
        Left = 368
        Top = 24
        Width = 425
        Height = 185
        DataField = 'NOTE1'
        DataSource = DM.DSRiparazione
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object Panel1: TPanel
        Left = 8
        Top = 40
        Width = 161
        Height = 169
        TabOrder = 1
        object DBCheckBox13: TDBCheckBox
          Left = 8
          Top = 8
          Width = 137
          Height = 17
          Caption = 'ALLARGARE PIANTA'
          DataField = 'ALLARGPIANTA_SX'
          DataSource = DM.DSRiparazione
          TabOrder = 0
          ValueChecked = '1'
          ValueUnchecked = '0'
          OnClick = DBCheckBox13Click
        end
        object DBCheckBox15: TDBCheckBox
          Left = 8
          Top = 32
          Width = 97
          Height = 17
          Caption = 'ALZARE COLLO'
          DataField = 'ALZARECOLLO_SX'
          DataSource = DM.DSRiparazione
          TabOrder = 1
          ValueChecked = '1'
          ValueUnchecked = '0'
          OnClick = DBCheckBox15Click
        end
        object DBCheckBox16: TDBCheckBox
          Left = 8
          Top = 80
          Width = 145
          Height = 17
          Caption = 'ALLARGARE MALLEOLI'
          DataField = 'MALLEOLO_SX'
          DataSource = DM.DSRiparazione
          TabOrder = 2
          ValueChecked = '1'
          ValueUnchecked = '0'
          OnClick = DBCheckBox16Click
        end
        object DBCheckBox17: TDBCheckBox
          Left = 8
          Top = 104
          Width = 145
          Height = 17
          Caption = 'SOLETTA RISCALDATA'
          DataField = 'SOLETTARISC'
          DataSource = DM.DSRiparazione
          TabOrder = 3
          ValueChecked = '1'
          ValueUnchecked = '0'
          OnClick = DBCheckBox17Click
        end
        object DBCheckBox19: TDBCheckBox
          Left = 8
          Top = 56
          Width = 129
          Height = 17
          Caption = 'CAMBIARE GANCIO'
          DataField = 'CAMBIOGANCIO_SX'
          DataSource = DM.DSRiparazione
          TabOrder = 4
          ValueChecked = '1'
          ValueUnchecked = '0'
          OnClick = DBCheckBox19Click
        end
      end
      object Panel2: TPanel
        Left = 200
        Top = 40
        Width = 161
        Height = 169
        TabOrder = 2
        object DBCheckBox14: TDBCheckBox
          Left = 8
          Top = 32
          Width = 97
          Height = 17
          Caption = 'ALZARE COLLO'
          DataField = 'ALZARECOLLO_DX'
          DataSource = DM.DSRiparazione
          TabOrder = 0
          ValueChecked = '1'
          ValueUnchecked = '0'
          OnClick = DBCheckBox14Click
        end
        object DBCheckBox18: TDBCheckBox
          Left = 8
          Top = 8
          Width = 137
          Height = 17
          Caption = 'ALLARGARE PIANTA'
          DataField = 'ALLARGPIANTA_DX'
          DataSource = DM.DSRiparazione
          TabOrder = 1
          ValueChecked = '1'
          ValueUnchecked = '0'
          OnClick = DBCheckBox18Click
        end
        object DBCheckBox21: TDBCheckBox
          Left = 8
          Top = 80
          Width = 145
          Height = 17
          Caption = 'ALLARGARE MALLEOLI'
          DataField = 'MALLEOLO_DX'
          DataSource = DM.DSRiparazione
          TabOrder = 2
          ValueChecked = '1'
          ValueUnchecked = '0'
          OnClick = DBCheckBox21Click
        end
        object DBCheckBox22: TDBCheckBox
          Left = 8
          Top = 104
          Width = 145
          Height = 17
          Caption = 'SOLETTA RISCALDATA'
          DataField = 'SOLETTARISC'
          DataSource = DM.DSRiparazione
          TabOrder = 3
          ValueChecked = '1'
          ValueUnchecked = '0'
          OnClick = DBCheckBox22Click
        end
        object DBCK1: TDBCheckBox
          Left = 8
          Top = 56
          Width = 145
          Height = 17
          Caption = 'CAMBIARE GANCIO'
          DataField = 'CAMBIOGANCIO_DX'
          DataSource = DM.DSRiparazione
          TabOrder = 4
          ValueChecked = '1'
          ValueUnchecked = '0'
          OnClick = DBCK1Click
        end
      end
      object CheckBox1: TCheckBox
        Left = 8
        Top = 24
        Width = 97
        Height = 17
        Caption = 'SCARPONE SX'
        TabOrder = 3
        OnClick = CheckBox1Click
      end
      object CheckBox2: TCheckBox
        Left = 200
        Top = 24
        Width = 97
        Height = 17
        Caption = 'SCARPONE DX'
        TabOrder = 4
        OnClick = CheckBox2Click
      end
    end
  end
  object DBEdit1: TDBEdit
    Left = 88
    Top = 16
    Width = 209
    Height = 28
    DataField = 'COGNRAGSOC'
    DataSource = DM.DSClienti
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 304
    Top = 16
    Width = 209
    Height = 28
    DataField = 'NOME'
    DataSource = DM.DSClienti
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 8
    Top = 16
    Width = 73
    Height = 28
    DataField = 'CLI_NO'
    DataSource = DM.DSClienti
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 512
    Width = 993
    Height = 185
    Caption = 'LISTA RIPARAZIONI'
    TabOrder = 4
    object DBGrid1: TDBGrid
      Left = 16
      Top = 16
      Width = 969
      Height = 161
      Color = clWhite
      DataSource = DM.DSRiparazione
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnColExit = DBGrid1ColExit
      OnDrawColumnCell = DBGrid1DrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'RIP_NO'
          Title.Caption = 'ID'
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPOPRODOTTO'
          Title.Caption = 'PRODOTTO'
          Width = 146
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BRAND'
          Width = 136
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRIZIONE'
          Width = 160
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'FONDO'
          Title.Alignment = taCenter
          Title.Caption = 'FO'
          Width = 26
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'LAMINE'
          Title.Alignment = taCenter
          Title.Caption = 'LA'
          Width = 26
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'SCIOLINA'
          Title.Alignment = taCenter
          Title.Caption = 'SC'
          Width = 26
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'PREPGARA'
          Title.Alignment = taCenter
          Title.Caption = 'PRG'
          Width = 26
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'RIPPARTIC'
          Title.Alignment = taCenter
          Title.Caption = 'RIP'
          Width = 26
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'RADDRIZZATURA'
          Title.Alignment = taCenter
          Title.Caption = 'RAD'
          Width = 26
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CHECKATTACCHI'
          Title.Alignment = taCenter
          Title.Caption = 'CHK'
          Width = 26
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'PELLI'
          Title.Alignment = taCenter
          Title.Caption = 'PEL'
          Width = 26
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'KG'
          Title.Alignment = taCenter
          Width = 23
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'MMSUOLA'
          Title.Alignment = taCenter
          Title.Caption = 'MM'
          Width = 28
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'URGENZA'
          Title.Alignment = taCenter
          Title.Caption = 'URG.'
          Width = 30
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'OWNER'
          Title.Alignment = taCenter
          Title.Caption = 'OP'
          Width = 29
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PREZZO'
          Width = 48
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EANCODERIP'
          Title.Caption = 'EANCODE'
          Width = 72
          Visible = True
        end>
    end
    object DBCheckBox10: TDBCheckBox
      Left = 584
      Top = 40
      Width = 17
      Height = 17
      DataField = 'FONDO'
      DataSource = DM.DSRiparazione
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      ValueChecked = '1'
      ValueUnchecked = '0'
      Visible = False
    end
  end
  object BitBtn11: TBitBtn
    Left = 17
    Top = 473
    Width = 89
    Height = 33
    Caption = 'SALVA'
    TabOrder = 5
    OnClick = BitBtn11Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003333330B7FFF
      FFB0333333777F3333773333330B7FFFFFB0333333777F3333773333330B7FFF
      FFB0333333777F3333773333330B7FFFFFB03FFFFF777FFFFF77000000000077
      007077777777777777770FFFFFFFF00077B07F33333337FFFF770FFFFFFFF000
      7BB07F3FF3FFF77FF7770F00F000F00090077F77377737777F770FFFFFFFF039
      99337F3FFFF3F7F777FF0F0000F0F09999937F7777373777777F0FFFFFFFF999
      99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
      99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
      93337FFFF7737777733300000033333333337777773333333333}
    NumGlyphs = 2
  end
  object BitBtn19: TBitBtn
    Left = 112
    Top = 473
    Width = 89
    Height = 33
    Caption = 'MODIFICA'
    TabOrder = 6
    OnClick = BitBtn19Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
      000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
      00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
      F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
      0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
      FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
      FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
      0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
      00333377737FFFFF773333303300000003333337337777777333}
    NumGlyphs = 2
  end
  object BitBtn20: TBitBtn
    Left = 209
    Top = 473
    Width = 89
    Height = 33
    Caption = 'ELIMINA'
    TabOrder = 7
    OnClick = BitBtn20Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333FF3333333333333003333333333333377F33333333333307
      733333FFF333337773333C003333307733333777FF333777FFFFC0CC03330770
      000077777FF377777777C033C03077FFFFF077FF77F777FFFFF7CC00000F7777
      777077777777777777773CCCCC00000000003777777777777777333330030FFF
      FFF03333F77F7F3FF3F7333C0C030F00F0F03337777F7F77373733C03C030FFF
      FFF03377F77F7F3F333733C03C030F0FFFF03377F7737F733FF733C000330FFF
      0000337777F37F3F7777333CCC330F0F0FF0333777337F737F37333333330FFF
      0F03333333337FFF7F7333333333000000333333333377777733}
    NumGlyphs = 2
  end
  object BitBtn21: TBitBtn
    Left = 304
    Top = 473
    Width = 89
    Height = 33
    Caption = 'ANNULLA'
    TabOrder = 8
    OnClick = BitBtn21Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
      33333337777FF377FF3333993370739993333377FF373F377FF3399993000339
      993337777F777F3377F3393999707333993337F77737333337FF993399933333
      399377F3777FF333377F993339903333399377F33737FF33377F993333707333
      399377F333377FF3377F993333101933399377F333777FFF377F993333000993
      399377FF3377737FF7733993330009993933373FF3777377F7F3399933000399
      99333773FF777F777733339993707339933333773FF7FFF77333333999999999
      3333333777333777333333333999993333333333377777333333}
    NumGlyphs = 2
  end
  object BitBtn30: TBitBtn
    Left = 776
    Top = 473
    Width = 105
    Height = 33
    Caption = 'ETICHETTA'
    TabOrder = 9
    OnClick = BitBtn30Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
      8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
      8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
      8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
      03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
      03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
      33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
      33333337FFFF7733333333300000033333333337777773333333}
    NumGlyphs = 2
  end
  object BitBtn26: TBitBtn
    Left = 520
    Top = 9
    Width = 89
    Height = 33
    Caption = 'NUOVO'
    TabOrder = 10
    OnClick = BitBtn26Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      555555FFFFFFFFFF5F5557777777777505555777777777757F55555555555555
      055555555555FF5575F555555550055030555555555775F7F7F55555550FB000
      005555555575577777F5555550FB0BF0F05555555755755757F555550FBFBF0F
      B05555557F55557557F555550BFBF0FB005555557F55575577F555500FBFBFB0
      305555577F555557F7F5550E0BFBFB003055557575F55577F7F550EEE0BFB0B0
      305557FF575F5757F7F5000EEE0BFBF03055777FF575FFF7F7F50000EEE00000
      30557777FF577777F7F500000E05555BB05577777F75555777F5500000555550
      3055577777555557F7F555000555555999555577755555577755}
    NumGlyphs = 2
  end
  object BitBtn33: TBitBtn
    Left = 8
    Top = 64
    Width = 121
    Height = 33
    Caption = 'PRONTI DA OPN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    OnClick = BitBtn33Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
      FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
      00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
      F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
      00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
      F033777777777337F73309999990FFF0033377777777FFF77333099999000000
      3333777777777777333333399033333333333337773333333333333903333333
      3333333773333333333333303333333333333337333333333333}
    NumGlyphs = 2
  end
  object BitBtn1: TBitBtn
    Left = 136
    Top = 64
    Width = 121
    Height = 33
    Caption = 'RITIRATI DA OPN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    OnClick = BitBtn33Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033BBBBBBBBBB
      BB33337777777777777F33BB00BBBBBBBB33337F77333333F37F33BB0BBBBBB0
      BB33337F73F33337FF7F33BBB0BBBB000B33337F37FF3377737F33BBB00BB00B
      BB33337F377F3773337F33BBBB0B00BBBB33337F337F7733337F33BBBB000BBB
      BB33337F33777F33337F33EEEE000EEEEE33337F3F777FFF337F33EE0E80000E
      EE33337F73F77773337F33EEE0800EEEEE33337F37377F33337F33EEEE000EEE
      EE33337F33777F33337F33EEEEE00EEEEE33337F33377FF3337F33EEEEEE00EE
      EE33337F333377F3337F33EEEEEE00EEEE33337F33337733337F33EEEEEEEEEE
      EE33337FFFFFFFFFFF7F33EEEEEEEEEEEE333377777777777773}
    NumGlyphs = 2
  end
  object Edit1: TEdit
    Left = 264
    Top = 65
    Width = 129
    Height = 28
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 400
    Top = 65
    Width = 129
    Height = 28
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
    OnKeyPress = Edit2KeyPress
  end
  object GroupBox4: TGroupBox
    Left = 728
    Top = 0
    Width = 273
    Height = 105
    Caption = 'LISTA LAVORAZIONI DA ESEGUIRE:'
    TabOrder = 15
    object SpeedButton1: TSpeedButton
      Left = 112
      Top = 32
      Width = 25
      Height = 25
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        003337777777777777F330FFFFFFFFFFF03337F3333FFF3337F330FFFF000FFF
        F03337F33377733337F330FFFFF0FFFFF03337F33337F33337F330FFFF00FFFF
        F03337F33377F33337F330FFFFF0FFFFF03337F33337333337F330FFFFFFFFFF
        F03337FFF3F3F3F3F7F33000F0F0F0F0F0333777F7F7F7F7F7F330F0F000F070
        F03337F7F777F777F7F330F0F0F0F070F03337F7F7373777F7F330F0FF0FF0F0
        F03337F733733737F7F330FFFFFFFF00003337F33333337777F330FFFFFFFF0F
        F03337FFFFFFFF7F373330999999990F033337777777777F733330FFFFFFFF00
        333337FFFFFFFF77333330000000000333333777777777733333}
      NumGlyphs = 2
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 112
      Top = 72
      Width = 25
      Height = 25
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        003337777777777777F330FFFFFFFFFFF03337F3333FFF3337F330FFFF000FFF
        F03337F33377733337F330FFFFF0FFFFF03337F33337F33337F330FFFF00FFFF
        F03337F33377F33337F330FFFFF0FFFFF03337F33337333337F330FFFFFFFFFF
        F03337FFF3F3F3F3F7F33000F0F0F0F0F0333777F7F7F7F7F7F330F0F000F070
        F03337F7F777F777F7F330F0F0F0F070F03337F7F7373777F7F330F0FF0FF0F0
        F03337F733733737F7F330FFFFFFFF00003337F33333337777F330FFFFFFFF0F
        F03337FFFFFFFF7F373330999999990F033337777777777F733330FFFFFFFF00
        333337FFFFFFFF77333330000000000333333777777777733333}
      NumGlyphs = 2
      OnClick = SpeedButton2Click
    end
    object Label13: TLabel
      Left = 8
      Top = 16
      Width = 24
      Height = 13
      Caption = 'DAL:'
    end
    object Label14: TLabel
      Left = 8
      Top = 59
      Width = 16
      Height = 13
      Caption = 'AL:'
    end
    object BitBtn2: TBitBtn
      Left = 152
      Top = 40
      Width = 105
      Height = 33
      Caption = 'BOARDERORD'
      TabOrder = 0
      OnClick = BitBtn2Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
    object Edit3: TEdit
      Left = 8
      Top = 32
      Width = 97
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object Edit4: TEdit
      Left = 8
      Top = 72
      Width = 97
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object Preview5: TCheckBox
      Left = 192
      Top = 70
      Width = 73
      Height = 17
      Caption = 'PREVIEW'
      TabOrder = 3
    end
  end
  object BitBtn3: TBitBtn
    Left = 592
    Top = 473
    Width = 113
    Height = 33
    Caption = 'ETIC ATTACCHI'
    TabOrder = 16
    OnClick = BitBtn3Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
      8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
      8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
      8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
      03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
      03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
      33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
      33333337FFFF7733333333300000033333333337777773333333}
    NumGlyphs = 2
  end
  object Preview3: TCheckBox
    Left = 872
    Top = 496
    Width = 73
    Height = 17
    Caption = 'PREVIEW'
    TabOrder = 17
  end
  object Preview4: TCheckBox
    Left = 696
    Top = 496
    Width = 73
    Height = 17
    Caption = 'PREVIEW'
    TabOrder = 18
  end
end
