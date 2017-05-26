unit CotizacionesDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB, System.Math, System.DateUtils, Vcl.Dialogs, System.UITypes,
  ProcesosType, AmortizacionesDM;

resourcestring
  strUpdateEstatus = '¿Desea modificar el estatus de la cotización?';
  strNotArrendamientoPuro = 'Solo se permite el cálculo para el tipo de contrato de Arrendamiento Puro.';

type
  TdmCotizaciones = class(T_dmStandar)
    adodsMasterIdCotizacion: TAutoIncField;
    adodsMasterIdPersona: TIntegerField;
    adodsMasterIdContratoTipo: TIntegerField;
    adodsMasterIdCotizacionEstatus: TIntegerField;
    adodsMasterIdUsuario: TIntegerField;
    adodsMasterIdentificador: TStringField;
    adodsMasterDescripcion: TStringField;
    adodsMasterElaboracion: TDateTimeField;
    adodsMasterVigencia: TDateTimeField;
    adodsPersonas: TADODataSet;
    adodsContratosTipos: TADODataSet;
    adodsMonedas: TADODataSet;
    adodsUsuario: TADODataSet;
    adodsMasterCliente: TStringField;
    adodsMasterTipoContrato: TStringField;
    daMaster: TDataSource;
    adodsCotizacionesEstatus: TADODataSet;
    adodsMasterUsuario: TStringField;
    actAmortizaciones: TAction;
    actCambiarEstatus: TAction;
    adospUpdCotizacionesEstatus: TADOStoredProc;
    actAmortizacionesC: TAction;
    actGetTipoCambio: TAction;
    adodsDetalle: TADODataSet;
    adodsDetalleIdCotizacionDetalle: TAutoIncField;
    adodsDetalleIdCotizacion: TIntegerField;
    adodsDetalleIdMoneda: TIntegerField;
    adodsDetalleIdCotizacionDetalleEstatus: TIntegerField;
    adodsDetalleIdUsuario: TIntegerField;
    adodsDetallePrecioMoneda: TFMTBCDField;
    adodsDetalleMoneda: TStringField;
    adodsDetalleTipoCambio: TFMTBCDField;
    adodsDetallePrecio: TFMTBCDField;
    adodsDetalleImpuesto: TFMTBCDField;
    adodsDetallePrecioTotal: TFMTBCDField;
    adodsDetalleEnganchePorcentaje: TFMTBCDField;
    adodsDetalleEnganche: TFMTBCDField;
    adodsDetalleComisionPorcentaje: TBCDField;
    adodsDetalleComision: TFMTBCDField;
    adodsDetalleComisionImpuesto: TFMTBCDField;
    adodsDetalleGastos: TFMTBCDField;
    adodsDetalleGastosImpuestos: TFMTBCDField;
    adodsDetalleDespositosNumero: TIntegerField;
    adodsDetalleDepositos: TFMTBCDField;
    adodsDetallePagoIncial: TFMTBCDField;
    adodsDetalleOpcionCompraPorcentaje: TFMTBCDField;
    adodsDetalleOpcionCompra: TFMTBCDField;
    adodsDetalleValorResidualPorcentaje: TFMTBCDField;
    adodsDetalleValorResidual: TFMTBCDField;
    adodsDetalleMontoFinanciar: TFMTBCDField;
    adodsDetalleTasaAnual: TBCDField;
    adodsDetallePlazo: TIntegerField;
    adodsDetallePagoMensual: TFMTBCDField;
    adodsDetalleImpactoISR: TFMTBCDField;
    adodsDetalleUsuario: TStringField;
    adodsUsuariosD: TADODataSet;
    adodsCotizacionesDetalleEstatus: TADODataSet;
    adodsDetalleEstatus: TStringField;
    adodsDetalleRegistro: TDateTimeField;
    actGetImpactoISR: TAction;
    adodsDetalleFechaVencimiento: TDateTimeField;
    adodsDetallePorcentajeDepreciacion: TBCDField;
    adodsDetallePorcentajeISR: TBCDField;
    adodsDetallePorcentajeKE: TBCDField;
    adodsDetalleTIR: TBCDField;
    adodsCotizacionLkp: TADODataSet;
    adodsDetalleDescripcion: TStringField;
    adodsCotizacionesCausas: TADODataSet;
    adodsMasterIdCotizacionCausa: TIntegerField;
    dsCotizacionesEstatus: TDataSource;
    adodsMasterEstatus: TStringField;
    adodsMasterCausa: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure adodsMasterNewRecord(DataSet: TDataSet);
    procedure actAmortizacionesExecute(Sender: TObject);
    procedure actCambiarEstatusExecute(Sender: TObject);
    procedure actCambiarEstatusUpdate(Sender: TObject);
    procedure actGetTipoCambioExecute(Sender: TObject);
    procedure adodsDetalleNewRecord(DataSet: TDataSet);
    procedure adodsDetallePrecioMonedaChange(Sender: TField);
    procedure daMasterDataChange(Sender: TObject; Field: TField);
    procedure actGetImpactoISRExecute(Sender: TObject);
    procedure adodsMasterIdCotizacionEstatusChange(Sender: TField);
  private
    { Private declarations }
    dmAmortizaciones: TdmAmortizaciones;
    FPaymentTime: TPaymentTime;
    procedure SetPaymentTime(const Value: TPaymentTime);
    procedure CalcularImportesDetalles;
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

