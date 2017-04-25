unit AmortizacionesDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  System.DateUtils,
  Data.DB, Data.Win.ADODB, System.Math, dxmdaset, ProcesosType;

type
  TdmAmortizaciones = class(T_dmStandar)
    dxmSegmentos: TdxMemData;
    dxmAmortizaciones: TdxMemData;
    dxmSegmentosSegmento: TIntegerField;
    dxmSegmentosPagoMensual: TFloatField;
    dxmAmortizacionesPeriodo: TIntegerField;
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
    adoqCountAmortizaciones: TADOQuery;
    adoqCountAmortizacionesTotal: TIntegerField;
    dxmAmortizacionesImpactoISR: TFloatField;
    adoqAnexosAmortizaciones: TADOQuery;
    adoqAnexosAmortizacionesIdAnexoAmortizacion: TAutoIncField;
    adoqAnexosAmortizacionesIdAnexoCredito: TIntegerField;
    adoqAnexosAmortizacionesIdAnexoSegmento: TIntegerField;
    adoqAnexosAmortizacionesPeriodo: TIntegerField;
    adoqAnexosAmortizacionesFechaCorte: TDateTimeField;
    adoqAnexosAmortizacionesFechaVencimiento: TDateTimeField;
    adoqAnexosAmortizacionesTasaAnual: TBCDField;
    adoqAnexosAmortizacionesSaldoInicial: TFMTBCDField;
    adoqAnexosAmortizacionesPago: TFMTBCDField;
    adoqAnexosAmortizacionesCapital: TFMTBCDField;
    adoqAnexosAmortizacionesCapitalImpuesto: TFMTBCDField;
    adoqAnexosAmortizacionesCapitalTotal: TFMTBCDField;
    adoqAnexosAmortizacionesInteres: TFMTBCDField;
    adoqAnexosAmortizacionesInteresImpuesto: TFMTBCDField;
    adoqAnexosAmortizacionesInteresTotal: TFMTBCDField;
    adoqAnexosAmortizacionesImpactoISR: TFMTBCDField;
    adoqAnexosAmortizacionesPagoTotal: TFMTBCDField;
    adoqAnexosAmortizacionesSaldoFinal: TFMTBCDField;
    adoqAnexosAmortizacionesFechaMoratorio: TDateTimeField;
    adoqAnexosAmortizacionesMoratorioBase: TFMTBCDField;
    adoqAnexosAmortizacionesMoratorio: TFMTBCDField;
    adoqAnexosAmortizacionesMoratorioImpuesto: TFMTBCDField;
    dxmAnexosAmortizaciones: TdxMemData;
    dxmAnexosAmortizacionesIdAnexoAmortizacion: TAutoIncField;
    dxmAnexosAmortizacionesIdAnexoCredito: TIntegerField;
    dxmAnexosAmortizacionesIdAnexoSegmento: TIntegerField;
    dxmAnexosAmortizacionesPeriodo: TIntegerField;
    dxmAnexosAmortizacionesFechaCorte: TDateTimeField;
    dxmAnexosAmortizacionesFechaVencimiento: TDateTimeField;
    dxmAnexosAmortizacionesTasaAnual: TBCDField;
    dxmAnexosAmortizacionesSaldoInicial: TFMTBCDField;
    dxmAnexosAmortizacionesPago: TFMTBCDField;
    dxmAnexosAmortizacionesCapital: TFMTBCDField;
    dxmAnexosAmortizacionesCapitalImpuesto: TFMTBCDField;
    dxmAnexosAmortizacionesCapitalTotal: TFMTBCDField;
    dxmAnexosAmortizacionesInteres: TFMTBCDField;
    dxmAnexosAmortizacionesInteresImpuesto: TFMTBCDField;
    dxmAnexosAmortizacionesInteresTotal: TFMTBCDField;
    dxmAnexosAmortizacionesImpactoISR: TFMTBCDField;
    dxmAnexosAmortizacionesPagoTotal: TFMTBCDField;
    dxmAnexosAmortizacionesSaldoFinal: TFMTBCDField;
    dxmAnexosAmortizacionesFechaMoratorio: TDateTimeField;
    dxmAnexosAmortizacionesMoratorioBase: TFMTBCDField;
    dxmAnexosAmortizacionesMoratorio: TFMTBCDField;
    dxmAnexosAmortizacionesMoratorioImpuesto: TFMTBCDField;
    adoqCredito: TADOQuery;
    adoqCreditoIdAnexoCredito: TAutoIncField;
    adoqCreditoFechaCorte: TDateTimeField;
    adoqCreditoFechaVencimiento: TDateTimeField;
    adoqCreditoPlazo: TIntegerField;
    adoqCreditoTasaAnual: TBCDField;
    adoqCreditoValorResidual: TFMTBCDField;
    adoqCreditoImpactoISR: TFMTBCDField;
    dxmAmortizacionesFechaCorte: TDateTimeField;
    dxmAmortizacionesFechaVencimiento: TDateTimeField;
    adocUptAnexosAmrtizaciones: TADOCommand;
    adoqCreditoFechaPrestamo: TDateTimeField;
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
//    procedure GenAmortizacionesSegmento(FechaInicial: TDateTime; ValorPresente,
//      ValorFuturo: Extended; PaymentTime: TPaymentTime);
//    procedure IniSegmentos(TasaAnual: Extended; Plazo: Integer; ValorPresente,
//      ValorFuturo: Extended);
    procedure GenAmortizaciones(FechaPrestamo, FechaCorte, FechaVencimiento: TDateTime;
      TasaAnual: Extended; NPeriodo: Integer; ValorPresente, ValorFuturo,
      ImpactoISR: Extended; PaymentTime: TPaymentTime);
    function GetAmortizacion(FechaCorte, FechaVencimiento: TDateTime;
      TasaAnual: Extended; Periodo, NPeriodo: Integer; SaldoInicial,
      ValorPresente, ValorFuturo, ImpactoISR: Extended;
      PaymentTime: TPaymentTime): TAmortizacion;
    procedure AjustePrimeraMensualidad(FechaPrestamo: TDateTime;
      var Amortizacion: TAmortizacion);
    function GetInteresImpuesto(Interes: Extended): Extended;
  public
    { Public declarations }
    property PaymentTime: TPaymentTime read FPaymentTime write SetPaymentTime;
    property TipoContrato: TCTipoContrato read FTipoContrato write SetTipoContrato;
    procedure Execute(FechaPrestamo, FechaCorte, FechaVencimiento: TDateTime;
      TasaAnual: Extended; Plazo: Integer; ValorPresente, ValorFuturo, ImpactoISR: Extended);
    function Pago(TasaAnual: Extended; Plazo: Integer; ValorPresente,ValorFuturo: Extended): Extended;
    function GenAnexosAmortizaciones(IdAnexoCredito: Integer;
      FechaPrestamo, FechaCorte, FechaVencimiento: TDateTime; TasaAnual: Extended; NPeriodo: Integer;
      ValorPresente, ValorFuturo, ImpactoISR: Extended): Boolean;
    function SetAmortizaciones(IdAnexo: Integer; Importe: Extended; Tipo: TAbonoCapital;Fecha:TDateTime): Boolean;
    procedure GetCapitalAnual(FechaVencimiento: TDateTime; TasaAnual: Extended;
      Plazo: Integer; ValorPresente, ValorFuturo: Extended;
      var CapitalMeses: TCapitalMeses);
    function GetTIR(FechaVencimiento: TDateTime; Precio, Enganche,
      ComisionInicial, Depositos, ComisionFinal, TasaAnual: Extended;
      DepositosNumero, Plazo: Integer; ValorPresente, ValorFuturo,
      ImpactoISR: Extended): Extended;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses SegmentosForm, AmortizacionesForm;

