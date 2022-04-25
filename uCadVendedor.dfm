object frmVendedor: TfrmVendedor
  Left = 0
  Top = 0
  Caption = 'Cadastro Vendedor'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 41
    Width = 118
    Height = 15
    Caption = 'Raz'#227'o Social Vendedor'
  end
  object Label2: TLabel
    Left = 8
    Top = 91
    Width = 43
    Height = 15
    Caption = 'Contato'
  end
  object Label3: TLabel
    Left = 8
    Top = 142
    Width = 44
    Height = 15
    Caption = 'Telefone'
  end
  object Label4: TLabel
    Left = 288
    Top = 142
    Width = 46
    Height = 15
    Caption = 'Pesquisa'
  end
  object Label5: TLabel
    Left = 528
    Top = 3
    Width = 75
    Height = 15
    Caption = 'Cod Vendedor'
  end
  object dbgMostraDadosVendedor: TDBGrid
    Left = 8
    Top = 192
    Width = 601
    Height = 241
    DataSource = dsVendedor
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnCellClick = dbgMostraDadosVendedorCellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Title.Caption = 'Cod Vendedor'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RAZAOSOCIAL'
        Title.Caption = 'Raz'#227'o Social'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONTATO'
        Title.Caption = 'Contato'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFONE'
        Title.Caption = 'Telefone'
        Visible = True
      end>
  end
  object btnConsulta: TButton
    Left = 251
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Consulta'
    TabOrder = 1
    OnClick = btnConsultaClick
  end
  object btnInserir: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Inserir'
    TabOrder = 2
    OnClick = btnInserirClick
  end
  object btnExcluir: TButton
    Left = 332
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 3
    OnClick = btnExcluirClick
  end
  object btnAlterar: TButton
    Left = 170
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Alterar'
    TabOrder = 4
    OnClick = btnAlterarClick
  end
  object edtRazao: TEdit
    Left = 8
    Top = 62
    Width = 601
    Height = 23
    CharCase = ecUpperCase
    TabOrder = 5
  end
  object MaskEdit1: TMaskEdit
    Left = 8
    Top = 163
    Width = 118
    Height = 23
    TabOrder = 6
    Text = ''
  end
  object edtContato: TEdit
    Left = 8
    Top = 112
    Width = 601
    Height = 23
    CharCase = ecUpperCase
    TabOrder = 7
  end
  object edtConsulta: TEdit
    Left = 288
    Top = 163
    Width = 321
    Height = 23
    CharCase = ecUpperCase
    TabOrder = 8
    OnChange = edtConsultaChange
    OnClick = edtConsultaClick
  end
  object edtCodVendedor: TEdit
    Left = 528
    Top = 24
    Width = 81
    Height = 23
    ReadOnly = True
    TabOrder = 9
  end
  object btnSalvar: TButton
    Left = 89
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 10
    OnClick = btnSalvarClick
  end
  object btnRelatorio: TButton
    Left = 413
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Relat'#243'rio'
    TabOrder = 11
    OnClick = btnRelatorioClick
  end
  object dsVendedor: TDataSource
    DataSet = dm_dados.FDTableVendedor
    Left = 128
    Top = 360
  end
  object FDTableVendedor: TFDTable
    IndexFieldNames = 'ID;CONTATO;RAZAOSOCIAL;TELEFONE'
    MasterSource = dsVendedor
    DetailFields = 'CONTATO;ID;RAZAOSOCIAL;TELEFONE'
    Connection = dm_dados.FDConnection
    TableName = 'VENDEDOR'
    Left = 200
    Top = 360
    object FDTableVendedorID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      Required = True
    end
    object FDTableVendedorRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Required = True
      Size = 100
    end
    object FDTableVendedorCONTATO: TStringField
      FieldName = 'CONTATO'
      Origin = 'CONTATO'
      Size = 50
    end
    object FDTableVendedorTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 30
    end
  end
  object FDQryVendedor: TFDQuery
    MasterSource = dsVendedor
    MasterFields = 'ID'
    DetailFields = 'ID'
    Connection = dm_dados.FDConnection
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * from vendedor where id = :id;')
    Left = 48
    Top = 360
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
    object FDQryVendedorID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQryVendedorRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Required = True
      Size = 100
    end
    object FDQryVendedorCONTATO: TStringField
      FieldName = 'CONTATO'
      Origin = 'CONTATO'
      Size = 50
    end
    object FDQryVendedorTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 30
    end
  end
  object ppDBPVendedor: TppDBPipeline
    DataSource = dsVendedor
    RefreshAfterPost = True
    UserName = 'Vendedor'
    Left = 304
    Top = 360
    object ppDBPVendedorppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'ID'
      FieldName = 'ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object ppDBPVendedorppField2: TppField
      FieldAlias = 'RAZAOSOCIAL'
      FieldName = 'RAZAOSOCIAL'
      FieldLength = 100
      DisplayWidth = 100
      Position = 1
    end
    object ppDBPVendedorppField3: TppField
      FieldAlias = 'CONTATO'
      FieldName = 'CONTATO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 2
    end
    object ppDBPVendedorppField4: TppField
      FieldAlias = 'TELEFONE'
      FieldName = 'TELEFONE'
      FieldLength = 30
      DisplayWidth = 30
      Position = 3
    end
  end
  object ppRelVendedor: TppReport
    AutoStop = False
    DataPipeline = ppDBPVendedor
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 
      'C:\Users\willi\Documents\Embarcadero\Studio\Projects\Sistema Cad' +
      'astro\relVendedor.rtm'
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BackgroundPrintSettings.Enabled = True
    BackgroundPrintSettings.Active = True
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'XLSData'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.DigitalSignatureSettings.SignPDF = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.ZoomSetting = zsPageWidth
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    ShowAutoSearchDialog = True
    TextFileName = '($MyDocuments)\Report.xls'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    Left = 392
    Top = 360
    Version = '21.03'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPVendedor'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 45773
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblTitulo'
        Border.mmPadding = 0
        Caption = 'Relat'#243'rio de Vendedores'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 14
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6615
        mmLeft = 58473
        mmTop = 5556
        mmWidth = 58208
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblPaginaTop'
        Border.mmPadding = 0
        Caption = 'P'#225'gina'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5556
        mmLeft = 155311
        mmTop = 5556
        mmWidth = 12435
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        Border.mmPadding = 0
        VarType = vtPageCount
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5556
        mmLeft = 178859
        mmTop = 5556
        mmWidth = 2381
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable2'
        Border.mmPadding = 0
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5556
        mmLeft = 4763
        mmTop = 6615
        mmWidth = 39158
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblID'
        Border.mmPadding = 0
        Caption = 'Id do Vendedor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5557
        mmLeft = 2910
        mmTop = 23283
        mmWidth = 31221
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblContato'
        Border.mmPadding = 0
        Caption = 'Contato'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5556
        mmLeft = 35190
        mmTop = 23283
        mmWidth = 16140
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblRazao'
        Border.mmPadding = 0
        Caption = 'Raz'#227'o Social'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5556
        mmLeft = 92340
        mmTop = 22754
        mmWidth = 25400
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblTelefone'
        Border.mmPadding = 0
        Caption = 'Telefone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5556
        mmLeft = 170921
        mmTop = 22754
        mmWidth = 17727
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 2910
        mmTop = 22754
        mmWidth = 193675
        BandType = 0
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 2910
        mmTop = 29369
        mmWidth = 193675
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dbID'
        Border.mmPadding = 0
        DataField = 'ID'
        DataPipeline = ppDBPVendedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPVendedor'
        mmHeight = 4498
        mmLeft = 2910
        mmTop = 2117
        mmWidth = 31221
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dbContato'
        Border.mmPadding = 0
        DataField = 'CONTATO'
        DataPipeline = ppDBPVendedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPVendedor'
        mmHeight = 4498
        mmLeft = 37306
        mmTop = 3175
        mmWidth = 38894
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dbRazao'
        Border.mmPadding = 0
        DataField = 'RAZAOSOCIAL'
        DataPipeline = ppDBPVendedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPVendedor'
        mmHeight = 4498
        mmLeft = 79111
        mmTop = 3175
        mmWidth = 78581
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dbTelefone'
        Border.mmPadding = 0
        DataField = 'TELEFONE'
        DataPipeline = ppDBPVendedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPVendedor'
        mmHeight = 4498
        mmLeft = 170921
        mmTop = 2117
        mmWidth = 25665
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 9790
      mmPrintPosition = 0
      object ppSystemVariable3: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable3'
        Border.mmPadding = 0
        VarType = vtPageSet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5556
        mmLeft = 98690
        mmTop = 1323
        mmWidth = 10583
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        Border.mmPadding = 0
        Caption = 'P'#225'gina'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Segoe UI'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5556
        mmLeft = 82815
        mmTop = 1323
        mmWidth = 12435
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
end
