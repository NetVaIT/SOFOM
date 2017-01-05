unit AmortizacionesDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB, System.Math, dxmdaset, ProcesosType;

type
  TdmAmortizaciones = class(T_dmStandar)
    dxmSegmentos: TdxMemData;
    dxmAmortizaciones: TdxMemData;
    dxmSegmentosSegmento: TIntegerField;
    dxmSegmentosPagoMensual: TFloatField;
    dxmAmortizacionesPeriodo: TIntegerField;
    dxmAmortizacionesFecha: TDateTimeField;
    dxmAmortizacionesSaldoInicial: TFloatField;
    dxmAmortizacionesPago: TFloatField;
    dxmAmortizacionesCapital: TFloatField;
    dxmAmortizacionesCapitalImpuesto: TFloatField;
    dxmAmortizacionesCapitalTotal: TFloatField;
    dxmAmortizacionesInteres: TFloatField;
    dxmAmortizacionesInteresImpuesto: TFloatField;
    dxmAmortizacionesInteresTotal: TFloatField;
    dxmAmortizacionesSaldoFinal: TFloatField;
    dxmAmortizacionesPagoTotal: TFloatField;
    dxmAmortizacionesSegmento: TIntegerField;
    actCalcular: TAction;
    dxmSegmentosValorPresente: TFloatField;
    dxmSegmentosValorFuturo: TFloatField;
    dxmAmortizacionesTasaAnual: TFloatField;
    dxmSegmentosTasaAnual: TFloatField;
    dxmSegmentosPlazoIni: TIntegerField;
    dxmSegmentosPlazoFin: TIntegerField;
    adocInsAnexosAmrtizaciones: TADOCommand;
    adoqAnexosAmortizaciones: TADOQuery;
    adoqAnexosAmortizacionesTotal: TIntegerField;
    dxmAmortizacionesImpactoISR: TFloatField;
    procedure DataModuleCreate(Sender: TObject);
    procedure actCalcularExecute(Sender: TObject);
  private
    { Private declarations }
    FPaymentTime: TPaymentTime;
    FTipoContrato: TCTipoContrato;
    procedure SetPaymentTime(const Value: TPaymentTime);
    procedure SetTipoContrato(const Value: TCTipoContrato);
//    procedure GenSegmentos(NPeriodo: Integer; ValorPresente,
//      ValorFuturo: Extended; PaymentTime: TPaymentTime);
    procedure GenAmortizaciones(FechaInicial: TDateTime; TasaAnual: Extended;
      NPeriodo: Integer; ValorPresente, ValorFuturo, ImpactoISR: Extended;
      PaymentTime: TPaymentTime);
    procedure GenAmortizacionesSegmento(FechaInicial: TDateTime; ValorPresente,
      ValorFuturo: Extended; PaymentTime: TPaymentTime);
    procedure IniSegmentos(TasaAnual: Extended; Plazo: Integer; ValorPresente,
      ValorFuturo: Extended);
  public
    { Public declarations }
    property PaymentTime: TPaymentTime read FPaymentTime write SetPaymentTime;
    property TipoContrato: TCTipoContrato read FTipoContrato write SetTipoContrato;
    procedure Execute(FechaInicial: TDateTime; TasaAnual: Extended;
      Plazo: Integer; ValorPresente, ValorFuturo, ImpactoISR: Extended);
    function Pago(TasaAnual: Extended; Plazo: Integer; ValorPresente,ValorFuturo: Extended): Extended;
    function GenAnexosAmortizaciones(IdAnexoCredito: Integer;
      FechaInicial: TDateTime; TasaAnual: Extended; NPeriodo: Integer;
      ValorPresente, ValorFuturo, ImpactoISR: Extended): Boolean;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses SegmentosForm, AmortizacionesForm;

{$R *.dfm}

procedure TdmAmortizaciones.actCalcularExecute(Sender: TObject);
begin
  inherited;
  GenAmortizaciones(TfrmSegmentos(gGridForm).FechaInicial, TfrmSegmentos(gGridForm).TasaAnual,
  TfrmSegmentos(gGridForm).Plazo, TfrmSegmentos(gGridForm).Monto,
  TfrmSegmentos(gGridForm).Futuro, TfrmSegmentos(gGridForm).ImpactoISR, PaymentTime);
