unit ContratosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB, System.Math, ProcesosType, Vcl.Dialogs, System.UITypes,
  AmortizacionesDM, ProductosDM;

resourcestring
  strAllowGenAnexo = '¿Deseas crear el anexo en base a la cotización %s?';
  strGenPagoIncial = '¿Deseas crear los pagos inciales de este anexo?';
  strGenOpcionCompra = '¿Deseas crear la opción de compra de este anexo?';
  strGenMoratorios = '¿Deseas crear los moratorios de este anexo?';
  strNeedProduct   = 'Necesita agregar uno o más productos al anexo';
  strProductsPercentage = 'La suma de porcentajes totales de los productos en el anexo debe ser igual al 100%';
  strRestructureAnexo = '¿Deseas restructurar el anexo?';
  strAllowDelCredito = '¿Deseas eliminar el crédito y sus amortizaciones?';
  strNotValidXLSXAmortizaciones = 'El archivo %s no es valido, por lo que no se puede importar.';

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
    adodsAnexosComisionPorcentaje: TFMTBCDField;
    adodsAnexosComision: TFMTBCDField;
    adodsAnexosComisionImpuesto: TFMTBCDField;
    adodsAnexosGastos: TFMTBCDField;
    adodsAnexosGastosImpuestos: TFMTBCDField;
    adodsAnexosDespositosNumero: TFMTBCDField;
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
    adodsAnexosValorResidualPorcentaje: TFMTBCDField;
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
    adodsAnexosIdPersonaEmpleado: TIntegerField;
    adodsEmpleado: TADODataSet;
    adodsAnexosEmpleado: TStringField;
    adodsAmortizacionesSaldo: TFMTBCDField;
    actOpcionCompra: TAction;
    adodsAnexosValorResidualCreado: TBooleanField;
    adodsAnexosOpcionCompraCreado: TBooleanField;
    adocSetAnexoSaldo: TADOCommand;
    adodsAnexosFechaTermino: TDateTimeField;
    adodsAnexosMontoTermino: TFMTBCDField;
    adodsAnexosContratadoTotal: TFMTBCDField;
    adodsAnexosPagadoTotal: TFMTBCDField;
    adodsAnexosSaldoTotal: TFMTBCDField;
    adodsAmortizacionesPagoSaldo: TFMTBCDField;
    adodsAmortizacionesMoratorioTotal: TFMTBCDField;
    adodsAmortizacionesTotal: TFMTBCDField;
    adodsAmortizacionesFechaPago: TDateTimeField;
    adodsAmortizacionesDiasRetraso: TIntegerField;
    actGenMoratorios: TAction;
    adopGenMoratorio: TADOStoredProc;
    adodsAnexosFinanciarEnganche: TBooleanField;
    actReducirCuota: TAction;
    actReducirPlazo: TAction;
    adodsAnexosFechaLiquidacion: TDateTimeField;
    actEliminarCredito: TAction;
    adospDelAnexosCreditos: TADOStoredProc;
    adodsCreditosEliminarCredito: TBooleanField;
    actAjustarMensualidad1: TAction;
    adodsAnexosFechaEntrega: TDateTimeField;
    adoqAmortizacion1: TADOQuery;
    adoqAmortizacion1CanModificar: TBooleanField;
    actImportarAmortizaciones: TAction;
    odAmortizaciones: TOpenDialog;
    adodsAnexosAgregarCredito: TBooleanField;
    adodsCreditosManual: TBooleanField;
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
    procedure actOpcionCompraExecute(Sender: TObject);
    procedure actOpcionCompraUpdate(Sender: TObject);
    procedure adodsAnexosValorResidualPorcentajeChange(Sender: TField);
    procedure adodsAnexosValorResidualChange(Sender: TField);
    procedure adodsAnexosOpcionCompraPorcentajeChange(Sender: TField);
    procedure adodsAnexosOpcionCompraChange(Sender: TField);
    procedure actGenMoratoriosExecute(Sender: TObject);
    procedure adodsAnexosComisionPorcentajeChange(Sender: TField);
    procedure adodsAnexosComisionChange(Sender: TField);
    procedure adodsAnexosDespositosNumeroChange(Sender: TField);
    procedure adodsAnexosDepositosChange(Sender: TField);
    procedure actReducirCuotaExecute(Sender: TObject);
    procedure actReducirPlazoExecute(Sender: TObject);
    procedure actGenMoratoriosUpdate(Sender: TObject);
    procedure actRestructurarUpdate(Sender: TObject);
    procedure actCrearAnexoUpdate(Sender: TObject);
    procedure actEliminarCreditoExecute(Sender: TObject);
    procedure actEliminarCreditoUpdate(Sender: TObject);
    procedure actAjustarMensualidad1Execute(Sender: TObject);
    procedure actAjustarMensualidad1Update(Sender: TObject);
    procedure actImportarAmortizacionesExecute(Sender: TObject);
    procedure actImportarAmortizacionesUpdate(Sender: TObject);
  private
    { Private declarations }
    FPaymentTime: TPaymentTime;
    FCreditosFecha: TDateTime;
    FCreditosFechaVencimiento: TDateTime;
    FCreditosFechaCorte: TDateTime;
    FCreditosMontoFiananciar: Extended;
    FCreditosManual: Boolean;
    dmAmortizaciones: TdmAmortizaciones;
    procedure SetPaymentTime(const Value: TPaymentTime);
    function GetTipoContrato: TCTipoContrato;
    function GetIdAnexo: Integer;
    function GetImporte(Total, Pocentaje: Extended): Extended;
    function GetPocentaje(Total, Importe: Extended): Extended;
    procedure CalcularImportes;
    procedure CalcularImportesCredito;
    function CrearPagoInicial: Boolean;
    function CrearOpcionCompra: Boolean;
    function CrearMoratorios: Boolean;
    function GetFechaDia(Fecha: TDateTime; Dia: Integer): TDateTime;
    procedure Restructurar;
    function ProductosValido(IdAnexo: Integer): Boolean;
    procedure SetAnexoSaldo(IdAnexo: Integer);
    function EliminarCredito(IdAnexoCredito: Integer): Boolean;
    function PuedeModificarAmortizacion1(IdAnexo: Integer): Boolean;
  protected
    procedure SetFilter; override;
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

