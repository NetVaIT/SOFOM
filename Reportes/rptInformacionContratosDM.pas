unit rptInformacionContratosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TDMRptInformacionContratos = class(T_dmStandar)
    adodsMasterIdContratoEstatus: TIntegerField;
    adodsMasterIdContrato: TAutoIncField;
    adodsMasterContrato: TStringField;
    adodsMasterRazonSocial: TStringField;
    adodsMasteridAnexo: TAutoIncField;
    adodsMasterAnexo: TStringField;
    adodsMasterMontoFinanciar: TFMTBCDField;
    adodsMasterMontoVencido: TFMTBCDField;
    adodsMasterCapitalCobrado: TFMTBCDField;
    adodsMasterSaldoInsoluto: TFMTBCDField;
    adodsMasterEnganche: TFMTBCDField;
    adodsMasterIdProducto: TAutoIncField;
    adodsMasterProducto: TStringField;
    adodsMasterPorcentajeAnexo: TBCDField;
    adodsMasterDepreciacionComercial: TBCDField;
    adodsMasterDepreciacionContable: TBCDField;
    adodsMasterPrecioTotal: TBCDField;
    adodsMasterEnganchePorcentaje: TFMTBCDField;
    adodsMastersumaAnexo: TFMTBCDField;
    adodsMasterTotalPagadoProd: TFMTBCDField;
    adodsMasterAfinanciarXprod: TFMTBCDField;
    adodsMasterVencidoXProd: TFMTBCDField;
    adodsMasterSaldoInsolutoXProd: TFMTBCDField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMRptInformacionContratos: TDMRptInformacionContratos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses rptInformacionContratosForm;

{$R *.dfm}

procedure TDMRptInformacionContratos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TFrmInformacionContratosGrid.Create(Self);
  gGridForm.DataSet:= adodsMaster;
  gGridForm.ReadOnlyGrid:= True;
//  TFrmInformacionContratosGrid(gGridForm).ActPDFAntSaldos:=ActGenPDFAntigSaldos;
//  TFrmInformacionContratosGrid(gGridForm).ActPDFAntXCliente:=ActPDFAntiguedadXCliente;
end;

end.
