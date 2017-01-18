unit ContratosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB, System.Math, ProcesosType, Vcl.Dialogs, System.UITypes,
  AmortizacionesDM;

resourcestring
  strAllowGenAnexo = '¿Deseas crear el anexo en base a la cotización %s?';
  strGenPagoIncial = '¿Deseas crear los pagos inciales de este anexo?';

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
    actProductos: TAction;
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
    adodsCotizaionesSelIdCotizacion: TAutoIncField;
    adodsCotizaionesSelIdentificador: TStringField;
    adodsCotizaionesSelDescripcion: TStringField;
    adodsCotizaionesSelMontoFinanciar: TFMTBCDField;
    adodsCotizaionesSelTasaAnual: TBCDField;
    adodsCotizaionesSelPlazo: TIntegerField;
    adodsCotizaionesSelPagoMensual: TFMTBCDField;
    adospGenAnexoDeCotizacion: TADOStoredProc;
    adodsAnexosIdCotizacion: TIntegerField;
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
    procedure DataModuleCreate(Sender: TObject);
    procedure actProductosExecute(Sender: TObject);
    procedure adodsAnexosPrecioMonedaChange(Sender: TField);
    procedure adodsAnexosNewRecord(DataSet: TDataSet);
    procedure adodsCreditosNewRecord(DataSet: TDataSet);
    procedure adodsCreditosMontoFiananciarChange(Sender: TField);
    procedure DataModuleDestroy(Sender: TObject);
    procedure adodsCreditosAfterPost(DataSet: TDataSet);
    procedure adodsAnexosEnganchePorcentajeChange(Sender: TField);
    procedure adodsAnexosEngancheChange(Sender: TField);
    procedure actPreAmortizacionesExecute(Sender: TObject);
    procedure actGenAmortizacionesExecute(Sender: TObject);
    procedure actCrearAnexoExecute(Sender: TObject);
    procedure actCrearPagoInicialExecute(Sender: TObject);
    procedure actCrearPagoInicialUpdate(Sender: TObject);
    procedure adodsAnexosFechaChange(Sender: TField);
  private
    { Private declarations }
    FPaymentTime: TPaymentTime;
    dmAmortizaciones: TdmAmortizaciones;
    procedure SetPaymentTime(const Value: TPaymentTime);
    function GetTipoContrato: TCTipoContrato;
    function GetIdAnexo: Integer;
    procedure CalcularImportes;
    procedure CalcularImporteEnganche;
    procedure CalcularImportesCredito;
    function CrearPagoInicial: Boolean;
    function GetFechaDia(Fecha: TDateTime; Dia: Integer): TDateTime;
  public
    { Public declarations }
    property PaymentTime: TPaymentTime read FPaymentTime write SetPaymentTime;
    property TipoContrato: TCTipoContrato read GetTipoContrato;
    property IdAnexo: Integer read GetIdAnexo;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses ContratosForm, AnexosForm, AnexosProductosForm, AnexosAmortizacionesForm,
  AnexosCreditosForm, _ConectionDmod, CotizacionesSeleccionarForm, _Utils;

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
  adodsCreditosFechaVencimiento.Value, adodsCreditosTasaAnual.Value, adodsCreditosPlazo.Value,
  adodsCreditosMontoFiananciar.AsExtended,
    adodsCreditosValorResidual.AsExtended,
    adodsCreditosImpactoISR.AsExtended) then
  begin
    adodsAmortizaciones.Close;
    adodsAmortizaciones.Open;
  end;
end;

procedure TdmContratos.actCrearAnexoExecute(Sender: TObject);
var
  frmCotizacionesSeleccionar: TfrmCotizacionesSeleccionar;
  IdCotizacion: Integer;
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
    IdCotizacion := adodsCotizaionesSelIdCotizacion.Value;
    Msg := Format(strAllowGenAnexo, [adodsCotizaionesSelIdentificador.Value]);
  finally
    adodsCotizaionesSel.Close;
    frmCotizacionesSeleccionar.Free;
  end;
  // Genera Anexo en base a la cotizacion seleccionada
  if IdCotizacion > 0 then
    if MessageDlg(Msg, mtConfirmation, mbYesNo, 0) = mrYes then
    begin
      adospGenAnexoDeCotizacion.Parameters.ParamByName('@IdCotizacion').Value:= IdCotizacion;
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
    Amortizaciones.Execute(adodsCreditosFechavencimiento.Value,
    adodsCreditosTasaAnual.Value, adodsCreditosPlazo.Value,
    adodsCreditosMontoFiananciar.AsExtended,
    adodsCreditosValorResidual.AsExtended,
    adodsCreditosImpactoISR.AsExtended);
    Amortizaciones.ShowModule(nil, '');
  finally
    Amortizaciones.Free;
  end;
