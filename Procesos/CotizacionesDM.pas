unit CotizacionesDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB, System.Math, System.DateUtils, Vcl.Dialogs, System.UITypes,
  ProcesosType, AmortizacionesDM;

resourcestring
  strUpdateEstatus = '¿Desea modificar el estatus de la cotización?';

type
  TdmCotizaciones = class(T_dmStandar)
    adodsMasterIdCotizacion: TAutoIncField;
    adodsMasterIdPersona: TIntegerField;
    adodsMasterIdContratoTipo: TIntegerField;
    adodsMasterIdMoneda: TIntegerField;
    adodsMasterIdCotizacionEstatus: TIntegerField;
    adodsMasterIdUsuario: TIntegerField;
    adodsMasterIdentificador: TStringField;
    adodsMasterDescripcion: TStringField;
    adodsMasterElaboracion: TDateTimeField;
    adodsMasterVigencia: TDateTimeField;
    adodsMasterPrecioMoneda: TFMTBCDField;
    adodsMasterTipoCambio: TFMTBCDField;
    adodsMasterPrecio: TFMTBCDField;
    adodsMasterImpuesto: TFMTBCDField;
    adodsMasterPrecioTotal: TFMTBCDField;
    adodsMasterEnganchePorcentaje: TFMTBCDField;
    adodsMasterEnganche: TFMTBCDField;
    adodsMasterComisionPorcentaje: TBCDField;
    adodsMasterComision: TFMTBCDField;
    adodsMasterComisionImpuesto: TFMTBCDField;
    adodsMasterGastos: TFMTBCDField;
    adodsMasterGastosImpuestos: TFMTBCDField;
    adodsMasterDespositosNumero: TIntegerField;
    adodsMasterDepositos: TFMTBCDField;
    adodsMasterPagoIncial: TFMTBCDField;
    adodsMasterOpcionCompraPorcentaje: TFMTBCDField;
    adodsMasterOpcionCompra: TFMTBCDField;
    adodsMasterValorResidualPorcentaje: TFMTBCDField;
    adodsMasterValorResidual: TFMTBCDField;
    adodsMasterMontoFinanciar: TFMTBCDField;
    adodsMasterTasaAnual: TBCDField;
    adodsMasterPlazo: TIntegerField;
    adodsMasterPagoMensual: TFMTBCDField;
    adodsMasterFechaInicial: TDateTimeField;
    adodsMasterFechaCorte: TDateTimeField;
    adodsPersonas: TADODataSet;
    adodsContratosTipos: TADODataSet;
    adodsMonedas: TADODataSet;
    adodsUsuario: TADODataSet;
    adodsMasterCliente: TStringField;
    adodsMasterTipoContrato: TStringField;
    adodsMasterMoneda: TStringField;
    actProductos: TAction;
    adodsMasterImpactoISR: TFMTBCDField;
    daMaster: TDataSource;
    adodsCreditos: TADODataSet;
    adodsCotizacionesEstatus: TADODataSet;
    adodsCreditosIdCotizacionCredito: TAutoIncField;
    adodsCreditosIdCotizacion: TIntegerField;
    adodsCreditosIdCotizacionCreditoEstatus: TIntegerField;
    adodsCreditosIdUsuario: TIntegerField;
    adodsCreditosFecha: TDateTimeField;
    adodsCreditosMontoFinanciar: TFMTBCDField;
    adodsCreditosValorResidual: TFMTBCDField;
    adodsCreditosImpactoISR: TFMTBCDField;
    adodsCreditosTasaAnual: TBCDField;
    adodsCreditosPlazo: TIntegerField;
    adodsCreditosPagoMensual: TFMTBCDField;
    adodsCreditosEstatus: TADODataSet;
    adodsMasterEstatus: TStringField;
    adodsUsuariosC: TADODataSet;
    adodsMasterUsuario: TStringField;
    adodsCreditosEstatus2: TStringField;
    adodsCreditosUsuario: TStringField;
    actAmortizaciones: TAction;
    actCambiarEstatus: TAction;
    adospUpdCotizacionesEstatus: TADOStoredProc;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure adodsMasterNewRecord(DataSet: TDataSet);
    procedure actProductosExecute(Sender: TObject);
    procedure adodsMasterPrecioMonedaChange(Sender: TField);
    procedure adodsCreditosNewRecord(DataSet: TDataSet);
    procedure adodsCreditosMontoFinanciarChange(Sender: TField);
    procedure actAmortizacionesExecute(Sender: TObject);
    procedure actCambiarEstatusExecute(Sender: TObject);
    procedure actCambiarEstatusUpdate(Sender: TObject);
  private
    { Private declarations }
    dmAmortizaciones: TdmAmortizaciones;
    FPaymentTime: TPaymentTime;
    procedure SetPaymentTime(const Value: TPaymentTime);
    procedure CalcularImportes;
    procedure CalcularImportesCredito;
    function GetTipoContrato: TCTipoContrato;
    function GetEstatus: TCotizacionEstatus;
    function CambiarCotizacionesEstatus: Boolean;
    function GetIdCotizacion: integer;
  public
    { Public declarations }
    property PaymentTime: TPaymentTime read FPaymentTime write SetPaymentTime;
    property IdCotizacion: integer read GetIdCotizacion;
    property TipoContrato: TCTipoContrato read GetTipoContrato;
    property Estatus: TCotizacionEstatus read GetEstatus;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses CotizacionesForm, _ConectionDmod, CotizacionesCreditosForm, _Utils;

