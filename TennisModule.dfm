object TennisMng: TTennisMng
  Left = 474
  Top = 330
  Width = 1385
  Height = 792
  AutoSize = True
  Caption = 'Tennis Manager'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnHide = FormHide
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label73: TLabel
    Left = 912
    Top = 640
    Width = 48
    Height = 13
    Caption = #8364'. EXTRA'
  end
  object Label128: TLabel
    Left = 968
    Top = 632
    Width = 64
    Height = 13
    Caption = 'SUBTOTALE'
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 64
    Width = 1369
    Height = 689
    ActivePage = TabSheet2
    TabIndex = 1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'GEST. TELAI'
      OnShow = TabSheet1Show
      object GroupBox3: TGroupBox
        Left = 8
        Top = 0
        Width = 1353
        Height = 297
        TabOrder = 0
        object Label40: TLabel
          Left = 8
          Top = 8
          Width = 22
          Height = 13
          Caption = 'EAN'
        end
        object Label42: TLabel
          Left = 248
          Top = 8
          Width = 25
          Height = 13
          Caption = 'TIPO'
        end
        object Label43: TLabel
          Left = 472
          Top = 8
          Width = 73
          Height = 13
          Caption = 'DESCRIZIONE'
        end
        object SpeedButton2: TSpeedButton
          Left = 1224
          Top = 64
          Width = 121
          Height = 25
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300000000
            0000333377777777777733330FFFFFFFFFF033337F3FFF3F3FF733330F000F0F
            00F033337F777373773733330FFFFFFFFFF033337F3FF3FF3FF733330F00F00F
            00F033337F773773773733330FFFFFFFFFF033337FF3333FF3F7333300FFFF00
            F0F03333773FF377F7373330FB00F0F0FFF0333733773737F3F7330FB0BF0FB0
            F0F0337337337337373730FBFBF0FB0FFFF037F333373373333730BFBF0FB0FF
            FFF037F3337337333FF700FBFBFB0FFF000077F333337FF37777E0BFBFB000FF
            0FF077FF3337773F7F37EE0BFB0BFB0F0F03777FF3733F737F73EEE0BFBF00FF
            00337777FFFF77FF7733EEEE0000000003337777777777777333}
          NumGlyphs = 2
          OnClick = SpeedButton2Click
        end
        object Label41: TLabel
          Left = 184
          Top = 8
          Width = 44
          Height = 13
          Caption = 'ART_NO'
        end
        object Label85: TLabel
          Left = 784
          Top = 8
          Width = 38
          Height = 13
          Caption = 'BRAND'
        end
        object DBGrid2: TDBGrid
          Left = 8
          Top = 96
          Width = 1337
          Height = 193
          DataSource = DM.DSArticolo
          Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 6
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = DBGrid2DrawColumnCell
          OnDblClick = DBGrid2DblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'ART_NO'
              Title.Caption = 'ID'
              Width = 47
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EANCODE2'
              Width = 87
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EANCODE'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Width = 96
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'INTRODATE'
              Width = 72
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'STAGIONE'
              Title.Caption = 'ANNO'
              Width = 58
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TIPO'
              Width = 179
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
              Title.Caption = 'MODELLO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MISURA'
              Title.Caption = 'MANICO'
              Width = 46
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COLORE'
              Title.Caption = 'PIATTO'
              Width = 47
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MANUALCODE'
              Title.Caption = 'MANCODE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TENSH'
              Width = 42
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TENSV'
              Width = 46
              Visible = True
            end>
        end
        object Edit1: TEdit
          Left = 8
          Top = 24
          Width = 169
          Height = 28
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnKeyPress = Edit1KeyPress
        end
        object Edit4: TEdit
          Left = 472
          Top = 24
          Width = 305
          Height = 28
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnKeyPress = Edit4KeyPress
        end
        object ComboBox1: TComboBox
          Left = 248
          Top = 24
          Width = 217
          Height = 28
          AutoDropDown = True
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 0
          ParentFont = False
          TabOrder = 2
          OnEnter = ComboBox1Enter
        end
        object Button4: TButton
          Left = 1224
          Top = 16
          Width = 121
          Height = 25
          Caption = 'RESET'
          TabOrder = 5
          OnClick = Button4Click
        end
        object RadioGroup1: TRadioGroup
          Left = 9
          Top = 58
          Width = 1200
          Height = 32
          Columns = 4
          ItemIndex = 0
          Items.Strings = (
            'TIPO'
            'BRAND'
            'STAGIONE'
            'MISURA')
          TabOrder = 7
        end
        object Edit2: TEdit
          Left = 184
          Top = 24
          Width = 57
          Height = 28
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnKeyPress = Edit2KeyPress
        end
        object ComboBox3: TComboBox
          Left = 784
          Top = 24
          Width = 217
          Height = 28
          AutoDropDown = True
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 0
          ParentFont = False
          TabOrder = 4
          OnEnter = ComboBox3Enter
          OnSelect = ComboBox3Select
        end
      end
      object GroupBox4: TGroupBox
        Left = 8
        Top = 296
        Width = 1353
        Height = 321
        TabOrder = 1
        object Label20: TLabel
          Left = 8
          Top = 8
          Width = 44
          Height = 13
          Caption = 'ART_NO'
          FocusControl = DBEdit14
        end
        object Label23: TLabel
          Left = 1040
          Top = 24
          Width = 94
          Height = 13
          Caption = 'DATA CREAZIONE'
          FocusControl = DBEdit17
        end
        object Label24: TLabel
          Left = 1040
          Top = 120
          Width = 102
          Height = 13
          Caption = 'DATA DISMISSIONE'
          FocusControl = DBEdit18
        end
        object Label25: TLabel
          Left = 8
          Top = 72
          Width = 31
          Height = 13
          Caption = 'ANNO'
        end
        object Label26: TLabel
          Left = 408
          Top = 72
          Width = 52
          Height = 13
          Caption = 'MODELLO'
          FocusControl = DBEdit20
        end
        object Label27: TLabel
          Left = 144
          Top = 72
          Width = 38
          Height = 13
          Caption = 'BRAND'
        end
        object Label29: TLabel
          Left = 8
          Top = 128
          Width = 42
          Height = 13
          Caption = 'MANICO'
          FocusControl = DBEdit23
        end
        object Label30: TLabel
          Left = 120
          Top = 128
          Width = 80
          Height = 13
          Caption = 'PIATTO CORDE'
          FocusControl = DBEdit24
        end
        object Label39: TLabel
          Left = 8
          Top = 176
          Width = 30
          Height = 13
          Caption = 'NOTE'
          FocusControl = DBMemo2
        end
        object Label90: TLabel
          Left = 672
          Top = 8
          Width = 58
          Height = 13
          Caption = 'EANCODE2'
          FocusControl = DBEdit51
        end
        object DBText8: TDBText
          Left = 840
          Top = 16
          Width = 137
          Height = 41
          DataField = 'EANCODE2'
          DataSource = DM.DSArticolo
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'IDAutomationHC39M'
          Font.Style = []
          ParentFont = False
        end
        object Label198: TLabel
          Left = 1038
          Top = 224
          Width = 63
          Height = 13
          Caption = 'VEDUTO DA'
          FocusControl = DBEdit18
        end
        object Label1: TLabel
          Left = 368
          Top = 128
          Width = 64
          Height = 13
          Caption = 'TENS. ORIZ.'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 240
          Top = 128
          Width = 74
          Height = 13
          Caption = 'TENS. VERTIC'
          FocusControl = DBEdit2
        end
        object Label3: TLabel
          Left = 120
          Top = 8
          Width = 33
          Height = 13
          Caption = 'ID_CLI'
          FocusControl = DBEdit24
        end
        object Label4: TLabel
          Left = 208
          Top = 8
          Width = 32
          Height = 13
          Caption = 'NOME'
          FocusControl = DBEdit24
        end
        object Label5: TLabel
          Left = 448
          Top = 8
          Width = 55
          Height = 13
          Caption = 'COGNOME'
          FocusControl = DBEdit24
        end
        object Label79: TLabel
          Left = 1040
          Top = 72
          Width = 126
          Height = 13
          Caption = 'DATA ULTIMA MODIFICA'
          FocusControl = DBEdit48
        end
        object DBEdit18: TDBEdit
          Left = 1040
          Top = 136
          Width = 177
          Height = 28
          CharCase = ecUpperCase
          DataField = 'EXPIREDATE'
          DataSource = DM.DSArticolo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
        end
        object DBEdit14: TDBEdit
          Left = 8
          Top = 24
          Width = 57
          Height = 28
          DataField = 'ART_NO'
          DataSource = DM.DSArticolo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 12
        end
        object DBEdit17: TDBEdit
          Left = 1040
          Top = 40
          Width = 177
          Height = 28
          DataField = 'INTRODATE'
          DataSource = DM.DSArticolo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 11
        end
        object DBEdit20: TDBEdit
          Left = 408
          Top = 88
          Width = 425
          Height = 28
          CharCase = ecUpperCase
          DataField = 'DESCRIZIONE'
          DataSource = DM.DSArticolo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object DBEdit23: TDBEdit
          Left = 8
          Top = 144
          Width = 81
          Height = 28
          CharCase = ecUpperCase
          DataField = 'MISURA'
          DataSource = DM.DSArticolo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnKeyPress = DBEdit23KeyPress
        end
        object DBEdit24: TDBEdit
          Left = 120
          Top = 144
          Width = 81
          Height = 28
          CharCase = ecUpperCase
          DataField = 'COLORE'
          DataSource = DM.DSArticolo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnKeyPress = DBEdit24KeyPress
        end
        object DBMemo2: TDBMemo
          Left = 8
          Top = 192
          Width = 857
          Height = 73
          DataField = 'NOTE'
          DataSource = DM.DSArticolo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          OnExit = DBMemo2Exit
        end
        object DBRadioGroup2: TDBRadioGroup
          Left = 8
          Top = 272
          Width = 1337
          Height = 41
          Caption = 'STATO'
          Columns = 6
          DataField = 'AVAILABLE'
          DataSource = DM.DSArticolo
          Items.Strings = (
            'DISPONIBILE'
            'IN TEST'
            'RIPARAZIONE'
            'PRENOTATO'
            'VENDUTO'
            'ROTTO-DISMESSO')
          TabOrder = 10
          Values.Strings = (
            'DISPONIBILE'
            'NOLEGGIATO'
            'RIPARAZIONE'
            'PRENOTATO'
            'VENDUTO'
            'DISMESSO')
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 8
          Top = 88
          Width = 129
          Height = 28
          DataField = 'STAGIONE'
          DataSource = DM.DSArticolo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'STAGIONE'
          ListField = 'STAGIONE'
          ListSource = DM.DSStagione
          ParentFont = False
          TabOrder = 1
          OnKeyPress = DBLookupComboBox2KeyPress
        end
        object DBLookupComboBox3: TDBLookupComboBox
          Left = 144
          Top = 88
          Width = 257
          Height = 28
          DataField = 'BRAND'
          DataSource = DM.DSArticolo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'BRANDS'
          ListField = 'BRANDS'
          ListSource = DM.DSBrand
          ParentFont = False
          TabOrder = 2
          OnKeyPress = DBLookupComboBox3KeyPress
        end
        object DBEdit51: TDBEdit
          Left = 672
          Top = 24
          Width = 161
          Height = 28
          CharCase = ecUpperCase
          DataField = 'EANCODE2'
          DataSource = DM.DSArticolo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit56: TDBEdit
          Left = 1040
          Top = 240
          Width = 177
          Height = 28
          CharCase = ecUpperCase
          DataField = 'VENDUTODA'
          DataSource = DM.DSArticolo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 13
          OnExit = DBEdit56Exit
        end
        object DBEdit1: TDBEdit
          Left = 368
          Top = 144
          Width = 81
          Height = 28
          DataField = 'TENSH'
          DataSource = DM.DSArticolo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          OnKeyPress = DBEdit1KeyPress
        end
        object DBEdit2: TDBEdit
          Left = 240
          Top = 144
          Width = 81
          Height = 28
          DataField = 'TENSV'
          DataSource = DM.DSArticolo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnKeyPress = DBEdit2KeyPress
        end
        object DBEdit3: TDBEdit
          Left = 122
          Top = 24
          Width = 57
          Height = 28
          DataField = 'CLI_NO'
          DataSource = DM.DSArticolo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 14
        end
        object CheckBox1: TCheckBox
          Left = 8
          Top = 48
          Width = 105
          Height = 17
          Caption = 'NOSTRO'
          State = cbGrayed
          TabOrder = 15
          OnClick = CheckBox1Click
        end
        object Edit3: TEdit
          Left = 208
          Top = 24
          Width = 209
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 16
          Text = 'Edit3'
        end
        object Edit5: TEdit
          Left = 448
          Top = 24
          Width = 209
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 17
          Text = 'Edit3'
        end
        object DBEdit48: TDBEdit
          Left = 1040
          Top = 88
          Width = 177
          Height = 28
          CharCase = ecUpperCase
          DataField = 'RIPDATA'
          DataSource = DM.DSArticolo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 18
        end
        object GroupBox14: TGroupBox
          Left = 1224
          Top = 16
          Width = 121
          Height = 257
          TabOrder = 19
          object Label57: TLabel
            Left = 5
            Top = 10
            Width = 52
            Height = 13
            Caption = #8364'. CARICO'
          end
          object Label58: TLabel
            Left = 7
            Top = 58
            Width = 82
            Height = 13
            Caption = #8364'. MIN.VENDITA'
          end
          object Label59: TLabel
            Left = 8
            Top = 106
            Width = 65
            Height = 13
            Caption = #8364'. PUBBLICO'
          end
          object Label68: TLabel
            Left = 8
            Top = 152
            Width = 61
            Height = 13
            Caption = 'INCASSATO'
          end
          object Label69: TLabel
            Left = 7
            Top = 208
            Width = 98
            Height = 13
            Caption = #8364'.VENDITA/FURTO'
          end
          object DBEdit77: TDBEdit
            Left = 8
            Top = 24
            Width = 97
            Height = 28
            DataField = 'PREZZORIS'
            DataSource = DM.DSArticolo
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnEnter = DBEdit77Enter
          end
          object DBEdit78: TDBEdit
            Left = 8
            Top = 72
            Width = 97
            Height = 28
            DataField = 'PREZZOSCONT'
            DataSource = DM.DSArticolo
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
          end
          object DBEdit40: TDBEdit
            Left = 8
            Top = 120
            Width = 97
            Height = 28
            DataField = 'PREZZOPUB'
            DataSource = DM.DSArticolo
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnEnter = DBEdit76Enter
          end
          object DBEdit42: TDBEdit
            Left = 8
            Top = 168
            Width = 97
            Height = 28
            CharCase = ecUpperCase
            DataField = 'INCNOLO'
            DataSource = DM.DSArticolo
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 3
          end
          object DBEdit43: TDBEdit
            Left = 8
            Top = 221
            Width = 97
            Height = 28
            DataField = 'INCVENDITA'
            DataSource = DM.DSArticolo
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
        end
        object DBCheckBox3: TDBCheckBox
          Left = 122
          Top = 48
          Width = 105
          Height = 17
          Caption = 'CONTOVENDITA'
          DataField = 'CV'
          DataSource = DM.DSArticolo
          ReadOnly = True
          TabOrder = 20
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
      end
      object BTNINSERISCI1: TBitBtn
        Left = 8
        Top = 616
        Width = 89
        Height = 33
        Caption = 'NUOVO'
        TabOrder = 2
        OnClick = BTNINSERISCI1Click
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
      object BTNSALVA2: TBitBtn
        Left = 104
        Top = 616
        Width = 89
        Height = 33
        Caption = 'SALVA'
        TabOrder = 3
        OnClick = BTNSALVA2Click
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
      object BTNMODIFICA2: TBitBtn
        Left = 200
        Top = 616
        Width = 89
        Height = 33
        Caption = 'MODIFICA'
        TabOrder = 4
        OnClick = BTNMODIFICA2Click
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
      object BTNELIMINA2: TBitBtn
        Left = 296
        Top = 616
        Width = 89
        Height = 33
        Caption = 'ELIMINA'
        TabOrder = 5
        OnClick = BTNELIMINA2Click
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
      object BTNANNULLA2: TBitBtn
        Left = 392
        Top = 616
        Width = 89
        Height = 33
        Caption = 'ANNULLA'
        TabOrder = 6
        OnClick = BTNANNULLA2Click
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
      object BitBtn32: TBitBtn
        Left = 1264
        Top = 616
        Width = 97
        Height = 33
        Caption = 'VENDUTO'
        TabOrder = 7
        OnClick = BitBtn32Click
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555500000
          55555555000BB3B30555555030BB3303305555030BB0B3B3330555033BBBB333
          330550B3B3BB3BB3B33050B3B33BBBBB333050B3B33BBBBB3B3050B3B333BB0B
          33B050B33333BBB3B3B050BB33333333BB05550B33B3333BB305550BB33330BB
          B0555550BB33B3BB0555555500B3333055555555550000055555}
      end
      object BitBtn30: TBitBtn
        Left = 512
        Top = 616
        Width = 89
        Height = 33
        Caption = 'INCORDA'
        TabOrder = 8
        OnClick = BitBtn30Click
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555777555
          5555555555000757755555575500005007555570058880000075570870088078
          007555787887087777755550880FF0800007708080888F7088077088F0708F78
          88077000F0778080005555508F0008800755557878FF88777075570870080088
          0755557075888070755555575500075555555555557775555555}
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'INCORDATURA'
      ImageIndex = 1
      OnHide = TabSheet2Hide
      OnShow = TabSheet2Show
      object GroupBox5: TGroupBox
        Left = 8
        Top = 0
        Width = 1353
        Height = 153
        Caption = 'LISTA INCORDATURE'
        TabOrder = 0
        object DBGrid1: TDBGrid
          Left = 8
          Top = 24
          Width = 1329
          Height = 121
          DataSource = DM.DSIncord
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = DBGrid1DblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'INC_NO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ART_NO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATAINSERT'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATAREADY'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATARICCONS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TIPOPAGAMENTO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EANCODE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'GRIPMANICO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ANTIBOUNCHE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PROTEZIONETESTA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PIOMBATURAGR'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOTEPIOMBATURA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOTE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COSTO_INCORD'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COSTOGRIP'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COSTOPROTEZ'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COSTOPIOMB'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COSTOANTIBOUNCHE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MANICO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COSTOMANICO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COSTOEXTRA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MOTIVOINCAZERO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SCONTO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SUBTOTALE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOTALE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_MATVERT'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_MATHOR'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TENSORIZ'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TENSVERT'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'URGENTE'
              Visible = True
            end>
        end
      end
      object GroupBox13: TGroupBox
        Left = 8
        Top = 152
        Width = 1353
        Height = 481
        Caption = 'DETTAGLI INCORDATURA'
        Color = clBtnFace
        ParentColor = False
        TabOrder = 1
        object Label22: TLabel
          Left = 8
          Top = 24
          Width = 40
          Height = 13
          Caption = 'INC_NO'
          FocusControl = DBEdit16
        end
        object Label46: TLabel
          Left = 1160
          Top = 8
          Width = 94
          Height = 13
          Caption = 'DATA CREAZIONE'
          FocusControl = DBEdit32
        end
        object Label47: TLabel
          Left = 1160
          Top = 168
          Width = 103
          Height = 13
          Caption = 'DATA ORA PRONTA'
          FocusControl = DBEdit33
        end
        object Label48: TLabel
          Left = 1160
          Top = 56
          Width = 89
          Height = 13
          Caption = 'DATA RICHIESTA'
          FocusControl = DBEdit34
        end
        object SpeedButton4: TSpeedButton
          Left = 1316
          Top = 72
          Width = 34
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
        object Label49: TLabel
          Left = 1203
          Top = 133
          Width = 6
          Height = 20
          Caption = ':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label50: TLabel
          Left = 1160
          Top = 115
          Width = 83
          Height = 13
          Caption = 'ORA RICHIESTA'
          FocusControl = DBEdit34
        end
        object Label52: TLabel
          Left = 96
          Top = 24
          Width = 52
          Height = 13
          Caption = 'EANCODE'
        end
        object DBText3: TDBText
          Left = 96
          Top = 40
          Width = 137
          Height = 41
          DataField = 'EANCODE'
          DataSource = DM.DSIncord
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'IDAutomationHC39M'
          Font.Style = []
          ParentFont = False
        end
        object Label33: TLabel
          Left = 8
          Top = 88
          Width = 44
          Height = 13
          Caption = 'ART_NO'
          FocusControl = DBEdit22
        end
        object Label34: TLabel
          Left = 608
          Top = 88
          Width = 55
          Height = 13
          Caption = 'STAGIONE'
          FocusControl = DBEdit31
        end
        object Label35: TLabel
          Left = 304
          Top = 88
          Width = 73
          Height = 13
          Caption = 'DESCRIZIONE'
          FocusControl = DBEdit38
        end
        object Label36: TLabel
          Left = 96
          Top = 88
          Width = 38
          Height = 13
          Caption = 'BRAND'
          FocusControl = DBEdit66
        end
        object Label37: TLabel
          Left = 688
          Top = 88
          Width = 42
          Height = 13
          Caption = 'MISURA'
          FocusControl = DBEdit67
        end
        object Label31: TLabel
          Left = 1016
          Top = 8
          Width = 91
          Height = 13
          Caption = #8364'. INCORDATURA'
          FocusControl = DBEdit25
        end
        object Label32: TLabel
          Left = 1016
          Top = 48
          Width = 38
          Height = 13
          Caption = #8364'. GRIP'
          FocusControl = DBEdit68
        end
        object Label70: TLabel
          Left = 1016
          Top = 88
          Width = 82
          Height = 13
          Caption = #8364'. PROTEZIONE'
          FocusControl = DBEdit69
        end
        object Label71: TLabel
          Left = 1016
          Top = 128
          Width = 83
          Height = 13
          Caption = #8364'. PIOMBATURA'
          FocusControl = DBEdit70
        end
        object Label72: TLabel
          Left = 1016
          Top = 168
          Width = 90
          Height = 13
          Caption = #8364'. ANTIBOUNCHE'
          FocusControl = DBEdit71
        end
        object Label74: TLabel
          Left = 1016
          Top = 208
          Width = 54
          Height = 13
          Caption = #8364'. MANICO'
          FocusControl = DBEdit73
        end
        object Label78: TLabel
          Left = 1016
          Top = 248
          Width = 48
          Height = 13
          Caption = #8364'. EXTRA'
          FocusControl = DBEdit74
        end
        object Label83: TLabel
          Left = 1101
          Top = 376
          Width = 45
          Height = 13
          Caption = 'SCONTO'
          FocusControl = DBEdit75
        end
        object Label84: TLabel
          Left = 1017
          Top = 376
          Width = 64
          Height = 13
          Caption = 'SUBTOTALE'
          FocusControl = DBEdit76
        end
        object Label87: TLabel
          Left = 1240
          Top = 424
          Width = 36
          Height = 13
          Caption = 'SALDO'
          FocusControl = DBEdit79
        end
        object Shape1: TShape
          Left = 1016
          Top = 372
          Width = 321
          Height = 3
        end
        object Label126: TLabel
          Left = 1016
          Top = 288
          Width = 68
          Height = 13
          Caption = #8364'. OVERGRIP'
          FocusControl = DBEdit74
        end
        object Label127: TLabel
          Left = 1016
          Top = 328
          Width = 61
          Height = 13
          Caption = #8364'. SILICONE'
          FocusControl = DBEdit74
        end
        object Label129: TLabel
          Left = 1240
          Top = 376
          Width = 52
          Height = 13
          Caption = 'ACCONTO'
          FocusControl = DBEdit75
        end
        object Label130: TLabel
          Left = 1160
          Top = 376
          Width = 42
          Height = 13
          Caption = 'TOTALE'
          FocusControl = DBEdit76
        end
        object Label131: TLabel
          Left = 1016
          Top = 424
          Width = 172
          Height = 13
          Caption = 'GIUSTIFICATIVO TOTALE A ZERO'
          FocusControl = DBEdit79
        end
        object Label132: TLabel
          Left = 1160
          Top = 312
          Width = 68
          Height = 13
          Caption = 'DATA SALDO'
          FocusControl = DBEdit83
        end
        object Label133: TLabel
          Left = 1160
          Top = 264
          Width = 84
          Height = 13
          Caption = 'DATA ACCONTO'
          FocusControl = DBEdit84
        end
        object Label134: TLabel
          Left = 1160
          Top = 216
          Width = 126
          Height = 13
          Caption = 'DATA ULTIMA MODIFICA'
          FocusControl = DBEdit85
        end
        object Label135: TLabel
          Left = 8
          Top = 336
          Width = 87
          Height = 13
          Caption = 'NOTE GENERALI'
        end
        object Label155: TLabel
          Left = 304
          Top = 24
          Width = 165
          Height = 13
          Caption = 'ORA E DATA RICHIESTA RITIRO'
        end
        object DBEdit16: TDBEdit
          Left = 8
          Top = 40
          Width = 81
          Height = 28
          DataField = 'INC_NO'
          DataSource = DM.DSIncord
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 15
        end
        object DBEdit32: TDBEdit
          Left = 1160
          Top = 24
          Width = 153
          Height = 28
          DataField = 'DATAINSERT'
          DataSource = DM.DSIncord
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 16
        end
        object DBEdit33: TDBEdit
          Left = 1160
          Top = 184
          Width = 153
          Height = 28
          DataField = 'DATAREADY'
          DataSource = DM.DSIncord
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 17
        end
        object DBEdit34: TDBEdit
          Left = 1160
          Top = 72
          Width = 153
          Height = 28
          DataField = 'DATARICCONS'
          DataSource = DM.DSIncord
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object SpinEdit1: TSpinEdit
          Left = 1160
          Top = 130
          Width = 41
          Height = 30
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 2
          MaxValue = 24
          MinValue = 0
          ParentFont = False
          TabOrder = 1
          Value = 0
          OnExit = SpinEdit1Exit
        end
        object SpinEdit2: TSpinEdit
          Left = 1216
          Top = 130
          Width = 41
          Height = 30
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 2
          MaxValue = 59
          MinValue = 0
          ParentFont = False
          TabOrder = 2
          Value = 0
          OnExit = SpinEdit2Exit
        end
        object PageControl2: TPageControl
          Left = 8
          Top = 139
          Width = 897
          Height = 190
          ActivePage = TabSheet9
          TabIndex = 0
          TabOrder = 14
          OnExit = PageControl2Exit
          object TabSheet9: TTabSheet
            Caption = 'INCORDATURA'
            ImageIndex = 3
            object Label51: TLabel
              Left = 648
              Top = 8
              Width = 53
              Height = 13
              Caption = 'ID_MAT V.'
              FocusControl = DBEdit35
            end
            object Label53: TLabel
              Left = 648
              Top = 56
              Width = 54
              Height = 13
              Caption = 'ID_MAT H.'
              FocusControl = DBEdit36
            end
            object Label54: TLabel
              Left = 720
              Top = 8
              Width = 53
              Height = 13
              Caption = 'KG. VERT.'
              FocusControl = DBEdit37
            end
            object Label55: TLabel
              Left = 720
              Top = 56
              Width = 50
              Height = 13
              Caption = 'KG. ORIZ.'
              FocusControl = DBEdit39
            end
            object Label65: TLabel
              Left = 0
              Top = 8
              Width = 100
              Height = 13
              Caption = 'CORDA VERTICALE'
              FocusControl = DBEdit35
            end
            object Label67: TLabel
              Left = 0
              Top = 56
              Width = 117
              Height = 13
              Caption = 'CORDA ORIZZONTALE'
              FocusControl = DBEdit35
            end
            object Label136: TLabel
              Left = 480
              Top = 8
              Width = 93
              Height = 13
              Caption = 'EANCODE CORDA'
              FocusControl = DBEdit35
            end
            object Label137: TLabel
              Left = 480
              Top = 56
              Width = 93
              Height = 13
              Caption = 'EANCODE CORDA'
              FocusControl = DBEdit35
            end
            object DBEdit35: TDBEdit
              Left = 648
              Top = 24
              Width = 65
              Height = 32
              DataField = 'ID_MATVERT'
              DataSource = DM.DSIncord
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 1
            end
            object DBEdit36: TDBEdit
              Left = 648
              Top = 72
              Width = 65
              Height = 32
              DataField = 'ID_MATHOR'
              DataSource = DM.DSIncord
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 4
            end
            object DBEdit37: TDBEdit
              Left = 720
              Top = 24
              Width = 65
              Height = 32
              DataField = 'TENSVERT'
              DataSource = DM.DSIncord
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              OnKeyPress = DBEdit37KeyPress
            end
            object DBEdit39: TDBEdit
              Left = 720
              Top = 72
              Width = 65
              Height = 32
              DataField = 'TENSORIZ'
              DataSource = DM.DSIncord
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
              OnKeyPress = DBEdit39KeyPress
            end
            object BitBtn28: TBitBtn
              Left = 664
              Top = 106
              Width = 121
              Height = 23
              Caption = 'IMPOSTAZIONI RACH.'
              TabOrder = 6
              OnClick = BitBtn28Click
            end
            object BitBtn29: TBitBtn
              Left = 278
              Top = 98
              Width = 193
              Height = 23
              Caption = 'DUPPLICA DA CORDA VERTICALE'
              TabOrder = 7
              OnClick = BitBtn29Click
            end
            object DBEdit86: TDBEdit
              Left = 480
              Top = 24
              Width = 161
              Height = 28
              DataField = 'EANCODEMATH'
              DataSource = DM.DSIncord
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
              OnKeyPress = DBEdit86KeyPress
            end
            object DBEdit87: TDBEdit
              Left = 480
              Top = 72
              Width = 161
              Height = 28
              DataField = 'EANCODEMATO'
              DataSource = DM.DSIncord
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 3
              OnKeyPress = DBEdit87KeyPress
            end
            object Edit6: TEdit
              Left = 0
              Top = 24
              Width = 473
              Height = 28
              CharCase = ecUpperCase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 8
              OnEnter = Edit6Enter
            end
            object Edit7: TEdit
              Left = 0
              Top = 72
              Width = 473
              Height = 28
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 9
              OnEnter = Edit7Enter
            end
          end
          object TabSheet3: TTabSheet
            Caption = 'MANICO'
            ImageIndex = 3
            object Label138: TLabel
              Left = 0
              Top = 0
              Width = 64
              Height = 13
              Caption = 'EANMANICO'
              FocusControl = DBEdit88
            end
            object Label140: TLabel
              Left = 168
              Top = 0
              Width = 42
              Height = 13
              Caption = 'MANICO'
              FocusControl = DBEdit90
            end
            object Label139: TLabel
              Left = 168
              Top = 112
              Width = 78
              Height = 13
              Caption = 'ANTIBOUNCHE'
              FocusControl = DBEdit89
            end
            object Label141: TLabel
              Left = 0
              Top = 112
              Width = 100
              Height = 13
              Caption = 'EANANTIBOUNCHE'
              FocusControl = DBEdit91
            end
            object Label142: TLabel
              Left = 0
              Top = 56
              Width = 78
              Height = 13
              Caption = 'EANOVERGRIP'
              FocusControl = DBEdit92
            end
            object Label143: TLabel
              Left = 168
              Top = 56
              Width = 56
              Height = 13
              Caption = 'OVERGRIP'
              FocusControl = DBEdit93
            end
            object DBEdit88: TDBEdit
              Left = 0
              Top = 16
              Width = 161
              Height = 32
              DataField = 'EANMANICO'
              DataSource = DM.DSIncord
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnKeyPress = DBEdit88KeyPress
            end
            object DBEdit90: TDBEdit
              Left = 168
              Top = 16
              Width = 529
              Height = 32
              CharCase = ecUpperCase
              DataField = 'MANICO'
              DataSource = DM.DSIncord
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object DBCheckBox2: TDBCheckBox
              Left = 704
              Top = 144
              Width = 185
              Height = 17
              Caption = 'SILICONE MANICO'
              DataField = 'SILICONEMANICO'
              DataSource = DM.DSIncord
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 6
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
            object DBEdit89: TDBEdit
              Left = 168
              Top = 128
              Width = 529
              Height = 32
              CharCase = ecUpperCase
              DataField = 'ANTIBOUNCHE'
              DataSource = DM.DSIncord
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
            end
            object DBEdit91: TDBEdit
              Left = 0
              Top = 128
              Width = 161
              Height = 32
              DataField = 'EANANTIBOUNCHE'
              DataSource = DM.DSIncord
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              OnKeyPress = DBEdit91KeyPress
            end
            object DBEdit92: TDBEdit
              Left = 0
              Top = 72
              Width = 161
              Height = 32
              DataField = 'EANOVERGRIP'
              DataSource = DM.DSIncord
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              OnKeyPress = DBEdit92KeyPress
            end
            object DBEdit93: TDBEdit
              Left = 168
              Top = 72
              Width = 529
              Height = 32
              CharCase = ecUpperCase
              DataField = 'OVERGRIP'
              DataSource = DM.DSIncord
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
          end
          object TabSheet4: TTabSheet
            Caption = 'PIOMBATURA'
            ImageIndex = 2
            object Label144: TLabel
              Left = 232
              Top = 8
              Width = 132
              Height = 13
              Caption = 'POSIZIONE PIOMBATURA'
            end
            object Label145: TLabel
              Left = 8
              Top = 64
              Width = 101
              Height = 13
              Caption = 'NOTEPIOMBATURA'
              FocusControl = DBMemo6
            end
            object Label146: TLabel
              Left = 504
              Top = 8
              Width = 56
              Height = 13
              Caption = 'PIOMB. GR'
              FocusControl = DBEdit95
            end
            object Label147: TLabel
              Left = 8
              Top = 8
              Width = 64
              Height = 13
              Caption = 'EANPIOMBO'
              FocusControl = DBEdit94
            end
            object DBMemo6: TDBMemo
              Left = 8
              Top = 80
              Width = 873
              Height = 65
              DataField = 'NOTEPIOMBATURA'
              DataSource = DM.DSIncord
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
            object DBEdit95: TDBEdit
              Left = 504
              Top = 24
              Width = 69
              Height = 32
              CharCase = ecUpperCase
              DataField = 'PIOMBATURAGR'
              DataSource = DM.DSIncord
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              OnKeyPress = DBEdit95KeyPress
            end
            object DBComboBox1: TDBComboBox
              Left = 232
              Top = 24
              Width = 257
              Height = 32
              DataField = 'PIOMBPOSIZ'
              DataSource = DM.DSIncord
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ItemHeight = 24
              Items.Strings = (
                'ORE 10 E ORE 2'
                'ORE 9 E ORE 3'
                'ORE 8 E ORE 4'
                'ORE 12'
                'ORE 6')
              ParentFont = False
              TabOrder = 1
            end
            object DBEdit94: TDBEdit
              Left = 8
              Top = 24
              Width = 209
              Height = 32
              CharCase = ecUpperCase
              DataField = 'EANPIOMBO'
              DataSource = DM.DSIncord
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnKeyPress = DBEdit94KeyPress
            end
          end
          object TabSheet11: TTabSheet
            Caption = 'EXTRA E NASTRO'
            ImageIndex = 5
            object Label148: TLabel
              Left = 0
              Top = 0
              Width = 70
              Height = 13
              Caption = 'EAN NASTRO'
              FocusControl = DBEdit96
            end
            object Label149: TLabel
              Left = 232
              Top = 0
              Width = 105
              Height = 13
              Caption = 'PROTEZIONETESTA'
              FocusControl = DBEdit97
            end
            object Label150: TLabel
              Left = 0
              Top = 56
              Width = 78
              Height = 13
              Caption = 'LAVORI EXTRA'
              FocusControl = DBEdit96
            end
            object DBMemo3: TDBMemo
              Left = 0
              Top = 72
              Width = 881
              Height = 89
              DataField = 'LAVORIEXTRA'
              DataSource = DM.DSIncord
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
            object DBEdit96: TDBEdit
              Left = 0
              Top = 16
              Width = 225
              Height = 32
              CharCase = ecUpperCase
              DataField = 'EANNASTRO'
              DataSource = DM.DSIncord
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnKeyPress = DBEdit96KeyPress
            end
            object DBEdit97: TDBEdit
              Left = 232
              Top = 16
              Width = 393
              Height = 32
              CharCase = ecUpperCase
              DataField = 'PROTEZIONETESTA'
              DataSource = DM.DSIncord
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
          end
        end
        object DBCheckBox1: TDBCheckBox
          Left = 1160
          Top = 96
          Width = 97
          Height = 17
          Caption = 'URGENTE'
          DataField = 'URGENTE'
          DataSource = DM.DSIncord
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 18
          ValueChecked = '1'
          ValueUnchecked = '0'
          OnClick = DBCheckBox1Click
        end
        object DBEdit22: TDBEdit
          Left = 8
          Top = 104
          Width = 81
          Height = 28
          DataField = 'ART_NO'
          DataSource = DM.DSIncord
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 19
        end
        object DBEdit31: TDBEdit
          Left = 608
          Top = 104
          Width = 73
          Height = 28
          DataField = 'STAGIONE'
          DataSource = DM.DSArticolo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 20
        end
        object DBEdit38: TDBEdit
          Left = 304
          Top = 104
          Width = 297
          Height = 28
          DataField = 'DESCRIZIONE'
          DataSource = DM.DSArticolo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 21
        end
        object DBEdit66: TDBEdit
          Left = 96
          Top = 104
          Width = 202
          Height = 28
          DataField = 'BRAND'
          DataSource = DM.DSArticolo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 22
        end
        object DBEdit67: TDBEdit
          Left = 688
          Top = 104
          Width = 57
          Height = 28
          DataField = 'MISURA'
          DataSource = DM.DSArticolo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 23
        end
        object DBEdit25: TDBEdit
          Left = 1016
          Top = 24
          Width = 97
          Height = 21
          DataField = 'COSTO_INCORD'
          DataSource = DM.DSIncord
          TabOrder = 3
          OnEnter = DBEdit25Enter
        end
        object DBEdit68: TDBEdit
          Left = 1016
          Top = 64
          Width = 97
          Height = 21
          DataField = 'COSTOGRIP'
          DataSource = DM.DSIncord
          Enabled = False
          TabOrder = 4
          OnEnter = DBEdit68Enter
        end
        object DBEdit69: TDBEdit
          Left = 1016
          Top = 104
          Width = 97
          Height = 21
          DataField = 'COSTOPROTEZ'
          DataSource = DM.DSIncord
          Enabled = False
          TabOrder = 5
          OnEnter = DBEdit69Enter
        end
        object DBEdit70: TDBEdit
          Left = 1016
          Top = 144
          Width = 97
          Height = 21
          DataField = 'COSTOPIOMB'
          DataSource = DM.DSIncord
          Enabled = False
          TabOrder = 6
          OnEnter = DBEdit70Enter
        end
        object DBEdit71: TDBEdit
          Left = 1016
          Top = 184
          Width = 97
          Height = 21
          DataField = 'COSTOANTIBOUNCHE'
          DataSource = DM.DSIncord
          Enabled = False
          TabOrder = 7
          OnEnter = DBEdit71Enter
        end
        object DBEdit73: TDBEdit
          Left = 1016
          Top = 224
          Width = 97
          Height = 21
          DataField = 'COSTOMANICO'
          DataSource = DM.DSIncord
          Enabled = False
          TabOrder = 8
          OnEnter = DBEdit73Enter
        end
        object DBEdit74: TDBEdit
          Left = 1016
          Top = 264
          Width = 97
          Height = 21
          DataField = 'COSTOEXTRA'
          DataSource = DM.DSIncord
          Enabled = False
          TabOrder = 9
          OnEnter = DBEdit74Enter
        end
        object DBEdit75: TDBEdit
          Left = 1101
          Top = 392
          Width = 49
          Height = 28
          DataField = 'SCONTO'
          DataSource = DM.DSIncord
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
          OnEnter = DBEdit75Enter
        end
        object DBEdit76: TDBEdit
          Left = 1240
          Top = 392
          Width = 97
          Height = 28
          DataField = 'ACCONTO'
          DataSource = DM.DSIncord
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 13
          OnEnter = DBEdit76Enter
        end
        object DBEdit79: TDBEdit
          Left = 1240
          Top = 440
          Width = 97
          Height = 28
          DataField = 'SALDO'
          DataSource = DM.DSIncord
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 24
        end
        object DBRadioGroup3: TDBRadioGroup
          Left = 8
          Top = 432
          Width = 897
          Height = 41
          Caption = 'TIPO SALDO'
          Columns = 3
          DataField = 'TIPOPAGAMENTO'
          DataSource = DM.DSIncord
          Items.Strings = (
            'OMAGGIO'
            'PAGATO'
            'DA PAGARE')
          TabOrder = 25
          Values.Strings = (
            'OMAGGIO'
            'PAGATO'
            'DA PAGARE')
        end
        object DBEdit72: TDBEdit
          Left = 1016
          Top = 304
          Width = 97
          Height = 21
          DataField = 'COSTOOVERGRIP'
          DataSource = DM.DSIncord
          Enabled = False
          TabOrder = 10
          OnEnter = DBEdit72Enter
        end
        object DBEdit80: TDBEdit
          Left = 1016
          Top = 344
          Width = 97
          Height = 21
          DataField = 'COSTOSILICONE'
          DataSource = DM.DSIncord
          Enabled = False
          TabOrder = 11
          OnEnter = DBEdit80Enter
        end
        object DBEdit81: TDBEdit
          Left = 1016
          Top = 392
          Width = 73
          Height = 28
          DataField = 'SUBTOTALE'
          DataSource = DM.DSIncord
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 26
          OnEnter = DBEdit81Enter
        end
        object DBEdit82: TDBEdit
          Left = 1160
          Top = 392
          Width = 73
          Height = 28
          DataField = 'TOTALE'
          DataSource = DM.DSIncord
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 27
          OnEnter = DBEdit82Enter
          OnExit = DBEdit82Exit
        end
        object DBMemo4: TDBMemo
          Left = 1016
          Top = 440
          Width = 217
          Height = 33
          DataField = 'MOTIVOINCAZERO'
          DataSource = DM.DSIncord
          TabOrder = 28
          OnExit = DBMemo4Exit
        end
        object DBEdit83: TDBEdit
          Left = 1160
          Top = 328
          Width = 153
          Height = 28
          DataField = 'DATASALDO'
          DataSource = DM.DSIncord
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 29
        end
        object DBEdit84: TDBEdit
          Left = 1160
          Top = 280
          Width = 153
          Height = 28
          DataField = 'DATAACCONTO'
          DataSource = DM.DSIncord
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 30
        end
        object DBEdit85: TDBEdit
          Left = 1160
          Top = 232
          Width = 153
          Height = 28
          DataField = 'DATAULTIMOD'
          DataSource = DM.DSIncord
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 31
        end
        object DBMemo5: TDBMemo
          Left = 8
          Top = 352
          Width = 897
          Height = 81
          DataField = 'NOTE'
          DataSource = DM.DSIncord
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 32
        end
        object DBEdit50: TDBEdit
          Left = 304
          Top = 40
          Width = 217
          Height = 28
          Color = clYellow
          DataField = 'DATARICCONS'
          DataSource = DM.DSIncord
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 33
        end
      end
      object BitBtn2: TBitBtn
        Left = 16
        Top = 628
        Width = 89
        Height = 33
        Caption = 'SALVA'
        TabOrder = 2
        OnClick = BitBtn2Click
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
      object BitBtn14: TBitBtn
        Left = 112
        Top = 628
        Width = 89
        Height = 33
        Caption = 'MODIFICA'
        TabOrder = 3
        OnClick = BitBtn14Click
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
      object BitBtn25: TBitBtn
        Left = 208
        Top = 628
        Width = 89
        Height = 33
        Caption = 'ELIMINA'
        TabOrder = 4
        OnClick = BitBtn25Click
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
      object BitBtn26: TBitBtn
        Left = 304
        Top = 628
        Width = 89
        Height = 33
        Caption = 'ANNULLA'
        TabOrder = 5
        OnClick = BitBtn26Click
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
      object BitBtn27: TBitBtn
        Left = 776
        Top = 628
        Width = 113
        Height = 33
        Caption = 'PRONTA'
        TabOrder = 6
        OnClick = BitBtn27Click
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
      object BitBtn1: TBitBtn
        Left = 1249
        Top = 628
        Width = 96
        Height = 33
        Caption = 'PAGATO'
        TabOrder = 7
        OnClick = BitBtn1Click
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555500000
          55555555000BB3B30555555030BB3303305555030BB0B3B3330555033BBBB333
          330550B3B3BB3BB3B33050B3B33BBBBB333050B3B33BBBBB3B3050B3B333BB0B
          33B050B33333BBB3B3B050BB33333333BB05550B33B3333BB305550BB33330BB
          B0555550BB33B3BB0555555500B3333055555555550000055555}
      end
      object BitBtn31: TBitBtn
        Left = 608
        Top = 628
        Width = 113
        Height = 33
        Caption = 'ETICHETTA'
        TabOrder = 8
        OnClick = BitBtn31Click
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
      object CheckBox3: TCheckBox
        Left = 704
        Top = 648
        Width = 73
        Height = 17
        Caption = 'PREVIEW'
        TabOrder = 9
      end
      object BitBtn35: TBitBtn
        Left = 432
        Top = 628
        Width = 89
        Height = 33
        Caption = 'INCORDA'
        TabOrder = 10
        OnClick = BitBtn35Click
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555777555
          5555555555000757755555575500005007555570058880000075570870088078
          007555787887087777755550880FF0800007708080888F7088077088F0708F78
          88077000F0778080005555508F0008800755557878FF88777075570870080088
          0755557075888070755555575500075555555555557775555555}
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'TEST RACHETTE'
      ImageIndex = 2
      OnShow = TabSheet6Show
      object GroupBox6: TGroupBox
        Left = 8
        Top = 8
        Width = 1353
        Height = 201
        Caption = 'LISTA TEST RACCHETTE'
        TabOrder = 0
        object DBGrid7: TDBGrid
          Left = 8
          Top = 16
          Width = 1329
          Height = 177
          DataSource = DM.DSSchedule
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = DBGrid7DrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'SCHED_NO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COGNRAGSOC'
              Title.Caption = 'COGNOME'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'NOME'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'DATAINTRO'
              Width = 101
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATASTARTRENT'
              Title.Caption = 'DATA INIZIO'
              Width = 98
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATATAKEBACK'
              Title.Caption = 'DATA RICONS.'
              Width = 94
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATACLOSESCHD'
              Title.Caption = 'DATA CLOSED'
              Width = 92
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DAYUSE'
              Title.Caption = 'GG'
              Width = 39
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SUBTOTALE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DISCOUNT'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NETPRICE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FEEDAYLATE'
              Width = 77
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'STATO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'STATO_CONS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EANCODE'
              Width = 92
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EANCODE2'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PAGATO'
              Title.Caption = 'PAYED'
              Width = 41
              Visible = True
            end>
        end
      end
      object GroupBox11: TGroupBox
        Left = 8
        Top = 216
        Width = 1353
        Height = 409
        Caption = 'SCHEDA TEST'
        TabOrder = 1
        object Label18: TLabel
          Left = 8
          Top = 16
          Width = 42
          Height = 13
          Caption = 'TEST ID'
          FocusControl = DBEdit10
        end
        object Label19: TLabel
          Left = 184
          Top = 16
          Width = 52
          Height = 13
          Caption = 'EANCODE'
        end
        object Label21: TLabel
          Left = 8
          Top = 72
          Width = 94
          Height = 13
          Caption = 'DATA CREAZIONE'
          FocusControl = DBEdit21
        end
        object Label28: TLabel
          Left = 176
          Top = 72
          Width = 95
          Height = 13
          Caption = 'DATA INIZIO TEST'
          FocusControl = DBEdit26
        end
        object Label38: TLabel
          Left = 480
          Top = 72
          Width = 116
          Height = 13
          Caption = 'DATA RIENTRO PREV.'
          FocusControl = DBEdit28
        end
        object Label44: TLabel
          Left = 672
          Top = 72
          Width = 88
          Height = 13
          Caption = 'DATA CHIUSURA'
          FocusControl = DBEdit29
        end
        object Label45: TLabel
          Left = 368
          Top = 72
          Width = 42
          Height = 13
          Caption = 'GG USO'
        end
        object Label56: TLabel
          Left = 1096
          Top = 80
          Width = 67
          Height = 13
          Caption = 'SUB TOTALE'
          FocusControl = DBEdit41
        end
        object Label60: TLabel
          Left = 1096
          Top = 144
          Width = 45
          Height = 13
          Caption = 'SCONTO'
          FocusControl = DBEdit44
        end
        object Label61: TLabel
          Left = 1096
          Top = 272
          Width = 84
          Height = 13
          Caption = 'PREZZO NETTO'
          FocusControl = DBEdit49
        end
        object Label62: TLabel
          Left = 1096
          Top = 208
          Width = 94
          Height = 13
          Caption = 'PENALE RITARDO'
          FocusControl = DBEdit63
        end
        object Label63: TLabel
          Left = 8
          Top = 336
          Width = 30
          Height = 13
          Caption = 'NOTE'
          FocusControl = DBMemo1
        end
        object Label64: TLabel
          Left = 720
          Top = 16
          Width = 67
          Height = 13
          Caption = 'STATO TEST'
          FocusControl = DBEdit64
        end
        object Label66: TLabel
          Left = 936
          Top = 16
          Width = 143
          Height = 13
          Caption = 'RICONSEGNA EFFETTUATA'
          FocusControl = DBEdit65
        end
        object Label75: TLabel
          Left = 520
          Top = 16
          Width = 68
          Height = 13
          Caption = 'PAGAMENTO'
        end
        object Label76: TLabel
          Left = 328
          Top = 16
          Width = 58
          Height = 13
          Caption = 'EANCODE2'
        end
        object Label77: TLabel
          Left = 1152
          Top = 16
          Width = 49
          Height = 13
          Caption = 'RITARDO'
          Visible = False
        end
        object SpeedButton1: TSpeedButton
          Left = 280
          Top = 88
          Width = 33
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
        object SpeedButton3: TSpeedButton
          Left = 584
          Top = 88
          Width = 33
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
          OnClick = SpeedButton3Click
        end
        object Label88: TLabel
          Left = 88
          Top = 16
          Width = 30
          Height = 13
          Caption = 'ID CLI'
          FocusControl = DBEdit19
        end
        object DBText1: TDBText
          Left = 184
          Top = 32
          Width = 137
          Height = 41
          DataField = 'EANCODE'
          DataSource = DM.DSSchedule
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'IDAutomationHC39M'
          Font.Style = []
          ParentFont = False
        end
        object DBText2: TDBText
          Left = 328
          Top = 32
          Width = 137
          Height = 41
          DataField = 'EANCODE2'
          DataSource = DM.DSSchedule
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'IDAutomationHC39M'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit10: TDBEdit
          Left = 8
          Top = 32
          Width = 57
          Height = 28
          DataField = 'SCHED_NO'
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
        object DBEdit21: TDBEdit
          Left = 8
          Top = 88
          Width = 97
          Height = 28
          DataField = 'DATAINTRO'
          DataSource = DM.DSSchedule
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit26: TDBEdit
          Left = 176
          Top = 88
          Width = 97
          Height = 28
          DataField = 'DATASTARTRENT'
          DataSource = DM.DSSchedule
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit28: TDBEdit
          Left = 480
          Top = 88
          Width = 97
          Height = 28
          DataField = 'DATATAKEBACK'
          DataSource = DM.DSSchedule
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
          OnExit = DBEdit28Exit
        end
        object DBEdit29: TDBEdit
          Left = 672
          Top = 88
          Width = 97
          Height = 28
          DataField = 'DATACLOSESCHD'
          DataSource = DM.DSSchedule
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
        object DBEdit41: TDBEdit
          Left = 1096
          Top = 96
          Width = 105
          Height = 28
          DataField = 'SUBTOTALE'
          DataSource = DM.DSSchedule
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnEnter = DBEdit41Enter
          OnExit = DBEdit41Exit
        end
        object DBEdit44: TDBEdit
          Left = 1096
          Top = 160
          Width = 105
          Height = 28
          DataField = 'DISCOUNT'
          DataSource = DM.DSSchedule
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnEnter = DBEdit44Enter
          OnExit = DBEdit44Exit
        end
        object DBEdit49: TDBEdit
          Left = 1096
          Top = 288
          Width = 105
          Height = 28
          DataField = 'NETPRICE'
          DataSource = DM.DSSchedule
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          OnEnter = DBEdit49Enter
          OnExit = DBEdit49Exit
        end
        object DBEdit63: TDBEdit
          Left = 1096
          Top = 224
          Width = 105
          Height = 28
          DataField = 'FEEDAYLATE'
          DataSource = DM.DSSchedule
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object DBMemo1: TDBMemo
          Left = 8
          Top = 352
          Width = 1017
          Height = 49
          DataField = 'NOTE'
          DataSource = DM.DSSchedule
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
        end
        object DBEdit64: TDBEdit
          Left = 720
          Top = 32
          Width = 161
          Height = 28
          DataField = 'STATO'
          DataSource = DM.DSSchedule
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 10
        end
        object DBEdit65: TDBEdit
          Left = 936
          Top = 32
          Width = 161
          Height = 28
          DataField = 'STATO_CONS'
          DataSource = DM.DSSchedule
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 11
        end
        object Edit10: TEdit
          Left = 520
          Top = 32
          Width = 145
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 12
          Text = 'Edit10'
        end
        object GroupBox12: TGroupBox
          Left = 8
          Top = 120
          Width = 1017
          Height = 193
          Caption = 'CARICO TEST RACCHETTA'
          TabOrder = 13
          object Label82: TLabel
            Left = 8
            Top = 16
            Width = 113
            Height = 13
            Caption = 'EANCODE - RACH_NO'
          end
          object Label86: TLabel
            Left = 199
            Top = 16
            Width = 98
            Height = 13
            Caption = 'LISTA RACCHETTE'
          end
          object Label91: TLabel
            Left = 970
            Top = 64
            Width = 31
            Height = 13
            Caption = 'PEZZI'
          end
          object Label124: TLabel
            Left = 968
            Top = 108
            Width = 39
            Height = 13
            Caption = 'APERTI'
          end
          object Label125: TLabel
            Left = 968
            Top = 148
            Width = 36
            Height = 13
            Caption = 'CHIUSI'
          end
          object Edit12: TEdit
            Left = 8
            Top = 32
            Width = 185
            Height = 28
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnKeyPress = Edit12KeyPress
          end
          object ComboBox2: TComboBox
            Left = 200
            Top = 32
            Width = 553
            Height = 28
            Style = csDropDownList
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 0
            ParentFont = False
            TabOrder = 1
            OnEnter = ComboBox2Enter
            OnKeyPress = ComboBox2KeyPress
          end
          object Edit13: TEdit
            Left = 968
            Top = 81
            Width = 41
            Height = 24
            Color = clYellow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
            Text = '0'
          end
          object Edit17: TEdit
            Left = 968
            Top = 161
            Width = 41
            Height = 24
            Color = clLime
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 3
            Text = '0'
          end
          object Edit18: TEdit
            Left = 968
            Top = 121
            Width = 41
            Height = 24
            Color = clRed
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 4
            Text = '0'
          end
        end
        object Edit11: TEdit
          Left = 1152
          Top = 32
          Width = 49
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 14
          Text = 'Edit11'
          Visible = False
        end
        object DBEdit19: TDBEdit
          Left = 88
          Top = 32
          Width = 57
          Height = 28
          DataField = 'CLI_NO'
          DataSource = DM.DSSchedule
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 15
        end
        object DBEdit30: TDBEdit
          Left = 368
          Top = 88
          Width = 49
          Height = 28
          DataField = 'DAYUSE'
          DataSource = DM.DSSchedule
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 16
          OnEnter = DBEdit30Enter
          OnExit = DBEdit30Exit
        end
        object BitBtn9: TBitBtn
          Left = 16
          Top = 304
          Width = 153
          Height = 25
          Caption = 'ELIMIN.  ARTICOLO'
          TabOrder = 17
          OnClick = BitBtn9Click
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
        object BitBtn10: TBitBtn
          Left = 176
          Top = 304
          Width = 153
          Height = 25
          Caption = 'CANCELLA TUTTO'
          TabOrder = 18
          OnClick = BitBtn10Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            55555FFFFFFF5F55FFF5777777757559995777777775755777F7555555555550
            305555555555FF57F7F555555550055BB0555555555775F777F55555550FB000
            005555555575577777F5555550FB0BF0F05555555755755757F555550FBFBF0F
            B05555557F55557557F555550BFBF0FB005555557F55575577F555500FBFBFB0
            B05555577F555557F7F5550E0BFBFB00B055557575F55577F7F550EEE0BFB0B0
            B05557FF575F5757F7F5000EEE0BFBF0B055777FF575FFF7F7F50000EEE00000
            B0557777FF577777F7F500000E055550805577777F7555575755500000555555
            05555777775555557F5555000555555505555577755555557555}
          NumGlyphs = 2
        end
        object Button5: TButton
          Left = 1032
          Top = 128
          Width = 41
          Height = 25
          Caption = 'STAG.'
          TabOrder = 19
          OnClick = Button5Click
        end
        object Button9: TButton
          Left = 1032
          Top = 176
          Width = 41
          Height = 25
          Caption = 'MENS.'
          TabOrder = 20
          OnClick = Button9Click
        end
        object Button10: TButton
          Left = 1032
          Top = 232
          Width = 41
          Height = 25
          Caption = 'SETT.'
          TabOrder = 21
          OnClick = Button10Click
        end
        object Button11: TButton
          Left = 1032
          Top = 288
          Width = 41
          Height = 25
          Caption = 'W.END'
          TabOrder = 22
          OnClick = Button11Click
        end
        object BitBtn23: TBitBtn
          Left = 1096
          Top = 320
          Width = 105
          Height = 33
          Caption = 'PAGATO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 23
          OnClick = BitBtn23Click
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            04000000000080000000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555500000
            55555555000BB3B30555555030BB3303305555030BB0B3B3330555033BBBB333
            330550B3B3BB3BB3B33050B3B33BBBBB333050B3B33BBBBB3B3050B3B333BB0B
            33B050B33333BBB3B3B050BB33333333BB05550B33B3333BB305550BB33330BB
            B0555550BB33B3BB0555555500B3333055555555550000055555}
        end
        object BitBtn39: TBitBtn
          Left = 1208
          Top = 288
          Width = 33
          Height = 25
          TabOrder = 24
          OnClick = BitBtn39Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
            73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
            0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
            0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
            0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
            0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
            0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
            0333337F777777737F333308888888880333337F333333337F33330888888888
            03333373FFFFFFFF733333700000000073333337777777773333}
          NumGlyphs = 2
        end
      end
      object BitBtn18: TBitBtn
        Left = 256
        Top = 620
        Width = 89
        Height = 33
        Caption = 'NUOVO'
        TabOrder = 2
        OnClick = BitBtn18Click
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
      object BitBtn19: TBitBtn
        Left = 448
        Top = 620
        Width = 89
        Height = 33
        Caption = 'MODIFICA'
        TabOrder = 3
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
        Left = 352
        Top = 620
        Width = 89
        Height = 33
        Caption = 'SALVA'
        TabOrder = 4
        OnClick = BitBtn20Click
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
      object BitBtn21: TBitBtn
        Left = 640
        Top = 620
        Width = 89
        Height = 33
        Caption = 'ANNULLA'
        TabOrder = 5
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
      object BitBtn22: TBitBtn
        Left = 544
        Top = 620
        Width = 89
        Height = 33
        Caption = 'ELIMINA'
        TabOrder = 6
        OnClick = BitBtn22Click
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
      object BtnCarica: TBitBtn
        Left = 16
        Top = 620
        Width = 89
        Height = 33
        Caption = 'CARICA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnClick = BtnCaricaClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333FFFFF3333333333000003333333333F777773FF333333008877700
          33333337733FFF773F33330887000777033333733F777FFF73F330880FAFAF07
          703337F37733377FF7F33080F00000F07033373733777337F73F087F00A2200F
          77037F3737333737FF7F080A0A2A220A07037F737F3333737F7F0F0F0AAAA20F
          07037F737F3333737F7F0F0A0FAA2A0A08037F737FF33373737F0F7F00FFA00F
          780373F737FFF737F3733080F00000F0803337F73377733737F330F80FAFAF08
          8033373F773337733733330F8700078803333373FF77733F733333300FFF8800
          3333333773FFFF77333333333000003333333333377777333333}
        NumGlyphs = 2
      end
      object BtnScarica: TBitBtn
        Left = 112
        Top = 620
        Width = 89
        Height = 33
        Caption = 'SCARICA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        OnClick = BtnScaricaClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333FFFFF3333333333000003333333333F777773FF333333008877700
          33333337733FFF773F33330887000777033333733F777FFF73F330880F9F9F07
          703337F37733377FF7F33080F00000F07033373733777337F73F087F0091100F
          77037F3737333737FF7F08090919110907037F737F3333737F7F0F0F0999910F
          07037F737F3333737F7F0F090F99190908037F737FF33373737F0F7F00FF900F
          780373F737FFF737F3733080F00000F0803337F73377733737F330F80F9F9F08
          8033373F773337733733330F8700078803333373FF77733F733333300FFF8800
          3333333773FFFF77333333333000003333333333377777333333}
        NumGlyphs = 2
      end
      object BitBtn24: TBitBtn
        Left = 1040
        Top = 620
        Width = 153
        Height = 33
        Caption = 'STAMPA RICEVUTA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
        OnClick = BitBtn24Click
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
      object PREVIEW2: TCheckBox
        Left = 1184
        Top = 644
        Width = 73
        Height = 17
        Caption = 'PREVIEW'
        TabOrder = 9
      end
      object DBGrid8: TDBGrid
        Left = 24
        Top = 400
        Width = 945
        Height = 113
        DataSource = DM.DSRented
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 11
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid8DrawColumnCell
        Columns = <
          item
            Alignment = taLeftJustify
            Expanded = False
            FieldName = 'STATO'
            Width = 90
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ART_NO'
            Title.Caption = 'ARTNO'
            Width = 68
            Visible = True
          end
          item
            Alignment = taLeftJustify
            Expanded = False
            FieldName = 'TIPO'
            Width = 136
            Visible = True
          end
          item
            Alignment = taLeftJustify
            Expanded = False
            FieldName = 'BRAND'
            Width = 176
            Visible = True
          end
          item
            Alignment = taLeftJustify
            Expanded = False
            FieldName = 'DESCRIZIONE'
            Title.Caption = 'MODELLO'
            Width = 213
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'MISURA'
            Title.Caption = 'MANICO'
            Width = 47
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'STAG.'
            Width = 93
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COLORE'
            Title.Caption = 'PIATTO'
            Width = 70
            Visible = True
          end>
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'CONTO ACQUISTI'
      ImageIndex = 3
      OnShow = TabSheet7Show
      object GroupBox8: TGroupBox
        Left = 8
        Top = 8
        Width = 1289
        Height = 297
        TabOrder = 0
        object Label89: TLabel
          Left = 8
          Top = 8
          Width = 22
          Height = 13
          Caption = 'EAN'
        end
        object Label95: TLabel
          Left = 248
          Top = 8
          Width = 25
          Height = 13
          Caption = 'TIPO'
        end
        object Label96: TLabel
          Left = 472
          Top = 8
          Width = 73
          Height = 13
          Caption = 'DESCRIZIONE'
        end
        object Label97: TLabel
          Left = 184
          Top = 8
          Width = 44
          Height = 13
          Caption = 'ART_NO'
        end
        object Label123: TLabel
          Left = 784
          Top = 8
          Width = 38
          Height = 13
          Caption = 'BRAND'
        end
        object DBGrid4: TDBGrid
          Left = 8
          Top = 56
          Width = 1273
          Height = 233
          Color = clHighlightText
          DataSource = DM.DSAcq
          Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 6
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = DBGrid4DrawColumnCell
          OnDblClick = DBGrid4DblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'ACQ_NO'
              Width = 48
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TIPOPRODOTTO'
              Title.Caption = 'TIPO PRODOTTO'
              Width = 171
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BRAND'
              Width = 137
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRIZIONE'
              Width = 238
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TAGLIA'
              Width = 46
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTA'
              Width = 31
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PREZZOPUB'
              Title.Caption = #8364'. LISTINO'
              Width = 58
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PREZZONET'
              Title.Caption = #8364'. NETTO'
              Width = 53
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BARCODEART'
              Title.Caption = 'EANCODE '
              Width = 95
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATAINTRO'
              Title.Caption = 'DATA INTRO'
              Width = 72
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATASALDO'
              Title.Caption = 'DATA SALDO'
              Width = 74
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATARESO'
              Title.Caption = 'DATA RESO'
              Width = 71
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATAULTIMAMOD'
              Title.Caption = 'DATA AGGIORNAMENTO'
              Width = 131
              Visible = True
            end>
        end
        object Edit28: TEdit
          Left = 8
          Top = 24
          Width = 169
          Height = 28
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnKeyPress = Edit28KeyPress
        end
        object Edit29: TEdit
          Left = 472
          Top = 24
          Width = 305
          Height = 28
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnKeyPress = Edit29KeyPress
        end
        object ComboBox4: TComboBox
          Left = 248
          Top = 24
          Width = 217
          Height = 28
          AutoDropDown = True
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 0
          ParentFont = False
          TabOrder = 2
          OnEnter = ComboBox4Enter
          OnSelect = ComboBox4Select
        end
        object Button8: TButton
          Left = 1160
          Top = 24
          Width = 121
          Height = 25
          Caption = 'RESET'
          TabOrder = 5
          OnClick = Button8Click
        end
        object Edit30: TEdit
          Left = 184
          Top = 24
          Width = 57
          Height = 28
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnKeyPress = Edit30KeyPress
        end
        object ComboBox5: TComboBox
          Left = 784
          Top = 24
          Width = 217
          Height = 28
          AutoDropDown = True
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 0
          ParentFont = False
          TabOrder = 4
          OnEnter = ComboBox5Enter
          OnSelect = ComboBox5Select
        end
      end
      object GroupBox9: TGroupBox
        Left = 8
        Top = 312
        Width = 913
        Height = 265
        TabOrder = 1
        object Label98: TLabel
          Left = 8
          Top = 16
          Width = 44
          Height = 13
          Caption = 'ACQ_NO'
          FocusControl = DBEdit27
        end
        object Label99: TLabel
          Left = 8
          Top = 72
          Width = 89
          Height = 13
          Caption = 'TIPO PRODOTTO'
        end
        object Label100: TLabel
          Left = 264
          Top = 72
          Width = 38
          Height = 13
          Caption = 'BRAND'
        end
        object Label101: TLabel
          Left = 8
          Top = 136
          Width = 73
          Height = 13
          Caption = 'DESCRIZIONE'
          FocusControl = DBEdit52
        end
        object Label102: TLabel
          Left = 80
          Top = 16
          Width = 52
          Height = 13
          Caption = 'BARCODE'
          FocusControl = DBEdit53
        end
        object Label103: TLabel
          Left = 784
          Top = 16
          Width = 63
          Height = 13
          Caption = 'DATAINTRO'
          FocusControl = DBEdit54
        end
        object Label104: TLabel
          Left = 784
          Top = 80
          Width = 65
          Height = 13
          Caption = 'DATASALDO'
          FocusControl = DBEdit55
        end
        object Label105: TLabel
          Left = 8
          Top = 192
          Width = 89
          Height = 13
          Caption = 'PREZZO LISTINO'
          FocusControl = DBEdit57
        end
        object Label106: TLabel
          Left = 272
          Top = 192
          Width = 106
          Height = 13
          Caption = 'PREZZO SCONTATO'
          FocusControl = DBEdit58
        end
        object Label107: TLabel
          Left = 536
          Top = 72
          Width = 38
          Height = 13
          Caption = 'TAGLIA'
          FocusControl = DBEdit59
        end
        object Label108: TLabel
          Left = 784
          Top = 144
          Width = 59
          Height = 13
          Caption = 'DATARESO'
          FocusControl = DBEdit60
        end
        object Label109: TLabel
          Left = 608
          Top = 136
          Width = 22
          Height = 13
          Caption = 'QTA'
          FocusControl = DBEdit61
        end
        object Label110: TLabel
          Left = 168
          Top = 192
          Width = 45
          Height = 13
          Caption = 'SCONTO'
          FocusControl = DBEdit62
        end
        object Label6: TLabel
          Left = 784
          Top = 200
          Width = 122
          Height = 13
          Caption = 'DATA ULTIM. MODIFICA'
          FocusControl = DBEdit4
        end
        object DBEdit27: TDBEdit
          Left = 8
          Top = 32
          Width = 57
          Height = 28
          DataField = 'ACQ_NO'
          DataSource = DM.DSAcq
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
        end
        object DBEdit52: TDBEdit
          Left = 8
          Top = 152
          Width = 593
          Height = 28
          CharCase = ecUpperCase
          DataField = 'DESCRIZIONE'
          DataSource = DM.DSAcq
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit53: TDBEdit
          Left = 80
          Top = 32
          Width = 153
          Height = 28
          DataField = 'BARCODEART'
          DataSource = DM.DSAcq
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit54: TDBEdit
          Left = 784
          Top = 32
          Width = 121
          Height = 28
          DataField = 'DATAINTRO'
          DataSource = DM.DSAcq
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
        end
        object DBEdit55: TDBEdit
          Left = 784
          Top = 96
          Width = 121
          Height = 28
          DataField = 'DATASALDO'
          DataSource = DM.DSAcq
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
        end
        object DBEdit57: TDBEdit
          Left = 8
          Top = 208
          Width = 134
          Height = 28
          CharCase = ecUpperCase
          DataField = 'PREZZOPUB'
          DataSource = DM.DSAcq
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnEnter = DBEdit57Enter
          OnKeyPress = DBEdit57KeyPress
        end
        object DBEdit58: TDBEdit
          Left = 272
          Top = 208
          Width = 134
          Height = 28
          CharCase = ecUpperCase
          DataField = 'PREZZONET'
          DataSource = DM.DSAcq
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnEnter = DBEdit58Enter
          OnExit = DBEdit58Exit
          OnKeyPress = DBEdit58KeyPress
        end
        object DBEdit59: TDBEdit
          Left = 536
          Top = 88
          Width = 134
          Height = 28
          CharCase = ecUpperCase
          DataField = 'TAGLIA'
          DataSource = DM.DSAcq
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit60: TDBEdit
          Left = 784
          Top = 160
          Width = 121
          Height = 28
          DataField = 'DATARESO'
          DataSource = DM.DSAcq
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 10
        end
        object DBEdit61: TDBEdit
          Left = 608
          Top = 152
          Width = 57
          Height = 28
          CharCase = ecUpperCase
          DataField = 'QTA'
          DataSource = DM.DSAcq
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnKeyPress = DBEdit61KeyPress
        end
        object DBEdit62: TDBEdit
          Left = 168
          Top = 208
          Width = 57
          Height = 28
          DataField = 'SCONTO'
          DataSource = DM.DSAcq
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnEnter = DBEdit62Enter
          OnKeyPress = DBEdit62KeyPress
        end
        object DBEdit4: TDBEdit
          Left = 784
          Top = 216
          Width = 121
          Height = 28
          DataField = 'DATAULTIMAMOD'
          DataSource = DM.DSAcq
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 11
        end
        object DBLookupComboBox4: TDBLookupComboBox
          Left = 8
          Top = 88
          Width = 249
          Height = 28
          DataField = 'TIPOPRODOTTO'
          DataSource = DM.DSAcq
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'TYPE_ART'
          ListField = 'TYPE_ART'
          ListSource = DM.DSTipo
          ParentFont = False
          TabOrder = 12
          OnKeyPress = DBLookupComboBox4KeyPress
        end
        object DBLookupComboBox5: TDBLookupComboBox
          Left = 264
          Top = 87
          Width = 257
          Height = 28
          DataField = 'BRAND'
          DataSource = DM.DSAcq
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'BRANDS'
          ListField = 'BRANDS'
          ListSource = DM.DSBrand
          ParentFont = False
          TabOrder = 13
          OnKeyPress = DBLookupComboBox3KeyPress
        end
      end
      object GroupBox10: TGroupBox
        Left = 928
        Top = 312
        Width = 369
        Height = 265
        TabOrder = 2
        object Label111: TLabel
          Left = 16
          Top = 56
          Width = 50
          Height = 13
          Caption = 'QTA ACQ.'
        end
        object Label112: TLabel
          Left = 200
          Top = 120
          Width = 62
          Height = 13
          Caption = 'TOT RESI '#8364'.'
        end
        object Label113: TLabel
          Left = 5
          Top = 88
          Width = 64
          Height = 13
          Caption = 'QTA PAGATI'
        end
        object Label114: TLabel
          Left = 6
          Top = 184
          Width = 64
          Height = 13
          Caption = 'QTA APERTI'
        end
        object Label115: TLabel
          Left = 10
          Top = 152
          Width = 56
          Height = 13
          Caption = 'QTA PEZZI'
        end
        object Label116: TLabel
          Left = 128
          Top = 184
          Width = 81
          Height = 13
          Caption = 'TOT APERTO '#8364'.'
        end
        object Label117: TLabel
          Left = 176
          Top = 56
          Width = 87
          Height = 13
          Caption = 'TOT ACQUISTI '#8364'.'
        end
        object Label118: TLabel
          Left = 184
          Top = 88
          Width = 76
          Height = 13
          Caption = 'TOT PAGATI '#8364'.'
        end
        object Label119: TLabel
          Left = 8
          Top = 16
          Width = 21
          Height = 13
          Caption = 'DAL'
        end
        object Label120: TLabel
          Left = 144
          Top = 16
          Width = 13
          Height = 13
          Caption = 'AL'
        end
        object SpeedButton9: TSpeedButton
          Left = 104
          Top = 16
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
          OnClick = SpeedButton9Click
        end
        object SpeedButton10: TSpeedButton
          Left = 232
          Top = 16
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
          OnClick = SpeedButton10Click
        end
        object SpeedButton11: TSpeedButton
          Left = 264
          Top = 16
          Width = 97
          Height = 25
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300000000
            0000333377777777777733330FFFFFFFFFF033337F3FFF3F3FF733330F000F0F
            00F033337F777373773733330FFFFFFFFFF033337F3FF3FF3FF733330F00F00F
            00F033337F773773773733330FFFFFFFFFF033337FF3333FF3F7333300FFFF00
            F0F03333773FF377F7373330FB00F0F0FFF0333733773737F3F7330FB0BF0FB0
            F0F0337337337337373730FBFBF0FB0FFFF037F333373373333730BFBF0FB0FF
            FFF037F3337337333FF700FBFBFB0FFF000077F333337FF37777E0BFBFB000FF
            0FF077FF3337773F7F37EE0BFB0BFB0F0F03777FF3733F737F73EEE0BFBF00FF
            00337777FFFF77FF7733EEEE0000000003337777777777777333}
          NumGlyphs = 2
          OnClick = SpeedButton11Click
        end
        object Label121: TLabel
          Left = 163
          Top = 152
          Width = 98
          Height = 13
          Caption = 'DATA ULTIMO ACQ'
        end
        object Label122: TLabel
          Left = 14
          Top = 120
          Width = 50
          Height = 13
          Caption = 'QTA RESI'
        end
        object Edit31: TEdit
          Left = 72
          Top = 56
          Width = 49
          Height = 28
          Color = clHighlight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object Edit32: TEdit
          Left = 264
          Top = 152
          Width = 97
          Height = 28
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object Edit33: TEdit
          Left = 72
          Top = 184
          Width = 49
          Height = 28
          Color = clRed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object Edit34: TEdit
          Left = 264
          Top = 88
          Width = 97
          Height = 28
          Color = clLime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
        object Edit35: TEdit
          Left = 72
          Top = 88
          Width = 49
          Height = 28
          Color = clLime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
        object Edit36: TEdit
          Left = 216
          Top = 184
          Width = 145
          Height = 37
          Color = clRed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
        end
        object Edit37: TEdit
          Left = 264
          Top = 56
          Width = 97
          Height = 28
          Color = clHighlight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
        end
        object Edit38: TEdit
          Left = 264
          Top = 120
          Width = 97
          Height = 28
          Color = clFuchsia
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
        end
        object Edit39: TEdit
          Left = 32
          Top = 16
          Width = 73
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
        end
        object Edit40: TEdit
          Left = 160
          Top = 16
          Width = 73
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
        end
        object Edit41: TEdit
          Left = 72
          Top = 152
          Width = 49
          Height = 28
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 10
        end
        object Edit42: TEdit
          Left = 72
          Top = 120
          Width = 49
          Height = 28
          Color = clFuchsia
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 11
        end
      end
      object BTNNUOVO4: TBitBtn
        Left = 16
        Top = 572
        Width = 89
        Height = 33
        Caption = 'NUOVO'
        TabOrder = 3
        OnClick = BTNNUOVO4Click
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
      object BTNMODIFICA4: TBitBtn
        Left = 112
        Top = 572
        Width = 89
        Height = 33
        Caption = 'MODIFICA'
        TabOrder = 4
        OnClick = BTNMODIFICA4Click
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
      object BTNSALVA4: TBitBtn
        Left = 208
        Top = 572
        Width = 89
        Height = 33
        Caption = 'SALVA'
        TabOrder = 5
        OnClick = BTNSALVA4Click
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
      object BTNANNULLA4: TBitBtn
        Left = 304
        Top = 572
        Width = 89
        Height = 33
        Caption = 'ANNULLA'
        TabOrder = 6
        OnClick = BTNANNULLA4Click
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
      object BTNELIMINA4: TBitBtn
        Left = 400
        Top = 572
        Width = 89
        Height = 33
        Caption = 'ELIMINA'
        TabOrder = 7
        OnClick = BTNELIMINA4Click
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
      object BitBtn11: TBitBtn
        Left = 544
        Top = 572
        Width = 97
        Height = 33
        Caption = 'RICEVUTA'
        TabOrder = 8
        OnClick = BitBtn11Click
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
      object CheckBox2: TCheckBox
        Left = 632
        Top = 597
        Width = 73
        Height = 17
        Caption = 'PREVIEW'
        TabOrder = 9
      end
      object BitBtn12: TBitBtn
        Left = 705
        Top = 572
        Width = 96
        Height = 33
        Caption = 'RESO'
        TabOrder = 10
        OnClick = BitBtn12Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333FF33333333333330003333333333333777333333333333
          300033FFFFFF3333377739999993333333333777777F3333333F399999933333
          3300377777733333337733333333333333003333333333333377333333333333
          3333333333333333333F333333333333330033333F33333333773333C3333333
          330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
          993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
          333333377F33333333FF3333C333333330003333733333333777333333333333
          3000333333333333377733333333333333333333333333333333}
        NumGlyphs = 2
      end
      object BitBtn13: TBitBtn
        Left = 817
        Top = 572
        Width = 96
        Height = 33
        Caption = 'PAGATO'
        TabOrder = 11
        OnClick = BitBtn13Click
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555500000
          55555555000BB3B30555555030BB3303305555030BB0B3B3330555033BBBB333
          330550B3B3BB3BB3B33050B3B33BBBBB333050B3B33BBBBB3B3050B3B333BB0B
          33B050B33333BBB3B3B050BB33333333BB05550B33B3333BB305550BB33330BB
          B0555550BB33B3BB0555555500B3333055555555550000055555}
      end
      object BitBtn15: TBitBtn
        Left = 944
        Top = 572
        Width = 105
        Height = 33
        Caption = 'SALDA CONTO'
        TabOrder = 12
        OnClick = BitBtn15Click
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          5555000050000005555544F00BFBFBF0555544F0BFBF0000055544F0FBFBFBFB
          F05544F0BFBF0000000544F0F000FBFBF00544F0B0B000000F000000F0F000FB
          FB0F555500BFBFBFB0F455555500FBFB0F44555555550000F44455555555550F
          4444555555555550044455555555555550045555555555555550}
      end
      object BitBtn16: TBitBtn
        Left = 1056
        Top = 572
        Width = 113
        Height = 33
        Caption = 'REPORT APERTI'
        TabOrder = 13
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
      object BitBtn17: TBitBtn
        Left = 1176
        Top = 572
        Width = 113
        Height = 33
        Caption = 'REPORT TOTALE'
        TabOrder = 14
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
    end
    object TabSheet5: TTabSheet
      Caption = 'MATASSE'
      ImageIndex = 4
      OnShow = TabSheet5Show
      object GroupBox1: TGroupBox
        Left = 8
        Top = 0
        Width = 1265
        Height = 273
        TabOrder = 0
        object Label160: TLabel
          Left = 303
          Top = 8
          Width = 66
          Height = 13
          Caption = 'N'#176' MATASSE'
          FocusControl = DBEdit15
        end
        object Label159: TLabel
          Left = 7
          Top = 8
          Width = 47
          Height = 13
          Caption = 'RICERCA'
          FocusControl = DBEdit15
        end
        object DBGrid3: TDBGrid
          Left = 8
          Top = 56
          Width = 1241
          Height = 201
          DataSource = DM.DSAcq
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = DBGrid3DrawColumnCell
          OnDblClick = DBGrid3DblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'ACQ_NO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATAINTRO'
              Title.Caption = 'DATA INTRO'
              Width = 76
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
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COLORE'
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
              FieldName = 'SEZIONE'
              Title.Caption = #8364'. X INC.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PREZZOPUB'
              Title.Caption = #8364'. LISTINO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SCONTO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PREZZONET'
              Title.Caption = #8364'. NETTO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATAFINE'
              Title.Caption = 'DATA FINE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTA'
              Visible = True
            end>
        end
        object Edit16: TEdit
          Left = 304
          Top = 24
          Width = 65
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
        object Edit9: TEdit
          Left = 8
          Top = 24
          Width = 281
          Height = 28
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnKeyPress = Edit9KeyPress
        end
      end
      object GroupBox2: TGroupBox
        Left = 8
        Top = 272
        Width = 1265
        Height = 353
        TabOrder = 1
        object Label7: TLabel
          Left = 16
          Top = 24
          Width = 65
          Height = 13
          Caption = 'ID MATASSA'
          FocusControl = DBEdit5
        end
        object Label8: TLabel
          Left = 104
          Top = 24
          Width = 59
          Height = 13
          Caption = 'ID CLIENTE'
          FocusControl = DBEdit6
        end
        object Label9: TLabel
          Left = 192
          Top = 24
          Width = 66
          Height = 13
          Caption = 'DATA INTRO'
          FocusControl = DBEdit7
        end
        object Label10: TLabel
          Left = 328
          Top = 24
          Width = 110
          Height = 13
          Caption = 'DATA FINE MATASSA'
          FocusControl = DBEdit8
        end
        object Label11: TLabel
          Left = 16
          Top = 80
          Width = 73
          Height = 13
          Caption = 'DESCRIZIONE'
          FocusControl = DBEdit9
        end
        object Label12: TLabel
          Left = 344
          Top = 80
          Width = 38
          Height = 13
          Caption = 'BRAND'
        end
        object Label13: TLabel
          Left = 616
          Top = 80
          Width = 44
          Height = 13
          Caption = 'COLORE'
          FocusControl = DBEdit11
        end
        object Label14: TLabel
          Left = 16
          Top = 136
          Width = 46
          Height = 13
          Caption = 'CALIBRO'
          FocusControl = DBEdit12
        end
        object Label17: TLabel
          Left = 344
          Top = 79
          Width = 38
          Height = 13
          Caption = 'BRAND'
        end
        object Label151: TLabel
          Left = 16
          Top = 192
          Width = 89
          Height = 13
          Caption = 'PREZZO LISTINO'
          FocusControl = DBEdit98
        end
        object Label152: TLabel
          Left = 176
          Top = 192
          Width = 45
          Height = 13
          Caption = 'SCONTO'
          FocusControl = DBEdit99
        end
        object Label153: TLabel
          Left = 280
          Top = 192
          Width = 106
          Height = 13
          Caption = 'PREZZO SCONTATO'
          FocusControl = DBEdit100
        end
        object Label16: TLabel
          Left = 464
          Top = 24
          Width = 52
          Height = 13
          Caption = 'EANCODE'
          FocusControl = DBEdit15
        end
        object Label15: TLabel
          Left = 744
          Top = 24
          Width = 45
          Height = 13
          Caption = 'INCORD.'
          FocusControl = DBEdit15
        end
        object Label158: TLabel
          Left = 224
          Top = 136
          Width = 71
          Height = 13
          Caption = #8364'. INCORDAT.'
          FocusControl = DBEdit13
        end
        object Label80: TLabel
          Left = 832
          Top = 24
          Width = 54
          Height = 13
          Caption = 'GIACENZA'
          FocusControl = DBEdit101
        end
        object DBEdit5: TDBEdit
          Left = 16
          Top = 40
          Width = 65
          Height = 28
          DataField = 'ACQ_NO'
          DataSource = DM.DSAcq
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 10
        end
        object DBEdit6: TDBEdit
          Left = 104
          Top = 40
          Width = 65
          Height = 28
          DataField = 'CLI_NO'
          DataSource = DM.DSAcq
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 11
        end
        object DBEdit7: TDBEdit
          Left = 192
          Top = 40
          Width = 121
          Height = 28
          DataField = 'DATAINTRO'
          DataSource = DM.DSAcq
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 12
        end
        object DBEdit8: TDBEdit
          Left = 328
          Top = 40
          Width = 121
          Height = 28
          DataField = 'DATAFINE'
          DataSource = DM.DSAcq
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 13
        end
        object DBEdit9: TDBEdit
          Left = 16
          Top = 96
          Width = 321
          Height = 28
          CharCase = ecUpperCase
          DataField = 'DESCRIZIONE'
          DataSource = DM.DSAcq
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit11: TDBEdit
          Left = 616
          Top = 96
          Width = 264
          Height = 28
          CharCase = ecUpperCase
          DataField = 'COLOREMATASSA'
          DataSource = DM.DSAcq
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object DBEdit12: TDBEdit
          Left = 16
          Top = 152
          Width = 193
          Height = 28
          CharCase = ecUpperCase
          DataField = 'TAGLIA'
          DataSource = DM.DSAcq
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object DBRadioGroup1: TDBRadioGroup
          Left = 16
          Top = 256
          Width = 1065
          Height = 41
          Caption = 'TIPO DI PAGAMENTO'
          Columns = 6
          DataField = 'TIPOPAGAMMATASSA'
          DataSource = DM.DSAcq
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Items.Strings = (
            'CONTRATTO'
            'DEL CLIENTE'
            'OMAGGIO'
            'DA PAGARE'
            'PAGATO'
            'DEL NEGOZIO')
          ParentFont = False
          TabOrder = 9
          Values.Strings = (
            'CONTRATTO'
            'DEL CLIENTE'
            'OMAGGIO'
            'DA PAGARE'
            'PAGATO'
            'DEL NEGOZIO')
          OnExit = DBRadioGroup1Exit
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 344
          Top = 95
          Width = 257
          Height = 28
          DataField = 'BRAND'
          DataSource = DM.DSAcq
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'BRANDS'
          ListField = 'BRANDS'
          ListSource = DM.DSBrand
          ParentFont = False
          TabOrder = 2
          OnKeyPress = DBLookupComboBox3KeyPress
        end
        object DBEdit98: TDBEdit
          Left = 16
          Top = 208
          Width = 134
          Height = 28
          CharCase = ecUpperCase
          DataField = 'PREZZOPUB'
          DataSource = DM.DSAcq
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnEnter = DBEdit98Enter
          OnKeyPress = DBEdit98KeyPress
        end
        object DBEdit99: TDBEdit
          Left = 176
          Top = 208
          Width = 57
          Height = 28
          DataField = 'SCONTO'
          DataSource = DM.DSAcq
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          OnEnter = DBEdit62Enter
          OnKeyPress = DBEdit62KeyPress
        end
        object DBEdit100: TDBEdit
          Left = 280
          Top = 208
          Width = 134
          Height = 28
          CharCase = ecUpperCase
          DataField = 'PREZZONET'
          DataSource = DM.DSAcq
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          OnEnter = DBEdit58Enter
          OnExit = DBEdit58Exit
          OnKeyPress = DBEdit58KeyPress
        end
        object DBEdit15: TDBEdit
          Left = 464
          Top = 40
          Width = 264
          Height = 28
          DataField = 'BARCODEART'
          DataSource = DM.DSAcq
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnKeyPress = DBEdit15KeyPress
        end
        object Edit8: TEdit
          Left = 744
          Top = 40
          Width = 57
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 14
        end
        object DBEdit13: TDBEdit
          Left = 224
          Top = 152
          Width = 89
          Height = 28
          CharCase = ecUpperCase
          DataField = 'SEZIONE'
          DataSource = DM.DSAcq
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnEnter = DBEdit13Enter
          OnKeyPress = DBEdit13KeyPress
        end
        object DBCheckBox4: TDBCheckBox
          Left = 1176
          Top = 16
          Width = 81
          Height = 17
          Caption = 'IN USO'
          DataField = 'INUSO'
          DataSource = DM.DSAcq
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 15
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBEdit101: TDBEdit
          Left = 832
          Top = 40
          Width = 57
          Height = 28
          CharCase = ecUpperCase
          DataField = 'QTA'
          DataSource = DM.DSAcq
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 16
          OnEnter = DBEdit13Enter
          OnKeyPress = DBEdit13KeyPress
        end
      end
      object BitBtn3: TBitBtn
        Left = 16
        Top = 604
        Width = 89
        Height = 33
        Caption = 'NUOVO'
        TabOrder = 2
        OnClick = BitBtn3Click
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
      object BitBtn4: TBitBtn
        Left = 112
        Top = 604
        Width = 89
        Height = 33
        Caption = 'MODIFICA'
        TabOrder = 3
        OnClick = BitBtn4Click
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
      object BitBtn5: TBitBtn
        Left = 208
        Top = 604
        Width = 89
        Height = 33
        Caption = 'SALVA'
        TabOrder = 4
        OnClick = BitBtn5Click
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
      object BitBtn6: TBitBtn
        Left = 304
        Top = 604
        Width = 89
        Height = 33
        Caption = 'ANNULLA'
        TabOrder = 5
        OnClick = BitBtn6Click
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
      object BitBtn7: TBitBtn
        Left = 400
        Top = 604
        Width = 89
        Height = 33
        Caption = 'ELIMINA'
        TabOrder = 6
        OnClick = BitBtn7Click
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
      object BitBtn8: TBitBtn
        Left = 705
        Top = 604
        Width = 112
        Height = 33
        Caption = 'FINE MATASSA'
        TabOrder = 7
        OnClick = BitBtn8Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
          333B33F333337F3333373B33333BB33333B337FF33377F33337F3BB3333BB333
          3BB3377FF3377F33377333BB777BB777BB333377FFF77FFF7733330000000000
          B3333377777777777333330FFFFFFFF03333337F3FF3FFF7F333330F00F000F0
          33333F7F77377737FFFFBB0FFF8FFFF0BBB3777F3F33FFF7777F3B0F08700000
          000B377F73F7777777773308880FFFFFF033337F377333333733330807FFFFF8
          033333737FFFFFFF7F33333000000000B3333337777777777FF333BB333BB333
          BB33337733377F3377FF3BB3333BB3333BB3377333377F33377F3B33333BB333
          33B33733333773333373B333333B3333333B7333333733333337}
        NumGlyphs = 2
      end
      object BitBtn33: TBitBtn
        Left = 496
        Top = 604
        Width = 89
        Height = 33
        Caption = 'CLONA'
        TabOrder = 8
        OnClick = BitBtn33Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333333333333333333333333FFFFFFFFFFF33330000000000
          03333377777777777F33333003333330033333377FF333377F33333300333333
          0333333377FF33337F3333333003333303333333377FF3337333333333003333
          333333333377FF3333333333333003333333333333377FF33333333333330033
          3333333333337733333333333330033333333333333773333333333333003333
          33333333337733333F3333333003333303333333377333337F33333300333333
          03333333773333337F33333003333330033333377FFFFFF77F33330000000000
          0333337777777777733333333333333333333333333333333333}
        NumGlyphs = 2
      end
      object BitBtn34: TBitBtn
        Left = 833
        Top = 604
        Width = 112
        Height = 33
        Caption = '-> IN USO'
        TabOrder = 9
        OnClick = BitBtn34Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
          333B33F333337F3333373B33333BB33333B337FF33377F33337F3BB3333BB333
          3BB3377FF3377F33377333BB777BB777BB333377FFF77FFF7733330000000000
          B3333377777777777333330FFFFFFFF03333337F3FF3FFF7F333330F00F000F0
          33333F7F77377737FFFFBB0FFF8FFFF0BBB3777F3F33FFF7777F3B0F08700000
          000B377F73F7777777773308880FFFFFF033337F377333333733330807FFFFF8
          033333737FFFFFFF7F33333000000000B3333337777777777FF333BB333BB333
          BB33337733377F3377FF3BB3333BB3333BB3377333377F33377F3B33333BB333
          33B33733333773333373B333333B3333333B7333333733333337}
        NumGlyphs = 2
      end
    end
  end
  object GroupBox7: TGroupBox
    Left = 0
    Top = 0
    Width = 1369
    Height = 57
    Caption = 'CLIENTE'
    TabOrder = 1
    OnDblClick = GroupBox7DblClick
    object Label92: TLabel
      Left = 19
      Top = 24
      Width = 41
      Height = 13
      Caption = 'CLI_NO:'
    end
    object Label93: TLabel
      Left = 125
      Top = 24
      Width = 58
      Height = 13
      Caption = 'COGNOME:'
    end
    object Label94: TLabel
      Left = 448
      Top = 24
      Width = 35
      Height = 13
      Caption = 'NOME:'
    end
    object Label156: TLabel
      Left = 760
      Top = 8
      Width = 60
      Height = 13
      Caption = 'N'#176' INCORD.'
      Visible = False
    end
    object Label157: TLabel
      Left = 840
      Top = 8
      Width = 154
      Height = 13
      Caption = 'DATA ULTIMA INCORDATURA'
      Visible = False
    end
    object DBEdit45: TDBEdit
      Left = 64
      Top = 22
      Width = 57
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
      TabOrder = 0
    end
    object DBEdit46: TDBEdit
      Left = 185
      Top = 22
      Width = 257
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
    object DBEdit47: TDBEdit
      Left = 487
      Top = 22
      Width = 257
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
    object Edit14: TEdit
      Left = 760
      Top = 22
      Width = 65
      Height = 28
      Color = clGradientActiveCaption
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      Text = 'Edit8'
      Visible = False
    end
    object Edit15: TEdit
      Left = 841
      Top = 22
      Width = 193
      Height = 28
      Color = clGradientActiveCaption
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
      Text = 'Edit8'
      Visible = False
    end
  end
end
