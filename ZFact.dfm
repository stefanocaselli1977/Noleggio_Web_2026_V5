object CalcZFact: TCalcZFact
  Left = 321
  Top = 228
  AutoSize = True
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsDialog
  Caption = 'CALCOLO FATTORE Z'
  ClientHeight = 289
  ClientWidth = 961
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 346
    Height = 20
    Caption = 'DATI CALCOLO FATTORE DI SGANCIO Z:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label13: TLabel
    Left = 0
    Top = 32
    Width = 73
    Height = 16
    Caption = 'SCHEDA N'#176
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label14: TLabel
    Left = 152
    Top = 32
    Width = 102
    Height = 16
    Caption = 'INTESTATARIO:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Bevel1: TBevel
    Left = 0
    Top = 24
    Width = 489
    Height = 9
    Shape = bsTopLine
  end
  object Bevel2: TBevel
    Left = 0
    Top = 64
    Width = 945
    Height = 9
    Shape = bsTopLine
  end
  object BitBtn1: TBitBtn
    Left = 856
    Top = 256
    Width = 105
    Height = 33
    Caption = 'ESCI'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = BitBtn1Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
      03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
      0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
      0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
      0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
      0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
      0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
      0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
      0333337F777FFFFF7F3333000000000003333377777777777333}
    NumGlyphs = 2
  end
  object DBEdit6: TDBEdit
    Left = 80
    Top = 32
    Width = 65
    Height = 21
    DataField = 'SCHED_NO'
    DataSource = DM.DSSchedule
    ReadOnly = True
    TabOrder = 1
  end
  object DBEdit7: TDBEdit
    Left = 256
    Top = 32
    Width = 177
    Height = 21
    DataField = 'COGNRAGSOC'
    DataSource = DM.DSSchedule
    ReadOnly = True
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 72
    Width = 961
    Height = 177
    DataSource = DM.DSRented
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'TIPO'
        ReadOnly = True
        Width = 146
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BRAND'
        ReadOnly = True
        Width = 103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRIZIONE'
        ReadOnly = True
        Width = 171
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MISURA'
        ReadOnly = True
        Title.Caption = 'MIS.'
        Width = 36
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ETA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PESO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ALTEZZA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'SESSO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        PickList.Strings = (
          'M'
          'F')
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CMSUOLA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'LIVELLO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        PickList.Strings = (
          'BASE'
          'MEDIO'
          'AVANZATO')
        Visible = True
      end
      item
        Alignment = taRightJustify
        Color = cl3DLight
        Expanded = False
        FieldName = 'CODICE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ReadOnly = True
        Title.Caption = 'COD.'
        Width = 31
        Visible = True
      end
      item
        Alignment = taCenter
        Color = cl3DLight
        Expanded = False
        FieldName = 'ZFACTOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ReadOnly = True
        Title.Caption = 'Z FAC.'
        Visible = True
      end>
  end
  object DBEdit1: TDBEdit
    Left = 440
    Top = 32
    Width = 177
    Height = 21
    DataField = 'NOME'
    DataSource = DM.DSSchedule
    ReadOnly = True
    TabOrder = 4
  end
end
