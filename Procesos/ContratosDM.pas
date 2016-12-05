unit ContratosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB, System.Math, AmortizacionesDM;

const
  cIVA = 16.0;

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
    adodsAnexosEnganchePorcentaje: TBCDField;
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
    adodsAnexosFechaInicial: TDateTimeField;
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
    adodsAmortizacionesFecha: TDateTimeField;
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
    adodsCreditosFechaInicial: TDateTimeField;
    adodsCreditosFechaCorte: TDateTimeField;
    dsCreditos: TDataSource;
    adodsCreditoEstatus: TADODataSet;
    adodsUsuario: TADODataSet;
    adodsCreditosEstatus: TStringField;
    adodsCreditosUsuario: TStringField;
    adodsAmortizacionesIdAnexoCredito: TIntegerField;
    adodsAnexosFechaCorte: TDateTimeField;
    procedure DataModuleCreate(Sender: TObject);
    procedure actProductosExecute(Sender: TObject);
    procedure adodsAnexosPrecioMonedaChange(Sender: TField);
    procedure dsMasterDataChange(Sender: TObject; Field: TField);
    procedure adodsAnexosNewRecord(DataSet: TDataSet);
    procedure adodsCreditosNewRecord(DataSet: TDataSet);
    procedure adodsCreditosMontoFiananciarChange(Sender: TField);
    procedure DataModuleDestroy(Sender: TObject);
    procedure adodsCreditosAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
    FPaymentTime: TPaymentTime;
    dmAmortizaciones: TdmAmortizaciones;
    procedure CalcularImportes;
    procedure CalcularImportesCredito;
    procedure SetPaymentTime(const Value: TPaymentTime);
    property PaymentTime: TPaymentTime read FPaymentTime write SetPaymentTime;
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses ContratosForm, AnexosForm, AnexosProductosForm, AnexosAmortizacionesForm,
  AnexosCreditosForm, _ConectionDmod;

{$R *.dfm}

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

procedure TdmContratos.adodsAnexosNewRecord(DataSet: TDataSet);
begin
  inherited;
  adodsAnexosIdAnexoEstatus.Value := 1; // Activo
//  adodsAnexosIdMoneda.Value :=
  adodsAnexosFecha.Value := Date;
  adodsAnexosTipoCambio.Value := 19;
  adodsAnexosEnganchePorcentaje.Value := 0;
  adodsAnexosComisionPorcentaje.Value := 0;
  adodsAnexosDespositosNumero.Value := 2;
end;

procedure TdmContratos.adodsAnexosPrecioMonedaChange(Sender: TField);
begin
  inherited;
  CalcularImportes
end;

procedure TdmContratos.adodsCreditosAfterPost(DataSet: TDataSet);
begin
  inherited;
  if dmAmortizaciones.GenAnexosAmortizaciones(adodsCreditosIdAnexoCredito.Value,
  adodsCreditosFechaInicial.Value, adodsCreditosTasaAnual.Value, adodsCreditosPlazo.Value,
  adodsCreditosMontoFiananciar.AsExtended, 0) then
  begin
    adodsAmortizaciones.Close;
    adodsAmortizaciones.Open;
  end;
end;

procedure TdmContratos.adodsCreditosMontoFiananciarChange(Sender: TField);
begin
  inherited;
  CalcularImportesCredito
end;

procedure TdmContratos.adodsCreditosNewRecord(DataSet: TDataSet);
begin
  inherited;
  adodsCreditosIdAnexoCreditoEstatus.Value:= 1;
  adodsCreditosIdUsuario.Value := _dmConection.IdUsuario;
  adodsCreditosFecha.Value := Now;
  adodsCreditosMontoFiananciar.Value := adodsAnexosMontoFinanciar.Value;
  adodsCreditosTasaAnual.Value := adodsAnexosTasaAnual.Value;
  adodsCreditosPlazo.Value := adodsAnexosPlazo.Value;
  adodsCreditosFechaInicial.Value := adodsAnexosFechaInicial.Value;
  adodsCreditosFechaCorte.Value := adodsAnexosFechaCorte.Value;
end;

procedure TdmContratos.CalcularImportes;
var
//  Tasa: Extended;
  ValorFuturo: Extended;
