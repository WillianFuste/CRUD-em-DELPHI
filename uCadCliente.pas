unit uCadCliente;

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
  TfrmCliente = class(TForm)
    dbgMostraDadosCliente: TDBGrid;
    dsCliente: TDataSource;
    btnInserir: TButton;
    btnAlterar: TButton;
    btnConsulta: TButton;
    btnExcluir: TButton;
    Label1: TLabel;
    edtRazao: TEdit;
    Label2: TLabel;
    edtContato: TEdit;
    Label3: TLabel;
    MaskEdit1: TMaskEdit;
    Label4: TLabel;
    Edit3: TEdit;
    FDTableCliente: TFDTable;
    edtTelefone: TEdit;
    FDTableClienteID: TIntegerField;
    FDTableClienteRAZAO_SOCIAL: TStringField;
    FDTableClienteCONTATO: TStringField;
    FDTableClienteTELEFONES: TStringField;
    FDTableClienteID_VENDEDOR: TIntegerField;
    Label5: TLabel;
    edtCodCliente: TEdit;
    dsCliVen: TDataSource;
    procedure btnConsultaClick(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure MaskEdit1Exit(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure dbgMostraDadosClienteCellClick(Column: TColumn);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCliente: TfrmCliente;

implementation

{$R *.dfm}

function numeros(AString: String): String;
var
  I: integer;
  Limpos: String;
begin
  Limpos := '';

  for I := 1 to Length(AString) do
  begin
    if Pos(Copy(AString, I, 1), '0123456789') <> 0 then
      Limpos := Limpos + Copy(AString, I, 1);

  end;
  result := Limpos;

end;

procedure TfrmCliente.btnConsultaClick(Sender: TObject);
begin

  dm_dados.qryCliente.Active := not dm_dados.qryCliente.Active;

end;

procedure TfrmCliente.btnExcluirClick(Sender: TObject);
begin

  with FDTableCliente do
  begin
    Close;
    sql.Clear;
    sql.Add('delete from cliente where id = :ID');
    ParamByName('ID').AsInteger := StrToInt(edtCodCliente.Text);
    ExecSQL;

  end;
  ShowMessage('Cliente ' + edtRazao.Text + ' excluido.');

end;

procedure TfrmCliente.btnInserirClick(Sender: TObject);
begin

  try
    with FDTableCliente do
    begin
      Close;
      sql.Clear;
      sql.Add('insert into cliente (RAZAO_SOCIAL, CONTATO,TELEFONES)');
      sql.Add('values (:RAZAO_SOCIAL, :CONTATO, :TELEFONES)');
      ParamByName('RAZAO_SOCIAL').AsString := edtRazao.Text;
      ParamByName('CONTATO').AsString := edtContato.Text;
      ParamByName('TELEFONES').AsString := edtTelefone.Text;
      // ParamByName('ID_VENDEDOR').AsInteger := 1;
      ExecSQL;

    end;

  except
    on E: Exception do
      ShowMessage(E.ClassName + ' o erro : ' + E.Message);
  end;

end;

procedure TfrmCliente.dbgMostraDadosClienteCellClick(Column: TColumn);
begin

  edtCodCliente.Text := dbgMostraDadosCliente.Columns.Items[0].Field.Text;
  edtRazao.Text := dbgMostraDadosCliente.Columns.Items[1].Field.Text;
  edtContato.Text := dbgMostraDadosCliente.Columns.Items[2].Field.Text;
  edtTelefone.Text := dbgMostraDadosCliente.Columns.Items[3].Field.Text;

end;

procedure TfrmCliente.Edit3Change(Sender: TObject);
begin

  with dm_dados.qryClienteVendedor do
  begin
    Open;
    EmptyDataSet;
    Close;
    Open;
  end;

  dm_dados.qryClienteVendedor.Close;
  dm_dados.qryClienteVendedor.Params.ClearValues();
  dm_dados.qryClienteVendedor.Params[0].AsString := '%' + Edit3.Text + '%';
  dm_dados.qryClienteVendedor.Open();

end;

procedure TfrmCliente.MaskEdit1Exit(Sender: TObject);
begin
  if Length(numeros(MaskEdit1.Text)) = 11 then
  begin
    MaskEdit1.EditMask := '(99) 9 9999-9999;0_';
  end
  else if Length(numeros(MaskEdit1.Text)) = 10 then
  begin
    MaskEdit1.EditMask := '(99) 9999-9999;0_';
  end
  else if Length(numeros(MaskEdit1.Text)) <> 0 then
  begin
    ShowMessage('NÚMERO INVÁLIDO');
    Abort;
  end;

end;

end.