{$R *.dfm}

procedure TdmAmortizaciones.actCalcularExecute(Sender: TObject);
var
  FechaInicial: TDateTime;
begin
  inherited;
  FechaInicial := TfrmSegmentos(gGridForm).FechaInicial;
  GenAmortizaciones(FechaInicial, FechaInicial, FechaInicial, TfrmSegmentos(gGridForm).TasaAnual,
  TfrmSegmentos(gGridForm).Plazo, TfrmSegmentos(gGridForm).Monto,
  TfrmSegmentos(gGridForm).Futuro, TfrmSegmentos(gGridForm).ImpactoISR, PaymentTime);
//  GenAmortizacionesSegmento(TfrmSegmentos(gGridForm).FechaInicial,TfrmSegmentos(gGridForm).Monto, 0, PaymentTime);
end;

procedure TdmAmortizaciones.AjustePrimeraMensualidad(FechaPrestamo: TDateTime;
  var Amortizacion: TAmortizacion);
var
  TasaDiaria: Extended;
  Tasa: Extended;
  Dias: Integer;
  Interes: Extended;
  InteresImpuesto: Extended;
  Pago: Extended;
begin
  if Amortizacion.Periodo <> 1 then exit;
  case TipoContrato of
    tcCreditoSimple, tcArrendamientoFinanciero:
    begin
      TasaDiaria := (Amortizacion.TasaAnual / 100) / 360;
      Dias := DaysBetween(FechaPrestamo, Amortizacion.FechaVencimiento);
      Tasa := TasaDiaria * Dias;
      Interes := Amortizacion.SaldoInicial * Tasa;
      InteresImpuesto := GetInteresImpuesto(Interes);
      Pago := Amortizacion.Capital + Interes;
      Amortizacion.Interes := Interes;
      Amortizacion.InteresImpuesto := InteresImpuesto;
      Amortizacion.InteresTotal := Interes + InteresImpuesto;
      Amortizacion.Pago := Pago;
      Amortizacion.PagoTotal := Pago + InteresImpuesto + Amortizacion.ImpactoISR;;
    end;
  end;
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

