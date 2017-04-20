unit PagosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, System.Actions,
  Vcl.ActnList,Data.Win.ADODB, math, dialogs,ProcesosType;

type
  TdmPagos = class(T_dmStandar)
    adodsMasterIdPago: TAutoIncField;
    adodsMasterIdBanco: TIntegerField;
    adodsMasterIdPersonaCliente: TIntegerField;
    adodsMasterIdCuentaBancariaEstadoCuenta: TIntegerField;
    adodsMasterFechaPago: TDateTimeField;
    adodsMasterFolioPago: TIntegerField;
    adodsMasterSeriePago: TStringField;
    adodsMasterReferencia: TStringField;
    adodsMasterImporte: TFMTBCDField;
    adodsMasterSaldo: TFMTBCDField;
    adodsMasterObservaciones: TStringField;
    ADOSPersonas: TADODataSet;
    ADODtStConfiguraciones: TADODataSet;
    ADODtStConfiguracionesUltimoFolioPago: TIntegerField;
    ADODtStConfiguracionesUltimaSeriePago: TStringField;
    ADoDtStBancos: TADODataSet;
    ADoDtStBancosIdBanco: TAutoIncField;
    ADoDtStBancosIdPaisBanco: TIntegerField;
    ADoDtStBancosIdentificador: TStringField;
    ADoDtStBancosNombre: TStringField;
    ADoDtStBancosDescripcion: TStringField;
    ADoDtStBancosSiglas: TStringField;
    adodsMasterBanco: TStringField;
    adodsMasterCliente: TStringField;
    ADODtStAplicacionesPagos: TADODataSet;
    ADODtStCXCPendientes: TADODataSet;
    ADODtStCxCDetallePend: TADODataSet;
    DSMaster: TDataSource;
    DSCXCPendientes: TDataSource;
    ADODtStCXCPendientesIdCuentaXCobrar: TAutoIncField;
    ADODtStCXCPendientesIdCuentaXCobrarEstatus: TIntegerField;
    ADODtStCXCPendientesIdPersona: TIntegerField;
    ADODtStCXCPendientesIdAnexosAmortizaciones: TIntegerField;
    ADODtStCXCPendientesIdAnexo: TIntegerField;
    ADODtStCXCPendientesFecha: TDateTimeField;
    ADODtStCXCPendientesImporte: TFMTBCDField;
    ADODtStCXCPendientesImpuesto: TFMTBCDField;
    ADODtStCXCPendientesInteres: TFMTBCDField;
    ADODtStCXCPendientesTotal: TFMTBCDField;
    ADODtStCXCPendientesSaldo: TFMTBCDField;
    ADODtStAplicacionesPagosIdPagoAplicacion: TIntegerField;
    ADODtStAplicacionesPagosIdPago: TIntegerField;
    ADODtStAplicacionesPagosIdCFDI: TLargeintField;
    ADODtStAplicacionesPagosIdPersonaCliente: TIntegerField;
    ADODtStAplicacionesPagosIdCuentaXCobrar: TIntegerField;
    ADODtStAplicacionesPagosFechaAplicacion: TDateTimeField;
    ADODtStAplicacionesPagosImporte: TFMTBCDField;
    ADODtStCxCDetallePendIdCuentaXCobrar: TIntegerField;
    ADODtStCxCDetallePendIdCuentaXCobrarTipo: TIntegerField;
    ADODtStCxCDetallePendIdentificador: TStringField;
    ADODtStCxCDetallePendImporte: TFMTBCDField;
    ADODtStCxCDetallePendSaldo: TFMTBCDField;
    ADODtstAplicacionesInternas: TADODataSet;
    DSAplicaciones: TDataSource;
    ADODtStCxCDetallePendIdCFDI: TLargeintField;
    ADODtStCxCDetallePendIdCFDIConcepto: TLargeintField;
    ADODtStCxCDetallePendimpconc: TFMTBCDField;
    ADODtStCxCDetallePendFase: TIntegerField;
    ADODtStCxCDetallePendTemporalidad: TStringField;
    ADODtStCxCDetallePendOrdenAplica: TIntegerField;
    ADODtStCxCDetallePendIdTipoContrato: TIntegerField;
    ADODtstAplicacionesInternasIDPagoAplicacionInterna: TIntegerField;
    ADODtstAplicacionesInternasIDPagoAplicacion: TIntegerField;
    ADODtstAplicacionesInternasIdCuentaXCobrarDetalle: TIntegerField;
    ADODtstAplicacionesInternasIDCFDI: TLargeintField;
    ADODtstAplicacionesInternasIDCFDIConcepto: TLargeintField;
    ADODtstAplicacionesInternasImporte: TFMTBCDField;
    ADOQryAuxiliar: TADOQuery;
    ADODtStSaldoPrioridad1: TADODataSet;
    ADODtStSaldoPrioridad1InteresMasIVA: TFMTBCDField;
    ADODtStCxCDetallePendIdCuentaXCobrarDetalle: TAutoIncField;
    ADODtStConceptoIVA: TADODataSet;
    ADODtStConceptoIVAacumulaACXC: TIntegerField;
    ADODtStConceptoIVAIVAde: TIntegerField;
    ADODtStConceptoIVAIdCFDI: TLargeintField;
    ADODtStConceptoIVAIDCFDIIVA: TLargeintField;
    ADODtStConceptoIVAIdCFDIConcepto: TLargeintField;
    ADODtStConceptoIVAimpconc: TFMTBCDField;
    ADODtStConceptoIVAIdCuentaXCobrar: TIntegerField;
    ADODtStConceptoIVAIdCuentaXCobrarDetalle: TIntegerField;
    ADODtStConceptoIVADescripCXC: TStringField;
    ADODtStConceptoIVAImporte: TFMTBCDField;
    ADODtStConceptoIVASaldo: TFMTBCDField;
    ADODtStConceptoIVAIdCuentaXCobrarTipo: TIntegerField;
    ADODtStConceptoIVAAcumula: TBooleanField;
    ADODtStConceptoIVAAcumulaAQuien: TIntegerField;
    ADODtStConceptoIVABaseIVA: TIntegerField;
    ADODtStConceptoIVAEsIVA: TBooleanField;
    ADODtStConceptoIVADescripTC: TStringField;
    ADODtStConceptoIVAIdTipoContrato: TIntegerField;
    ADODtStConceptoIVATemporalidad: TStringField;
    ADODtStConceptoIVAEstadoCuenta: TBooleanField;
    ADODtStConceptoIVAFacturar: TBooleanField;
    ADODtStConceptoIVAIdentificador: TStringField;
    ADODtStConceptoIVAOrdenAplica: TIntegerField;
    ADODtStConceptoIVAFase: TIntegerField;
    ADODtstMetodoPago: TADODataSet;
    ADODtstMetodoPagoIdMetodoPago: TIntegerField;
    ADODtstMetodoPagoIdentificador: TStringField;
    ADODtstMetodoPagoDescripcion: TStringField;
    ADODtstMetodoPagoExigeCuenta: TIntegerField;
    adodsMasterIdMetodoPago: TIntegerField;
    adodsMasterCuentaPago: TStringField;
    adodsMasterMetodoPago: TStringField;
    adodsMasterOrigenPago: TIntegerField;
    ADODtStCXCPendientesIdEstadoCuenta: TIntegerField;
    ADODtStCXCPendientesSaldoFactoraje: TFMTBCDField;
    ADODtStCxCDetallePendSaldoFactoraje: TFMTBCDField;
    ADODtStAplicacionesPagosImporteFactoraje: TFMTBCDField;
    ADODtstAplicacionesInternasImporteFactoraje: TFMTBCDField;
    ADODtStconsulta: TADODataSet;
    AutoIncField1: TAutoIncField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    DateTimeField1: TDateTimeField;
    FMTBCDField1: TFMTBCDField;
    FMTBCDField2: TFMTBCDField;
    FMTBCDField3: TFMTBCDField;
    FMTBCDField4: TFMTBCDField;
    FMTBCDField5: TFMTBCDField;
    IntegerField5: TIntegerField;
    FMTBCDField6: TFMTBCDField;
    ADODtStCxCDetallePendPagosAplicados: TFMTBCDField;
    ADODtStCxCDetallePendPagosAplicadosFactoraje: TFMTBCDField;
    ADODtStCxCDetallePendFacturar: TBooleanField;
    ADODtStCxCDetallePendAcumula: TBooleanField;
    ADODtStCxCDetallePendAcumulaAQuien: TIntegerField;
    ADODtStCxCDetallePendEsIVA: TBooleanField;
    ADODtStCxCDetallePendBaseIVA: TIntegerField;
    ADODtStCxCDetallePendEstadoCuenta: TBooleanField;
    ADODtStCxCDetallePendBaseMoratorios: TBooleanField;
    ADODtStCxCDetallePendEsMoratorios: TBooleanField;
    ADODtStCxCDetallePendacumulaACXC: TIntegerField;
    ADODtStCxCDetallePendIVAde: TIntegerField;
    ADODtStCxCDetallePendIDCFDIIVA: TLargeintField;
    ADODtStCxCDetallePendDescripCXC: TStringField;
    adopSetCXCUPMoratorio: TADOStoredProc;
    ADODtStPrefacturasCFDI: TADODataSet;
    ADODtStPrefacturasCFDIIdCFDI: TLargeintField;
    ADODtStPrefacturasCFDIIdCFDITipoDocumento: TIntegerField;
    ADODtStPrefacturasCFDIIdCFDIFormaPago: TIntegerField;
    ADODtStPrefacturasCFDIIdMetodoPago: TIntegerField;
    ADODtStPrefacturasCFDIIdMoneda: TIntegerField;
    ADODtStPrefacturasCFDIIdPersonaEmisor: TIntegerField;
    ADODtStPrefacturasCFDIIdPersonaReceptor: TIntegerField;
    ADODtStPrefacturasCFDIIdDocumentoCBB: TIntegerField;
    ADODtStPrefacturasCFDIIdDocumentoXML: TIntegerField;
    ADODtStPrefacturasCFDIIdDocumentoPDF: TIntegerField;
    ADODtStPrefacturasCFDIIdCFDIEstatus: TIntegerField;
    ADODtStPrefacturasCFDIIdCFDIFacturaGral: TLargeintField;
    ADODtStPrefacturasCFDIIdClienteDomicilio: TIntegerField;
    ADODtStPrefacturasCFDICuentaCte: TStringField;
    ADODtStPrefacturasCFDITipoCambio: TStringField;
    ADODtStPrefacturasCFDITipoComp: TStringField;
    ADODtStPrefacturasCFDISerie: TStringField;
    ADODtStPrefacturasCFDIFolio: TLargeintField;
    ADODtStPrefacturasCFDIFecha: TDateTimeField;
    ADODtStPrefacturasCFDILugarExpedicion: TStringField;
    ADODtStPrefacturasCFDISello: TStringField;
    ADODtStPrefacturasCFDICondPago: TStringField;
    ADODtStPrefacturasCFDINoCertificado: TStringField;
    ADODtStPrefacturasCFDICertificado: TStringField;
    ADODtStPrefacturasCFDISubTotal: TFloatField;
    ADODtStPrefacturasCFDIDescto: TFloatField;
    ADODtStPrefacturasCFDIMotivoDescto: TStringField;
    ADODtStPrefacturasCFDITotal: TFloatField;
    ADODtStPrefacturasCFDINumCtaPago: TStringField;
    ADODtStPrefacturasCFDICadenaOriginal: TStringField;
    ADODtStPrefacturasCFDITotalImpuestoRetenido: TFloatField;
    ADODtStPrefacturasCFDITotalImpuestoTrasladado: TFloatField;
    ADODtStPrefacturasCFDISaldoDocumento: TFloatField;
    ADODtStPrefacturasCFDIFechaCancelacion: TDateTimeField;
    ADODtStPrefacturasCFDIObservaciones: TStringField;
    ADODtStPrefacturasCFDIPorcentajeIVA: TFloatField;
    ADODtStPrefacturasCFDIEmailCliente: TStringField;
    ADODtStPrefacturasCFDIUUID_TB: TStringField;
    ADODtStPrefacturasCFDISelloCFD_TB: TStringField;
    ADODtStPrefacturasCFDISelloSAT_TB: TStringField;
    ADODtStPrefacturasCFDICertificadoSAT_TB: TStringField;
    ADODtStPrefacturasCFDIFechaTimbrado_TB: TDateTimeField;
    ADODtStPrefacturasCFDIIdCuentaXCobrar: TIntegerField;
    ADODtStPrefacturasCFDISaldoFactoraje: TFMTBCDField;
    ADODtStCFDIConceptosPref: TADODataSet;
    ADODtStCFDIConceptosPrefIdCFDI: TLargeintField;
    ADODtStCFDIConceptosPrefIdUnidadMedida: TIntegerField;
    ADODtStCFDIConceptosPrefCantidad: TFloatField;
    ADODtStCFDIConceptosPrefUnidad: TStringField;
    ADODtStCFDIConceptosPrefDescripcion: TStringField;
    ADODtStCFDIConceptosPrefNoIdentifica: TStringField;
    ADODtStCFDIConceptosPrefValorUnitario: TFMTBCDField;
    ADODtStCFDIConceptosPrefImporte: TFMTBCDField;
    ADODtStCFDIConceptosPrefIdCFDIConcepto: TLargeintField;
    ADODtStCFDIConceptosPrefIdCuentaXCobrarDetalle: TIntegerField;
    ADODtStDireccionesCliente: TADODataSet;
    ADODtStDireccionesClienteIdPersonaDomicilio: TAutoIncField;
    ADODtStDireccionesClienteIdPersona: TIntegerField;
    ADODtStDireccionesClienteIdDomicilio: TIntegerField;
    ADODtStDireccionesClienteIdDomicilioTipo: TIntegerField;
    ADODtStDireccionesClientePredeterminado: TBooleanField;
    ADODtStDireccionesClienteCalle: TStringField;
    ADODtStDireccionesClienteNoExterior: TStringField;
    ADODtStDireccionesClienteNoInterior: TStringField;
    ADODtStDireccionesClienteColonia: TStringField;
    ADODtStDireccionesClienteCodigoPostal: TStringField;
    ADODtStDireccionesClienteMunicipio: TStringField;
    ADODtStDireccionesClientePoblacion: TStringField;
    ADODtStDireccionesClienteEstado: TStringField;
    ADODtStDireccionesClientePais: TStringField;
    ADODtStDireccionesClienteDirCompleta: TStringField;
    DSPrefacturasCFDI: TDataSource;
    ADODtStCFDIImpuestosPref: TADODataSet;
    ADODtStCFDIImpuestosPrefIdCFDI: TLargeintField;
    ADODtStCFDIImpuestosPrefTipoImp: TStringField;
    ADODtStCFDIImpuestosPrefImpuesto: TStringField;
    ADODtStCFDIImpuestosPrefTasa: TFloatField;
    ADODtStCFDIImpuestosPrefImporte: TFloatField;
    ADODtStPersonaEmisor: TADODataSet;
    ADODtStPersonaEmisoridpersona: TAutoIncField;
    ADODtStPersonaEmisorRazonSocial: TStringField;
    ADODtStPersonaEmisorRFC: TStringField;
    ADODtStPersonaEmisorNumCtaPagoCliente: TStringField;
    ADODtStPersonaEmisorIdPersonaDomicilio: TAutoIncField;
    ADODtStPersonaEmisorIdDomicilio: TIntegerField;
    ADODtStPersonaEmisorIdDomicilioTipo: TIntegerField;
    ADODtStPersonaEmisorPredeterminado: TBooleanField;
    ADODtStPersonaEmisorCalle: TStringField;
    ADODtStPersonaEmisorNoExterior: TStringField;
    ADODtStPersonaEmisorNoInterior: TStringField;
    ADODtStPersonaEmisorColonia: TStringField;
    ADODtStPersonaEmisorCodigoPostal: TStringField;
    ADODtStPersonaEmisorMunicipio: TStringField;
    ADODtStPersonaEmisorPoblacion: TStringField;
    ADODtStPersonaEmisorEstado: TStringField;
    ADODtStPersonaEmisorPais: TStringField;
    ADODtStPersonaEmisorRegimenFiscalEmisor: TStringField;
    ADODtStPersonaEmisorIdMetodoPago: TIntegerField;
    ActGeneraPrefMoratorios: TAction;
    ADOSumaIVAMora: TADODataSet;
    ADODtStCXCPendientesSaldoDocumento: TFMTBCDField;
    ADODtStCXCPendientesSaldoFactorajeCFDI: TFMTBCDField;
    ADODtStCxCDetallePendsaldoDoc1: TFMTBCDField;
    ADODtStCxCDetallePendivaCFDI2: TFloatField;
    ADODtStCxCDetallePendSaldoDocumento: TFMTBCDField;
    ADODtStPagosAuxiliar: TADODataSet;
    ADODtStPagosAuxiliarIDPagoAuxiliarMora: TIntegerField;
    ADODtStPagosAuxiliarIdCuentaXCobrar: TIntegerField;
    ADODtStPagosAuxiliarIdCuentaXCobrarDetalle: TIntegerField;
    ADODtStPagosAuxiliarIDCFDI: TLargeintField;
    ADODtStPagosAuxiliarIDCFDIConcepto: TLargeintField;
    ADODtStPagosAuxiliarIDUsuario: TIntegerField;
    ADODtStPagosAuxiliarFecha: TDateTimeField;
    ADODtStPagosAuxiliarImporte: TFMTBCDField;
    ADODtStPagosAuxiliarEsCondonacion: TBooleanField;
    ADODtStPagosAuxiliarObservaciones: TStringField;
    DSAplicacionInterna: TDataSource;
    ADODtStPagosAuxiliarIdPagoAplicacionInterna: TIntegerField;
    ADODtStCXCDetalleDescto: TADODataSet;
    ADODtStCXCDetalleDesctoIdCuentaXCobrarDescuento: TAutoIncField;
    ADODtStCXCDetalleDesctoIdCuentaXCobrarDetalle: TIntegerField;
    ADODtStCXCDetalleDesctoIDUsuario: TIntegerField;
    ADODtStCXCDetalleDesctoIdCFDI: TLargeintField;
    ADODtStCXCDetalleDesctoFecha: TDateTimeField;
    ADODtStCXCDetalleDesctoMonto: TFMTBCDField;
    ADODtStCXCDetalleDesctoObservaciones: TStringField;
    DSCXCDetalle: TDataSource;
    ADODtStCxCDetallePendEsCapital: TBooleanField;
    ADODtStCxCDetallePendEsInteres: TBooleanField;
    ADODtStDetalleCXCMostrar: TADODataSet;
    ADODtStDetalleCXCMostrarIdCuentaXCobrarDetalle: TAutoIncField;
    ADODtStDetalleCXCMostrarIdCuentaXCobrar: TIntegerField;
    ADODtStDetalleCXCMostrarIdCuentaXCobrarTipo: TIntegerField;
    ADODtStDetalleCXCMostrarIdentificador: TStringField;
    ADODtStDetalleCXCMostrarDescripcion: TStringField;
    ADODtStDetalleCXCMostrarImporte: TFMTBCDField;
    ADODtStDetalleCXCMostrarPagosAplicados: TFMTBCDField;
    ADODtStDetalleCXCMostrarSaldo: TFMTBCDField;
    ADODtStDetalleCXCMostrarPagosAplicadosFactoraje: TFMTBCDField;
    ADODtStDetalleCXCMostrarSaldoFactoraje: TFMTBCDField;
    actAbonarCapital: TAction;
    adodsMasterIdContrato: TIntegerField;
    adodsMasterIdAnexo: TIntegerField;
    ADODtStAnexos: TADODataSet;
    adodsMasterAnexo: TStringField;
    ADODtStAnexosIdAnexo: TAutoIncField;
    ADODtStAnexosIdContrato: TIntegerField;
    ADODtStAnexosIdAnexoEstatus: TIntegerField;
    ADODtStAnexosIdentificador: TStringField;
    ADODtStAnexosDescripcion: TStringField;
    ADODtStAnexosFecha: TDateTimeField;
    ADODtStAnexosIdPersona: TIntegerField;
    DSPersonas: TDataSource;
    ADODtStAnexoSeleccion: TADODataSet;
    AutoIncField5: TAutoIncField;
    IntegerField11: TIntegerField;
    IntegerField12: TIntegerField;
    StringField4: TStringField;
    StringField5: TStringField;
    DateTimeField2: TDateTimeField;
    IntegerField13: TIntegerField;
    ADODtStCXCPendientesIdCuentaXCobrarBase: TIntegerField;
    ADODtStCXCPendientesIdCFDI: TLargeintField;
    ADODtStCXCPendientesEsMoratorio: TBooleanField;
    ADODtStAnexoMoratorios: TADODataSet;
    ADODtStAnexoMoratoriosIdAnexoAmortizacion: TIntegerField;
    ADODtStAnexoMoratoriosIdAnexoMoratorioEstatus: TIntegerField;
    ADODtStAnexoMoratoriosIdCuentaXCobrar: TIntegerField;
    ADODtStAnexoMoratoriosFecha: TDateTimeField;
    ADODtStAnexoMoratoriosImporteBase: TFMTBCDField;
    ADODtStAnexoMoratoriosImporte: TFMTBCDField;
    ADODtStAnexoMoratoriosDescuento: TFMTBCDField;
    ADODtStAnexoMoratoriosImpuesto: TFMTBCDField;
    ADODtStAnexoMoratoriosImporteAplicado: TFMTBCDField;
    DetallesCXCParaFacturarMora: TADODataSet;
    DetallesCXCParaFacturarMoraIdCuentaXCobrar: TIntegerField;
    DetallesCXCParaFacturarMoraIdCuentaXCobrarTipo: TIntegerField;
    DetallesCXCParaFacturarMoraIdentificador: TStringField;
    DetallesCXCParaFacturarMoraDescripcion: TStringField;
    DetallesCXCParaFacturarMoraImporte: TFMTBCDField;
    DetallesCXCParaFacturarMoraSaldo: TFMTBCDField;
    DetallesCXCParaFacturarMoraFacturar: TBooleanField;
    DetallesCXCParaFacturarMoraIdTipoContrato: TIntegerField;
    DetallesCXCParaFacturarMoraEsIVA: TBooleanField;
    DetallesCXCParaFacturarMoraTemporalidad: TStringField;
    DetallesCXCParaFacturarMoraIdCuentaXCobrarDetalle: TAutoIncField;
    DetallesCXCParaFacturarMoraEsMoratorios: TBooleanField;
    ADODtStCXCPendientesFechaVencimiento: TDateTimeField;
    ADOPActualizaTotalesCXC: TADOStoredProc;
    adoqAnexosSel: TADOQuery;
    adoqAnexosSelIdContrato: TAutoIncField;
    adoqAnexosSelIdPersona: TIntegerField;
    adoqAnexosSelIdContratoTipo: TIntegerField;
    adoqAnexosSelIdAnexo: TAutoIncField;
    adoqAnexosSelContrato: TStringField;
    adoqAnexosSelAnexo: TStringField;
    adoqAnexosSelCliente: TStringField;
    adoqAnexosSelSaldoInsoluto: TFMTBCDField;
    adopCXCAbonarCapital: TADOStoredProc;
    actCrearCXCAbonoCapital: TAction;
    ActAjusteAmortiza: TAction;
    procedure adodsMasterNewRecord(DataSet: TDataSet);
    procedure adodsMasterAfterPost(DataSet: TDataSet);
    procedure adodsMasterBeforePost(DataSet: TDataSet);
    procedure adodsMasterAfterCancel(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure adodsMasterAfterOpen(DataSet: TDataSet);
    procedure ADODtStAplicacionesPagosNewRecord(DataSet: TDataSet);
    procedure ADODtStAplicacionesPagosAfterPost(DataSet: TDataSet);
    procedure ADODtstAplicacionesInternasAfterPost(DataSet: TDataSet);
    procedure ActGeneraPrefMoratoriosExecute(Sender: TObject);
    procedure ADODtStCFDIConceptosPrefAfterPost(DataSet: TDataSet);
    procedure ADODtStPrefacturasCFDINewRecord(DataSet: TDataSet);
    procedure ADODtStPrefacturasCFDIAfterOpen(DataSet: TDataSet);
    procedure ADODtStCFDIConceptosPrefNewRecord(DataSet: TDataSet);
    procedure ADODtStPagosAuxiliarNewRecord(DataSet: TDataSet);
    procedure actAbonarCapitalExecute(Sender: TObject);
    procedure adodsMasterBeforeInsert(DataSet: TDataSet);
    procedure actCrearCXCAbonoCapitalExecute(Sender: TObject);
    procedure ActAjusteAmortizaExecute(Sender: TObject);
  private
    { Private declarations }
    Inserto:Boolean;
    FFacturando: boolean;
    FIdAnexo: integer;
    FImporteAct: Extended;
    FFechaAct: TDateTime;
    FTipocontrato: integer;
    FTipoAbono: TAbonoCapital;
    FIdCFDIActual: Integer;
    FPaymentTime: TPaymentTime;
    function ActualizaSaldoCliente(IDCFDI, IDPagoRegistro: Integer;
      Importe: Double; operacion: String): Boolean;
    function SacaIDSiAcumula(IdCXCD: integer; var saldoAcum: Double): Integer;
    function VerificarConceptoIVA(idCXC, orden: Integer;
      var SaldoAcum: Double; var IdCXCDet, IDCXCIVADET:Integer): boolean;
    function VerificaDetalle(ADAtos: TAdoDAtaset; tipo: integer): Boolean;
    function SacaDireccion(IDCliente: Integer): Integer;
    function SacaTipoComp(TipoDoc: Integer): String;
    procedure Facturar(IDCFDIGen: Integer; var CFDICreado: Boolean;
      IDGenTipoDoc: integer);
    function EncuentraFacturaconSaldo(var IdEstado, IDCFDIAct: Integer; idcxc: Integer;
      Valor: Double): Boolean;
    function ActualizaEstatusCXC(idCxC, IdCFDIAct: Integer): Boolean;
    function AplicarMoratorioInterno(idCXC: integer;
      ImporteAplicado: Double): Double;
    procedure SetFFechaAct(const Value: TDateTime);
    procedure SetFIdAnexo(const Value: integer);
    procedure SetFImporteAct(const Value: Extended);
    function CrearCXCAbono(IdAnexo: Integer; Fecha: TDateTime;
      Importe: Double): Integer;
    procedure SetFTipoAbono(const Value: TAbonoCapital);
    procedure SetFTipocontrato(const Value: integer);
    function CrearFacturaCXC(IdCXC: Integer): Integer;
    procedure SetFIdCFDIActual(const Value: Integer);
    function AplicaPago(idPago,IdCxc, IDCFDI:Integer;Monto:Double):Boolean;
    function AjustarAmortizaciones(IdAnexo, IdTipoContrato: Integer;
      Importe: Extended; Tipo: TAbonoCapital; Fecha:TDateTime): Boolean;
    procedure SetPaymentTime(const Value: TPaymentTime);
    function FechaSinHora(FechaHora: TDAteTime): TDAteTime;
    procedure RegistraBitacora(tipoRegistro: Integer;Observacion:String); //Abr 19/17
    property PaymentTime: TPaymentTime read FPaymentTime write SetPaymentTime;
  public
    { Public declarations }
    Property Facturando:boolean read FFacturando write FFacturando; //Feb 8/17
    property idAnexoAct: integer read  FIdAnexo write  SetFIdAnexo; //Abr 17/17
    property FechaAct: TDateTime read  FFechaAct write  SetFFechaAct; //Abr 17/17
    property ImporteAct: Extended read  FImporteAct write  SetFImporteAct; //Abr 17/17

    property TipoContrato: integer read  FTipocontrato write  SetFTipocontrato; //Abr 18/17
    Property TipoAbono: TAbonoCapital  read  FTipoAbono write  SetFTipoAbono; //Abr 18/17

     Property IDCFDIActual: Integer  read  FIdCFDIActual write  SetFIdCFDIActual; //Abr 18/17


  end;

var
  dmPagos: TdmPagos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses PagosForm, FacturasDM, _ConectionDmod, AbonarCapitalDM, AbonarCapitalEdit,
  AmortizacionesDM;

{$R *.dfm}

procedure TdmPagos.adodsMasterAfterCancel(DataSet: TDataSet);
begin
  inherited;
  inserto:=False;
end;

procedure TdmPagos.adodsMasterAfterOpen(DataSet: TDataSet);
begin
  inherited;
  ADODtStAplicacionesPagos.Open;
  ADODtStCXCPendientes.Open;
  ADODtStCxCDetallePend.Open;
  ADODtStConfiguraciones.Open;
  ADoSPersonas.Open;
end;

procedure TdmPagos.adodsMasterAfterPost(DataSet: TDataSet);
var SErieAct:String;
    FolioAct:Integer;
begin
  inherited;
  //Verificar si aca
  if Inserto then
  begin
    SerieAct:= adoDSMaster.FieldByName('SeriePago').AsString;
    FolioAct:= adoDSMaster.FieldByName('FolioPago').AsInteger;
    ADODtStConfiguraciones.Edit;
    ADODtStConfiguraciones.FieldByName('UltimaSeriePago').AsString:=SerieAct;
    ADODtStConfiguraciones.FieldByName('UltimoFolioPago').AsInteger :=FolioAct;
    ADODtStConfiguraciones.Post;
  end;
end;
procedure TdmPagos.adodsMasterBeforeInsert(DataSet: TDataSet);
const      // mar 10/17
   TxtSQL='select  IdPago, IdBanco, IdPersonaCliente, IdCuentaBancariaEstadoCuenta, '+
   'FechaPago, FolioPago, SeriePago, Referencia, Importe, Saldo,Observaciones,'+
   'IdMetodoPago, CuentaPago, OrigenPago,IdContrato, IdAnexo from Pagos';

var Txt:String;
begin
  Txt:=   Tadodataset(adodsMaster).CommandText;
  if pos('inner ',Txt)>0 then
  begin
    Tadodataset(adodsMaster).Close;
    Tadodataset(adodsMaster).CommandText:=TxtSQL;
    Tadodataset(adodsMaster).open;
  end;
  inherited;

end;

procedure TdmPagos.adodsMasterBeforePost(DataSet: TDataSet);
begin
  inherited;
  Inserto:=dataset.state=dsInsert;
  if dataset.State = dsInsert then
  begin
    adodsMaster.FieldByName('Saldo').Value:=adodsMaster.FieldByName('Importe').Value;  //Se debe usar value cuando tiene mas de 4 decimales para que no lo redondee.. sino no quedan iguales
  end;
end;

procedure TdmPagos.adodsMasterNewRecord(DataSet: TDataSet);
var SErieAct:String;
    FolioAct:Integer;
begin  //Pagos
  inherited;

  DataSet.FieldByName('FechaPago').AsDateTime:=Date; //Era now Abr 18/17
  SerieAct:= ADODtStConfiguraciones.FieldByName('UltimaSeriePago').AsString;
  FolioAct:= ADODtStConfiguraciones.FieldByName('UltimoFolioPago').AsInteger;
  DataSet.FieldByName('SeriePago').AsString:=SerieAct;
  DataSet.FieldByName('FolioPago').asInteger:=FolioAct+1;  (*  // verificar donde para que no se repitan los numeros deshabilitado FEb 8/17*)
  //VEr que pasa si se usan iguales



end;

procedure TdmPagos.ADODtstAplicacionesInternasAfterPost(DataSet: TDataSet);
var
  CampoSaldo,CampoImporte, CampoSaldoCFDi,CampoPagoAplicado:String;//Ene 13/17
begin
  inherited;
  if adodsMaster.FieldByName('origenPAgo').AsInteger=1 then      //Ene 13/17
  begin
    camposaldo:='SaldoFactoraje';
    campoimporte:='ImporteFactoraje';
    CampoSaldoCFDi:='SaldoFactoraje';
    CampoPagoAplicado:='PagosAplicadosFactoraje'; //Ene 16/17 Para Saldos en CXCdetalle

  end
  else
  begin  //Normal
    camposaldo:='Saldo';
    campoimporte:='Importe';
    CampoSaldoCFDi:='SaldoDocumento';
    CampoPagoAplicado:='PagosAplicados'; //Ene 16/17 Para Saldos en CXCdetalle
  end;

  //Si tiene IDCFDI debe actualizar Saldo Factura..    y tambien actualizar el sldo del detalle    //Dic 12/16
  if not DAtaSEt.FieldByName('IDCFDI').isnull then
  begin
    //Actualiza CFDI
     if adodsMaster.FieldByName('origenPAgo').AsInteger=0 then  //Es normal  //FEb 10/17  antes porque sino el saldo es diferente al factoraje
    begin //Aplicar en FActoraje
      ADOQryAuxiliar.Close;
      ADOQryAuxiliar.SQL.Clear;
      ADOQryAuxiliar.SQL.Add('UPDATE CFDI SET SaldoFactoraje = SaldoFactoraje - '+DataSet.FieldByName(campoimporte).AsString
                          +' where SaldoFactoraje = SaldoDocumento and IDCFDI='+DAtaSEt.FieldByName('IDCFDI').ASString  );
      ADOQryAuxiliar.ExecSQL;


    end;

    ADOQryAuxiliar.Close;
    ADOQryAuxiliar.SQL.Clear;         //Verificar que cambia && ene 13 /17
  //  ADOQryAuxiliar.SQL.Add('UPDATE CFDI SET SALDODocumento=SALDODocumento - '+DataSet.FieldByName('Importe').AsString
    ADOQryAuxiliar.SQL.Add('UPDATE CFDI SET '+CampoSaldoCFDi+'='+CampoSaldoCFDi+' - '+DataSet.FieldByName(campoimporte).AsString
                        +' where IDCFDI='+DAtaSEt.FieldByName('IDCFDI').ASString);
    ADOQryAuxiliar.ExecSQL;


  end;



  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.SQL.Clear;
  if camposaldo='Saldo' then //Normal modifica ambos Ene 16 /17   si los saldos factoraje y saldo son iguales , sino no.
  begin
    ADOQryAuxiliar.SQL.Add('UPDATE CuentasXCobrarDetalle SET SaldoFactoraje=SaldoFactoraje - '+DataSet.FieldByName(campoimporte).AsString
                          +' , PagosAplicadosFactoraje= PagosAplicadosFactoraje + '+DataSet.FieldByName(campoimporte).AsString    ///Para guardar lo que se lleva pagado Ene 16/17
                          +' where SaldoFactoraje=Saldo and IDCuentaXCobrarDetalle='+DAtaSEt.FieldByName('IDCuentaXCobrarDetalle').ASString); //Mod. dic 15/16
    ADOQryAuxiliar.ExecSQL;


    ADOQryAuxiliar.SQL.Clear;

   // ADOQryAuxiliar.SQL.Add('UPDATE CuentasXCobrarDetalle SET SALDO=SALDO - '+DataSet.FieldByName('Importe').AsString
    ADOQryAuxiliar.SQL.Add('UPDATE CuentasXCobrarDetalle SET '+camposaldo+'='+Camposaldo+' - '+DataSet.FieldByName(campoimporte).AsString
                          +' , ' +CampoPagoAplicado+'='+CampoPagoAplicado+' + '+DataSet.FieldByName(campoimporte).AsString    ///Para guardar lo que se lleva pagado Ene 16/17
                          +' where IDCuentaXCobrarDetalle='+DAtaSEt.FieldByName('IDCuentaXCobrarDetalle').ASString); //Mod. dic 15/16
    ADOQryAuxiliar.ExecSQL;

    //Actualizar PagosAplicacionInternaXProducto.    Abr 19/17
    ADOQryAuxiliar.SQL.Clear;
                             //S�lo se insertan aplicaciones internas, no se pueden modificar.
   ADOQryAuxiliar.SQL.Add(' Insert Into PagosAplicacionesInternasXProducto (idpagoAplicacionInterna, IdProducto, Importe) (  ' +
                          ' Select PAI.IDPagoAplicacionInterna,P.idProducto,(Pai.Importe *PorcentajeAnexo/100) as valorpagado ' +
                          ' from PagosAplicacionesInternas PAI inner join CuentasXCobrarDetalle CXCD on' +
                          ' PAI.IdCuentaXCobrarDetalle= CXCD.IdCuentaXCobrarDetalle' +
                          ' inner join CuentasXCobrar CXC on CXC.IdCuentaXCobrar =CXCD.IdCuentaXCobrar ' +
                          ' inner join Productos P on P.IdAnexo=CXC.IdAnexo' +
                          ' where PAI.IDPagoAplicacionInterna='+DataSet.fieldbyname('IDPagoAplicacionInterna').asstring+')');
    ADOQryAuxiliar.ExecSQL;

  end
  else  //Aca solo lo hace con factoraje, el de saldo queda igual.
  begin
    ADOQryAuxiliar.SQL.Add('UPDATE CuentasXCobrarDetalle SET '+camposaldo+'='+Camposaldo+' - '+DataSet.FieldByName(campoimporte).AsString
                          +' , ' +CampoPagoAplicado+'='+CampoPagoAplicado+' + '+DataSet.FieldByName(campoimporte).AsString    ///Para guardar lo que se lleva pagado Ene 16/17
                          +' where IDCuentaXCobrarDetalle='+DAtaSEt.FieldByName('IDCuentaXCobrarDetalle').ASString); //Mod. dic 15/16
    ADOQryAuxiliar.ExecSQL;

  end;  // DEbe estar en el correspondiente
  if ADODtStCxCDetallePendEsMoratorios.Value then //FEb 14/17 Para que guarde pagosAuxiliares de Moratorio
  begin
    ADODtStPagosAuxiliar.Open;
    ADODtStPagosAuxiliar.Insert;
    ADODtStPagosAuxiliarIdCuentaXCobrar.AsInteger:=  ADODtStCxCDetallePendidCuentaXCobrar.asInteger;
    ADODtStPagosAuxiliarIdCuentaXCobrarDetalle.asinteger:=  ADODtStCxCDetallePendIdCuentaXCobrarDetalle.AsInteger;
    if not DAtaSEt.FieldByName('IDCFDI').isnull  then //Siempre deberia tener
       ADODtStPagosAuxiliarIDCFDI.asinteger:= DAtaSEt.FieldByName('IDCFDI').AsInteger; //este tiene el CFDI ya sea de Concepto ao IVA
    if not DAtaSEt.FieldByName('IDCFDIConcepto').IsNull then
       ADODtStPagosAuxiliarIdCFDIConcepto.AsInteger:=  DAtaSEt.FieldByName('IDCFDIConcepto').AsInteger;
    ADODtStPagosAuxiliarImporte.value:=DataSet.FieldByName('IMPORTE').AsFloat;


    ADODtStPagosAuxiliar.Post;
  end;

  if ADODtStCxCDetallePendEsCapital.value then
  begin   //Feb 16/17
    //Identificar campo respectivo y actualizar...en anexo..
    AdoQryAuxiliar.Close;
    AdoQryAuxiliar.sql.Clear;                                       // que pasa si es factoraje .. ?????
    AdoQryAuxiliar.sql.Add('Update ANEXOS SET SaldoInsoluto = SaldoInsoluto- '+DataSet.FieldByName('IMPORTE').asstring
                          +', CapitalCobrado = CapitalCobrado + '+DataSet.FieldByName('IMPORTE').asstring
                          +' Where idAnexo='+ADODtStCXCPendientesIdAnexo.AsString ); //DEbe estat en ele correspondiente
    AdoQryAuxiliar.ExecSQL;
  end;



end;

procedure TdmPagos.ADODtStCFDIConceptosPrefAfterPost(DataSet: TDataSet);
var                             //Copiado de Mas
  idDocCFDI, IDDocItem, idImp:Integer;
  Subtotal,IVACal,TotalCal, IVAReg:Double; //Agregado ago 25/16
  Existe:Boolean;
begin
  inherited;  //Mar 29/16     //Verificar que no intertfiera con el  proceso normal de facturacion
  idImp:=-1;
  IVAreg:=0; //
  //Verificar si aca actualizar el item respectivo del detalle del documento
  IDDocItem:=DataSet.FieldByName('IDCFDIConcepto').AsInteger;
  idDocCFDI:=DataSet.FieldByName('IDCFDI').AsInteger;

  //Verificar si tiene conceptos de IVA .. Poner y no calcular, pero si no  calcular..//Ene 16/17
  ADOSumaIVAMora.Close;
  ADOSumaIVAMora.Parameters.ParamByName('IdCuentaXCobrar').Value:=ADODtStCXCPendientesIdCuentaXCobrar.AsInteger; // ya que no tierne mas campos ino la suma ene 28/17
  ADOSumaIVAMora.Open; // SE supone esta amarrado a la CuentaXCobrar
  if not ADOSumaIVAMora.eof then // Pendiente de terminar
  begin
    IVAReg:= ADOSumaIVAMora.fieldbyname('IVAREG').asFloat;
  end;
  IVACal:=IVAReg;

  //Siempre actualizar
  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.SQL.Clear;
  ADOQryAuxiliar.SQL.Add('Select Sum(Importe) as ValorST From CFDIConceptos where IDCFDI='+intToStr(idDocCFDI));
  ADOQryAuxiliar.open;

  Subtotal:= ADOQryAuxiliar.FieldByName('ValorST').AsFloat;

  TotalCal:=Subtotal+ IVAReg;
 (* //SE deshabilita no se rec<klcula

  IVACal:= subtotal*0.16;
  TotalCal:= Subtotal+IVACal; //subtotal*1.16 ;    //Ago 25/16

  //Ver si va a ir decto?? Nov 29/16
  if iVACAl <> IVAReg then
  begin
    if IVAREG>0 then
    begin
      TotalCal:=Subtotal+ IVAReg;
      IVACal:=IVAReg;
    end
    else
      Showmessage('El total de IVA registrado es 0 o negativo' + floatToStr(IVAREG));
    Showmessage('El total de IVA calculado no coincide con el registrado !') ;
  end;                               *)

  //Se usa siempre en registrado

  ADOQryAuxiliar.Close;                                                                                       //   subtotal*0.16
  ADOQryAuxiliar.SQL.Clear;                                                                                   //Tiene lo  mismo que IVAReg                               //  subtotal*1.16                      //  subtotal*1.16
  ADOQryAuxiliar.SQL.Add('UPDATE CFDI SET Subtotal='+FloattoSTR(subtotal)+' , TotalImpuestoTrasladado='+FloatToSTR(IVACal)+', Total='+FloatToSTR(TotalCal) +', SaldoDocumento='+FloatToSTR(TotalCal)
                          +', SaldoFactoraje='+FloatToSTR(TotalCal)+' where IDCFDI ='+IntToStr(idDocCFDI));
                          //Feb 9/17   No deberia tener saldo Factoraje
  ADOQryAuxiliar.ExecSQL;

  //Acualizar impuestos si no tiene Impuestos //Mar 30/16
  //Si existe actualizar si no existe crear en tabla de impuestos          //Ago 31/16

  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.SQL.Clear;
  ADOQryAuxiliar.SQL.Add('SElect * from  CFDIImpuestos where IDCFDI ='+IntToStr(idDocCFDI)
                         +' and TipoImp=''Trasladado'' and Impuesto=''IVA''');
  ADOQryAuxiliar.Open;

  if not ADOQryAuxiliar.eof then//No existe
    idImp:=ADOQryAuxiliar.FieldByName('IDCFDIImpuesto').AsInteger;
    // Mar 31/16
  if idImp=-1 then //No existe
  begin
    ADOQryAuxiliar.Close;
    ADOQryAuxiliar.SQL.Clear;
    ADOQryAuxiliar.SQL.Add('Insert into CFDIImpuestos (IDCFDI, TipoIMP,Impuesto, Tasa, Importe) VAlues('
                          +IntToStr(idDocCFDI) +', ''Trasladado'', ''IVA'', 16, '+FloatToSTR(IVACal)+')');
    ADOQryAuxiliar.ExecSQL;                                                                 //  subtotal*0.16 Ago 30 /16 ajustado
  end
  else
  begin
    ADOQryAuxiliar.Close;
    ADOQryAuxiliar.SQL.Clear;
    ADOQryAuxiliar.SQL.Add('UPDATE CFDIImpuestos SET Importe='+FloatToSTR(IVACal)   //subtotal*0.16
                            +' where IDCFDIImpuesto ='+IntToStr(idImp));
    ADOQryAuxiliar.ExecSQL;
  end;  //Hasta aca
  ADODtStPrefacturasCFDI.Refresh;

end;

procedure TdmPagos.ADODtStCFDIConceptosPrefNewRecord(DataSet: TDataSet);
begin
  inherited;
  dataset.FieldByName('IDUnidadMedida').AsInteger:=2; //NA
  dataset.FieldByName('Unidad').AsString:='NA';
  dataset.FieldByName('Cantidad').AsFloat:=1;
end;

procedure TdmPagos.ADODtStPagosAuxiliarNewRecord(DataSet: TDataSet);
begin            //FEb 14/17
  inherited;
  dataset.FieldByName('Fecha').asdatetime:=now;
  dataset.FieldByName('IdUsuario').AsInteger:= _DMConection.idUsuario;
  dataset.FieldByName('IdPagoAplicacionInterna').AsInteger:= ADODtstAplicacionesInternasIDPagoAplicacionInterna.AsInteger; //Verificar que lo ponga feb 14/17
end;

procedure TdmPagos.ADODtStPrefacturasCFDIAfterOpen(DataSet: TDataSet);
begin
  inherited;
  adodtstPersonaEmisor.open;

end;

procedure TdmPagos.ADODtStPrefacturasCFDINewRecord(DataSet: TDataSet);
var cuenta:String;
    idPersonaDomi:Integer; //Ene 29/17
begin
  inherited;
 try
  DataSet.FieldByName('IDCFDIEstatus').AsInteger:=1; //Prefactura
                                                       //Modificado Mar 29/16
  DataSet.FieldByName('IDCFDITipoDocumento').AsInteger:=1; //Factura    //ADODtSTOrdenSalida.fieldByname('IdGeneraCFDITipoDoc').ASInteger;//Mod. Mar 28/16
                                            //Verificar que se tenga Mar 31/16
  DataSet.FieldByName('TipoComp').AsString:=SacaTipoComp(1); //DataSet.FieldByName('TipoComprobante').AsString;//'ingreso'; //columna TipoComprobante de Tabla CFDItipoDocumento
  //Verificar si serie yFolio se colocan aca o se colocan justo antes de generar el CFDI
  DataSet.FieldByName('Folio').AsInteger:=0; //Sin asignar aun
  DataSet.FieldByName('Fecha').AsDateTime:=now; //Se supondr�a que se van a generar inmediatamente pero hay que verificar(por si se requiere cambio de fecha antes de generar)
  DataSet.FieldByName('LugarExpedicion').AsString:=ADODtStPersonaEmisorMunicipio.Value +', '+ADODtStPersonaEmisorEstado.Value;//'Zapopan, Jalisco' ; //Verificar si se saca de  la direccion del emisor?

// DataSet.FieldByName('Serie').AsString:=
  DataSet.FieldByName('IdCFDIFormaPago').AsInteger :=1;
  DataSet.FieldByName('IDMoneda').AsInteger:=106;
  DataSet.fieldbyname('TipoCambio').AsInteger:=1; //Jun 27/16


  DataSet.FieldByName('IdPersonaEmisor').AsInteger:=ADODtStPersonaEmisoridpersona.AsInteger; //Debe estar abierta y debe tener una direccion fiscal
  //DE CuentasXCobrar
  DataSet.FieldByName('IdPersonaReceptor').AsInteger:=  adodtstCXCPendientesIdPersona.AsInteger; //El del CXC
  idPersonaDomi:= SacaDireccion(adodtstCXCPendientesIdPersona.AsInteger);//Ene 29/17
  if IDpersonaDomi<>-1 then
     DataSet.FieldByName('IdClienteDomicilio').AsInteger:= IDpersonaDomi;// SacaDireccion(adodsMasterIdPersona.AsInteger); // Ver si no tiene que pasa.... Dic 6/16   (Truena no lo deja crear)

  DataSet.FieldByName('IDMetodoPago').AsInteger:= AdoDSMasteridmetodoPago.asinteger;//feb 8/17 Aca debe ser el metodo de pago del pago; //  DataSet.FieldByName('IDMetodoPago').AsInteger:=5; //Otros  si no tiene
  if AdoDSMasterCuentaPago.Value <>'' then    //La del pago
     DataSet.FieldByName('NumCtaPago').asString:= AdoDSMasterCuentaPago.Value;
  DataSet.FieldByName('IdCuentaXCobrar').AsInteger:=  adodtstCXCPendientesIdCuentaXCobrar.AsInteger;  //Ajustado Ene 12/17 idcxc

  Except
    Raise;
  end;
end;

procedure TdmPagos.actAbonarCapitalExecute(Sender: TObject);
var
  dmAbonarCapital: TdmAbonarCapital;
begin
  inherited;
  dmAbonarCapital := TdmAbonarCapital.Create(Self);
  try
    dmAbonarCapital.Execute;
  finally
    dmAbonarCapital.Free;
  end;
end;

procedure TdmPagos.ActAjusteAmortizaExecute(Sender: TObject);
var
  LaFEcha:TdateTime;
  IDcxc:Integer;
  ObsBitacora:String;
begin       //SE debe eliminar luego Abr 20/17 Para prueba parcial
(*  inherited;
  LAFecha:=EncodeDAte(2017,4,19);
  TipoAbono:=TAbonoCapital(ord( Ord(acReducirCuota)));
  IdCXC:=206;
  if  AjustarAmortizaciones(17,2,3173.7226,TipoAbono,Lafecha ) then //Ajustar Amortizacion
          begin                                                                                    //Abr 19/17
            ADODtStCXCPendientes.Close;
            ADODtStCXCPendientes.Open;
            ADODtStCXCPendientes.Locate('IdCuentaXCobrar', IDCXC,[]);
            adodsMaster.Refresh; //Pago
            //REgistrar en bitacora el abono a CApital
            ObsBitacora:='Fecha:'+datetoSTr(LaFecha)+' IdAnexo: '+intToSTR(17)+' IdCXC:'+ intToStr(idcxc)
                        +' Importe:'+floatToStr(3173.7226)+' TipoAbono:'+ intToStr(2);
            RegistraBitacora(2,ObsBitacora);
            ShowMessage('Proceso completo de Abono a Capital auxiliar');
     //     end;
     *)
end;

procedure TdmPagos.actCrearCXCAbonoCapitalExecute(Sender: TObject);
var
  frmAbonarCapitalEdit: TfrmAbonarCapitalEdit;
  //IdAnexo,IdTipoContrato:Integer;
  IDCXC:Integer;
  ObsBitacora:String;
begin
  inherited;
  IdAnexoAct:=adodsMasterIdAnexo.AsInteger;
  FechaAct:= FechaSinHora(adodsMasterFechaPago.AsDateTime);
  ImporteAct := adodsMasterSaldo.AsExtended; //Saldo del pago

  IdCFDIActual:=-1; //Para inicializarla
  adoqAnexosSel.Close;
  adoqAnexosSel.Parameters.ParamByName('IdAnexo').Value:= IdanexoAct;    //Abr 17/17
  adoqAnexosSel.Open;
  frmAbonarCapitalEdit := TfrmAbonarCapitalEdit.Create(Self);
  try
    frmAbonarCapitalEdit.DataSet:= adoqAnexosSel;
    frmAbonarCapitalEdit.Fecha := FechaAct; //Date;  //Abr 17/17
    frmAbonarCapitalEdit.Importe := Importeact; //0;  //Abr 17/17
    frmAbonarCapitalEdit.Tipo:= Ord(acReducirCuota);
    if frmAbonarCapitalEdit.Execute then
    begin
      IdAnexoAct := adoqAnexosSelIdAnexo.Value;
      TipoContrato := adoqAnexosSelIdContratoTipo.Value;
      TipoAbono:=TAbonoCapital(frmAbonarCapitalEdit.Tipo);

      IdCXC:= CrearCXCAbono(IdAnexoAct,frmAbonarCapitalEdit.Fecha,frmAbonarCapitalEdit.Importe);
      if IDCXC<>0 then
        IdCFDIActual:= CrearFacturaCXC(IDCXC); //Aunque ya lo trae
      if IdCFDIActual<>-1 then
        if AplicaPago(adodsMasterIdPago.AsInteger,idcxc,idcfdiactual,frmAbonarCapitalEdit.Importe) then
          if  AjustarAmortizaciones(IdAnexoAct,TipoContrato,frmAbonarCapitalEdit.Importe,TipoAbono,frmAbonarCapitalEdit.Fecha ) then //Ajustar Amortizacion
          begin                                                                                    //Abr 19/17
            ADODtStCXCPendientes.Close;
            ADODtStCXCPendientes.Open;
            ADODtStCXCPendientes.Locate('IdCuentaXCobrar', IDCXC,[]);
            adodsMaster.Refresh; //Pago
            //REgistrar en bitacora el abono a CApital
            ObsBitacora:='Fecha:'+datetoSTr(frmAbonarCapitalEdit.Fecha)+' IdAnexo: '+intToSTR(IdAnexoAct)+' IdCXC:'+ intToStr(idcxc)
                        +' Importe:'+floatToStr(frmAbonarCapitalEdit.Importe)+' TipoAbono:'+ intToStr(frmAbonarCapitalEdit.Tipo);
            RegistraBitacora(2,ObsBitacora);
            ShowMessage('Proceso completo de Abono a Capital');
          end;
    end;
  finally
    frmAbonarCapitalEdit.Free;
    adoqAnexosSel.Close;
  end;
end;

Procedure TdmPagos.RegistraBitacora(tipoRegistro:Integer;Observacion:String); //Abr 19/17
var
   tipoTxt:String;
   REsp:Integer;
begin
  case TipoRegistro of
  0:  tipoTxt:='CXC';
  1:  tipoTxt:='MORA';
  2:  tipoTxt:='ABOCAP'; //Abr 19/17
  end;

  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.SQL.Clear;
  ADOQryAuxiliar.sql.Add('Insert into BitacoraGeneracion (Tipo, FechaGeneracion, IdUsuario, Observaciones) Values('''+tipotxt+''',:IdFechaHoy1, '  +
                         intToSTR(_DMConection.idUsuario)+','''+Observacion+''' ) ' );
  ADOQryAuxiliar.Parameters.ParamByName('IdFechaHoy1').Value:=date;

  Resp:=ADOQryAuxiliar.ExecSQL;
//  if Resp=1 then
  //  showmessage('Lo cre�');
  AdodsMaster.Refresh;
end;

function TdmPagos.FechaSinHora( FechaHora:TDAteTime):TDAteTime;
var
  d,m,a:Word;
begin
  Decodedate(FechaHora, a,m, d);
  Result:=EncodeDAte(a,m,d);
end;


function TdmPagos.AjustarAmortizaciones (IdAnexo, IdTipoContrato: Integer;
  Importe: Extended; Tipo: TAbonoCapital;Fecha:TDateTime):Boolean;   //Abr 18/17
var
   dmAmortizaciones: TdmAmortizaciones;
begin
  dmAmortizaciones := TdmAmortizaciones.Create(Self);
    try
      dmAmortizaciones.PaymentTime := PaymentTime;
      dmAmortizaciones.TipoContrato:= TCTipoContrato(IdTipoContrato);
      Result := dmAmortizaciones.SetAmortizaciones(IdAnexo, Importe, Tipo, Fecha);
    finally
      dmAmortizaciones.Free;
    end;
end;
function TdmPagos.CrearCXCAbono(IdAnexo: Integer;Fecha:TDateTime; Importe: Double ):Integer;  //abr 18/17
var IdCuentaXCobrar:Integer;
begin
  IdCuentaXCobrar:=0;
  adopCXCAbonarCapital.Parameters.ParamByName('@IdAnexo').Value := IdAnexo;
  adopCXCAbonarCapital.Parameters.ParamByName('@Fecha').Value := Fecha;
  adopCXCAbonarCapital.Parameters.ParamByName('@ImporteCapital').Value := Importe;
  adopCXCAbonarCapital.ExecProc;
  IdCuentaXCobrar := adopCXCAbonarCapital.Parameters.ParamByName('@IdCuentaXCobrar').Value;
  REsult:=IdCuentaXCobrar;
end;

Function TdmPagos.CrearFacturaCXC(IdCXC:Integer):Integer; //Abr 18/17 Regresa IDCFDI
begin
  ADODtStCXCPendientes.Close;
  ADODtStCXCPendientes.Open;
  if ADODtStCXCPendientes.Locate('IdCuentaXCobrar',IdCXC,[]) then
  begin
    ActGeneraPrefMoratorios.Execute; //Crea y timbra
    result:=IdCFDIActual;
  end;
  //No deberia haber dos Facturas de la misma CXC

end;

procedure TdmPagos.ActGeneraPrefMoratoriosExecute(Sender: TObject);
var
  idCFDIMora,IDCFDIEnc:Integer;        //Abr 18/17 se va a usar tambien para Abono acapital
  CFDIcreado:Boolean;
  Estado:Integer;//Feb 13/17
begin
  inherited;
  idCFDIMora:=-1;
  IDCFDIEnc:=-1;
  DetallesCXCParaFacturarMora.Open;
  //Abr 5/27 deberia ser una factura normal de CXC
// CXCMoratoriosParaFacturar.Open;

  //if CXCMoratoriosParaFacturar.eof then
  if not DetallesCXCParaFacturarMora.eof then
  begin
   ////Feb 13/17                          //Abr 17/17
    if Not EncuentraFacturaconSaldo(Estado,IDCFDIEnc,DetallesCXCParaFacturarMora.FieldByName('IdCuentaXCobrar').AsInteger, DetallesCXCParaFacturarMora.FieldByName('Saldo').AsFloat)  then
    begin
     //Crear encabezado con datos de cliente
      //Recorrer Detalles para crearconceptos seg�n datos
      ADODtStPrefacturasCFDI.open;
      ADODtStCFDIConceptosPref.open;
      ADODtStPrefacturasCFDI.Insert; //ver que va en el evento..
      ADODtStPrefacturasCFDI.Post;
      idCFDIMora:=  ADODtStPrefacturasCFDIIdCFDI.AsInteger; //FEb 8/17
      DetallesCXCParaFacturarMora.First;  //CXCMoratoriosParaFacturar

      while not DetallesCXCParaFacturarMora.Eof do  //CXCMoratoriosParaFacturar
      begin   //ya esta filtrado por moratorios
        ADODtStCFDIConceptosPref.Insert;
        ADODtStCFDIConceptosPrefDescripcion.AsString:= DetallesCXCParaFacturarMora.fieldbyname('Descripcion').asString;
        ADODtStCFDIConceptosPrefIdCuentaXCobrarDetalle.AsInteger:=DetallesCXCParaFacturarMora.fieldbyname('IDCuentaXCobrarDEtalle').AsInteger;  //Sin a Dic 7/16
        ADODtStCFDIConceptosPrefValorUnitario.AsFloat:= DetallesCXCParaFacturarMora.fieldbyname('Saldo').asFloat;  // abr 7/17 se cambio por saldo feb 13/17 Se cambio por el SaldoPendiente que es la resta de importe y pagoAplicado  ya que si habia anteriores pagados el importe es diferente

        ADODtStCFDIConceptosPrefImporte.AsFloat:= DetallesCXCParaFacturarMora.fieldbyname('Saldo').AsFloat;  // abr 7/17 se cambio por saldo

        ADODtStCFDIConceptosPref.Post; //ver si ahi esta el calculo de los IVA //Hasta aca eb 5/17

        DetallesCXCParaFacturarMora.Next;   //DEbe ser s�lo uno
      end;
    end;

   //SE debe actualizar pero No con el AdoDtStCXCPendientes    abr 6/17  Estaba actualizacionCXC

                           // Existe sin timbrar  estaba en 0
    if (idCFDIMora<>-1) or ((IDCFDIEnc<>-1)and(Estado=1)) then //Creo prefactura de moratorios feb 8/17
    begin
      if IdCFDIMora=-1 then      //Para que verifique si esta creada y la timbre Abr 18/17
        IdCFDIMora:=  IDCFDIEnc;
      ActualizaEstatusCXC(AdoDtStCXCPendientesidcuentaXCobrar.asInteger, idCFDIMora ); //Para que se ponga el IDCFDI en CXC
                                                                                    //Abr 18/17 Se movio aca por si tiene que actualizar una que exist�a
      Facturar(idCFDIMora , CFDIcreado , 1); //Timbra factura  y muestra PDF

      if CFDICreado then
      begin
        IdCFDIActual:=  idCFDIMora;   //Abr 18/17
        Showmessage('Se  creo factura ');//Feb 12/17 //Mostrar??
      end;
    end;
  end;

end;

function TdmPagos.ActualizaEstatusCXC(idCxC,IdCFDIAct:Integer):Boolean;   //Abr 6/17
var i:integer;
begin
  AdoQryAuxiliar.Close;
  AdoQryAuxiliar.SQL.Clear;                                                                                                                 //Verificar si asi
  AdoQryAuxiliar.SQL.Add('UPDATE CuentasXCobrar SET IDCuentaXCobrarEstatus =0 , IDCFDI ='+intTostr(IdCFDIAct)+' where  IDCuentaXCobrar= '+intToSTR(IdCXC)+' and IDCuentaXCobrarEstatus=-1');
  i:=AdoQryAuxiliar.ExecSql;
  Result:=i>0; //SE supone que regresa cantidad de registros con cambios.

end;


function TdmPagos.EncuentraFacturaconSaldo (var IdEstado, IDCFDIAct:Integer; idcxc:Integer; Valor:Double):Boolean; //Feb 13/17
begin
  IDEstado:=-1;
  AdoQryAuxiliar.Close;
  AdoQryAuxiliar.SQL.Clear;                                                                                                                 //Verificar si asi
  AdoQryAuxiliar.SQL.Add('Select * from CFDI where IDCuentaXCobrar= '+intToSTR(IdCXC));
//  +' and Subtotal= '+FloatToStr(valor)+' and SaldoDocumento>0.0001');
  AdoQryAuxiliar.open;
  Result:= not AdoQryAuxiliar.EOF;
  if not AdoQryAuxiliar.EOF then  //Existe
  begin
    IdEstado:= AdoQryAuxiliar.FieldByName('IDCFDIEstatus').asInteger;
    IDCFDIAct:= AdoQryAuxiliar.FieldByName('IDCFDI').asInteger; //Abr 18/17
  end;
end;

//Copiado de TRato partes


procedure TdmPagos.Facturar(IDCFDIGen: Integer;var CFDICreado:Boolean;IDGenTipoDoc:integer); //Feb 8/17 copiado desde TP
var
   CreadaAntes:boolean;
begin
  FFacturando:=True;
                                               //Mar 29/16
  dmFacturas := TdmFacturas.CreateWMostrar(nil,True,IDGenTipoDoc);  //Era false pero verificar  a ver si no da el aV
  dmFActuras.PIDCFDIGen:=IDCFDIGen;
  dmFActuras.adodsMaster.open; //por si no esta abierta   //Feb12/17
  CFDICreado:=  dmFActuras.adodsMaster.Locate('IDCFDI',IDCFDIGen,[]);  //SE ubica en el CFDI feb 8/
  CreadaAntes:=dmFActuras.adodsMasterIdCFDIEstatus.AsInteger= 2;
  if CFDICreado and (IDGenTipoDoc=1) and (not CreadaAntes)then  //Ajuste para que se mande crear si no esta Ene3/17 //Mod Mar 28/16
    dmFacturas.ActProcesaFactura.Execute;
  FreeAndNil(dmFacturas);
  FFacturando:=False;
end;




function TdmPagos.SacaTipoComp (TipoDoc:Integer) :String;
begin
  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.SQL.clear;
  ADOQryAuxiliar.sql.add('Select * from CFDITipoDocumento where idCFDITipoDocumento = '+ intToSTR(TipoDoc));
  ADOQryAuxiliar.Open;
  if not ADOQryAuxiliar.eof then
    Result:=ADOQryAuxiliar.FieldByName('TipoComprobante').AsString;
end;

procedure TdmPagos.SetFFechaAct(const Value: TDateTime);  //Abr 18/17
begin
  FFechaAct := Value;
end;

procedure TdmPagos.SetFIdAnexo(const Value: integer);
begin
  FIdAnexo := Value;
end;

procedure TdmPagos.SetFIdCFDIActual(const Value: Integer);
begin
  FIdCFDIActual := Value;
end;

procedure TdmPagos.SetFImporteAct(const Value: Extended);
begin
  FImporteAct := Value;
end;

procedure TdmPagos.SetFTipoAbono(const Value: TAbonoCapital);
begin
  FTipoAbono := Value;
end;

procedure TdmPagos.SetFTipocontrato(const Value: integer);
begin
  FTipocontrato := Value;
end;

procedure TdmPagos.SetPaymentTime(const Value: TPaymentTime);
begin
  FPaymentTime := Value;
end;

function TdmPagos.SacaDireccion (IDCliente:Integer) :Integer;
begin    //Verificar que pasa en caso que no tenga          //Dic 6/16
  Result:=-1;
  ADODtStDireccionesCliente.Close;
  ADODtStDireccionesCliente.Parameters.ParamByName('idPersona').Value:=   IDCliente;
  ADODtStDireccionesCliente.Open;
  if not ADODtStDireccionesCliente.eof then
  begin
    REsult:= ADODtStDireccionesCliente.FieldByName('IDPersonaDomicilio').AsInteger;
  end;


end;


function TdmPagos.ActualizaSaldoCliente(IDCFDI,IDPagoRegistro: Integer;Importe :Double;operacion:String): Boolean; //Dic 12/16
var IdDomiciliocliente, IdCliente  :Integer;
begin                  //Veridficar si se deja para s�lo FActuras...
  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.Sql.Clear;         //Verificar que cambia && ene 13 /17
  ADOQryAuxiliar.Sql.add('Update Personas set SaldoCliente =SaldoCliente '+operacion+floatToStr(Importe)+' where IDPersona='+intToStr(IdCliente));
  ADOQryAuxiliar.ExecSQL;
end;


procedure TdmPagos.ADODtStAplicacionesPagosAfterPost(DataSet: TDataSet);
var
  valor,valbaseCXC, porcentaje,ValReg, ValAux, INTMasIVA, porc2, SaldoAcum, porc3, valorMasIva: Double;
  TipoCon, FAct, Fant, IDCFDIAux, OAnt, OAct, IdAcum, ord, idcxcDet, idcxcdetIVA:Integer;
  Camposaldo,campoimporte, CampoPagoAplicado:String;   //Ene 13/17
  EsInicial, EsFactoraje:Boolean;
begin        //FEb 10/17                 //No requerido aca

  inherited;   //Posiblemente requiera parametro de orden para filtro..
  Ord:=1; //Dic 15/16
 (* ADODtStSaldoPrioridad1.Close;
  ADODtStSaldoPrioridad1.Parameters.ParamByName('IdCuentaXCobrar').value:= DataSet.FieldByName('IdCuentaXCobrar').AsInteger;
  ADODtStSaldoPrioridad1.Parameters.ParamByName('orden').value:=Ord; //Dic 15/16
  ADODtStSaldoPrioridad1.open;
  if not ADODtStSaldoPrioridad1.fieldbyname('InteresMasIVA').isnull then
    INTMasIVA := ADODtStSaldoPrioridad1.fieldbyname('InteresMasIVA').AsFloat
  else
    IntMasIVA:=0;   //Para el tipo 3
   *)
  EsFactoraje:= adodsMaster.FieldByName('origenPAgo').AsInteger=1 ; //FEb 10/17
  if adodsMaster.FieldByName('origenPAgo').AsInteger=1 then      //Ene 13/17
  begin
    camposaldo:='SaldoFactoraje';
    campoimporte:='ImporteFactoraje';

  end
  else
  begin  //Normal
    camposaldo:='Saldo';
    campoimporte:='Importe';

  end;
  //FActoraje s�lo filtrar FActurado//FEb
                                  // 'Importe'
  Valor:=dataset.FieldByName(campoimporte).AsFloat;      //Aplicaciones
                                               //'Saldo' //Ene 13/17
  if not EsFactoraje then
    valbaseCXC:= ADODtStCXCPendientes.fieldbyname (camposaldo).AsFloat  //VAlor antes de actualizar el saldo
  else
    valbaseCXC:=  ADODtStCXCPendientes.fieldbyname ('SaldoFactorajeCFDI').AsFloat; //Se supone total de Factura feb 10/17

  //Sacar el importe original del CXC para ver el porcentaje..
  porcentaje:= (valor/ValbaseCxC);//SimpleRoundTo(,-4); para ajustar calculo se quito    //*100Verificar si no se multiplica por 100 y se usa directo Dic 11/16   //Pones roundto
  Porc2:=0;


  //Segun el tipo de contrato hacer  separacion
  ValAux:=Valor;  //Para repertirlo en las dos fases //Dic 12/16

  //Armar proceso para  desglosar los pagos  de los detalles  de cxc
  if esfactoraje  then
  begin
    ADODtStCxCDetallePend.Close;
    ADODtStCxCDetallePend.CommandText:='Select * From vw_CXCParaAplicar where Saldo >0  and IdCuentaXCobrar=:IdCuentaXCobrar '
                                      +' and EsMoratorios=0 and (idCFDI is not null or idCFDIIVA is not null)'
                                      +' and (SaldoDocumento is null or SaldoDocumento>0.00001)'     //FEb 14/17   (verificar) Para que solo traiga el vigente
                                      +' and (SaldoDoc1 is null or SaldoDoc1>0.00001)'       //FEb 14/17  (Verificar)
                                      +' order by fase desc, ordenAplica ' ;
  end
  else
  begin
    ADODtStCxCDetallePend.Close;
    ADODtStCxCDetallePend.CommandText:='Select * From vw_CXCParaAplicar where Saldo >0  and IdCuentaXCobrar=:IdCuentaXCobrar '
                                       +' and (SaldoDocumento is null or SaldoDocumento>0.00001)'     //FEb 14/17    Para que solo traiga el vigente
                                       +' and (SaldoDoc1 is null or SaldoDoc1>0.00001)'       //FEb 14/17
                                       +' order by fase desc, ordenAplica ' ;

  end;
  ADODtStCxCDetallePend.Open;      //estan ordenados por orden de aplicacion
  ADODtstAplicacionesInternas.open;

  //Verificar si son todas orden 0 o �nicas y repartir parejo //Ene 31/17
  EsInicial:=VerificaDetalle(ADODtStCxCDetallePend,0); //Ene 31/17     //No deberia aplicar en FActoraje
  if Not EsInicial then
  begin

    if not ADODtStCxCDetallePend.Eof then
    begin
      TipoCon :=  ADODtStCxCDetallePendIdTipoContrato.AsInteger;
      Fant:= ADODtStCxCDetallePendFase.AsInteger;
      OAnt:= ADODtStCxCDetallePendOrdenAplica.AsInteger;

      ord:=ADODtStCxCDetallePendOrdenAplica.AsInteger;   //Se movio aca para qusar orden de items
      if VerificarConceptoIVA(DataSet.FieldByName('IdCuentaXCobrar').AsInteger,ord, valorMasIva, idcxcDet, idcxcdetIVA ) then
        INTMasIVA:=valorMasIva
      else
        IntMasIVA:=0;
      if Porcentaje<1 then
      begin
        if (intMASIVA<>0) then
        begin
          if (valor<=intMASIVA) then   //No alcanza para pagar INTERES MASIVA
            Porc2:=(valor/INTMasIVA) //Para ajustar calculo se quito SimpleRoundTo(,-4) Dic 14/16
          else
            Porc2:=0;
        end;
      end;


    end;
    IdAcum:=0;                           //  feb 12/17 sin esto coloca ceros en aplicacion para lo que falta  VErificar..  como ajustar
    while (not ADODtStCxCDetallePend.Eof)  {and (Valor > 0.0001)} do
    begin

      Fact:= ADODtStCxCDetallePendFase.AsInteger;
      OAct:=ADODtStCxCDetallePendOrdenAplica.AsInteger;    // ver si es IVA ???  Ene 31/17
      if (ADODtStCxCDetallePendOrdenAplica.asinteger=-1) and (ADODtStCxCDetallePendIVAde.IsNull) then
      begin
        IdAcum:=SacaIDSiAcumula(ADODtStCxCDetallePendIdCuentaXCobrarDetalle.asinteger, saldoAcum);   //Dic 14/16
        if idAcum<>0 then
          SaldoAcum:=SimpleRoundTo((Saldoacum*Porcentaje),-6); ///feb 12/17cambio de -4 . es el mismo porcentaje original
      end;
      Case TipoCon of    //Esquema financiero
      1:begin  //CS Simple
                            //Es posible que aca se requiera orden y no fase
          if (Porc2>0) and (OAct=Oant) then                       //Saldo  //Ene 13/17
            ValReg:=SimpleRoundTo(ADODtStCxCDetallePend.Fieldbyname(Camposaldo).AsFloat*Porc2,-6) ///feb 12/17cambio de -4     //No alcanza ni para pagar el interes y el iva
          else
            ValReg:= ADODtStCxCDetallePend.Fieldbyname(Camposaldo).AsFloat;// ene 13/17 ADODtStCxCDetallePendSaldo.AsFloat; //Lo que esta pendiente de pago
          //Posiblemente si cambia de orden hay que sumar los del siguente orden y sacar nuevo porcentaje //Dic 13 /16 verificar

          if (porcentaje <1) and (valReg>valor) then  //Ajustar para aplicar lo que queda.. aca  debe ser s�lo capital..
             ValReg:=Valor;
                               //abr 19/17
          if ((valreg<=valor)or (abs(valreg-valor)<0.0001) ) and (valreg<>0)then  //Dic 13/16 para que no aplique 0
          begin
             //Aplicar interno el valor dferegistro y restar
            ADODtstAplicacionesInternas.Insert;
            ADODtstAplicacionesInternas.FieldByName('IDCuentaXCobrarDetalle').AsInteger:=ADODtStCxCDetallePendIdCuentaXCobrarDetalle.AsInteger;
                                                        //Ene 13/17  'Importe'
            ADODtstAplicacionesInternas.FieldByName(campoImporte).AsFloat:=valreg;
            //Verificar si esta asociado a concepto o se facturo==>Aplicar a Factura
                                                              //Ene 31/17    ??
            if (not ADODtStCxCDetallePendIdCFDI.isnull) or ( ADODtStCxCDetallePendEsIVA.AsBoolean) then//(not ADODtStCxCDetallePendIDCFDIIVA.isnull)  then
            begin
              if (not ADODtStCxCDetallePendIdCFDI.isnull)  then     //Ajuste para el iva de facturas
                IDCFDIAux:= ADODtStCxCDetallePendIDCFDI.AsInteger
              else
                IDCFDIAux:= ADODtStCxCDetallePendIDCFDIIVA.AsInteger;
              ADODtstAplicacionesInternas.FieldByName('IDCFDI').AsInteger:=IDCFDIAux;
              if not ADODtStCxCDetallePendIdCFDIConcepto.isnull then
                ADODtstAplicacionesInternas.FieldByName('IDCFDIConcepto').AsInteger:=ADODtStCxCDetallePendIDCFDIConcepto.AsInteger;

            end;
            ADODtstAplicacionesInternas.Post;
          end;

          Valor:=VAlor-VAlReg ;
           if OAct<>Oant then   //VErificar
          begin
            Oant:=Oact;
           end;
        end;
      2:begin//AFinanciero
          if OAct<>Oant then   //VErificar
          begin
            Oant:=Oact;
            Ord:=Oact;
          (*  ADODtStSaldoPrioridad1.Close;
            ADODtStSaldoPrioridad1.Parameters.ParamByName('IdCuentaXCobrar').value:= DataSet.FieldByName('IdCuentaXCobrar').AsInteger;
            ADODtStSaldoPrioridad1.Parameters.ParamByName('orden').value:=Ord; //Dic 15/16
            ADODtStSaldoPrioridad1.open;
            if not ADODtStSaldoPrioridad1.fieldbyname('InteresMasIVA').isnull then
              INTMasIVA := ADODtStSaldoPrioridad1.fieldbyname('InteresMasIVA').AsFloat
            else
              IntMasIVA:=0;  *)

            if VerificarConceptoIVA(DataSet.FieldByName('IdCuentaXCobrar').AsInteger,ord, valorMasIva, idcxcDet, idcxcdetIVA ) then   //Dic 16/16
              INTMasIVA:=valorMasIva
            else
              IntMasIVA:=0;
            Porc2:=0;
            if Porcentaje<1 then
            begin
              if (intMASIVA<>0) then
              begin
                if (valor<=intMASIVA) then   //No alcanza para pagar valor MASIVA
                  Porc2:=(valor/INTMasIVA) //Para ajustar calculo se quito SimpleRoundTo(,-4) Dic 14/16
                else
                  Porc2:=0;
              end;
            end;
          end;
          if (Porc2>0) and (OAct=Oant) then  //desde 1 //Dic 13/16
            ValReg:=SimpleRoundTo(ADODtStCxCDetallePend.FieldByName(CampoSaldo).AsFloat*Porc2,-6) ///feb 12/17cambio de -4     //No alcanza ni para pagar el interes y el iva
          else                                        // Saldo ene 13/17
          begin
                                         //  Saldo
            ValReg:= ADODtStCxCDetallePend.FieldByName(CampoSaldo).AsFloat; //Lo que esta pendiente de pago
          end;
           if (porcentaje <1) and (valReg>valor) then  //Ajustar para aplicar lo que queda.. aca  debe ser s�lo capital..
             ValReg:=Valor;
                              //Feb 12/17  par evitar que aplique 0??
          if (valreg<=valor) or (abs(valreg-valor)<0.0001) { and (ValReg >0)}then
          begin                     //abr 19/17
             //Aplicar interno el valor dferegistro y restar
            ADODtstAplicacionesInternas.Insert;
            ADODtstAplicacionesInternas.FieldByName('IDCuentaXCobrarDetalle').AsInteger:=ADODtStCxCDetallePendIdCuentaXCobrarDetalle.AsInteger;
                                                    // 'Importe' Ene 13/16
            ADODtstAplicacionesInternas.FieldByName(campoimporte).value:=valreg;  //Value Feb 19/17
            //Verificar si esta asociado a concepto o se facturo==>Aplicar a Factura
            if (not ADODtStCxCDetallePendIdCFDI.isnull) or (not ADODtStCxCDetallePendIDCFDIIVA.isnull)  then
            begin
              if (not ADODtStCxCDetallePendIdCFDI.isnull)  then     //Ajuste para el iva de facturas     //Dic 12/16
                IDCFDIAux:= ADODtStCxCDetallePendIDCFDI.AsInteger
              else
                IDCFDIAux:= ADODtStCxCDetallePendIDCFDIIVA.AsInteger;
              ADODtstAplicacionesInternas.FieldByName('IDCFDI').AsInteger:=IDCFDIAux;
              if not ADODtStCxCDetallePendIdCFDIConcepto.isnull then
                ADODtstAplicacionesInternas.FieldByName('IDCFDIConcepto').AsInteger:=ADODtStCxCDetallePendIDCFDIConcepto.AsInteger;

            end;
            ADODtstAplicacionesInternas.Post;
          end;

          Valor:=VAlor-VAlReg ;

          //Se movio al inicio


        end;
      3:begin //APuro

          if FAct<>Fant then
          begin
            Fant:=Fact;
            if IdAcum<>0 then   //Solo cuando cambia de  orden
              Valor:=SaldoAcum  //Ya trae el porcentaje en caso que sea menos
            else
              Valor:=ValAux;  //Para retomar el valor por fase  DIC 13/16

          end;
          //VErificar                                   //saldo    //Ene 31/17
          ValReg:= SimpleRoundTo(ADODtStCxCDetallePend.FieldByName(CampoSaldo).AsFloat*porcentaje,-6); ///feb 12/17cambio de -4  //Lo que esta pendiente de pago

          if (valreg<=valor) or (abs(valreg-valor)<0.0001)  then //O diferencias minimas   //abr 19/17
          begin
             //Aplicar interno el valor de registro y restar
            ADODtstAplicacionesInternas.Insert;
            ADODtstAplicacionesInternas.FieldByName('IDCuentaXCobrarDetalle').AsInteger:=ADODtStCxCDetallePendIdCuentaXCobrarDetalle.AsInteger;
            ADODtstAplicacionesInternas.FieldByName('Importe').value:=valreg;         //Falta actualizar saldos de cxcdetalle
            //Verificar si esta asociado a concepto o se facturo==>Aplicar a Factura
            if (not ADODtStCxCDetallePendIdCFDI.isnull) or (not ADODtStCxCDetallePendIDCFDIIVA.isnull) then
            begin
              if (not ADODtStCxCDetallePendIdCFDI.isnull)  then     //Ajuste para el iva de facturas     //Dic 12/16
                IDCFDIAux:= ADODtStCxCDetallePendIDCFDI.AsInteger
              else
                IDCFDIAux:= ADODtStCxCDetallePendIDCFDIIVA.AsInteger;
              ADODtstAplicacionesInternas.FieldByName('IDCFDI').AsInteger:=IDCFDIAux;

              if (not ADODtStCxCDetallePendIdCFDIConcepto.isnull) then
                ADODtstAplicacionesInternas.FieldByName('IDCFDIConcepto').AsInteger:=ADODtStCxCDetallePendIDCFDIConcepto.AsInteger;

            end;
            ADODtstAplicacionesInternas.Post;
          end;

          Valor:=SimpleRoundTo(VAlor-VAlReg, -6); ///feb 12/17cambio de -4
        end;
      end;
      ADODtStCxCDetallePend.Next;
    end;
  end // del si no es inicial ene 31/17
  else //PAGOS INICIALES
  begin  //Par aaplicar iniciales Todos deben aplicar igual
    while not ADODtStCxCDetallePend.Eof do
    begin
      ValReg:= SimpleRoundTo(ADODtStCxCDetallePend.FieldByName(CampoSaldo).AsFloat*porcentaje,-6); ///feb 12/17cambio de -4  //Lo que esta pendiente de pago
      if valreg<=valor then //O diferencias minimas
      begin
        //Aplicar interno el valor de registro y restar
        ADODtstAplicacionesInternas.Insert;
        ADODtstAplicacionesInternas.FieldByName('IDCuentaXCobrarDetalle').AsInteger:=ADODtStCxCDetallePendIdCuentaXCobrarDetalle.AsInteger;
                                                                  //Value Feb 19/17
        ADODtstAplicacionesInternas.FieldByName('Importe').value:=valreg;         //Falta actualizar saldos de cxcdetalle
            //Verificar si esta asociado a concepto o se facturo==>Aplicar a Factura
        if (not ADODtStCxCDetallePendIdCFDI.isnull) or (not ADODtStCxCDetallePendIDCFDIIVA.isnull) then
        begin
          if (not ADODtStCxCDetallePendIdCFDI.isnull)  then     //Ajuste para el iva de facturas     //Dic 12/16
            IDCFDIAux:= ADODtStCxCDetallePendIDCFDI.AsInteger
          else
            IDCFDIAux:= ADODtStCxCDetallePendIDCFDIIVA.AsInteger;
          ADODtstAplicacionesInternas.FieldByName('IDCFDI').AsInteger:=IDCFDIAux;
          if (not ADODtStCxCDetallePendIdCFDIConcepto.isnull) then
             ADODtstAplicacionesInternas.FieldByName('IDCFDIConcepto').AsInteger:=ADODtStCxCDetallePendIDCFDIConcepto.AsInteger;
        end;
        ADODtstAplicacionesInternas.Post;
      end;
      Valor:=SimpleRoundTo(VAlor-VAlReg, -6); ///feb 12/17cambio de -4
      ADODtStCxCDetallePend.Next;
    end;
  end;
    //Actualiza saldos Pago, CXC y Cliente?? //Dic 12/16
  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.SQL.Clear;
  if CampoSaldo= 'Saldo' then //Normal se deberia aplicar en los dos
  begin
    ADOQryAuxiliar.SQL.Add('UPDATE CuentasXCobrar SET SALDOFactoraje=SALDOFActoraje - '+DataSet.FieldByName('Importe').AsString
                    +' where SALDOFactoraje = Saldo and IDCuentaXCobrar='+DAtaSEt.FieldByName('IDCuentaXCobrar').ASString);
    ADOQryAuxiliar.ExecSQL;     //Solo aplica si son iguales Ene16/17

    ADOQryAuxiliar.SQL.Clear;
                                                      // SET '+CampoSaldo+' = '+CampoSaldo +' - '
    ADOQryAuxiliar.SQL.Add('UPDATE CuentasXCobrar SET SALDO=SALDO - '+DataSet.FieldByName('Importe').AsString
                          +' where IDCuentaXCobrar='+DAtaSEt.FieldByName('IDCuentaXCobrar').ASString);
    ADOQryAuxiliar.ExecSQL;

    ADOQryAuxiliar.Close;

    ADOQryAuxiliar.SQL.Clear;     //Abr 19/17
    ADOQryAuxiliar.SQL.Add('UPDATE CuentasXCobrar SET IdCuentaXCobrarEstatus = 3 ' +
                           ' where IDCuentaXCobrar='+DataSEt.FieldByName('IDCuentaXCobrar').ASString+
                           ' and (Saldo < 0.0001)' );
    ADOQryAuxiliar.ExecSQL;
    ADOQryAuxiliar.Close;



     //Abr 17/17 desde
    if ADODtStCXCPendientes.fieldbyname ('EsMoratorio').AsBoolean then
      AplicarMoratorioInterno(DAtaSEt.FieldByName('IDCuentaXCobrar').asinteger,DataSet.FieldByName('Importe').AsExtended); //Abr 17/17
    //abr 17/17 hasta
  end
  else
  begin       //Soloaplica en Facturaje Ene16/17
    ADOQryAuxiliar.SQL.Add('UPDATE CuentasXCobrar SET '+CampoSaldo+' = '+CampoSaldo +' - '+DataSet.FieldByName('Importe').AsString
                          +' where IDCuentaXCobrar='+DAtaSEt.FieldByName('IDCuentaXCobrar').ASString);
    ADOQryAuxiliar.ExecSQL;
  end;


  ADOQryAuxiliar.SQL.Clear;
  ADOQryAuxiliar.SQL.Add('UPDATE Pagos SET SALDO=SALDO - '+DataSet.FieldByName('Importe').AsString
                        +' where IDPago='+DAtaSEt.FieldByName('IDPago').ASString);
  ADOQryAuxiliar.ExecSQL;

  // ActualizaSaldoCliente(DAtaSEt.FieldByName('IDCFDI').ASInteger,DAtaSEt.FieldByName('IDPago').asInteger,DataSet.FieldByName('Importe').AsFloat,'- ' );



  //Abr 17/17 Actualiza Totales de CXC para que actualice mnto vencido en anexo
  ADOPActualizaTotalesCXC.Parameters.ParamByName('@IdCuentaXCobrar').Value:=  DAtaSEt.FieldByName('IDCuentaXCobrar').asinteger;
  ADOPActualizaTotalesCXC.ExecProc;


  //HAsta aca

//  ADODtStCXCPendientes.Refresh;
//  ADODtStCxCDetallePend.Refresh;
end;

function TdmPagos.AplicaPago(idPago, IdCxc, IDCFDI: Integer;
  Monto: Double): Boolean; //abr 18/17      Abono Capital
begin
  try
    ADODtStAplicacionesPagos.open;
    ADODtStAplicacionesPagos.Insert; //VErificar que tenga los dem�s datos
    ADODtStAplicacionesPagosIdCuentaXCobrar.AsInteger:= IdCxc;
    ADODtStAplicacionesPagosIdPago.AsInteger:= IdPago;
    ADODtStAplicacionesPagosImporte.AsExtended:=Monto;
    ADODtStAplicacionesPagos.Post; //DEbe hacer el resto
    Result:=true;
  except
    Result:=False;
  end;
end;

function TdmPagos.AplicarMoratorioInterno(idCXC:integer; ImporteAplicado:Double):Double; //Abr 17/17
var ValAplica:Double;
begin
  //SAca todos los anexos moratotios activos  de la CXC.. y se va pagando hata que se acabe el saldo.
  ADOQryAuxiliar.close;
  ADOQryAuxiliar.SQL.Clear;
  ADOQryAuxiliar.SQL.Add('Select *, (Importe + Impuesto -Descuento-ImporteAplicado) as Saldo  from AnexosMoratorios  where IdCuentaXCobrar = '+intToSTR(idCXC)+' and IdAnexoMoratorioEstatus =1 ');
  ADOQryAuxiliar.Open;

  while (not ADOQryAuxiliar.eof) and  (ImporteAplicado>0) do
  begin
    if ADOQryAuxiliar.FieldByName('Saldo').AsExtended>0.0001 then
    begin
      if ImporteAplicado>ADOQryAuxiliar.FieldByName('Saldo').Value then
      begin
        ValAplica:= ADOQryAuxiliar.FieldByName('Saldo').Value;
      end
      else
         ValAplica:=ImporteAplicado;
      ADOQryAuxiliar.Edit;
      ADOQryAuxiliar.FieldByName('ImporteAplicado').value:= ADOQryAuxiliar.FieldByName('ImporteAplicado').Value+ ValAplica;
      ADOQryAuxiliar.Post;
      ImporteAplicado:=ImporteAplicado- ValAplica;
    end;
    ADOQryAuxiliar.Next;
  end;
  REsult:=ImporteAplicado; //debe ser cero.. no debe quedar nada
end;

function TdmPagos.VerificaDetalle(ADAtos:TAdoDAtaset; tipo:integer):Boolean; //Ene 31/17
begin  //Permite saber si todos tienen el mismo orden enviado??
  Result:=True;
  Adatos.First;
  while not Adatos.eof do
  begin
    Result:=Result and (Adatos.FieldByName('OrdenAplica').AsInteger=Tipo);
    ADAtos.Next;
  end;
  Adatos.First;
  //REgresa falso si alguno tiene otro orden
end;

Function TdmPagos.SacaIDSiAcumula( IdCXCD:integer; Var saldoAcum:Double):Integer; //Dic 14/16
begin // Si es Acumulado de otros, regresar el ID del registro
  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.SQL.Clear;
  ADOQryAuxiliar.SQL.Add('Select Sum(SAldo) as SaldoA from vw_CXCParaAplicar where Saldo >0  and AcumulaACXC ='+ inttostr(IdCXCD));
                             //VErificar si este tambien tiene que usar los  saldos de facturas  and (SaldoDocumento is null or SaldoDocumento>0.00001)  //C Feb 14/17
                              //                     and (SaldoDoc1 is null or SaldoDoc1>0.00001)

  ADOQryAuxiliar.open;
  if  not ADOQryAuxiliar.Eof then
  begin
    saldoAcum:=   ADOQryAuxiliar.Fieldbyname('SaldoA').AsFloat; //Dbe ser igual al de la CXCD acumulada
    Result:=IdCXCD; //Asegurar que se regrese
  end;

end;

procedure TdmPagos.ADODtStAplicacionesPagosNewRecord(DataSet: TDataSet);
begin                   //Dic 9/16
  inherited;

  ADODtStAplicacionesPagos.FieldByName('FechaAplicacion').asDAteTime:=now;
  ADODtStAplicacionesPagos.FieldByName('IDPago').asInteger:=adodsMaster.Fieldbyname('IDPago').AsInteger;
  if adodsMaster.FieldByName('OrigenPago').AsInteger=1 then //Ene 13/17
    ADODtStAplicacionesPagos.FieldByName('ImporteFactoraje').Value:=adodsMaster.FieldByName('Saldo').Value // ene13/17   //Value feb 19/17
  else
    ADODtStAplicacionesPagos.FieldByName('Importe').Value:=adodsMaster.FieldByName('Saldo').Value; //Este se debe actualizar  //Value feb 19/17

   //Traer proximo a pagar...  //Abr 17/17
  ADODtStCXCPendientes.First; //debe estar actualizada
  if adodsMaster.FieldByName('OrigenPago').AsInteger<>1 then   //Solo si no es factoraje
  begin  //DEbe estar actualizada
    if ADODtStCXCPendientes.FieldByName('Saldo').AsExtended<=AdoDSMaster.FieldByName('Saldo').AsExtended  then
      ADODtStAplicacionesPagos.FieldByName('Importe').Value:=ADODtStCXCPendientes.FieldByName('Saldo').AsExtended
    else
      ADODtStAplicacionesPagos.FieldByName('Importe').Value:= AdoDSMaster.FieldByName('Saldo').AsExtended;
  end;
end;

procedure TdmPagos.DataModuleCreate(Sender: TObject);
begin
  inherited;
//  if ADODtStCFDIConceptos.CommandText <> EmptyStr then ADODtStCFDIConceptos.Open;
  gGridForm:= TFrmConPagos.Create(Self);
  gGridForm.DataSet:= adodsMaster;
  adodtstAnexos.Open;  //Mar 9/17
  adodtstAnexoSeleccion.Open;  //Mar 9/17
  TFrmConPagos(gGridForm).DSAplicacion.DataSet:=ADODtStAplicacionesPagos;
  TFrmConPagos(gGridForm).ActFacturaMorato:=ActGeneraPrefMoratorios;
 // TFrmConPagos(gGridForm).actAbonarCapital := actAbonarCapital;
  TFrmConPagos(gGridForm).dsPersonas.dataset:=adosPersonas;
  TFrmConPagos(gGridForm).dsanexos.dataset:=adodtstAnexoSeleccion;  //Mar 9/17

    //Agregado Feb 16/17
   TFrmConPagos(gGridForm).DSDetallesCXC.dataset:= ADODtStCxCDetallePend;
   TFrmConPagos(gGridForm).dsConCXCPendientes.DataSet:=ADODtStCXCPendientes;
   TFrmConPagos(gGridForm).DSDetalleMostrar.DataSet:=ADODtStDetalleCXCMostrar;
   TFrmConPagos(gGridForm).DSAplicacion.DataSet :=ADODtStAplicacionesPagos;
   // hasta Agregado Feb 16/17

   TFrmConPagos(gGridForm).DSMoratoriosDet.DataSet :=ADODtStAnexoMoratorios; //Mar 31/17
   TFrmConPagos(gGridForm).DSauxiliar.DataSet :=ADOQryAuxiliar; //Abr 3/17
   TFrmConPagos(gGridForm).DSP_CalcMoratorioNueva.DataSet:=adopSetCXCUPMoratorio; //Abr 6/17
   TFrmConPagos(gGridForm).actAbonarCapital:=actCrearCXCAbonoCapital; //Abr 18/17

    TFrmConPagos(gGridForm).actAjustePrueba:=ActAjusteAmortiza; //Abr 20/17 auxiliar && borrar

 //  TfrmFacturasGrid(gGridForm).ActGenerarCFDI := actProcesaFactura;  //Nov29/16
  PaymentTime := ptEndOfPeriod; //Para ajuste amortizaciones abr 18/17
end;


function TdmPagos.VerificarConceptoIVA(idCXC, orden:Integer; var SaldoAcum:Double; var IdCXCDet, IDCXCIVADET:Integer):boolean;
var
  IdREgBase, IdRegIVA:Integer;   //Modificar procedimiento para que saquelo qu ese requiers
begin
  IdREgBase:=-1;       //FEb 14 /17 se ajusto para que solo use los de una factura
  IdRegIVA:=-1;
  SaldoAcum:=0;
  ADODtStConceptoIVA.Close;
  ADODtStConceptoIVA.Parameters.ParamByName('IdCuentaXCobrar').Value:=IDCXC;
  ADODtStConceptoIVA.Parameters.ParamByName('orden').Value:=orden;
  ADODtStConceptoIVA.Open;
  if (not ADODtStConceptoIVA.eof)  and (ADODtStConceptoIVA.RecordCount=2) then //pueden se ser varios no s�lo 2
  begin
    while not ADODtStConceptoIVA.eof do
    begin
      if ADODtStConceptoIVAEsIva.Value then
      begin
        IdRegIVA:= ADODtStConceptoIVAIdCuentaXCobrarDetalle.AsInteger;
        if (IdREgBase=-1) or (IdREgBase =ADODtStConceptoIVAIVAde.AsInteger) then
        begin
          IdREgBase:= ADODtStConceptoIVAIVAde.AsInteger;
          SaldoAcum:=SaldoAcum+ADODtStConceptoIVASaldo.AsFloat;
        end;
      end
      else
        if (IdRegIVA=-1) or (IdREgBase= ADODtStConceptoIVAIdCuentaXCobrarDetalle.AsInteger) then
        begin
          IdREgBase:= ADODtStConceptoIVAIdCuentaXCobrarDetalle.AsInteger;
           SaldoAcum:=SaldoAcum+ADODtStConceptoIVASaldo.AsFloat;
        end;
      ADODtStConceptoIVA.Next;
    end;

  end;
  Result:= (IdREgBase<>-1) and (IdRegIVA<>-1); //
  IdCXCDet:=IdREgBase;
  IDCXCIVADET:= IdRegIVA;

end;

end.
