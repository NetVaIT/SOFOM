unit ContratosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB, System.Math, ProcesosType, Vcl.Dialogs, System.UITypes,
  AmortizacionesDM, ProductosDM;

resourcestring
  strAllowGenAnexo = '¿Deseas crear el anexo en base a la cotización %s?';
  strGenPagoIncial = '¿Deseas crear los pagos inciales de este anexo?';
  strNeedProduct   = 'Necesita agregar uno o más productos al anexo';
  strProductsPercentage = 'La suma de porcentajes totales de los productos en el anexo debe ser igual al 100%';
  strRestructureAnexo = '¿Deseas restructurar el anexo?';

type
  TdmContratos = class(T_dmStandar)
    dsMaster: TDataSource;
    adodsPersonas: TADODataSet;
    adodsContratosTipos: TADODataSet;
    adodsMasterIdContrato: TAutoIncField;
    adodsMasterIdPersona: TIntegerField;
    adodsMasterIdContratoTipo: TIntegerField;
    adodsMasterIdContratoEstatus: TIntegerField;
    adodsMasterIdentificador: TStringField;
    adodsMasterFecha: TDateTimeField;
    adodsMasterMontoAutorizado: TBCDField;
    adodsContratosEstatus: TADODataSet;
    adodsMasterCliente: TStringField;
    adodsMasterTipo: TStringField;
    adodsMasterEstatus: TStringField;
    adodsAnexos: TADODataSet;
    adodsMonedas: TADODataSet;
    adodsAnexosEstatus: TADODataSet;
    adodsAnexosIdAnexo: TAutoIncField;
    adodsAnexosIdContrato: TIntegerField;
    adodsAnexosIdMoneda: TIntegerField;
    adodsAnexosIdAnexoEstatus: TIntegerField;
    adodsAnexosIdentificador: TStringField;
    adodsAnexosDescripcion: TStringField;
    adodsAnexosFecha: TDateTimeField;
    adodsAnexosPrecioMoneda: TFMTBCDField;
    adodsAnexosTipoCambio: TFMTBCDField;
    adodsAnexosPrecio: TFMTBCDField;
    adodsAnexosImpuesto: TFMTBCDField;
    adodsAnexosPrecioTotal: TFMTBCDField;
    adodsAnexosEnganchePorcentaje: TFMTBCDField;
    adodsAnexosEnganche: TFMTBCDField;
    adodsAnexosComisionPorcentaje: TBCDField;
    adodsAnexosComision: TFMTBCDField;
    adodsAnexosComisionImpuesto: TFMTBCDField;
    adodsAnexosGastos: TFMTBCDField;
    adodsAnexosGastosImpuestos: TFMTBCDField;
    adodsAnexosDespositosNumero: TIntegerField;
    adodsAnexosDepositos: TFMTBCDField;
    adodsAnexosPagoIncial: TFMTBCDField;
    adodsAnexosMontoFinanciar: TFMTBCDField;
    adodsAnexosTasaAnual: TBCDField;
    adodsAnexosPlazo: TIntegerField;
    adodsAnexosPagoMensual: TFMTBCDField;
    adodsAnexosMoneda: TStringField;
    adodsAnexosEstatus2: TStringField;
    adodsAnexosProductos: TADODataSet;
    adodsProductos: TADODataSet;
    adodsAnexosProductosIdAnexoProducto: TIntegerField;
    adodsAnexosProductosIdAnexo: TIntegerField;
    adodsAnexosProductosIdProducto: TIntegerField;
    adodsAnexosProductosProducto: TStringField;
    dsAnexos: TDataSource;
    adodsAmortizaciones: TADODataSet;
    adodsAmortizacionesIdAnexoAmortizacion: TAutoIncField;
    adodsAmortizacionesIdAnexoSegmento: TIntegerField;
    adodsAmortizacionesPeriodo: TIntegerField;
    adodsAmortizacionesSaldoInicial: TFMTBCDField;
    adodsAmortizacionesPago: TFMTBCDField;
    adodsAmortizacionesCapital: TFMTBCDField;
    adodsAmortizacionesCapitalImpuesto: TFMTBCDField;
    adodsAmortizacionesCapitalTotal: TFMTBCDField;
    adodsAmortizacionesInteres: TFMTBCDField;
    adodsAmortizacionesInteresImpuesto: TFMTBCDField;
    adodsAmortizacionesInteresTotal: TFMTBCDField;
    adodsAmortizacionesSaldoFinal: TFMTBCDField;
    adodsAmortizacionesPagoTotal: TFMTBCDField;
    adodsCreditos: TADODataSet;
    adodsCreditosIdAnexoCredito: TAutoIncField;
    adodsCreditosIdAnexo: TIntegerField;
    adodsCreditosIdAnexoCreditoEstatus: TIntegerField;
    adodsCreditosIdUsuario: TIntegerField;
    adodsCreditosFecha: TDateTimeField;
    adodsCreditosMontoFiananciar: TFMTBCDField;
    adodsCreditosTasaAnual: TBCDField;
    adodsCreditosPlazo: TIntegerField;
    adodsCreditosPagoMensual: TFMTBCDField;
    adodsCreditosFechaCorte: TDateTimeField;
    dsCreditos: TDataSource;
    adodsCreditoEstatus: TADODataSet;
    adodsUsuario: TADODataSet;
    adodsCreditosEstatus: TStringField;
    adodsCreditosUsuario: TStringField;
    adodsAmortizacionesIdAnexoCredito: TIntegerField;
    adodsAnexosFechaCorte: TDateTimeField;
    actPreAmortizaciones: TAction;
    actGenAmortizaciones: TAction;
    adodsAnexosOpcionCompraPorcentaje: TFMTBCDField;
    adodsAnexosOpcionCompra: TFMTBCDField;
    adodsAnexosValorResidualPorcentaje: TBCDField;
    adodsAnexosValorResidual: TFMTBCDField;
    adodsAnexosImpactoISR: TFMTBCDField;
    adodsCreditosValorResidual: TFMTBCDField;
    adodsCreditosImpactoISR: TFMTBCDField;
    adodsAmortizacionesTasaAnual: TBCDField;
    adodsAmortizacionesImpactoISR: TFMTBCDField;
    actCrearAnexo: TAction;
    adodsCotizaionesSel: TADODataSet;
    adodsCotizaionesSelIdentificador: TStringField;
    adodsCotizaionesSelDescripcion: TStringField;
    adodsCotizaionesSelMontoFinanciar: TFMTBCDField;
    adodsCotizaionesSelTasaAnual: TBCDField;
    adodsCotizaionesSelPlazo: TIntegerField;
    adodsCotizaionesSelPagoMensual: TFMTBCDField;
    adospGenAnexoDeCotizacion: TADOStoredProc;
    actCrearPagoInicial: TAction;
    adopSetCXCPorAnexo: TADOStoredProc;
    adodsAnexosPagoInicialCreado: TBooleanField;
    adodsMasterDiaCorte: TIntegerField;
    adodsMasterDiaVencimiento: TIntegerField;
    adodsAnexosFechaVencimiento: TDateTimeField;
    adodsCreditosFechaVencimiento: TDateTimeField;
    adodsAmortizacionesFechaCorte: TDateTimeField;
    adodsAmortizacionesFechaVencimiento: TDateTimeField;
    adoqGetFechaDia: TADOQuery;
    adoqGetFechaDiaFechaNueva: TDateTimeField;
    adodsAmortizacionesFechaMoratorio: TDateTimeField;
    adodsAmortizacionesDiasVencimiento: TIntegerField;
    adodsAmortizacionesMoratorioBase: TFMTBCDField;
    adodsAmortizacionesMoratorio: TFMTBCDField;
    adodsAmortizacionesMoratorioImpuesto: TFMTBCDField;
    actAbonarCapital: TAction;
    actGenerar: TAction;
    actGetTipoCambio: TAction;
    adodsAnexosCapitalCobrado: TFMTBCDField;
    adodsAnexosSaldoInsoluto: TFMTBCDField;
    adodsAnexosMontoVencido: TFMTBCDField;
    adodsAnexosTasaMoratoriaAnual: TBCDField;
    actMoratorios: TAction;
    dsAmortizaciones: TDataSource;
    adodsAnexosIdCotizacionDetalle: TIntegerField;
    adodsCotizaionesSelIdCotizacionDetalle: TAutoIncField;
    actRestructurar: TAction;
    adocGetCreditoValido: TADOCommand;
    adopCanAnexosCreditos: TADOStoredProc;
    adodsCreditosFechaCancelacion: TDateTimeField;
    adocGetSaldoActual: TADOCommand;
    adodsAnexosCartaCompensacion: TBooleanField;
    procedure DataModuleCreate(Sender: TObject);
    procedure adodsAnexosPrecioMonedaChange(Sender: TField);
    procedure adodsAnexosNewRecord(DataSet: TDataSet);
    procedure adodsCreditosNewRecord(DataSet: TDataSet);
    procedure adodsCreditosMontoFiananciarChange(Sender: TField);
    procedure DataModuleDestroy(Sender: TObject);
    procedure adodsAnexosEnganchePorcentajeChange(Sender: TField);
    procedure adodsAnexosEngancheChange(Sender: TField);
    procedure actPreAmortizacionesExecute(Sender: TObject);
    procedure actCrearAnexoExecute(Sender: TObject);
    procedure actCrearPagoInicialUpdate(Sender: TObject);
    procedure adodsAnexosFechaChange(Sender: TField);
    procedure actGenerarExecute(Sender: TObject);
    procedure actGenAmortizacionesExecute(Sender: TObject);
    procedure actCrearPagoInicialExecute(Sender: TObject);
    procedure actGenerarUpdate(Sender: TObject);
    procedure actGetTipoCambioExecute(Sender: TObject);
    procedure actAbonarCapitalExecute(Sender: TObject);
    procedure actMoratoriosExecute(Sender: TObject);
    procedure actRestructurarExecute(Sender: TObject);
    procedure adodsCreditosFechaChange(Sender: TField);
  private
    { Private declarations }
    FPaymentTime: TPaymentTime;
    FCreditosFecha: TDateTime;
    FCreditosFechaVencimiento: TDateTime;
    FCreditosFechaCorte: TDateTime;
    FCreditosMontoFiananciar: Extended;
    dmAmortizaciones: TdmAmortizaciones;
    procedure SetPaymentTime(const Value: TPaymentTime);
    function GetTipoContrato: TCTipoContrato;
    function GetIdAnexo: Integer;
    procedure CalcularImportes;
    procedure CalcularImporteEnganche;
    procedure CalcularImportesCredito;
    function CrearPagoInicial: Boolean;
    function GetFechaDia(Fecha: TDateTime; Dia: Integer): TDateTime;
    procedure Restructurar;
    function ProductosValido(IdAnexo: Integer): Boolean;
  public
    { Public declarations }
    property PaymentTime: TPaymentTime read FPaymentTime write SetPaymentTime;
    property TipoContrato: TCTipoContrato read GetTipoContrato;
    property IdAnexo: Integer read GetIdAnexo;