procedure TdmAmortizaciones.Execute(FechaPrestamo, FechaCorte, FechaVencimiento: TDateTime;
  TasaAnual: Extended; Plazo: Integer; ValorPresente, ValorFuturo, ImpactoISR: Extended);
begin
  TfrmSegmentos(gGridForm).VerValores := False;
  TfrmSegmentos(gGridForm).Monto := ValorPresente;
  TfrmSegmentos(gGridForm).TasaAnual := TasaAnual;
  TfrmSegmentos(gGridForm).Plazo := Plazo;
  TfrmSegmentos(gGridForm).Futuro := ValorFuturo;
  TfrmSegmentos(gGridForm).ImpactoISR := ImpactoISR;
  TfrmSegmentos(gGridForm).FechaInicial := FechaVencimiento;
  GenAmortizaciones(FechaPrestamo, FechaCorte, FechaVencimiento,
  TasaAnual, Plazo, ValorPresente, ValorFuturo, ImpactoISR, PaymentTime);
//  IniSegmentos(TasaAnual, Plazo, ValorPresente, ValorFuturo);
//  GenAmortizacionesSegmento(FechaInicial, ValorPresente, ValorFuturo, PaymentTime);
end;

function TdmAmortizaciones.GetAmortizacion(FechaCorte, FechaVencimiento: TDateTime;
  TasaAnual: Extended; Periodo, NPeriodo: Integer; SaldoInicial, ValorPresente, ValorFuturo,
  ImpactoISR: Extended; PaymentTime: TPaymentTime): TAmortizacion;
var
  Tasa: Extended;
  Pago: Extended;
  Capital: Extended;
  CapitalSinImpuesto: Extended;
  Interes: Extended;
  InteresImpuesto: Extended;
  Futuro: Extended;
  SaldoFinal: Extended;
begin
  Futuro := -1*ValorFuturo;
  Tasa := (TasaAnual / 100) / 12;
  Capital := -1*PeriodPayment(Tasa, Periodo, NPeriodo, ValorPresente, Futuro, PaymentTime);
  CapitalSinImpuesto := Capital / (1+(_IMPUESTOS_IVA/100));
  Interes := -1*InterestPayment(Tasa, Periodo, NPeriodo, ValorPresente, Futuro, PaymentTime);
  InteresImpuesto := GetInteresImpuesto(Interes);
  Pago := Capital + Interes;
  SaldoFinal := SaldoInicial - Capital;
  Result.Periodo := Periodo;
  Result.FechaCorte := IncMonth(FechaCorte, Periodo-1);
  Result.FechaVencimiento := IncMonth(FechaVencimiento, Periodo-1);
  Result.TasaAnual := TasaAnual;
  Result.SaldoInicial := SaldoInicial;
  Result.Capital := CapitalSinImpuesto;
  Result.CapitalImpuesto := Capital - CapitalSinImpuesto;
  Result.CapitalTotal := Capital;
  Result.Interes := Interes;
  Result.InteresImpuesto := InteresImpuesto;
  Result.InteresTotal := Interes + InteresImpuesto;
  Result.ImpactoISR := ImpactoISR;
  Result.Pago := Pago;
  Result.PagoTotal := Pago + InteresImpuesto + ImpactoISR;;
  Result.SaldoFinal := SaldoFinal;
end;

procedure TdmAmortizaciones.GetCapitalAnual(FechaVencimiento: TDateTime;
  TasaAnual: Extended; Plazo: Integer; ValorPresente, ValorFuturo: Extended;
  var CapitalMeses: TCapitalMeses);
var
  AnioIni: Word;
  Meses: Word;
  Capital: Extended;
  CapitalMes: TCapitalMes;

  function AgregarCapital(NuevoCapitalMes: TCapitalMes): Integer;
  begin
      SetLength(CapitalMeses, Length(CapitalMeses) + 1);
      CapitalMeses[Length(CapitalMeses) - 1] := NuevoCapitalMes;
      Result:=Length(CapitalMeses) - 1;
  end;

