unit uDataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Comp.UI, FireDAC.Phys.IBBase;

type
  Tdm_dados = class(TDataModule)
    FDConnection: TFDConnection;
    FDPhysFBDriverLink: TFDPhysFBDriverLink;
    FDGUIxWaitCursor: TFDGUIxWaitCursor;
    qryVendedor: TFDQuery;
    qryCliente: TFDQuery;
    qryVendedorID: TIntegerField;
    qryVendedorRAZAOSOCIAL: TStringField;
    qryVendedorCONTATO: TStringField;
    qryVendedorTELEFONE: TStringField;
    qryClienteID: TIntegerField;
    qryClienteRAZAO_SOCIAL: TStringField;
    qryClienteCONTATO: TStringField;
    qryClienteTELEFONES: TStringField;
    qryClienteID_VENDEDOR: TIntegerField;
    qryClienteVendedor: TFDQuery;
    qryClienteVendedorID: TIntegerField;
    qryClienteVendedorRAZAO_SOCIAL: TStringField;
    qryClienteVendedorCONTATO: TStringField;
    qryClienteVendedorTELEFONES: TStringField;
    qryClienteVendedorID_VENDEDOR: TIntegerField;
    qryClienteVendedorID_1: TIntegerField;
    qryClienteVendedorRAZAOSOCIAL: TStringField;
    qryClienteVendedorCONTATO_1: TStringField;
    qryClienteVendedorTELEFONE: TStringField;
    FDTableVendedor: TFDTable;
    FDTableVendedorID: TIntegerField;
    FDTableVendedorRAZAOSOCIAL: TStringField;
    FDTableVendedorCONTATO: TStringField;
    FDTableVendedorTELEFONE: TStringField;

  private
    { Private declarations }

  public
    { Public declarations }

  end;

var

dm_dados : Tdm_dados;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

end.