//    function AbonarCapital(IdAnexo: Integer): Boolean;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses ContratosForm, AnexosForm, AnexosAmortizacionesForm,
  AnexosCreditosForm, _ConectionDmod, CotizacionesSeleccionarForm, _Utils,
  AbonarCapitalDM, ConfiguracionDM, AnexosMoratoriosDM;

{$R *.dfm}

procedure TdmContratos.actCrearPagoInicialExecute(Sender: TObject);
begin
  inherited;
  if CrearPagoInicial then
    RefreshADODS(adodsAnexos, adodsAnexosIdAnexo);
end;

procedure TdmContratos.actCrearPagoInicialUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := not adodsAnexosPagoInicialCreado.Value;
end;

procedure TdmContratos.actGenAmortizacionesExecute(Sender: TObject);
begin
  inherited;
  dmAmortizaciones.TipoContrato := TipoContrato;
  if dmAmortizaciones.GenAnexosAmortizaciones(adodsCreditosIdAnexoCredito.Value,
  adodsAnexosFecha.Value, adodsCreditosFechaCorte.Value, adodsCreditosFechaVencimiento.Value,
  adodsCreditosTasaAnual.Value, adodsCreditosPlazo.Value,
  adodsCreditosMontoFiananciar.AsExtended, adodsCreditosValorResidual.AsExtended,
  adodsCreditosImpactoISR.AsExtended) then
  begin
    adodsAmortizaciones.Close;
    adodsAmortizaciones.Open;
  end;