begin
  if Plazo < 1 then exit;
  // Inicializa amotizaciones
  GenAmortizaciones(FechaVencimiento, FechaVencimiento, FechaVencimiento,
  TasaAnual, Plazo, ValorPresente, ValorFuturo, 0, PaymentTime);
  AnioIni:= Yearof(dxmAmortizacionesFechaVencimiento.Value);
  Meses:= 0;
  Capital:= 0;
  dxmAmortizaciones.First;
  while not dxmAmortizaciones.Eof do
  begin
    if AnioIni <> Yearof(dxmAmortizacionesFechaVencimiento.Value) then
    begin
      // Graba
      CapitalMes.Anio := AnioIni;
      CapitalMes.Meses := Meses;
      CapitalMes.CapitalTotal:= Capital;
      AgregarCapital(CapitalMes);
      // Inicializa
      AnioIni:= Yearof(dxmAmortizacionesFechaVencimiento.Value);
      Meses:= 0;
      Capital:= 0;
    end;
    Inc(Meses);
    Capital := Capital + dxmAmortizacionesCapitalTotal.Value;
    dxmAmortizaciones.Next;
  end;
  // Graba
  CapitalMes.Anio := AnioIni;
  CapitalMes.Meses := Meses;
  CapitalMes.CapitalTotal:= Capital;
  AgregarCapital(CapitalMes);
end;

function TdmAmortizaciones.GetInteresImpuesto(Interes: Extended): Extended;
begin
  case TipoContrato of
    tcNone: Result := 0;
    tcCreditoSimple: Result := Interes * (_IMPUESTOS_IVA/100);
    tcArrendamientoFinanciero: Result := Interes * (_IMPUESTOS_IVA/100);
    tcArrendamientoPuro: Result := 0;
    else Result := 0;
  end;
end;

function TdmAmortizaciones.GetTIR(FechaVencimiento: TDateTime; Precio, Enganche,
  ComisionInicial, Depositos, ComisionFinal, TasaAnual: Extended; DepositosNumero,
  Plazo: Integer; ValorPresente, ValorFuturo, ImpactoISR: Extended): Extended;
var
  CashFlows: array of Double;
  Periodo0 : Extended;
begin
  Result := 0;
  if (Precio = 0) or (Plazo < 1) then exit;
  Periodo0 := (-1*Precio) + Enganche + ComisionInicial + Depositos;
  SetLength(CashFlows, Length(CashFlows) + 1);
  CashFlows[Length(CashFlows) - 1] := Periodo0;
  GenAmortizaciones(FechaVencimiento, FechaVencimiento, FechaVencimiento,
  TasaAnual, Plazo, ValorPresente, ValorFuturo, ImpactoISR, PaymentTime);
  dxmAmortizaciones.First;
  while not dxmAmortizaciones.Eof do
  begin
    SetLength(CashFlows, Length(CashFlows) + 1);
    if dxmAmortizacionesPeriodo.Value < (Plazo+1-DepositosNumero) then
      CashFlows[Length(CashFlows) - 1] := dxmAmortizacionesCapital.Value + dxmAmortizacionesCapitalImpuesto.Value +
      dxmAmortizacionesInteres.Value + dxmAmortizacionesInteresImpuesto.Value
    else
      CashFlows[Length(CashFlows) - 1] := dxmAmortizacionesInteresImpuesto.Value;
    if dxmAmortizacionesPeriodo.Value = Plazo then
      CashFlows[Length(CashFlows) - 1] := CashFlows[Length(CashFlows) - 1] + ValorFuturo + ComisionFinal;
    dxmAmortizaciones.Next;
  end;
  Result := InternalRateOfReturn(0, CashFlows)*100*12;
end;

procedure TdmAmortizaciones.GenAmortizaciones(FechaPrestamo, FechaCorte, FechaVencimiento: TDateTime;
  TasaAnual: Extended; NPeriodo: Integer; ValorPresente,ValorFuturo, ImpactoISR: Extended;
  PaymentTime: TPaymentTime);
var
  Periodo: Integer;
//  Tasa: Extended;
//  Pago: Extended;
//  Capital: Extended;
//  CapitalSinImpuesto: Extended;
//  Interes: Extended;
//  InteresImpuesto: Extended;
//  Futuro: Extended;
  SaldoInicial: Extended;
//  SaldoFinal: Extended;
  Amortizacion: TAmortizacion;