//  GenAmortizacionesSegmento(TfrmSegmentos(gGridForm).FechaInicial,TfrmSegmentos(gGridForm).Monto, 0, PaymentTime);
end;

procedure TdmAmortizaciones.DataModuleCreate(Sender: TObject);
begin
  inherited;
  PaymentTime := ptEndOfPeriod;
  gGridForm:= TfrmSegmentos.Create(Self);
  gGridForm.DataSet:= dxmAmortizaciones;
  gGridForm.ReadOnlyGrid := True;
//  gGridForm.DataSet:= dxmSegmentos;
  TfrmSegmentos(gGridForm).actCalcular := actCalcular;
  TfrmSegmentos(gGridForm).Monto := 0;
  TfrmSegmentos(gGridForm).TasaAnual := 0;
  TfrmSegmentos(gGridForm).Plazo := 1;
  TfrmSegmentos(gGridForm).FechaInicial := 0;
//  IniSegmentos(0, 1, 0, 0);
//  gFormDeatil1:= TfrmAmortizaciones.Create(Self);
//  gFormDeatil1.DataSet := dxmAmortizaciones;
end;

procedure TdmAmortizaciones.Execute(FechaInicial: TDateTime;
  TasaAnual: Extended; Plazo: Integer; ValorPresente, ValorFuturo, ImpactoISR: Extended);
begin
  TfrmSegmentos(gGridForm).Monto := ValorPresente;
  TfrmSegmentos(gGridForm).TasaAnual := TasaAnual;
  TfrmSegmentos(gGridForm).Plazo := Plazo;
  TfrmSegmentos(gGridForm).Futuro := ValorFuturo;
  TfrmSegmentos(gGridForm).ImpactoISR := ImpactoISR;
  TfrmSegmentos(gGridForm).FechaInicial := FechaInicial;
  GenAmortizaciones(FechaInicial, TasaAnual, Plazo, ValorPresente, ValorFuturo, ImpactoISR, PaymentTime);
//  IniSegmentos(TasaAnual, Plazo, ValorPresente, ValorFuturo);
//  GenAmortizacionesSegmento(FechaInicial, ValorPresente, ValorFuturo, PaymentTime);
end;

procedure TdmAmortizaciones.GenAmortizaciones(FechaInicial: TDateTime; TasaAnual: Extended;
  NPeriodo: Integer; ValorPresente,ValorFuturo, ImpactoISR: Extended; PaymentTime: TPaymentTime);
var
  Periodo: Integer;
  Tasa: Extended;
  Pago: Extended;
  Capital: Extended;
  CapitalSinImpuesto: Extended;
  Interes: Extended;
  InteresImpuesto: Extended;
  Futuro: Extended;
  SaldoInicial: Extended;
  SaldoFinal: Extended;
begin
//  if (Rate <= -1.0) or (Period < 1) or (Period > NPeriods) then ArgError('PeriodPayment');
  if NPeriodo < 1 then exit;
  dxmAmortizaciones.Close;
  dxmAmortizaciones.Open;
  SaldoInicial:= ValorPresente;
  Futuro := -1*ValorFuturo;
  for Periodo := 1 to NPeriodo do
  begin
    Tasa := (TasaAnual / 100) / 12;
    Capital := -1*PeriodPayment(Tasa, Periodo, NPeriodo, ValorPresente, Futuro, PaymentTime);
    CapitalSinImpuesto := Capital / (1+(_IMPUESTOS_IVA/100));
    Interes := -1*InterestPayment(Tasa, Periodo, NPeriodo, ValorPresente, Futuro, PaymentTime);
    Pago := Capital + Interes;