procedure TdmContratos.actEliminarCreditoExecute(Sender: TObject);
begin
  inherited;
  if EliminarCredito(adodsCreditosIdAnexoCredito.Value) then
  begin
    RefreshADODS(adodsCreditos, adodsCreditosIdAnexoCredito);
    RefreshADODS(adodsAnexos, adodsAnexosIdAnexo);
  end;
end;

procedure TdmContratos.actEliminarCreditoUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := adodsCreditosEliminarCredito.Value;
end;

procedure TdmContratos.actGenAmortizacionesExecute(Sender: TObject);
begin
  inherited;
  // Generar Credito
  FCreditosFecha := _DmConection.LaFechaActual;//Date;  //May 26/17
  FCreditosFechaVencimiento := adodsAnexosFechaVencimiento.Value;
  FCreditosFechaCorte := adodsAnexosFechaCorte.Value;
  FCreditosMontoFiananciar := adodsAnexosSaldoInsoluto.AsExtended;
  FCreditosManual := False;
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
end;

procedure TdmContratos.actGenerarExecute(Sender: TObject);
begin
  inherited;
  if ProductosValido(IdAnexo) then
  begin
    // Generar Credito
    FCreditosFecha := _DmConection.LaFechaActual;//Date;  //May 26/17
    FCreditosFechaVencimiento := adodsAnexosFechaVencimiento.Value;
    FCreditosFechaCorte := adodsAnexosFechaCorte.Value;
    FCreditosMontoFiananciar := adodsAnexosMontoFinanciar.AsExtended;
    FCreditosManual := False;
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
      // Actualiza saldo incial del anexo
      SetAnexoSaldo(IdAnexo);
      // Generar Pago Inicial
      CrearPagoInicial;
      RefreshADODS(adodsAnexos, adodsAnexosIdAnexo);
    end;
  end;
