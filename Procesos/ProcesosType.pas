unit ProcesosType;

interface


const
  _CONFIGURACION_DIAS_VIGENCIA = 30;
  _MONEDAS_ID_DOLAR_USA = 51;
  _IMPUESTOS_IVA = 16.0;
  _PORCENTAJE_DEPRECIACION = 25.0;
  _PORCENTAJE_ISR = 30.0;
  _PORCENTAJE_KE = 18.0;

type
  TCTipoContrato = (tcNone, tcCreditoSimple, tcArrendamientoFinanciero, tcArrendamientoPuro);
  TCotizacionEstatus = (aeNone, aeAbierto, aeContratado, aeCerrado);

  TAbonoCapital = (acReducirCuota, acReducirPlazo);

  TAmortizacion = record
  Periodo: Integer;
  FechaCorte: TDateTime;
  FechaVencimiento: TDateTime;
  TasaAnual: Extended;
  SaldoInicial: Extended;
  Capital: Extended;
  CapitalImpuesto: Extended;
  CapitalTotal: Extended;
  Interes: Extended;
  InteresImpuesto: Extended;
  InteresTotal: Extended;
  ImpactoISR: Extended;
  Pago: Extended;
  PagoTotal: Extended;
  SaldoFinal: Extended;
  end;

  TCapitalMes = record
  Anio: Word;
  Meses: Word;
  CapitalTotal: Extended;
  end;

  TCapitalMeses = Array of TCapitalMes;

implementation

end.
