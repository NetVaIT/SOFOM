unit ProcesosType;

interface


const
  _IMPUESTOS_IVA = 16.0;
  _MONEDAS_ID_DOLAR_USA = 51;
  _CONFIGURACION_DIAS_VIGENCIA = 30;
type
  TCTipoContrato = (tcNone, tcCreditoSimple, tcArrendamientoFinasnciero, tcArrendamientoPuro);
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

implementation

end.
