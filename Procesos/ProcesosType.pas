unit ProcesosType;

interface


const
  _CONFIGURACION_DIAS_VIGENCIA = 30;
  _MONEDAS_ID_DOLAR_USA = 51;
  _MONEDAS_ID_PESO_MXN = 106;
  _IMPUESTOS_IVA = 16.0;
  _PORCENTAJE_DEPRECIACION = 25.0;
  _PORCENTAJE_ISR = 30.0;
  _PORCENTAJE_KE = 18.0;
  _LISTAS_WEB = 'http://www.prevenciondelavado.com';
  _URLLogin = 'https://www.prevenciondelavado.com/portal/vsr/listas_interactivo.aspx?nm_accion=HomeProd&nm_origen=Home&cd_pais=mx';
  _LoginKey = 'carlosp6';
  _LoginPasswd = '9A02396F';
  _ExtensionPDF = '.PDF';

type
  TCTipoContrato = (tcNone, tcCreditoSimple, tcArrendamientoFinanciero, tcArrendamientoPuro);
  TCotizacionEstatus = (aeNone, aeAbierto, aeContratado, aeCerrado);
  TCFDITipoDocumento = (tdNone, tdFactura, tdNotaCredito, tdNotaCargo, tdCFDIPago);
  TAbonoCapital = (acReducirCuota, acReducirPlazo);
  TPLDAlertasTipos = (pldtNone, pldtRelevante, pldtInusual, pldtPreocupante);

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