end;

procedure TdmContratos.actGenerarExecute(Sender: TObject);
begin
  inherited;
  if ProductosValido(IdAnexo) then
  begin
    // Generar Credito
    FCreditosFecha := Date;
    FCreditosFechaVencimiento := adodsAnexosFechaVencimiento.Value;
    FCreditosFechaCorte := adodsAnexosFechaCorte.Value;
    FCreditosMontoFiananciar := adodsAnexosMontoFinanciar.AsExtended;
    adodsCreditos.Insert;
    adodsCreditos.Post;
    // Generar Amortizaciones
    dmAmortizaciones.TipoContrato := TipoContrato;
    if dmAmortizaciones.GenAnexosAmortizaciones(adodsCreditosIdAnexoCredito.Value,
    adodsAnexosFecha.Value, adodsCreditosFechaCorte.Value, adodsCreditosFechaVencimiento.Value,
    adodsCreditosTasaAnual.Value, adodsCreditosPlazo.Value,
    adodsCreditosMontoFiananciar.AsExtended, adodsCreditosValorResidual.AsExtended,
    adodsCreditosImpactoISR.AsExtended) then
    begin
      adodsAmortizaciones.Close;
      adodsAmortizaciones.Open;
    end;
    // Generar Pago Inicial
    if CrearPagoInicial then
      RefreshADODS(adodsAnexos, adodsAnexosIdAnexo);
  end;
