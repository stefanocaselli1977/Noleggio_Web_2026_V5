object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 267
  Top = 417
  Height = 444
  Width = 1317
  object IBTransaction1: TIBTransaction
    Active = False
    DefaultDatabase = IBDatabase1
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 5
    Top = 64
  end
  object IBDataSetClienti: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    AfterCancel = IBDataSetClientiAfterCancel
    AfterDelete = IBDataSetClientiAfterDelete
    AfterEdit = IBDataSetClientiAfterEdit
    AfterOpen = IBDataSetClientiAfterOpen
    AfterPost = IBDataSetClientiAfterPost
    AfterScroll = IBDataSetClientiAfterScroll
    BeforeCancel = IBDataSetClientiBeforeCancel
    BeforeDelete = IBDataSetClientiBeforeDelete
    BeforeEdit = IBDataSetClientiBeforeEdit
    BeforeInsert = IBDataSetClientiBeforeInsert
    BeforePost = IBDataSetClientiBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from CLIENTI'
      'where'
      '  CLI_NO = :OLD_CLI_NO')
    InsertSQL.Strings = (
      'insert into CLIENTI'
      '  (CLI_NO, EANCODE,EANCODE2, INTRODATE, COGNRAGSOC, NOME, '
      'INDIRIZZO, CITTA, '
      'PAESE, '
      
        '   CAP, TIPODOC, N_DOC, CELLULARE, TELEFONO1, TELEFONO2, EMAIL, ' +
        'NOTE, '
      'IMAGE,  STATOTESSERA, DELETEDATE, VALIDNO, DATAVALID_MAIL, '
      'DATAVALID_CELL)'
      'values'
      
        '  (:CLI_NO, :EANCODE, :EANCODE2, :INTRODATE, :COGNRAGSOC, :NOME,' +
        ' '
      ':INDIRIZZO, '
      ':CITTA, '
      
        '   :PAESE, :CAP, :TIPODOC, :N_DOC, :CELLULARE, :TELEFONO1, :TELE' +
        'FONO2, '
      '   :EMAIL, :NOTE, :IMAGE, :STATOTESSERA, :DELETEDATE, '
      ':VALIDNO, :DATAVALID_MAIL, :DATAVALID_CELL)')
    RefreshSQL.Strings = (
      'Select '
      '  CLI_NO,'
      '  EANCODE,'
      '  EANCODE2,'
      '  INTRODATE,'
      '  COGNRAGSOC,'
      '  NOME,'
      '  INDIRIZZO,'
      '  CITTA,'
      '  PAESE,'
      '  CAP,'
      '  TIPODOC,'
      '  N_DOC,'
      '  CELLULARE,'
      '  TELEFONO1,'
      '  TELEFONO2,'
      '  EMAIL,'
      '  NOTE,'
      '  IMAGE,'
      '  STATOTESSERA,'
      '  DELETEDATE,'
      '  VALIDNO,'
      '  DATAVALID_MAIL,'
      '  DATAVALID_CELL'
      'from CLIENTI '
      'where'
      ' CLI_NO = :CLI_NO '
      'Order by CLI_NO')
    SelectSQL.Strings = (
      'select * from CLIENTI Order by CLI_NO')
    ModifySQL.Strings = (
      'update CLIENTI'
      'set'
      '  CLI_NO = :CLI_NO,'
      '  EANCODE = :EANCODE,'
      '  EANCODE2 = :EANCODE2,'
      '  INTRODATE = :INTRODATE,'
      '  COGNRAGSOC = :COGNRAGSOC,'
      '  NOME = :NOME,'
      '  INDIRIZZO = :INDIRIZZO,'
      '  CITTA = :CITTA,'
      '  PAESE = :PAESE,'
      '  CAP = :CAP,'
      '  TIPODOC = :TIPODOC,'
      '  N_DOC = :N_DOC,'
      '  CELLULARE = :CELLULARE,'
      '  TELEFONO1 = :TELEFONO1,'
      '  TELEFONO2 = :TELEFONO2,'
      '  EMAIL = :EMAIL,'
      '  NOTE = :NOTE,'
      '  IMAGE = :IMAGE,'
      '  STATOTESSERA = :STATOTESSERA,'
      '  DELETEDATE = :DELETEDATE,'
      '  VALIDNO = :VALIDNO,'
      '  DATAVALID_MAIL = :DATAVALID_MAIL,'
      '  DATAVALID_CELL = :DATAVALID_CELL'
      'where'
      '  CLI_NO = :OLD_CLI_NO  ')
    GeneratorField.Field = 'CLI_NO'
    GeneratorField.Generator = 'CLINO_GEN'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 5
    Top = 160
    object IBDataSetClientiCLI_NO: TFloatField
      FieldName = 'CLI_NO'
      Origin = 'CLIENTI.CLI_NO'
      Required = True
    end
    object IBDataSetClientiEANCODE: TIBStringField
      Alignment = taCenter
      FieldName = 'EANCODE'
      Origin = 'CLIENTI.EANCODE'
      Size = 30
    end
    object IBDataSetClientiINTRODATE: TDateTimeField
      FieldName = 'INTRODATE'
      Origin = 'CLIENTI.INTRODATE'
    end
    object IBDataSetClientiCOGNRAGSOC: TIBStringField
      FieldName = 'COGNRAGSOC'
      Origin = 'CLIENTI.COGNRAGSOC'
      Size = 35
    end
    object IBDataSetClientiNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'CLIENTI.NOME'
      Size = 30
    end
    object IBDataSetClientiINDIRIZZO: TIBStringField
      FieldName = 'INDIRIZZO'
      Origin = 'CLIENTI.INDIRIZZO'
      Size = 40
    end
    object IBDataSetClientiCITTA: TIBStringField
      FieldName = 'CITTA'
      Origin = 'CLIENTI.CITTA'
    end
    object IBDataSetClientiPAESE: TIBStringField
      FieldName = 'PAESE'
      Origin = 'CLIENTI.PAESE'
    end
    object IBDataSetClientiCAP: TIBStringField
      FieldName = 'CAP'
      Origin = 'CLIENTI.CAP'
      Size = 5
    end
    object IBDataSetClientiCELLULARE: TIBStringField
      FieldName = 'CELLULARE'
      Origin = 'CLIENTI.CELLULARE'
      Size = 18
    end
    object IBDataSetClientiTELEFONO1: TIBStringField
      FieldName = 'TELEFONO1'
      Origin = 'CLIENTI.TELEFONO1'
      Size = 18
    end
    object IBDataSetClientiTELEFONO2: TIBStringField
      FieldName = 'TELEFONO2'
      Origin = 'CLIENTI.TELEFONO2'
      Size = 18
    end
    object IBDataSetClientiEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = 'CLIENTI.EMAIL'
      OnValidate = IBDataSetClientiEMAILValidate
      Size = 50
    end
    object IBDataSetClientiNOTE: TMemoField
      FieldName = 'NOTE'
      Origin = 'CLIENTI.NOTE'
      BlobType = ftMemo
      Size = 8
    end
    object IBDataSetClientiIMAGE: TBlobField
      FieldName = 'IMAGE'
      Origin = 'CLIENTI.IMAGE'
      Size = 8
    end
    object IBDataSetClientiTIPODOC: TIBStringField
      FieldName = 'TIPODOC'
      Origin = 'CLIENTI.TIPODOC'
    end
    object IBDataSetClientiN_DOC: TIBStringField
      FieldName = 'N_DOC'
      Origin = 'CLIENTI.N_DOC'
    end
    object IBDataSetClientiSTATOTESSERA: TIBStringField
      FieldName = 'STATOTESSERA'
      Origin = 'CLIENTI.STATOTESSERA'
    end
    object IBDataSetClientiEANCODE2: TIBStringField
      FieldName = 'EANCODE2'
      Origin = 'CLIENTI.EANCODE2'
    end
    object IBDataSetClientiDELETEDATE: TDateTimeField
      FieldName = 'DELETEDATE'
      Origin = 'CLIENTI.DELETEDATE'
    end
    object IBDataSetClientiVALIDNO: TIBStringField
      FieldName = 'VALIDNO'
      Origin = 'CLIENTI.VALIDNO'
      Size = 10
    end
    object IBDataSetClientiDATAVALID_MAIL: TDateTimeField
      FieldName = 'DATAVALID_MAIL'
      Origin = 'CLIENTI.DATAVALID_MAIL'
    end
    object IBDataSetClientiDATAVALID_CELL: TDateTimeField
      FieldName = 'DATAVALID_CELL'
      Origin = 'CLIENTI.DATAVALID_CELL'
    end
  end
  object DSClienti: TDataSource
    DataSet = IBDataSetClienti
    OnDataChange = DSClientiDataChange
    Left = 5
    Top = 112
  end
  object DSArticolo: TDataSource
    DataSet = IBDataSetArticolo
    OnDataChange = DSArticoloDataChange
    Left = 96
    Top = 112
  end
  object IBDataSetArticolo: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction2
    AfterCancel = IBDataSetArticoloAfterCancel
    AfterDelete = IBDataSetArticoloAfterDelete
    AfterEdit = IBDataSetArticoloAfterEdit
    AfterInsert = IBDataSetArticoloAfterInsert
    AfterPost = IBDataSetArticoloAfterPost
    AfterScroll = IBDataSetArticoloAfterScroll
    BeforeCancel = IBDataSetArticoloBeforeCancel
    BeforeDelete = IBDataSetArticoloBeforeDelete
    BeforeEdit = IBDataSetArticoloBeforeEdit
    BeforeInsert = IBDataSetArticoloBeforeInsert
    BeforePost = IBDataSetArticoloBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from ARTICOLO'
      'where'
      '  ART_NO = :OLD_ART_NO')
    InsertSQL.Strings = (
      'insert into ARTICOLO'
      '  (ART_NO, EANCODE, MANUALCODE, MANUALCODE1, INTRODATE, '
      'EXPIREDATE, STAGIONE, '
      'DESCRIZIONE, '
      
        '   BRAND, TIPO, MISURA, COLORE, PREZZOPUB, PREZZORIS, PREZZOSCON' +
        'T, '
      'INCVENDITA, '
      '   INCNOLO, NOTE, AVAILABLE, RIPARAZIONI, RIPDATA, EANCODE2, '
      'FLAGREPLAY, '
      
        '   BRAND01, CLI_NO, DATASALDOCLI, TIPOSALDOCLI, OWNER, VENDUTODA' +
        ', '
      'TENSH, TENSV, CV)'
      'values'
      '  (:ART_NO, :EANCODE, :MANUALCODE, :MANUALCODE1, :INTRODATE, '
      ':EXPIREDATE, '
      ':STAGIONE, '
      '   :DESCRIZIONE, :BRAND, :TIPO, :MISURA, :COLORE, :PREZZOPUB, '
      ':PREZZORIS, '
      
        '   :PREZZOSCONT, :INCVENDITA, :INCNOLO, :NOTE, :AVAILABLE, :RIPA' +
        'RAZIONI, '
      
        '   :RIPDATA, :EANCODE2, :FLAGREPLAY, :BRAND01, :CLI_NO, :DATASAL' +
        'DOCLI, '
      '   :TIPOSALDOCLI, :OWNER, :VENDUTODA, :TENSH, :TENSV, :CV)')
    RefreshSQL.Strings = (
      'Select '
      '  ART_NO,'
      '  EANCODE,'
      '  MANUALCODE,'
      ' MANUALCODE1,'
      '  INTRODATE,'
      '  EXPIREDATE,'
      '  STAGIONE,'
      '  DESCRIZIONE,'
      '  BRAND,'
      '  TIPO,'
      '  MISURA,'
      '  COLORE,'
      '  PREZZOPUB,'
      '  PREZZORIS,'
      '  PREZZOSCONT,'
      '  INCVENDITA,'
      '  INCNOLO,'
      '  NOTE,'
      '  AVAILABLE,'
      '  RIPARAZIONI,'
      '  RIPDATA,'
      '  EANCODE2,'
      '  FLAGREPLAY,'
      '  BRAND01,'
      '  CLI_NO,'
      '  DATASALDOCLI,'
      '  TIPOSALDOCLI,'
      '  OWNER,'
      '  VENDUTODA,'
      '  TENSH,'
      '  TENSV,'
      '  CV'
      'from ARTICOLO '
      'where'
      '  ART_NO = :ART_NO')
    SelectSQL.Strings = (
      'select * from ARTICOLO')
    ModifySQL.Strings = (
      'update ARTICOLO'
      'set'
      '  ART_NO = :ART_NO,'
      '  EANCODE = :EANCODE,'
      '  MANUALCODE = :MANUALCODE,'
      '  MANUALCODE1 = :MANUALCODE1,'
      '  INTRODATE = :INTRODATE,'
      '  EXPIREDATE = :EXPIREDATE,'
      '  STAGIONE = :STAGIONE,'
      '  DESCRIZIONE = :DESCRIZIONE,'
      '  BRAND = :BRAND,'
      '  TIPO = :TIPO,'
      '  MISURA = :MISURA,'
      '  COLORE = :COLORE,'
      '  PREZZOPUB = :PREZZOPUB,'
      '  PREZZORIS = :PREZZORIS,'
      '  PREZZOSCONT = :PREZZOSCONT,'
      '  INCVENDITA = :INCVENDITA,'
      '  INCNOLO = :INCNOLO,'
      '  NOTE = :NOTE,'
      '  AVAILABLE = :AVAILABLE,'
      '  RIPARAZIONI = :RIPARAZIONI,'
      '  RIPDATA = :RIPDATA,'
      '  EANCODE2 = :EANCODE2,'
      '  FLAGREPLAY = :FLAGREPLAY,'
      '  BRAND01 = :BRAND01,'
      '  CLI_NO = :CLI_NO,'
      '  DATASALDOCLI = :DATASALDOCLI,'
      '  TIPOSALDOCLI = :TIPOSALDOCLI,'
      '  OWNER = :OWNER,'
      '  VENDUTODA = :VENDUTODA,'
      '  TENSH = :TENSH,'
      '  TENSV = :TENSV,'
      '  CV = :CV'
      'where'
      '  ART_NO = :OLD_ART_NO')
    GeneratorField.Field = 'ART_NO'
    GeneratorField.Generator = 'ARTNO_GEN'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 96
    Top = 160
    object IBDataSetArticoloART_NO: TFloatField
      FieldName = 'ART_NO'
      Origin = 'ARTICOLO.ART_NO'
      Required = True
    end
    object IBDataSetArticoloEANCODE: TIBStringField
      FieldName = 'EANCODE'
      Origin = 'ARTICOLO.EANCODE'
      Size = 30
    end
    object IBDataSetArticoloINTRODATE: TDateTimeField
      FieldName = 'INTRODATE'
      Origin = 'ARTICOLO.INTRODATE'
    end
    object IBDataSetArticoloEXPIREDATE: TDateTimeField
      FieldName = 'EXPIREDATE'
      Origin = 'ARTICOLO.EXPIREDATE'
      ReadOnly = True
      OnChange = IBDataSetArticoloEXPIREDATEChange
    end
    object IBDataSetArticoloSTAGIONE: TIBStringField
      FieldName = 'STAGIONE'
      Origin = 'ARTICOLO.STAGIONE'
      Size = 10
    end
    object IBDataSetArticoloDESCRIZIONE: TIBStringField
      FieldName = 'DESCRIZIONE'
      Origin = 'ARTICOLO.DESCRIZIONE'
      Size = 35
    end
    object IBDataSetArticoloBRAND: TIBStringField
      FieldName = 'BRAND'
      Origin = 'ARTICOLO.BRAND'
      Size = 30
    end
    object IBDataSetArticoloTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = 'ARTICOLO.TIPO'
      Size = 40
    end
    object IBDataSetArticoloMISURA: TIBStringField
      FieldName = 'MISURA'
      Origin = 'ARTICOLO.MISURA'
      Size = 40
    end
    object IBDataSetArticoloCOLORE: TIBStringField
      FieldName = 'COLORE'
      Origin = 'ARTICOLO.COLORE'
      Size = 40
    end
    object IBDataSetArticoloPREZZOPUB: TFloatField
      FieldName = 'PREZZOPUB'
      Origin = 'ARTICOLO.PREZZOPUB'
      OnSetText = IBDataSetArticoloPREZZOPUBSetText
      currency = True
    end
    object IBDataSetArticoloPREZZORIS: TFloatField
      FieldName = 'PREZZORIS'
      Origin = 'ARTICOLO.PREZZORIS'
      OnChange = IBDataSetArticoloPREZZORISChange
      OnSetText = IBDataSetArticoloPREZZORISSetText
      currency = True
    end
    object IBDataSetArticoloPREZZOSCONT: TFloatField
      FieldName = 'PREZZOSCONT'
      Origin = 'ARTICOLO.PREZZOSCONT'
      OnSetText = IBDataSetArticoloPREZZOSCONTSetText
      currency = True
    end
    object IBDataSetArticoloINCVENDITA: TFloatField
      FieldName = 'INCVENDITA'
      Origin = 'ARTICOLO.INCVENDITA'
      OnChange = IBDataSetArticoloINCVENDITAChange
      OnSetText = IBDataSetArticoloINCVENDITASetText
      OnValidate = IBDataSetArticoloINCVENDITAValidate
      currency = True
    end
    object IBDataSetArticoloINCNOLO: TFloatField
      FieldName = 'INCNOLO'
      Origin = 'ARTICOLO.INCNOLO'
      ReadOnly = True
      currency = True
    end
    object IBDataSetArticoloNOTE: TMemoField
      FieldName = 'NOTE'
      Origin = 'ARTICOLO.NOTE'
      BlobType = ftMemo
      Size = 8
    end
    object IBDataSetArticoloMANUALCODE: TIBStringField
      DisplayWidth = 34
      FieldName = 'MANUALCODE'
      Origin = 'ARTICOLO.MANUALCODE'
      Size = 34
    end
    object IBDataSetArticoloAVAILABLE: TIBStringField
      FieldName = 'AVAILABLE'
      Origin = 'ARTICOLO.AVAILABLE'
      OnChange = IBDataSetArticoloAVAILABLEChange
      Size = 15
    end
    object IBDataSetArticoloRIPARAZIONI: TIntegerField
      FieldName = 'RIPARAZIONI'
      Origin = 'ARTICOLO.RIPARAZIONI'
    end
    object IBDataSetArticoloRIPDATA: TDateTimeField
      FieldName = 'RIPDATA'
      Origin = 'ARTICOLO.RIPDATA'
    end
    object IBDataSetArticoloEANCODE2: TIBStringField
      FieldName = 'EANCODE2'
      Origin = 'ARTICOLO.EANCODE2'
      OnSetText = IBDataSetArticoloEANCODE2SetText
      Size = 30
    end
    object IBDataSetArticoloDATASALDOCLI: TDateTimeField
      FieldName = 'DATASALDOCLI'
      Origin = 'ARTICOLO.DATASALDOCLI'
    end
    object IBDataSetArticoloFLAGREPLAY: TSmallintField
      FieldName = 'FLAGREPLAY'
      Origin = 'ARTICOLO.FLAGREPLAY'
    end
    object IBDataSetArticoloBRAND01: TIBStringField
      FieldName = 'BRAND01'
      Origin = 'ARTICOLO.BRAND01'
      Size = 30
    end
    object IBDataSetArticoloTIPOSALDOCLI: TIBStringField
      FieldName = 'TIPOSALDOCLI'
      Origin = 'ARTICOLO.TIPOSALDOCLI'
      OnChange = IBDataSetArticoloTIPOSALDOCLIChange
    end
    object IBDataSetArticoloOWNER: TIBStringField
      FieldName = 'OWNER'
      Origin = 'ARTICOLO.OWNER'
      Size = 25
    end
    object IBDataSetArticoloVENDUTODA: TIBStringField
      FieldName = 'VENDUTODA'
      Origin = 'ARTICOLO.VENDUTODA'
    end
    object IBDataSetArticoloCLI_NO: TFloatField
      FieldName = 'CLI_NO'
      Origin = 'ARTICOLO.CLI_NO'
    end
    object IBDataSetArticoloTENSH: TFloatField
      FieldName = 'TENSH'
      Origin = 'ARTICOLO.TENSH'
    end
    object IBDataSetArticoloTENSV: TFloatField
      FieldName = 'TENSV'
      Origin = 'ARTICOLO.TENSV'
    end
    object IBDataSetArticoloCV: TIntegerField
      FieldName = 'CV'
      Origin = 'ARTICOLO.CV'
      Required = True
    end
    object IBDataSetArticoloMANUALCODE1: TIBStringField
      FieldName = 'MANUALCODE1'
      Origin = 'ARTICOLO.MANUALCODE1'
      Size = 34
    end
  end
  object DSTipo: TDataSource
    DataSet = IBTableTipo
    Left = 173
    Top = 112
  end
  object DSStagione: TDataSource
    DataSet = IBDataSetStagione
    Left = 261
    Top = 112
  end
  object IBDataSetStagione: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction4
    ForcedRefresh = True
    AfterCancel = IBDataSetStagioneAfterCancel
    AfterDelete = IBDataSetStagioneAfterDelete
    AfterPost = IBDataSetStagioneAfterPost
    BeforeCancel = IBDataSetStagioneBeforeCancel
    BeforeDelete = IBDataSetStagioneBeforeDelete
    BeforeEdit = IBDataSetStagioneBeforeEdit
    BeforeInsert = IBDataSetStagioneBeforeInsert
    BeforeRefresh = IBDataSetStagioneBeforeRefresh
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from SEASON'
      'where'
      '  STAGIONE = :OLD_STAGIONE')
    InsertSQL.Strings = (
      'insert into SEASON'
      '  (STAGIONE)'
      'values'
      '  (:STAGIONE)')
    RefreshSQL.Strings = (
      'Select '
      '  STAGIONE'
      'from SEASON '
      'where'
      '  STAGIONE = :STAGIONE')
    SelectSQL.Strings = (
      'SELECT *  FROM SEASON')
    ModifySQL.Strings = (
      'update SEASON'
      'set'
      '  STAGIONE = :STAGIONE'
      'where'
      '  STAGIONE = :OLD_STAGIONE')
    Left = 261
    Top = 160
    object IBDataSetStagioneSTAGIONE: TIBStringField
      FieldName = 'STAGIONE'
      Origin = 'SEASON.STAGIONE'
      Required = True
      Size = 10
    end
  end
  object DSBrand: TDataSource
    DataSet = IBDataSetBrand
    Left = 349
    Top = 112
  end
  object IBDataSetBrand: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction5
    ForcedRefresh = True
    AfterCancel = IBDataSetBrandAfterCancel
    AfterDelete = IBDataSetBrandAfterDelete
    AfterPost = IBDataSetBrandAfterPost
    BeforeCancel = IBDataSetBrandBeforeCancel
    BeforeDelete = IBDataSetBrandBeforeDelete
    BeforeEdit = IBDataSetBrandBeforeEdit
    BeforeInsert = IBDataSetBrandBeforeInsert
    BeforeRefresh = IBDataSetBrandBeforeRefresh
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from MARCHIO'
      'where'
      '  BRANDS = :OLD_BRANDS')
    InsertSQL.Strings = (
      'insert into MARCHIO'
      '  (BRANDS)'
      'values'
      '  (:BRANDS)')
    RefreshSQL.Strings = (
      'Select '
      '  BRANDS'
      'from MARCHIO '
      'where'
      '  BRANDS = :BRANDS')
    SelectSQL.Strings = (
      'SELECT *  from MARCHIO')
    ModifySQL.Strings = (
      'update MARCHIO'
      'set'
      '  BRANDS = :BRANDS'
      'where'
      '  BRANDS = :OLD_BRANDS')
    Left = 349
    Top = 160
    object IBDataSetBrandBRANDS: TIBStringField
      FieldName = 'BRANDS'
      Origin = 'MARCHIO.BRANDS'
      Required = True
      Size = 30
    end
  end
  object IBTransaction2: TIBTransaction
    Active = False
    DefaultDatabase = IBDatabase1
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 93
    Top = 64
  end
  object IBTransaction3: TIBTransaction
    Active = False
    DefaultDatabase = IBDatabase1
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 173
    Top = 64
  end
  object IBTableTipo: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction3
    ForcedRefresh = True
    AfterCancel = IBTableTipoAfterCancel
    AfterDelete = IBTableTipoAfterDelete
    AfterInsert = IBTableTipoAfterInsert
    AfterPost = IBTableTipoAfterPost
    BeforeCancel = IBTableTipoBeforeCancel
    BeforeDelete = IBTableTipoBeforeDelete
    BeforeEdit = IBTableTipoBeforeEdit
    BeforeInsert = IBTableTipoBeforeInsert
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'TYPE_ART'
        Attributes = [faRequired]
        DataType = ftString
        Size = 40
      end>
    StoreDefs = True
    TableName = 'TIPO_ARTICOLI'
    Left = 173
    Top = 160
    object IBTableTipoTYPE_ART: TIBStringField
      FieldName = 'TYPE_ART'
      Size = 40
    end
  end
  object IBTransaction4: TIBTransaction
    Active = False
    DefaultDatabase = IBDatabase1
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 261
    Top = 64
  end
  object IBTransaction5: TIBTransaction
    Active = False
    DefaultDatabase = IBDatabase1
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 349
    Top = 64
  end
  object DSRented: TDataSource
    DataSet = IBDataSetRented
    OnDataChange = DSRentedDataChange
    Left = 437
    Top = 112
  end
  object IBDataSetRented: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction6
    ForcedRefresh = True
    AfterCancel = IBDataSetRentedAfterCancel
    AfterDelete = IBDataSetRentedAfterDelete
    AfterPost = IBDataSetRentedAfterPost
    BeforeDelete = IBDataSetRentedBeforeDelete
    BeforeEdit = IBDataSetRentedBeforeEdit
    BeforeInsert = IBDataSetRentedBeforeInsert
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from RENTEDART'
      'where'
      '  RENART_NO = :OLD_RENART_NO')
    InsertSQL.Strings = (
      'insert into RENTEDART'
      
        '  (RENART_NO, CLI_NO, ART_NO, SCHED_NO, STATO, ETA, PESO, ALTEZZ' +
        'A, '
      'SESSO, '
      '   CMSUOLA, LIVELLO, ZFACTOR, CODICE)'
      'values'
      
        '  (:RENART_NO, :CLI_NO, :ART_NO, :SCHED_NO, :STATO, :ETA, :PESO,' +
        ' '
      ':ALTEZZA, '
      '   :SESSO, :CMSUOLA, :LIVELLO, :ZFACTOR, :CODICE)')
    RefreshSQL.Strings = (
      
        'SELECT articolo.ART_NO,rentedart.renart_no, rentedart.sched_no, ' +
        'articolo.cli_no, '
      'articolo.TIPO, '
      'articolo.BRAND, '
      
        'articolo.DESCRIZIONE,articolo.MISURA,articolo.STAGIONE,rentedart' +
        '.STATO,count'
      
        '(rentedart.ART_NO)  AS QTA, articolo.available, articolo.eancode' +
        ', rentedart.eta, '
      
        'rentedart.peso, rentedart.altezza, rentedart.sesso, rentedart.cm' +
        'suola, rentedart.livello, '
      'rentedart.zfactor, rentedart.codice'
      
        'FROM articolo join rentedart on articolo.art_no=rentedart.art_no' +
        ' join schedule on '
      'schedule.SCHED_NO=rentedart.sched_no '
      'WHERE RENTEDART.SCHED_NO = :SCHEDNO'
      
        'GROUP BY articolo.ART_NO, rentedart.renart_no,rentedart.sched_no' +
        ', articolo.cli_no, '
      'articolo.ART_NO, '
      'articolo.tipo '
      ',articolo.BRAND, '
      
        'articolo.DESCRIZIONE,articolo.MISURA,articolo.STAGIONE,rentedart' +
        '.STATO, '
      
        'rentedart.ART_NO, articolo.available, articolo.eancode, rentedar' +
        't.eta, rentedart.peso, '
      
        'rentedart.altezza, rentedart.sesso, rentedart.cmsuola, rentedart' +
        '.livello, '
      'rentedart.zfactor, rentedart.codice')
    SelectSQL.Strings = (
      
        'SELECT articolo.ART_NO,rentedart.renart_no, rentedart.sched_no, ' +
        'articolo.cli_no, articolo.TIPO, '
      'articolo.BRAND, '
      
        'articolo.DESCRIZIONE,articolo.MISURA,articolo.STAGIONE,rentedart' +
        '.STATO,count(rentedart.ART_NO)  AS QTA, articolo.available, arti' +
        'colo.eancode, rentedart.eta, '
      
        'rentedart.peso, rentedart.altezza, rentedart.sesso, rentedart.cm' +
        'suola, rentedart.livello, '
      'rentedart.zfactor, rentedart.codice'
      
        'FROM articolo join rentedart on articolo.art_no=rentedart.art_no' +
        ' join schedule on '
      'schedule.SCHED_NO=rentedart.sched_no '
      'WHERE RENTEDART.SCHED_NO =:SCHEDNO'
      
        'GROUP BY articolo.ART_NO, rentedart.renart_no,rentedart.sched_no' +
        ', articolo.cli_no, articolo.ART_NO, '
      'articolo.tipo '
      ',articolo.BRAND, '
      
        'articolo.DESCRIZIONE,articolo.MISURA,articolo.STAGIONE,rentedart' +
        '.STATO, '
      
        'rentedart.ART_NO, articolo.available, articolo.eancode, rentedar' +
        't.eta, rentedart.peso, '
      
        'rentedart.altezza, rentedart.sesso, rentedart.cmsuola, rentedart' +
        '.livello, '
      'rentedart.zfactor, rentedart.codice')
    ModifySQL.Strings = (
      'update RENTEDART'
      'set'
      '  RENART_NO = :RENART_NO,'
      '  CLI_NO = :CLI_NO,'
      '  ART_NO = :ART_NO,'
      '  SCHED_NO = :SCHED_NO,'
      '  STATO = :STATO,'
      '  ETA = :ETA,'
      '  PESO = :PESO,'
      '  ALTEZZA = :ALTEZZA,'
      '  SESSO = :SESSO,'
      '  CMSUOLA = :CMSUOLA,'
      '  LIVELLO = :LIVELLO,'
      '  ZFACTOR = :ZFACTOR,'
      '  CODICE = :CODICE'
      'where'
      '  RENART_NO = :OLD_RENART_NO')
    GeneratorField.Field = 'RENART_NO'
    GeneratorField.Generator = 'RENARTNO_GEN'
    Left = 437
    Top = 160
    object IBDataSetRentedCLI_NO: TFloatField
      FieldName = 'CLI_NO'
      Origin = 'RENTEDART.CLI_NO'
      Required = True
    end
    object IBDataSetRentedART_NO: TFloatField
      FieldName = 'ART_NO'
      Origin = 'RENTEDART.ART_NO'
      Required = True
    end
    object IBDataSetRentedSCHED_NO: TFloatField
      FieldName = 'SCHED_NO'
      Origin = 'RENTEDART.SCHED_NO'
      Required = True
    end
    object IBDataSetRentedSTATO: TIBStringField
      Alignment = taRightJustify
      FieldName = 'STATO'
      Origin = 'RENTEDART.STATO'
    end
    object IBDataSetRentedSTAGIONE: TIBStringField
      Alignment = taRightJustify
      FieldName = 'STAGIONE'
      Origin = 'ARTICOLO.STAGIONE'
      Size = 10
    end
    object IBDataSetRentedDESCRIZIONE: TIBStringField
      Alignment = taRightJustify
      FieldName = 'DESCRIZIONE'
      Origin = 'ARTICOLO.DESCRIZIONE'
      Size = 35
    end
    object IBDataSetRentedBRAND: TIBStringField
      Alignment = taRightJustify
      FieldName = 'BRAND'
      Origin = 'ARTICOLO.BRAND'
      Size = 30
    end
    object IBDataSetRentedTIPO: TIBStringField
      Alignment = taRightJustify
      FieldName = 'TIPO'
      Origin = 'ARTICOLO.TIPO'
      Size = 40
    end
    object IBDataSetRentedMISURA: TIBStringField
      Alignment = taRightJustify
      FieldName = 'MISURA'
      Origin = 'ARTICOLO.MISURA'
      Size = 40
    end
    object IBDataSetRentedAVAILABLE: TIBStringField
      Alignment = taRightJustify
      FieldName = 'AVAILABLE'
      Origin = 'ARTICOLO.AVAILABLE'
      Size = 15
    end
    object IBDataSetRentedEANCODE: TIBStringField
      FieldName = 'EANCODE'
      Origin = 'ARTICOLO.EANCODE'
      Size = 30
    end
    object IBDataSetRentedETA: TIBStringField
      FieldName = 'ETA'
      Origin = 'RENTEDART.ETA'
      OnChange = IBDataSetRentedETAChange
      Size = 10
    end
    object IBDataSetRentedPESO: TIBStringField
      FieldName = 'PESO'
      Origin = 'RENTEDART.PESO'
      OnChange = IBDataSetRentedPESOChange
      Size = 10
    end
    object IBDataSetRentedALTEZZA: TIBStringField
      FieldName = 'ALTEZZA'
      Origin = 'RENTEDART.ALTEZZA'
      OnChange = IBDataSetRentedALTEZZAChange
      Size = 10
    end
    object IBDataSetRentedSESSO: TIBStringField
      FieldName = 'SESSO'
      Origin = 'RENTEDART.SESSO'
      OnChange = IBDataSetRentedSESSOChange
      Size = 1
    end
    object IBDataSetRentedCMSUOLA: TIBStringField
      FieldName = 'CMSUOLA'
      Origin = 'RENTEDART.CMSUOLA'
      OnChange = IBDataSetRentedCMSUOLAChange
      Size = 10
    end
    object IBDataSetRentedLIVELLO: TIBStringField
      FieldName = 'LIVELLO'
      Origin = 'RENTEDART.LIVELLO'
      OnChange = IBDataSetRentedLIVELLOChange
      Size = 10
    end
    object IBDataSetRentedZFACTOR: TIBStringField
      FieldName = 'ZFACTOR'
      Origin = 'RENTEDART.ZFACTOR'
      Size = 5
    end
    object IBDataSetRentedCODICE: TIBStringField
      FieldName = 'CODICE'
      Origin = 'RENTEDART.CODICE'
      Size = 10
    end
    object IBDataSetRentedRENART_NO: TFloatField
      FieldName = 'RENART_NO'
      Origin = 'RENTEDART.RENART_NO'
      Required = True
    end
  end
  object IBTransaction6: TIBTransaction
    Active = False
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 437
    Top = 64
  end
  object IBTransaction7: TIBTransaction
    Active = False
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 533
    Top = 64
  end
  object DSSchedule: TDataSource
    DataSet = IBDataSetSchedule
    OnDataChange = DSScheduleDataChange
    Left = 533
    Top = 112
  end
  object IBDataSetSchedule: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction7
    ForcedRefresh = True
    AfterCancel = IBDataSetScheduleAfterCancel
    AfterDelete = IBDataSetScheduleAfterDelete
    AfterEdit = IBDataSetScheduleAfterEdit
    AfterInsert = IBDataSetScheduleAfterInsert
    AfterOpen = IBDataSetScheduleAfterOpen
    AfterPost = IBDataSetScheduleAfterPost
    AfterRefresh = IBDataSetScheduleAfterRefresh
    AfterScroll = IBDataSetScheduleAfterScroll
    BeforeCancel = IBDataSetScheduleBeforeCancel
    BeforeDelete = IBDataSetScheduleBeforeDelete
    BeforeEdit = IBDataSetScheduleBeforeEdit
    BeforeInsert = IBDataSetScheduleBeforeInsert
    BeforePost = IBDataSetScheduleBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from SCHEDULE'
      'where'
      '  SCHED_NO = :OLD_SCHED_NO')
    InsertSQL.Strings = (
      'insert into SCHEDULE'
      
        '  (SCHED_NO, CLI_NO, EANCODE, EANCODE2, DATAINTRO, DATASTARTRENT' +
        ', '
      'DATATAKEBACK, DATACLOSESCHD, '
      '   DAYUSE, SUBTOTALE, DISCOUNT, NETPRICE, FEEDAYLATE, '
      'OWNER, NOTE, '
      '   STATO, STATO_CONS, PAGATO,NOADV,STOPADV,RECEIPTSENT)'
      'values'
      '  (:SCHED_NO, :CLI_NO, :EANCODE, :EANCODE2, :DATAINTRO, '
      ':DATASTARTRENT, '
      ':DATATAKEBACK, '
      '   :DATACLOSESCHD, :DAYUSE, :SUBTOTALE, :DISCOUNT, :NETPRICE, '
      ':FEEDAYLATE, '
      
        '   :OWNER, :NOTE, :STATO, :STATO_CONS, :PAGATO, :NOADV, :STOPADV' +
        ', '
      ':RECEIPTSENT)')
    RefreshSQL.Strings = (
      'SELECT COGNRAGSOC, NOME, INDIRIZZO, N_DOC, SCHEDULE.*'
      'FROM SCHEDULE JOIN CLIENTI ON CLIENTI.CLI_NO = SCHEDULE.CLI_NO'
      'where  SCHED_NO = :SCHED_NO')
    SelectSQL.Strings = (
      'SELECT COGNRAGSOC, NOME, INDIRIZZO, N_DOC, SCHEDULE.*'
      'FROM SCHEDULE JOIN CLIENTI ON CLIENTI.CLI_NO = SCHEDULE.CLI_NO'
      'ORDER BY SCHED_NO'
      '')
    ModifySQL.Strings = (
      'update SCHEDULE'
      'set'
      '  SCHED_NO = :SCHED_NO,'
      '  CLI_NO = :CLI_NO,'
      '  EANCODE = :EANCODE,'
      '  EANCODE2 = :EANCODE2,'
      '  DATAINTRO = :DATAINTRO,'
      '  DATASTARTRENT = :DATASTARTRENT,'
      '  DATATAKEBACK = :DATATAKEBACK,'
      '  DATACLOSESCHD = :DATACLOSESCHD,'
      '  DAYUSE = :DAYUSE,'
      '  SUBTOTALE = :SUBTOTALE,'
      '  DISCOUNT = :DISCOUNT,'
      '  NETPRICE = :NETPRICE,'
      '  FEEDAYLATE = :FEEDAYLATE,'
      '  OWNER = :OWNER,'
      '  NOTE = :NOTE,'
      '  STATO = :STATO,'
      '  STATO_CONS = :STATO_CONS,'
      '  PAGATO = :PAGATO,'
      '  NOADV = :NOADV,'
      ' STOPADV =:STOPADV,'
      ' RECEIPTSENT=:RECEIPTSENT'
      ''
      'where'
      '  SCHED_NO = :OLD_SCHED_NO')
    GeneratorField.Field = 'SCHED_NO'
    GeneratorField.Generator = 'SCHEDNO_GEN'
    Left = 533
    Top = 160
    object IBDataSetScheduleSCHED_NO: TFloatField
      FieldName = 'SCHED_NO'
      Origin = 'SCHEDULE.SCHED_NO'
      ReadOnly = True
      Required = True
    end
    object IBDataSetScheduleCLI_NO: TFloatField
      FieldName = 'CLI_NO'
      Origin = 'SCHEDULE.CLI_NO'
      ReadOnly = True
    end
    object IBDataSetScheduleEANCODE: TIBStringField
      FieldName = 'EANCODE'
      Origin = 'SCHEDULE.EANCODE'
      ReadOnly = True
      Size = 30
    end
    object IBDataSetScheduleDATAINTRO: TDateTimeField
      FieldName = 'DATAINTRO'
      Origin = 'SCHEDULE.DATAINTRO'
      ReadOnly = True
    end
    object IBDataSetScheduleDATASTARTRENT: TDateTimeField
      FieldName = 'DATASTARTRENT'
      Origin = 'SCHEDULE.DATASTARTRENT'
      OnSetText = IBDataSetScheduleDATASTARTRENTSetText
      OnValidate = IBDataSetScheduleDATASTARTRENTValidate
    end
    object IBDataSetScheduleDATATAKEBACK: TDateTimeField
      FieldName = 'DATATAKEBACK'
      Origin = 'SCHEDULE.DATATAKEBACK'
      OnValidate = IBDataSetScheduleDATATAKEBACKValidate
    end
    object IBDataSetScheduleDATACLOSESCHD: TDateTimeField
      FieldName = 'DATACLOSESCHD'
      Origin = 'SCHEDULE.DATACLOSESCHD'
    end
    object IBDataSetScheduleDAYUSE: TIntegerField
      AutoGenerateValue = arDefault
      DefaultExpression = '0'
      FieldName = 'DAYUSE'
      Origin = 'SCHEDULE.DAYUSE'
      OnChange = IBDataSetScheduleDAYUSEChange
      OnSetText = IBDataSetScheduleDAYUSESetText
    end
    object IBDataSetScheduleSUBTOTALE: TFloatField
      FieldName = 'SUBTOTALE'
      Origin = 'SCHEDULE.SUBTOTALE'
      OnChange = IBDataSetScheduleSUBTOTALEChange
      OnSetText = IBDataSetScheduleSUBTOTALESetText
      currency = True
    end
    object IBDataSetScheduleDISCOUNT: TFloatField
      FieldName = 'DISCOUNT'
      Origin = 'SCHEDULE.DISCOUNT'
      OnSetText = IBDataSetScheduleDISCOUNTSetText
    end
    object IBDataSetScheduleNETPRICE: TFloatField
      FieldName = 'NETPRICE'
      Origin = 'SCHEDULE.NETPRICE'
      OnChange = IBDataSetScheduleNETPRICEChange
      OnSetText = IBDataSetScheduleNETPRICESetText
      currency = True
    end
    object IBDataSetScheduleFEEDAYLATE: TFloatField
      DisplayWidth = 5
      FieldName = 'FEEDAYLATE'
      Origin = 'SCHEDULE.FEEDAYLATE'
      currency = True
      Precision = 5
    end
    object IBDataSetScheduleOWNER: TIBStringField
      FieldName = 'OWNER'
      Origin = 'SCHEDULE.OWNER'
      Size = 25
    end
    object IBDataSetScheduleNOTE: TMemoField
      FieldName = 'NOTE'
      Origin = 'SCHEDULE.NOTE'
      BlobType = ftMemo
      Size = 8
    end
    object IBDataSetScheduleSTATO: TIBStringField
      FieldName = 'STATO'
      Origin = 'SCHEDULE.STATO'
      OnChange = IBDataSetScheduleSTATOChange
    end
    object IBDataSetScheduleCOGNRAGSOC: TIBStringField
      FieldName = 'COGNRAGSOC'
      Origin = 'CLIENTI.COGNRAGSOC'
      Size = 35
    end
    object IBDataSetScheduleNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'CLIENTI.NOME'
      Size = 30
    end
    object IBDataSetScheduleSTATO_CONS: TIBStringField
      FieldName = 'STATO_CONS'
      Origin = 'SCHEDULE.STATO_CONS'
    end
    object IBDataSetSchedulePAGATO: TSmallintField
      FieldName = 'PAGATO'
      Origin = 'SCHEDULE.PAGATO'
      OnValidate = IBDataSetSchedulePAGATOValidate
    end
    object IBDataSetScheduleEANCODE2: TIBStringField
      FieldName = 'EANCODE2'
      Origin = 'SCHEDULE.EANCODE2'
      Size = 14
    end
    object IBDataSetScheduleINDIRIZZO: TIBStringField
      FieldName = 'INDIRIZZO'
      Origin = 'CLIENTI.INDIRIZZO'
      Size = 40
    end
    object IBDataSetScheduleN_DOC: TIBStringField
      FieldName = 'N_DOC'
      Origin = 'CLIENTI.N_DOC'
    end
    object IBDataSetScheduleDATELASTADV: TDateTimeField
      FieldName = 'DATELASTADV'
      Origin = 'SCHEDULE.DATELASTADV'
    end
    object IBDataSetScheduleSC_NUMCASSA: TIntegerField
      FieldName = 'SC_NUMCASSA'
      Origin = 'SCHEDULE.SC_NUMCASSA'
    end
    object IBDataSetScheduleSC_DATAORA: TDateTimeField
      FieldName = 'SC_DATAORA'
      Origin = 'SCHEDULE.SC_DATAORA'
    end
    object IBDataSetScheduleSC_NUMDOC: TIntegerField
      FieldName = 'SC_NUMDOC'
      Origin = 'SCHEDULE.SC_NUMDOC'
    end
    object IBDataSetScheduleSC_IMPORTO: TFloatField
      FieldName = 'SC_IMPORTO'
      Origin = 'SCHEDULE.SC_IMPORTO'
    end
    object IBDataSetScheduleNOADV: TIntegerField
      FieldName = 'NOADV'
      Origin = 'SCHEDULE.NOADV'
    end
    object IBDataSetScheduleSTOPADV: TIntegerField
      FieldName = 'STOPADV'
      Origin = 'SCHEDULE.STOPADV'
    end
    object IBDataSetScheduleRECEIPTSENT: TDateTimeField
      FieldName = 'RECEIPTSENT'
      Origin = 'SCHEDULE.RECEIPTSENT'
    end
  end
  object IBQueryArtRented: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction8
    ForcedRefresh = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'SELECT RENTEDART.ART_NO  FROM RENTEDART WHERE RENTEDART.SCHED_NO' +
        ' = :SCHED AND RENTEDART.CLI_NO = :CLINO')
    Left = 629
    Top = 160
    ParamData = <
      item
        DataType = ftInteger
        Name = 'SCHED'
        ParamType = ptUnknown
        Value = 6
      end
      item
        DataType = ftUnknown
        Name = 'CLINO'
        ParamType = ptUnknown
      end>
    object IBQueryArtRentedART_NO: TFloatField
      FieldName = 'ART_NO'
      Origin = 'RENTEDART.ART_NO'
      Required = True
    end
  end
  object DSQueryArtRented: TDataSource
    DataSet = IBQueryArtRented
    Left = 629
    Top = 112
  end
  object IBTransaction8: TIBTransaction
    Active = False
    DefaultDatabase = IBDatabase1
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 629
    Top = 64
  end
  object IBQueryArticolo: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction9
    ForcedRefresh = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'SELECT ART_NO,TIPO, BRAND, DESCRIZIONE, MISURA, STAGIONE, COLORE' +
        ', INTRODATE'
      'FROM ARTICOLO'
      'WHERE ART_NO = :ARTNO')
    Left = 717
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ARTNO'
        ParamType = ptUnknown
      end>
    object IBQueryArticoloTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = 'ARTICOLO.TIPO'
      Size = 40
    end
    object IBQueryArticoloBRAND: TIBStringField
      FieldName = 'BRAND'
      Origin = 'ARTICOLO.BRAND'
      Size = 30
    end
    object IBQueryArticoloDESCRIZIONE: TIBStringField
      FieldName = 'DESCRIZIONE'
      Origin = 'ARTICOLO.DESCRIZIONE'
      Size = 35
    end
    object IBQueryArticoloMISURA: TIBStringField
      FieldName = 'MISURA'
      Origin = 'ARTICOLO.MISURA'
      Size = 40
    end
    object IBQueryArticoloSTAGIONE: TIBStringField
      FieldName = 'STAGIONE'
      Origin = 'ARTICOLO.STAGIONE'
      Size = 10
    end
    object IBQueryArticoloCOLORE: TIBStringField
      FieldName = 'COLORE'
      Origin = 'ARTICOLO.COLORE'
      Size = 40
    end
    object IBQueryArticoloINTRODATE: TDateTimeField
      FieldName = 'INTRODATE'
      Origin = 'ARTICOLO.INTRODATE'
    end
    object IBQueryArticoloART_NO: TFloatField
      FieldName = 'ART_NO'
      Origin = 'ARTICOLO.ART_NO'
      Required = True
    end
  end
  object DSQueryArticolo: TDataSource
    DataSet = IBQueryArticolo
    Left = 717
    Top = 112
  end
  object IBTransaction9: TIBTransaction
    Active = False
    DefaultDatabase = IBDatabase1
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 715
    Top = 64
  end
  object IBQueryTemp: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction6
    ForcedRefresh = True
    BufferChunks = 1000
    CachedUpdates = False
    Left = 800
    Top = 160
  end
  object DSQueryTemp: TDataSource
    DataSet = IBQueryTemp
    Left = 797
    Top = 112
  end
  object IBTransaction10: TIBTransaction
    Active = False
    DefaultDatabase = IBDatabase1
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 797
    Top = 64
  end
  object DSListino: TDataSource
    DataSet = IBDataSetListino
    OnDataChange = DSListinoDataChange
    Left = 877
    Top = 112
  end
  object IBDataSetListino: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction11
    ForcedRefresh = True
    AfterCancel = IBDataSetListinoAfterCancel
    AfterDelete = IBDataSetListinoAfterDelete
    AfterPost = IBDataSetListinoAfterPost
    BeforeCancel = IBDataSetListinoBeforeCancel
    BeforeDelete = IBDataSetListinoBeforeDelete
    BeforeEdit = IBDataSetListinoBeforeEdit
    BeforeInsert = IBDataSetListinoBeforeInsert
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from PRICELIST'
      'where'
      '  PRICE_NO = :OLD_PRICE_NO')
    InsertSQL.Strings = (
      'insert into PRICELIST'
      
        '  (PRICE_NO, TIPO, DESCRIZIONE, D1, D2, D3, D4, D5, D6, D7, D8, ' +
        'D9, D10, '
      
        '   D11, D12, D13, D14, D15, D16, D17, D18, D19, D20, DA21A31, DA' +
        '32A45, '
      '   DA46A60, WEEKEND, STAGIONE, REPARTO, SOTTOREP)'
      'values'
      
        '  (:PRICE_NO, :TIPO, :DESCRIZIONE, :D1, :D2, :D3, :D4, :D5, :D6,' +
        ' :D7, :D8, '
      
        '   :D9, :D10, :D11, :D12, :D13, :D14, :D15, :D16, :D17, :D18, :D' +
        '19, :D20, '
      '   :DA21A31, :DA32A45, :DA46A60, :WEEKEND, :STAGIONE, :REPARTO, '
      ':SOTTOREP)')
    RefreshSQL.Strings = (
      'Select '
      '  PRICE_NO,'
      '  TIPO,'
      '  DESCRIZIONE,'
      '  D1,'
      '  D2,'
      '  D3,'
      '  D4,'
      '  D5,'
      '  D6,'
      '  D7,'
      '  D8,'
      '  D9,'
      '  D10,'
      '  D11,'
      '  D12,'
      '  D13,'
      '  D14,'
      '  D15,'
      '  D16,'
      '  D17,'
      '  D18,'
      '  D19,'
      '  D20,'
      '  DA21A31,'
      '  DA32A45,'
      '  DA46A60,'
      '  WEEKEND,'
      '  STAGIONE,'
      'REPARTO,'
      'SOTTOREP'
      'from PRICELIST '
      'where'
      '  PRICE_NO = :PRICE_NO')
    SelectSQL.Strings = (
      'SELECT *'
      'FROM PRICELIST'
      'ORDER BY PRICE_NO')
    ModifySQL.Strings = (
      'update PRICELIST'
      'set'
      '  PRICE_NO = :PRICE_NO,'
      '  TIPO = :TIPO,'
      '  DESCRIZIONE = :DESCRIZIONE,'
      '  D1 = :D1,'
      '  D2 = :D2,'
      '  D3 = :D3,'
      '  D4 = :D4,'
      '  D5 = :D5,'
      '  D6 = :D6,'
      '  D7 = :D7,'
      '  D8 = :D8,'
      '  D9 = :D9,'
      '  D10 = :D10,'
      '  D11 = :D11,'
      '  D12 = :D12,'
      '  D13 = :D13,'
      '  D14 = :D14,'
      '  D15 = :D15,'
      '  D16 = :D16,'
      '  D17 = :D17,'
      '  D18 = :D18,'
      '  D19 = :D19,'
      '  D20 = :D20,'
      '  DA21A31 = :DA21A31,'
      '  DA32A45 = :DA32A45,'
      '  DA46A60 = :DA46A60,'
      '  WEEKEND = :WEEKEND,'
      '  STAGIONE = :STAGIONE,'
      'REPARTO = :REPARTO,'
      'SOTTOREP = :SOTTOREP'
      'where'
      '  PRICE_NO = :OLD_PRICE_NO')
    GeneratorField.Field = 'PRICE_NO'
    GeneratorField.Generator = 'PRICENO_GEN'
    Left = 877
    Top = 160
    object IBDataSetListinoPRICE_NO: TFloatField
      FieldName = 'PRICE_NO'
      Origin = 'PRICELIST.PRICE_NO'
      Required = True
    end
    object IBDataSetListinoTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = 'PRICELIST.TIPO'
      Size = 40
    end
    object IBDataSetListinoDESCRIZIONE: TMemoField
      FieldName = 'DESCRIZIONE'
      Origin = 'PRICELIST.DESCRIZIONE'
      BlobType = ftMemo
      Size = 8
    end
    object IBDataSetListinoD1: TFloatField
      FieldName = 'D1'
      Origin = 'PRICELIST.D1'
    end
    object IBDataSetListinoD2: TFloatField
      FieldName = 'D2'
      Origin = 'PRICELIST.D2'
    end
    object IBDataSetListinoD3: TFloatField
      FieldName = 'D3'
      Origin = 'PRICELIST.D3'
    end
    object IBDataSetListinoD4: TFloatField
      FieldName = 'D4'
      Origin = 'PRICELIST.D4'
    end
    object IBDataSetListinoD5: TFloatField
      FieldName = 'D5'
      Origin = 'PRICELIST.D5'
    end
    object IBDataSetListinoD6: TFloatField
      FieldName = 'D6'
      Origin = 'PRICELIST.D6'
    end
    object IBDataSetListinoD7: TFloatField
      FieldName = 'D7'
      Origin = 'PRICELIST.D7'
    end
    object IBDataSetListinoD8: TFloatField
      FieldName = 'D8'
      Origin = 'PRICELIST.D8'
    end
    object IBDataSetListinoD9: TFloatField
      FieldName = 'D9'
      Origin = 'PRICELIST.D9'
    end
    object IBDataSetListinoD10: TFloatField
      FieldName = 'D10'
      Origin = 'PRICELIST.D10'
    end
    object IBDataSetListinoD11: TFloatField
      FieldName = 'D11'
      Origin = 'PRICELIST.D11'
    end
    object IBDataSetListinoD12: TFloatField
      FieldName = 'D12'
      Origin = 'PRICELIST.D12'
    end
    object IBDataSetListinoD13: TFloatField
      FieldName = 'D13'
      Origin = 'PRICELIST.D13'
    end
    object IBDataSetListinoD14: TFloatField
      FieldName = 'D14'
      Origin = 'PRICELIST.D14'
    end
    object IBDataSetListinoD15: TFloatField
      FieldName = 'D15'
      Origin = 'PRICELIST.D15'
    end
    object IBDataSetListinoD16: TFloatField
      FieldName = 'D16'
      Origin = 'PRICELIST.D16'
    end
    object IBDataSetListinoD17: TFloatField
      FieldName = 'D17'
      Origin = 'PRICELIST.D17'
    end
    object IBDataSetListinoD18: TFloatField
      FieldName = 'D18'
      Origin = 'PRICELIST.D18'
    end
    object IBDataSetListinoD19: TFloatField
      FieldName = 'D19'
      Origin = 'PRICELIST.D19'
    end
    object IBDataSetListinoD20: TFloatField
      FieldName = 'D20'
      Origin = 'PRICELIST.D20'
    end
    object IBDataSetListinoDA21A31: TFloatField
      FieldName = 'DA21A31'
      Origin = 'PRICELIST.DA21A31'
    end
    object IBDataSetListinoDA32A45: TFloatField
      FieldName = 'DA32A45'
      Origin = 'PRICELIST.DA32A45'
    end
    object IBDataSetListinoDA46A60: TFloatField
      FieldName = 'DA46A60'
      Origin = 'PRICELIST.DA46A60'
    end
    object IBDataSetListinoWEEKEND: TFloatField
      FieldName = 'WEEKEND'
      Origin = 'PRICELIST.WEEKEND'
    end
    object IBDataSetListinoSTAGIONE: TFloatField
      FieldName = 'STAGIONE'
      Origin = 'PRICELIST.STAGIONE'
    end
    object IBDataSetListinoREPARTO: TIBStringField
      FieldName = 'REPARTO'
      Origin = 'PRICELIST.REPARTO'
      Size = 50
    end
    object IBDataSetListinoSOTTOREP: TIBStringField
      FieldName = 'SOTTOREP'
      Origin = 'PRICELIST.SOTTOREP'
      Size = 50
    end
  end
  object IBTransaction11: TIBTransaction
    Active = False
    DefaultDatabase = IBDatabase1
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 879
    Top = 64
  end
  object IBDataSetOp: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction12
    ForcedRefresh = True
    AfterCancel = IBDataSetOpAfterCancel
    AfterDelete = IBDataSetOpAfterDelete
    AfterPost = IBDataSetOpAfterPost
    BeforeCancel = IBDataSetOpBeforeCancel
    BeforeDelete = IBDataSetOpBeforeDelete
    BeforeEdit = IBDataSetOpBeforeEdit
    BeforeInsert = IBDataSetOpBeforeInsert
    BeforePost = IBDataSetOpBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from OPERATORI'
      'where'
      '  DIP_NO = :OLD_DIP_NO')
    InsertSQL.Strings = (
      'insert into OPERATORI'
      '  (DIP_NO, EANCODE, EANCODE2, NOME, COGNOME, TELEFONO, REPARTO, '
      'CODICE, '
      'DATAINTRO, '
      '   NOTE, IMAGE, TESSERA)'
      'values'
      '  (:DIP_NO, :EANCODE, :EANCODE2, :NOME, :COGNOME, :TELEFONO, '
      ':REPARTO, :CODICE, '
      ':DATAINTRO, '
      '   :NOTE, :IMAGE, :TESSERA)')
    RefreshSQL.Strings = (
      'Select '
      '  DIP_NO,'
      '  EANCODE,'
      '  EANCODE2,'
      '  NOME,'
      '  COGNOME,'
      '  TELEFONO,'
      '  REPARTO,'
      '  CODICE,'
      '  DATAINTRO,'
      '  NOTE,'
      '  IMAGE,'
      '  TESSERA'
      'from OPERATORI '
      'where'
      '  DIP_NO = :DIP_NO')
    SelectSQL.Strings = (
      'select * from OPERATORI')
    ModifySQL.Strings = (
      'update OPERATORI'
      'set'
      '  DIP_NO = :DIP_NO,'
      '  EANCODE = :EANCODE,'
      '  EANCODE2 = :EANCODE2,'
      '  NOME = :NOME,'
      '  COGNOME = :COGNOME,'
      '  TELEFONO = :TELEFONO,'
      '  REPARTO = :REPARTO,'
      '  CODICE = :CODICE,'
      '  DATAINTRO = :DATAINTRO,'
      '  NOTE = :NOTE,'
      '  IMAGE = :IMAGE,'
      '  TESSERA = :TESSERA'
      'where'
      '  DIP_NO = :OLD_DIP_NO')
    GeneratorField.Field = 'DIP_NO'
    GeneratorField.Generator = 'DIPNO_GEN'
    Left = 965
    Top = 160
    object IBDataSetOpDIP_NO: TFloatField
      FieldName = 'DIP_NO'
      Origin = 'OPERATORI.DIP_NO'
      Required = True
    end
    object IBDataSetOpEANCODE: TIBStringField
      FieldName = 'EANCODE'
      Origin = 'OPERATORI.EANCODE'
      Size = 30
    end
    object IBDataSetOpNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'OPERATORI.NOME'
      Size = 30
    end
    object IBDataSetOpCOGNOME: TIBStringField
      FieldName = 'COGNOME'
      Origin = 'OPERATORI.COGNOME'
      Size = 30
    end
    object IBDataSetOpTELEFONO: TIBStringField
      FieldName = 'TELEFONO'
      Origin = 'OPERATORI.TELEFONO'
    end
    object IBDataSetOpREPARTO: TIBStringField
      FieldName = 'REPARTO'
      Origin = 'OPERATORI.REPARTO'
    end
    object IBDataSetOpCODICE: TIntegerField
      FieldName = 'CODICE'
      Origin = 'OPERATORI.CODICE'
    end
    object IBDataSetOpDATAINTRO: TDateTimeField
      FieldName = 'DATAINTRO'
      Origin = 'OPERATORI.DATAINTRO'
    end
    object IBDataSetOpNOTE: TMemoField
      FieldName = 'NOTE'
      Origin = 'OPERATORI.NOTE'
      BlobType = ftMemo
      Size = 8
    end
    object IBDataSetOpIMAGE: TBlobField
      FieldName = 'IMAGE'
      Origin = 'OPERATORI.IMAGE'
      Size = 8
    end
    object IBDataSetOpTESSERA: TSmallintField
      DefaultExpression = '0'
      FieldName = 'TESSERA'
      Origin = 'OPERATORI.TESSERA'
    end
    object IBDataSetOpEANCODE2: TIBStringField
      FieldName = 'EANCODE2'
      Origin = 'OPERATORI.EANCODE2'
      Size = 14
    end
  end
  object DSOp: TDataSource
    DataSet = IBDataSetOp
    OnDataChange = DSOpDataChange
    Left = 965
    Top = 112
  end
  object IBTransaction12: TIBTransaction
    Active = False
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 965
    Top = 64
  end
  object IBDataSetParam: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction13
    AfterCancel = IBDataSetParamAfterCancel
    AfterDelete = IBDataSetParamAfterDelete
    AfterOpen = IBDataSetParamAfterOpen
    AfterPost = IBDataSetParamAfterPost
    BeforeCancel = IBDataSetParamBeforeCancel
    BeforeDelete = IBDataSetParamBeforeDelete
    BeforeEdit = IBDataSetParamBeforeEdit
    BeforeInsert = IBDataSetParamBeforeInsert
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from PARAMETRI'
      'where'
      '  PARAM_NO = :OLD_PARAM_NO')
    InsertSQL.Strings = (
      'insert into PARAMETRI'
      
        '  (PARAM_NO, RAGSOC, ADMINPSW, EANTOSCAN, TAXFEELATE, LOGO, NOTE' +
        ', '
      'NUMSCHEDPRN, '
      '   ADDRESS, SERVERDB, ROOT, NOTE1, PREF_ART_NO, PREF_CLI_NO, '
      'PRE_SCHED_NO, '
      '   PRE_OP_NO, PRE_CV_NO, PREF_RIP_NO, PREF_INC_NO, RICUSATO, '
      'ENABCV, ENABFINV, '
      
        '   ENABFINSCHE, ENABRIP, ENABOPER, ENABREP, ENABTREE, PRINTER_ET' +
        'IC, '
      'PRINTER_FORM, '
      '   ENABTENNIS, DAYWORKREADY, STRADVFRMDATA, DAYRESERVSTART, '
      'DAYRESERVBACK, SOFTWARE_VERSION, IGNORESERVATION, '
      'PRINTRIPNEWBARCODE, DATA_ALLARM_LIM_SMS)'
      'values'
      
        '  (:PARAM_NO, :RAGSOC, :ADMINPSW, :EANTOSCAN, :TAXFEELATE, :LOGO' +
        ', '
      ':NOTE, '
      
        '   :NUMSCHEDPRN, :ADDRESS, :SERVERDB, :ROOT, :NOTE1, :PREF_ART_N' +
        'O, '
      ':PREF_CLI_NO, '
      '   :PRE_SCHED_NO, :PRE_OP_NO, :PRE_CV_NO, :PREF_RIP_NO, '
      ':PREF_INC_NO, :RICUSATO, '
      
        '   :ENABCV, :ENABFINV, :ENABFINSCHE, :ENABRIP, :ENABOPER, :ENABR' +
        'EP, '
      ':ENABTREE, '
      '   :PRINTER_ETIC, :PRINTER_FORM, :ENABTENNIS, :DAYWORKREADY, '
      ':STRADVFRMDATA, '
      '   :DAYRESERVSTART, :DAYRESERVBACK, :SOFTWARE_VERSION, '
      ' :IGNORESERVATION, :PRINTRIPNEWBARCODE, :DATA_ALLARM_LIM_SMS)')
    RefreshSQL.Strings = (
      'Select '
      '  PARAM_NO,'
      '  RAGSOC,'
      '  ADMINPSW,'
      '  EANTOSCAN,'
      '  TAXFEELATE,'
      '  LOGO,'
      '  NOTE,'
      '  NUMSCHEDPRN,'
      '  ADDRESS,'
      '  SERVERDB,'
      '  ROOT,'
      '  NOTE1,'
      '  PREF_ART_NO,'
      '  PREF_CLI_NO,'
      '  PRE_SCHED_NO,'
      '  PRE_OP_NO,'
      '  PRE_CV_NO,'
      '  PREF_RIP_NO,'
      '  PREF_INC_NO,'
      '  RICUSATO,'
      '  ENABCV,'
      '  ENABFINV,'
      '  ENABFINSCHE,'
      '  ENABRIP,'
      '  ENABOPER,'
      '  ENABREP,'
      '  ENABTREE,'
      '  PRINTER_ETIC,'
      '  PRINTER_FORM,'
      '  ENABTENNIS,'
      '  DAYWORKREADY,'
      '  STRADVFRMDATA,'
      '  DAYRESERVSTART,'
      '  DAYRESERVBACK,'
      '  SOFTWARE_VERSION,'
      '  IGNORESERVATION, '
      '  PRINTRIPNEWBARCODE,'
      'DATA_ALLARM_LIM_SMS'
      'from PARAMETRI '
      'where'
      '  PARAM_NO = :PARAM_NO')
    SelectSQL.Strings = (
      'select * from  PARAMETRI')
    ModifySQL.Strings = (
      'update PARAMETRI'
      'set'
      '  PARAM_NO = :PARAM_NO,'
      '  RAGSOC = :RAGSOC,'
      '  ADMINPSW = :ADMINPSW,'
      '  EANTOSCAN = :EANTOSCAN,'
      '  TAXFEELATE = :TAXFEELATE,'
      '  LOGO = :LOGO,'
      '  NOTE = :NOTE,'
      '  NUMSCHEDPRN = :NUMSCHEDPRN,'
      '  ADDRESS = :ADDRESS,'
      '  SERVERDB = :SERVERDB,'
      '  ROOT = :ROOT,'
      '  NOTE1 = :NOTE1,'
      '  PREF_ART_NO = :PREF_ART_NO,'
      '  PREF_CLI_NO = :PREF_CLI_NO,'
      '  PRE_SCHED_NO = :PRE_SCHED_NO,'
      '  PRE_OP_NO = :PRE_OP_NO,'
      '  PRE_CV_NO = :PRE_CV_NO,'
      '  PREF_RIP_NO = :PREF_RIP_NO,'
      '  PREF_INC_NO = :PREF_INC_NO,'
      '  RICUSATO = :RICUSATO,'
      '  ENABCV = :ENABCV,'
      '  ENABFINV = :ENABFINV,'
      '  ENABFINSCHE = :ENABFINSCHE,'
      '  ENABRIP = :ENABRIP,'
      '  ENABOPER = :ENABOPER,'
      '  ENABREP = :ENABREP,'
      '  ENABTREE = :ENABTREE,'
      '  PRINTER_ETIC = :PRINTER_ETIC,'
      '  PRINTER_FORM = :PRINTER_FORM,'
      '  ENABTENNIS = :ENABTENNIS,'
      '  DAYWORKREADY = :DAYWORKREADY,'
      '  STRADVFRMDATA = :STRADVFRMDATA,'
      '  DAYRESERVSTART = :DAYRESERVSTART,'
      '  DAYRESERVBACK = :DAYRESERVBACK,'
      '  SOFTWARE_VERSION = :SOFTWARE_VERSION,'
      '  IGNORESERVATION = :IGNORESERVATION,'
      '  PRINTRIPNEWBARCODE = :PRINTRIPNEWBARCODE,'
      '  DATA_ALLARM_LIM_SMS = :DATA_ALLARM_LIM_SMS'
      'where'
      '  PARAM_NO = :OLD_PARAM_NO')
    GeneratorField.Field = 'PARAM_NO'
    GeneratorField.Generator = 'PARAMNO_GEN'
    Left = 1053
    Top = 160
    object IBDataSetParamPARAM_NO: TFloatField
      FieldName = 'PARAM_NO'
      Origin = 'PARAMETRI.PARAM_NO'
      Required = True
    end
    object IBDataSetParamRAGSOC: TIBStringField
      FieldName = 'RAGSOC'
      Origin = 'PARAMETRI.RAGSOC'
      Size = 40
    end
    object IBDataSetParamADMINPSW: TIBStringField
      FieldName = 'ADMINPSW'
      Origin = 'PARAMETRI.ADMINPSW'
      Size = 15
    end
    object IBDataSetParamEANTOSCAN: TIBStringField
      FieldName = 'EANTOSCAN'
      Origin = 'PARAMETRI.EANTOSCAN'
    end
    object IBDataSetParamTAXFEELATE: TFloatField
      FieldName = 'TAXFEELATE'
      Origin = 'PARAMETRI.TAXFEELATE'
    end
    object IBDataSetParamLOGO: TBlobField
      FieldName = 'LOGO'
      Origin = 'PARAMETRI.LOGO'
      Size = 8
    end
    object IBDataSetParamNOTE: TMemoField
      FieldName = 'NOTE'
      Origin = 'PARAMETRI.NOTE'
      BlobType = ftMemo
      Size = 8
    end
    object IBDataSetParamNUMSCHEDPRN: TIntegerField
      FieldName = 'NUMSCHEDPRN'
      Origin = 'PARAMETRI.NUMSCHEDPRN'
    end
    object IBDataSetParamADDRESS: TMemoField
      FieldName = 'ADDRESS'
      Origin = 'PARAMETRI.ADDRESS'
      BlobType = ftMemo
      Size = 8
    end
    object IBDataSetParamSERVERDB: TIBStringField
      FieldName = 'SERVERDB'
      Origin = 'PARAMETRI.SERVERDB'
    end
    object IBDataSetParamROOT: TIBStringField
      FieldName = 'ROOT'
      Origin = 'PARAMETRI.ROOT'
      Size = 60
    end
    object IBDataSetParamNOTE1: TMemoField
      FieldName = 'NOTE1'
      Origin = 'PARAMETRI.NOTE1'
      BlobType = ftMemo
      Size = 8
    end
    object IBDataSetParamPREF_ART_NO: TIBStringField
      FieldName = 'PREF_ART_NO'
      Origin = 'PARAMETRI.PREF_ART_NO'
      Size = 2
    end
    object IBDataSetParamPREF_CLI_NO: TIBStringField
      FieldName = 'PREF_CLI_NO'
      Origin = 'PARAMETRI.PREF_CLI_NO'
      Size = 2
    end
    object IBDataSetParamPRE_SCHED_NO: TIBStringField
      FieldName = 'PRE_SCHED_NO'
      Origin = 'PARAMETRI.PRE_SCHED_NO'
      Size = 2
    end
    object IBDataSetParamPRE_OP_NO: TIBStringField
      FieldName = 'PRE_OP_NO'
      Origin = 'PARAMETRI.PRE_OP_NO'
      Size = 2
    end
    object IBDataSetParamPRE_CV_NO: TIBStringField
      FieldName = 'PRE_CV_NO'
      Origin = 'PARAMETRI.PRE_CV_NO'
      Size = 2
    end
    object IBDataSetParamRICUSATO: TIntegerField
      FieldName = 'RICUSATO'
      Origin = 'PARAMETRI.RICUSATO'
      OnSetText = IBDataSetParamRICUSATOSetText
    end
    object IBDataSetParamPREF_RIP_NO: TIBStringField
      FieldName = 'PREF_RIP_NO'
      Origin = 'PARAMETRI.PREF_RIP_NO'
      Size = 2
    end
    object IBDataSetParamPRINTER_ETIC: TIBStringField
      FieldName = 'PRINTER_ETIC'
      Origin = 'PARAMETRI.PRINTER_ETIC'
      Size = 40
    end
    object IBDataSetParamPRINTER_FORM: TIBStringField
      FieldName = 'PRINTER_FORM'
      Origin = 'PARAMETRI.PRINTER_FORM'
      Size = 40
    end
    object IBDataSetParamDAYWORKREADY: TIntegerField
      FieldName = 'DAYWORKREADY'
      Origin = 'PARAMETRI.DAYWORKREADY'
    end
    object IBDataSetParamPREF_INC_NO: TIBStringField
      FieldName = 'PREF_INC_NO'
      Origin = 'PARAMETRI.PREF_INC_NO'
      Size = 2
    end
    object IBDataSetParamENABCV: TSmallintField
      FieldName = 'ENABCV'
      Origin = 'PARAMETRI.ENABCV'
    end
    object IBDataSetParamENABFINV: TSmallintField
      FieldName = 'ENABFINV'
      Origin = 'PARAMETRI.ENABFINV'
    end
    object IBDataSetParamENABFINSCHE: TSmallintField
      FieldName = 'ENABFINSCHE'
      Origin = 'PARAMETRI.ENABFINSCHE'
    end
    object IBDataSetParamENABRIP: TSmallintField
      FieldName = 'ENABRIP'
      Origin = 'PARAMETRI.ENABRIP'
    end
    object IBDataSetParamENABOPER: TSmallintField
      FieldName = 'ENABOPER'
      Origin = 'PARAMETRI.ENABOPER'
    end
    object IBDataSetParamENABREP: TSmallintField
      FieldName = 'ENABREP'
      Origin = 'PARAMETRI.ENABREP'
    end
    object IBDataSetParamENABTENNIS: TSmallintField
      FieldName = 'ENABTENNIS'
      Origin = 'PARAMETRI.ENABTENNIS'
    end
    object IBDataSetParamENABTREE: TSmallintField
      FieldName = 'ENABTREE'
      Origin = 'PARAMETRI.ENABTREE'
    end
    object IBDataSetParamSTRADVFRMDATA: TDateTimeField
      FieldName = 'STRADVFRMDATA'
      Origin = 'PARAMETRI.STRADVFRMDATA'
    end
    object IBDataSetParamDAYRESERVSTART: TIntegerField
      FieldName = 'DAYRESERVSTART'
      Origin = 'PARAMETRI.DAYRESERVSTART'
    end
    object IBDataSetParamDAYRESERVBACK: TIntegerField
      FieldName = 'DAYRESERVBACK'
      Origin = 'PARAMETRI.DAYRESERVBACK'
    end
    object IBDataSetParamSOFTWARE_VERSION: TIBStringField
      FieldName = 'SOFTWARE_VERSION'
      Origin = 'PARAMETRI.SOFTWARE_VERSION'
      Size = 100
    end
    object IBDataSetParamIGNORESERVATION: TSmallintField
      FieldName = 'IGNORESERVATION'
      Origin = 'PARAMETRI.IGNORESERVATION'
      Required = True
    end
    object IBDataSetParamPRINTRIPNEWBARCODE: TSmallintField
      FieldName = 'PRINTRIPNEWBARCODE'
      Origin = 'PARAMETRI.PRINTRIPNEWBARCODE'
      Required = True
    end
    object IBDataSetParamDATA_ALLARM_LIM_SMS: TDateTimeField
      FieldName = 'DATA_ALLARM_LIM_SMS'
      Origin = 'PARAMETRI.DATA_ALLARM_LIM_SMS'
    end
  end
  object DSParametri: TDataSource
    DataSet = IBDataSetParam
    Left = 1053
    Top = 112
  end
  object IBTransaction13: TIBTransaction
    Active = False
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 1053
    Top = 64
  end
  object IBDatabase2: TIBDatabase
    DatabaseName = 'E:\Noleggio_Web_2021_V1\NOLOLOCAL_WEBADD.FDB'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey')
    LoginPrompt = False
    IdleTimer = 0
    SQLDialect = 1
    TraceFlags = []
    AfterConnect = IBDatabase2AfterConnect
    AfterDisconnect = IBDatabase2AfterDisconnect
    BeforeConnect = IBDatabase2BeforeConnect
    BeforeDisconnect = IBDatabase2BeforeDisconnect
    Left = 885
    Top = 240
  end
  object DSEtichette: TDataSource
    DataSet = IBDataSetEtichette
    Left = 1056
    Top = 288
  end
  object IBTransaction16: TIBTransaction
    Active = False
    DefaultDatabase = IBDatabase2
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 1056
    Top = 240
  end
  object IBDataSetEtichette: TIBDataSet
    Database = IBDatabase2
    Transaction = IBTransaction16
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from ETICHETTE'
      'where'
      '  EANCODE = :OLD_EANCODE and'
      '  MANUALCODE = :OLD_MANUALCODE and'
      '  EANCODE2 = :OLD_EANCODE2')
    InsertSQL.Strings = (
      'insert into ETICHETTE'
      '  (EANCODE, MANUALCODE, EANCODE2)'
      'values'
      '  (:EANCODE, :MANUALCODE, :EANCODE2)')
    RefreshSQL.Strings = (
      'Select '
      '  EANCODE,'
      '  MANUALCODE,'
      '  EANCODE2'
      'from ETICHETTE '
      'where'
      '  EANCODE = :EANCODE and'
      '  MANUALCODE = :MANUALCODE and'
      '  EANCODE2 = :EANCODE2')
    SelectSQL.Strings = (
      'select * from ETICHETTE')
    ModifySQL.Strings = (
      'update ETICHETTE'
      'set'
      '  EANCODE = :EANCODE,'
      '  MANUALCODE = :MANUALCODE,'
      '  EANCODE2 = :EANCODE2'
      'where'
      '  EANCODE = :OLD_EANCODE and'
      '  MANUALCODE = :OLD_MANUALCODE and'
      '  EANCODE2 = :OLD_EANCODE2')
    Left = 1056
    Top = 336
    object IBDataSetEtichetteEANCODE: TIBStringField
      FieldName = 'EANCODE'
      Origin = 'ETICHETTE.EANCODE'
      Size = 30
    end
    object IBDataSetEtichetteMANUALCODE: TIBStringField
      FieldName = 'MANUALCODE'
      Origin = 'ETICHETTE.MANUALCODE'
      Size = 5
    end
    object IBDataSetEtichetteEANCODE2: TIBStringField
      FieldName = 'EANCODE2'
      Origin = 'ETICHETTE.EANCODE2'
      Size = 30
    end
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from comuni')
    Left = 1136
    Top = 336
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 1136
    Top = 288
  end
  object ADOConnection1: TADOConnection
    Attributes = [xaCommitRetaining]
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=E:\No' +
      'leggio_Web_2024_V4\CAPNEW.mdb;Persist Security Info=False;Jet OL' +
      'EDB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Data' +
      'base Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Lock' +
      'ing Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global ' +
      'Bulk Transactions=1;Jet OLEDB:New Database Password="";Jet OLEDB' +
      ':Create System Database=False;Jet OLEDB:Encrypt Database=False;J' +
      'et OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=Fals' +
      'e;'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    BeforeConnect = ADOConnection1BeforeConnect
    Left = 1136
    Top = 240
  end
  object IBTransaction17: TIBTransaction
    Active = False
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 1136
    Top = 64
  end
  object DSQueryZFact: TDataSource
    DataSet = IBQueryZFact
    Left = 1135
    Top = 112
  end
  object IBQueryZFact: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction17
    ForcedRefresh = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT RENTEDART.*, ARTICOLO.*'
      
        'FROM RENTEDART JOIN ARTICOLO ON ARTICOLO.ART_NO = RENTEDART.ART_' +
        'NO'
      'WHERE (RENTEDART.SCHED_NO = :SCHEDNO)')
    Left = 1136
    Top = 160
    ParamData = <
      item
        DataType = ftFloat
        Name = 'SCHEDNO'
        ParamType = ptUnknown
        Value = 0
      end>
  end
  object IBDatabase1: TIBDatabase
    DatabaseName = 'E:\Noleggio_Web_2024_V3\NOLEGGIO_OK_WEBADD.FDB'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey'
      'sql_role_name=master')
    LoginPrompt = False
    IdleTimer = 0
    SQLDialect = 1
    TraceFlags = []
    AfterConnect = IBDatabase1AfterConnect
    AfterDisconnect = IBDatabase1AfterDisconnect
    BeforeConnect = IBDatabase1BeforeConnect
    BeforeDisconnect = IBDatabase1BeforeDisconnect
    Left = 8
    Top = 8
  end
  object IBTransaction14: TIBTransaction
    Active = False
    DefaultDatabase = IBDatabase1
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 8
    Top = 216
  end
  object IBDataSetRip: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction14
    ForcedRefresh = True
    AfterCancel = IBDataSetRipAfterCancel
    AfterDelete = IBDataSetRipAfterDelete
    AfterInsert = IBDataSetRipAfterInsert
    AfterPost = IBDataSetRipAfterPost
    AfterScroll = IBDataSetRipAfterScroll
    BeforeClose = IBDataSetRipBeforeClose
    BeforeDelete = IBDataSetRipBeforeDelete
    BeforeEdit = IBDataSetRipBeforeEdit
    BeforeInsert = IBDataSetRipBeforeInsert
    BeforeScroll = IBDataSetRipBeforeScroll
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from RIPARAZIONE'
      'where'
      '  RIP_NO = :OLD_RIP_NO')
    InsertSQL.Strings = (
      'insert into RIPARAZIONE'
      
        '  (RIP_NO, CLI_NO, TIPOPRODOTTO, BRAND, DESCRIZIONE, FONDO, LAMI' +
        'NE, '
      'SCIOLINA, PREPGARA, '
      
        '   RIPPARTIC, RADDRIZZATURA, CHECKATTACCHI, PELLI, PREZZO, NOTE1' +
        ', '
      'RITIRATODA, '
      '   OWNER, KG, MMSUOLA, DATAREADY, DATAINSERT, DATARITIRORICH, '
      'DATARITIRO, '
      '   URGENZA, TIPOPAGAM, EANCODERIP, STANCESNOW, BINDINGS, SXDEG, '
      'DXDEG, '
      
        '   SCHED_NO, BOOT_DX, BOOT_SX, ALLARGPIANTA_DX, ALLARGPIANTA_SX,' +
        ' '
      'ALZARECOLLO_DX, '
      '   ALZARECOLLO_SX, ALLUNGSCAFO_DX, MALLEOLO_DX, MALLEOLO_SX, '
      'CAMBIOGANCIO_DX, '
      
        '   SOLETTARISC, CAMBIOGANCIO_SX, SOLOTAVOLA, ALLUNGASCARPONE_DX,' +
        '  '
      'ALLUNGASCARPONE_SX,  SC_DATAORA, SC_NUMDOC, SC_IMPORTO, '
      'PAGATO)'
      'values'
      
        '  (:RIP_NO, :CLI_NO, :TIPOPRODOTTO, :BRAND, :DESCRIZIONE, :FONDO' +
        ', '
      ':LAMINE, '
      ':SCIOLINA, '
      
        '   :PREPGARA, :RIPPARTIC, :RADDRIZZATURA, :CHECKATTACCHI, :PELLI' +
        ', '
      ':PREZZO, '
      '   :NOTE1, :RITIRATODA, :OWNER, :KG, :MMSUOLA, :DATAREADY, '
      ':DATAINSERT, '
      
        '   :DATARITIRORICH, :DATARITIRO, :URGENZA, :TIPOPAGAM, :EANCODER' +
        'IP, '
      ':STANCESNOW, '
      '   :BINDINGS, :SXDEG, :DXDEG, :SCHED_NO, :BOOT_DX, :BOOT_SX, '
      ':ALLARGPIANTA_DX, '
      '   :ALLARGPIANTA_SX, :ALZARECOLLO_DX, :ALZARECOLLO_SX, '
      ':ALLUNGSCAFO_DX, '
      '   :MALLEOLO_DX, :MALLEOLO_SX, :CAMBIOGANCIO_DX, :SOLETTARISC, '
      ':CAMBIOGANCIO_SX, '
      '   :SOLOTAVOLA, :ALLUNGASCARPONE_DX, :ALLUNGASCARPONE_SX, '
      ':SC_DATAORA, :SC_NUMDOC, :SC_IMPORTO, :PAGATO)')
    RefreshSQL.Strings = (
      'Select '
      '  RIP_NO,'
      '  CLI_NO,'
      '  TIPOPRODOTTO,'
      '  BRAND,'
      '  DESCRIZIONE,'
      '  FONDO,'
      '  LAMINE,'
      '  SCIOLINA,'
      '  PREPGARA,'
      '  RIPPARTIC,'
      '  RADDRIZZATURA,'
      '  CHECKATTACCHI,'
      '  PELLI,'
      '  PREZZO,'
      '  NOTE1,'
      '  RITIRATODA,'
      '  OWNER,'
      '  KG,'
      '  MMSUOLA,'
      '  DATAREADY,'
      '  DATAINSERT,'
      '  DATARITIRORICH,'
      '  DATARITIRO,'
      '  URGENZA,'
      '  TIPOPAGAM,'
      '  EANCODERIP,'
      '  STANCESNOW,'
      '  BINDINGS,'
      '  SXDEG,'
      '  DXDEG,'
      '  SCHED_NO,'
      '  BOOT_DX,'
      '  BOOT_SX,'
      '  ALLARGPIANTA_DX,'
      '  ALLARGPIANTA_SX,'
      '  ALZARECOLLO_DX,'
      '  ALZARECOLLO_SX,'
      '  ALLUNGSCAFO_DX,'
      '  MALLEOLO_DX,'
      '  MALLEOLO_SX,'
      '  CAMBIOGANCIO_DX,'
      '  SOLETTARISC,'
      '  CAMBIOGANCIO_SX,'
      '  SOLOTAVOLA,'
      '  ALLUNGASCARPONE_DX,'
      '  ALLUNGASCARPONE_SX,'
      ' SC_DATAORA, '
      ' SC_NUMDOC, '
      ' SC_IMPORTO, '
      ' PAGATO'
      
        'from RIPARAZIONE JOIN CLIENTI ON RIPARAZIONE.CLI_NO = CLIENTI.CL' +
        'I_NO'
      'where  RIP_NO = :RIP_NO')
    SelectSQL.Strings = (
      'SELECT * FROM RIPARAZIONE')
    ModifySQL.Strings = (
      'update RIPARAZIONE'
      'set'
      '  RIP_NO = :RIP_NO,'
      '  TIPOPRODOTTO = :TIPOPRODOTTO,'
      '  BRAND = :BRAND,'
      '  DESCRIZIONE = :DESCRIZIONE,'
      '  FONDO = :FONDO,'
      '  LAMINE = :LAMINE,'
      '  SCIOLINA = :SCIOLINA,'
      '  PREPGARA = :PREPGARA,'
      '  RIPPARTIC = :RIPPARTIC,'
      '  RADDRIZZATURA = :RADDRIZZATURA,'
      '  CHECKATTACCHI = :CHECKATTACCHI,'
      '  PELLI = :PELLI,'
      '  PREZZO = :PREZZO,'
      '  NOTE1 = :NOTE1,'
      '  RITIRATODA = :RITIRATODA,'
      '  OWNER = :OWNER,'
      '  KG = :KG,'
      '  MMSUOLA = :MMSUOLA,'
      '  DATAREADY = :DATAREADY,'
      '  DATAINSERT = :DATAINSERT,'
      '  DATARITIRORICH = :DATARITIRORICH,'
      '  DATARITIRO = :DATARITIRO,'
      '  URGENZA = :URGENZA,'
      '  TIPOPAGAM = :TIPOPAGAM,'
      '  EANCODERIP = :EANCODERIP,'
      '  STANCESNOW = :STANCESNOW,'
      '  BINDINGS = :BINDINGS,'
      '  SXDEG = :SXDEG,'
      '  DXDEG = :DXDEG,'
      '  SCHED_NO = :SCHED_NO,'
      '  BOOT_DX = :BOOT_DX,'
      '  BOOT_SX = :BOOT_SX,'
      '  ALLARGPIANTA_DX = :ALLARGPIANTA_DX,'
      '  ALLARGPIANTA_SX = :ALLARGPIANTA_SX,'
      '  ALZARECOLLO_DX = :ALZARECOLLO_DX,'
      '  ALZARECOLLO_SX = :ALZARECOLLO_SX,'
      '  ALLUNGSCAFO_DX = :ALLUNGSCAFO_DX,'
      '  MALLEOLO_DX = :MALLEOLO_DX,'
      '  MALLEOLO_SX = :MALLEOLO_SX,'
      '  CAMBIOGANCIO_DX = :CAMBIOGANCIO_DX,'
      '  SOLETTARISC = :SOLETTARISC,'
      '  CAMBIOGANCIO_SX = :CAMBIOGANCIO_SX,'
      '  SOLOTAVOLA = :SOLOTAVOLA,'
      '  ALLUNGASCARPONE_DX = :ALLUNGASCARPONE_DX,'
      '  ALLUNGASCARPONE_SX = :ALLUNGASCARPONE_SX,'
      '  SC_NUMCASSA =:SC_NUMCASSA,'
      '  SC_DATAORA =:SC_DATAORA, '
      '  SC_NUMDOC =:SC_NUMDOC,'
      '  SC_IMPORTO =:SC_IMPORTO,'
      '  PAGATO =:PAGATO'
      'where'
      '  RIP_NO = :OLD_RIP_NO')
    GeneratorField.Field = 'RIP_NO'
    GeneratorField.Generator = 'GEN_RIPARAZIONE_ID'
    Left = 8
    Top = 320
    object IBDataSetRipRIP_NO: TIntegerField
      FieldName = 'RIP_NO'
      Origin = 'RIPARAZIONE.RIP_NO'
      Required = True
    end
    object IBDataSetRipCLI_NO: TIntegerField
      FieldName = 'CLI_NO'
      Origin = 'RIPARAZIONE.CLI_NO'
      Required = True
    end
    object IBDataSetRipTIPOPRODOTTO: TIBStringField
      FieldName = 'TIPOPRODOTTO'
      Origin = 'RIPARAZIONE.TIPOPRODOTTO'
      Required = True
    end
    object IBDataSetRipBRAND: TIBStringField
      FieldName = 'BRAND'
      Origin = 'RIPARAZIONE.BRAND'
      Required = True
    end
    object IBDataSetRipDESCRIZIONE: TIBStringField
      FieldName = 'DESCRIZIONE'
      Origin = 'RIPARAZIONE.DESCRIZIONE'
      Required = True
      Size = 40
    end
    object IBDataSetRipFONDO: TSmallintField
      FieldName = 'FONDO'
      Origin = 'RIPARAZIONE.FONDO'
    end
    object IBDataSetRipLAMINE: TSmallintField
      FieldName = 'LAMINE'
      Origin = 'RIPARAZIONE.LAMINE'
    end
    object IBDataSetRipSCIOLINA: TSmallintField
      FieldName = 'SCIOLINA'
      Origin = 'RIPARAZIONE.SCIOLINA'
    end
    object IBDataSetRipPREPGARA: TSmallintField
      FieldName = 'PREPGARA'
      Origin = 'RIPARAZIONE.PREPGARA'
    end
    object IBDataSetRipRIPPARTIC: TSmallintField
      FieldName = 'RIPPARTIC'
      Origin = 'RIPARAZIONE.RIPPARTIC'
    end
    object IBDataSetRipRADDRIZZATURA: TSmallintField
      FieldName = 'RADDRIZZATURA'
      Origin = 'RIPARAZIONE.RADDRIZZATURA'
    end
    object IBDataSetRipCHECKATTACCHI: TSmallintField
      FieldName = 'CHECKATTACCHI'
      Origin = 'RIPARAZIONE.CHECKATTACCHI'
    end
    object IBDataSetRipPELLI: TSmallintField
      FieldName = 'PELLI'
      Origin = 'RIPARAZIONE.PELLI'
    end
    object IBDataSetRipPREZZO: TFloatField
      FieldName = 'PREZZO'
      Origin = 'RIPARAZIONE.PREZZO'
      Required = True
      OnChange = IBDataSetRipPREZZOChange
    end
    object IBDataSetRipNOTE1: TMemoField
      FieldName = 'NOTE1'
      Origin = 'RIPARAZIONE.NOTE1'
      BlobType = ftMemo
      Size = 8
    end
    object IBDataSetRipRITIRATODA: TIBStringField
      FieldName = 'RITIRATODA'
      Origin = 'RIPARAZIONE.RITIRATODA'
      Size = 40
    end
    object IBDataSetRipOWNER: TIBStringField
      FieldName = 'OWNER'
      Origin = 'RIPARAZIONE.OWNER'
      Required = True
      Size = 25
    end
    object IBDataSetRipKG: TIntegerField
      FieldName = 'KG'
      Origin = 'RIPARAZIONE.KG'
    end
    object IBDataSetRipMMSUOLA: TIntegerField
      FieldName = 'MMSUOLA'
      Origin = 'RIPARAZIONE.MMSUOLA'
    end
    object IBDataSetRipDATAREADY: TDateTimeField
      FieldName = 'DATAREADY'
      Origin = 'RIPARAZIONE.DATAREADY'
    end
    object IBDataSetRipDATAINSERT: TDateTimeField
      FieldName = 'DATAINSERT'
      Origin = 'RIPARAZIONE.DATAINSERT'
    end
    object IBDataSetRipDATARITIRORICH: TDateTimeField
      FieldName = 'DATARITIRORICH'
      Origin = 'RIPARAZIONE.DATARITIRORICH'
    end
    object IBDataSetRipDATARITIRO: TDateTimeField
      FieldName = 'DATARITIRO'
      Origin = 'RIPARAZIONE.DATARITIRO'
    end
    object IBDataSetRipURGENZA: TIntegerField
      FieldName = 'URGENZA'
      Origin = 'RIPARAZIONE.URGENZA'
    end
    object IBDataSetRipTIPOPAGAM: TIBStringField
      FieldName = 'TIPOPAGAM'
      Origin = 'RIPARAZIONE.TIPOPAGAM'
      Required = True
      OnChange = IBDataSetRipTIPOPAGAMChange
      Size = 25
    end
    object IBDataSetRipEANCODERIP: TIBStringField
      FieldName = 'EANCODERIP'
      Origin = 'RIPARAZIONE.EANCODERIP'
      Required = True
    end
    object IBDataSetRipSTANCESNOW: TIBStringField
      FieldName = 'STANCESNOW'
      Origin = 'RIPARAZIONE.STANCESNOW'
      Size = 8
    end
    object IBDataSetRipBINDINGS: TIBStringField
      FieldName = 'BINDINGS'
      Origin = 'RIPARAZIONE.BINDINGS'
      Size = 40
    end
    object IBDataSetRipSXDEG: TIBStringField
      FieldName = 'SXDEG'
      Origin = 'RIPARAZIONE.SXDEG'
      Size = 9
    end
    object IBDataSetRipDXDEG: TIBStringField
      FieldName = 'DXDEG'
      Origin = 'RIPARAZIONE.DXDEG'
      Size = 9
    end
    object IBDataSetRipSCHED_NO: TFloatField
      FieldName = 'SCHED_NO'
      Origin = 'RIPARAZIONE.SCHED_NO'
    end
    object IBDataSetRipBOOT_DX: TSmallintField
      FieldName = 'BOOT_DX'
      Origin = 'RIPARAZIONE.BOOT_DX'
    end
    object IBDataSetRipBOOT_SX: TSmallintField
      FieldName = 'BOOT_SX'
      Origin = 'RIPARAZIONE.BOOT_SX'
    end
    object IBDataSetRipALLARGPIANTA_DX: TSmallintField
      FieldName = 'ALLARGPIANTA_DX'
      Origin = 'RIPARAZIONE.ALLARGPIANTA_DX'
    end
    object IBDataSetRipALLARGPIANTA_SX: TSmallintField
      FieldName = 'ALLARGPIANTA_SX'
      Origin = 'RIPARAZIONE.ALLARGPIANTA_SX'
    end
    object IBDataSetRipALZARECOLLO_DX: TSmallintField
      FieldName = 'ALZARECOLLO_DX'
      Origin = 'RIPARAZIONE.ALZARECOLLO_DX'
    end
    object IBDataSetRipALZARECOLLO_SX: TSmallintField
      FieldName = 'ALZARECOLLO_SX'
      Origin = 'RIPARAZIONE.ALZARECOLLO_SX'
    end
    object IBDataSetRipALLUNGSCAFO_DX: TSmallintField
      FieldName = 'ALLUNGSCAFO_DX'
      Origin = 'RIPARAZIONE.ALLUNGSCAFO_DX'
    end
    object IBDataSetRipMALLEOLO_DX: TSmallintField
      FieldName = 'MALLEOLO_DX'
      Origin = 'RIPARAZIONE.MALLEOLO_DX'
    end
    object IBDataSetRipMALLEOLO_SX: TSmallintField
      FieldName = 'MALLEOLO_SX'
      Origin = 'RIPARAZIONE.MALLEOLO_SX'
    end
    object IBDataSetRipCAMBIOGANCIO_DX: TSmallintField
      FieldName = 'CAMBIOGANCIO_DX'
      Origin = 'RIPARAZIONE.CAMBIOGANCIO_DX'
    end
    object IBDataSetRipSOLETTARISC: TSmallintField
      FieldName = 'SOLETTARISC'
      Origin = 'RIPARAZIONE.SOLETTARISC'
    end
    object IBDataSetRipCAMBIOGANCIO_SX: TSmallintField
      FieldName = 'CAMBIOGANCIO_SX'
      Origin = 'RIPARAZIONE.CAMBIOGANCIO_SX'
    end
    object IBDataSetRipSOLOTAVOLA: TSmallintField
      FieldName = 'SOLOTAVOLA'
      Origin = 'RIPARAZIONE.SOLOTAVOLA'
    end
    object IBDataSetRipALLUNGASCARPONE_DX: TSmallintField
      FieldName = 'ALLUNGASCARPONE_DX'
      Origin = 'RIPARAZIONE.ALLUNGASCARPONE_DX'
    end
    object IBDataSetRipALLUNGASCARPONE_SX: TSmallintField
      FieldName = 'ALLUNGASCARPONE_SX'
      Origin = 'RIPARAZIONE.ALLUNGASCARPONE_SX'
    end
    object IBDataSetRipSC_NUMCASSA: TIntegerField
      FieldName = 'SC_NUMCASSA'
      Origin = 'RIPARAZIONE.SC_NUMCASSA'
    end
    object IBDataSetRipSC_DATAORA: TDateTimeField
      FieldName = 'SC_DATAORA'
      Origin = 'RIPARAZIONE.SC_DATAORA'
    end
    object IBDataSetRipSC_NUMDOC: TIntegerField
      FieldName = 'SC_NUMDOC'
      Origin = 'RIPARAZIONE.SC_NUMDOC'
    end
    object IBDataSetRipSC_IMPORTO: TFloatField
      FieldName = 'SC_IMPORTO'
      Origin = 'RIPARAZIONE.SC_IMPORTO'
    end
    object IBDataSetRipPAGATO: TSmallintField
      FieldName = 'PAGATO'
      Origin = 'RIPARAZIONE.PAGATO'
    end
  end
  object DSRiparazione: TDataSource
    DataSet = IBDataSetRip
    OnDataChange = DSRiparazioneDataChange
    Left = 8
    Top = 264
  end
  object IBQuerySchTennis: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    AfterScroll = IBQuerySchTennisAfterScroll
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT SCHEDULE.* FROM SCHEDULE '
      'ORDER BY SCHED_NO')
    Left = 160
    Top = 320
    object IBQuerySchTennisSCHED_NO: TFloatField
      FieldName = 'SCHED_NO'
      Origin = 'SCHEDULE.SCHED_NO'
      Required = True
    end
    object IBQuerySchTennisCLI_NO: TFloatField
      FieldName = 'CLI_NO'
      Origin = 'SCHEDULE.CLI_NO'
    end
    object IBQuerySchTennisEANCODE: TIBStringField
      FieldName = 'EANCODE'
      Origin = 'SCHEDULE.EANCODE'
      Size = 30
    end
    object IBQuerySchTennisDATASTARTRENT: TDateTimeField
      FieldName = 'DATASTARTRENT'
      Origin = 'SCHEDULE.DATASTARTRENT'
    end
    object IBQuerySchTennisDATATAKEBACK: TDateTimeField
      FieldName = 'DATATAKEBACK'
      Origin = 'SCHEDULE.DATATAKEBACK'
    end
    object IBQuerySchTennisDATACLOSESCHD: TDateTimeField
      FieldName = 'DATACLOSESCHD'
      Origin = 'SCHEDULE.DATACLOSESCHD'
    end
    object IBQuerySchTennisOWNER: TIBStringField
      FieldName = 'OWNER'
      Origin = 'SCHEDULE.OWNER'
      Size = 25
    end
    object IBQuerySchTennisNOTE: TMemoField
      FieldName = 'NOTE'
      Origin = 'SCHEDULE.NOTE'
      BlobType = ftMemo
      Size = 8
    end
    object IBQuerySchTennisSTATO: TIBStringField
      FieldName = 'STATO'
      Origin = 'SCHEDULE.STATO'
    end
    object IBQuerySchTennisSTATO_CONS: TIBStringField
      FieldName = 'STATO_CONS'
      Origin = 'SCHEDULE.STATO_CONS'
    end
    object IBQuerySchTennisSUBTOTALE: TFloatField
      FieldName = 'SUBTOTALE'
      Origin = 'SCHEDULE.SUBTOTALE'
      currency = True
    end
    object IBQuerySchTennisDISCOUNT: TFloatField
      FieldName = 'DISCOUNT'
      Origin = 'SCHEDULE.DISCOUNT'
    end
    object IBQuerySchTennisNETPRICE: TFloatField
      FieldName = 'NETPRICE'
      Origin = 'SCHEDULE.NETPRICE'
      currency = True
    end
    object IBQuerySchTennisFEEDAYLATE: TFloatField
      FieldName = 'FEEDAYLATE'
      Origin = 'SCHEDULE.FEEDAYLATE'
      currency = True
    end
    object IBQuerySchTennisDAYUSE: TIntegerField
      FieldName = 'DAYUSE'
      Origin = 'SCHEDULE.DAYUSE'
    end
    object IBQuerySchTennisPAGATO: TSmallintField
      FieldName = 'PAGATO'
      Origin = 'SCHEDULE.PAGATO'
    end
    object IBQuerySchTennisDATAINTRO: TDateTimeField
      FieldName = 'DATAINTRO'
      Origin = 'SCHEDULE.DATAINTRO'
    end
    object IBQuerySchTennisEANCODE2: TIBStringField
      FieldName = 'EANCODE2'
      Origin = 'SCHEDULE.EANCODE2'
      Size = 14
    end
  end
  object DSQuerySchTennis: TDataSource
    DataSet = IBQuerySchTennis
    OnDataChange = DSRiparazioneDataChange
    Left = 160
    Top = 264
  end
  object IBDatasetAcq: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction15
    AfterCancel = IBDatasetAcqAfterCancel
    AfterDelete = IBDatasetAcqAfterDelete
    AfterEdit = IBDatasetAcqAfterEdit
    AfterInsert = IBDatasetAcqAfterInsert
    AfterPost = IBDatasetAcqAfterPost
    AfterScroll = IBDatasetAcqAfterScroll
    BeforeDelete = IBDatasetAcqBeforeDelete
    BeforeEdit = IBDatasetAcqBeforeEdit
    BeforeInsert = IBDatasetAcqBeforeInsert
    BeforePost = IBDatasetAcqBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from Acquisti'
      'where'
      '  ACQ_NO = :OLD_ACQ_NO')
    InsertSQL.Strings = (
      'insert into Acquisti'
      
        '  (ACQ_NO, CLI_NO, TIPOPRODOTTO, BRAND, DESCRIZIONE, BARCODEART,' +
        ' DATAINTRO, '
      
        '   DATASALDO, PREZZOPUB, PREZZONET, TAGLIA, DATARESO, QTA, SCONT' +
        'O, DATAULTIMAMOD, '
      '   TIPOPAGAMMATASSA, SEZIONE, DATAFINE, COLOREMATASSA, INUSO)'
      'values'
      
        '  (:ACQ_NO, :CLI_NO, :TIPOPRODOTTO, :BRAND, :DESCRIZIONE, :BARCO' +
        'DEART, '
      
        '   :DATAINTRO, :DATASALDO, :PREZZOPUB, :PREZZONET, :TAGLIA, :DAT' +
        'ARESO, '
      
        '   :QTA, :SCONTO, :DATAULTIMAMOD, :TIPOPAGAMMATASSA, :SEZIONE, :' +
        'DATAFINE, '
      '   :COLOREMATASSA, :INUSO)')
    RefreshSQL.Strings = (
      'Select '
      '  ACQ_NO,'
      '  CLI_NO,'
      '  TIPOPRODOTTO,'
      '  BRAND,'
      '  DESCRIZIONE,'
      '  BARCODEART,'
      '  DATAINTRO,'
      '  DATASALDO,'
      '  PREZZOPUB,'
      '  PREZZONET,'
      '  TAGLIA,'
      '  DATARESO,'
      '  QTA,'
      '  SCONTO,'
      '  DATAULTIMAMOD,'
      '  TIPOPAGAMMATASSA,'
      '  SEZIONE,'
      '  DATAFINE,'
      '  COLOREMATASSA,'
      '  INUSO'
      'from Acquisti '
      'where'
      '  ACQ_NO = :ACQ_NO')
    SelectSQL.Strings = (
      'SELECT * FROM ACQUISTI'
      '')
    ModifySQL.Strings = (
      'update Acquisti'
      'set'
      '  ACQ_NO = :ACQ_NO,'
      '  CLI_NO = :CLI_NO,'
      '  TIPOPRODOTTO = :TIPOPRODOTTO,'
      '  BRAND = :BRAND,'
      '  DESCRIZIONE = :DESCRIZIONE,'
      '  BARCODEART = :BARCODEART,'
      '  DATAINTRO = :DATAINTRO,'
      '  DATASALDO = :DATASALDO,'
      '  PREZZOPUB = :PREZZOPUB,'
      '  PREZZONET = :PREZZONET,'
      '  TAGLIA = :TAGLIA,'
      '  DATARESO = :DATARESO,'
      '  QTA = :QTA,'
      '  SCONTO = :SCONTO,'
      '  DATAULTIMAMOD = :DATAULTIMAMOD,'
      '  TIPOPAGAMMATASSA = :TIPOPAGAMMATASSA,'
      '  SEZIONE = :SEZIONE,'
      '  DATAFINE = :DATAFINE,'
      '  COLOREMATASSA = :COLOREMATASSA,'
      '  INUSO = :INUSO'
      'where'
      '  ACQ_NO = :OLD_ACQ_NO')
    GeneratorField.Field = 'ACQ_NO'
    GeneratorField.Generator = 'GEN_ACQUISTI_ID'
    Left = 280
    Top = 320
    object IBDatasetAcqACQ_NO: TIntegerField
      FieldName = 'ACQ_NO'
      Origin = 'ACQUISTI.ACQ_NO'
      Required = True
    end
    object IBDatasetAcqCLI_NO: TFloatField
      FieldName = 'CLI_NO'
      Origin = 'ACQUISTI.CLI_NO'
      Required = True
    end
    object IBDatasetAcqTIPOPRODOTTO: TIBStringField
      FieldName = 'TIPOPRODOTTO'
      Origin = 'ACQUISTI.TIPOPRODOTTO'
      Size = 40
    end
    object IBDatasetAcqBRAND: TIBStringField
      FieldName = 'BRAND'
      Origin = 'ACQUISTI.BRAND'
    end
    object IBDatasetAcqDESCRIZIONE: TIBStringField
      FieldName = 'DESCRIZIONE'
      Origin = 'ACQUISTI.DESCRIZIONE'
      Size = 50
    end
    object IBDatasetAcqBARCODEART: TIBStringField
      FieldName = 'BARCODEART'
      Origin = 'ACQUISTI.BARCODEART'
    end
    object IBDatasetAcqDATAINTRO: TDateTimeField
      FieldName = 'DATAINTRO'
      Origin = 'ACQUISTI.DATAINTRO'
      Required = True
    end
    object IBDatasetAcqDATASALDO: TDateTimeField
      FieldName = 'DATASALDO'
      Origin = 'ACQUISTI.DATASALDO'
    end
    object IBDatasetAcqPREZZOPUB: TFloatField
      FieldName = 'PREZZOPUB'
      Origin = 'ACQUISTI.PREZZOPUB'
      Required = True
      OnChange = IBDatasetAcqPREZZOPUBChange
      OnSetText = IBDatasetAcqPREZZOPUBSetText
      currency = True
    end
    object IBDatasetAcqPREZZONET: TFloatField
      FieldName = 'PREZZONET'
      Origin = 'ACQUISTI.PREZZONET'
      Required = True
      OnSetText = IBDatasetAcqPREZZONETSetText
      currency = True
    end
    object IBDatasetAcqTAGLIA: TIBStringField
      FieldName = 'TAGLIA'
      Origin = 'ACQUISTI.TAGLIA'
      Size = 10
    end
    object IBDatasetAcqDATARESO: TDateTimeField
      FieldName = 'DATARESO'
      Origin = 'ACQUISTI.DATARESO'
    end
    object IBDatasetAcqQTA: TIntegerField
      FieldName = 'QTA'
      Origin = 'ACQUISTI.QTA'
      Required = True
    end
    object IBDatasetAcqSCONTO: TIntegerField
      FieldName = 'SCONTO'
      Origin = 'ACQUISTI.SCONTO'
      OnChange = IBDatasetAcqSCONTOChange
      OnSetText = IBDatasetAcqSCONTOSetText
    end
    object IBDatasetAcqDATAULTIMAMOD: TDateTimeField
      FieldName = 'DATAULTIMAMOD'
      Origin = 'ACQUISTI.DATAULTIMAMOD'
      Required = True
    end
    object IBDatasetAcqTIPOPAGAMMATASSA: TIBStringField
      FieldName = 'TIPOPAGAMMATASSA'
      Origin = 'ACQUISTI.TIPOPAGAMMATASSA'
      OnChange = IBDatasetAcqTIPOPAGAMMATASSAChange
      Size = 15
    end
    object IBDatasetAcqSEZIONE: TIBStringField
      FieldName = 'SEZIONE'
      Origin = 'ACQUISTI.SEZIONE'
      Size = 15
    end
    object IBDatasetAcqDATAFINE: TDateTimeField
      FieldName = 'DATAFINE'
      Origin = 'ACQUISTI.DATAFINE'
    end
    object IBDatasetAcqCOLOREMATASSA: TIBStringField
      FieldName = 'COLOREMATASSA'
      Origin = 'ACQUISTI.COLOREMATASSA'
      Size = 15
    end
    object IBDatasetAcqINUSO: TIntegerField
      FieldName = 'INUSO'
      Origin = 'ACQUISTI.INUSO'
      Required = True
    end
  end
  object DSAcq: TDataSource
    DataSet = IBDatasetAcq
    OnDataChange = DSAcqDataChange
    Left = 280
    Top = 272
  end
  object IBTransaction15: TIBTransaction
    Active = False
    DefaultDatabase = IBDatabase1
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 280
    Top = 224
  end
  object IBTransaction18: TIBTransaction
    Active = False
    DefaultDatabase = IBDatabase2
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 968
    Top = 240
  end
  object IBDataSetLocalParam: TIBDataSet
    Database = IBDatabase2
    Transaction = IBTransaction18
    ForcedRefresh = True
    AfterCancel = IBDataSetLocalParamAfterCancel
    AfterDelete = IBDataSetLocalParamAfterDelete
    AfterPost = IBDataSetLocalParamAfterPost
    BeforeDelete = IBDataSetLocalParamBeforeDelete
    BeforeEdit = IBDataSetLocalParamBeforeEdit
    BeforeInsert = IBDataSetLocalParamBeforeInsert
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from LOCALSETINGS'
      'where'
      '  IDSETTINGS = :OLD_IDSETTINGS')
    InsertSQL.Strings = (
      'insert into LOCALSETINGS'
      '  (IDSETTINGS, POSTAZIONE, ETIC_PRINTER, PAPER_PRINTER, '
      'ALERTSCHEDNOLO, '
      
        '   ALERTDATICLI, DEFTIPORIP, ENABCV, ENABFINV, ENABFINSCHE, ENAB' +
        'RIP, '
      'ENABOPER, '
      '   ENABREP, ENABTREE, ENABTENNIS, ENABLABMODULE, NOLOSOFT_VER, '
      'INCORDOMAGGIO, '
      '   SENDNOLOTOCLI, ALLARMSCHEDCLIZERO, ALLARMDELETESCHEDULE, '
      'ALLARMDELETECLI, '
      '   ALLARMDELETEART, SMSCONSEGNA, EMAILCONSEGNA, '
      'EMAILCONFERMACHIUSURA, '
      '   SMSCONFERMACHIUSURA, SAVESCHEDTOPDF, PATHFILEPDFSCHED, '
      'RFIDCOMPORT, '
      '   RFIDBADURATE, OPNSYSTEM, CALCZFACT, CAMERA, CAMERAID, '
      'DOCIMAGESAVEPATH, ENABLEADVISE)'
      'values'
      '  (:IDSETTINGS, :POSTAZIONE, :ETIC_PRINTER, :PAPER_PRINTER, '
      ':ALERTSCHEDNOLO, '
      
        '   :ALERTDATICLI, :DEFTIPORIP, :ENABCV, :ENABFINV, :ENABFINSCHE,' +
        ' '
      ':ENABRIP, '
      '   :ENABOPER, :ENABREP, :ENABTREE, :ENABTENNIS, :ENABLABMODULE, '
      ':NOLOSOFT_VER, '
      '   :INCORDOMAGGIO, :SENDNOLOTOCLI, :ALLARMSCHEDCLIZERO, '
      ':ALLARMDELETESCHEDULE, '
      '   :ALLARMDELETECLI, :ALLARMDELETEART, :SMSCONSEGNA, '
      ':EMAILCONSEGNA, :EMAILCONFERMACHIUSURA, '
      '   :SMSCONFERMACHIUSURA, :SAVESCHEDTOPDF, :PATHFILEPDFSCHED, '
      ':RFIDCOMPORT, '
      '   :RFIDBADURATE, :OPNSYSTEM, :CALCZFACT, :CAMERA, :CAMERAID, '
      ':DOCIMAGESAVEPATH, :ENABLEADVISE)')
    RefreshSQL.Strings = (
      'Select '
      '  IDSETTINGS,'
      '  POSTAZIONE,'
      '  ETIC_PRINTER,'
      '  PAPER_PRINTER,'
      '  ALERTSCHEDNOLO,'
      '  ALERTDATICLI,'
      '  DEFTIPORIP,'
      '  ENABCV,'
      '  ENABFINV,'
      '  ENABFINSCHE,'
      '  ENABRIP,'
      '  ENABOPER,'
      '  ENABREP,'
      '  ENABTREE,'
      '  ENABTENNIS,'
      '  ENABLABMODULE,'
      '  NOLOSOFT_VER,'
      '  INCORDOMAGGIO,'
      '  SENDNOLOTOCLI,'
      '  ALLARMSCHEDCLIZERO,'
      '  ALLARMDELETESCHEDULE,'
      '  ALLARMDELETECLI,'
      '  ALLARMDELETEART,'
      '  SMSCONSEGNA,'
      '  EMAILCONSEGNA,'
      '  EMAILCONFERMACHIUSURA,'
      '  SMSCONFERMACHIUSURA,'
      '  SAVESCHEDTOPDF,'
      '  PATHFILEPDFSCHED,'
      '  RFIDCOMPORT,'
      '  RFIDBADURATE,'
      '  OPNSYSTEM,'
      '  CALCZFACT,'
      '  CAMERA,'
      '  CAMERAID,'
      '  DOCIMAGESAVEPATH,'
      '  ENABLEADVISE'
      'from LOCALSETINGS '
      'where'
      '  IDSETTINGS = :IDSETTINGS')
    SelectSQL.Strings = (
      'select * from LOCALSETINGS')
    ModifySQL.Strings = (
      'update LOCALSETINGS'
      'set'
      '  IDSETTINGS = :IDSETTINGS,'
      '  POSTAZIONE = :POSTAZIONE,'
      '  ETIC_PRINTER = :ETIC_PRINTER,'
      '  PAPER_PRINTER = :PAPER_PRINTER,'
      '  ALERTSCHEDNOLO = :ALERTSCHEDNOLO,'
      '  ALERTDATICLI = :ALERTDATICLI,'
      '  DEFTIPORIP = :DEFTIPORIP,'
      '  ENABCV = :ENABCV,'
      '  ENABFINV = :ENABFINV,'
      '  ENABFINSCHE = :ENABFINSCHE,'
      '  ENABRIP = :ENABRIP,'
      '  ENABOPER = :ENABOPER,'
      '  ENABREP = :ENABREP,'
      '  ENABTREE = :ENABTREE,'
      '  ENABTENNIS = :ENABTENNIS,'
      '  ENABLABMODULE = :ENABLABMODULE,'
      '  NOLOSOFT_VER = :NOLOSOFT_VER,'
      '  INCORDOMAGGIO = :INCORDOMAGGIO,'
      '  SENDNOLOTOCLI = :SENDNOLOTOCLI,'
      '  ALLARMSCHEDCLIZERO = :ALLARMSCHEDCLIZERO,'
      '  ALLARMDELETESCHEDULE = :ALLARMDELETESCHEDULE,'
      '  ALLARMDELETECLI = :ALLARMDELETECLI,'
      '  ALLARMDELETEART = :ALLARMDELETEART,'
      '  SMSCONSEGNA = :SMSCONSEGNA,'
      '  EMAILCONSEGNA = :EMAILCONSEGNA,'
      '  EMAILCONFERMACHIUSURA = :EMAILCONFERMACHIUSURA,'
      '  SMSCONFERMACHIUSURA = :SMSCONFERMACHIUSURA,'
      '  SAVESCHEDTOPDF = :SAVESCHEDTOPDF,'
      '  PATHFILEPDFSCHED = :PATHFILEPDFSCHED,'
      '  RFIDCOMPORT = :RFIDCOMPORT,'
      '  RFIDBADURATE = :RFIDBADURATE,'
      '  OPNSYSTEM = :OPNSYSTEM,'
      '  CALCZFACT = :CALCZFACT,'
      '  CAMERA = :CAMERA,'
      '  CAMERAID = :CAMERAID,'
      '  DOCIMAGESAVEPATH = :DOCIMAGESAVEPATH,'
      '  ENABLEADVISE = :ENABLEADVISE'
      'where'
      '  IDSETTINGS = :OLD_IDSETTINGS')
    GeneratorField.Field = 'IDSETTINGS'
    GeneratorField.Generator = 'GEN_LOCSETTINGS_ID'
    Left = 968
    Top = 336
    object IBDataSetLocalParamIDSETTINGS: TFloatField
      Alignment = taLeftJustify
      FieldName = 'IDSETTINGS'
      Origin = 'LOCALSETINGS.IDSETTINGS'
      Required = True
    end
    object IBDataSetLocalParamPOSTAZIONE: TIBStringField
      FieldName = 'POSTAZIONE'
      Origin = 'LOCALSETINGS.POSTAZIONE'
      Size = 31
    end
    object IBDataSetLocalParamETIC_PRINTER: TIBStringField
      FieldName = 'ETIC_PRINTER'
      Origin = 'LOCALSETINGS.ETIC_PRINTER'
      Size = 99
    end
    object IBDataSetLocalParamPAPER_PRINTER: TIBStringField
      FieldName = 'PAPER_PRINTER'
      Origin = 'LOCALSETINGS.PAPER_PRINTER'
      Size = 99
    end
    object IBDataSetLocalParamALERTSCHEDNOLO: TIntegerField
      FieldName = 'ALERTSCHEDNOLO'
      Origin = 'LOCALSETINGS.ALERTSCHEDNOLO'
      Required = True
    end
    object IBDataSetLocalParamALERTDATICLI: TIntegerField
      FieldName = 'ALERTDATICLI'
      Origin = 'LOCALSETINGS.ALERTDATICLI'
      Required = True
    end
    object IBDataSetLocalParamDEFTIPORIP: TIBStringField
      FieldName = 'DEFTIPORIP'
      Origin = 'LOCALSETINGS.DEFTIPORIP'
    end
    object IBDataSetLocalParamENABCV: TSmallintField
      FieldName = 'ENABCV'
      Origin = 'LOCALSETINGS.ENABCV'
    end
    object IBDataSetLocalParamENABFINV: TSmallintField
      FieldName = 'ENABFINV'
      Origin = 'LOCALSETINGS.ENABFINV'
    end
    object IBDataSetLocalParamENABFINSCHE: TSmallintField
      FieldName = 'ENABFINSCHE'
      Origin = 'LOCALSETINGS.ENABFINSCHE'
    end
    object IBDataSetLocalParamENABRIP: TSmallintField
      FieldName = 'ENABRIP'
      Origin = 'LOCALSETINGS.ENABRIP'
    end
    object IBDataSetLocalParamENABOPER: TSmallintField
      FieldName = 'ENABOPER'
      Origin = 'LOCALSETINGS.ENABOPER'
    end
    object IBDataSetLocalParamENABREP: TSmallintField
      FieldName = 'ENABREP'
      Origin = 'LOCALSETINGS.ENABREP'
    end
    object IBDataSetLocalParamENABTREE: TSmallintField
      FieldName = 'ENABTREE'
      Origin = 'LOCALSETINGS.ENABTREE'
    end
    object IBDataSetLocalParamENABTENNIS: TSmallintField
      FieldName = 'ENABTENNIS'
      Origin = 'LOCALSETINGS.ENABTENNIS'
    end
    object IBDataSetLocalParamENABLABMODULE: TSmallintField
      FieldName = 'ENABLABMODULE'
      Origin = 'LOCALSETINGS.ENABLABMODULE'
    end
    object IBDataSetLocalParamNOLOSOFT_VER: TIBStringField
      FieldName = 'NOLOSOFT_VER'
      Origin = 'LOCALSETINGS.NOLOSOFT_VER'
      Size = 15
    end
    object IBDataSetLocalParamINCORDOMAGGIO: TIntegerField
      FieldName = 'INCORDOMAGGIO'
      Origin = 'LOCALSETINGS.INCORDOMAGGIO'
    end
    object IBDataSetLocalParamSENDNOLOTOCLI: TIntegerField
      FieldName = 'SENDNOLOTOCLI'
      Origin = 'LOCALSETINGS.SENDNOLOTOCLI'
    end
    object IBDataSetLocalParamALLARMSCHEDCLIZERO: TIntegerField
      FieldName = 'ALLARMSCHEDCLIZERO'
      Origin = 'LOCALSETINGS.ALLARMSCHEDCLIZERO'
    end
    object IBDataSetLocalParamALLARMDELETESCHEDULE: TIntegerField
      FieldName = 'ALLARMDELETESCHEDULE'
      Origin = 'LOCALSETINGS.ALLARMDELETESCHEDULE'
    end
    object IBDataSetLocalParamALLARMDELETECLI: TIntegerField
      FieldName = 'ALLARMDELETECLI'
      Origin = 'LOCALSETINGS.ALLARMDELETECLI'
    end
    object IBDataSetLocalParamALLARMDELETEART: TIntegerField
      FieldName = 'ALLARMDELETEART'
      Origin = 'LOCALSETINGS.ALLARMDELETEART'
    end
    object IBDataSetLocalParamSMSCONSEGNA: TIntegerField
      FieldName = 'SMSCONSEGNA'
      Origin = 'LOCALSETINGS.SMSCONSEGNA'
    end
    object IBDataSetLocalParamEMAILCONSEGNA: TIntegerField
      FieldName = 'EMAILCONSEGNA'
      Origin = 'LOCALSETINGS.EMAILCONSEGNA'
    end
    object IBDataSetLocalParamEMAILCONFERMACHIUSURA: TIntegerField
      FieldName = 'EMAILCONFERMACHIUSURA'
      Origin = 'LOCALSETINGS.EMAILCONFERMACHIUSURA'
    end
    object IBDataSetLocalParamSMSCONFERMACHIUSURA: TIntegerField
      FieldName = 'SMSCONFERMACHIUSURA'
      Origin = 'LOCALSETINGS.SMSCONFERMACHIUSURA'
    end
    object IBDataSetLocalParamSAVESCHEDTOPDF: TIntegerField
      FieldName = 'SAVESCHEDTOPDF'
      Origin = 'LOCALSETINGS.SAVESCHEDTOPDF'
    end
    object IBDataSetLocalParamPATHFILEPDFSCHED: TIBStringField
      FieldName = 'PATHFILEPDFSCHED'
      Origin = 'LOCALSETINGS.PATHFILEPDFSCHED'
      Size = 100
    end
    object IBDataSetLocalParamRFIDCOMPORT: TIntegerField
      FieldName = 'RFIDCOMPORT'
      Origin = 'LOCALSETINGS.RFIDCOMPORT'
    end
    object IBDataSetLocalParamRFIDBADURATE: TIntegerField
      FieldName = 'RFIDBADURATE'
      Origin = 'LOCALSETINGS.RFIDBADURATE'
    end
    object IBDataSetLocalParamOPNSYSTEM: TIntegerField
      FieldName = 'OPNSYSTEM'
      Origin = 'LOCALSETINGS.OPNSYSTEM'
      Required = True
    end
    object IBDataSetLocalParamCALCZFACT: TIntegerField
      FieldName = 'CALCZFACT'
      Origin = 'LOCALSETINGS.CALCZFACT'
    end
    object IBDataSetLocalParamCAMERA: TIBStringField
      FieldName = 'CAMERA'
      Origin = 'LOCALSETINGS.CAMERA'
      Size = 30
    end
    object IBDataSetLocalParamCAMERAID: TIntegerField
      FieldName = 'CAMERAID'
      Origin = 'LOCALSETINGS.CAMERAID'
    end
    object IBDataSetLocalParamDOCIMAGESAVEPATH: TIBStringField
      FieldName = 'DOCIMAGESAVEPATH'
      Origin = 'LOCALSETINGS.DOCIMAGESAVEPATH'
      Size = 100
    end
    object IBDataSetLocalParamENABLEADVISE: TSmallintField
      FieldName = 'ENABLEADVISE'
      Origin = 'LOCALSETINGS.ENABLEADVISE'
    end
  end
  object DSLocalParam: TDataSource
    DataSet = IBDataSetLocalParam
    Left = 968
    Top = 288
  end
  object IBQuery1: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction6
    ForcedRefresh = True
    AfterOpen = IBQuery1AfterOpen
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT articolo.ART_NO, articolo.TIPO, articolo.BRAND, '
      
        'articolo.DESCRIZIONE,articolo.MISURA,articolo.STAGIONE,rentedart' +
        '.STATO,count(rentedart.ART_NO)  AS QTA, articolo.available, rent' +
        'edart.zfactor, rentedart.codice'
      
        'FROM articolo join rentedart on articolo.art_no=rentedart.art_no' +
        ' join schedule on '
      'schedule.SCHED_NO=rentedart.sched_no '
      'WHERE RENTEDART.SCHED_NO = :SCHEDNO'
      'GROUP BY articolo.ART_NO, articolo.tipo '
      ',articolo.BRAND, '
      
        'articolo.DESCRIZIONE,articolo.MISURA,articolo.STAGIONE,rentedart' +
        '.STATO, rentedart.ART_NO, articolo.available, rentedart.zfactor,' +
        ' rentedart.codice')
    Left = 800
    Top = 336
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'SCHEDNO'
        ParamType = ptUnknown
      end>
  end
  object DSQuery1: TDataSource
    DataSet = IBQuery1
    Left = 800
    Top = 288
  end
  object IBTransaction19: TIBTransaction
    Active = False
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 800
    Top = 240
  end
  object DSMat: TDataSource
    DataSet = IBDataSetMat
    OnDataChange = DSMatDataChange
    Left = 408
    Top = 272
  end
  object IBTransaction20: TIBTransaction
    Active = False
    DefaultDatabase = IBDatabase1
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 408
    Top = 224
  end
  object IBDataSetMat: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction20
    AfterCancel = IBDataSetMatAfterCancel
    AfterDelete = IBDataSetMatAfterDelete
    AfterInsert = IBDataSetMatAfterInsert
    AfterPost = IBDataSetMatAfterPost
    BeforeDelete = IBDataSetMatBeforeDelete
    BeforeEdit = IBDataSetMatBeforeEdit
    BeforeInsert = IBDataSetMatBeforeInsert
    BeforePost = IBDataSetMatBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from MATASSE'
      'where'
      '  IDMAT = :OLD_IDMAT and'
      '  IDCLI = :OLD_IDCLI and'
      '  DATAINTRO = :OLD_DATAINTRO and'
      '  DATAFINE = :OLD_DATAFINE and'
      '  DESCRIZIONE = :OLD_DESCRIZIONE and'
      '  BRAND = :OLD_BRAND and'
      '  COLORE = :OLD_COLORE and'
      '  CALIBRO = :OLD_CALIBRO and'
      '  SEZIONE = :OLD_SEZIONE and'
      '  PREZZO_PUB = :OLD_PREZZO_PUB and'
      '  PAGATA = :OLD_PAGATA and'
      '  PAYMENTWAY = :OLD_PAYMENTWAY')
    InsertSQL.Strings = (
      'insert into MATASSE'
      
        '  (IDMAT, IDCLI, DATAINTRO, DATAFINE, DESCRIZIONE, BRAND, COLORE' +
        ', '
      'CALIBRO, '
      '   SEZIONE, PREZZO_PUB, PAGATA, PAYMENTWAY)'
      'values'
      
        '  (:IDMAT, :IDCLI, :DATAINTRO, :DATAFINE, :DESCRIZIONE, :BRAND, ' +
        ':COLORE, '
      '   :CALIBRO, :SEZIONE, :PREZZO_PUB, :PAGATA, :PAYMENTWAY)')
    RefreshSQL.Strings = (
      'Select '
      '  IDMAT,'
      '  IDCLI,'
      '  DATAINTRO,'
      '  DATAFINE,'
      '  DESCRIZIONE,'
      '  BRAND,'
      '  COLORE,'
      '  CALIBRO,'
      '  SEZIONE,'
      '  PREZZO_PUB,'
      '  PAGATA,'
      '  PAYMENTWAY,'
      '  EANCODEART'
      'from MATASSE '
      'where'
      '  IDMAT = :IDMAT and'
      '  IDCLI = :IDCLI and'
      '  DATAINTRO = :DATAINTRO and'
      '  DATAFINE = :DATAFINE and'
      '  DESCRIZIONE = :DESCRIZIONE and'
      '  BRAND = :BRAND and'
      '  COLORE = :COLORE and'
      '  CALIBRO = :CALIBRO and'
      '  SEZIONE = :SEZIONE and'
      '  PREZZO_PUB = :PREZZO_PUB and'
      '  PAGATA = :PAGATA and'
      '  PAYMENTWAY = :PAYMENTWAY')
    SelectSQL.Strings = (
      'select * from matasse')
    ModifySQL.Strings = (
      'update MATASSE'
      'set'
      '  IDMAT = :IDMAT,'
      '  IDCLI = :IDCLI,'
      '  DATAINTRO = :DATAINTRO,'
      '  DATAFINE = :DATAFINE,'
      '  DESCRIZIONE = :DESCRIZIONE,'
      '  BRAND = :BRAND,'
      '  COLORE = :COLORE,'
      '  CALIBRO = :CALIBRO,'
      '  SEZIONE = :SEZIONE,'
      '  PREZZO_PUB = :PREZZO_PUB,'
      '  PAGATA = :PAGATA,'
      '  PAYMENTWAY = :PAYMENTWAY'
      'where'
      '  IDMAT = :OLD_IDMAT and'
      '  IDCLI = :OLD_IDCLI and'
      '  DATAINTRO = :OLD_DATAINTRO and'
      '  DATAFINE = :OLD_DATAFINE and'
      '  DESCRIZIONE = :OLD_DESCRIZIONE and'
      '  BRAND = :OLD_BRAND and'
      '  COLORE = :OLD_COLORE and'
      '  CALIBRO = :OLD_CALIBRO and'
      '  SEZIONE = :OLD_SEZIONE and'
      '  PREZZO_PUB = :OLD_PREZZO_PUB and'
      '  PAGATA = :OLD_PAGATA and'
      '  PAYMENTWAY = :OLD_PAYMENTWAY')
    GeneratorField.Field = 'IDMAT'
    GeneratorField.Generator = 'GEN_MATASSE_ID'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 408
    Top = 320
    object IBDataSetMatIDMAT: TIntegerField
      FieldName = 'IDMAT'
      Origin = 'MATASSE.IDMAT'
      Required = True
    end
    object IBDataSetMatIDCLI: TIntegerField
      FieldName = 'IDCLI'
      Origin = 'MATASSE.IDCLI'
      Required = True
    end
    object IBDataSetMatDATAINTRO: TDateTimeField
      FieldName = 'DATAINTRO'
      Origin = 'MATASSE.DATAINTRO'
      Required = True
    end
    object IBDataSetMatDATAFINE: TDateTimeField
      FieldName = 'DATAFINE'
      Origin = 'MATASSE.DATAFINE'
    end
    object IBDataSetMatDESCRIZIONE: TIBStringField
      FieldName = 'DESCRIZIONE'
      Origin = 'MATASSE.DESCRIZIONE'
      Required = True
    end
    object IBDataSetMatBRAND: TIBStringField
      FieldName = 'BRAND'
      Origin = 'MATASSE.BRAND'
      Required = True
    end
    object IBDataSetMatCOLORE: TIBStringField
      FieldName = 'COLORE'
      Origin = 'MATASSE.COLORE'
    end
    object IBDataSetMatCALIBRO: TIBStringField
      FieldName = 'CALIBRO'
      Origin = 'MATASSE.CALIBRO'
    end
    object IBDataSetMatSEZIONE: TIBStringField
      FieldName = 'SEZIONE'
      Origin = 'MATASSE.SEZIONE'
    end
    object IBDataSetMatPREZZO_PUB: TFloatField
      FieldName = 'PREZZO_PUB'
      Origin = 'MATASSE.PREZZO_PUB'
      OnSetText = IBDataSetMatPREZZO_PUBSetText
    end
    object IBDataSetMatPAGATA: TIntegerField
      FieldName = 'PAGATA'
      Origin = 'MATASSE.PAGATA'
    end
    object IBDataSetMatPAYMENTWAY: TIBStringField
      FieldName = 'PAYMENTWAY'
      Origin = 'MATASSE.PAYMENTWAY'
    end
    object IBDataSetMatEANCODEART: TIBStringField
      FieldName = 'EANCODEART'
      Origin = 'MATASSE.EANCODEART'
      Size = 15
    end
  end
  object IBTransaction21: TIBTransaction
    Active = False
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 536
    Top = 224
  end
  object DSIncord: TDataSource
    DataSet = IBDataSetIncord
    OnDataChange = DSIncordDataChange
    Left = 536
    Top = 272
  end
  object IBDataSetIncord: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction21
    AfterCancel = IBDataSetIncordAfterCancel
    AfterDelete = IBDataSetIncordAfterDelete
    AfterInsert = IBDataSetIcordAfterInsert
    AfterPost = IBDataSetIncordAfterPost
    AfterScroll = IBDataSetIncordAfterScroll
    BeforeDelete = IBDataSetIncordBeforeDelete
    BeforeEdit = IBDataSetIncordBeforeEdit
    BeforeInsert = IBDataSetIncordBeforeInsert
    BeforePost = IBDataSetIncordBeforePost
    OnCalcFields = IBDataSetIncordCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from INCORDATURE'
      'where'
      '  INC_NO = :OLD_INC_NO')
    InsertSQL.Strings = (
      'insert into INCORDATURE'
      
        '  (INC_NO, ART_NO, DATAINSERT, DATAREADY, DATARICCONS, TIPOPAGAM' +
        'ENTO, EANCODE, '
      
        '   GRIPMANICO, ANTIBOUNCHE, PROTEZIONETESTA, PIOMBATURAGR, NOTEP' +
        'IOMBATURA, '
      
        '   NOTE, COSTO_INCORD, COSTOGRIP, COSTOANTIBOUNCHE, COSTOPROTEZ,' +
        ' COSTOPIOMB, '
      
        '   MANICO, COSTOMANICO, COSTOEXTRA, MOTIVOINCAZERO, SCONTO, SUBT' +
        'OTALE, '
      
        '   TOTALE, ID_MATVERT, ID_MATHOR, TENSORIZ, TENSVERT, URGENTE, E' +
        'ANGRIP, '
      
        '   EANANTIBOUNCHE, EANMANICO, ACCONTO, DATAULTIMOD, DATAACCONTO,' +
        ' DATASALDO, '
      
        '   PIOMBPOSIZ, SILICONEMANICO, EANOVERGRIP, OVERGRIP, COSTOOVERG' +
        'RIP, COSTOSILICONE, '
      
        '   SALDO, LAVORIEXTRA, EANCODEMATH, EANCODEMATO, EANNASTRO, EANP' +
        'IOMBO)'
      'values'
      
        '  (:INC_NO, :ART_NO, :DATAINSERT, :DATAREADY, :DATARICCONS, :TIP' +
        'OPAGAMENTO, '
      
        '   :EANCODE, :GRIPMANICO, :ANTIBOUNCHE, :PROTEZIONETESTA, :PIOMB' +
        'ATURAGR, '
      
        '   :NOTEPIOMBATURA, :NOTE, :COSTO_INCORD, :COSTOGRIP, :COSTOANTI' +
        'BOUNCHE, '
      
        '   :COSTOPROTEZ, :COSTOPIOMB, :MANICO, :COSTOMANICO, :COSTOEXTRA' +
        ', :MOTIVOINCAZERO, '
      
        '   :SCONTO, :SUBTOTALE, :TOTALE, :ID_MATVERT, :ID_MATHOR, :TENSO' +
        'RIZ, :TENSVERT, '
      
        '   :URGENTE, :EANGRIP, :EANANTIBOUNCHE, :EANMANICO, :ACCONTO, :D' +
        'ATAULTIMOD, '
      
        '   :DATAACCONTO, :DATASALDO, :PIOMBPOSIZ, :SILICONEMANICO, :EANO' +
        'VERGRIP, '
      
        '   :OVERGRIP, :COSTOOVERGRIP, :COSTOSILICONE, :SALDO, :LAVORIEXT' +
        'RA, :EANCODEMATH, '
      '   :EANCODEMATO, :EANNASTRO, :EANPIOMBO)')
    RefreshSQL.Strings = (
      'Select '
      '  INC_NO,'
      '  ART_NO,'
      '  DATAINSERT,'
      '  DATAREADY,'
      '  DATARICCONS,'
      '  TIPOPAGAMENTO,'
      '  EANCODE,'
      '  GRIPMANICO,'
      '  ANTIBOUNCHE,'
      '  PROTEZIONETESTA,'
      '  PIOMBATURAGR,'
      '  NOTEPIOMBATURA,'
      '  NOTE,'
      '  COSTO_INCORD,'
      '  COSTOGRIP,'
      '  COSTOANTIBOUNCHE,'
      '  COSTOPROTEZ,'
      '  COSTOPIOMB,'
      '  MANICO,'
      '  COSTOMANICO,'
      '  COSTOEXTRA,'
      '  MOTIVOINCAZERO,'
      '  SCONTO,'
      '  SUBTOTALE,'
      '  TOTALE,'
      '  ID_MATVERT,'
      '  ID_MATHOR,'
      '  TENSORIZ,'
      '  TENSVERT,'
      '  URGENTE,'
      '  EANGRIP,'
      '  EANANTIBOUNCHE,'
      '  EANMANICO,'
      '  ACCONTO,'
      '  DATAULTIMOD,'
      '  DATAACCONTO,'
      '  DATASALDO,'
      '  PIOMBPOSIZ,'
      '  SILICONEMANICO,'
      '  EANOVERGRIP,'
      '  OVERGRIP,'
      '  COSTOOVERGRIP,'
      '  COSTOSILICONE,'
      '  SALDO,'
      '  LAVORIEXTRA,'
      '  EANCODEMATH,'
      '  EANCODEMATO,'
      '  EANNASTRO,'
      '  EANPIOMBO'
      'from INCORDATURE '
      'where'
      '  INC_NO = :INC_NO')
    SelectSQL.Strings = (
      'select * from INCORDATURE')
    ModifySQL.Strings = (
      'update INCORDATURE'
      'set'
      '  INC_NO = :INC_NO,'
      '  ART_NO = :ART_NO,'
      '  DATAINSERT = :DATAINSERT,'
      '  DATAREADY = :DATAREADY,'
      '  DATARICCONS = :DATARICCONS,'
      '  TIPOPAGAMENTO = :TIPOPAGAMENTO,'
      '  EANCODE = :EANCODE,'
      '  GRIPMANICO = :GRIPMANICO,'
      '  ANTIBOUNCHE = :ANTIBOUNCHE,'
      '  PROTEZIONETESTA = :PROTEZIONETESTA,'
      '  PIOMBATURAGR = :PIOMBATURAGR,'
      '  NOTEPIOMBATURA = :NOTEPIOMBATURA,'
      '  NOTE = :NOTE,'
      '  COSTO_INCORD = :COSTO_INCORD,'
      '  COSTOGRIP = :COSTOGRIP,'
      '  COSTOANTIBOUNCHE = :COSTOANTIBOUNCHE,'
      '  COSTOPROTEZ = :COSTOPROTEZ,'
      '  COSTOPIOMB = :COSTOPIOMB,'
      '  MANICO = :MANICO,'
      '  COSTOMANICO = :COSTOMANICO,'
      '  COSTOEXTRA = :COSTOEXTRA,'
      '  MOTIVOINCAZERO = :MOTIVOINCAZERO,'
      '  SCONTO = :SCONTO,'
      '  SUBTOTALE = :SUBTOTALE,'
      '  TOTALE = :TOTALE,'
      '  ID_MATVERT = :ID_MATVERT,'
      '  ID_MATHOR = :ID_MATHOR,'
      '  TENSORIZ = :TENSORIZ,'
      '  TENSVERT = :TENSVERT,'
      '  URGENTE = :URGENTE,'
      '  EANGRIP = :EANGRIP,'
      '  EANANTIBOUNCHE = :EANANTIBOUNCHE,'
      '  EANMANICO = :EANMANICO,'
      '  ACCONTO = :ACCONTO,'
      '  DATAULTIMOD = :DATAULTIMOD,'
      '  DATAACCONTO = :DATAACCONTO,'
      '  DATASALDO = :DATASALDO,'
      '  PIOMBPOSIZ = :PIOMBPOSIZ,'
      '  SILICONEMANICO = :SILICONEMANICO,'
      '  EANOVERGRIP = :EANOVERGRIP,'
      '  OVERGRIP = :OVERGRIP,'
      '  COSTOOVERGRIP = :COSTOOVERGRIP,'
      '  COSTOSILICONE = :COSTOSILICONE,'
      '  SALDO = :SALDO,'
      '  LAVORIEXTRA = :LAVORIEXTRA,'
      '  EANCODEMATH = :EANCODEMATH,'
      '  EANCODEMATO = :EANCODEMATO,'
      '  EANNASTRO = :EANNASTRO,'
      '  EANPIOMBO = :EANPIOMBO'
      'where'
      '  INC_NO = :OLD_INC_NO')
    GeneratorField.Field = 'INC_NO'
    GeneratorField.Generator = 'GEN_INCORDATURE_ID'
    Left = 536
    Top = 320
    object IBDataSetIncordINC_NO: TIntegerField
      FieldName = 'INC_NO'
      Origin = 'INCORDATURE.INC_NO'
      Required = True
    end
    object IBDataSetIncordART_NO: TIntegerField
      FieldName = 'ART_NO'
      Origin = 'INCORDATURE.ART_NO'
      Required = True
    end
    object IBDataSetIncordDATAINSERT: TDateTimeField
      FieldName = 'DATAINSERT'
      Origin = 'INCORDATURE.DATAINSERT'
      Required = True
    end
    object IBDataSetIncordDATAREADY: TDateTimeField
      FieldName = 'DATAREADY'
      Origin = 'INCORDATURE.DATAREADY'
    end
    object IBDataSetIncordDATARICCONS: TDateTimeField
      FieldName = 'DATARICCONS'
      Origin = 'INCORDATURE.DATARICCONS'
      Required = True
    end
    object IBDataSetIncordTIPOPAGAMENTO: TIBStringField
      FieldName = 'TIPOPAGAMENTO'
      Origin = 'INCORDATURE.TIPOPAGAMENTO'
      Size = 25
    end
    object IBDataSetIncordEANCODE: TIBStringField
      Alignment = taRightJustify
      FieldName = 'EANCODE'
      Origin = 'INCORDATURE.EANCODE'
    end
    object IBDataSetIncordGRIPMANICO: TIBStringField
      FieldName = 'GRIPMANICO'
      Origin = 'INCORDATURE.GRIPMANICO'
    end
    object IBDataSetIncordANTIBOUNCHE: TIBStringField
      FieldName = 'ANTIBOUNCHE'
      Origin = 'INCORDATURE.ANTIBOUNCHE'
      OnChange = IBDataSetIncordANTIBOUNCHEChange
    end
    object IBDataSetIncordPROTEZIONETESTA: TIBStringField
      FieldName = 'PROTEZIONETESTA'
      Origin = 'INCORDATURE.PROTEZIONETESTA'
      OnChange = IBDataSetIncordPROTEZIONETESTAChange
    end
    object IBDataSetIncordPIOMBATURAGR: TIBStringField
      FieldName = 'PIOMBATURAGR'
      Origin = 'INCORDATURE.PIOMBATURAGR'
      Size = 5
    end
    object IBDataSetIncordNOTEPIOMBATURA: TMemoField
      FieldName = 'NOTEPIOMBATURA'
      Origin = 'INCORDATURE.NOTEPIOMBATURA'
      BlobType = ftMemo
      Size = 8
    end
    object IBDataSetIncordNOTE: TMemoField
      FieldName = 'NOTE'
      Origin = 'INCORDATURE.NOTE'
      BlobType = ftMemo
      Size = 8
    end
    object IBDataSetIncordCOSTO_INCORD: TFloatField
      DefaultExpression = '0'
      FieldName = 'COSTO_INCORD'
      Origin = 'INCORDATURE.COSTO_INCORD'
      Required = True
      OnSetText = IBDataSetIncordCOSTO_INCORDSetText
      currency = True
    end
    object IBDataSetIncordCOSTOGRIP: TFloatField
      FieldName = 'COSTOGRIP'
      Origin = 'INCORDATURE.COSTOGRIP'
      OnSetText = IBDataSetIncordCOSTOGRIPSetText
      currency = True
    end
    object IBDataSetIncordCOSTOPROTEZ: TFloatField
      CustomConstraint = '0'
      FieldName = 'COSTOPROTEZ'
      Origin = 'INCORDATURE.COSTOPROTEZ'
      OnSetText = IBDataSetIncordCOSTOPROTEZSetText
      currency = True
    end
    object IBDataSetIncordCOSTOPIOMB: TFloatField
      FieldName = 'COSTOPIOMB'
      Origin = 'INCORDATURE.COSTOPIOMB'
      OnSetText = IBDataSetIncordCOSTOPIOMBSetText
      currency = True
    end
    object IBDataSetIncordMANICO: TIBStringField
      FieldName = 'MANICO'
      Origin = 'INCORDATURE.MANICO'
      OnChange = IBDataSetIncordMANICOChange
      Size = 25
    end
    object IBDataSetIncordCOSTOMANICO: TFloatField
      FieldName = 'COSTOMANICO'
      Origin = 'INCORDATURE.COSTOMANICO'
      OnSetText = IBDataSetIncordCOSTOMANICOSetText
      currency = True
    end
    object IBDataSetIncordCOSTOEXTRA: TFloatField
      FieldName = 'COSTOEXTRA'
      Origin = 'INCORDATURE.COSTOEXTRA'
      OnSetText = IBDataSetIncordCOSTOEXTRASetText
      currency = True
    end
    object IBDataSetIncordSCONTO: TFloatField
      FieldName = 'SCONTO'
      Origin = 'INCORDATURE.SCONTO'
      OnSetText = IBDataSetIncordSCONTOSetText
    end
    object IBDataSetIncordSUBTOTALE: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SUBTOTALE'
      Origin = 'INCORDATURE.SUBTOTALE'
      OnSetText = IBDataSetIncordSUBTOTALESetText
      currency = True
      Calculated = True
    end
    object IBDataSetIncordTOTALE: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'TOTALE'
      Origin = 'INCORDATURE.TOTALE'
      OnChange = IBDataSetIncordTOTALEChange
      OnSetText = IBDataSetIncordTOTALESetText
      currency = True
    end
    object IBDataSetIncordURGENTE: TIntegerField
      FieldName = 'URGENTE'
      Origin = 'INCORDATURE.URGENTE'
    end
    object IBDataSetIncordCOSTOANTIBOUNCHE: TFloatField
      FieldName = 'COSTOANTIBOUNCHE'
      Origin = 'INCORDATURE.COSTOANTIBOUNCHE'
      OnSetText = IBDataSetIncordCOSTOANTIBOUNCHESetText
      currency = True
    end
    object IBDataSetIncordEANGRIP: TIBStringField
      FieldName = 'EANGRIP'
      Origin = 'INCORDATURE.EANGRIP'
      OnChange = IBDataSetIncordEANGRIPChange
    end
    object IBDataSetIncordEANANTIBOUNCHE: TIBStringField
      FieldName = 'EANANTIBOUNCHE'
      Origin = 'INCORDATURE.EANANTIBOUNCHE'
      OnChange = IBDataSetIncordEANANTIBOUNCHEChange
    end
    object IBDataSetIncordEANMANICO: TIBStringField
      FieldName = 'EANMANICO'
      Origin = 'INCORDATURE.EANMANICO'
      OnChange = IBDataSetIncordEANMANICOChange
    end
    object IBDataSetIncordACCONTO: TFloatField
      FieldName = 'ACCONTO'
      Origin = 'INCORDATURE.ACCONTO'
      OnSetText = IBDataSetIncordACCONTOSetText
      currency = True
    end
    object IBDataSetIncordDATAULTIMOD: TDateTimeField
      FieldName = 'DATAULTIMOD'
      Origin = 'INCORDATURE.DATAULTIMOD'
    end
    object IBDataSetIncordDATAACCONTO: TDateTimeField
      FieldName = 'DATAACCONTO'
      Origin = 'INCORDATURE.DATAACCONTO'
    end
    object IBDataSetIncordDATASALDO: TDateTimeField
      FieldName = 'DATASALDO'
      Origin = 'INCORDATURE.DATASALDO'
    end
    object IBDataSetIncordPIOMBPOSIZ: TIBStringField
      FieldName = 'PIOMBPOSIZ'
      Origin = 'INCORDATURE.PIOMBPOSIZ'
      OnChange = IBDataSetIncordPIOMBPOSIZChange
    end
    object IBDataSetIncordSILICONEMANICO: TIntegerField
      FieldName = 'SILICONEMANICO'
      Origin = 'INCORDATURE.SILICONEMANICO'
      OnChange = IBDataSetIncordSILICONEMANICOChange
    end
    object IBDataSetIncordEANOVERGRIP: TIBStringField
      FieldName = 'EANOVERGRIP'
      Origin = 'INCORDATURE.EANOVERGRIP'
      OnChange = IBDataSetIncordEANOVERGRIPChange
    end
    object IBDataSetIncordOVERGRIP: TIBStringField
      FieldName = 'OVERGRIP'
      Origin = 'INCORDATURE.OVERGRIP'
      OnChange = IBDataSetIncordOVERGRIPChange
      Size = 40
    end
    object IBDataSetIncordCOSTOOVERGRIP: TFloatField
      FieldName = 'COSTOOVERGRIP'
      Origin = 'INCORDATURE.COSTOOVERGRIP'
      OnSetText = IBDataSetIncordCOSTOOVERGRIPSetText
      currency = True
    end
    object IBDataSetIncordCOSTOSILICONE: TFloatField
      FieldName = 'COSTOSILICONE'
      Origin = 'INCORDATURE.COSTOSILICONE'
      OnSetText = IBDataSetIncordCOSTOSILICONESetText
      currency = True
    end
    object IBDataSetIncordSALDO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SALDO'
      Origin = 'INCORDATURE.SALDO'
      currency = True
      Calculated = True
    end
    object IBDataSetIncordLAVORIEXTRA: TBlobField
      FieldName = 'LAVORIEXTRA'
      Origin = 'INCORDATURE.LAVORIEXTRA'
      OnChange = IBDataSetIncordLAVORIEXTRAChange
      Size = 8
    end
    object IBDataSetIncordMOTIVOINCAZERO: TIBStringField
      FieldName = 'MOTIVOINCAZERO'
      Origin = 'INCORDATURE.MOTIVOINCAZERO'
      Size = 100
    end
    object IBDataSetIncordID_MATVERT: TIntegerField
      FieldName = 'ID_MATVERT'
      Origin = 'INCORDATURE.ID_MATVERT'
      OnChange = IBDataSetIncordID_MATVERTChange
    end
    object IBDataSetIncordID_MATHOR: TIntegerField
      FieldName = 'ID_MATHOR'
      Origin = 'INCORDATURE.ID_MATHOR'
      OnChange = IBDataSetIncordID_MATHORChange
    end
    object IBDataSetIncordTENSORIZ: TFloatField
      FieldName = 'TENSORIZ'
      Origin = 'INCORDATURE.TENSORIZ'
    end
    object IBDataSetIncordTENSVERT: TFloatField
      FieldName = 'TENSVERT'
      Origin = 'INCORDATURE.TENSVERT'
    end
    object IBDataSetIncordEANCODEMATH: TIBStringField
      FieldName = 'EANCODEMATH'
      Origin = 'INCORDATURE.EANCODEMATH'
    end
    object IBDataSetIncordEANCODEMATO: TIBStringField
      FieldName = 'EANCODEMATO'
      Origin = 'INCORDATURE.EANCODEMATO'
    end
    object IBDataSetIncordEANNASTRO: TIBStringField
      FieldName = 'EANNASTRO'
      Origin = 'INCORDATURE.EANNASTRO'
      OnChange = IBDataSetIncordEANNASTROChange
      Size = 15
    end
    object IBDataSetIncordEANPIOMBO: TIBStringField
      FieldName = 'EANPIOMBO'
      Origin = 'INCORDATURE.EANPIOMBO'
      OnChange = IBDataSetIncordEANPIOMBOChange
      Size = 15
    end
  end
end