uses _ConectionDmod, _Utils, CotizacionesForm, CotizacionesDetalleForm,
ConfiguracionDM, ImpactoISRDM;

{$R *.dfm}

procedure TdmCotizaciones.actAmortizacionesExecute(Sender: TObject);
var
  Amortizaciones: TdmAmortizaciones;
begin
  inherited;
  Amortizaciones := TdmAmortizaciones.Create(Self);
  try
    Amortizaciones.TipoContrato:= TipoContrato;
    Amortizaciones.Execute(adodsDetalleFechaVencimiento.Value,
    adodsDetalleFechaVencimiento.Value, adodsDetalleFechaVencimiento.Value,
    adodsDetalleTasaAnual.Value, adodsDetallePlazo.Value,
    adodsDetalleMontoFinanciar.AsExtended,
    adodsDetalleValorResidual.AsExtended,
    adodsDetalleImpactoISR.AsExtended);
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

procedure TdmCotizaciones.actGetImpactoISRExecute(Sender: TObject);
var
  dmImpactoISR: TdmImpactoISR;
  ImpactoISR: Extended;
begin
  inherited;
  if adodsDetalle.State in [dsEdit,dsInsert] then
  begin
//    if (TipoContrato = tcArrendamientoPuro) then
//    begin
      dmImpactoISR := TdmImpactoISR.Create(Self);
      try
  //      Amortizaciones.TipoContrato:= TipoContrato;
        dmImpactoISR.PorcentajeDepreciacion := adodsDetallePorcentajeDepreciacion.Value;
        dmImpactoISR.PorcentajeISR := adodsDetallePorcentajeISR.Value;
        dmImpactoISR.PorcentajeKe := adodsDetallePorcentajeKE.Value;
        if dmImpactoISR.Execute(adodsDetalleFechaVencimiento.Value,
        adodsDetalleTasaAnual.Value,
        adodsDetallePlazo.Value,
        adodsDetallePrecioTotal.AsExtended,
        adodsDetalleEnganche.AsExtended,
        adodsDetalleMontoFinanciar.AsExtended,
        adodsDetalleValorResidual.AsExtended, ImpactoISR) then
          adodsDetalleImpactoISR.Value := ImpactoISR;
      finally
        dmImpactoISR.Free;
      end;
//    end
//    else
//      MessageDlg(strNotArrendamientoPuro, mtInformation, [mbOK], 0);
  end;
end;

procedure TdmCotizaciones.actGetTipoCambioExecute(Sender: TObject);
begin
  inherited;
  if adodsDetalle.State in [dsEdit,dsInsert] then
  begin
    adodsDetalleTipoCambio.Value := dmConfiguracion.GetTipoCambio(adodsDetalleIdMoneda.Value)
  end;
end;

procedure TdmCotizaciones.adodsDetalleNewRecord(DataSet: TDataSet);
begin
  inherited;
  adodsDetalleIdCotizacionDetalleEstatus.Value := 1; // Activo
  adodsDetalleIdUsuario.Value := _dmConection.IdUsuario;
  adodsDetalleRegistro.Value := _DmConection.LaFechaActual;//Date;  //May 26/17
  adodsDetalleIdMoneda.Value := _MONEDAS_ID_DOLAR_USA;
  adodsDetalleTipoCambio.Value := 19;
  adodsDetalleEnganchePorcentaje.Value := 0;
  adodsDetalleComisionPorcentaje.Value := 0;
  adodsDetalleDespositosNumero.Value := 2;
  adodsDetalleOpcionCompraPorcentaje.Value := 0;
  adodsDetalleValorResidualPorcentaje.Value := 0;
  adodsDetalleFechaVencimiento.Value := _DmConection.LaFechaActual;//Date;  //May 26/17
  adodsDetallePorcentajeDepreciacion.Value := _PORCENTAJE_DEPRECIACION;
  adodsDetallePorcentajeISR.Value := _PORCENTAJE_ISR;
  adodsDetallePorcentajeKE.Value := _PORCENTAJE_KE;
end;

procedure TdmCotizaciones.adodsDetallePrecioMonedaChange(Sender: TField);
begin
  inherited;
  CalcularImportesDetalles;
end;

procedure TdmCotizaciones.adodsMasterIdCotizacionEstatusChange(Sender: TField);
begin
  inherited;
  adodsMasterIdCotizacionCausa.Clear;
end;

procedure TdmCotizaciones.adodsMasterNewRecord(DataSet: TDataSet);
begin
  inherited;
  adodsMasterIdCotizacionEstatus.Value := 1; // Activo
  adodsmasterIdUsuario.Value := _dmConection.IdUsuario;
  adodsMasterElaboracion.Value :=  _DmConection.LaFechaActual;//Date;  //May 26/17
  adodsMasterVigencia.Value := IncDay(Date, _CONFIGURACION_DIAS_VIGENCIA);
  end;