end;

procedure TdmContratos.actGenerarUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := not adodsAnexosPagoInicialCreado.Value;
end;

procedure TdmContratos.actGetTipoCambioExecute(Sender: TObject);
begin
  inherited;
  if adodsAnexos.State in [dsEdit,dsInsert] then
  begin
    adodsAnexosTipoCambio.Value := dmConfiguracion.GetTipoCambio(adodsAnexosIdMoneda.Value)
  end;
end;

procedure TdmContratos.actMoratoriosExecute(Sender: TObject);
var
  dmAnexosMoratorios: TdmAnexosMoratorios;
begin
  inherited;
  dmAnexosMoratorios := TdmAnexosMoratorios.Create(Self);
  try
    dmAnexosMoratorios.MasterSource := dsAmortizaciones;
    dmAnexosMoratorios.MasterFields:= 'IdAnexoAmortizacion';
    dmAnexosMoratorios.ShowModule(nil,'');
  finally
    dmAnexosMoratorios.Free;
  end;
end;

procedure TdmContratos.actAbonarCapitalExecute(Sender: TObject);
var
  dmAbonarCapital: TdmAbonarCapital;
begin
  inherited;
  dmAbonarCapital := TdmAbonarCapital.Create(Self);
  try
    dmAbonarCapital.Execute;
  finally
    dmAbonarCapital.Free;
  end;
end;

procedure TdmContratos.actCrearAnexoExecute(Sender: TObject);
var
  frmCotizacionesSeleccionar: TfrmCotizacionesSeleccionar;
  IdCotizacionDetalle: Integer;
  IdAnexo: Integer;
  Msg: String;