{$R *.dfm}

procedure TdmCotizaciones.actAmortizacionesExecute(Sender: TObject);
var
  Amortizaciones: TdmAmortizaciones;
begin
  inherited;
  Amortizaciones := TdmAmortizaciones.Create(Self);
  try
    Amortizaciones.TipoContrato:= TipoContrato;
    Amortizaciones.Execute(adodsMasterFechaInicial.Value,
    adodsmasterTasaAnual.Value, adodsmasterPlazo.Value,
    adodsMasterMontoFinanciar.AsExtended,
    adodsMasterValorResidual.AsExtended,
    adodsmasterImpactoISR.AsExtended);

//    Amortizaciones.Execute(adodsCreditosFecha.Value,
//    adodsCreditosTasaAnual.Value, adodsCreditosPlazo.Value,
//    adodsCreditosMontoFiananciar.AsExtended,
//    adodsCreditosValorResidual.AsExtended,
//    adodsCreditosImpactoISR.AsExtended);
    Amortizaciones.ShowModule(nil, '');
  finally
    Amortizaciones.Free;
  end;
end;

procedure TdmCotizaciones.actCambiarEstatusExecute(Sender: TObject);
begin
  inherited;
  if CambiarCotizacionesEstatus then
    RefreshADODS(adodsMaster, adodsMasterIdCotizacion);
end;

procedure TdmCotizaciones.actCambiarEstatusUpdate(Sender: TObject);
begin
  inherited;
  case Estatus of
    aeAbierto: begin
      actCambiarEstatus.Enabled:= True;
      actCambiarEstatus.Caption:= 'Cambiar a Cerrado';
    end;
    aeContratado: begin
      actCambiarEstatus.Enabled:= False;
      actCambiarEstatus.Caption:= 'Cambiar';
    end;
    aeCerrado: begin
      actCambiarEstatus.Enabled:= True;
      actCambiarEstatus.Caption:= 'Cambiar a Abierto';
    end;
    else
      actCambiarEstatus.Enabled:= False;
  end;
end;

procedure TdmCotizaciones.actProductosExecute(Sender: TObject);
//var
//  frmAnexosProductos: TfrmAnexosProductos;
begin
  inherited;
