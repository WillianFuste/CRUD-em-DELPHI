unit uMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadVendedor, uCadCliente, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  TfrmSistemaCadastro = class(TForm)
    btnVendedor: TButton;
    btnCliente: TButton;
    procedure btnVendedorClick(Sender: TObject);
    procedure btnClienteClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSistemaCadastro: TfrmSistemaCadastro;

implementation

{$R *.dfm}

procedure TfrmSistemaCadastro.btnClienteClick(Sender: TObject);
begin
  try
    frmCliente := TfrmCliente.Create(Self);
    frmCliente.ShowModal;
  finally
    FreeAndNil(frmCliente);
  end;

end;

procedure TfrmSistemaCadastro.btnVendedorClick(Sender: TObject);

begin

  try
    frmVendedor := TfrmVendedor.Create(Self);
    frmVendedor.ShowModal;
  finally
    FreeAndNil(frmVendedor);
  end;

end;

end.