//    Pago := PeriodPayment(Tasa, Periodo, NPeriodo, ValorPresente, ValorFuturo, PaymentTime)*-1;
//    Capital := Pago / (1+(_IMPUESTOS_IVA/100));
//    Interes := InterestPayment(Tasa, Periodo, NPeriodo, ValorPresente, ValorFuturo, PaymentTime)*-1;
    case TipoContrato of
      tcNone: InteresImpuesto := 0;
      tcCreditoSimple: InteresImpuesto := Interes * (_IMPUESTOS_IVA/100);
      tcArrendamientoFinasnciero: InteresImpuesto := Interes * (_IMPUESTOS_IVA/100);
      tcArrendamientoPuro: InteresImpuesto := 0;
      else InteresImpuesto := 0;
    end;
    SaldoFinal := SaldoInicial - Capital;
    dxmAmortizaciones.Append;
    dxmAmortizacionesSegmento.Value := 0;
    dxmAmortizacionesFecha.Value := IncMonth(FechaInicial, Periodo);
    dxmAmortizacionesPeriodo.Value := Periodo;
    dxmAmortizacionesTasaAnual.Value := TasaAnual;
    dxmAmortizacionesSaldoInicial.Value := SaldoInicial;
    dxmAmortizacionesCapital.Value := CapitalSinImpuesto;
    dxmAmortizacionesCapitalImpuesto.Value := Capital - CapitalSinImpuesto;
    dxmAmortizacionesCapitalTotal.Value := Capital;
    dxmAmortizacionesInteres.Value := Interes;
    dxmAmortizacionesInteresImpuesto.Value := InteresImpuesto;
    dxmAmortizacionesInteresTotal.Value := Interes + InteresImpuesto;
    dxmAmortizacionesImpactoISR.Value := ImpactoISR;
    dxmAmortizacionesPago.Value := Pago;
    dxmAmortizacionesPagoTotal.Value := Pago + InteresImpuesto + ImpactoISR;
//    case TipoContrato of
//      tcNone: InteresImpuesto := 0;
//      tcCreditoSimple: dxmAmortizacionesPagoTotal.Value := Pago;
//      tcArrendamientoFinasnciero: dxmAmortizacionesPagoTotal.Value := Pago + InteresImpuesto;
//      tcArrendamientoPuro: dxmAmortizacionesPagoTotal.Value := Pago + ImpactoISR;
//    end;
    dxmAmortizacionesSaldoFinal.Value := SaldoFinal;
    dxmAmortizaciones.Post;
    SaldoInicial := SaldoFinal
  end;
  dxmAmortizaciones.First;
end;

procedure TdmAmortizaciones.GenAmortizacionesSegmento(FechaInicial: TDateTime;
  ValorPresente,ValorFuturo: Extended; PaymentTime: TPaymentTime);
var
  NPeriodo: Integer;
  NPeriodoSegmento: Integer;
  Periodo: Integer;
  PeriodoSegmento: Integer;
  Tasa: Extended;
  Pago: Extended;
  Capital: Extended;
  Interes: Extended;
  InteresImpuesto: Extended;
  SaldoInicial: Extended;
  SaldoFinal: Extended;
  TasaAnual: Double;
  SaldoInicialSegmento: Extended;
  function GetNPeriodo: Integer;
  begin
    dxmSegmentos.Last;
    Result := dxmSegmentosPlazoFin.Value;
  end;
