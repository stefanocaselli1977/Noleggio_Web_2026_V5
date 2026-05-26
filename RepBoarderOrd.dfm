object RipBrdOrd: TRipBrdOrd
  Left = 490
  Top = 234
  Width = 1020
  Height = 480
  Caption = 'RipBrdOrd'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 8
    Top = 8
    Width = 1123
    Height = 794
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = IBQuery1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poLandscape
    Page.PaperSize = A4
    Page.Values = (
      26.4583333333333
      2100
      26.4583333333333
      2970
      26.4583333333333
      26.4583333333333
      0)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = Pixels
    Zoom = 100
    object QRBand1: TQRBand
      Left = 10
      Top = 10
      Width = 1103
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        92.6041666666667
        2918.35416666667)
      BandType = rbTitle
      object QRLabel2: TQRLabel
        Left = 328
        Top = 8
        Width = 76
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          867.833333333333
          21.1666666666667
          201.083333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel2'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        OnPrint = QRLabel2Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
    end
    object QRGroup1: TQRGroup
      Left = 10
      Top = 45
      Width = 1103
      Height = 27
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        71.4375
        2918.35416666667)
      Expression = 'IBQuery1.DATAINSERT'
      Master = QuickRep1
      ReprintOnNewPage = False
      object QRDBText5: TQRDBText
        Left = 16
        Top = 8
        Width = 111
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          42.3333333333333
          21.1666666666667
          293.6875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'DATARITIRORICH'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel1: TQRLabel
        Left = 144
        Top = 8
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          381
          21.1666666666667
          140.229166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'GIORNO'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        OnPrint = QRLabel1Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel17: TQRLabel
        Left = 1042
        Top = 8
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2756.95833333333
          21.1666666666667
          76.7291666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Rdy.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel18: TQRLabel
        Left = 1073
        Top = 8
        Width = 22
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2838.97916666667
          21.1666666666667
          58.2083333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Rit.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object QRBand2: TQRBand
      Left = 10
      Top = 72
      Width = 1103
      Height = 32
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = QRBand2BeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        84.6666666666667
        2918.35416666667)
      BandType = rbDetail
      object QRShape1: TQRShape
        Left = 92
        Top = 1
        Width = 1005
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Style = psClear
        Size.Values = (
          79.375
          243.416666666667
          2.64583333333333
          2659.0625)
        Shape = qrsRectangle
      end
      object QRShape2: TQRShape
        Left = 415
        Top = 15
        Width = 14
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          1098.02083333333
          39.6875
          37.0416666666667)
        Pen.Width = 2
        Shape = qrsRectangle
      end
      object QRLabel3: TQRLabel
        Left = 94
        Top = 15
        Width = 48
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          248.708333333333
          39.6875
          127)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel3'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRLabel3Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel4: TQRLabel
        Left = 407
        Top = 3
        Width = 30
        Height = 11
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          29.1041666666667
          1076.85416666667
          7.9375
          79.375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'FONDO'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 6
      end
      object QRLabel5: TQRLabel
        Left = 447
        Top = 3
        Width = 30
        Height = 11
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          29.1041666666667
          1182.6875
          7.9375
          79.375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'LAMINE'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 6
      end
      object QRShape3: TQRShape
        Left = 455
        Top = 15
        Width = 14
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          1203.85416666667
          39.6875
          37.0416666666667)
        Pen.Width = 2
        Shape = qrsRectangle
      end
      object QRLabel6: TQRLabel
        Left = 487
        Top = 3
        Width = 37
        Height = 11
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          29.1041666666667
          1288.52083333333
          7.9375
          97.8958333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'SCIOLINA'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 6
      end
      object QRShape4: TQRShape
        Left = 498
        Top = 15
        Width = 14
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          1317.625
          39.6875
          37.0416666666667)
        Pen.Width = 2
        Shape = qrsRectangle
      end
      object QRDBText3: TQRDBText
        Left = 593
        Top = 15
        Width = 16
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1568.97916666667
          39.6875
          42.3333333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'KG'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText6: TQRDBText
        Left = 622
        Top = 14
        Width = 26
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1645.70833333333
          37.0416666666667
          68.7916666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = IBQuery1
        DataField = 'MMSUOLA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel14: TQRLabel
        Left = 530
        Top = 3
        Width = 55
        Height = 11
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          29.1041666666667
          1402.29166666667
          7.9375
          145.520833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CHAK. ATTAC.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 6
      end
      object QRShape10: TQRShape
        Left = 550
        Top = 15
        Width = 14
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          1455.20833333333
          39.6875
          37.0416666666667)
        Pen.Width = 2
        Shape = qrsRectangle
      end
      object QRLabel7: TQRLabel
        Left = 594
        Top = 3
        Width = 14
        Height = 11
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          29.1041666666667
          1571.625
          7.9375
          37.0416666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'KG.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 6
      end
      object QRLabel12: TQRLabel
        Left = 626
        Top = 3
        Width = 14
        Height = 11
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          29.1041666666667
          1656.29166666667
          7.9375
          37.0416666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Mm'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 6
      end
      object QRLabel8: TQRLabel
        Left = 650
        Top = 3
        Width = 48
        Height = 11
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          29.1041666666667
          1719.79166666667
          7.9375
          127)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'PREP. GARA'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 6
      end
      object QRShape5: TQRShape
        Left = 667
        Top = 15
        Width = 14
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          1764.77083333333
          39.6875
          37.0416666666667)
        Pen.Width = 2
        Shape = qrsRectangle
      end
      object QRLabel9: TQRLabel
        Left = 706
        Top = 3
        Width = 39
        Height = 11
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          29.1041666666667
          1867.95833333333
          7.9375
          103.1875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'RADDRIZ.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 6
      end
      object QRShape6: TQRShape
        Left = 718
        Top = 15
        Width = 14
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          1899.70833333333
          39.6875
          37.0416666666667)
        Pen.Width = 2
        Shape = qrsRectangle
      end
      object QRLabel10: TQRLabel
        Left = 754
        Top = 3
        Width = 21
        Height = 11
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          29.1041666666667
          1994.95833333333
          7.9375
          55.5625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'PELLI'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 6
      end
      object QRShape7: TQRShape
        Left = 758
        Top = 15
        Width = 14
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          2005.54166666667
          39.6875
          37.0416666666667)
        Pen.Width = 2
        Shape = qrsRectangle
      end
      object QRLabel11: TQRLabel
        Left = 786
        Top = 3
        Width = 45
        Height = 11
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          29.1041666666667
          2079.625
          7.9375
          119.0625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'RIP.PARTIC'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 6
      end
      object QRShape9: TQRShape
        Left = 803
        Top = 15
        Width = 14
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.3958333333333
          2124.60416666667
          39.6875
          37.0416666666667)
        Pen.Width = 2
        Shape = qrsRectangle
      end
      object QRLabel13: TQRLabel
        Left = 94
        Top = 3
        Width = 37
        Height = 11
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          29.1041666666667
          248.708333333333
          7.9375
          97.8958333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel3'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        OnPrint = QRLabel13Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 6
      end
      object QRDBRichText1: TQRDBRichText
        Left = 834
        Top = 4
        Width = 207
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.1458333333333
          2206.625
          10.5833333333333
          547.6875)
        Alignment = taLeftJustify
        AutoStretch = False
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        DataField = 'NOTE1'
        DataSet = IBQuery1
      end
      object QRLabel15: TQRLabel
        Left = 1043
        Top = 8
        Width = 20
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2759.60416666667
          21.1666666666667
          52.9166666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'RIT'
        Color = clWhite
        OnPrint = QRLabel15Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel16: TQRLabel
        Left = 1075
        Top = 8
        Width = 20
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2844.27083333333
          21.1666666666667
          52.9166666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'RIT'
        Color = clWhite
        OnPrint = QRLabel16Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
  end
  object IBQuery1: TIBQuery
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT COGNRAGSOC, NOME, RIPARAZIONE.*'
      
        'FROM RIPARAZIONE JOIN CLIENTI ON CLIENTI.CLI_NO=RIPARAZIONE.CLI_' +
        'NO'
      'ORDER BY DATAINSERT, TIPOPRODOTTO')
    Left = 16
    Top = 16
    object IBQuery1COGNRAGSOC: TIBStringField
      FieldName = 'COGNRAGSOC'
      Origin = 'CLIENTI.COGNRAGSOC'
      Size = 35
    end
    object IBQuery1NOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'CLIENTI.NOME'
      Size = 30
    end
    object IBQuery1RIP_NO: TIntegerField
      FieldName = 'RIP_NO'
      Origin = 'RIPARAZIONE.RIP_NO'
      Required = True
    end
    object IBQuery1CLI_NO: TIntegerField
      FieldName = 'CLI_NO'
      Origin = 'RIPARAZIONE.CLI_NO'
      Required = True
    end
    object IBQuery1TIPOPRODOTTO: TIBStringField
      FieldName = 'TIPOPRODOTTO'
      Origin = 'RIPARAZIONE.TIPOPRODOTTO'
      Required = True
    end
    object IBQuery1BRAND: TIBStringField
      FieldName = 'BRAND'
      Origin = 'RIPARAZIONE.BRAND'
      Required = True
    end
    object IBQuery1DESCRIZIONE: TIBStringField
      FieldName = 'DESCRIZIONE'
      Origin = 'RIPARAZIONE.DESCRIZIONE'
      Required = True
      Size = 40
    end
    object IBQuery1FONDO: TSmallintField
      FieldName = 'FONDO'
      Origin = 'RIPARAZIONE.FONDO'
    end
    object IBQuery1LAMINE: TSmallintField
      FieldName = 'LAMINE'
      Origin = 'RIPARAZIONE.LAMINE'
    end
    object IBQuery1SCIOLINA: TSmallintField
      FieldName = 'SCIOLINA'
      Origin = 'RIPARAZIONE.SCIOLINA'
    end
    object IBQuery1PREPGARA: TSmallintField
      FieldName = 'PREPGARA'
      Origin = 'RIPARAZIONE.PREPGARA'
    end
    object IBQuery1RIPPARTIC: TSmallintField
      FieldName = 'RIPPARTIC'
      Origin = 'RIPARAZIONE.RIPPARTIC'
    end
    object IBQuery1RADDRIZZATURA: TSmallintField
      FieldName = 'RADDRIZZATURA'
      Origin = 'RIPARAZIONE.RADDRIZZATURA'
    end
    object IBQuery1CHECKATTACCHI: TSmallintField
      FieldName = 'CHECKATTACCHI'
      Origin = 'RIPARAZIONE.CHECKATTACCHI'
    end
    object IBQuery1PREZZO: TFloatField
      FieldName = 'PREZZO'
      Origin = 'RIPARAZIONE.PREZZO'
      Required = True
    end
    object IBQuery1NOTE1: TMemoField
      FieldName = 'NOTE1'
      Origin = 'RIPARAZIONE.NOTE1'
      BlobType = ftMemo
      Size = 8
    end
    object IBQuery1RITIRATODA: TIBStringField
      FieldName = 'RITIRATODA'
      Origin = 'RIPARAZIONE.RITIRATODA'
      Size = 40
    end
    object IBQuery1OWNER: TIBStringField
      FieldName = 'OWNER'
      Origin = 'RIPARAZIONE.OWNER'
      Required = True
      Size = 25
    end
    object IBQuery1KG: TIntegerField
      FieldName = 'KG'
      Origin = 'RIPARAZIONE.KG'
    end
    object IBQuery1MMSUOLA: TIntegerField
      FieldName = 'MMSUOLA'
      Origin = 'RIPARAZIONE.MMSUOLA'
    end
    object IBQuery1PELLI: TSmallintField
      FieldName = 'PELLI'
      Origin = 'RIPARAZIONE.PELLI'
    end
    object IBQuery1DATAREADY: TDateTimeField
      FieldName = 'DATAREADY'
      Origin = 'RIPARAZIONE.DATAREADY'
    end
    object IBQuery1DATAINSERT: TDateTimeField
      FieldName = 'DATAINSERT'
      Origin = 'RIPARAZIONE.DATAINSERT'
    end
    object IBQuery1DATARITIRORICH: TDateTimeField
      FieldName = 'DATARITIRORICH'
      Origin = 'RIPARAZIONE.DATARITIRORICH'
    end
    object IBQuery1DATARITIRO: TDateTimeField
      FieldName = 'DATARITIRO'
      Origin = 'RIPARAZIONE.DATARITIRO'
    end
    object IBQuery1URGENZA: TIntegerField
      FieldName = 'URGENZA'
      Origin = 'RIPARAZIONE.URGENZA'
    end
    object IBQuery1TIPOPAGAM: TIBStringField
      FieldName = 'TIPOPAGAM'
      Origin = 'RIPARAZIONE.TIPOPAGAM'
      Required = True
      Size = 25
    end
    object IBQuery1EANCODERIP: TIBStringField
      FieldName = 'EANCODERIP'
      Origin = 'RIPARAZIONE.EANCODERIP'
      Required = True
    end
    object IBQuery1STANCESNOW: TIBStringField
      FieldName = 'STANCESNOW'
      Origin = 'RIPARAZIONE.STANCESNOW'
      Size = 8
    end
    object IBQuery1BINDINGS: TIBStringField
      FieldName = 'BINDINGS'
      Origin = 'RIPARAZIONE.BINDINGS'
      Size = 40
    end
    object IBQuery1SXDEG: TIBStringField
      FieldName = 'SXDEG'
      Origin = 'RIPARAZIONE.SXDEG'
      Size = 9
    end
    object IBQuery1DXDEG: TIBStringField
      FieldName = 'DXDEG'
      Origin = 'RIPARAZIONE.DXDEG'
      Size = 9
    end
  end
end
