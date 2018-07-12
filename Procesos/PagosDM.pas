unit PagosDM;

interface

uses
   Winapi.windows,System.SysUtils, System.Classes, _StandarDMod, Data.DB, System.Actions,
  Vcl.ActnList,Data.Win.ADODB, math, dialogs,ProcesosType, Controls, forms;

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
    adodsPersonas: TADODataSet;
    ADODtStConfiguraciones: TADODataSet;
    ADODtStConfiguracionesUltimoFolioPago: TIntegerField;
    ADODtStConfiguracionesUltimaSeriePago: TStringField;
    adodsBancos: TADODataSet;
    adodsBancosIdBanco: TAutoIncField;
    adodsBancosIdPaisBanco: TIntegerField;
    adodsBancosIdentificador: TStringField;
    adodsBancosNombre: TStringField;
    adodsBancosDescripcion: TStringField;
    adodsBancosSiglas: TStringField;
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
    adodsMetodoPago: TADODataSet;
    adodsMetodoPagoIdMetodoPago: TIntegerField;
    adodsMetodoPagoIdentificador: TStringField;
    adodsMetodoPagoDescripcion: TStringField;
    adodsMetodoPagoExigeCuenta: TIntegerField;
    adodsMasterIdMetodoPago: TIntegerField;
    adodsMasterCuentaPago: TStringField;
    adodsMasterMetodoPago: TStringField;
    adodsMasterOrigenPago: TIntegerField;
    ADODtStCXCPendientesIdEstadoCuenta: TIntegerField;
    ADODtStCXCPendientesSaldoFactoraje: TFMTBCDField;
    ADODtStCxCDetallePendSaldoFactoraje: TFMTBCDField;
    ADODtStAplicacionesPagosImporteFactoraje: TFMTBCDField;
    ADODtstAplicacionesInternasImporteFactoraje: TFMTBCDField;
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
    ADODtStPagosAuxiliarX: TADODataSet;
    ADODtStPagosAuxiliarXIDPagoAuxiliarMora: TIntegerField;
    ADODtStPagosAuxiliarXIdCuentaXCobrar: TIntegerField;
    ADODtStPagosAuxiliarXIdCuentaXCobrarDetalle: TIntegerField;
    ADODtStPagosAuxiliarXIDCFDI: TLargeintField;
    ADODtStPagosAuxiliarXIDCFDIConcepto: TLargeintField;
    ADODtStPagosAuxiliarXIDUsuario: TIntegerField;
    ADODtStPagosAuxiliarXFecha: TDateTimeField;
    ADODtStPagosAuxiliarXImporte: TFMTBCDField;
    ADODtStPagosAuxiliarXEsCondonacion: TBooleanField;
    ADODtStPagosAuxiliarXObservaciones: TStringField;
    DSAplicacionInterna: TDataSource;
    ADODtStPagosAuxiliarXIdPagoAplicacionInterna: TIntegerField;
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
    adodsAnexos: TADODataSet;
    adodsMasterAnexo: TStringField;
    adodsAnexosIdAnexo: TAutoIncField;
    adodsAnexosIdContrato: TIntegerField;
    adodsAnexosIdAnexoEstatus: TIntegerField;
    adodsAnexosIdentificador: TStringField;
    adodsAnexosDescripcion: TStringField;
    adodsAnexosFecha: TDateTimeField;
    adodsAnexosIdPersona: TIntegerField;
    dsPersonas: TDataSource;
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
    adodsMasterEsDeposito: TBooleanField;
    ADOStrdPrcGenCXCXAmortiza: TADOStoredProc;
    ADOQryVerificaSaldoFinal: TADOQuery;
    ADODtStCXCPendientesIdAnexoAmortizacion: TIntegerField;
    ADODtStCFDINotaCredito: TADODataSet;
    ADODtStCFDINotaCreditoIdCFDI: TLargeintField;
    ADODtStCFDINotaCreditoIdCFDITipoDocumento: TIntegerField;
    ADODtStCFDINotaCreditoIdPersonaReceptor: TIntegerField;
    ADODtStCFDINotaCreditoIdCFDIEstatus: TIntegerField;
    ADODtStCFDINotaCreditoIdClienteDomicilio: TIntegerField;
    ADODtStCFDINotaCreditoSerie: TStringField;
    ADODtStCFDINotaCreditoFolio: TLargeintField;
    ADODtStCFDINotaCreditoFecha: TDateTimeField;
    ADODtStCFDINotaCreditoSubTotal: TFloatField;
    ADODtStCFDINotaCreditoTotal: TFMTBCDField;
    ADODtStCFDINotaCreditoTotalImpuestoTrasladado: TFloatField;
    ADODtStCFDINotaCreditoSaldoDocumento: TFMTBCDField;
    ADODtStCFDINotaCreditoObservaciones: TStringField;
    ADODtStCFDINotaCreditoSaldoFactoraje: TFMTBCDField;
    adodsMasterIdCFDI_NCR: TLargeintField;
    ActPagosAnticipados: TAction;
    ADODtStAnexoSeleccionidentificadorCompleto: TStringField;
    adodsAnexosidentificadorCompleto: TStringField;
    ADODtStCXCPendientesserie: TStringField;
    ADODtStCXCPendientesfolio: TLargeintField;
    ADODtStCXCPendientesDescripcion: TStringField;
    ADOdsAuxiliar: TADODataSet;
    ADODtStSelMetPago: TADODataSet;
    ADODtStSelMetPagoIdMetodoPago: TIntegerField;
    ADODtStSelMetPagoIdentificador: TStringField;
    ADODtStSelMetPagoDescripcion: TStringField;
    ADODtStSelMetPagoExigeCuenta: TIntegerField;
    ADODtStSelMetPagoClaveSAT2016: TStringField;
    ActVerYCreaCXCFinales: TAction;
    ADODtStCxCDetallePendDescripTC: TStringField;
    ADODtStCxCDetallePendEstatusCFDI1: TIntegerField;
    ADODtStCxCDetallePendEstatusCFDI2: TIntegerField;
    adodsMasterIdMonedaOrigen: TIntegerField;
    adodsMonedas: TADODataSet;
    adodsMasterMonedaOrigen: TStringField;
    adodsMasterGenerarCFDIPago: TBooleanField;
    actGenCFDIPago: TAction;
    adodsPagosAplicaciones: TADODataSet;
    adodsPagosAplicacionesIdPagoAplicacion: TIntegerField;
    adodsPagosAplicacionesIdPago: TIntegerField;
    adodsPagosAplicacionesIdPersonaCliente: TIntegerField;
    adodsPagosAplicacionesIdCuentaXCobrar: TIntegerField;
    adodsPagosAplicacionesIDCFDI: TLargeintField;
    adodsPagosAplicacionesFechaAplicacion: TDateTimeField;
    adodsPagosAplicacionesImporte: TFMTBCDField;
    adodsPagosAplicacionesImporteFactoraje: TFMTBCDField;
    adodsPagosAplicacionesCXCFechaVencimiento: TDateTimeField;
    adodsPagosAplicacionesAnexo: TStringField;
    adodsPagosAplicacionesCXCDescripcion: TStringField;
    adodsPagosAplicacionesCFDISerie: TStringField;
    adodsPagosAplicacionesCFDIFolio: TLargeintField;
    adodsPagosAplicacionesUUID: TStringField;
    adodsPagosAplicacionesCFDIMoneda: TStringField;
    adodsPagosAplicacionesCFDIMetodoPago: TStringField;
    adodsPagosAplicacionesCFDIParcialidad: TIntegerField;
    adodsPagosAplicacionesCFDISaldoAnterior: TFMTBCDField;
    adodsPagosAplicacionesCFDISaldoInsoluto: TFMTBCDField;
    adodsMasterIdCFDI: TLargeintField;
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
    procedure ADODtStPagosAuxiliarXNewRecord(DataSet: TDataSet);
    procedure actAbonarCapitalExecute(Sender: TObject);
    procedure adodsMasterBeforeInsert(DataSet: TDataSet);
    procedure actCrearCXCAbonoCapitalExecute(Sender: TObject);