begin
  if adodsAnexos.State in [dsInsert, dsEdit] then
  begin
    adodsAnexosPrecio.Value := adodsAnexosPrecioMoneda.Value * adodsAnexosTipoCambio.Value;
    adodsAnexosImpuesto.Value := adodsAnexosPrecio.Value * (cIVA/100);
    adodsAnexosPrecioTotal.Value := adodsAnexosPrecio.Value + adodsAnexosImpuesto.Value;
    adodsAnexosEnganche.Value := adodsAnexosPrecioTotal.Value * (adodsAnexosEnganchePorcentaje.Value/100);
    adodsAnexosComision.Value := (adodsAnexosPrecioTotal.Value-adodsAnexosEnganche.Value)*(adodsAnexosComisionPorcentaje.Value/100);
    adodsAnexosComisionImpuesto.Value := adodsAnexosComision.Value * (cIVA/100);
    adodsAnexosGastosImpuestos.Value := adodsAnexosGastos.Value * (cIVA/100);

    adodsAnexosDepositos.Value := adodsAnexosPagoMensual.Value * adodsAnexosDespositosNumero.Value;
    adodsAnexosPagoIncial.Value := (adodsAnexosEnganche.Value+adodsAnexosComision.Value+adodsAnexosComisionImpuesto.Value+
    adodsAnexosGastos.Value+adodsAnexosGastosImpuestos.Value+adodsAnexosDepositos.Value);
    adodsAnexosMontoFinanciar.Value:= adodsAnexosPrecioTotal.Value-adodsAnexosEnganche.Value;
//    Tasa := (adodsAnexosTasaAnual.Value / 100) / 12;
    ValorFuturo:= 0;
    adodsAnexosPagoMensual.Value := dmAmortizaciones.Pago(adodsAnexosTasaAnual.Value,
    adodsAnexosPlazo.Value, adodsAnexosMontoFinanciar.AsExtended, ValorFuturo);
//    adodsAnexosPagoMensual.Value := -1*Payment(Tasa, adodsAnexosPlazo.Value, adodsAnexosMontoFinanciar.AsExtended, ValorFuturo, PaymentTime);
  end;
end;

procedure TdmContratos.CalcularImportesCredito;
var
  ValorFuturo: Extended;
begin
  if adodsCreditos.State in [dsInsert, dsEdit] then
  begin
    ValorFuturo:= 0;
    adodsCreditosPagoMensual.Value := dmAmortizaciones.Pago(adodsCreditosTasaAnual.Value,
    adodsCreditosPlazo.Value, adodsCreditosMontoFiananciar.AsExtended, ValorFuturo);
  end;
end;

procedure TdmContratos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  PaymentTime := ptEndOfPeriod;
  gGridForm:= TfrmContratos.Create(Self);
  gGridForm.DataSet:= adodsMaster;
  if adodsAnexos.CommandText <> EmptyStr then adodsAnexos.Open;
  gFormDeatil1:= TfrmAnexos.Create(Self);
  gFormDeatil1.ApplyBestFit := False;
  gFormDeatil1.DataSet:= adodsAnexos;
  TfrmAnexos(gFormDeatil1).actProductos := actProductos;
  if adodsCreditos.CommandText <> EmptyStr then adodsCreditos.Open;
  gFormDeatil2:= TfrmAnexosCreditos.Create(Self);
  gFormDeatil2.ApplyBestFit := False;
  gFormDeatil2.DataSet:= adodsCreditos;
  if adodsAmortizaciones.CommandText <> EmptyStr then adodsAmortizaciones.Open;
  gFormDeatil3:= TfrmAnexosAmortizaciones.Create(Self);
  gFormDeatil3.ApplyBestFit := False;
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

procedure TdmContratos.dsMasterDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if adodsMasterIdContratoTipo.Value = 2 then
  begin
    TfrmAnexos(gFormDeatil1).GenerarImpuestoInteres:= True;
    dmAmortizaciones.GenerarImpuestoInteres:= True;
  end
  else
  begin
    TfrmAnexos(gFormDeatil1).GenerarImpuestoInteres:= False;
    dmAmortizaciones.GenerarImpuestoInteres:= False;
  end;
end;

procedure TdmContratos.SetPaymentTime(const Value: TPaymentTime);
begin
  FPaymentTime := Value;
end;

end.