begin
  inherited;
  frmCotizacionesSeleccionar := TfrmCotizacionesSeleccionar.Create(Self);
  try
    frmCotizacionesSeleccionar.DataSet:= adodsCotizaionesSel;
    frmCotizacionesSeleccionar.ReadOnlyGrid:= True;
    frmCotizacionesSeleccionar.View:= True;
    adodsCotizaionesSel.Close;
    adodsCotizaionesSel.Parameters.ParamByName('IdPersona').Value:= adodsMasterIdPersona.Value;
    adodsCotizaionesSel.Parameters.ParamByName('IdContratoTipo').Value:= adodsMasterIdContratoTipo.Value;
    adodsCotizaionesSel.Open;
    frmCotizacionesSeleccionar.ShowModal;
    IdCotizacionDetalle := adodsCotizaionesSelIdCotizacionDetalle.Value;
    Msg := Format(strAllowGenAnexo, [adodsCotizaionesSelIdentificador.Value]);
  finally
    adodsCotizaionesSel.Close;
    frmCotizacionesSeleccionar.Free;
  end;
  // Genera Anexo en base a la cotizacion seleccionada
  if IdCotizacionDetalle > 0 then
    if MessageDlg(Msg, mtConfirmation, mbYesNo, 0) = mrYes then
    begin
      adospGenAnexoDeCotizacion.Parameters.ParamByName('@IdCotizacionDetalle').Value:= IdCotizacionDetalle;
      adospGenAnexoDeCotizacion.Parameters.ParamByName('@IdContrato').Value:= adodsMasterIdContrato.Value;
      adospGenAnexoDeCotizacion.ExecProc;
      IdAnexo := adospGenAnexoDeCotizacion.Parameters.ParamByName('@IdAnexo').Value;
      RefreshADODS(adodsAnexos, adodsAnexosIdAnexo);
      adodsAnexos.Locate('IdAnexo',IdAnexo,[]);
      gFormDeatil1.DatasetEdit.Execute;
    end;
end;

procedure TdmContratos.actPreAmortizacionesExecute(Sender: TObject);
var
  Amortizaciones: TdmAmortizaciones;
begin
  inherited;
  Amortizaciones := TdmAmortizaciones.Create(Self);
  try
    Amortizaciones.TipoContrato:= TipoContrato;
    Amortizaciones.Execute(adodsAnexosFecha.Value,
    adodsCreditosFechaCorte.Value, adodsCreditosFechavencimiento.Value,
    adodsCreditosTasaAnual.Value, adodsCreditosPlazo.Value,
    adodsCreditosMontoFiananciar.AsExtended,
    adodsCreditosValorResidual.AsExtended,
    adodsCreditosImpactoISR.AsExtended);
    Amortizaciones.ShowModule(nil, '');
  finally
    Amortizaciones.Free;
  end;
end;

procedure TdmContratos.actRestructurarExecute(Sender: TObject);
begin
  inherited;
  Restructurar;
end;

procedure TdmContratos.adodsAnexosEngancheChange(Sender: TField);
var
  a: Extended;
begin
  inherited;
  if adodsAnexos.State in [dsInsert, dsEdit] then
  begin
//    adodsAnexosEnganche.Value := adodsAnexosPrecioTotal.Value * (adodsAnexosEnganchePorcentaje.Value/100);
    if adodsAnexosPrecioTotal.AsExtended <> 0 then
      a := (adodsAnexosEnganche.AsExtended*100)/ adodsAnexosPrecioTotal.AsExtended
    else
      a:= 0;
    if a <> adodsAnexosEnganchePorcentaje.Value then
      adodsAnexosEnganchePorcentaje.Value := a;
  end;
  CalcularImportes
end;

procedure TdmContratos.adodsAnexosEnganchePorcentajeChange(Sender: TField);
begin
  inherited;
  CalcularImporteEnganche;
end;

procedure TdmContratos.adodsAnexosFechaChange(Sender: TField);
begin
  inherited;
  if adodsAnexos.State in [dsInsert, dsEdit] then
  begin
    adodsAnexosFechaCorte.Value := GetFechaDia(adodsAnexosFecha.Value, adodsMasterDiaCorte.Value);
    adodsAnexosFechaVencimiento.Value := GetFechaDia(adodsAnexosFecha.Value, adodsMasterDiaVencimiento.Value);
  end;
end;

procedure TdmContratos.adodsAnexosNewRecord(DataSet: TDataSet);
begin
  inherited;
  adodsAnexosIdAnexoEstatus.Value := 1; // Activo
  adodsAnexosIdMoneda.Value := _MONEDAS_ID_DOLAR_USA;
  adodsAnexosFecha.Value := Date;
  adodsAnexosTipoCambio.Value := 19;
  adodsAnexosEnganchePorcentaje.Value := 0;
  adodsAnexosComisionPorcentaje.Value := 0;
  adodsAnexosDespositosNumero.Value := 2;
  adodsAnexosCartaCompensacion.Value := False;
end;

procedure TdmContratos.adodsAnexosPrecioMonedaChange(Sender: TField);
begin
  inherited;
  CalcularImportes;