//  frmAnexosProductos := TfrmAnexosProductos.Create(Self);
//  try
//    frmAnexosProductos.DataSet:= adodsAnexosProductos;
//    frmAnexosProductos.View:= True;
//    adodsAnexosProductos.Open;
//    frmAnexosProductos.ShowModal;
//  finally
//    adodsAnexosProductos.Close;
//    frmAnexosProductos.Free;
//  end;
end;

procedure TdmCotizaciones.adodsCreditosMontoFinanciarChange(Sender: TField);
begin
  inherited;
  CalcularImportesCredito;
end;

procedure TdmCotizaciones.adodsCreditosNewRecord(DataSet: TDataSet);
begin
  inherited;
  adodsCreditosIdCotizacionCreditoEstatus.Value := 1;
  adodsCreditosIdUsuario.Value := _dmConection.IdUsuario;
  adodsCreditosFecha.Value := Now;
  adodsCreditosMontoFinanciar.Value := adodsMasterMontoFinanciar.Value;
  adodsCreditosValorResidual.Value := adodsMasterValorResidual.Value;
  adodsCreditosImpactoISR.Value := adodsMasterImpactoISR.Value;
end;

procedure TdmCotizaciones.adodsMasterNewRecord(DataSet: TDataSet);
begin
  inherited;
  adodsMasterIdCotizacionEstatus.Value := 1; // Activo
  adodsmasterIdUsuario.Value := _dmConection.IdUsuario;
  adodsMasterIdMoneda.Value := _MONEDAS_ID_DOLAR_USA;
  adodsMasterElaboracion.Value := Date;
  adodsMasterVigencia.Value := IncDay(Date, _CONFIGURACION_DIAS_VIGENCIA);
  adodsMasterTipoCambio.Value := 19;
  adodsMasterEnganchePorcentaje.Value := 0;
  adodsMasterComisionPorcentaje.Value := 0;
  adodsMasterDespositosNumero.Value := 2;
  adodsMasterOpcionCompraPorcentaje.Value := 0;
  adodsMasterValorResidualPorcentaje.Value := 0;
  end;

procedure TdmCotizaciones.adodsMasterPrecioMonedaChange(Sender: TField);
begin
  inherited;
  CalcularImportes;
end;

procedure TdmCotizaciones.CalcularImportes;
begin
  if adodsMaster.State in [dsInsert, dsEdit] then
  begin
    adodsMasterPrecio.Value := adodsMasterPrecioMoneda.Value * adodsMasterTipoCambio.Value;
    adodsMasterImpuesto.Value := adodsMasterPrecio.Value * (_IMPUESTOS_IVA/100);
    adodsMasterPrecioTotal.Value := adodsMasterPrecio.Value + adodsMasterImpuesto.Value;
    adodsmASTEREnganche.Value := adodsMasterPrecioTotal.Value * (adodsMasterEnganchePorcentaje.Value/100);
    adodsMasterComision.Value := (adodsMasterPrecioTotal.Value-adodsMasterEnganche.Value)*(adodsMasterComisionPorcentaje.Value/100);
    adodsMasterComisionImpuesto.Value := adodsMasterComision.Value * (_IMPUESTOS_IVA/100);
    adodsMasterGastosImpuestos.Value := adodsMasterGastos.Value * (_IMPUESTOS_IVA/100);
    adodsMasterDepositos.Value := adodsMasterPagoMensual.Value * adodsMasterDespositosNumero.Value;
    adodsMasterPagoIncial.Value := (adodsMasterEnganche.Value+adodsMasterComision.Value+adodsMasterComisionImpuesto.Value+
    adodsMasterGastos.Value+adodsMasterGastosImpuestos.Value+adodsMasterDepositos.Value);
    adodsMasterOpcionCompra.Value := adodsMasterPrecioTotal.Value * (adodsMasterOpcionCompraPorcentaje.Value/100);
    adodsMasterValorResidual.Value := adodsMasterPrecioTotal.Value * (adodsMasterValorResidualPorcentaje.Value/100);
    adodsMasterMontoFinanciar.Value:= adodsMasterPrecioTotal.Value-adodsMasterEnganche.Value;
    adodsMasterPagoMensual.Value := dmAmortizaciones.Pago(adodsMasterTasaAnual.Value,
    adodsMasterPlazo.Value, adodsMasterMontoFinanciar.AsExtended,
    adodsMasterValorResidual.AsExtended) + adodsMasterImpactoISR.AsExtended;
  end;