begin
//  if (Rate <= -1.0) or (Period < 1) or (Period > NPeriods) then ArgError('PeriodPayment');
  dxmAmortizaciones.Close;
  dxmAmortizaciones.Open;
  if NPeriodo < 1 then exit;
  SaldoInicial:= ValorPresente;
  for Periodo := 1 to NPeriodo do
  begin
    Amortizacion := GetAmortizacion(FechaCorte, FechaVencimiento, TasaAnual, Periodo, NPeriodo,
    SaldoInicial, ValorPresente, ValorFuturo, ImpactoISR, PaymentTime);
    if Amortizacion.Periodo = 1 then
    begin
      AjustePrimeraMensualidad(FechaPrestamo, Amortizacion);
    end;
    dxmAmortizaciones.Append;
    dxmAmortizacionesSegmento.Value := 0;
    dxmAmortizacionesFechaCorte.Value := Amortizacion.FechaCorte;
    dxmAmortizacionesFechaVencimiento.Value := Amortizacion.FechaVencimiento;
    dxmAmortizacionesPeriodo.Value := Amortizacion.Periodo;
    dxmAmortizacionesTasaAnual.Value := Amortizacion.TasaAnual;
    dxmAmortizacionesSaldoInicial.Value := Amortizacion.SaldoInicial;
    dxmAmortizacionesCapital.Value := Amortizacion.Capital;
    dxmAmortizacionesCapitalImpuesto.Value := Amortizacion.CapitalImpuesto;
    dxmAmortizacionesCapitalTotal.Value := Amortizacion.CapitalTotal;
    dxmAmortizacionesInteres.Value := Amortizacion.Interes;
    dxmAmortizacionesInteresImpuesto.Value := Amortizacion.InteresImpuesto;
    dxmAmortizacionesInteresTotal.Value := Amortizacion.InteresTotal;
    dxmAmortizacionesImpactoISR.Value := Amortizacion.ImpactoISR;
    dxmAmortizacionesPago.Value := Amortizacion.Pago;
    dxmAmortizacionesPagoTotal.Value := Amortizacion.PagoTotal;
    dxmAmortizacionesSaldoFinal.Value := Amortizacion.SaldoFinal;
    dxmAmortizaciones.Post;
    SaldoInicial := Amortizacion.SaldoFinal;
  end;

//  SaldoInicial:= ValorPresente;
//  Futuro := -1*ValorFuturo;
//  for Periodo := 1 to NPeriodo do
//  begin
//    Tasa := (TasaAnual / 100) / 12;
//    Capital := -1*PeriodPayment(Tasa, Periodo, NPeriodo, ValorPresente, Futuro, PaymentTime);
//    CapitalSinImpuesto := Capital / (1+(_IMPUESTOS_IVA/100));
//    Interes := -1*InterestPayment(Tasa, Periodo, NPeriodo, ValorPresente, Futuro, PaymentTime);
//    InteresImpuesto := GetInteresImpuesto(Interes);
//    Pago := Capital + Interes;
//    SaldoFinal := SaldoInicial - Capital;
//    dxmAmortizaciones.Append;
//    dxmAmortizacionesSegmento.Value := 0;
//    dxmAmortizacionesFechaCorte.Value := IncMonth(FechaCorte, Periodo-1);
//    dxmAmortizacionesFechaVencimiento.Value := IncMonth(FechaVencimiento, Periodo-1);
//    dxmAmortizacionesPeriodo.Value := Periodo;
//    dxmAmortizacionesTasaAnual.Value := TasaAnual;
//    dxmAmortizacionesSaldoInicial.Value := SaldoInicial;
//    dxmAmortizacionesCapital.Value := CapitalSinImpuesto;
//    dxmAmortizacionesCapitalImpuesto.Value := Capital - CapitalSinImpuesto;
//    dxmAmortizacionesCapitalTotal.Value := Capital;
//    dxmAmortizacionesInteres.Value := Interes;
//    dxmAmortizacionesInteresImpuesto.Value := InteresImpuesto;
//    dxmAmortizacionesInteresTotal.Value := Interes + InteresImpuesto;
//    dxmAmortizacionesImpactoISR.Value := ImpactoISR;
//    dxmAmortizacionesPago.Value := Pago;
//    dxmAmortizacionesPagoTotal.Value := Pago + InteresImpuesto + ImpactoISR;
//    dxmAmortizacionesSaldoFinal.Value := SaldoFinal;
//    dxmAmortizaciones.Post;
//    SaldoInicial := SaldoFinal
//  end;
  dxmAmortizaciones.First;
end;