end;

procedure TdmContratos.adodsCreditosFechaChange(Sender: TField);
begin
  inherited;
  if adodsAnexos.State in [dsInsert, dsEdit] then
  begin
    adodsCreditosFechaCorte.Value := GetFechaDia(adodsCreditosFecha.Value, adodsMasterDiaCorte.Value);
    adodsCreditosFechaVencimiento.Value := GetFechaDia(adodsCreditosFecha.Value, adodsMasterDiaVencimiento.Value);
  end;
end;

procedure TdmContratos.adodsCreditosMontoFiananciarChange(Sender: TField);
begin
  inherited;
  CalcularImportesCredito;
end;

procedure TdmContratos.adodsCreditosNewRecord(DataSet: TDataSet);
begin
  inherited;
  adodsCreditosIdAnexoCreditoEstatus.Value:= 1;
  adodsCreditosIdUsuario.Value := _dmConection.IdUsuario;
  adodsCreditosFecha.Value := FCreditosFecha;
  adodsCreditosMontoFiananciar.Value := FCreditosMontoFiananciar;
  adodsCreditosValorResidual.Value := adodsAnexosValorResidual.Value;
  adodsCreditosImpactoISR.Value := adodsAnexosImpactoISR.Value;
  adodsCreditosTasaAnual.Value := adodsAnexosTasaAnual.Value;
  adodsCreditosPlazo.Value := adodsAnexosPlazo.Value;
  adodsCreditosFechaVencimiento.Value := FCreditosFechaVencimiento;
  adodsCreditosFechaCorte.Value := FCreditosFechaCorte;
end;

procedure TdmContratos.CalcularImporteEnganche;
begin
  if adodsAnexos.State in [dsInsert, dsEdit] then
  begin
    adodsAnexosEnganche.Value := adodsAnexosPrecioTotal.Value * (adodsAnexosEnganchePorcentaje.Value/100);
  end;
end;

procedure TdmContratos.CalcularImportes;
begin
  if adodsAnexos.State in [dsInsert, dsEdit] then
  begin
    adodsAnexosPrecio.Value := adodsAnexosPrecioMoneda.Value * adodsAnexosTipoCambio.Value;
    adodsAnexosImpuesto.Value := adodsAnexosPrecio.Value * (_IMPUESTOS_IVA/100);
    adodsAnexosPrecioTotal.Value := adodsAnexosPrecio.Value + adodsAnexosImpuesto.Value;
    adodsAnexosComision.Value := (adodsAnexosPrecioTotal.Value-adodsAnexosEnganche.Value)*(adodsAnexosComisionPorcentaje.Value/100);
    adodsAnexosComisionImpuesto.Value := adodsAnexosComision.Value * (_IMPUESTOS_IVA/100);
    adodsAnexosGastosImpuestos.Value := adodsAnexosGastos.Value * (_IMPUESTOS_IVA/100);
    adodsAnexosDepositos.Value := adodsAnexosPagoMensual.Value * adodsAnexosDespositosNumero.Value;
    adodsAnexosPagoIncial.Value := (adodsAnexosEnganche.Value+adodsAnexosComision.Value+adodsAnexosComisionImpuesto.Value+
    adodsAnexosGastos.Value+adodsAnexosGastosImpuestos.Value+adodsAnexosDepositos.Value);
    adodsAnexosOpcionCompra.Value := adodsAnexosPrecioTotal.Value * (adodsAnexosOpcionCompraPorcentaje.Value/100);
    adodsAnexosValorResidual.Value := adodsAnexosPrecioTotal.Value * (adodsAnexosValorResidualPorcentaje.Value/100);
    adodsAnexosMontoFinanciar.Value:= adodsAnexosPrecioTotal.Value-adodsAnexosEnganche.Value;
    adodsAnexosSaldoInsoluto.Value := adodsAnexosMontoFinanciar.Value - adodsAnexosCapitalCobrado.Value;
//    adodsAnexosMontoVencido.Value:=
    adodsAnexosPagoMensual.Value := dmAmortizaciones.Pago(adodsAnexosTasaAnual.Value,
    adodsAnexosPlazo.Value, adodsAnexosMontoFinanciar.AsExtended,
    adodsAnexosValorResidual.AsExtended)+ adodsAnexosImpactoISR.AsExtended;
  end;
