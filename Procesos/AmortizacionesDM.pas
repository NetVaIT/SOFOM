unit AmortizacionesDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB, System.Math,
  dxmdaset;

const
  PIVA = 16.0;

type
  TdmAmortizaciones = class(T_dmStandar)
    dxmSegmentos: TdxMemData;
    dxmAmortizaciones: TdxMemData;
    dxmSegmentosSegmento: TIntegerField;
    dxmSegmentosPagoMensual: TExtendedField;
    dxmAmortizacionesPeriodo: TIntegerField;
    dxmAmortizacionesFecha: TDateTimeField;
    dxmAmortizacionesSaldoInicial: TExtendedField;
    dxmAmortizacionesPago: TExtendedField;
    dxmAmortizacionesCapital: TExtendedField;
    dxmAmortizacionesCapitalImpuesto: TExtendedField;
    dxmAmortizacionesCapitalTotal: TExtendedField;
    dxmAmortizacionesInteres: TExtendedField;
    dxmAmortizacionesInteresImpuesto: TExtendedField;
    dxmAmortizacionesInteresTotal: TExtendedField;
    dxmAmortizacionesSaldoFinal: TExtendedField;
    dxmAmortizacionesPagoTotal: TExtendedField;
    dxmAmortizacionesSegmento: TIntegerField;
    actCalcular: TAction;
    dxmSegmentosValorPresente: TExtendedField;
    dxmSegmentosValorFuturo: TExtendedField;
    dxmAmortizacionesTasaAnual: TExtendedField;
    dxmSegmentosTasaAnual: TFloatField;
    dxmSegmentosPlazoIni: TIntegerField;
    dxmSegmentosPlazoFin: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure actCalcularExecute(Sender: TObject);
  private
    { Private declarations }
    FPaymentTime: TPaymentTime;
    procedure SetPaymentTime(const Value: TPaymentTime);
//    procedure GenSegmentos(NPeriodo: Integer; ValorPresente,
//      ValorFuturo: Extended; PaymentTime: TPaymentTime);
    procedure GenAmortizaciones(TasaAnual: Extended; NPeriodo: Integer;
      ValorPresente, ValorFuturo: Extended; PaymentTime: TPaymentTime);
    procedure GenAmortizaciones2(FechaInicial: TDateTime; ValorPresente,
      ValorFuturo: Extended; PaymentTime: TPaymentTime);
    procedure IniSegmentos(TasaAnual: Extended; Plazo: Integer; ValorPresente,
      ValorFuturo: Extended);
  public
    { Public declarations }
    property PaymentTime: TPaymentTime read FPaymentTime write SetPaymentTime;
    procedure Execute(FechaInicial: TDateTime; TasaAnual: Extended;
      Plazo: Integer; ValorPresente,ValorFuturo: Extended);
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses SegmentosForm, AmortizacionesForm;

{$R *.dfm}

procedure TdmAmortizaciones.actCalcularExecute(Sender: TObject);
begin
  inherited;
  GenAmortizaciones2(TfrmSegmentos(gGridForm).FechaInicial,TfrmSegmentos(gGridForm).Monto, 0, ptEndOfPeriod);
end;

procedure TdmAmortizaciones.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmSegmentos.Create(Self);
  gGridForm.DataSet:= dxmSegmentos;
  TfrmSegmentos(gGridForm).actCalcular := actCalcular;
  TfrmSegmentos(gGridForm).Monto := 0;
  TfrmSegmentos(gGridForm).TasaAnual := 0;
  TfrmSegmentos(gGridForm).Plazo := 1;
  TfrmSegmentos(gGridForm).FechaInicial := 0;
  IniSegmentos(0, 1, 0, 0);
  gFormDeatil1:= TfrmAmortizaciones.Create(Self);
  gFormDeatil1.DataSet := dxmAmortizaciones;
end;

procedure TdmAmortizaciones.Execute(FechaInicial: TDateTime;
  TasaAnual: Extended; Plazo: Integer; ValorPresente, ValorFuturo: Extended);
begin
  TfrmSegmentos(gGridForm).Monto := ValorPresente;
  TfrmSegmentos(gGridForm).TasaAnual := TasaAnual;
  TfrmSegmentos(gGridForm).Plazo := Plazo;
  TfrmSegmentos(gGridForm).FechaInicial := FechaInicial;

  IniSegmentos(TasaAnual, Plazo, ValorPresente, ValorFuturo);
  GenAmortizaciones2(FechaInicial, ValorPresente, ValorFuturo, PaymentTime);
end;

procedure TdmAmortizaciones.GenAmortizaciones(TasaAnual: Extended;
  NPeriodo: Integer; ValorPresente,ValorFuturo: Extended; PaymentTime: TPaymentTime);
var
  Periodo: Integer;
  Tasa: Extended;
  Pago: Extended;
  Capital: Extended;
  Interes: Extended;
  InteresImpuesto: Extended;
  SaldoInicial: Extended;
  SaldoFinal: Extended;
begin
//  if (Rate <= -1.0) or (Period < 1) or (Period > NPeriods) then ArgError('PeriodPayment');
  if NPeriodo < 1 then exit;
  dxmAmortizaciones.Close;
  dxmAmortizaciones.Open;
  SaldoInicial:= ValorPresente;
  for Periodo := 1 to NPeriodo do
  begin
    Tasa := (TasaAnual / 100) / 12;
    Pago := PeriodPayment(Tasa, Periodo, NPeriodo, ValorPresente, ValorFuturo, PaymentTime)*-1;
    Capital := Pago / (1+(PIVA/100));
    Interes := InterestPayment(Tasa, Periodo, NPeriodo, ValorPresente, ValorFuturo, PaymentTime)*-1;
    InteresImpuesto := Interes * (PIVA/100);
    SaldoFinal := SaldoInicial - Pago;
    dxmAmortizaciones.Append;
    dxmAmortizacionesSegmento.Value := 0;
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
    SaldoInicial := SaldoFinal
  end;
end;

procedure TdmAmortizaciones.GenAmortizaciones2(FechaInicial: TDateTime;
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
      Capital := Pago / (1+(PIVA/100));
      Interes := InterestPayment(Tasa, PeriodoSegmento, NPeriodoSegmento, SaldoInicialSegmento, ValorFuturo, PaymentTime)*-1;
      InteresImpuesto := Interes * (PIVA/100);
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

procedure TdmAmortizaciones.SetPaymentTime(const Value: TPaymentTime);
begin
  FPaymentTime := Value;
end;

end.
