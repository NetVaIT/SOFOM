unit CotizacionesDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB, System.Math, System.DateUtils,
  ProcesosType, AmortizacionesDM;

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
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure adodsMasterNewRecord(DataSet: TDataSet);
    procedure actProductosExecute(Sender: TObject);
    procedure adodsMasterPrecioMonedaChange(Sender: TField);
  private
    { Private declarations }
    dmAmortizaciones: TdmAmortizaciones;
    FPaymentTime: TPaymentTime;
    procedure SetPaymentTime(const Value: TPaymentTime);
    procedure CalcularImportes;
  public
    { Public declarations }
    property PaymentTime: TPaymentTime read FPaymentTime write SetPaymentTime;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses CotizacionesForm, _ConectionDmod;

{$R *.dfm}

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

procedure TdmCotizaciones.DataModuleCreate(Sender: TObject);
begin
  inherited;
  PaymentTime := ptEndOfPeriod;
  gGridForm:= TfrmCotizaciones.Create(Self);
  gGridForm.DataSet:= adodsMaster;
//  if adodsAnexos.CommandText <> EmptyStr then adodsAnexos.Open;
//  gFormDeatil1:= TfrmAnexos.Create(Self);
//  gFormDeatil1.ApplyBestFit := False;
//  gFormDeatil1.DataSet:= adodsAnexos;
//  TfrmAnexos(gFormDeatil1).actProductos := actProductos;
  dmAmortizaciones := TdmAmortizaciones.Create(Self);
  dmAmortizaciones.PaymentTime := PaymentTime;
end;

procedure TdmCotizaciones.DataModuleDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(dmAmortizaciones);
end;

procedure TdmCotizaciones.SetPaymentTime(const Value: TPaymentTime);
begin
  FPaymentTime := Value;
end;

end.