end;

procedure TdmContratos.CalcularImportesCredito;
begin
  if adodsCreditos.State in [dsInsert, dsEdit] then
  begin
    adodsCreditosPagoMensual.Value := dmAmortizaciones.Pago(adodsCreditosTasaAnual.Value,
    adodsCreditosPlazo.Value, adodsCreditosMontoFiananciar.AsExtended,
    adodsCreditosValorResidual.AsExtended) + adodsCreditosImpactoISR.AsExtended;
  end;
end;

function TdmContratos.CrearPagoInicial: Boolean;
begin
  Result:= False;
  if IdAnexo <> 0 then
  begin
//    if MessageDlg(strGenPagoIncial, mtConfirmation, mbYesNo, 0) = mrYes then
//    begin
      ScreenCursorProc(crSQLWait);
      try
        adopSetCXCPorAnexo.Parameters.ParamByName('@IdAnexo').Value:= IdAnexo;
        adopSetCXCPorAnexo.ExecProc;
      finally
        ScreenCursorProc(crDefault);
//      end;
      Result:= True;
    end;
  end;
end;

procedure TdmContratos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  PaymentTime := ptEndOfPeriod;
  gGridForm:= TfrmContratos.Create(Self);
  gGridForm.DataSet:= adodsMaster;
  TfrmContratos(gGridForm).actCrearAnexo := actCrearAnexo;
  if adodsAnexos.CommandText <> EmptyStr then adodsAnexos.Open;
  gFormDeatil1:= TfrmAnexos.Create(Self);
//  gFormDeatil1.ApplyBestFit := False;
  gFormDeatil1.DataSet:= adodsAnexos;
  TfrmAnexos(gFormDeatil1).actGenerar := actGenerar;
  TfrmAnexos(gFormDeatil1).actRestructurar := actRestructurar;
  TfrmAnexos(gFormDeatil1).actAbonar := actAbonarCapital;
  TfrmAnexos(gFormDeatil1).actGetTipoCambio := actGetTipoCambio;
  if adodsCreditos.CommandText <> EmptyStr then adodsCreditos.Open;
  gFormDeatil2:= TfrmAnexosCreditos.Create(Self);
 // gFormDeatil2.ApplyBestFit := False;
  gFormDeatil2.ReadOnlyGrid := True;
  gFormDeatil2.DataSet:= adodsCreditos;
  TfrmAnexosCreditos(gFormDeatil2).actPreAmortizaciones := actPreAmortizaciones;
  TfrmAnexosCreditos(gFormDeatil2).actgenAmortizaciones := actGenAmortizaciones;
  if adodsAmortizaciones.CommandText <> EmptyStr then adodsAmortizaciones.Open;
  gFormDeatil3:= TfrmAnexosAmortizaciones.Create(Self);
//  gFormDeatil3.ApplyBestFit := False;
  gFormDeatil3.ReadOnlyGrid := True;
  gFormDeatil3.DataSet:= adodsAmortizaciones;
  TfrmAnexosAmortizaciones(gFormDeatil3).actMoratorios := actMoratorios;
  dmAmortizaciones := TdmAmortizaciones.Create(Self);
  dmAmortizaciones.PaymentTime := PaymentTime;
  {$IFDEF DEBUG}
    actAbonarCapital.Visible := True;
    actPreAmortizaciones.Visible := True;
    actGenAmortizaciones.Visible := True;
  {$ELSE}
    actAbonarCapital.Visible := False;
    actPreAmortizaciones.Visible := False;
    actGenAmortizaciones.Visible := False;
  {$ENDIF}
end;

procedure TdmContratos.DataModuleDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(dmAmortizaciones);
end;


function TdmContratos.GetFechaDia(Fecha: TDateTime; Dia: Integer): TDateTime;
begin
  adoqGetFechaDia.Close;
  adoqGetFechaDia.Parameters.ParamByName('Fecha').Value := Fecha;
  adoqGetFechaDia.Parameters.ParamByName('Dia').Value := Dia;
  adoqGetFechaDia.Open;
  Result := adoqGetFechaDiaFechaNueva.Value;
  adoqGetFechaDia.Close;
