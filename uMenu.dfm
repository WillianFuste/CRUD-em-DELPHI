object frmSistemaCadastro: TfrmSistemaCadastro
  Left = 0
  Top = 0
  Caption = 'Sistema de Cadastro'
  ClientHeight = 129
  ClientWidth = 296
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 15
  object btnVendedor: TButton
    Left = 213
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Vendedor'
    TabOrder = 0
    OnClick = btnVendedorClick
  end
  object btnCliente: TButton
    Left = 213
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Cliente'
    TabOrder = 1
    OnClick = btnClienteClick
  end
end