procedure TdmCotizaciones.CalcularImportesDetalles;
begin
  if adodsDetalle.State in [dsInsert, dsEdit] then
  begin
    adodsDetallePrecio.Value := adodsDetallePrecioMoneda.Value * adodsDetalleTipoCambio.Value;
    adodsDetalleImpuesto.Value := adodsDetallePrecio.Value * (_IMPUESTOS_IVA/100);
    adodsDetallePrecioTotal.Value := adodsDetallePrecio.Value + adodsDetalleImpuesto.Value;
    adodsDetalleEnganche.Value := adodsDetallePrecioTotal.Value * (adodsDetalleEnganchePorcentaje.Value/100);
    adodsDetalleComision.Value := (adodsDetallePrecioTotal.Value-adodsDetalleEnganche.Value)*(adodsDetalleComisionPorcentaje.Value/100);
    adodsDetalleComisionImpuesto.Value := adodsDetalleComision.Value * (_IMPUESTOS_IVA/100);
    adodsDetalleGastosImpuestos.Value := adodsDetalleGastos.Value * (_IMPUESTOS_IVA/100);
    adodsDetalleDepositos.Value := adodsDetallePagoMensual.Value * adodsDetalleDespositosNumero.Value;
    adodsDetallePagoIncial.Value := (adodsDetalleEnganche.Value+adodsDetalleComision.Value+adodsDetalleComisionImpuesto.Value+
    adodsDetalleGastos.Value+adodsDetalleGastosImpuestos.Value+adodsDetalleDepositos.Value);
    adodsDetalleOpcionCompra.Value := adodsDetallePrecioTotal.Value * (adodsDetalleOpcionCompraPorcentaje.Value/100);
    adodsDetalleValorResidual.Value := adodsDetallePrecioTotal.Value * (adodsDetalleValorResidualPorcentaje.Value/100);
    adodsDetalleMontoFinanciar.Value:= adodsDetallePrecioTotal.Value-adodsDetalleEnganche.Value;
    // Calcular pago mensual
    dmAmortizaciones.TipoContrato:= TipoContrato;
    adodsDetallePagoMensual.Value := dmAmortizaciones.Pago(adodsDetalleTasaAnual.Value,
    adodsDetallePlazo.Value, adodsDetalleMontoFinanciar.AsExtended,
    adodsDetalleValorResidual.AsExtended) + adodsDetalleImpactoISR.AsExtended;
    // Calcular TIR
    adodsDetalleTIR.Value := dmAmortizaciones.GetTIR(
    adodsDetalleFechaVencimiento.Value,
    adodsDetallePrecioTotal.AsExtended,
    adodsDetalleEnganche.AsExtended,
    adodsDetalleComision.AsExtended+adodsDetalleComisionImpuesto.AsExtended,
    adodsDetalleDepositos.AsExtended,
    adodsDetalleOpcionCompra.AsExtended,
    adodsDetalleTasaAnual.Value,
    adodsDetalleDespositosNumero.Value,
    adodsDetallePlazo.Value,
    adodsDetalleMontoFinanciar.AsExtended,
    adodsDetalleValorResidual.AsExtended,
    adodsDetalleImpactoISR.AsExtended);
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

procedure TdmCotizaciones.daMasterDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if adodsMaster.State in [dsBrowse] then
    if Assigned(gFormDeatil1) then
      gFormDeatil1.ReadOnlyGrid := (adodsMasterIdCotizacionEstatus.Value <> 1);
end;

procedure TdmCotizaciones.DataModuleCreate(Sender: TObject);
begin
  inherited;
  PaymentTime := ptEndOfPeriod;
  gGridForm:= TfrmCotizaciones.Create(Self);
  gGridForm.DataSet:= adodsMaster;
  TfrmCotizaciones(gGridForm).actCambiarEstatus := actCambiarEstatus;
  TfrmCotizaciones(gGridForm).DataSetEstatus := adodsCotizacionesEstatus;
  TfrmCotizaciones(gGridForm).DataSetCausa := adodsCotizacionesCausas;
  adodsCotizacionesEstatus.Open;
  adodsCotizacionesCausas.Open;
  if adodsDetalle.CommandText <> EmptyStr then adodsDetalle.Open;
  gFormDeatil1:= TfrmCotizacionesDetalle.Create(Self);
  gFormDeatil1.DataSet:= adodsDetalle;
  TfrmCotizacionesDetalle(gFormDeatil1).actAmortizaciones := actAmortizaciones;
  TfrmCotizacionesDetalle(gFormDeatil1).actGetTipoCambio := actGetTipoCambio;
  TfrmCotizacionesDetalle(gFormDeatil1).actGetImpactoISR := actGetImpactoISR;
//  Calculo de las amortizaciones del modulo
  dmAmortizaciones := TdmAmortizaciones.Create(Self);
  dmAmortizaciones.PaymentTime := PaymentTime;
end;

procedure TdmCotizaciones.DataModuleDestroy(Sender: TObject);
begin
  inherited;
  adodsCotizacionesCausas.Close;
  adodsCotizacionesEstatus.Close;
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