end;

function TdmContratos.GetIdAnexo: Integer;
begin
  if adodsAnexos.Active then
    Result := adodsAnexosIdAnexo.Value
  else
    Result := 0;
end;

function TdmContratos.GetTipoContrato: TCTipoContrato;
begin
  if adodsMaster.Active then
    Result := TCTipoContrato(adodsMasterIdContratoTipo.Value)
  else
    Result:= tcNone;
end;

function TdmContratos.ProductosValido(IdAnexo: Integer): Boolean;
var
  dmProductos: TdmProductos;
begin
  Result:= False;
  dmProductos := TdmProductos.Create(Self);
  try
    if dmProductos.GetCountProductos(IdAnexo) = 0 then
      MessageDlg(strNeedProduct, mtInformation, [mbOK], 0)
    else
      if dmProductos.GetTotalPorcentajeAnexo(IdAnexo) <> 100 then
        MessageDlg(strProductsPercentage, mtInformation, [mbOK], 0)
      else
        Result:= True;
  finally
    dmProductos.Free;
  end;
end;

procedure TdmContratos.Restructurar;
var
  IdAnexoCreditoAnterior: Integer;

  function GetIdAnexoCreditoValido(IdAnexo: Integer): Integer;
  begin
    adocGetCreditoValido.Parameters.ParamByName('IdAnexo').Value := IdAnexo;
    adocGetCreditoValido.Execute;
    Result:= adocGetCreditoValido.Parameters.ParamByName('IdAnexoCredito').Value;
  end;

  procedure CancelarCredito(IdAnexoCredito: Integer);
  begin
    if IdAnexoCredito <> 0 then
    begin
      ScreenCursorProc(crSQLWait);
      try
        adopCanAnexosCreditos.Parameters.ParamByName('@IdAnexoCredito').Value:= IdAnexoCredito;
        adopCanAnexosCreditos.ExecProc;
      finally
        ScreenCursorProc(crDefault);
      end;
    end;
  end;

  function GetMonto(IdAnexo: Integer): Extended;
  begin
    adocGetSaldoActual.Parameters.ParamByName('IdAnexo').Value := IdAnexo;
    adocGetSaldoActual.Execute;
    Result:= adocGetSaldoActual.Parameters.ParamByName('SaldoActual').Value;
  end;

begin
  if MessageDlg(strRestructureAnexo, mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    if ProductosValido(IdAnexo) then
    begin
      // Generar Credito
      IdAnexoCreditoAnterior := GetIdAnexoCreditoValido(IdAnexo);
      FCreditosFecha := Date;
      FCreditosFechaVencimiento := GetFechaDia(FCreditosFecha, adodsMasterDiaVencimiento.Value);
      FCreditosFechaCorte := GetFechaDia(FCreditosFecha, adodsMasterDiaCorte.Value);
      FCreditosMontoFiananciar := GetMonto(IdAnexo);
      if TfrmAnexosCreditos(gFormDeatil2).AddCredito then
      begin
        // Generar Amortizaciones
        dmAmortizaciones.TipoContrato := TipoContrato;
        if dmAmortizaciones.GenAnexosAmortizaciones(adodsCreditosIdAnexoCredito.Value,
        adodsCreditosFecha.Value, adodsCreditosFechaCorte.Value, adodsCreditosFechaVencimiento.Value,
        adodsCreditosTasaAnual.Value, adodsCreditosPlazo.Value,
        adodsCreditosMontoFiananciar.AsExtended, adodsCreditosValorResidual.AsExtended,
        adodsCreditosImpactoISR.AsExtended) then
        begin
          adodsAmortizaciones.Close;
          adodsAmortizaciones.Open;
        end;
        // Cancelar credito anterior
        CancelarCredito(IdAnexoCreditoAnterior);
        RefreshADODS(adodsCreditos, adodsCreditosIdAnexoCredito);
      end;
    end;
  end;
end;

procedure TdmContratos.SetPaymentTime(const Value: TPaymentTime);
begin
  FPaymentTime := Value;
end;

end.