//procedure TdmAmortizaciones.GenAmortizacionesSegmento(FechaInicial: TDateTime;
//  ValorPresente,ValorFuturo: Extended; PaymentTime: TPaymentTime);
//var
//  NPeriodo: Integer;
//  NPeriodoSegmento: Integer;
//  Periodo: Integer;
//  PeriodoSegmento: Integer;
//  Tasa: Extended;
//  Pago: Extended;
//  Capital: Extended;
//  Interes: Extended;
//  InteresImpuesto: Extended;
//  SaldoInicial: Extended;
//  SaldoFinal: Extended;
//  TasaAnual: Double;
//  SaldoInicialSegmento: Extended;
//  function GetNPeriodo: Integer;
//  begin
//    dxmSegmentos.Last;
//    Result := dxmSegmentosPlazoFin.Value;
//  end;
//begin
////  if (Rate <= -1.0) or (Period < 1) or (Period > NPeriods) then ArgError('PeriodPayment');
//  NPeriodo := GetNPeriodo;
//  if NPeriodo < 1 then exit;
//  dxmAmortizaciones.Close;
//  dxmAmortizaciones.Open;
//  SaldoInicial:= ValorPresente;
//  SaldoInicialSegmento:= ValorPresente;
//  NPeriodoSegmento := NPeriodo;
//  Pago:= 0;
//  Interes:= 0;
//  SaldoFinal := ValorFuturo;
//  dxmSegmentos.First;
//  while not dxmSegmentos.Eof do
//  begin
//    PeriodoSegmento:= 1;
//    for Periodo := dxmSegmentosPlazoIni.Value to dxmSegmentosPlazoFin.Value do
//    begin
//      TasaAnual:= dxmSegmentosTasaAnual.Value;
//      Tasa := (TasaAnual / 100) / 12;
//      Pago := PeriodPayment(Tasa, PeriodoSegmento, NPeriodoSegmento, SaldoInicialSegmento, ValorFuturo, PaymentTime)*-1;
//      Capital := Pago / (1+(_IMPUESTOS_IVA/100));
//      Interes := InterestPayment(Tasa, PeriodoSegmento, NPeriodoSegmento, SaldoInicialSegmento, ValorFuturo, PaymentTime)*-1;
//    case TipoContrato of
//      tcNone: InteresImpuesto := 0;
//      tcCreditoSimple: InteresImpuesto := 0;
//      tcArrendamientoFinanciero: InteresImpuesto := Interes * (_IMPUESTOS_IVA/100);
//      tcArrendamientoPuro: InteresImpuesto := 0;
//      else InteresImpuesto := 0;
//    end;
//      SaldoFinal := SaldoInicial - Pago;
//      dxmAmortizaciones.Append;
//      dxmAmortizacionesSegmento.Value := dxmSegmentosSegmento.Value;
//      dxmAmortizacionesFechaVencimiento.Value := IncMonth(FechaInicial, Periodo-1);
//      dxmAmortizacionesPeriodo.Value := Periodo;
//      dxmAmortizacionesSaldoInicial.Value := SaldoInicial;
//      dxmAmortizacionesTasaAnual.Value := TasaAnual;
//      dxmAmortizacionesPago.Value := Pago + Interes;
//      dxmAmortizacionesCapital.Value := Capital;
//      dxmAmortizacionesCapitalImpuesto.Value := Pago - Capital;
//      dxmAmortizacionesCapitalTotal.Value := Pago;
//      dxmAmortizacionesInteres.Value := Interes;
//      dxmAmortizacionesInteresImpuesto.Value := InteresImpuesto;
//      dxmAmortizacionesInteresTotal.Value := Interes + InteresImpuesto;
//      dxmAmortizacionesSaldoFinal.Value := SaldoFinal;
//      dxmAmortizacionesPagoTotal.Value := Pago + Interes + InteresImpuesto;
//      dxmAmortizaciones.Post;
//      Inc(PeriodoSegmento);
//      SaldoInicial := SaldoFinal;
//    end;
//    dxmSegmentos.Edit;
//    dxmSegmentosValorPresente.Value := SaldoInicialSegmento;
//    dxmSegmentosPagoMensual.Value := Pago + Interes;
//    dxmSegmentosValorFuturo.Value := SaldoFinal;
//    dxmSegmentos.Post;
//    NPeriodoSegmento := NPeriodo - dxmSegmentosPlazoFin.Value;
//    SaldoInicialSegmento := SaldoFinal;
//    dxmSegmentos.Next;
//  end;
//end;

function TdmAmortizaciones.GenAnexosAmortizaciones(IdAnexoCredito: Integer;
  FechaPrestamo, FechaCorte, FechaVencimiento: TDateTime; TasaAnual: Extended; NPeriodo: Integer;
  ValorPresente, ValorFuturo, ImpactoISR: Extended): Boolean;

  function GetTotalAmortizaciones: Integer;
  begin
    adoqCountAmortizaciones.Close;
    adoqCountAmortizaciones.Parameters.ParamByName('IdAnexoCredito').Value := IdAnexoCredito;
    adoqCountAmortizaciones.Open;
    Result := adoqCountAmortizacionesTotal.Value;
    adoqCountAmortizaciones.Close;
  end;