//    procedure ActAjusteAmortizaExecute(Sender: TObject);
    procedure ActPagosAnticipadosExecute(Sender: TObject);
    procedure ActVerYCreaCXCFinalesExecute(Sender: TObject);
    procedure actGenCFDIPagoExecute(Sender: TObject);
    procedure actGenCFDIPagoUpdate(Sender: TObject);
  private
    { Private declarations }
    Inserto:Boolean;
    FIdAnexo: integer;
    FImporteAct: Extended;
    FFechaAct: TDateTime;
    FTipocontrato: integer;
    FTipoAbono: TAbonoCapital;
    FIdCFDIActual: Integer;
    FPaymentTime: TPaymentTime;
//    function ActualizaSaldoCliente(IDCFDI, IDPagoRegistro: Integer;
//      Importe: Double; operacion: String): Boolean;
    function SacaIDSiAcumula(IdCXCD: integer; var saldoAcum: Double): Integer;
    function VerificarConceptoIVA(idCXC, orden: Integer;
      var SaldoAcum: Double; var IdCXCDet, IDCXCIVADET:Integer): boolean;
    function VerificaDetalle(ADAtos: TAdoDAtaset; tipo: integer): Boolean;
    function SacaDireccion(IDCliente: Integer): Integer;
    function SacaTipoComp(TipoDoc: Integer): String;       //Ago 31/17
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
    procedure RegistraBitacora(tipoRegistro: Integer;Observacion:String);   //Abr 19/17
    function CrearPagoXDeposito(Importe: Double; ADatosPago: TADODataSet): Boolean;
    procedure VerificaYCreaCXCFinales(idAnexo:Integer);
    function CreaMoratoriosAFechaActual: Boolean;
    function CrearCuentasFinales: Boolean;
    procedure ActualizaSaldoNC(idCFDIAct: Integer);
    function NotaCreditoenUso(idCFDI,IdPago: Integer): Boolean;
    function CrearSiguienteCXC(idAnexo: integer;var idCxc:integer): Boolean;
    function SacaSaldoApagar(SaldoPago: Double; IdCXC: integer): Double;
    procedure RefreshAplicaPago;
    function CrearCFDIPago(IdPago: Integer): Integer;
    property PaymentTime: TPaymentTime read FPaymentTime write SetPaymentTime;
  public
    { Public declarations }
    property idAnexoAct: integer read  FIdAnexo write  SetFIdAnexo; //Abr 17/17
    property FechaAct: TDateTime read  FFechaAct write  SetFFechaAct; //Abr 17/17
    property ImporteAct: Extended read  FImporteAct write  SetFImporteAct; //Abr 17/17
    property TipoContrato: integer read  FTipocontrato write  SetFTipocontrato; //Abr 18/17
    property TipoAbono: TAbonoCapital  read  FTipoAbono write  SetFTipoAbono; //Abr 18/17
    property IDCFDIActual: Integer  read  FIdCFDIActual write  SetFIdCFDIActual; //Abr 18/17
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses PagosForm, _ConectionDmod, AbonarCapitalDM, AbonarCapitalEdit,
  FacturasDM, MetodoPagoFacturaEdt, FacturaConfirmacionForm,
  AmortizacionesDM, CuentasXCobrarDM, _Utils, PagosAplicacionesForm;

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
  ADODtStCXCPendientes.parameters.parambyname('EsAnti').Value:=0; //Oct 9/17
  ADODtStCXCPendientes.Open;
  ADODtStCxCDetallePend.Open;
  ADODtStConfiguraciones.Open;
//  ADoSPersonas.Open;
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
  if not adoDSMaster.FieldByName('IDCFDI_NCR').isnull then //Jun 27/17
  begin
    ActualizaSaldoNC(adoDSMaster.FieldByName('IDCFDI_NCR').asinteger); //Monto completo no puede ser parcial
  end;
end;

procedure TdmPagos.ActualizaSaldoNC(idCFDIAct:Integer);
begin //Jun 28/17
//  Programar la    actualizacion
  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.SQL.Clear;
  ADOQryAuxiliar.SQL.Add('UPDATE CFDI set SaldoDocumento=0 where IDCFDITipoDocumento=2 and IDCFDI='+intToStr(IdCFDIAct));
  ADOQryAuxiliar.ExecSQL;
end;

procedure TdmPagos.ActVerYCreaCXCFinalesExecute(Sender: TObject);
begin
  inherited;
  VerificaYCreaCXCFinales(adodsMasterIdAnexo.AsInteger); //DEbe estar en el Pago correspondiente Oct 3/17
end;

procedure TdmPagos.adodsMasterBeforeInsert(DataSet: TDataSet);
const
  TxtSQL='SELECT IdPago, IdBanco, IdPersonaCliente, IdCuentaBancariaEstadoCuenta, IdMetodoPago, IdContrato, IdAnexo, IdCFDI_NCR, IdMonedaOrigen, FechaPago, FolioPago, SeriePago, Referencia, Importe, Saldo, Observaciones, ' +
  'CuentaPago, OrigenPago, EsDeposito ' +
  'FROM Pagos ';
var
  Txt:String;
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
var IdPago:Integer;
begin
  inherited;
  IdPago:=-1;
  Inserto:=dataset.state=dsInsert;
  if dataset.State = dsInsert then
  begin
    if adodsMaster.FieldByName('IdAnexo').IsNULL then
    begin
      ShowMessage('Debe registrar el Anexo correspondiente al Pago');
      abort;
    end;
    adodsMaster.FieldByName('Saldo').Value:=adodsMaster.FieldByName('Importe').Value;  //Se debe usar value cuando tiene mas de 4 decimales para que no lo redondee.. sino no quedan iguales
  end
  else
    IDPago:=adodsMasterIdPago.AsInteger;
  if not adodsMaster.FieldByName('IDCFDI_NCR').isnull and NotaCreditoenUso(adodsMaster.FieldByName('IDCFDI_NCR').asinteger,IdPago) then
  begin //Verificar que nadie mas lo esta usando.. por si dos estan actualizando un pago a la vez
    ShowMessage('Nota de crédito usada por otro pago');
    adodsMaster.FieldByName('IDCFDI_NCR').Clear;
    adodsMaster.FieldByName('IdMetodoPAgo').asInteger:=5;// Otro
    adodsMaster.FieldByName('Referencia').asString:='';
    abort;
  end;
end;

function TdmPagos.NotaCreditoenUso(idCFDI, IdPago:Integer):Boolean; //Jun 28/17
begin
  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.SQL.Clear;
  ADOQryAuxiliar.SQL.Add('Select * from Pagos where IDCFDI_NCR ='+ intToSTR(idcfdi));
  if IDPAgo<>-1 then
    ADOQryAuxiliar.SQL.Add(' and IdPago<>'+intTosTR(IdPago)); //Por si esta editando //En teoria no deberia editar la pero puede ser que no era dce NCRy se convirtio
  ADOQryAuxiliar.Open;
  result:=not ADOQryAuxiliar.eof;   //Verificar si es vacio cuando
end;

procedure TdmPagos.adodsMasterNewRecord(DataSet: TDataSet);
var SErieAct:String;
    FolioAct:Integer;