end;

procedure TdmContratos.actGenerarUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := (not adodsAnexosIdAnexo.IsNull) and (not adodsAnexosPagoInicialCreado.Value);
end;

procedure TdmContratos.actGenMoratoriosExecute(Sender: TObject);
begin
  inherited;
  if CrearMoratorios then
    RefreshADODS(adodsAmortizaciones, adodsAmortizacionesIdAnexoAmortizacion);
end;

procedure TdmContratos.actGenMoratoriosUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := (not adodsAnexosIdAnexo.IsNull)
  and (adodsAnexosIdAnexoEstatus.Value <> 5);
end;

procedure TdmContratos.actGetTipoCambioExecute(Sender: TObject);
begin
  inherited;
  if adodsAnexos.State in [dsEdit,dsInsert] then
  begin
    adodsAnexosTipoCambio.Value := dmConfiguracion.GetTipoCambio(adodsAnexosIdMoneda.Value)
  end;
end;

procedure TdmContratos.actImportarAmortizacionesExecute(Sender: TObject);
begin
  inherited;
  // Obtiene las amotizaciones de un XLSX
  if odAmortizaciones.Execute then
  begin
    dmAmortizaciones.TipoContrato := TipoContrato;
    if dmAmortizaciones.ValidarArchivoAmortizaciones(adodsAnexosSaldoInsoluto.AsFloat, odAmortizaciones.FileName) then
    begin
      // Generar Credito
      FCreditosFecha := _DmConection.LaFechaActual;
      FCreditosFechaVencimiento := adodsAnexosFechaVencimiento.Value;
      FCreditosFechaCorte := adodsAnexosFechaCorte.Value;
      FCreditosMontoFiananciar := adodsAnexosSaldoInsoluto.AsExtended;
      FCreditosManual := True;
      adodsCreditos.Insert;
      adodsCreditos.Post;
      if dmAmortizaciones.GenAnexosAmortizaciones(adodsCreditosIdAnexoCredito.Value, odAmortizaciones.FileName) then
      begin
        adodsAmortizaciones.Close;
        adodsAmortizaciones.Open;
        // Actualiza saldo incial del anexo
        SetAnexoSaldo(IdAnexo);
        // Generar Pago Inicial
        CrearPagoInicial;
        RefreshADODS(adodsAnexos, adodsAnexosIdAnexo);
      end;
    end
    else
      MessageDlg(Format(strNotValidXLSXAmortizaciones, [odAmortizaciones.FileName]), mtInformation, [mbOK], 0);
  end;
end;

procedure TdmContratos.actImportarAmortizacionesUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := (not adodsAnexosIdAnexo.IsNull)
  and adodsAnexosAgregarCredito.Value;
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

procedure TdmContratos.actOpcionCompraExecute(Sender: TObject);
begin
  inherited;
  CrearOpcionCompra;
end;

procedure TdmContratos.actOpcionCompraUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := (not adodsAnexosIdAnexo.IsNull)
  and (adodsAnexosIdAnexoEstatus.Value <> 5)
  and (adodsAnexosOpcionCompra.Value > 0) and (not adodsAnexosOpcionCompraCreado.Value);
end;

procedure TdmContratos.actAbonarCapitalExecute(Sender: TObject);
//var
//  dmAbonarCapital: TdmAbonarCapital;
begin
  inherited;
//  dmAbonarCapital := TdmAbonarCapital.Create(Self);
//  try
//    dmAbonarCapital.Execute;
//  finally
//    dmAbonarCapital.Free;
//  end;
end;