begin
  Result:= False;
  if GetTotalAmortizaciones > 0 then exit;
  GenAmortizaciones(FechaPrestamo, FechaCorte, FechaVencimiento, TasaAnual, NPeriodo, ValorPresente, ValorFuturo, ImpactoISR, PaymentTime);
  // Guardar en BD
  dxmAmortizaciones.First;
  while not dxmAmortizaciones.Eof do
  begin
    adocInsAnexosAmrtizaciones.Parameters.ParamByName('IdAnexoCredito').Value := IdAnexoCredito;
//    adocInsAnexosAmrtizaciones.Parameters.ParamByName('IdAnexoSegmento').Value :=
    adocInsAnexosAmrtizaciones.Parameters.ParamByName('Periodo').Value := dxmAmortizacionesPeriodo.Value;
    adocInsAnexosAmrtizaciones.Parameters.ParamByName('FechaCorte').Value := dxmAmortizacionesFechaCorte.Value;
    adocInsAnexosAmrtizaciones.Parameters.ParamByName('FechaVencimiento').Value := dxmAmortizacionesFechaVencimiento.Value;
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

//procedure TdmAmortizaciones.IniSegmentos(TasaAnual: Extended; Plazo: Integer;
//  ValorPresente,ValorFuturo: Extended);
//var
//  Tasa: Extended;
//  Pago: Extended;
//begin
//  if Plazo < 1 then exit;
//  Tasa := (TasaAnual / 100) / 12;
//  Pago := Payment(Tasa, Plazo, ValorPresente, ValorFuturo, PaymentTime);
//  dxmSegmentos.Close;
//  dxmSegmentos.Open;
//  dxmSegmentos.Append;
//  dxmSegmentosSegmento.Value := 1;
//  dxmSegmentosValorPresente.Value := ValorPresente;
//  dxmSegmentosPlazoIni.Value := 1;
//  dxmSegmentosPlazoFin.Value := Plazo;
//  dxmSegmentosTasaAnual.Value := TasaAnual;
//  dxmSegmentosPagoMensual.Value := Pago;
//  dxmSegmentosValorFuturo.Value := ValorFuturo;
//  dxmSegmentos.Post;
//end;

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

function TdmAmortizaciones.SetAmortizaciones(IdAnexo: Integer;
  Importe: Extended; Tipo: TAbonoCapital; Fecha:TDateTime): Boolean;
var                                       //Abr 19/17
  PeriodoInicial: Integer;
  NPeriodoSegmento: Integer;
  PeriodoSegmento: Integer;
  IdAnexoCredito: Integer;
  FechaPrestamo, FechaCorte, FechaVencimiento: TDateTime;
  NPeriodo: Integer;
  TasaAnual: Extended;
  ValorPresente: Extended;
  ValorFuturo: Extended;
  ImpactoISR: Extended;
  SaldoInicial: Extended;
  Amortizacion: TAmortizacion;

  procedure CargarCredito;
  begin
    adoqCredito.Close;
    adoqCredito.Parameters.ParamByName('IdAnexo').Value:= IdAnexo;
    adoqCredito.Open;
    try
      IdAnexoCredito:= adoqCreditoIdAnexoCredito.Value;
      FechaPrestamo := adoqCreditoFechaPrestamo.Value;
      FechaCorte := adoqCreditoFechaCorte.Value;
      FechaVencimiento := adoqCreditoFechaVencimiento.Value;
      NPeriodo:= adoqCreditoPlazo.Value;
      TasaAnual := adoqCreditoTasaAnual.Value;
      ValorFuturo := adoqCreditoValorResidual.AsFloat;
      ImpactoISR := adoqCreditoImpactoISR.AsFloat;
    finally
      adoqCredito.Close;
    end;
  end;

  procedure CargaAmortizaciones;
  begin
    adoqAnexosAmortizaciones.Close;
    adoqAnexosAmortizaciones.Parameters.ParamByName('IdAnexo').Value:= IdAnexo;
    adoqAnexosAmortizaciones.Parameters.ParamByName('Fecha').Value:= Fecha;   //Abr 19/17
    adoqAnexosAmortizaciones.Open;
    try
      dxmAnexosAmortizaciones.Close;
      dxmAnexosAmortizaciones.LoadFromDataSet(adoqAnexosAmortizaciones);
    finally
      adoqAnexosAmortizaciones.Close;
    end;
    dxmAnexosAmortizaciones.First;
  end;