end;

procedure TdmContratos.actProductosExecute(Sender: TObject);
var
  frmAnexosProductos: TfrmAnexosProductos;
begin
  inherited;
  frmAnexosProductos := TfrmAnexosProductos.Create(Self);
  try
    frmAnexosProductos.DataSet:= adodsAnexosProductos;
    frmAnexosProductos.View:= True;
    adodsAnexosProductos.Open;
    frmAnexosProductos.ShowModal;
  finally
    adodsAnexosProductos.Close;
    frmAnexosProductos.Free;
  end;
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
end;

procedure TdmContratos.adodsAnexosPrecioMonedaChange(Sender: TField);
begin
  inherited;
  CalcularImportes;
end;

procedure TdmContratos.adodsCreditosAfterPost(DataSet: TDataSet);
begin
  inherited;
//  dmAmortizaciones.TipoContrato := TipoContrato;
//  if dmAmortizaciones.GenAnexosAmortizaciones(adodsCreditosIdAnexoCredito.Value,
//  adodsCreditosFechaInicial.Value, adodsCreditosTasaAnual.Value, adodsCreditosPlazo.Value,
//  adodsCreditosMontoFiananciar.AsExtended,
////  Falta colocar valor futuro e impactoISR ahora tiene 0
//  0,0) then
//  begin
//    adodsAmortizaciones.Close;
//    adodsAmortizaciones.Open;
//  end;
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
  adodsCreditosFecha.Value := Now;
  adodsCreditosMontoFiananciar.Value := adodsAnexosMontoFinanciar.Value;
  adodsCreditosValorResidual.Value := adodsAnexosValorResidual.Value;
  adodsCreditosImpactoISR.Value := adodsAnexosImpactoISR.Value;
  adodsCreditosTasaAnual.Value := adodsAnexosTasaAnual.Value;
  adodsCreditosPlazo.Value := adodsAnexosPlazo.Value;
  adodsCreditosFechaVencimiento.Value := adodsAnexosFechaVencimiento.Value;
  adodsCreditosFechaCorte.Value := adodsAnexosFechaCorte.Value;
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
    if MessageDlg(strGenPagoIncial, mtConfirmation, mbYesNo, 0) = mrYes then
    begin
      ScreenCursorProc(crSQLWait);
      try
        adopSetCXCPorAnexo.Parameters.ParamByName('@IdAnexo').Value:= IdAnexo;
        adopSetCXCPorAnexo.ExecProc;
      finally
        ScreenCursorProc(crDefault);
      end;
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
  TfrmAnexos(gFormDeatil1).actProductos := actProductos;
  TfrmAnexos(gFormDeatil1).actCrearPagoinicial := actCrearPagoInicial;
  if adodsCreditos.CommandText <> EmptyStr then adodsCreditos.Open;
  gFormDeatil2:= TfrmAnexosCreditos.Create(Self);
 // gFormDeatil2.ApplyBestFit := False;
  gFormDeatil2.DataSet:= adodsCreditos;
  TfrmAnexosCreditos(gFormDeatil2).actPreAmortizaciones := actPreAmortizaciones;
  TfrmAnexosCreditos(gFormDeatil2).actgenAmortizaciones := actGenAmortizaciones;
  if adodsAmortizaciones.CommandText <> EmptyStr then adodsAmortizaciones.Open;
  gFormDeatil3:= TfrmAnexosAmortizaciones.Create(Self);
//  gFormDeatil3.ApplyBestFit := False;
  gFormDeatil3.ReadOnlyGrid := True;
  gFormDeatil3.DataSet:= adodsAmortizaciones;
  dmAmortizaciones := TdmAmortizaciones.Create(Self);
  dmAmortizaciones.PaymentTime := PaymentTime;
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

procedure TdmContratos.SetPaymentTime(const Value: TPaymentTime);
begin
  FPaymentTime := Value;
end;

end.