begin
//  if (Rate <= -1.0) or (Period < 1) or (Period > NPeriods) then ArgError('PeriodPayment');
  NPeriodo := GetNPeriodo;
  if NPeriodo < 1 then exit;
  dxmAmortizaciones.Close;
  dxmAmortizaciones.Open;
  SaldoInicial:= ValorPresente;
  SaldoInicialSegmento:= ValorPresente;
  NPeriodoSegmento := NPeriodo;
  Pago:= 0;
  Interes:= 0;
  SaldoFinal := ValorFuturo;
  dxmSegmentos.First;
  while not dxmSegmentos.Eof do
  begin
    PeriodoSegmento:= 1;
    for Periodo := dxmSegmentosPlazoIni.Value to dxmSegmentosPlazoFin.Value do
    begin
      TasaAnual:= dxmSegmentosTasaAnual.Value;
      Tasa := (TasaAnual / 100) / 12;
      Pago := PeriodPayment(Tasa, PeriodoSegmento, NPeriodoSegmento, SaldoInicialSegmento, ValorFuturo, PaymentTime)*-1;
      Capital := Pago / (1+(_IMPUESTOS_IVA/100));
      Interes := InterestPayment(Tasa, PeriodoSegmento, NPeriodoSegmento, SaldoInicialSegmento, ValorFuturo, PaymentTime)*-1;
    case TipoContrato of
      tcNone: InteresImpuesto := 0;
      tcCreditoSimple: InteresImpuesto := 0;
      tcArrendamientoFinasnciero: InteresImpuesto := Interes * (_IMPUESTOS_IVA/100);
      tcArrendamientoPuro: InteresImpuesto := 0;
      else InteresImpuesto := 0;
    end;
      SaldoFinal := SaldoInicial - Pago;
      dxmAmortizaciones.Append;
      dxmAmortizacionesSegmento.Value := dxmSegmentosSegmento.Value;
      dxmAmortizacionesFecha.Value := IncMonth(FechaInicial, Periodo);
      dxmAmortizacionesPeriodo.Value := Periodo;
      dxmAmortizacionesSaldoInicial.Value := SaldoInicial;
      dxmAmortizacionesTasaAnual.Value := TasaAnual;
      dxmAmortizacionesPago.Value := Pago + Interes;
      dxmAmortizacionesCapital.Value := Capital;
      dxmAmortizacionesCapitalImpuesto.Value := Pago - Capital;
      dxmAmortizacionesCapitalTotal.Value := Pago;
      dxmAmortizacionesInteres.Value := Interes;
      dxmAmortizacionesInteresImpuesto.Value := InteresImpuesto;
      dxmAmortizacionesInteresTotal.Value := Interes + InteresImpuesto;
      dxmAmortizacionesSaldoFinal.Value := SaldoFinal;
      dxmAmortizacionesPagoTotal.Value := Pago + Interes + InteresImpuesto;
      dxmAmortizaciones.Post;
      Inc(PeriodoSegmento);
      SaldoInicial := SaldoFinal;
    end;
    dxmSegmentos.Edit;
    dxmSegmentosValorPresente.Value := SaldoInicialSegmento;
    dxmSegmentosPagoMensual.Value := Pago + Interes;
    dxmSegmentosValorFuturo.Value := SaldoFinal;
    dxmSegmentos.Post;
    NPeriodoSegmento := NPeriodo - dxmSegmentosPlazoFin.Value;
    SaldoInicialSegmento := SaldoFinal;
    dxmSegmentos.Next;
  end;
end;

function TdmAmortizaciones.GenAnexosAmortizaciones(IdAnexoCredito: Integer;
  FechaInicial: TDateTime; TasaAnual: Extended; NPeriodo: Integer;
  ValorPresente, ValorFuturo, ImpactoISR: Extended): Boolean;
  function GetTotalAmortizaciones: Integer;
  begin
    adoqAnexosAmortizaciones.Close;
    adoqAnexosAmortizaciones.Parameters.ParamByName('IdAnexoCredito').Value := IdAnexoCredito;
    adoqAnexosAmortizaciones.Open;
    Result := adoqAnexosAmortizacionesTotal.Value;
    adoqAnexosAmortizaciones.Close;
  end;
begin
  Result:= False;
  if GetTotalAmortizaciones > 0 then exit;
  GenAmortizaciones(FechaInicial, TasaAnual, NPeriodo, ValorPresente, ValorFuturo, ImpactoISR, PaymentTime);
  // Guardar en BD
  dxmAmortizaciones.First;
  while not dxmAmortizaciones.Eof do
  begin
    adocInsAnexosAmrtizaciones.Parameters.ParamByName('IdAnexoCredito').Value := IdAnexoCredito;