begin
//  try
    case Tipo of
      acReducirCuota:
      begin
        CargarCredito;
        CargaAmortizaciones;
        PeriodoInicial := dxmAnexosAmortizacionesPeriodo.Value;
        ValorPresente := dxmAnexosAmortizacionesSaldoInicial.AsFloat - Importe;
        SaldoInicial:= ValorPresente;
        PeriodoSegmento:= 1;
        NPeriodoSegmento:= NPeriodo - (PeriodoInicial-1);
        // Actualiza importes
        dxmAnexosAmortizaciones.First;
        while not dxmAnexosAmortizaciones.Eof do
        begin
          Amortizacion := GetAmortizacion(FechaCorte, FechaVencimiento, TasaAnual, PeriodoSegmento, NPeriodoSegmento,
          SaldoInicial, ValorPresente, ValorFuturo, ImpactoISR, PaymentTime);
          if dxmAnexosAmortizacionesPeriodo.Value = 1 then
          begin
            AjustePrimeraMensualidad(FechaPrestamo, Amortizacion);
          end;
          dxmAnexosAmortizaciones.Edit;
          dxmAnexosAmortizacionesSaldoInicial.Value := Amortizacion.SaldoInicial;
          dxmAnexosAmortizacionesPago.Value := Amortizacion.Pago;
          dxmAnexosAmortizacionesCapital.Value := Amortizacion.Capital;
          dxmAnexosAmortizacionesCapitalImpuesto.Value := Amortizacion.CapitalImpuesto;
          dxmAnexosAmortizacionesCapitalTotal.Value := Amortizacion.CapitalTotal;
          dxmAnexosAmortizacionesInteres.Value := Amortizacion.Interes;
          dxmAnexosAmortizacionesInteresImpuesto.Value := Amortizacion.InteresImpuesto;
          dxmAnexosAmortizacionesInteresTotal.Value := Amortizacion.InteresTotal;
          dxmAnexosAmortizacionesImpactoISR.Value := Amortizacion.ImpactoISR;
          dxmAnexosAmortizacionesPagoTotal.Value := Amortizacion.PagoTotal;
          dxmAnexosAmortizacionesSaldoFinal.Value := Amortizacion.SaldoFinal;
          dxmAnexosAmortizaciones.Post;
          SaldoInicial := Amortizacion.SaldoFinal;
          Inc(PeriodoSegmento);
          dxmAnexosAmortizaciones.Next;
        end;
        // Guarda en BD
        dxmAnexosAmortizaciones.First;
        while not dxmAnexosAmortizaciones.Eof do
        begin
          adocUptAnexosAmrtizaciones.Parameters.ParamByName('SaldoInicial').Value := dxmAnexosAmortizacionesSaldoInicial.AsExtended;
          adocUptAnexosAmrtizaciones.Parameters.ParamByName('Pago').Value := dxmAnexosAmortizacionesPago.AsExtended;
          adocUptAnexosAmrtizaciones.Parameters.ParamByName('Capital').Value := dxmAnexosAmortizacionesCapital.AsExtended;
          adocUptAnexosAmrtizaciones.Parameters.ParamByName('CapitalImpuesto').Value := dxmAnexosAmortizacionesCapitalImpuesto.AsExtended;
          adocUptAnexosAmrtizaciones.Parameters.ParamByName('CapitalTotal').Value := dxmAnexosAmortizacionesCapitalTotal.AsExtended;
          adocUptAnexosAmrtizaciones.Parameters.ParamByName('Interes').Value := dxmAnexosAmortizacionesInteres.AsExtended;
          adocUptAnexosAmrtizaciones.Parameters.ParamByName('InteresImpuesto').Value := dxmAnexosAmortizacionesInteresImpuesto.AsExtended;
          adocUptAnexosAmrtizaciones.Parameters.ParamByName('InteresTotal').Value := dxmAnexosAmortizacionesInteresTotal.AsExtended;
          adocUptAnexosAmrtizaciones.Parameters.ParamByName('ImpactoISR').Value := dxmAnexosAmortizacionesImpactoISR.AsExtended;
          adocUptAnexosAmrtizaciones.Parameters.ParamByName('PagoTotal').Value := dxmAnexosAmortizacionesPagoTotal.AsExtended;
          adocUptAnexosAmrtizaciones.Parameters.ParamByName('SaldoFinal').Value := dxmAnexosAmortizacionesSaldoFinal.AsExtended;
          adocUptAnexosAmrtizaciones.Parameters.ParamByName('IdAnexoAmortizacion').Value := dxmAnexosAmortizacionesIdAnexoAmortizacion.AsExtended;
          adocUptAnexosAmrtizaciones.Execute;
          dxmAnexosAmortizaciones.Next;
        end;
      end;
      acReducirPlazo: ;
    end;
    Result := True;
//  except on E: Exception do
//    Result := False;
//  end;
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
