object frmCliente: TfrmCliente
  Left = 0
  Top = 0
  Caption = 'Cadastro Cliente'
  ClientHeight = 441
  ClientWidth = 828
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 41
    Width = 105
    Height = 15
    Caption = 'Raz'#227'o Social Cliente'
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
    Left = 344
    Top = 3
    Width = 62
    Height = 15
    Caption = 'Cod Cliente'
  end
  object lblVendedor: TLabel
    Left = 488
    Top = 3
    Width = 50
    Height = 15
    Caption = 'Vendedor'
  end
  object dbgMostraDadosCliente: TDBGrid
    Left = 8
    Top = 200
    Width = 809
    Height = 233
    DataSource = dsCliVen
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnCellClick = dbgMostraDadosClienteCellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Title.Caption = 'C'#243'd Cliente'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RAZAO_SOCIAL'
        Title.Caption = 'Raz'#227'o Social Cliente'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONTATO'
        Title.Caption = 'Contato Cliente'
        Width = 89
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFONES'
        Title.Caption = 'Tel Cliente'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_1'
        Title.Caption = 'C'#243'd Vendedor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RAZAOSOCIAL'
        Title.Caption = 'Raz'#227'o Social Vendedor'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONTATO_1'
        Title.Caption = 'Contato Vendedor'
        Width = 89
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFONE'
        Title.Caption = 'Tel Vendedor'
        Width = 74
        Visible = True
      end>
  end
  object btnInserir: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Inserir'
    TabOrder = 1
    OnClick = btnInserirClick
  end
  object btnAlterar: TButton
    Left = 89
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Alterar'
    TabOrder = 2
  end
  object btnConsulta: TButton
    Left = 170
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Consulta'
    TabOrder = 3
    OnClick = btnConsultaClick
  end
  object btnExcluir: TButton
    Left = 251
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 4
    OnClick = btnExcluirClick
  end
  object edtRazao: TEdit
    Left = 8
    Top = 63
    Width = 809
    Height = 23
    CharCase = ecUpperCase
    TabOrder = 5
  end
  object edtContato: TEdit
    Left = 8
    Top = 113
    Width = 809
    Height = 23
    CharCase = ecUpperCase
    TabOrder = 6
  end
  object MaskEdit1: TMaskEdit
    Left = 8
    Top = 163
    Width = 118
    Height = 23
    TabOrder = 7
    Text = ''
    OnExit = MaskEdit1Exit
  end
  object Edit3: TEdit
    Left = 288
    Top = 163
    Width = 529
    Height = 23
    CharCase = ecUpperCase
    TabOrder = 8
    OnChange = Edit3Change
  end
  object edtTelefone: TEdit
    Left = 132
    Top = 163
    Width = 141
    Height = 23
    TabOrder = 9
  end
  object edtCodCliente: TEdit
    Left = 344
    Top = 24
    Width = 121
    Height = 23
    Enabled = False
    ReadOnly = True
    TabOrder = 10
  end
  object DBComboBox1: TDBComboBox
    Left = 488
    Top = 24
    Width = 145
    Height = 23
    DataField = 'RAZAOSOCIAL'
    DataSource = dsVendedor
    TabOrder = 11
  end
  object dsCliente: TDataSource
    DataSet = dm_dados.qryCliente
    Left = 512
    Top = 272
  end
  object FDTableCliente: TFDTable
    IndexName = 'RDB$PRIMARY3'
    MasterSource = dsCliente
    MasterFields = 'CONTATO;ID;ID_VENDEDOR;RAZAO_SOCIAL;TELEFONES'
    Connection = dm_dados.FDConnection
    UpdateOptions.AssignedValues = [uvGeneratorName]
    TableName = 'CLIENTE'
    Left = 280
    Top = 336
    object FDTableClienteID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      Required = True
    end
    object FDTableClienteRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Required = True
      Size = 100
    end
    object FDTableClienteCONTATO: TStringField
      FieldName = 'CONTATO'
      Origin = 'CONTATO'
      Size = 50
    end
    object FDTableClienteTELEFONES: TStringField
      FieldName = 'TELEFONES'
      Origin = 'TELEFONES'
      Size = 30
    end
    object FDTableClienteID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
      Origin = 'ID_VENDEDOR'
    end
  end
  object dsCliVen: TDataSource
    DataSet = dm_dados.qryVendedor
    Left = 400
    Top = 296
  end
  object dsVendedor: TDataSource
    DataSet = dm_dados.qryVendedor
    Left = 624
    Top = 312
  end
end
