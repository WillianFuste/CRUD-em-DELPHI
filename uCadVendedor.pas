unit uCadVendedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  uDataModule, Vcl.StdCtrls, Vcl.Mask, FireDAC.Comp.Client, uNumero,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TfrmVendedor = class(TForm)
    dbgMostraDadosVendedor: TDBGrid;
    dsVendedor: TDataSource;
    btnConsulta: TButton;
    btnInserir: TButton;
    btnExcluir: TButton;
    btnAlterar: TButton;
    edtRazao: TEdit;
    MaskEdit1: TMaskEdit;
    edtContato: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    FDTableVendedor: TFDTable;
    FDTableVendedorID: TIntegerField;
    FDTableVendedorRAZAOSOCIAL: TStringField;
    FDTableVendedorCONTATO: TStringField;
    FDTableVendedorTELEFONE: TStringField;
    edtCodVendedor: TEdit;
    Label5: TLabel;
    btnSalvar: TButton;
    procedure btnConsultaClick(Sender: TObject);
    procedure dbgMostraDadosVendedorCellClick(Column: TColumn);
    procedure Edit3Change(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  frmVendedor: TfrmVendedor;

implementation

{$R *.dfm}

procedure TfrmVendedor.btnAlterarClick(Sender: TObject);
begin

  dm_dados.qryVendedor.Open;
  dm_dados.qryVendedor.Edit;
  if (dm_dados.qryVendedor.State in [dsEdit, dsInsert]) then

    dm_dados.qryVendedor.fieldByName('RAZAOSOCIAL').AsString := edtRazao.Text;
  dm_dados.qryVendedor.fieldByName('CONTATO').AsString := edtContato.Text;
  dm_dados.qryVendedor.fieldByName('TELEFONE').AsString := MaskEdit1.Text;
  dm_dados.qryVendedor.Post;
  dm_dados.qryVendedor.Edit;

end;

procedure TfrmVendedor.btnConsultaClick(Sender: TObject);
begin

  dm_dados.qryVendedor.active := not dm_dados.qryVendedor.active;

end;

procedure TfrmVendedor.btnExcluirClick(Sender: TObject);
begin

  dm_dados.qryVendedor.Open;
  dm_dados.qryVendedor.Edit;
  if (dm_dados.qryVendedor.State in [dsEdit, dsInsert]) then

    dm_dados.qryVendedor.fieldByName('RAZAOSOCIAL').AsString := edtRazao.Text;
  dm_dados.qryVendedor.fieldByName('CONTATO').AsString := edtContato.Text;
  dm_dados.qryVendedor.fieldByName('TELEFONE').AsString := MaskEdit1.Text;
  dm_dados.qryVendedor.Post;
  dm_dados.qryVendedor.Delete;

end;

procedure TfrmVendedor.btnInserirClick(Sender: TObject);
begin

  btnInserir.Enabled := false;
  btnSalvar.Enabled := true;
  btnExcluir.Enabled := false;
  btnConsulta.Enabled := false;
  btnAlterar.Enabled := false;

  with FDTableVendedor do
  begin

    Close;
    sql.Clear;
    sql.Add('select max(id)+1 from vendedor where id = :ID');
    Open();

  end;

  edtCodVendedor.Text := FDTableVendedorID.AsString;

end;

procedure TfrmVendedor.btnSalvarClick(Sender: TObject);
begin

  dm_dados.qryVendedor.Open;
  dm_dados.qryVendedor.Edit;
  if (dm_dados.qryVendedor.State in [dsEdit, dsInsert]) then

    dm_dados.qryVendedor.fieldByName('ID').AsString := edtCodVendedor.Text;
  dm_dados.qryVendedor.fieldByName('RAZAOSOCIAL').AsString := edtRazao.Text;
  dm_dados.qryVendedor.fieldByName('CONTATO').AsString := edtContato.Text;
  dm_dados.qryVendedor.fieldByName('TELEFONE').AsString := MaskEdit1.Text;
  dm_dados.qryVendedor.Post;

  btnInserir.Enabled := true;
  btnSalvar.Enabled := false;
  btnExcluir.Enabled := true;
  btnConsulta.Enabled := true;
  btnAlterar.Enabled := true;

end;

procedure TfrmVendedor.dbgMostraDadosVendedorCellClick(Column: TColumn);
begin
  edtRazao.Text := dm_dados.qryVendedor.fieldByName('RAZAOSOCIAL').AsString;
  edtContato.Text := dm_dados.qryVendedor.fieldByName('CONTATO').AsString;
  MaskEdit1.Text := dm_dados.qryVendedor.fieldByName('TELEFONE').AsString;
  edtCodVendedor.Text := dm_dados.qryVendedor.fieldByName('ID').AsString;
end;

procedure TfrmVendedor.Edit3Change(Sender: TObject);
begin
  with dm_dados.qryVendedor do
  begin
    Open;
    EmptyDataSet;
    Close;
    Open;
  end;

  dm_dados.qryVendedor.Close;
  dm_dados.qryVendedor.Params.ClearValues();
  dm_dados.qryVendedor.Params[0].AsString := '%' + Edit3.Text + '%';
  dm_dados.qryVendedor.Open();

end;

end.