object dm_dados: Tdm_dados
  Height = 367
  Width = 608
  object FDConnection: TFDConnection
    Params.Strings = (
      'Database=D:\Banco\TESTEDELPHI.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Server=127.0.0.1'
      'Port=3050'
      'CharacterSet=WIN1252'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 96
    Top = 40
  end
  object FDPhysFBDriverLink: TFDPhysFBDriverLink
    VendorLib = 'C:\Program Files\Firebird\Firebird_2_5\WOW64\fbclient.dll'
    Left = 376
    Top = 40
  end
  object FDGUIxWaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 208
    Top = 48
  end
  object qryVendedor: TFDQuery
    Active = True
    DetailFields = 'RAZAOSOCIAL'
    Connection = FDConnection
    SQL.Strings = (
      'select *'
      'from vendedor'
      'WHERE RAZAOSOCIAL'
      'LIKE (:RAZAOSOCIAL)')
    Left = 80
    Top = 248
    ParamData = <
      item
        Name = 'RAZAOSOCIAL'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object qryVendedorID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryVendedorRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Required = True
      Size = 100
    end
    object qryVendedorCONTATO: TStringField
      FieldName = 'CONTATO'
      Origin = 'CONTATO'
      Size = 50
    end
    object qryVendedorTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 30
    end
  end
  object qryCliente: TFDQuery
    Active = True
    Connection = FDConnection
    SQL.Strings = (
      'select *'
      'from cliente'
      'WHERE RAZAO_SOCIAL'
      'LIKE (:RAZAO_SOCIAL)')
    Left = 208
    Top = 240
    ParamData = <
      item
        Name = 'RAZAO_SOCIAL'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object qryClienteID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryClienteRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Required = True
      Size = 100
    end
    object qryClienteCONTATO: TStringField
      FieldName = 'CONTATO'
      Origin = 'CONTATO'
      Size = 50
    end
    object qryClienteTELEFONES: TStringField
      FieldName = 'TELEFONES'
      Origin = 'TELEFONES'
      Size = 30
    end
    object qryClienteID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
      Origin = 'ID_VENDEDOR'
    end
  end
  object qryClienteVendedor: TFDQuery
    Active = True
    Connection = FDConnection
    SQL.Strings = (
      'select c.*, v.*'
      'from cliente c '
      'join '
      'vendedor v on c.id_vendedor = v.id'
      'where c.razao_social '
      'like  (:c.razao_social)')
    Left = 344
    Top = 232
    ParamData = <
      item
        Name = 'C.RAZAO_SOCIAL'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object qryClienteVendedorID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryClienteVendedorRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Required = True
      Size = 100
    end
    object qryClienteVendedorCONTATO: TStringField
      FieldName = 'CONTATO'
      Origin = 'CONTATO'
      Size = 50
    end
    object qryClienteVendedorTELEFONES: TStringField
      FieldName = 'TELEFONES'
      Origin = 'TELEFONES'
      Size = 30
    end
    object qryClienteVendedorID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
      Origin = 'ID_VENDEDOR'
    end
    object qryClienteVendedorID_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_1'
      Origin = 'ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryClienteVendedorRAZAOSOCIAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object qryClienteVendedorCONTATO_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTATO_1'
      Origin = 'CONTATO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qryClienteVendedorTELEFONE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
  end
  object FDTableVendedor: TFDTable
    Active = True
    IndexFieldNames = 'ID;CONTATO;RAZAOSOCIAL;TELEFONE'
    Connection = FDConnection
    TableName = 'VENDEDOR'
    Left = 72
    Top = 163
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
