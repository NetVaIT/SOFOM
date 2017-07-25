unit ConfiguracionDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, Data.Win.ADODB,
  System.Actions, Vcl.ActnList;

type
  TdmConfiguracion = class(T_dmStandar)
    adoqGetIdPeriodoActual: TADOQuery;
    adoqGetIdPeriodoActualValor: TIntegerField;
    adoqGetRutaBaseFacturas: TADOQuery;
    adoqGetRutaBaseFacturasValor: TStringField;
    adodsMasterIdPais: TIntegerField;
    adodsMasterIdMoneda: TIntegerField;
    adodsPaises: TADODataSet;
    adodsMonedas: TADODataSet;
    adodsMasterPais: TStringField;
    adodsMasterMoneda: TStringField;
    adodsMasterRutaBaseFacturas: TStringField;
    adoqGetRutaBasePagos: TADOQuery;
    adoqGetRutaBasePagosValor: TStringField;
    adoqGetDiaPagoActual: TADOQuery;
    adoqGetDiaPagoActualValor: TDateTimeField;
    adodsMasterRutaBasePagos: TStringField;
    adodsMasterUltimoFolioPago: TIntegerField;
    adodsMasterUltimaSeriePago: TStringField;
    adoqTipoCambio: TADOQuery;
    adoqTipoCambioValor: TFMTBCDField;
    adodsMasterPorcentajeImpuestoIVA: TBCDField;
    adodsMasterBCClaveInstitucion: TStringField;
    adodsMasterBCInstitucion: TStringField;
    adodsMasterBCTipo: TStringField;
    adodsMasterPLDPerfilTransaccional: TIntegerField;
    adodsMasterPLDInicioOperaciones: TStringField;
    adodsMasterPLDCodigoCASFIM: TStringField;
    adodsMasterPLDSupervisorCNBV: TStringField;
    adodsMasterPLDArchivoRuta: TStringField;
    adodsMasterPLDArchivoExtension: TStringField;
    adodsMasterPLDMontoRelevante: TBCDField;
    adodsMasterPLDLocalidad: TStringField;
    adodsMasterPLDCodigoPostal: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    function GetIdPeridoActual: Integer;
    function GetRutaFactura: string;
    function GetRutaPago: string;
    function GetDiaPagoActual: TDateTime;
    property IdPeridoActual: Integer read GetIdPeridoActual;
    property DiaPagoActual: TDateTime read GetDiaPagoActual;
  public
    { Public declarations }
    property RutaFacturas: string read GetRutaFactura;
    property RutaPagos: string read GetRutaPago;
    function GetTipoCambio(IdMoneda: Integer): Currency;
  end;

var
  dmConfiguracion: TdmConfiguracion;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses ConfiguracionesForm;

{$R *.dfm}

{ TdmConfiguracion }

procedure TdmConfiguracion.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmConfiguraciones.Create(Self);
  gGridForm.DataSet:= adodsMaster;
end;

function TdmConfiguracion.GetDiaPagoActual: TDateTime;
begin
  adoqGetDiaPagoActual.Close;
  try
    adoqGetDiaPagoActual.Open;
    Result := adoqGetDiaPagoActualValor.Value;
  finally
    adoqGetDiaPagoActual.Close;
  end;
end;

function TdmConfiguracion.GetIdPeridoActual: Integer;
begin
  adoqGetIdPeriodoActual.Close;
  try
    adoqGetIdPeriodoActual.Open;
    Result := adoqGetIdPeriodoActualValor.Value;
  finally
    adoqGetIdPeriodoActual.Close;
  end;
end;

function TdmConfiguracion.GetRutaFactura: string;
begin
  adoqGetRutaBaseFacturas.Close;
  try
    adoqGetRutaBaseFacturas.Open;
    Result := adoqGetRutaBaseFacturasValor.AsString;
  finally
    adoqGetRutaBaseFacturas.Close;
  end;
end;

function TdmConfiguracion.GetRutaPago: string;
begin
  adoqGetRutaBasePagos.Close;
  try
    adoqGetRutaBasePagos.Open;
    Result := adoqGetRutaBasePagosValor.AsString;
  finally
    adoqGetRutaBasePagos.Close;
  end;
end;

function TdmConfiguracion.GetTipoCambio(IdMoneda: Integer): Currency;
begin
  adoqTipoCambio.Close;
  try
    adoqTipoCambio.Parameters.ParamByName('IdMoneda').Value:= IdMoneda;
    adoqTipoCambio.Open;
    Result := adoqTipoCambioValor.AsCurrency;
  finally
    adoqTipoCambio.Close;
  end;
end;

end.