procedure TdmContratos.actReducirCuotaExecute(Sender: TObject);
begin
  inherited;
  dmAmortizaciones.TipoContrato := TipoContrato;
  dmAmortizaciones.SetAmortizaciones(IdAnexo, 0, acReducirCuota);
end;

procedure TdmContratos.actReducirPlazoExecute(Sender: TObject);
begin
  inherited;
  dmAmortizaciones.TipoContrato := TipoContrato;
  dmAmortizaciones.SetAmortizaciones(IdAnexo, 0, acReducirPlazo);
end;

procedure TdmContratos.actAjustarMensualidad1Execute(Sender: TObject);
begin
  inherited;
  dmAmortizaciones.TipoContrato := TipoContrato;
  dmAmortizaciones.AjustarMensualidad1(adodsAnexosIdAnexo.Value, adodsAnexosFechaEntrega.Value);
end;

procedure TdmContratos.actAjustarMensualidad1Update(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := (TipoContrato <> tcArrendamientoPuro) and
  PuedeModificarAmortizacion1(adodsAnexosIdAnexo.Value);
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

procedure TdmContratos.actCrearAnexoUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := (not adodsMasterIdContrato.IsNull);
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

procedure TdmContratos.actRestructurarUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := (not adodsAnexosIdAnexo.IsNull)
  and (adodsAnexosIdAnexoEstatus.Value <> 5);
end;

procedure TdmContratos.adodsAnexosComisionChange(Sender: TField);
var
  Porcentaje: Extended;
begin
  inherited;
  if adodsAnexos.State in [dsInsert, dsEdit] then
  begin
    Porcentaje := GetPocentaje((adodsAnexosPrecioTotal.AsExtended-adodsAnexosEnganche.AsExtended), adodsAnexosComision.AsExtended);
    if Porcentaje <> adodsAnexosComisionPorcentaje.Value then
      adodsAnexosComisionPorcentaje.Value := Porcentaje;
  end;
  CalcularImportes;
end;

procedure TdmContratos.adodsAnexosComisionPorcentajeChange(Sender: TField);
begin
  inherited;
  if adodsAnexos.State in [dsInsert, dsEdit] then
    adodsAnexosComision.Value := GetImporte((adodsAnexosPrecioTotal.AsExtended-adodsAnexosEnganche.AsExtended), adodsAnexosComisionPorcentaje.AsExtended);
end;

procedure TdmContratos.adodsAnexosDepositosChange(Sender: TField);
var
  Numero: Extended;
begin
  inherited;
  if adodsAnexos.State in [dsInsert, dsEdit] then
  begin
    if adodsAnexosPagoMensual.Value <> 0 then
      Numero := adodsAnexosDepositos.AsExtended/adodsAnexosPagoMensual.AsExtended
    else
      Numero := 0;
    if Numero <> adodsAnexosDespositosNumero.Value then
      adodsAnexosDespositosNumero.Value := Numero;
  end;
  CalcularImportes;
end;

procedure TdmContratos.adodsAnexosDespositosNumeroChange(Sender: TField);
begin
  inherited;
  if adodsAnexos.State in [dsInsert, dsEdit] then
    adodsAnexosDepositos.Value := adodsAnexosPagoMensual.Value * adodsAnexosDespositosNumero.Value;
end;

procedure TdmContratos.adodsAnexosEngancheChange(Sender: TField);
var
  Porcentaje: Extended;
begin
  inherited;
  if adodsAnexos.State in [dsInsert, dsEdit] then
  begin
    Porcentaje := GetPocentaje(adodsAnexosPrecioTotal.AsExtended, adodsAnexosEnganche.AsExtended);
    if Porcentaje <> adodsAnexosEnganchePorcentaje.Value then
      adodsAnexosEnganchePorcentaje.Value := Porcentaje;
  end;
  CalcularImportes;
end;

procedure TdmContratos.adodsAnexosEnganchePorcentajeChange(Sender: TField);
begin
  inherited;
  if adodsAnexos.State in [dsInsert, dsEdit] then
    adodsAnexosEnganche.Value := GetImporte(adodsAnexosPrecioTotal.AsExtended, adodsAnexosEnganchePorcentaje.AsExtended);
end;

procedure TdmContratos.adodsAnexosFechaChange(Sender: TField);
begin
  inherited;
//  if adodsAnexos.State in [dsInsert, dsEdit] then
//  begin
//    adodsAnexosFechaCorte.Value := GetFechaDia(adodsAnexosFecha.Value, adodsMasterDiaCorte.Value);
//    adodsAnexosFechaVencimiento.Value := GetFechaDia(adodsAnexosFecha.Value, adodsMasterDiaVencimiento.Value);
//  end;
end;

procedure TdmContratos.adodsAnexosNewRecord(DataSet: TDataSet);
begin
  inherited;
  adodsAnexosIdAnexoEstatus.Value := 1; // Activo
  adodsAnexosIdMoneda.Value := _MONEDAS_ID_DOLAR_USA;
  adodsAnexosFecha.Value := _DmConection.LaFechaActual;//Date;  //May 26/17
//  adodsAnexosFechaEntrega.Value := adodsAnexosFecha.Value;
  adodsAnexosTipoCambio.Value := 19;
  adodsAnexosPrecioMoneda.Value := 0;
  adodsAnexosEnganchePorcentaje.Value := 0;
  adodsAnexosComisionPorcentaje.Value := 0;
  adodsAnexosGastos.Value := 0;
  adodsAnexosDespositosNumero.Value := 2;
  adodsAnexosOpcionCompraPorcentaje.Value := 0;
  adodsAnexosValorResidualPorcentaje.Value := 0;
  adodsAnexosImpactoISR.Value := 0;
  adodsAnexosFechaCorte.Value := GetFechaDia(adodsAnexosFecha.Value, adodsMasterDiaCorte.Value);
  adodsAnexosFechaVencimiento.Value := GetFechaDia(adodsAnexosFecha.Value, adodsMasterDiaVencimiento.Value);
  adodsAnexosTasaMoratoriaAnual.Value := 0;
  adodsAnexosCartaCompensacion.Value := False;
end;

procedure TdmContratos.adodsAnexosOpcionCompraChange(Sender: TField);
var
  Porcentaje: Extended;
begin
  inherited;
  if adodsAnexos.State in [dsInsert, dsEdit] then
  begin
    Porcentaje := GetPocentaje(adodsAnexosPrecioTotal.AsExtended, adodsAnexosOpcionCompra.AsExtended);
    if Porcentaje <> adodsAnexosOpcionCompraPorcentaje.Value then
      adodsAnexosOpcionCompraPorcentaje.Value := Porcentaje;
  end;
  CalcularImportes;
end;

procedure TdmContratos.adodsAnexosOpcionCompraPorcentajeChange(Sender: TField);
begin
  inherited;
  if adodsAnexos.State in [dsInsert, dsEdit] then
    adodsAnexosOpcionCompra.Value := GetImporte(adodsAnexosPrecioTotal.AsExtended, adodsAnexosOpcionCompraPorcentaje.AsExtended);
end;

procedure TdmContratos.adodsAnexosPrecioMonedaChange(Sender: TField);
begin
  inherited;
  CalcularImportes;
end;

procedure TdmContratos.adodsAnexosValorResidualChange(Sender: TField);
var
  Porcentaje: Extended;
begin
  inherited;
  if adodsAnexos.State in [dsInsert, dsEdit] then
  begin
    Porcentaje := GetPocentaje(adodsAnexosPrecioTotal.AsExtended, adodsAnexosValorResidual.AsExtended);
    if Porcentaje <> adodsAnexosValorResidualPorcentaje.Value then
      adodsAnexosValorResidualPorcentaje.Value := Porcentaje;
  end;
  CalcularImportes;
end;

procedure TdmContratos.adodsAnexosValorResidualPorcentajeChange(Sender: TField);
begin
  inherited;
  if adodsAnexos.State in [dsInsert, dsEdit] then
    adodsAnexosValorResidual.Value := GetImporte(adodsAnexosPrecioTotal.AsExtended, adodsAnexosValorResidualPorcentaje.AsExtended);
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
  adodsCreditosManual.Value := FCreditosManual;
end;

procedure TdmContratos.CalcularImportes;
var
  Enganche: Extended;
begin
  if adodsAnexos.State in [dsInsert, dsEdit] then
  begin
    // Si se financia el enganche el valor del calculo sera 0
    // Caso especial: RENTA DE GRUAS Y PLANTAS DE LUZ SEREDRAL, SA DE CV
    if (adodsAnexosFinanciarEnganche.Value) then
      Enganche:= 0
    else
      Enganche:= adodsAnexosEnganche.AsExtended;
    // Calculo
    adodsAnexosPagoMensual.Value := dmAmortizaciones.Pago(adodsAnexosTasaAnual.Value,
    adodsAnexosPlazo.Value, adodsAnexosMontoFinanciar.AsExtended,
    adodsAnexosValorResidual.AsExtended) + adodsAnexosImpactoISR.AsExtended;
    adodsAnexosPrecio.Value := adodsAnexosPrecioMoneda.Value * adodsAnexosTipoCambio.Value;
    adodsAnexosImpuesto.Value := adodsAnexosPrecio.Value * (_IMPUESTOS_IVA/100);
    adodsAnexosPrecioTotal.Value := adodsAnexosPrecio.Value + adodsAnexosImpuesto.Value;
//    adodsAnexosComision.Value := (adodsAnexosPrecioTotal.Value-adodsAnexosEnganche.Value)*(adodsAnexosComisionPorcentaje.Value/100);
    adodsAnexosComisionImpuesto.Value := adodsAnexosComision.Value * (_IMPUESTOS_IVA/100);
    adodsAnexosGastosImpuestos.Value := adodsAnexosGastos.Value * (_IMPUESTOS_IVA/100);
//    adodsAnexosDepositos.Value := adodsAnexosPagoMensual.Value * adodsAnexosDespositosNumero.Value;
    adodsAnexosPagoIncial.Value := (Enganche+adodsAnexosComision.Value+adodsAnexosComisionImpuesto.Value+
    adodsAnexosGastos.Value+adodsAnexosGastosImpuestos.Value+adodsAnexosDepositos.Value);
    adodsAnexosMontoFinanciar.Value:= adodsAnexosPrecioTotal.Value-adodsAnexosEnganche.Value;
    adodsAnexosSaldoInsoluto.Value := adodsAnexosMontoFinanciar.Value - adodsAnexosCapitalCobrado.Value;
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

function TdmContratos.CrearMoratorios: Boolean;
begin
  Result:= False;
  if IdAnexo <> 0 then
  begin
    if MessageDlg(strGenMoratorios, mtConfirmation, mbYesNo, 0) = mrYes then
    begin
      ScreenCursorProc(crSQLWait);
      try
        adopGenMoratorio.Parameters.ParamByName('@IdAnexo').Value:= IdAnexo;
        adopGenMoratorio.Parameters.ParamByName('@Fecha').Value:= dmConfiguracion.FechaSistema;
        adopGenMoratorio.Parameters.ParamByName('@Temporal').Value:= 0;
        adopGenMoratorio.ExecProc;
      finally
        ScreenCursorProc(crDefault);
      end;
      Result:= True;
    end;
  end;
end;

function TdmContratos.CrearOpcionCompra: Boolean;
begin
  Result:= False;
  if IdAnexo <> 0 then
  begin
    if MessageDlg(strGenOpcionCompra, mtConfirmation, mbYesNo, 0) = mrYes then
    begin
      ScreenCursorProc(crSQLWait);
      try
        adopSetCXCPorAnexo.Parameters.ParamByName('@IdAnexo').Value:= IdAnexo;
        adopSetCXCPorAnexo.Parameters.ParamByName('@Fase').Value:= 4;
        adopSetCXCPorAnexo.ExecProc;
      finally
        ScreenCursorProc(crDefault);
      end;
      Result:= True;
    end;
  end;
end;

function TdmContratos.CrearPagoInicial: Boolean;
begin
  Result:= False;
  if IdAnexo <> 0 then
  begin
    ScreenCursorProc(crSQLWait);
    try
      adopSetCXCPorAnexo.Parameters.ParamByName('@IdAnexo').Value:= IdAnexo;
      adopSetCXCPorAnexo.Parameters.ParamByName('@Fase').Value:= 0;
      adopSetCXCPorAnexo.ExecProc;
    finally
      ScreenCursorProc(crDefault);
    end;
    Result:= True;
  end;
end;

procedure TdmContratos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  PaymentTime := ptEndOfPeriod;
  gGridForm:= TfrmContratos.Create(Self);
  gGridForm.DataSet:= adodsMaster;
  gGridForm.ApplyBestFit := False;
  TfrmContratos(gGridForm).actCrearAnexo := actCrearAnexo;
  if adodsAnexos.CommandText <> EmptyStr then adodsAnexos.Open;
  gFormDeatil1:= TfrmAnexos.Create(Self);
//  gFormDeatil1.ApplyBestFit := False;
  gFormDeatil1.DataSet:= adodsAnexos;
  TfrmAnexos(gFormDeatil1).actGenerar := actGenerar;
  TfrmAnexos(gFormDeatil1).actImportarAmortizaciones := actImportarAmortizaciones;
  TfrmAnexos(gFormDeatil1).actAjustarMensualidad1 := actAjustarMensualidad1;
  TfrmAnexos(gFormDeatil1).actGenMoratorios := actGenMoratorios;
  TfrmAnexos(gFormDeatil1).actRestructurar := actRestructurar;
  TfrmAnexos(gFormDeatil1).actAbonar := actAbonarCapital;
  TfrmAnexos(gFormDeatil1).actOpcionCompra := actOpcionCompra;
  TfrmAnexos(gFormDeatil1).actReducirCuota := actReducirCuota;
  TfrmAnexos(gFormDeatil1).actReducirPlazo := actReducirPlazo;
  TfrmAnexos(gFormDeatil1).actGetTipoCambio := actGetTipoCambio;
  if adodsCreditos.CommandText <> EmptyStr then adodsCreditos.Open;
  gFormDeatil2:= TfrmAnexosCreditos.Create(Self);
 // gFormDeatil2.ApplyBestFit := False;
  gFormDeatil2.ReadOnlyGrid := True;
  gFormDeatil2.DataSet:= adodsCreditos;
  TfrmAnexosCreditos(gFormDeatil2).actPreAmortizaciones := actPreAmortizaciones;
  TfrmAnexosCreditos(gFormDeatil2).actgenAmortizaciones := actGenAmortizaciones;
  TfrmAnexosCreditos(gFormDeatil2).actEliminar := actEliminarCredito;
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
    actReducirCuota.Visible := True;
    actReducirPlazo.Visible := True;
    actPreAmortizaciones.Visible := True;
    actGenAmortizaciones.Visible := True;
  {$ELSE}
    actAbonarCapital.Visible := False;
    actReducirCuota.Visible := False;
    actReducirPlazo.Visible := False;
    actPreAmortizaciones.Visible := False;
    actGenAmortizaciones.Visible := False;
  {$ENDIF}
  // Busqueda
  gGridForm.actSearch := actSearch;
  SQLSelect:= 'SELECT Contratos.IdContrato, Contratos.IdPersona, Contratos.IdContratoTipo, Contratos.IdContratoEstatus, Contratos.Identificador, Contratos.Fecha, Contratos.MontoAutorizado, Contratos.DiaCorte, Contratos.DiaVencimiento ' +
  'FROM Contratos ' +
  'INNER JOIN Personas ON Contratos.IdPersona = Personas.IdPersona ';
  SQLOrderBy:= 'ORDER BY Personas.RazonSocial ';
  actSearch.Execute;
end;

procedure TdmContratos.DataModuleDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(dmAmortizaciones);
end;


function TdmContratos.EliminarCredito(IdAnexoCredito: Integer): Boolean;
begin
  Result:= False;
  if IdAnexoCredito <> 0 then
  begin
    if MessageDlg(strAllowDelCredito, mtConfirmation, mbYesNo, 0) = mrYes then
    begin
      ScreenCursorProc(crSQLWait);
      try
        adospDelAnexosCreditos.Parameters.ParamByName('@IdAnexoCredito').Value:= IdAnexoCredito;
        adospDelAnexosCreditos.Parameters.ParamByName('@IdUsuario').Value:= _dmConection.IdUsuario;
        adospDelAnexosCreditos.ExecProc;
      finally
        ScreenCursorProc(crDefault);
      end;
      Result:= True;
    end;
  end;
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

function TdmContratos.GetImporte(Total, Pocentaje: Extended): Extended;
begin
  Result:= Total * (Pocentaje/100);
end;

function TdmContratos.GetPocentaje(Total, Importe: Extended): Extended;
begin
  if Total <> 0 then
    Result := (Importe*100)/ Total
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

function TdmContratos.PuedeModificarAmortizacion1(IdAnexo: Integer): Boolean;
begin
  adoqAmortizacion1.Close;
  adoqAmortizacion1.Parameters.ParamByName('IdAnexo').Value := IdAnexo;
  adoqAmortizacion1.Open;
  Result := adoqAmortizacion1CanModificar.Value;
  adoqAmortizacion1.Close;
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
      FCreditosFecha :=  _DmConection.LaFechaActual;//Date;  //May 26/17
      FCreditosFechaVencimiento := GetFechaDia(FCreditosFecha, adodsMasterDiaVencimiento.Value);
      FCreditosFechaCorte := GetFechaDia(FCreditosFecha, adodsMasterDiaCorte.Value);
      FCreditosMontoFiananciar := GetMonto(IdAnexo);
      FCreditosManual := False;
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
        // Actualiza saldo incial del anexo
        SetAnexoSaldo(IdAnexo);
        // Cancelar credito anterior
        CancelarCredito(IdAnexoCreditoAnterior);
        RefreshADODS(adodsCreditos, adodsCreditosIdAnexoCredito);
      end;
    end;
  end;
end;

procedure TdmContratos.SetAnexoSaldo(IdAnexo: Integer);
begin
  adocSetAnexoSaldo.Parameters.ParamByName('IdAnexo').Value := IdAnexo;
  adocSetAnexoSaldo.Execute;
end;

procedure TdmContratos.SetFilter;
begin
  inherited;
  SQLWhere := 'WHERE 1=1 ';
  if TfrmContratos(gGridForm).Cliente <> EmptyStr then
    SQLWhere := SQLWhere + 'AND Contratos.IdPersona IN (SELECT IdPersona FROM Personas WHERE RazonSocial LIKE ''%' + TfrmContratos(gGridForm).Cliente + '%'') ';
  if TfrmContratos(gGridForm).UsarFecha then
    SQLWhere := SQLWhere + Format('AND Fecha BETWEEN CONVERT(datetime, ''%s'' , 103) AND CONVERT(datetime, ''%s'' , 103) ', [DateToStr(TfrmContratos(gGridForm).Desde), DateToStr(TfrmContratos(gGridForm).Hasta+1)]);
end;

procedure TdmContratos.SetPaymentTime(const Value: TPaymentTime);
begin
  FPaymentTime := Value;
end;

end.