end;

procedure TdmCotizaciones.CalcularImportesCredito;
begin
  if adodsCreditos.State in [dsInsert, dsEdit] then
  begin
    adodsCreditosPagoMensual.Value := dmAmortizaciones.Pago(adodsCreditosTasaAnual.Value,
    adodsCreditosPlazo.Value, adodsCreditosMontoFinanciar.AsExtended,
    adodsCreditosValorResidual.AsExtended) + adodsCreditosImpactoISR.AsExtended;
  end;
end;

function TdmCotizaciones.CambiarCotizacionesEstatus: Boolean;
begin
  Result:= False;
  if IdCotizacion <> 0 then
  begin
    if MessageDlg(strUpdateEstatus, mtConfirmation, mbYesNo, 0) = mrYes then
    begin
      ScreenCursorProc(crSQLWait);
      try
        adospUpdCotizacionesEstatus.Parameters.ParamByName('@IdCotizacion').Value:= IdCotizacion;
        case Estatus of
          aeAbierto: adospUpdCotizacionesEstatus.Parameters.ParamByName('@IdCotizacionEstatus').Value:= Ord(aeCerrado);
          aeCerrado: adospUpdCotizacionesEstatus.Parameters.ParamByName('@IdCotizacionEstatus').Value:= Ord(aeAbierto);
        end;
        adospUpdCotizacionesEstatus.ExecProc;
      finally
        ScreenCursorProc(crDefault);
      end;
      Result:= True;
    end;
  end;
end;

procedure TdmCotizaciones.DataModuleCreate(Sender: TObject);
begin
  inherited;
  PaymentTime := ptEndOfPeriod;
  gGridForm:= TfrmCotizaciones.Create(Self);
  gGridForm.DataSet:= adodsMaster;
  TfrmCotizaciones(gGridForm).actAmortizaciones := actAmortizaciones;
  TfrmCotizaciones(gGridForm).actCambiarEstatus := actCambiarEstatus;
//  if adodsCreditos.CommandText <> EmptyStr then adodsCreditos.Open;
//  gFormDeatil1:= TfrmCotizacionesCreditos.Create(Self);
//  gFormDeatil1.DataSet:= adodsCreditos;
//  TfrmCotizacionesCreditos(gFormDeatil1).actAmortizaciones := actAmortizaciones;
//  Calculo de las amortizaciones del modulo
  dmAmortizaciones := TdmAmortizaciones.Create(Self);
  dmAmortizaciones.PaymentTime := PaymentTime;
end;

procedure TdmCotizaciones.DataModuleDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(dmAmortizaciones);
end;

function TdmCotizaciones.GetEstatus: TCotizacionEstatus;
begin
  if adodsMaster.Active then
    Result := TCotizacionEstatus(adodsMasterIdCotizacionEstatus.Value)
  else
    Result:= aeNone;
end;

function TdmCotizaciones.GetIdCotizacion: integer;
begin
  if adodsMaster.Active then
    Result := adodsMasterIdCotizacion.Value
  else
    Result := 0;
end;

function TdmCotizaciones.GetTipoContrato: TCTipoContrato;
begin
  if adodsMaster.Active then
    Result := TCTipoContrato(adodsMasterIdContratoTipo.Value)
  else
    Result:= tcNone;
end;

procedure TdmCotizaciones.SetPaymentTime(const Value: TPaymentTime);
begin
  FPaymentTime := Value;
end;

end.