//    adocInsAnexosAmrtizaciones.Parameters.ParamByName('IdAnexoSegmento').Value :=
    adocInsAnexosAmrtizaciones.Parameters.ParamByName('Periodo').Value := dxmAmortizacionesPeriodo.Value;
    adocInsAnexosAmrtizaciones.Parameters.ParamByName('FechaCorte').Value := dxmAmortizacionesFecha.Value;
    adocInsAnexosAmrtizaciones.Parameters.ParamByName('FechaVencimiento').Value := dxmAmortizacionesFecha.Value;
    adocInsAnexosAmrtizaciones.Parameters.ParamByName('SaldoInicial').Value := dxmAmortizacionesSaldoInicial.Value;
    adocInsAnexosAmrtizaciones.Parameters.ParamByName('TasaAnual').Value := dxmAmortizacionesTasaAnual.Value;
    adocInsAnexosAmrtizaciones.Parameters.ParamByName('Capital').Value := dxmAmortizacionesCapital.Value;
    adocInsAnexosAmrtizaciones.Parameters.ParamByName('CapitalImpuesto').Value := dxmAmortizacionesCapitalImpuesto.Value;
    adocInsAnexosAmrtizaciones.Parameters.ParamByName('CapitalTotal').Value := dxmAmortizacionesCapitalTotal.Value;
    adocInsAnexosAmrtizaciones.Parameters.ParamByName('Interes').Value := dxmAmortizacionesInteres.Value;
    adocInsAnexosAmrtizaciones.Parameters.ParamByName('InteresImpuesto').Value := dxmAmortizacionesInteresImpuesto.Value;
    adocInsAnexosAmrtizaciones.Parameters.ParamByName('InteresTotal').Value := dxmAmortizacionesInteresTotal.Value;
    adocInsAnexosAmrtizaciones.Parameters.ParamByName('ImpactoISR').Value := dxmAmortizacionesImpactoISR.Value;
    adocInsAnexosAmrtizaciones.Parameters.ParamByName('Pago').Value := dxmAmortizacionesPago.Value;
    adocInsAnexosAmrtizaciones.Parameters.ParamByName('PagoTotal').Value := dxmAmortizacionesPagoTotal.Value;
    adocInsAnexosAmrtizaciones.Parameters.ParamByName('SaldoFinal').Value := dxmAmortizacionesSaldoFinal.Value;
    adocInsAnexosAmrtizaciones.Execute;
    dxmAmortizaciones.Next;
  end;
  Result:= True;
end;

//procedure TdmAmortizaciones.GenSegmentos(NPeriodo: Integer;
//  ValorPresente, ValorFuturo: Extended; PaymentTime: TPaymentTime);
//var
//  Tasa: Extended;
//  Pago: Extended;
//  SaldoInicial: Extended;
//  SaldoFinal: Extended;
//  TasaAnual: Extended;
//begin
//  SaldoInicial := ValorPresente;
//  dxmSegmentos.First;
//  while not dxmSegmentos.Eof do
//  begin
//    TasaAnual:= dxmSegmentosTasaAnual.Value;
//    Tasa := (TasaAnual / 100) / 12;
//    Pago := Payment(Tasa, NPeriodo, SaldoInicial, ValorFuturo, PaymentTime);
//    SaldoFinal := FutureValue(Tasa, NPeriodo, Pago, SaldoInicial, PaymentTime);
//    dxmSegmentos.Edit;
//    dxmSegmentosValorPresente.Value := SaldoInicial;
//    dxmSegmentosPagoMensual.Value := Pago;
//    dxmSegmentosValorFuturo.Value := SaldoFinal;
//    dxmSegmentos.Next;
//    SaldoInicial := SaldoFinal;
//  end;
//end;

procedure TdmAmortizaciones.IniSegmentos(TasaAnual: Extended; Plazo: Integer;
  ValorPresente,ValorFuturo: Extended);
var
  Tasa: Extended;
  Pago: Extended;
begin
  if Plazo < 1 then exit;
  Tasa := (TasaAnual / 100) / 12;
  Pago := Payment(Tasa, Plazo, ValorPresente, ValorFuturo, PaymentTime);
  dxmSegmentos.Close;
  dxmSegmentos.Open;
  dxmSegmentos.Append;
  dxmSegmentosSegmento.Value := 1;
  dxmSegmentosValorPresente.Value := ValorPresente;
  dxmSegmentosPlazoIni.Value := 1;
  dxmSegmentosPlazoFin.Value := Plazo;
  dxmSegmentosTasaAnual.Value := TasaAnual;
  dxmSegmentosPagoMensual.Value := Pago;
  dxmSegmentosValorFuturo.Value := ValorFuturo;
  dxmSegmentos.Post;
end;

function TdmAmortizaciones.Pago(TasaAnual: Extended; Plazo: Integer;
  ValorPresente, ValorFuturo: Extended): Extended;
var
  Tasa: Extended;
  Futuro: Extended;

begin
//  if Plazo < 1 then exit;
  Tasa := (TasaAnual / 100) / 12;
  Futuro := -1*ValorFuturo;
  if Plazo < 1 then
    Result := 0
  else
    Result := -1*Payment(Tasa, Plazo, ValorPresente, Futuro, PaymentTime);
end;

procedure TdmAmortizaciones.SetPaymentTime(const Value: TPaymentTime);
begin
  FPaymentTime := Value;
end;

procedure TdmAmortizaciones.SetTipoContrato(const Value: TCTipoContrato);
begin
  FTipoContrato := Value;
end;

end.
