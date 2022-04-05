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
  PixelsPerInch = 96
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
    Left = 488
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
  object Edit3: TEdit
    Left = 288
    Top = 163
    Width = 321
    Height = 23
    CharCase = ecUpperCase
    TabOrder = 8
    OnChange = Edit3Change
  end
  object edtCodVendedor: TEdit
    Left = 488
    Top = 24
    Width = 121
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
  object dsVendedor: TDataSource
    DataSet = dm_dados.qryVendedor
    Left = 304
    Top = 296
  end
  object FDTableVendedor: TFDTable
    IndexFieldNames = 'ID;CONTATO;RAZAOSOCIAL;TELEFONE'
    MasterSource = dsVendedor
    Connection = dm_dados.FDConnection
    TableName = 'VENDEDOR'
    Left = 416
    Top = 304
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
end