begin  //Pagos
  inherited;
  DataSet.FieldByName('FechaPago').AsDateTime:=_DmConection.LaFechaActual;//May26/17 Date; //Era now Abr 18/17
  SerieAct:= ADODtStConfiguraciones.FieldByName('UltimaSeriePago').AsString;
  FolioAct:= ADODtStConfiguraciones.FieldByName('UltimoFolioPago').AsInteger;
  DataSet.FieldByName('SeriePago').AsString:=SerieAct;
  DataSet.FieldByName('FolioPago').asInteger:=FolioAct+1;  (*  // verificar donde para que no se repitan los numeros deshabilitado FEb 8/17*)
  //VEr que pasa si se usan iguales
  DataSet.FieldByName('OrigenPago').asInteger :=0;    //Jun 9/17
  DAtaset.FieldByName('EsDeposito').AsBoolean:=False; //Jun 9/17
  adodsMasterIdMonedaOrigen.Value:= _MONEDAS_ID_PESO_MXN;
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
    ADOQryAuxiliar.SQL.Add('UPDATE CuentasXCobrarDetalle SET '+camposaldo+'='+Camposaldo+' - '+DataSet.FieldByName(campoimporte).AsString
                          +' , ' +CampoPagoAplicado+'='+CampoPagoAplicado+' + '+DataSet.FieldByName(campoimporte).AsString    ///Para guardar lo que se lleva pagado Ene 16/17
                          +' where IDCuentaXCobrarDetalle='+DAtaSEt.FieldByName('IDCuentaXCobrarDetalle').ASString); //Mod. dic 15/16
    ADOQryAuxiliar.ExecSQL;
    //Actualizar PagosAplicacionInternaXProducto.    Abr 19/17
    ADOQryAuxiliar.SQL.Clear;
                             //Sòlo se insertan aplicaciones internas, no se pueden modificar.
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
  //Verificar si es un Deposito en garantia   y crear un pago correspondiente Jun 8/17      //verificar por que no lo hizo....????jul 4/17
  if (Pos('Deposito en garantia',ADODtStCxCDetallePendDescripCXC.AsString)>0)  //Jun 21/17
 // deshabilitado por que puede no estar en Cero  and (ADODtStCxCDetallePendSaldo.AsFloat=0)  //Si estuviese actualizado no se veria
//No debe existir por que no habia la alicacion interna   and NoExistePagoXDeposito(ADODtstAplicacionesInternasIDPagoAplicacionInterna.asinteger,adodsMasterIDAnexo.AsInteger )
  then // verificar si asi o con sus id(56,66,76)
  begin
    //verificar saldo 0 o menor que 0.01
    //Solo para aplicar lo del depósito cuando se pago todo el depósito Jul 4/17  Lo de mas se aplica a nivel CXC
    ADOQryAuxiliar.SQL.Clear;
    ADOQryAuxiliar.SQL.Add('UPDATE ANEXOS SET SALDOTOTAL=SALDOTOTAL - '+DataSet.FieldByName('Importe').AsString   //Anexos actualizacion saldos nuevos
    +', PagadoTotal = PagadoTotal+ '+DataSet.FieldByName('Importe').AsString
    +' where IDAnexo ='+adodsMasterIdAnexo.ASString); //debe tener valor.
    ADOQryAuxiliar.ExecSQL;   //Verificar porue par el deposito en Garantia  del inicio tiene más cosas que no deben descontarse
    ADOQryAuxiliar.Close;
    ADOQryAuxiliar.Close;
    ADOQryAuxiliar.SQl.Clear;
    ADOQryAuxiliar.SQL.Add('Select * from CuentasXCobrarDetalle  where idcuentaXCobrarDetalle='+  ADODtStCxCDetallePendIdCuentaXCobrarDetalle.AsString);
    ADOQryAuxiliar.open;   //Es deposito
    if ADOQryAuxiliar.FieldByName('Saldo').AsExtended<0.01 then //Ya se pago todo el enganche //jul 5/17
    begin                     //Era es te per o es el de la aplicacion actual y no es la que va  DataSet.FieldByName('IMPORTE').AsFloat
      if CrearPagoXDeposito( ADOQryAuxiliar.FieldByName('Importe').AsFloat,AdoDsMaster ) then //ES la que tiene de origen con el total   //Oct 17/17
        ShowMessage('Se creó pago correspondiente al Depósito en Garantía');
    end;
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

function TdmPagos.CrearPagoXDeposito (Importe:Double; ADatosPago: TADODataSet):Boolean; //Jun 8/17
var serieAct:String;
    FolioAct, res:Integer;
begin
  Result:=False;
  SerieAct:= ADODtStConfiguraciones.FieldByName('UltimaSeriePago').AsString;
  FolioAct:= ADODtStConfiguraciones.FieldByName('UltimoFolioPago').AsInteger;
  SerieAct:=SerieAct;
  FolioAct:=FolioAct+1;
  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.SQl.Clear;
  ADOQryAuxiliar.SQL.Add(' Insert Into Pagos(idPersonaCliente,FechaPago,IdAnexo, IdContrato, IDMetodoPago,  ' +
                         ' SeriePago, FolioPago,Importe, Saldo,Referencia, Observaciones, EsDeposito) Values (  '+
                         ' :idPersonaCliente,:FechaPago,:IdAnexo,:IdContrato, :IDMetodoPago,  ' +
                         ' :SeriePago, :FolioPago,:Importe, :Saldo,:Referencia, :Observaciones,:EsDeposito)');
  ADOQryAuxiliar.Parameters.ParamByName('idPersonaCliente').value:=ADatosPago.FieldByName('IdPersonaCliente').asInteger;
  ADOQryAuxiliar.Parameters.ParamByName('FechaPago').value:=ADatosPago.FieldByName('FechaPago').asDatetime;
  ADOQryAuxiliar.Parameters.ParamByName('IdAnexo').value:=ADatosPago.FieldByName('IDAnexo').asInteger;
  ADOQryAuxiliar.Parameters.ParamByName('IdContrato').value:=ADatosPago.FieldByName('IdContrato').asInteger;
  if not aDatosPago.FieldByName('IDMetodoPago').isnull then
     ADOQryAuxiliar.Parameters.ParamByName('IDMetodoPago').value:=aDatosPago.FieldByName('IDMetodoPago').asInteger
  else
     ADOQryAuxiliar.Parameters.ParamByName('IDMetodoPago').value:= 5 ;// jul 5/17 Otro
  ADOQryAuxiliar.Parameters.ParamByName('SeriePago').value:=serieAct;            //Solo registra el ultimo pago que la liquido
  ADOQryAuxiliar.Parameters.ParamByName('FolioPago').value:= FolioAct;                 //Este es el dela CuentaXCobrar detalle.. es la que corresponde  //Oct 17/17
  ADOQryAuxiliar.Parameters.ParamByName('Importe').value:=simpleroundto(Importe,-2); //REdondeado para evitar centavos  negativo sobre centavos .. otro sobre pesos
  ADOQryAuxiliar.Parameters.ParamByName('Saldo').value:= simpleRoundto(Importe,-2);
  ADOQryAuxiliar.Parameters.ParamByName('Referencia').value:=  '';
  ADOQryAuxiliar.Parameters.ParamByName('Observaciones').value:=  'Trasladado por Deposito en Garantía. API: '
  + ADODtstAplicacionesInternasIDPagoAplicacionInterna.AsString;
  ADOQryAuxiliar.Parameters.ParamByName('EsDeposito').value:=  True;
  Res:= ADOQryAuxiliar.ExecSQL;
  if Res=1 then
  begin
     REsult:=True;
    //Para actualizar folio pago
    ADODtStConfiguraciones.Edit;
    ADODtStConfiguraciones.FieldByName('UltimaSeriePago').AsString:=SerieAct;
    ADODtStConfiguraciones.FieldByName('UltimoFolioPago').AsInteger :=FolioAct;
    ADODtStConfiguraciones.Post;
  end;
end;

procedure TdmPagos.ADODtStCFDIConceptosPrefAfterPost(DataSet: TDataSet);
var
  idDocCFDI, idImp:Integer;
  Subtotal,IVACal,TotalCal, IVAReg:Double; //Agregado ago 25/16
begin
  inherited;  //Mar 29/16     //Verificar que no intertfiera con el  proceso normal de facturacion
  idImp:=-1;
  IVAreg:=0; //
  //Verificar si aca actualizar el item respectivo del detalle del documento
//  IDDocItem:=DataSet.FieldByName('IDCFDIConcepto').AsInteger;
  idDocCFDI:=DataSet.FieldByName('IDCFDI').AsInteger;
  //Verificar si tiene conceptos de IVA .. Poner y no calcular, pero si no  calcular..//Ene 16/17
  ADOSumaIVAMora.Close;
  ADOSumaIVAMora.Parameters.ParamByName('IdCuentaXCobrar').Value:=ADODtStCXCPendientesIdCuentaXCobrar.AsInteger; // ya que no tierne mas campos ino la suma ene 28/17
  ADOSumaIVAMora.Open; // SE supone esta amarrado a la CuentaXCobrar
  if not ADOSumaIVAMora.eof then
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
  //Se usa siempre en registrado
  ADOQryAuxiliar.Close;                                                                                       //   subtotal*0.16
  ADOQryAuxiliar.SQL.Clear;                                                                                   //Tiene lo  mismo que IVAReg                               //  subtotal*1.16                      //  subtotal*1.16
  ADOQryAuxiliar.SQL.Add('UPDATE CFDI SET Subtotal='+FloattoSTR(subtotal)+' , TotalImpuestoTrasladado='+FloatToSTR(IVACal)+', Total='+FloatToSTR(TotalCal) +', SaldoDocumento='+FloatToSTR(TotalCal)
  +', SaldoFactoraje='+FloatToSTR(TotalCal)+' where IDCFDI ='+IntToStr(idDocCFDI));
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

procedure TdmPagos.ADODtStPagosAuxiliarXNewRecord(DataSet: TDataSet);
begin            //FEb 14/17
  inherited;
  dataset.FieldByName('Fecha').asdatetime:=now;     //REgistro auxiliar
  dataset.FieldByName('IdUsuario').AsInteger:= _DMConection.idUsuario;
  dataset.FieldByName('IdPagoAplicacionInterna').AsInteger:= ADODtstAplicacionesInternasIDPagoAplicacionInterna.AsInteger; //Verificar que lo ponga feb 14/17
end;

procedure TdmPagos.ADODtStPrefacturasCFDIAfterOpen(DataSet: TDataSet);
begin
  inherited;
  adodtstPersonaEmisor.open;
end;

procedure TdmPagos.ADODtStPrefacturasCFDINewRecord(DataSet: TDataSet);
var
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
  DataSet.FieldByName('Fecha').AsDateTime:=now; //CFDI Se supondría que se van a generar inmediatamente pero hay que verificar(por si se requiere cambio de fecha antes de generar)
  DataSet.FieldByName('LugarExpedicion').AsString:=ADODtStPersonaEmisorMunicipio.AsString +', '+ADODtStPersonaEmisorEstado.AsString;//'Zapopan, Jalisco' ; //Verificar si se saca de  la direccion del emisor?
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
     DataSet.FieldByName('NumCtaPago').asString:= AdoDSMasterCuentaPago.AsString;
  DataSet.FieldByName('IdCuentaXCobrar').AsInteger:=  adodtstCXCPendientesIdCuentaXCobrar.AsInteger;  //Ajustado Ene 12/17 idcxc
  Except
    Raise;
  end;
end;

procedure TdmPagos.actAbonarCapitalExecute(Sender: TObject);    //No usada
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

procedure TdmPagos.actCrearCXCAbonoCapitalExecute(Sender: TObject);
var
  frmAbonarCapitalEdit: TfrmAbonarCapitalEdit;
  IDCXC:Integer;
  ObsBitacora:String;
begin
  inherited;
  IdAnexoAct:=adodsMasterIdAnexo.AsInteger;
  FechaAct:= FechaSinHora(adodsMasterFechaPago.AsDateTime);
  ImporteAct := adodsMasterSaldo.AsExtended; //Saldo del pago
  IdCFDIActual:=0; //Para inicializarla
  adoqAnexosSel.Close;
  adoqAnexosSel.Parameters.ParamByName('IdAnexo').Value:= IdanexoAct;    //Abr 17/17
  adoqAnexosSel.Open;
  frmAbonarCapitalEdit := TfrmAbonarCapitalEdit.Create(Self);
  try
    frmAbonarCapitalEdit.DataSet:= adoqAnexosSel;
    frmAbonarCapitalEdit.Fecha := FechaAct; //Date;  //Abr 17/17   Usa la de pago
    frmAbonarCapitalEdit.Importe := Importeact; //0;  //Abr 17/17
    frmAbonarCapitalEdit.Tipo:= Ord(acReducirCuota);
    if frmAbonarCapitalEdit.Execute then
    begin
      IdAnexoAct := adoqAnexosSelIdAnexo.Value;
      TipoContrato := adoqAnexosSelIdContratoTipo.Value;
      TipoAbono:=TAbonoCapital(frmAbonarCapitalEdit.Tipo);
      if Importeact<frmAbonarCapitalEdit.Importe then
        ShowMessage('El importe no puede ser mayor al saldo del Pago Actual. Proceso Cancelado') //nov 15/17
      else
      begin
        IdCXC:= CrearCXCAbono(IdAnexoAct,frmAbonarCapitalEdit.Fecha,frmAbonarCapitalEdit.Importe);
        if IDCXC<>0 then
          IdCFDIActual:= CrearFacturaCXC(IDCXC); //Aunque ya lo trae
        if IdCFDIActual<>0 then
        begin
          if AplicaPago(adodsMasterIdPago.AsInteger,idcxc,idcfdiactual,frmAbonarCapitalEdit.Importe) then
            if  AjustarAmortizaciones(IdAnexoAct,TipoContrato,frmAbonarCapitalEdit.Importe,TipoAbono,frmAbonarCapitalEdit.Fecha ) then //Ajustar Amortizacion
            begin
              ADODtStCXCPendientes.Close;
              ADODtStCXCPendientes.Parameters.ParamByName('Esanti').value:= 1;
              ADODtStCXCPendientes.Open;
              ADODtStCXCPendientes.Locate('IdCuentaXCobrar', IDCXC,[]);
              adodsMaster.Refresh; //Pago
              //REgistrar en bitacora el abono a CApital
              ObsBitacora:='Fecha:'+datetoSTr(frmAbonarCapitalEdit.Fecha)+' IdAnexo: '+intToSTR(IdAnexoAct)+' IdCXC:'+ intToStr(idcxc)
                          +' Importe:'+floatToStr(frmAbonarCapitalEdit.Importe)+' TipoAbono:'+ intToStr(frmAbonarCapitalEdit.Tipo);
              RegistraBitacora(2,ObsBitacora);
              ShowMessage('Proceso completo de Abono a Capital');
            end;
        end
        else
           ShowMessage('Proceso no relizado Factura no generada.'); //Ago 1/17
      end ;
    end;
  finally
    frmAbonarCapitalEdit.Free;
    adoqAnexosSel.Close;
  end;
end;

procedure TdmPagos.actGenCFDIPagoExecute(Sender: TObject);
var
  IdPago: Integer;
  IdCFDI: Integer;
begin
  inherited;
  IdPago := adodsMasterIdPago.Value;
  IdCFDI := CrearCFDIPago(IdPago);
  if IdCFDI <> 0  then
    RefreshADODS(adodsMaster, adodsMasterIdPago);
end;

procedure TdmPagos.actGenCFDIPagoUpdate(Sender: TObject);
begin
  inherited;
  actGenCFDIPago.Enabled := adodsMasterGenerarCFDIPago.Value;
end;

Procedure TdmPagos.RegistraBitacora(tipoRegistro:Integer;Observacion:String); //Abr 19/17
var
   tipoTxt:String;
begin
  case TipoRegistro of
  0:  tipoTxt:='CXC';
  1:  tipoTxt:='MORA';
  2:  tipoTxt:='ABOCAP'; //Abr 19/17
  3:  tipoTxt:='PAGANT'; //Jun 29/17
  4:  TipoTxt:='DELAPLICA'; //Oct 18/17 Se usa internamente en Procecimiento pero para no usar ese dato
  end;
  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.SQL.Clear;
  ADOQryAuxiliar.sql.Add('Insert into BitacoraGeneracion (Tipo, FechaGeneracion, IdUsuario, Observaciones) Values('''+tipotxt+''',:IdFechaHoy1, '  +
                         intToSTR(_DMConection.idUsuario)+','''+Observacion+''' ) ' );
  ADOQryAuxiliar.Parameters.ParamByName('IdFechaHoy1').Value:=_DmConection.LaFechaActual;//date; May 26/17
  ADOQryAuxiliar.ExecSQL;
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
      Result := dmAmortizaciones.SetAmortizaciones(IdAnexo, Importe, Tipo);
    finally
      dmAmortizaciones.Free;
    end;
end;

function TdmPagos.CrearCXCAbono(IdAnexo: Integer;Fecha:TDateTime; Importe: Double ):Integer;  //abr 18/17
begin
  adopCXCAbonarCapital.Parameters.ParamByName('@IdAnexo').Value := IdAnexo;
  adopCXCAbonarCapital.Parameters.ParamByName('@Fecha').Value := Fecha;
  adopCXCAbonarCapital.Parameters.ParamByName('@ImporteCapital').Value := Importe;
  adopCXCAbonarCapital.ExecProc;
  Result := adopCXCAbonarCapital.Parameters.ParamByName('@IdCuentaXCobrar').Value;
end;

Function TdmPagos.CrearFacturaCXC(IdCXC:Integer):Integer; //Abr 18/17 Regresa IDCFDI
var
  dmCuentasXCobrar: TdmCuentasXCobrar;
begin
  Result := 0;
  ADODtStCXCPendientes.Close;      //Consulta ajustada para que muestre -1 de pagos adelantados jun 30/17
  ADODtStCXCPendientes.Parameters.ParamByName('Esanti').value:= 1; //Oct 9/17
  ADODtStCXCPendientes.Open;
  if ADODtStCXCPendientes.Locate('IdCuentaXCobrar',IdCXC,[]) then
  begin
    dmCuentasXCobrar := TdmCuentasXCobrar.Create(Self);
    try
      Result:= dmCuentasXCobrar.CrearCFDI(IdCXC);
    finally
      dmCuentasXCobrar.Free;
    end;
  end
end;

procedure TdmPagos.ActGeneraPrefMoratoriosExecute(Sender: TObject);
var
  IdCuentaXCobrar: Integer;
begin
  inherited;
  IdCuentaXCobrar := ADODtStCXCPendientesIdCuentaXCobrar.Value;
  CrearFacturaCXC(IdCuentaXCobrar);
end;

procedure TdmPagos.ActPagosAnticipadosExecute(Sender: TObject);
var IdCxc:Integer;
    ImportePago:Double;
    Existen:Boolean;
    obsBitacora:String;
begin
  inherited;
  Existen:=true;
  IdCFDIActual:=0;
  ADODtStCXCPendientes.Close;      //SE agregó aca  oct 9/17 Para que pueda encontrar la informacion para facturar
  ADODtStCXCPendientes.Parameters.ParamByName('EsAnti').Value:=1;  //Oct 9/17
  ADODtStCXCPendientes.Open;
  while (adodsMasterSaldo.AsFloat >0.01) and Existen do //tiene saldo.. verificar si en un ciclo.
  begin
    if CrearSiguienteCXC(adodsMasterIdAnexo.AsInteger,Idcxc)then //Se ajusto por i hubiese creada pero no timbrada
    begin
      if idcxc<>-1 then  //DEberia siempre serlo
         IdCFDIActual:= CrearFacturaCXC(IDCXC); //Aunque ya lo trae
      if IdCFDIActual<>0 then
      begin
        ImportePago:=SacaSaldoApagar(adodsMasterSaldo.AsFloat,IDCXC);
        if AplicaPago(adodsMasterIdPago.AsInteger,idcxc,idcfdiactual,ImportePago) then
        //no hace ajuste porque no es abono a capital  if  AjustarAmortizaciones(IdAnexoAct,TipoContrato,ImportePago,TipoAbono,frmAbonarCapitalEdit.Fecha ) then //Ajustar Amortizacion
          begin
          //CAmbiar consulta   //Oct 9/17
            ADODtStCXCPendientes.Close;
         //   ADODtStCXCPendientes.CommandText:= ConsultaConAnticipados;  Se cambio arrriba
            ADODtStCXCPendientes.Parameters.ParamByName('EsAnti').Value:=1; //oct 9/17
            ADODtStCXCPendientes.Open;
            ADODtStCXCPendientes.Locate('IdCuentaXCobrar', IDCXC,[]);
            adodsMaster.Refresh; //Pago
            ObsBitacora:='IDPago:'+ intToSTr(adodsMasterIdPago.AsInteger)+' IdAnexo: '+intToSTR(adodsMasterIdAnexo.AsInteger)
                         +' IdCXC:'+ intToStr(idcxc)+' Importe:'+floatToStr(ImportePago)+'. Pago Anticipado ';
            RegistraBitacora(3,ObsBitacora);
         end;
      end
      else  //ago 1/17
      begin
        Existen:=False;
        Showmessage('Proceso no realizado. Factura no generada de CXC('+intToStr(IDCXC));
      end;
    end
    else
      Existen:=False;
  end;
  ADODtStCXCPendientes.Close;   //Para que regrese como estaba..   oct 9/17
  ADODtStCXCPendientes.Parameters.ParamByName('EsAnti').Value:=0; //oct 9/17
 // ADODtStCXCPendientes.CommandText:= ConsultaBase;
  ADODtStCXCPendientes.Open;
  if adodsMasterSaldo.AsFloat<=0.01  then   //Ago 2/17
  begin
    RefreshAplicaPago;
  end;
end;

procedure TdmPagos.RefreshAplicaPago;  //Ago 2/17
var
  IdPagoAp: Integer;
begin
    IdPagoAp:=  ADODtStAplicacionesPagos.FieldByName('IDPagoAplicacion').AsInteger;
    ADODtStAplicacionesPagos.Close;
    ADODtStAplicacionesPagos.Open;
    ADODtStAplicacionesPagos.Locate('IDPagoAplicacion', IDPagoAp, []);
end;

function TdmPagos.SacaSaldoApagar(SaldoPago:Double;IdCXC: integer):Double;
Var SaldoCXC:Double;
begin
  Result:= 0;
  SaldoCXC :=0;
  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.SQL.Clear;
  ADOQryAuxiliar.SQL.Add('SElect * from CuentasXCobrar where idCuentaXCobrar='+intTosTR(idcxc));
  ADOQryAuxiliar.open;
  if not ADOQryAuxiliar.eof then
  begin
    SaldoCXC:= ADOQryAuxiliar.FieldByName('Saldo').AsFloat;
  end;
  if SaldoCXC>0 then
  begin
    if SaldoCXC<= SaldoPago then
       Result:=SaldoCXC
    else
       Result:= SaldoPago;
  end;
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

procedure TdmPagos.ADODtStAplicacionesPagosAfterPost(DataSet: TDataSet);
var
  valor,valbaseCXC, porcentaje,ValReg, ValAux, INTMasIVA, porc2, SaldoAcum, valorMasIva: Double;
  TipoCon, FAct, Fant, IDCFDIAux, OAnt, OAct, IdAcum, ord, idcxcDet, idcxcdetIVA:Integer;
//  CampoPagoAplicado
  Camposaldo,campoimporte:String;   //Ene 13/17
  EsInicial, EsFactoraje:Boolean;
begin        //FEb 10/17                 //No requerido aca
  inherited;   //Posiblemente requiera parametro de orden para filtro..
  Ord:=1; //Dic 15/16
  TipoCon := -1;
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
  ADODtStCXCPendientes.filter:='IdCuentaXCobrar = '+ADODtStAplicacionesPagosIdCuentaXCobrar.AsString; //Por si es la ultima y creo varias para que se ubique Oct 3/17
  ADODtStCXCPendientes.filtered:=True;
  Valor:=dataset.FieldByName(campoimporte).AsFloat;      //Aplicaciones
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
                                      +' and (SaldoDocumento is null or SaldoDocumento>0.01)'     //  jun23/17 0.00001)FEb 14/17   (verificar) Para que solo traiga el vigente
                                      +' and (SaldoDoc1 is null or SaldoDoc1>0.01)'       // 0.00001      FEb 14/17  (Verificar)
                                      +' and  (EstatusCFDI1 <>3 or  EstatusCFDI2 <>3 or (EstatusCFDI1 is NULL and EstatusCFDI2 is NULL))'  //Ajuste oct 20/17
                                      +' order by fase desc, ordenAplica ' ;             //Oct 2517 PAra que pueda aplicar lo no facturable
  end
  else //Esta en otra
  begin
    ADODtStCxCDetallePend.Close;
    ADODtStCxCDetallePend.CommandText:='Select * From vw_CXCParaAplicar where Saldo >0  and IdCuentaXCobrar=:IdCuentaXCobrar '
                                       +' and (SaldoDocumento is null or SaldoDocumento>0.01)'     //FEb 14/17    Para que solo traiga el vigente
                                       +' and (SaldoDoc1 is null or SaldoDoc1>0.01)'       //FEb 14/17    //  jun23/17 0.00001
                                       +' and  (EstatusCFDI1 <>3 or  EstatusCFDI2 <>3 or (EstatusCFDI1 is NULL and EstatusCFDI2 is NULL))'  //Ajuste oct 20/17
                                      +' order by fase desc, ordenAplica ' ;           //Oct 2517 PAra que pueda aplicar lo no facturable

  end;
  ADODtStCxCDetallePend.Open;      //estan ordenados por orden de aplicacion
  ADODtstAplicacionesInternas.open;
  //Verificar si son todas orden 0 o únicas y repartir parejo //Ene 31/17
  EsInicial:=VerificaDetalle(ADODtStCxCDetallePend,0); //Ene 31/17     //No deberia aplicar en FActoraje
  if Not EsInicial then
  begin
    if not ADODtStCxCDetallePend.Eof then
    begin
      TipoCon :=  ADODtStCxCDetallePendIdTipoContrato.AsInteger;
      Fant:= ADODtStCxCDetallePendFase.AsInteger;
      OAnt:= ADODtStCxCDetallePendOrdenAplica.AsInteger;
      ord:=ADODtStCxCDetallePendOrdenAplica.AsInteger;   //Se movio aca para usar orden de items
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
          if (porcentaje <1) and (valReg>valor) then  //Ajustar para aplicar lo que queda.. aca  debe ser sólo capital..
             ValReg:=Valor;
          if ((valreg<=valor)or (abs(valreg-valor)<0.0001) ) and (valreg<>0)then  //Dic 13/16 para que no aplique 0
          begin
             //Aplicar interno el valor dferegistro y restar
            ADODtstAplicacionesInternas.Insert;
            ADODtstAplicacionesInternas.FieldByName('IDCuentaXCobrarDetalle').AsInteger:=ADODtStCxCDetallePendIdCuentaXCobrarDetalle.AsInteger;
            ADODtstAplicacionesInternas.FieldByName(campoImporte).AsFloat:=valreg;
            //Verificar si esta asociado a concepto o se facturo==>Aplicar a Factura
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
            Valor:=VAlor-VAlReg ; //  oct 25/17
          end;
          //REsta movida de aca    oct 25/17

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
            ValReg:= ADODtStCxCDetallePend.FieldByName(CampoSaldo).AsFloat; //Lo que esta pendiente de pago
          end;
           if (porcentaje <1) and (valReg>valor) then  //Ajustar para aplicar lo que queda.. aca  debe ser sólo capital..
             ValReg:=Valor;
          if (valreg<=valor) or (abs(valreg-valor)<0.0001) { and (ValReg >0)}then
          begin                     //abr 19/17
             //Aplicar interno el valor dferegistro y restar
            ADODtstAplicacionesInternas.Insert;
            ADODtstAplicacionesInternas.FieldByName('IDCuentaXCobrarDetalle').AsInteger:=ADODtStCxCDetallePendIdCuentaXCobrarDetalle.AsInteger;
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
            Valor:=VAlor-VAlReg ;  // oct 25/17
          end;
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
            Valor:=SimpleRoundTo(VAlor-VAlReg, -6); ///feb 12/17cambio de -4   //Para evitar que reste si no alcanza oct 25/17
          end;
        end;
      end;
      ADODtStCxCDetallePend.Next;
    end;
  end // del si no es inicial ene 31/17
  else //PAGOS INICIALES    y  probablementee los finales jun 21/17 ??
  begin  //Par aaplicar iniciales Todos deben aplicar igual
    while not ADODtStCxCDetallePend.Eof do
    begin
      ValReg:= SimpleRoundTo(ADODtStCxCDetallePend.FieldByName(CampoSaldo).AsFloat*porcentaje,-6); ///feb 12/17cambio de -4  //Lo que esta pendiente de pago
      if (valreg<=valor) or  (abs(valreg-valor)<0.0001) then //O diferencias minimas
      begin                    //Ajuste Oct 17/17
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
        Valor:=SimpleRoundTo(VAlor-VAlReg, -6); ///feb 12/17cambio de -4   //oct 25/17 se  movio aca
      end;
      //Aca estaba la resta   oct 25/17
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
    ADOQryAuxiliar.SQL.Add('UPDATE CuentasXCobrar SET SALDO=SALDO - '+DataSet.FieldByName('Importe').AsString   // Si la CXC esta a 2 decimales aca aplica correcto
                          +' where IDCuentaXCobrar='+DAtaSEt.FieldByName('IDCuentaXCobrar').ASString);
    ADOQryAuxiliar.ExecSQL;
    ADOQryAuxiliar.Close;
    if Not EsInicial then //Para que no reste todo lo asociado con Pagos iniciales//hay que ver cuando se le resta el deposito en Garantia?
    begin//**********Para poner pagos en Anexos y SaldoTotal************** //Jul 4/17
      ADOQryAuxiliar.SQL.Clear;
      ADOQryAuxiliar.SQL.Add('UPDATE ANEXOS SET SALDOTOTAL=SALDOTOTAL - '+DataSet.FieldByName('Importe').AsString   //Anexos actualizacion saldos nuevos
                              +', PagadoTotal = PagadoTotal+ '+DataSet.FieldByName('Importe').AsString
                            +' where IDAnexo ='+adodsMasterIdAnexo.ASString); //debe tener valor.
      ADOQryAuxiliar.ExecSQL;   //Verificar porue par el deposito en Garantia  del inicio tiene más cosas que no deben descontarse
      ADOQryAuxiliar.Close;
    end;
    ADOQryAuxiliar.SQL.Clear;     //Abr 19/17
    ADOQryAuxiliar.SQL.Add('UPDATE CuentasXCobrar SET IdCuentaXCobrarEstatus = 3 ' +
                           ' where IDCuentaXCobrar='+DataSEt.FieldByName('IDCuentaXCobrar').ASString+
                           ' and (Saldo < 0.01)' ); // era 0.0001 Jun 19/17
    ADOQryAuxiliar.ExecSQL;
    ADOQryAuxiliar.Close;
    if ADODtStCXCPendientes.fieldbyname ('EsMoratorio').AsBoolean then
      AplicarMoratorioInterno(DAtaSEt.FieldByName('IDCuentaXCobrar').asinteger,DataSet.FieldByName('Importe').AsExtended); //Abr 17/17
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
  //Abr 17/17 Actualiza Totales de CXC para que actualice mnto vencido en anexo
  ADOPActualizaTotalesCXC.Parameters.ParamByName('@IdCuentaXCobrar').Value:=  DAtaSEt.FieldByName('IDCuentaXCobrar').asinteger;
  ADOPActualizaTotalesCXC.ExecProc;
  //VErificación de  Existencia Pago de Deposito en GArantia y Saldo Final, preguntar si se generan moratotrios al día o ver ??
 //Quitar de aca.. o al menos evitar si se estan pagando anticipos.. para evitar mala aplicacion... Mover para   el punto donde se llama el pos y verificar si es antcipo o pago a Capital
 // quitado Oct 2/17  VerificaYCreaCXCFinales(adodsMasterIdAnexo.AsInteger); //DEl que se acaba de aplicar
  ADODtStCXCPendientes.filter:=''; //Por si es la ultima y creo varias para que se ubique Oct 3/17
  ADODtStCXCPendientes.filtered:=False;
  ADODtStDetalleCXCMostrar.close;
  ADODtStDetalleCXCMostrar.open;
  if Valor >=0.01 then
     ShowMessage('Verificar los detalles de la cuenta por Cobrar para identificar que estén saldadas. ('+FloatToStr(Valor)+') ');
end;

procedure TdmPagos.VerificaYCreaCXCFinales(idAnexo:Integer); //Jun 21/17
var Saldo, SaldoDeposito:Double;
begin
  Saldo:=0;
  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.sql.Clear;
  ADOQryAuxiliar.sql.Add('Select * from Pagos where EsDeposito=1 and Saldo >0 and IdAnexo='+intTostr(IdAnexo));
  ADOQryAuxiliar.open;
  if not ADOQryAuxiliar.eof then
  begin  //Existe Deposito en Garantía
    SaldoDeposito:= ADOQryAuxiliar.FieldByName('Saldo').ASExtended ;
    ADOQryVerificaSaldoFinal.Close;
    ADOQryVerificaSaldoFinal.Parameters.ParamByName('IdAnexo').Value:= idanexo;
    ADOQryVerificaSaldoFinal.Open;
    if not ADOQryVerificaSaldoFinal.Eof then
      Saldo:=SimpleRoundTo(ADOQryVerificaSaldoFinal.fieldbyname('SaldoPorCobrarOSinPago').AsExtended, -2); //REdondeado para que haga la comparacion Oct 3/17 sino no coincidira con las CXC
    if (Saldo>0) and (Saldo <=saldoDeposito) then
    begin // Aca ya debe venir con cxc actualizadas se verifican antes de aplicar el pago..
      if Application.messagebox('  Tiene un Pago por depósito en garantía que puede usar para liquidar las últimas mensualidades. '
              +#13+'Se verificará la no existencia de moratorios al día y se generarán las cuentas por cobrar finales en caso de que estén pendientes. Realizar proceso de Creación de Cuentas X Cobrar?'
              ,'Confirmación',MB_YESNO)=IDYES then
      begin
        //Crear moratorios
        if (not CreaMoratoriosAFechaActual)  then
        begin
          if CrearCuentasFinales then   //Avisar de  la creación de las CXC finales...
            showMessage('Se crearon Cuentas de Cobrar de las últimas amortizaciones quedarán disponibles para Facturar y aplicar al pago correspondiente al Depósito en Garantía')
          else
            ShowMessage('Es posible que las cuentas finales ya se encuentren creadas, verifique, facture y proceda a aplicar con el Pago de deposito en Garantía ');
        end
        else
           ShowMessage('Hay Moratorios pendientes al día actual. Debe pagar primero estos antes de poder generar las cuentas por cobrar finales');
      end
      else
        ShowMessage('Proceso de Creación de Cuentas X Cobrar finales Cancelado');
    end;  //Tiene Saldo >0 y el depósito alcanza
  end;
end;

function TdmPagos.CrearCFDIPago(IdPago: Integer): Integer;
var
  dmFacturas: TdmFacturas;
  IdCFDI: Integer;
  CFDITimbrado: Boolean;
begin
  dmFacturas := TdmFacturas.Create(Self);
  try
    IdCFDI := dmFacturas.CrearCFDIPago(IdPago);
    CFDITimbrado := dmFacturas.Timbrar(IdCFDI);
  finally
    dmFacturas.Free;
  end;
//  VerificaYCambiaEstatusCXC(IdCFDI,1,IdCuentaXCobrar);
  if not CFDITimbrado then
    ShowMessage('CFDI creado, pendiente de timbrar')
  else
    Showmessage('CFDI pago timbrado ');
  Result := IdCFDI;
end;

function  TdmPagos.CrearCuentasFinales  :Boolean;
var REs:integer;
begin
  Res:=0;
  REsult:=FAlse;
  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.sql.Clear;   //Probablemente si PagoTotal es <1 no se debe crear?????? oct 24/17
  ADOQryAuxiliar.sql.Add(' Select aa.IdAnexoAmortizacion, c.idanexo,aa.IdAnexoCredito, aa.PagoTotal from AnexosAmortizaciones aa '
  +' inner join AnexosCreditos C on C.IdAnexoCredito=aa.IdAnexoCredito and c.IdAnexoCreditoEstatus=1 '
  +' where c.IdAnexo=:idAnexo and (not Exists (select * from CuentasXCobrar cxc where cxc.IdAnexosAmortizaciones=aa.idanexoamortizacion))' );
  ADOQryAuxiliar.Open;
  while not ADOQryAuxiliar.eof  do
  begin
    ADOStrdPrcGenCXCXAmortiza.Parameters.ParamByName('@IdAnexoAmortizacion').value:=  ADOQryAuxiliar.fieldbyname('IdAnexoAmortizacion').AsInteger;
    ADOStrdPrcGenCXCXAmortiza.ExecProc;
    if ADOStrdPrcGenCXCXAmortiza.Parameters.ParamByName('@IDCuentaXCobrar').Value>0 then //Ajustado Jun 30/17
      res:=1;
    if res<>0  then
      Result:=True;
    ADOQryAuxiliar.Next;
  end;
end;

function  TdmPagos.CreaMoratoriosAFechaActual: Boolean; //Jun 22/17
var
  idActual:integer;
begin
  Result:=False;
  adopSetCXCUPMoratorio.Parameters.ParamByName('@IdAnexo').value:=  IdAnexoAct;
  adopSetCXCUPMoratorio.Parameters.ParamByName('@Fecha').value:= _DmConection.LaFechaActual ;          //CAmbiar solo fecha
  adopSetCXCUPMoratorio.ExecProc;
  adopSetCXCUPMoratorio.Parameters.ParamByName('@IdCuentaXCobrar').Value:=  ADODtStCXCPendientes.FieldByName('IDCuentaXCobrar').asinteger;        //May 22/17
  adopSetCXCUPMoratorio.ExecProc;
  idActual:= ADODtStCXCPendientes.FieldByName('IdCuentaXCobrar').AsInteger;
  ADODtStCXCPendientes.Close;
  ADODtStCXCPendientes.Parameters.ParamByName('EsAnti').Value:=0; //oct 9/17 Son moratorios.. verificar
  ADODtStCXCPendientes.Open;
  ADODtStCXCPendientes.Locate('IdCuentaXCobrar', idActual,[]);
  if ADODtStCXCPendientes.FieldByName('EsMoratorio').asBoolean then   //Se supone que tendría los moratorios creados???
  begin
    ShowMessage('Se crearon moratorios');
    Result:=true;
  end;
end;

function  TdmPagos.CrearSiguienteCXC(idAnexo:integer; var idCxc:integer): Boolean; //Jun 29/17 //Crear sólo si tiene saldo
var REs:integer;
begin
  Res:=0;
  IdCXC:=-1;
  REsult:=FAlse;
  //VErificar si existen sin FActurar y sin pagar oct 9/17 Por si hubiese fallado el proceso??
  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.sql.Clear;
  ADOQryAuxiliar.sql.Add(' Select CXC.Descripcion, CXC.IdCuentaXCobrar, CXC.IdCuentaXCobrarBase, CXC.IdCuentaXCobrarEstatus, CXC.IdPersona, CXC.IdAnexosAmortizaciones AS IdAnexoAmortizacion, CXC.IdAnexo, CXC.IdEstadoCuenta, CXC.IdCFDI,'
      +' CXC.Fecha, CXC.FechaVencimiento, CXC.Importe, CXC.Impuesto, CXC.Interes, CXC.Total, CXC.Saldo, CXC.SaldoFactoraje, CXC.EsMoratorio, CI.SaldoDocumento, Ci.SaldoFactoraje as SaldoFactorajeCFDI,'
      +' ci.serie, Ci.folio from CuentasXCobrar CXC left Join CFDI CI on CI.IdCFDI= CXC.IdCFDI where '
      +' Saldo >0 and IDPersona= '+adodsMasteridpersonaCliente.asString + ' and (( (CXC.Fecha<=dbo.GetDateAux() and IdCuentaXCobrarEstatus=-1) ) and CXC.IdCFDI is null) and CXC.IDAnexo='
      + intToSTR(idAnexo)+' order by CXC.idanexosamortizaciones,EsMoratorio DEsc, CXC.FechaVencimiento');
  ADOQryAuxiliar.Open;
  if not ADOQryAuxiliar.eof then   //Oct 9/17
  begin
    IdCXC:=  ADOQryAuxiliar.FieldByName('idCuentaXCobrar').AsInteger;
    Result:=True;
  end
  else   //No hay cxc pregeneradas proximas..  busca siguiente a generar
  begin
    ADOQryAuxiliar.Close;
    ADOQryAuxiliar.sql.Clear;            //Consulta para inntentar crear siguiente CXC.. probablememnte Verificar si PagoTotal es >1 Oct 24/17
    ADOQryAuxiliar.sql.Add(' Select aa.IdAnexoAmortizacion, c.idanexo,aa.IdAnexoCredito, aa.PagoTotal from AnexosAmortizaciones aa '
    +' inner join AnexosCreditos C on C.IdAnexoCredito=aa.IdAnexoCredito and c.IdAnexoCreditoEstatus=1 '
    +' where c.IdAnexo='+intToSTR(idAnexo)+' and (not Exists (select * from CuentasXCobrar cxc where cxc.IdAnexosAmortizaciones=aa.idanexoamortizacion))'
    +' order by aa.periodo' ); //Agregado dic 20/17
    ADOQryAuxiliar.Open; //TRae todas las siguientes
    if not ADOQryAuxiliar.eof then
    begin
      ADOStrdPrcGenCXCXAmortiza.Parameters.ParamByName('@IdAnexoAmortizacion').value:=  ADOQryAuxiliar.fieldbyname('IdAnexoAmortizacion').AsInteger;
      ADOStrdPrcGenCXCXAmortiza.ExecProc;
      if ADOStrdPrcGenCXCXAmortiza.Parameters.ParamByName('@IDCuentaXCobrar').Value>0 then //Ajustado Jun 30/17
        res:=1;
      if res<>0  then
      begin
        Result:=True;
        IdCXC:=ADOStrdPrcGenCXCXAmortiza.Parameters.ParamByName('@IDCuentaXCobrar').Value;
      end;
    end;
  end; //Oct 9/17
end;

function TdmPagos.AplicaPago(idPago, IdCxc, IDCFDI: Integer;
  Monto: Double): Boolean; //abr 18/17      Abono Capital     y pagos anticipados
begin
  try
    ADODtStAplicacionesPagos.open;
    ADODtStAplicacionesPagos.Insert; //VErificar que tenga los demàs datos
    ADODtStAplicacionesPagosIdCuentaXCobrar.AsInteger:= IdCxc;
    ADODtStAplicacionesPagosIdPago.AsInteger:= IdPago;
    ADODtStAplicacionesPagosImporte.AsExtended:=Monto;
    ADODtStAplicacionesPagos.Post; //DEbe hacer el resto      //Aca no debe hacerse la verificacion del deposito en Garantía  PA y AC Oct 2/17
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
  Result := 0;
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
  ADODtStAplicacionesPagos.FieldByName('FechaAplicacion').asDAteTime:=_DmConection.LaFechaActual;//now; jun 30/17
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
  gGridForm:= TFrmConPagos.Create(Self);
  gGridForm.DataSet:= adodsMaster;
//  adodtstAnexos.Open;  //Mar 9/17
  adodtstAnexoSeleccion.Open;  //Mar 9/17
//  TFrmConPagos(gGridForm).DSAplicacion.DataSet:=ADODtStAplicacionesPagos;
  TFrmConPagos(gGridForm).actFacturarMoratorios:=ActGeneraPrefMoratorios;
  TFrmConPagos(gGridForm).dsPersonas.dataset:=adodsPersonas;
  TFrmConPagos(gGridForm).dsanexos.dataset:=adodtstAnexoSeleccion;  //Mar 9/17
  TFrmConPagos(gGridForm).DSDetallesCXC.dataset:= ADODtStCxCDetallePend;
  TFrmConPagos(gGridForm).dsConCXCPendientes.DataSet:=ADODtStCXCPendientes;
  TFrmConPagos(gGridForm).DSDetalleMostrar.DataSet:=ADODtStDetalleCXCMostrar;
  TFrmConPagos(gGridForm).DSAplicacion.DataSet :=ADODtStAplicacionesPagos;
  TFrmConPagos(gGridForm).DSauxiliar.DataSet :=ADOQryAuxiliar; //Abr 3/17
  TFrmConPagos(gGridForm).DSP_CalcMoratorioNueva.DataSet:=adopSetCXCUPMoratorio; //Abr 6/17
  TFrmConPagos(gGridForm).actAbonarCapital:=actCrearCXCAbonoCapital; //Abr 18/17
  TFrmConPagos(gGridForm).ActPagoAnticipado :=ActPagosAnticipados;//Jun 29/17
  TFrmConPagos(gGridForm).ActVerificayCreaFinal:=ActVerYCreaCXCFinales; //Oct 3/17
  TFrmConPagos(gGridForm).DSVerificaSaldoFinal.dataset :=adoQryVerificaSaldoFinal; //Oct 3/17
  TFrmConPagos(gGridForm).actGenCFDIPago := actGenCFDIPago;
  if adodsPagosAplicaciones.CommandText <> EmptyStr then adodsPagosAplicaciones.Open;
  gFormDeatil1:= TfrmPagosAplicaciones.Create(Self);
  gFormDeatil1.ReadOnlyGrid := True;
  gFormDeatil1.DataSet:= adodsPagosAplicaciones;
  //Para ajuste amortizaciones abr 18/17
  PaymentTime := ptEndOfPeriod;
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
  if (not ADODtStConceptoIVA.eof)  and (ADODtStConceptoIVA.RecordCount=2) then //pueden se ser varios no sólo 2
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
