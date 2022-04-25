unit uCadVendedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  uDataModule, Vcl.StdCtrls, Vcl.Mask, FireDAC.Comp.Client, uNumero,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, ppBands, ppCache,
  ppClass, ppDesignLayer, ppParameter, ppComm, ppRelatv, ppProd, ppReport,
  ppCtrls, ppDB, ppDBPipe, ppPrnabl, ppVar;

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
    edtConsulta: TEdit;
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
    FDQryVendedor: TFDQuery;
    FDQryVendedorID: TIntegerField;
    FDQryVendedorRAZAOSOCIAL: TStringField;
    FDQryVendedorCONTATO: TStringField;
    FDQryVendedorTELEFONE: TStringField;
    ppDBPVendedor: TppDBPipeline;
    ppRelVendedor: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppSystemVariable3: TppSystemVariable;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    ppDBText1: TppDBText;
    ppLabel3: TppLabel;
    ppDBText2: TppDBText;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel7: TppLabel;
    btnRelatorio: TButton;
    procedure btnConsultaClick(Sender: TObject);
    procedure dbgMostraDadosVendedorCellClick(Column: TColumn);
    procedure edtConsultaChange(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnRelatorioClick(Sender: TObject);
    procedure edtConsultaClick(Sender: TObject);

  private
    procedure limparCampos;
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
  begin
    dm_dados.qryVendedor.fieldByName('RAZAOSOCIAL').AsString := edtRazao.Text;
    dm_dados.qryVendedor.fieldByName('CONTATO').AsString := edtContato.Text;
    dm_dados.qryVendedor.fieldByName('TELEFONE').AsString := MaskEdit1.Text;
    dm_dados.qryVendedor.Post;
    dm_dados.qryVendedor.Edit;
  end;

end;

procedure TfrmVendedor.btnConsultaClick(Sender: TObject);
begin

  dm_dados.qryVendedor.active := not dm_dados.qryVendedor.active;

end;

procedure TfrmVendedor.btnExcluirClick(Sender: TObject);
begin

  dm_dados.qryVendedor.Open;
  dm_dados.qryVendedor.Edit;

  dm_dados.qryCliente.Open();

  dm_dados.qryCliente.SQL.Text :=
    'select RAZAO_SOCIAL from cliente where ID_VENDEDOR = ' +
    QuotedStr(edtCodVendedor.Text);

    

  if (dm_dados.qryCliente.SQL.Text = '') then
  begin

    if (dm_dados.qryVendedor.State in [dsEdit, dsInsert]) then
    begin
      dm_dados.qryVendedor.fieldByName('RAZAOSOCIAL').AsString := edtRazao.Text;
      dm_dados.qryVendedor.fieldByName('CONTATO').AsString := edtContato.Text;
      dm_dados.qryVendedor.fieldByName('TELEFONE').AsString := MaskEdit1.Text;
      dm_dados.qryVendedor.fieldByName('ID').AsString := edtCodVendedor.Text;
      dm_dados.qryVendedor.Post;
      dm_dados.qryVendedor.Delete;
    end;

  end
  else
    ShowMessage('Vendedor possui cliente ' + dm_dados.qryCliente.FieldByName('RAZAO_SOCIAL').AsString);
    
  limparCampos;

end;

procedure TfrmVendedor.btnInserirClick(Sender: TObject);
begin

  FDQryVendedor.SQL.Text := 'Select * from Vendedor;';
  FDQryVendedor.Open;
  FDQryVendedor.Last;
  While not(FDQryVendedor.Eof) do
  begin
    FDQryVendedor.fieldByName('ID').AsString := edtCodVendedor.Text;
    FDQryVendedor.fieldByName('RAZAOSOCIAL').AsString := edtRazao.Text;
    FDQryVendedor.fieldByName('CONTATO').AsString := edtContato.Text;
    FDQryVendedor.fieldByName('TELEFONE').AsString := MaskEdit1.Text;

    FDQryVendedor.Next;
  end;
  FDQryVendedor.Close;

  if ((edtRazao.Text <> '') and (edtContato.Text <> '') and
    (MaskEdit1.Text <> '')) then
  begin
    FDQryVendedor.SQL.Text :=
      'Insert into Vendedor (id, razaosocial, contato, telefone ) ' +
      'Values ((select max(id)+1 from vendedor), ' + QuotedStr(edtRazao.Text) +
      ', ' + QuotedStr(edtContato.Text) + ', ' +
      QuotedStr(MaskEdit1.Text) + ');';
    try
      FDQryVendedor.ExecSQL;
    except
      On E: Exception do
        ShowMessage('Ocorreu um erro ao incluir o cliente: ' + E.Message);
    end;
  end
  else
    ShowMessage('Por favor preencha os campos vazios');
end;

procedure TfrmVendedor.btnRelatorioClick(Sender: TObject);
begin
  ppRelVendedor.Print;
end;

procedure TfrmVendedor.btnSalvarClick(Sender: TObject);
begin

  dm_dados.qryVendedor.Open;
  dm_dados.qryVendedor.Edit;

  if (dm_dados.qryVendedor.State in [dsEdit, dsInsert]) then
  begin
    dm_dados.qryVendedor.fieldByName('ID').AsString := edtCodVendedor.Text;
    dm_dados.qryVendedor.fieldByName('RAZAOSOCIAL').AsString := edtRazao.Text;
    dm_dados.qryVendedor.fieldByName('CONTATO').AsString := edtContato.Text;
    dm_dados.qryVendedor.fieldByName('TELEFONE').AsString := MaskEdit1.Text;
    dm_dados.qryVendedor.Post;
  end;

end;

procedure TfrmVendedor.dbgMostraDadosVendedorCellClick(Column: TColumn);
begin

  edtRazao.Text := dbgMostraDadosVendedor.Columns.Items[1].Field.Text;
  edtContato.Text := dbgMostraDadosVendedor.Columns.Items[2].Field.Text;
  MaskEdit1.Text := dbgMostraDadosVendedor.Columns.Items[3].Field.Text;
  edtCodVendedor.Text := dbgMostraDadosVendedor.Columns.Items[0].Field.Text;

end;

procedure TfrmVendedor.edtConsultaChange(Sender: TObject);
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
  dm_dados.qryVendedor.Params[0].AsString := '%' + edtConsulta.Text + '%';
  dm_dados.qryVendedor.Open();

end;

procedure TfrmVendedor.edtConsultaClick(Sender: TObject);
begin
  limparCampos;
end;

procedure TfrmVendedor.limparCampos;
begin
  edtRazao.Clear;
  edtContato.Clear;
  edtCodVendedor.Clear;
  MaskEdit1.Clear;
end;

end.
