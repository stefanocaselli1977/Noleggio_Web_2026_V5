object RicMatasse: TRicMatasse
  Left = 356
  Top = 314
  BorderStyle = bsDialog
  Caption = 'RicMatasse'
  ClientHeight = 337
  ClientWidth = 738
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 8
    Top = 8
    Width = 721
    Height = 44
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnChange = Edit1Change
    OnKeyPress = Edit1KeyPress
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 56
    Width = 721
    Height = 273
    DataSource = DM.DSAcq
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ACQ_NO'
        Title.Caption = 'MAT_NO'
        Width = 56
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BRAND'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRIZIONE'
        Width = 258
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COLOREMATASSA'
        Title.Caption = 'COLORE'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TAGLIA'
        Title.Caption = 'CALIBRO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTA'
        Width = 28
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SEZIONE'
        Title.Caption = #8364'. INCOR.'
        Width = 54
        Visible = True
      end>
  end
end
