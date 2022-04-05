program SistemaCadastro;

uses
  Vcl.Forms,
  uCadVendedor in 'uCadVendedor.pas' {frmVendedor},
  uDataModule in 'uDataModule.pas' {dm_dados: TDataModule},
  uMenu in 'uMenu.pas' {frmSistemaCadastro},
  uCadCliente in 'uCadCliente.pas' {frmCliente},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tdm_dados, dm_dados);
  Application.CreateForm(TfrmSistemaCadastro, frmSistemaCadastro);
  Application.Run;
end.
