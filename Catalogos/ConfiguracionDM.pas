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
    adodsMasterIdMovimientoTipoNomina: TIntegerField;
    adodsMasterIdMovimientoTipoRetencion: TIntegerField;
    adodsMasterIdMovimientoTipoPrestamo: TIntegerField;
    adodsMasterIdMetodoPagoCuentasXPagar: TIntegerField;
    adodsMasterIdMetodoPagoFactura: TIntegerField;
    adodsPaises: TADODataSet;
    adodsMonedas: TADODataSet;
    adodsMovimientosTipo1: TADODataSet;
    adodsMovimientosTipo2: TADODataSet;
    adodsMovimientosTipo3: TADODataSet;
    adodsMetodosPago1: TADODataSet;
    adodsMetodosPago2: TADODataSet;
    adodsMasterPais: TStringField;
    adodsMasterMoneda: TStringField;
    adodsMasterMovimientoTipoNomina: TStringField;
    adodsMasterMovimientoTipoRetencion: TStringField;
    adodsMasterMovimientoTipoPrestamo: TStringField;
    adodsMasterMetodoPagoCuentasXPagar: TStringField;
    adodsMasterMetodoPagoFactura: TStringField;
    adodsMasterRutaBaseFacturas: TStringField;
    adoqGetRutaBasePagos: TADOQuery;
    adoqGetRutaBasePagosValor: TStringField;
    adodsMasterIdMovimientoTipoDescuento: TIntegerField;
    adodsMasterIdRolDescuento: TIntegerField;
    adodsMasterIdMetodoPagoCuentasXPagarSAT: TIntegerField;
    adodsMovimientosTipo4: TADODataSet;
    adodsMetodosPago3: TADODataSet;
    adodsRol1: TADODataSet;
    adodsMasterMovimientoTipoDescuento: TStringField;
    adodsMasterMetodoPagoCuentasXPagarSAT: TStringField;
    adodsMasterRolDescuento: TStringField;
    adoqGetDiaPagoActual: TADOQuery;
    adoqGetDiaPagoActualValor: TDateTimeField;
    adodsMasterIdMovimientoTipoTransporte: TIntegerField;
    adodsMasterIdMovimientoTipoAportacion: TIntegerField;
    adodsMasterRutaBasePagos: TStringField;
    adodsMasterMovimientoTipoTransporte: TStringField;
    adodsMovimientosTipo5: TADODataSet;
    adodsMovimientosTipo6: TADODataSet;
    adodsMasterMovimientoTipoAportacion: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    function GetIdPeridoActual: Integer;
    function GetRutaFactura: string;
    function GetRutaPago: string;
    function GetDiaPagoActual: TDateTime;
  public
    { Public declarations }
    property IdPeridoActual: Integer read GetIdPeridoActual;
    property DiaPagoActual: TDateTime read GetDiaPagoActual;
    property RutaFacturas: string read GetRutaFactura;
    property RutaPagos: string read GetRutaPago;
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

end.
