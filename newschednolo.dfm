object Form1: TForm1
  Left = 185
  Top = 123
  Width = 1404
  Height = 755
  Caption = 'SCHEDA NOLEGGIO'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 617
    Height = 81
    Caption = 'CLIENTE'
    TabOrder = 0
    object Label4: TLabel
      Left = 8
      Top = 16
      Width = 38
      Height = 13
      Caption = 'CLI_NO'
      FocusControl = DBEdit1
    end
    object Label1: TLabel
      Left = 104
      Top = 16
      Width = 90
      Height = 13
      Caption = 'NOME COGNOME'
      FocusControl = DBEdit2
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 28
      Width = 89
      Height = 37
      DataField = 'CLI_NO'
      DataSource = DM.DSClienti
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -23
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 104
      Top = 28
      Width = 497
      Height = 37
      DataField = 'CLI_NO'
      DataSource = DM.DSClienti
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -23
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 88
    Width = 1385
    Height = 97
    Caption = 'PERIODO NOLEGGIO'
    TabOrder = 1
  end
  object GroupBox3: TGroupBox
    Left = 624
    Top = 0
    Width = 761
    Height = 81
    Caption = 'DATI SCHEDA'
    TabOrder = 2
    object Label2: TLabel
      Left = 8
      Top = 16
      Width = 58
      Height = 13
      Caption = 'ID SCHEDA'
      FocusControl = DBEdit3
    end
    object Label3: TLabel
      Left = 104
      Top = 16
      Width = 94
      Height = 13
      Caption = 'DATA CREAZIONE'
      FocusControl = DBEdit4
    end
    object DBEdit3: TDBEdit
      Left = 8
      Top = 28
      Width = 89
      Height = 37
      DataField = 'CLI_NO'
      DataSource = DM.DSClienti
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -23
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit4: TDBEdit
      Left = 104
      Top = 28
      Width = 153
      Height = 37
      DataField = 'CLI_NO'
      DataSource = DM.DSClienti
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -23
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
  end
end
