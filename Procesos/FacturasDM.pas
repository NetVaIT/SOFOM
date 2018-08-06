unit FacturasDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB,dateutils,dialogs,forms, shellAPI,winapi.windows,
  Vcl.Controls,
  VirtualXML,
  XMLIntf, Activex,VirtualXML33, DocumentosDM, ProcesosType;

type
  TdmFacturas = class(T_dmStandar)
    adodsMasterIdCFDI: TLargeintField;
    adodsMasterIdCFDITipoDocumento: TIntegerField;
    adodsMasterIdCFDIFormaPago: TIntegerField;
    adodsMasterIdMetodoPago: TIntegerField;
    adodsMasterIdMoneda: TIntegerField;
    adodsMasterIdPersonaEmisor: TIntegerField;
    adodsMasterIdPersonaReceptor: TIntegerField;
    adodsMasterIdDocumentoCBB: TIntegerField;
    adodsMasterIdDocumentoXML: TIntegerField;
    adodsMasterIdDocumentoPDF: TIntegerField;
    adodsMasterIdCFDIEstatus: TIntegerField;
    adodsMasterIdCFDIFacturaGral: TLargeintField;
    adodsMasterIdClienteDomicilio: TIntegerField;
    adodsMasterCuentaCte: TStringField;
    adodsMasterTipoCambio: TStringField;
    adodsMasterTipoComp: TStringField;
    adodsMasterSerie: TStringField;
    adodsMasterFolio: TLargeintField;
    adodsMasterFecha: TDateTimeField;
    adodsMasterLugarExpedicion: TStringField;
    adodsMasterSello: TStringField;
    adodsMasterCondPago: TStringField;
    adodsMasterNoCertificado: TStringField;
    adodsMasterCertificado: TStringField;
    adodsMasterSubTotal: TFloatField;
    adodsMasterDescto: TFloatField;
    adodsMasterMotivoDescto: TStringField;
    adodsMasterTotal: TFloatField;
    adodsMasterNumCtaPago: TStringField;
    adodsMasterCadenaOriginal: TStringField;
    adodsMasterTotalImpuestoRetenido: TFloatField;
    adodsMasterTotalImpuestoTrasladado: TFloatField;
    adodsMasterSaldoDocumento: TFloatField;
    adodsMasterFechaCancelacion: TDateTimeField;
    adodsMasterObservaciones: TStringField;
    adodsMasterPorcentajeIVA: TFloatField;
    adodsMasterEmailCliente: TStringField;
    adodsMasterUUID_TB: TStringField;
    adodsMasterSelloCFD_TB: TStringField;
    adodsMasterSelloSAT_TB: TStringField;
    adodsMasterCertificadoSAT_TB: TStringField;
    adodsMasterFechaTimbrado_TB: TDateTimeField;
    adodsCFDIConceptos: TADODataSet;
    adodsCFDIConceptosIdCFDI: TLargeintField;
    adodsCFDIConceptosIdUnidadMedida: TIntegerField;
    adodsCFDIConceptosCantidad: TFloatField;
    adodsCFDIConceptosUnidad: TStringField;
    adodsCFDIConceptosDescripcion: TStringField;
    adodsCFDIConceptosNoIdentifica: TStringField;
    adodsCFDIConceptosValorUnitario: TFMTBCDField;
    adodsCFDIConceptosImporte: TFMTBCDField;
    adodsCFDIConceptosIdCFDIConcepto: TLargeintField;
    dsMaster: TDataSource;
    ADODtStCFDIImpuestos: TADODataSet;
    ADODtStCFDIImpuestosIdCFDI: TLargeintField;
    ADODtStCFDIImpuestosTipoImp: TStringField;
    ADODtStCFDIImpuestosImpuesto: TStringField;
    ADODtStCFDIImpuestosTasa: TFloatField;
    ADODtStCFDIImpuestosImporte: TFloatField;
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
    ADODtStPersonaReceptor: TADODataSet;
    ADODtStPersonaReceptoridpersona: TAutoIncField;
    ADODtStPersonaReceptorRazonSocial: TStringField;
    ADODtStPersonaReceptorRFC: TStringField;
    ADODtStPersonaReceptorNumCtaPagoCliente: TStringField;
    ADODtStPersonaReceptorIdPersonaDomicilio: TAutoIncField;
    ADODtStPersonaReceptorIdDomicilio: TIntegerField;
    ADODtStPersonaReceptorIdDomicilioTipo: TIntegerField;
    ADODtStPersonaReceptorPredeterminado: TBooleanField;
    ADODtStPersonaReceptorCalle: TStringField;
    ADODtStPersonaReceptorNoExterior: TStringField;
    ADODtStPersonaReceptorNoInterior: TStringField;
    ADODtStPersonaReceptorColonia: TStringField;
    ADODtStPersonaReceptorCodigoPostal: TStringField;
    ADODtStPersonaReceptorMunicipio: TStringField;
    ADODtStPersonaReceptorPoblacion: TStringField;
    ADODtStPersonaReceptorEstado: TStringField;
    ADODtStPersonaReceptorPais: TStringField;
    ADODtStPersonaEmisorIdMetodoPago: TIntegerField;
    ADODtStPersonaReceptorIdMetodoPago: TIntegerField;
    ADODtStBuscaFolioSerie: TADODataSet;
    ADODtStBuscaFolioSerieIdCFDITipoDocumento: TAutoIncField;
    ADODtStBuscaFolioSerieDescripcion: TStringField;
    ADODtStBuscaFolioSerieSerieDoc: TStringField;
    ADODtStBuscaFolioSerieFolioDoc: TLargeintField;
    ADODtStBuscaFolioSerieTipoComprobante: TStringField;
    ADODtStCFDIEstatus: TADODataSet;
    ADODtStMetodoPago: TADODataSet;
    ADODtStMetodoPagoIdMetodoPago: TAutoIncField;
    ADODtStMetodoPagoIdentificador: TStringField;
    ADODtStMetodoPagoDescripcion: TStringField;
    ADODtStMetodoPagoExigeCuenta: TIntegerField;
    ADODtStMetodoPagoClaveSAT2016: TStringField;
    ADODtStMonedas: TADODataSet;
    ADODtStTiposDocumentos: TADODataSet;
    ADODtStTiposDocumentosIdCFDITipoDocumento: TAutoIncField;
    ADODtStTiposDocumentosDescripcion: TStringField;
    ADODtStTiposDocumentosSerieDoc: TStringField;
    ADODtStTiposDocumentosFolioDoc: TLargeintField;
    ADODtStTiposDocumentosTipoComprobante: TStringField;
    adodsMasterCliente: TStringField;
    adodsMasterEstatus: TStringField;
    adodsMasterMetodoPago: TStringField;
    actTimbrarCFDI: TAction;
    adodsArchivosCerKey: TADODataSet;
    adodsArchivosCerKeyIdPersona: TIntegerField;
    adodsArchivosCerKeyIdDocumentoCER: TIntegerField;
    adodsArchivosCerKeyIdDocumentoKEY: TIntegerField;
    adodsArchivosCerKeyClave: TStringField;
    adodsArchivosCerKeyVencimiento: TDateTimeField;
    adodsArchivosCerKeyNomCert: TStringField;
    adodsArchivosCerKeyIdCert: TGuidField;
    adodsArchivosCerKeyArchiCer: TBlobField;
    adodsArchivosCerKeyNomKey: TStringField;
    adodsArchivosCerKeyIdKey: TGuidField;
    adodsArchivosCerKeyArchiKey: TBlobField;
    adodsMasterMetPagoClaveSAT: TStringField;
    adodsMasterClaveMoneda: TStringField;
    adodsDocumento: TADODataSet;
    adodsDocumentoIdDocumento: TAutoIncField;
    adodsDocumentoIdDocumentoTipo: TIntegerField;
    adodsDocumentoIdDocumentoClase: TIntegerField;
    adodsDocumentoDescripcion: TStringField;
    adodsDocumentoNombreArchivo: TStringField;
    adodsDocumentoIdArchivo: TGuidField;
    adodsDocumentoArchivo: TBlobField;
    ADOQryAuxiliar: TADOQuery;
    ADODSAuxiliar: TADODataSet;
    adodsMasterTipoDocumento: TStringField;
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
    ADODtStDireccAuxiliar: TADODataSet;
    AutoIncField2: TAutoIncField;
    IntegerField9: TIntegerField;
    IntegerField10: TIntegerField;
    IntegerField11: TIntegerField;
    BooleanField1: TBooleanField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    actImprimirCFDI: TAction;
    adodsMasterDireccionC: TStringField;
    adodsCFDIConceptosIdCuentaXCobrarDetalle: TIntegerField;
    adodsMasterIdCuentaXCobrar: TIntegerField;
    adodsMasterSaldoFactoraje: TFMTBCDField;
    actCancelarCFDI: TAction;
    ADODtStSelMetPago: TADODataSet;
    ADODtStSelMetPagoIdMetodoPago: TIntegerField;
    ADODtStSelMetPagoIdentificador: TStringField;
    ADODtStSelMetPagoDescripcion: TStringField;
    ADODtStSelMetPagoExigeCuenta: TIntegerField;
    ADODtStSelMetPagoClaveSAT2016: TStringField;
    adospGenPrefactura: TADOStoredProc;
    adoqCFDI: TADOQuery;
    dsCFDI: TDataSource;
    adoqCFDIIdCFDI: TLargeintField;
    adoqCFDIIdCuentaXCobrar: TIntegerField;
    adoqCFDIIdCFDITipoDocumento: TIntegerField;
    adoqCFDIIdCFDIFormaPago: TIntegerField;
    adoqCFDIIdMetodoPago: TIntegerField;
    adoqCFDIIdMoneda: TIntegerField;
    adoqCFDIIdCFDIFormaPago33: TIntegerField;
    adoqCFDIIdCFDIMetodoPago33: TIntegerField;
    adoqCFDIIDCFDITipoRelacion: TIntegerField;
    adoqCFDIIDCFDIUsoCFDI: TIntegerField;
    adoqCFDIIdPersonaEmisor: TIntegerField;
    adoqCFDIIdPersonaReceptor: TIntegerField;
    adoqCFDIIdDocumentoCBB: TIntegerField;
    adoqCFDIIdDocumentoXML: TIntegerField;
    adoqCFDIIdDocumentoPDF: TIntegerField;
    adoqCFDIIdCFDIEstatus: TIntegerField;
    adoqCFDIIdCFDIFacturaGral: TLargeintField;
    adoqCFDIIdClienteDomicilio: TIntegerField;
    adoqCFDIVersion: TStringField;
    adoqCFDIVersionPago: TStringField;
    adoqCFDISerie: TStringField;
    adoqCFDIFolio: TLargeintField;
    adoqCFDIFecha: TDateTimeField;
    adoqCFDICondPago: TStringField;
    adoqCFDIFormaPago33: TStringField;
    adoqCFDIMetodoPago33: TStringField;
    adoqCFDICuentaCte: TStringField;
    adoqCFDITipoCambio: TStringField;
    adoqCFDIMoneda: TStringField;
    adoqCFDITipoComp: TStringField;
    adoqCFDILugarExpedicion: TStringField;
    adoqCFDIEmisorRFC: TStringField;
    adoqCFDIEmisorNombre: TStringField;
    adoqCFDIEmisorRegimenFiscal: TStringField;
    adoqCFDIReceptorRFC: TStringField;
    adoqCFDIReceptorNombre: TStringField;
    adoqCFDIUsoCFDI: TStringField;
    adoqCFDISubTotal: TFloatField;
    adoqCFDIDescto: TFloatField;
    adoqCFDIMotivoDescto: TStringField;
    adoqCFDITotal: TFMTBCDField;
    adoqCFDINumCtaPago: TStringField;
    adoqCFDITotalImpuestoRetenido: TFloatField;
    adoqCFDITotalImpuestoTrasladado: TFloatField;
    adoqCFDISaldoDocumento: TFMTBCDField;
    adoqCFDISello: TStringField;
    adoqCFDINoCertificado: TStringField;
    adoqCFDICertificado: TStringField;
    adoqCFDICadenaOriginal: TStringField;
    adoqCFDIFechaCancelacion: TDateTimeField;
    adoqCFDIObservaciones: TStringField;
    adoqCFDIPorcentajeIVA: TFloatField;
    adoqCFDIEmailCliente: TStringField;
    adoqCFDIUUID_TB: TStringField;
    adoqCFDISelloCFD_TB: TStringField;
    adoqCFDISelloSAT_TB: TStringField;
    adoqCFDICertificadoSAT_TB: TStringField;
    adoqCFDIFechaTimbrado_TB: TDateTimeField;
    adoqCFDIRFCProvCertifica_TB: TStringField;
    adoqCFDILeyendaSAT_TB: TStringField;
    adoqCFDIConfirmacion: TStringField;
    adoqCFDICFDITipoRelacion: TStringField;
    adoqCFDIConceptos: TADOQuery;
    adoqCFDIConceptosImpuestos: TADOQuery;
    adoqCFDIImpuestos: TADOQuery;
    dsCFDIConceptos: TDataSource;
    adoqCFDIConceptosIdCFDIConcepto: TLargeintField;
    adoqCFDIConceptosIdUnidadMedida: TIntegerField;
    adoqCFDIConceptosIdCuentaXCobrarDetalle: TIntegerField;
    adoqCFDIConceptosCantidad: TFloatField;
    adoqCFDIConceptosUnidad: TStringField;
    adoqCFDIConceptosDescripcion: TStringField;
    adoqCFDIConceptosNoIdentifica: TStringField;
    adoqCFDIConceptosValorUnitario: TFMTBCDField;
    adoqCFDIConceptosImporte: TFMTBCDField;
    adoqCFDIConceptosDescuento: TFMTBCDField;
    adoqCFDIConceptosSATClaveProdServ: TStringField;
    adoqCFDIConceptosSATClaveUnidad: TStringField;
    adoqCFDIConceptosImpuestosIdCFDIConceptoImpuesto: TAutoIncField;
    adoqCFDIConceptosImpuestosIdCFDITipoImpuesto: TIntegerField;
    adoqCFDIConceptosImpuestosTipoImp: TStringField;
    adoqCFDIConceptosImpuestosBase: TFMTBCDField;
    adoqCFDIConceptosImpuestosClaveImpuesto: TStringField;
    adoqCFDIConceptosImpuestosImpuesto: TStringField;
    adoqCFDIConceptosImpuestosTipoFactor: TStringField;
    adoqCFDIConceptosImpuestosTasaOCuota: TFMTBCDField;
    adoqCFDIConceptosImpuestosImporte: TFMTBCDField;
    adoqCFDIImpuestosIdCFDIImpuesto: TAutoIncField;
    adoqCFDIImpuestosTipoImp: TStringField;
    adoqCFDIImpuestosImpuesto: TStringField;
    adoqCFDIImpuestosTasa: TFloatField;
    adoqCFDIImpuestosImporte: TFloatField;
    adoqCFDIImpuestosIdCFDITipoImpuesto: TIntegerField;
    adoqCFDIImpuestosTipoFactor: TStringField;
    adoqCFDIImpuestosClaveImpuesto: TStringField;
    adopUpdCFDITimbre: TADOCommand;
    adoqCFDITipoDocumento: TStringField;
    adodsMasterVersion: TStringField;
    adospSetCFDIFolio: TADOStoredProc;
    adocUpdCFDIArchivos: TADOCommand;
    adodsMasterIdCFDIFormaPago33: TIntegerField;
    adodsMasterIdCFDIMetodoPago33: TIntegerField;
    adodsMasterIDCFDITipoRelacion: TIntegerField;
    adodsMasterIDCFDIUsoCFDI: TIntegerField;
    adodsMasterFormaPago33: TStringField;
    adodsMasterMetodoPago33: TStringField;
    adodsMasterTipoRelacion: TStringField;
    adodsMasterUsoCFDI: TStringField;
    adodsCFDIConceptosDescuento: TFMTBCDField;
    adodsCFDIConceptosSATClaveProdServ: TStringField;
    adodsCFDIConceptosSATClaveUnidad: TStringField;
    adocSetConceptoImpuesto: TADOCommand;
    adocUpdCFDITotales: TADOCommand;
    adocSetImpuestos: TADOCommand;
    adocDelConceptoImpuesto: TADOCommand;
    adoqCFDIRelacionados: TADOQuery;
    adoqCFDIRelacionadosIdCFDIRelacionado: TLargeintField;
    adoqCFDIRelacionadosUUID: TStringField;
    actRelacionarCFDI: TAction;
    adospGenCFDIPago: TADOStoredProc;
    adodsMasterIdPago: TIntegerField;
    adodsMasterNumPagosAplicados: TIntegerField;
    adodsMasterIdCFDIComplementoPago: TLargeintField;
    adodsMasterIdCFDITipoCadenaPago: TIntegerField;
    adodsMasterVersionPago: TStringField;
    adodsMasterFechaPago: TDateTimeField;
    adodsMasterFormaPagoP: TStringField;
    adodsMasterMonedaP: TStringField;
    adodsMasterTipoCambioP: TFMTBCDField;
    adodsMasterMonto: TFMTBCDField;
    adodsMasterNumOperacion: TStringField;
    adoqFormasPago33: TADOQuery;
    adoqMetodosPago33: TADOQuery;
    adoqTiposRelaciones: TADOQuery;
    adoqUsosCFDI: TADOQuery;
    adodsMasterRFCEmisor: TStringField;
    adodsCFDICPRelacionados: TADODataSet;
    adodsCFDICPRelacionadosIdCFDIComplementoPagoRelacionado: TLargeintField;
    adodsCFDICPRelacionadosIdCFDIComplementoPago: TLargeintField;
    adodsCFDICPRelacionadosIdCFDIAsociado: TLargeintField;
    adodsCFDICPRelacionadosUUID: TStringField;
    adodsCFDICPRelacionadosSerie: TStringField;
    adodsCFDICPRelacionadosFolio: TStringField;
    adodsCFDICPRelacionadosMonedaDR: TStringField;
    adodsCFDICPRelacionadosTipoCambioDR: TFMTBCDField;
    adodsCFDICPRelacionadosMetodoPagoDR: TStringField;
    adodsCFDICPRelacionadosNumParcialidad: TIntegerField;
    adodsCFDICPRelacionadosImpSaldoAnt: TFMTBCDField;
    adodsCFDICPRelacionadosImpPagado: TFMTBCDField;
    adodsCFDICPRelacionadosImpSaldoInsoluto: TFMTBCDField;
    adoqCFDIInfo: TADOQuery;
    adoqCFDIInfoIdCFDI: TLargeintField;
    adoqCFDIInfoIdCFDITipoDocumento: TIntegerField;
    adoqCFDIInfoIdCFDIEstatus: TIntegerField;
    adoqCFDIInfoIdCuentaXCobrar: TIntegerField;
    adoqCFDIInfoIdPago: TIntegerField;
    adoqCFDIInfoVersion: TStringField;
    adoqCFDIInfoVersionPago: TStringField;
    adoqCFDIComplementoPagos: TADOQuery;
    adoqCFDIComplementoPagosRelacionado: TADOQuery;
    adoqCFDIComplementoPagosIdCFDIComplementoPago: TLargeintField;
    adoqCFDIComplementoPagosIdCFDI: TLargeintField;
    adoqCFDIComplementoPagosIdCFDITipoCadenaPago: TIntegerField;
    adoqCFDIComplementoPagosFechaPago: TDateTimeField;
    adoqCFDIComplementoPagosFormaPagoP: TStringField;
    adoqCFDIComplementoPagosMonedaP: TStringField;
    adoqCFDIComplementoPagosTipoCambioP: TFMTBCDField;
    adoqCFDIComplementoPagosMonto: TFMTBCDField;
    adoqCFDIComplementoPagosNumOperacion: TStringField;
    adoqCFDIComplementoPagosRFCEmisorCtaOrd: TStringField;
    adoqCFDIComplementoPagosNomBancoOrdExt: TStringField;
    adoqCFDIComplementoPagosCtaOrdenante: TStringField;
    adoqCFDIComplementoPagosRFCEmisorCtaBen: TStringField;
    adoqCFDIComplementoPagosCtaBeneficiario: TStringField;
    adoqCFDIComplementoPagosTipoCadPago: TStringField;
    adoqCFDIComplementoPagosCerPago: TStringField;
    adoqCFDIComplementoPagosCadPago: TStringField;
    adoqCFDIComplementoPagosSelloPago: TStringField;
    dsCFDIComplementoPagos: TDataSource;
    adoqCFDIComplementoPagosRelacionadoIdCFDIComplementoPagoRelacionado: TLargeintField;
    adoqCFDIComplementoPagosRelacionadoIdCFDIComplementoPago: TLargeintField;
    adoqCFDIComplementoPagosRelacionadoIdCFDIAsociado: TLargeintField;
    adoqCFDIComplementoPagosRelacionadoUUID: TStringField;
    adoqCFDIComplementoPagosRelacionadoSerie: TStringField;
    adoqCFDIComplementoPagosRelacionadoFolio: TStringField;
    adoqCFDIComplementoPagosRelacionadoMonedaDR: TStringField;
    adoqCFDIComplementoPagosRelacionadoTipoCambioDR: TFMTBCDField;
    adoqCFDIComplementoPagosRelacionadoMetodoPagoDR: TStringField;
    adoqCFDIComplementoPagosRelacionadoNumParcialidad: TIntegerField;
    adoqCFDIComplementoPagosRelacionadoImpSaldoAnt: TFMTBCDField;
    adoqCFDIComplementoPagosRelacionadoImpPagado: TFMTBCDField;
    adoqCFDIComplementoPagosRelacionadoImpSaldoInsoluto: TFMTBCDField;
    procedure DataModuleCreate(Sender: TObject);
    procedure actTimbrarCFDIExecute(Sender: TObject);
    procedure adodsMasterNewRecord(DataSet: TDataSet);
    procedure adodsMasterBeforeOpen(DataSet: TDataSet);
    procedure adodsCFDIConceptosBeforeInsert(DataSet: TDataSet);
    procedure adodsCFDIConceptosAfterPost(DataSet: TDataSet);
    procedure adodsCFDIConceptosNewRecord(DataSet: TDataSet);
    procedure adodsCFDIConceptosValorUnitarioChange(Sender: TField);
    procedure adodsCFDIConceptosAfterDelete(DataSet: TDataSet);
    procedure adodsMasterIdPersonaReceptorChange(Sender: TField);
    procedure ADODtStDireccionesClienteCalcFields(DataSet: TDataSet);
    procedure actImprimirCFDIExecute(Sender: TObject);
    procedure adodsMasterAfterOpen(DataSet: TDataSet);
    procedure actCancelarCFDIExecute(Sender: TObject);
    procedure actTimbrarCFDIUpdate(Sender: TObject);
    procedure actCancelarCFDIUpdate(Sender: TObject);
    procedure adodsCFDIConceptosBeforeDelete(DataSet: TDataSet);
    procedure actRelacionarCFDIExecute(Sender: TObject);
    procedure dsMasterDataChange(Sender: TObject; Field: TField);
    procedure actRelacionarCFDIUpdate(Sender: TObject);
  private
    { Private declarations }
    FIdCFDITipoDocumento: TCFDITipoDocumento;
    FCanEdit: Boolean;
    FIdCFDI: Integer;
    procedure ReadFileCERKEY(FileNameCER,FileNameKEY: TFileName);
    function ConvierteFechaT_DT(Texto: String): TDateTime;
//    function CargaXMLPDFaFS(Archivo, Describe: string): integer;
//    procedure SubirXMLPDFaFS(FileName: TFileName);
//    Function ActualizaSaldoCliente(IdCFDI, IDCliente, IDDomicilioCliente:Integer;Importe :Double; operacion:String):Boolean;
    function SacaTipoComp(tipoD: Integer): String;
    function InformacionContrato(IdCXC: Integer): String;
    procedure ReadFile(FileName: TFileName);
//    function CrearArchivos_TimbrePrueba(var Ruta: String;
//      var TimbradoCFDI: TTimbreCFDI; Adicional: String): Boolean;
    procedure DesAsociarCFDIdeCXC(Idcfdi: Integer);
    procedure RegistraBitacora(tipoRegistro: Integer; Observacion: String);    //Regresado
//    function Timbrar32(IdCFDI: Integer): Boolean;
    function Timbrar33(IdCFDI: Integer): Boolean;
    procedure GenerarPDF(IdCFDI:Integer; ArchivoPDF, ArchivoImagen: TFileName);
    function AgregarDocumento(FileName: TFileName): Integer;
    procedure SetCanEdit(const Value: Boolean);
    property IdCFDITipoDocumento: TCFDITipoDocumento read FIdCFDITipoDocumento write FIdCFDITipoDocumento default tdFactura;
    property IdCFDI: Integer read FIdCFDI write FIdCFDI default 0;
//    property Muestra:Boolean read FMuestra write SetMuestra;
  protected
    procedure SetFilter; override;
  public
    { Public declarations }
    EsProduccion:Boolean;
    constructor CreateWMostrar(AOwner: TComponent; Muestra: Boolean;
      IdCFDITipoDocumento: TCFDITipoDocumento); virtual;
    function CrearPrefactura(IdCuentaXCobrar: Integer): Integer;
    function CrearCFDIPago(IdPago: Integer): Integer;
    procedure SetCFDI(IdCFDI: Integer);
    function Timbrar(IdCFDI: Integer): Boolean;
    property CanEdit: Boolean read FCanEdit write SetCanEdit;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses FacturasForm, ConceptosFacturaForm,
  DocComprobanteFiscal, FacturaTipos, XMLtoPDFDmod,
  _Utils, _ConectionDmod, ConfiguracionDM, FacturaConfirmacionForm,
  FacturaReglamentacion, Facturacion.ComprobanteV33,
  Facturacion.ComplementoPagoV1, Facturacion.ImpuestosLocalesV1,
  Facturacion.Helper, RptCFDI33DM, CFDIRelacionadosDM, CFDICPRelacionadosForm;

{$R *.dfm}

procedure TdmFacturas.actCancelarCFDIExecute(Sender: TObject);
var
  Certificado: TFECertificado;
  FileCertificado, FileKey : TFileName;
  Clave, RutaBase, Carpeta, Respuesta, ArchivoSal: string;
  Dato: string;
  Motivo: string;
  Anio,dia,mes:Word;
  F:TextFile;
begin
  inherited;
  //Verificar que sea el  CFDI  de la ultima amortización.., si es un moratorio requiere que ya se haya desaplicado(proceso aun no realizado).. y dejar las
  // amortizaciones moratorios habilitadas nuevamente
  //Cancelar CFDI
  dato:= '¿Está seguro CANCELAR el documento con Folio:'
           +adodsMaster.fieldbyname('Folio').ASString+' Serie: '
           +adodsMaster.fieldbyname('Serie').ASString +'?';
      //Borrar luego
      motivo:= ' ';
  if (Application.MessageBox(pChar(dato),'Confirmación',MB_YESNO)=IDYES) and(inputQuery('Motivo Cancelación','Motivo cancelacion',motivo)) then
  begin
    adodsArchivosCerKey.Close;

    adodsArchivosCerKey.Parameters.ParamByName('IdPersona').Value := adodsMaster.FieldByName('IdPersonaEmisor').asInteger;
    adodsArchivosCerKey.Open;

    DecodeDate(Now, Anio, Mes, Dia);

    //Poner Proceso para Cancelar
    FileCertificado := ExtractFilePath(application.ExeName)+ adodsArchivosCerKeyNomCert.AsString;
    FileKey := ExtractFilePath(application.ExeName)+  adodsArchivosCerKeyNomKey.AsString;  //  TPath.GetTempPath +
    ReadFileCERKEY(FileCertificado,FileKey);

    Clave := adodsArchivosCerKeyClave.AsString;
    Certificado.RFCAlQuePertenece:= adodsMasterRFCEmisor.AsString;
    Certificado.Ruta := FileCertificado;
    Certificado.LlavePrivada.Ruta := FileKey;
    Certificado.LlavePrivada.Clave := Clave;

                                //SEp 27/17 cambiado por este era rutabase
    Esproduccion:=FileExists(ExtractFilePath(application.ExeName)+'EnProduccion.txt'); //Temporal Dic 8/15

    if EsProduccion then  //Ajustado para poder hacer pruebas
      RutaBase:=dmConfiguracion.RutaFacturas//ExtractFilePath(application.ExeName); //CAmbiado SEp 27/17
    else
      RutaBase:=ExtractFilePath(application.ExeName);
    if RutaBase='' then
       RutaBase:=ExtractFilePath(application.ExeName);    // SEp 27/17

    Carpeta := RutaBase+'Canceladas\';
    ArchivoSal:= UpperCase(System.SysUtils.FormatSettings.ShortMonthNames[MonthOfTheYear(Now)]) +
                IntToStr(Anio) +'_'+adodsmasterserie.AsString +adodsMasterFolio.asstring+'.txt' ;


    // := RutaBase + ADODtStPersonaEmisorRFC.AsString + SubCarpeta;
    if not DirectoryExists (Carpeta) then
       ForceDirectories(Carpeta);
    if DirectoryExists (Carpeta) then
    begin
      //Ajute para poder hacer pruebas proceso cuando se usan datos de produccion oct 20/17
      if (not ESProduccion) then //Si no es produccion lo debe dar por cancelado
      begin  //Pruebas..
        adodsMaster.Edit;
        adodsMasterFechaCancelacion.AsDateTime:=Now;
        adodsMasterIdCFDIEstatus.AsInteger:=3;
        if adodsMasterIdCuentaXCobrar.IsNull then //Ajuste Ago 3/17par aque guarde la asociacion quese va a quitar
          adodsMasterObservaciones.asString:= adodsMasterObservaciones.asString+' '+ motivo+' '+ respuesta+' Sin IdCXC'
        else
          adodsMasterObservaciones.asString:= adodsMasterObservaciones.asString+' '+ motivo+' '+ respuesta+' IdCXCPrevia:'+adodsMasterIdCuentaXCobrar.AsString;
        adodsMaster.Post;
         //Actualiza Inventario y demás   //Mar 7/16
        if (adodsMasterIdCFDITipoDocumento.AsInteger=1)  then
          DesAsociarCFDIdeCXC(adodsMasterIdCFDI.AsInteger); //VErificar si se  quita la relacion de la CXC y se le cambi ael estatus a -1 (Pendiente (sin prefactura)    RevertirInventario(adodsMasterIdOrdenSalida.value,adodsMasterIdCFDI.value); //Mar 10/16    PruebaCancelacion
        //Ajuste
//        if (adodsMasterIdCFDITipoDocumento.AsInteger=1) or (adodsMasterIdCFDITipoDocumento.AsInteger=3) then //CancelandoCFDI   Pruebas //Dic 2916
//         ActualizaSaldoCliente(adodsMasterIdCFDI.value,adodsMasterIdPersonaReceptor.Value,adodsMasterIdClienteDomicilio.value, adodsMasterTotal.Value,'- ');//Mar 7/16
        ShowMessage(adodsMasterUUID_TB.AsString + #13+'Prueba de Cancelación ');
      end
      else
      if  CancelarCFDI(adodsMasterUUID_TB.AsString,carpeta+ArchivoSal,Certificado,Respuesta,Esproduccion) then
      begin
        dato:=Respuesta;

        Assignfile(F,carpeta+ArchivoSal);
        reset(F);
        readln(F,Respuesta);
        CloseFile(F);
        if pos('previamente',Respuesta)>0 then
        begin
          adodsMaster.Edit;
          adodsMasterFechaCancelacion.AsDateTime:=Now;
          adodsMasterIdCFDIEstatus.AsInteger:=3;
          if adodsMasterIdCuentaXCobrar.IsNull then //Ajuste Ago 3/17par aque guarde la asociacion quese va a quitar
            adodsMasterObservaciones.asString:= adodsMasterObservaciones.asString+' Previo '+ motivo+' '+ respuesta+' Sin IdCXC'
          else
            adodsMasterObservaciones.asString:= adodsMasterObservaciones.asString+' '+ motivo+' '+ respuesta+' IdCXCPrevia:'+adodsMasterIdCuentaXCobrar.AsString;

         // adodsMasterObservaciones.asString:= adodsMasterObservaciones.asString+' Previo '+ motivo+' '+ respuesta;
          adodsMaster.Post;
           //Actualiza Inventario y demás   //Mar 7/16
          if (adodsMasterIdCFDITipoDocumento.AsInteger=1)  then //abr 15/16 Solo Factura o Notas Ventas (No Notas Credito ni Cargo)
            DesAsociarCFDIdeCXC(adodsMasterIdCFDI.AsInteger); //VErificar si se  quita la relacion de la CXC y se le cambi ael estatus a -1 (Pendiente (sin prefactura)  RevertirInventario(adodsMasterIdOrdenSalida.value,adodsMasterIdCFDI.value); //Mar 10/16     //Cancelado Antes   FActuras (No entra si es REmision)


          //Actualiza datos   //Verificar que no sea tipo2 (nota Credito)  Abr 28/16                    NCArgo
//          if  (adodsMasterIdCFDITipoDocumento.AsInteger=1) or (adodsMasterIdCFDITipoDocumento.AsInteger=3) then //Dic 29/16
//          // verificar que más se deshace..
//             ActualizaSaldoCliente(adodsMasterIdCFDI.value,adodsMasterIdPersonaReceptor.Value,adodsMasterIdClienteDomicilio.value, adodsMasterTotal.Value,'- ');//Mar 7/16
//          //Actualizar Saldo Cliente //No debio actualizar antes

          ShowMessage('El comprobante ya habia sido cancelado anteriormente');
        end
        else                                      //Ajuste por si acaso cambio Abr 18/16
           if  pos('UUID CANCELADO CORRECTAMENTE' ,UpperCase(Respuesta))>0 then
           begin
             adodsMaster.Edit;
             adodsMasterFechaCancelacion.AsDateTime:=Now;
             adodsMasterIdCFDIEstatus.AsInteger:=3;
             if adodsMasterIdCuentaXCobrar.IsNull then //Ajuste Ago 3/17par aque guarde la asociacion quese va a quitar
                adodsMasterObservaciones.asString:= adodsMasterObservaciones.asString+' '+ motivo+' '+ respuesta+' Sin IdCXC'
             else
               adodsMasterObservaciones.asString:= adodsMasterObservaciones.asString+' '+ motivo+' '+ respuesta+' IdCXCPrevia:'+adodsMasterIdCuentaXCobrar.AsString;
             adodsMaster.Post;

               //Actualiza Inventario y demás   //Mar 7/16
             if (adodsMasterIdCFDITipoDocumento.AsInteger=1) then
                DesAsociarCFDIdeCXC(adodsMasterIdCFDI.AsInteger); //VErificar si se  quita la relacion de la CXC y se le cambi ael estatus a -1 (Pendiente (sin prefactura) RevertirInventario(adodsMasterIdOrdenSalida.value,adodsMasterIdCFDI.value); //Mar 10/16   Normal cancelacion
//              //Actualizar Saldo Cliente
//            if (adodsMasterIdCFDITipoDocumento.AsInteger=1) or (adodsMasterIdCFDITipoDocumento.AsInteger=3) then //CancelandoCFDI   Canceladop anterior //Dic 2916
//             ActualizaSaldoCliente(adodsMasterIdCFDI.value,adodsMasterIdPersonaReceptor.Value,adodsMasterIdClienteDomicilio.value, adodsMasterTotal.Value,'- ');//Mar 7/16

             ShowMessage(adodsMasterUUID_TB.AsString + #13+'Documento cancelado en SAT. Recuerde que debe descargar del SAT, los acuses de cancelación');

           end
           else                                                                                    //Antes lo mandaba en la respuesta  ago 19/16
             if (not EsProduccion) then //and ((pos('205 - El',respuesta)>0) or (pos('74305F11-FFFF-FFFF-FFFF-BD200698C5EA', adodsMasterUUID_TB.Value)>0)) then
             begin  //Pruebas..
               adodsMaster.Edit;
               adodsMasterFechaCancelacion.AsDateTime:=Now;
               adodsMasterIdCFDIEstatus.AsInteger:=3;
             if adodsMasterIdCuentaXCobrar.IsNull then //Ajuste Ago 3/17par aque guarde la asociacion quese va a quitar
                adodsMasterObservaciones.asString:= adodsMasterObservaciones.asString+' '+ motivo+' '+ respuesta+' Sin IdCXC'
             else
               adodsMasterObservaciones.asString:= adodsMasterObservaciones.asString+' '+ motivo+' '+ respuesta+' IdCXCPrevia:'+adodsMasterIdCuentaXCobrar.AsString;
               adodsMaster.Post;
                 //Actualiza Inventario y demás   //Mar 7/16
               if (adodsMasterIdCFDITipoDocumento.AsInteger=1)  then
                 DesAsociarCFDIdeCXC(adodsMasterIdCFDI.AsInteger); //VErificar si se  quita la relacion de la CXC y se le cambi ael estatus a -1 (Pendiente (sin prefactura)    RevertirInventario(adodsMasterIdOrdenSalida.value,adodsMasterIdCFDI.value); //Mar 10/16    PruebaCancelacion
//              //Ajuste
//              if (adodsMasterIdCFDITipoDocumento.AsInteger=1) or (adodsMasterIdCFDITipoDocumento.AsInteger=3) then //CancelandoCFDI   Pruebas //Dic 2916
//                 ActualizaSaldoCliente(adodsMasterIdCFDI.value,adodsMasterIdPersonaReceptor.Value,adodsMasterIdClienteDomicilio.value, adodsMasterTotal.Value,'- ');//Mar 7/16
               ShowMessage(adodsMasterUUID_TB.AsString + #13+'Prueba de Cancelación ');
             end
             else
               ShowMessage(Respuesta);
      end
      else
        ShowMessage('Ocurrio un error Cancelando el CFDI . Error '+DAto);
    end; // No existe carpeta. nDS
  end; //else Cancelada por usuario
end;

Procedure TdmFacturas.DesAsociarCFDIdeCXC (Idcfdi:Integer);
var
   Texto:String;
begin
  //Guardar en Bitacora
  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.Sql.Clear;     //FAltaba el * from
  ADOQryAuxiliar.SQL.Add('SElect * from CFDI where Idcfdi ='+intTostr(idcfdi));
  ADOQryAuxiliar.open;

  if not ADOQryAuxiliar.eof and ADOQryAuxiliar.fieldbyname('IdCuentaXCobrar').IsNull then   //Solo debe  haber uno
    Texto:='CFDI '+intTostr(idcfdi)+' Sin CuentaxCobrar '
  else
    Texto:='CFDI '+intTostr(idcfdi)+' IdCXC:'+ ADOQryAuxiliar.fieldbyname('IdCuentaXCobrar').asstring;
  REgistraBitacora(4,Texto) ;
  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.Sql.Clear;                                      //Ago 30/17
  ADOQryAuxiliar.SQL.Add('Update CuentasXCobrar SET IdCFDI= NULL, idCuentaXCobrarEstatus=-1 where IdCFDI='+intTostr(idcfdi));     //  DEberia estar en 1, deberia pasar  a -1 , porque = tiene prefactura y esta nop
  ADOQryAuxiliar.ExecSQL;
  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.Sql.Clear;
  ADOQryAuxiliar.SQL.Add('Update CFDI SET IdCuentaXCobrar= NULL where IdCFDI='+intTostr(idcfdi));
  ADOQryAuxiliar.ExecSQL;
end;

procedure TdmFacturas.dsMasterDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  case IdCFDITipoDocumento of
    tdFactura: CanEdit := (adodsMasterIdCuentaXCobrar.IsNull and (adodsMasterIdCFDIEstatus.Value=1));
    tdNotaCredito: CanEdit := (adodsMasterIdCuentaXCobrar.IsNull and (adodsMasterIdCFDIEstatus.Value=1));
    tdCFDIPago: CanEdit := False;
  end;
  if Assigned(gGridForm) then
    gGridForm.CanEdit:= CanEdit;
end;

procedure TdmFacturas.GenerarPDF(IdCFDI: Integer; ArchivoPDF,
  ArchivoImagen: TFileName);
var
  dmRptCFDI33: TdmRptCFDI33;
begin
  dmRptCFDI33 := TdmRptCFDI33.Create(Self);
  try
    dmRptCFDI33.GenerarArchivoPDF(IdCFDI,ArchivoPDF,ArchivoImagen);
  finally
    dmRptCFDI33.Free;
  end;
end;

Procedure TdmFacturas.RegistraBitacora(tipoRegistro:Integer;Observacion:String); //Abr 19/17
var
   tipoTxt:String;
begin
  case TipoRegistro of
  0:  tipoTxt:='CXC';
  1:  tipoTxt:='MORA';
  2:  tipoTxt:='ABOCAP'; //Abr 19/17
  3:  tipoTxt:='PAGANT'; //Jun 29/17
  4:  tipoTXT:='CANFAC'; //Ago 3/17
  end;

  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.SQL.Clear;
  ADOQryAuxiliar.sql.Add('Insert into BitacoraGeneracion (Tipo, FechaGeneracion, IdUsuario, Observaciones) Values('''+tipotxt+''',:IdFechaHoy1, '  +
                         intToSTR(_DMConection.idUsuario)+','''+Observacion+''' ) ' );
  ADOQryAuxiliar.Parameters.ParamByName('IdFechaHoy1').Value:=_DmConection.LaFechaActual;//date; May 26/17
  ADOQryAuxiliar.ExecSQL;
  AdodsMaster.Refresh;
end;

procedure TdmFacturas.actCancelarCFDIUpdate(Sender: TObject);
begin
  inherited;
  actCancelarCFDI.Enabled:= (adodsMasterIdCFDIEstatus.Value=2)
  and (adodsMasterSaldoDocumento.Value = adodsMasterTotal.Value)
  and (adodsMasterSaldoDocumento.Value = adodsMasterSaldoFactoraje.Value);
end;

procedure TdmFacturas.actImprimirCFDIExecute(Sender: TObject);
var
  IdCFDI: Integer;
  IdDoc:Integer;
  nombreArchi, nomImagen,ArchivoPDF:TfileName;
  XMLpdf: TdmodXMLtoPDF;
  Contrato: string;
  TipoDoc: string;
  CFDIVersion: string;
begin
  inherited;
//  Avance:=0; //Ene8/16
  IdCFDI := adodsMasterIdCFDI.Value;
  TipoDoc := adodsMasterTipoDocumento.AsString ; //Mar 31/16
  CFDIVersion := adodsMasterVersion.AsString;
  ShowProgress(5,100.1,'Buscando Archivos...' + IntToStr(5) + '%');
  try
    //Obtiene archivo XML
    idDoc:=adodsMasterIdDocumentoXML.asInteger;
    adoDSDocumento.filter:='IdDocumento='+intToSTR(IDDoc);
    adoDSDocumento.filtered:=True;
    adoDSDocumento.open;
    nombreArchi:=ExtractFileName(AdoDSDocumentoNombreArchivo.asstring);
    readFile( nombreArchi);
    //Obtiene archivo CBB
    idDoc:=adodsMasterIdDocumentoCBB.asInteger;
    if idDoc>0 then
    begin
      adoDSDocumento.filter:='IdDocumento='+intToSTR(IDDoc);
      adoDSDocumento.filtered:=True;
      adoDSDocumento.open;
      nomImagen:=ExtractFileName(AdoDSDocumentoNombreArchivo.asstring);
      readFile(nomImagen);
    end;
    if CFDIVersion = '3.3' then
    begin
      ArchivoPDF := _dmConection.ExePath + ChangeFileExt(nombreArchi, fePDF);
      GenerarPDF(IdCFDI, ArchivoPDF, nomImagen);
    end
    else
    begin
      XMLpdf := TdmodXMLtoPDF.Create(Self);
      XMLpdf.FileRTM:= ExtractFilePath(Application.ExeName) + 'CFDIManarina.rtm'; //dic28/15  HAy  que actualizarlos
      XMLpdf.FileXTR:= ExtractFilePath(Application.ExeName) + 'Transfor32.xtr';   //dic28/15
      XMLpdf.CadenaOriginalTimbre:= adodsMasterCadenaOriginal.AsString; //dic 28/15 verificar
      try
         XMLpdf.FileIMG := nomImagen;//nombreArchi + fePNG; //Ajustado ene6/16
         if fileExists(XMLpdf.FileIMG) then//dic 28/15
         begin
           ShowProgress(20,100.1,'Generando para imprimir...' + IntToStr(20) + '%');
           if not adodsMasterIdCuentaXCobrar.isnull then
              Contrato:='Contrato: '+Informacioncontrato(adodsMasterIDCuentaXCobrar.Value) //Dic 7/16 //verificar  que pasa si la FActura no tiene CXC??
          else
             Contrato:='';
          ArchivoPDF:=XMLpdf.GeneratePDFFile(nombreArchi,TipoDoc,Contrato,'');
          XMLpdf.PrintPDFFile(ArchivoPDF);
         end
         else
         begin
           nombreArchi:='';
         end;
      finally
        XMLpdf.Free;
      end;
    end;
    adoDSDocumento.filter:='';
    adoDSDocumento.filtered:=false;
    if FileExists(ArchivoPDF) then
      ShellExecute(application.Handle, 'open', PChar(ArchivoPDF), nil, nil, SW_SHOWNORMAL)
    else
      Showmessage ('No fue posible regenerar el PDF, puede que no se haya encontrado el archivo PNG');
  except
    on E: Exception do Showmessage ('No fue posible generar el PDF. ' + E.Message);
  end;
  ShowProgress(100,100);
  //Filtrar con ID enDocumento
  //Sacar Documento
  //Aun no guarda de nuevo.. (Verificar)
end;

procedure TdmFacturas.actRelacionarCFDIExecute(Sender: TObject);
var
  dmCFDIRelacionados: TdmCFDIRelacionados;
begin
  inherited;
  dmCFDIRelacionados := TdmCFDIRelacionados.CreateWith(Self, adodsMasterIdPersonaReceptor.Value, not CanEdit);
  try
    dmCFDIRelacionados.MasterSource := dsMaster;
    dmCFDIRelacionados.MasterFields:= 'IdCFDI';
    dmCFDIRelacionados.ShowModule(nil,'');
  finally
    dmCFDIRelacionados.Free;
  end;
end;

procedure TdmFacturas.actRelacionarCFDIUpdate(Sender: TObject);
begin
  inherited;
  //Podra agregar UUID relacionadas si especifica el tipo de relacion del CFDI
  actRelacionarCFDI.Enabled := (not adodsMasterIDCFDITipoRelacion.IsNull);
end;

procedure TDMFacturas.ReadFile(FileName: TFileName); //Dic 15/16
var
  Blob : TStream;
  Fs: TFileStream;
begin
  if FileName = EmptyStr then Exit;
  Blob := adodsDocumento.CreateBlobStream(adodsDocumentoArchivo, bmRead);
  try
    Blob.Seek(0, soFromBeginning);
    Fs := TFileStream.Create(FileName, fmCreate);
    try
      Fs.CopyFrom(Blob, Blob.Size);
    finally
      Fs.Free;
    end;
  finally
    Blob.Free
  end;
end;

procedure TdmFacturas.actTimbrarCFDIExecute(Sender: TObject);
var
  IdCFDI: Integer;
begin
  IdCFDI := adodsMasterIdCFDI.Value;
  if Timbrar(IdCFDI) then
    RefreshADODS(adodsMaster, adodsMasterIdCFDI);
end;

procedure TdmFacturas.actTimbrarCFDIUpdate(Sender: TObject);
begin
  inherited;
  case IdCFDITipoDocumento of
    tdFactura:  actTimbrarCFDI.Enabled := (adodsMasterIdCFDIEstatus.Value = 1) and (adodsMasterTotal.Value > 0);
    tdNotaCredito:  actTimbrarCFDI.Enabled := (adodsMasterIdCFDIEstatus.Value = 1) and (adodsMasterTotal.Value > 0);
    tdCFDIPago:  actTimbrarCFDI.Enabled := (adodsMasterIdCFDIEstatus.Value = 1) and (adodsMasterTotal.Value = 0);
  end;
end;

function TdmFacturas.CrearCFDIPago(IdPago: Integer): Integer;
begin
  adospGenCFDIPago.Parameters.ParamByName('@IdPago').Value:= IdPago;
  adospGenCFDIPago.ExecProc;
  Result := adospGenCFDIPago.Parameters.ParamByName('@IdCFDI').Value;
end;

function TdmFacturas.CrearPrefactura(IdCuentaXCobrar: Integer): Integer;
begin
  adospGenPrefactura.Parameters.ParamByName('@IdIdCuentaXCobrar').Value:= IdCuentaXCobrar;
  adospGenPrefactura.ExecProc;
  Result := adospGenPrefactura.Parameters.ParamByName('@IdCFDI').Value;
end;

function TdmFacturas.InformacionContrato(IdCXC:Integer):String;
begin        //Dic 7/16
  result:='';
  ADODSAuxiliar.Close;
  ADODSAuxiliar.CommandText:='select C.Identificador from Contratos C'    //   C.Fecha, C.IdContratoTipo, C.MontoAutorizado
                             +' inner join Anexos A on A.IdContrato =C.IdContrato '
                             +' inner join CuentasXCobrar CXC on CXC.idAnexo= A.idAnexo and IdCuentaXCobrar='+intToStr(idCXC);
  ADODSAuxiliar.open;
  if not ADODSAuxiliar.eof then
  begin
    result:=   ADODSAuxiliar.fieldbyname('Identificador').asString;
  end;
end;

procedure TdmFacturas.adodsMasterAfterOpen(DataSet: TDataSet);
begin
  inherited;
  ADODtStDireccionesCliente.Open;
end;

procedure TdmFacturas.adodsMasterBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  ADODtStPersonaEmisor.Open;
  ADODtStPersonaReceptor.open;
  ADODtStTiposDocumentos.Open; //Jun 26/17
end;

procedure TdmFacturas.adodsMasterIdPersonaReceptorChange(Sender: TField);
begin
  inherited;
    if adodsMaster.State in [dsInsert,dsEdit] then //Por si cambia de cliente
  begin
    ADODtStDireccAuxiliar.close;
    ADODtStDireccAuxiliar.Parameters.ParamByName('IdPersona').value:= adodsMasterIdPersonaReceptor.value; //DEberia Funcionar
    ADODtStDireccAuxiliar.Open;
    if ADODtStDireccAuxiliar.RecordCount >=1 then
    begin                                      //FActura cambia
     adodsMaster.FieldByName('IdClienteDomicilio').AsInteger:= ADODtStDireccAuxiliar.Fieldbyname('IDPersonaDomicilio').AsInteger;
     if not ADODtStPersonaReceptorIdMetodoPago.Isnull then    //Modificado jun 26/17
     begin
       adodsMaster.FieldByName('IdMetodoPago').AsInteger:= ADODtStPersonaReceptorIdMetodoPago.AsInteger;
       if not ADODtStPersonaReceptorNumCtaPagoCliente.Isnull then
         adodsMaster.FieldByName('NumCtaPago').AsString:= ADODtStPersonaReceptorNumCtaPagoCliente.AsString;
     end;
    end;
  end;
end;

procedure TdmFacturas.adodsMasterNewRecord(DataSet: TDataSet);
begin
  inherited;
  try
    adodsMasterVersion.AsString := '3.3';
    DataSet.FieldByName('IDCFDIEstatus').AsInteger:=1; //Prefactura
    DataSet.FieldByName('IDCFDITipoDocumento').AsInteger:= Ord(IdCFDITipoDocumento);
    DataSet.FieldByName('TipoComp').AsString:=SacaTipoComp(Ord(IdCFDITipoDocumento));
    DataSet.FieldByName('Folio').AsInteger:=0;
    DataSet.FieldByName('Fecha').AsDateTime:=now;
    DataSet.FieldByName('LugarExpedicion').AsString:= ADODtStPersonaEmisorCodigoPostal.AsString;//ADODtStPersonaEmisorMunicipio.Value +', '+ADODtStPersonaEmisorEstado.Value;//'Zapopan, Jalisco' ; //Verificar si se saca de  la direccion del emisor?
    DataSet.FieldByName('IDMoneda').AsInteger:=106;
    adodsMaster.fieldbyname('TipoCambio').AsInteger:=1;
    DataSet.FieldByName('IdPersonaEmisor').AsInteger:=ADODtStPersonaEmisoridpersona.AsInteger;
    adodsMasterIdCFDIMetodoPago33.Value := 2;
    adodsMasterIdCFDIFormaPago33.Value := 99;
    adodsMasterIDCFDIUsoCFDI.Value := 22;
  except
    Raise;
  end;
end;

procedure TdmFacturas.adodsCFDIConceptosAfterDelete(DataSet: TDataSet);
var
IdCFDI: Integer;
begin
  inherited;
  IdCFDI := adodsCFDIConceptosIdCFDI.Value;
  // Actualiza impuesto
  adocSetImpuestos.Parameters.ParamByName('IdCFDI').Value := IdCFDI;
  adocSetImpuestos.Execute;
  // Actualiza totales
  adocUpdCFDITotales.Parameters.ParamByName('IdCFDI').Value := IdCFDI;
  adocUpdCFDITotales.Execute;
  AdoDSMaster.Refresh;
end;

procedure TdmFacturas.adodsCFDIConceptosAfterPost(DataSet: TDataSet);
var
  IdCFDI: Integer;
  IdCFDIConcepto: Integer;
  Base: Double;
begin
  inherited;
  if adodsMasterIdCuentaXCobrar.IsNull then  // ago 31/17 Por si se esta modificando el concepto al vuelo , solo esto aplica a las que no tienen CXC
  begin
    Showmessage('Se actualizarán totales e IVA para este comprobante'); //feb 7/17
    IdCFDI := adodsCFDIConceptosIdCFDI.Value;
    IdCFDIConcepto := adodsCFDIConceptosIdCFDIConcepto.Value;
    Base := adodsCFDIConceptosImporte.AsFloat;
    // Inserta concepto impuesto
    adocSetConceptoImpuesto.Parameters.ParamByName('IdCFDIConcepto').Value := IdCFDIConcepto;
    adocSetConceptoImpuesto.Parameters.ParamByName('IdCFDITipoImpuesto').Value := 1;
    adocSetConceptoImpuesto.Parameters.ParamByName('Base').Value := Base;
    adocSetConceptoImpuesto.Execute;
    // Actualiza impuesto
    adocSetImpuestos.Parameters.ParamByName('IdCFDI').Value := IdCFDI;
    adocSetImpuestos.Execute;
    // Actualiza totales
    adocUpdCFDITotales.Parameters.ParamByName('IdCFDI').Value := IdCFDI;
    adocUpdCFDITotales.Execute;
  end;
  RefreshADODS(ADODsmaster, adodsMasterIdCFDI);
end;

procedure TdmFacturas.adodsCFDIConceptosBeforeDelete(DataSet: TDataSet);
begin
  inherited;
    adocDelConceptoImpuesto.Parameters.ParamByName('IdCFDIConcepto').Value := adodsCFDIConceptosIdCFDIConcepto.Value;
    adocDelConceptoImpuesto.Execute;
end;

procedure TdmFacturas.adodsCFDIConceptosBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if adodsMaster.State in [dsInsert,dsEdit] then
     adodsMaster.Post;
end;

procedure TdmFacturas.adodsCFDIConceptosNewRecord(DataSet: TDataSet);
begin
  inherited;
  adodsCFDIConceptosIdUnidadMedida.Value :=2; //NA
  adodsCFDIConceptosUnidad.AsString:='NA';
  adodsCFDIConceptosSATClaveUnidad.AsString:='XNA';
  adodsCFDIConceptosCantidad.AsFloat:=1;
  adodsCFDIConceptosDescuento.Value := 0;
end;

procedure TdmFacturas.adodsCFDIConceptosValorUnitarioChange(Sender: TField);
begin
  inherited;
  if (adodsCFDIConceptos.State in [dsEdit,dsInsert]) and (adodsCFDIConceptos.FieldByName('ValorUnitario').AsFloat <>0) and (adodsCFDIConceptos.FieldByName('Cantidad').AsFloat<>0) then
  begin                                      //Value Feb 19/17
    adodsCFDIConceptos.FieldByName('Importe').Value:=adodsCFDIConceptos.FieldByName('ValorUnitario').AsFloat* adodsCFDIConceptos.FieldByName('CAntidad').AsFloat;
  end;

end;

procedure TdmFacturas.ADODtStDireccionesClienteCalcFields(DataSet: TDataSet);
begin
  inherited;
  dataset.FieldByName('DirCompleta').AsString:= dataset.FieldByName('Municipio').AsString +
  ', '+dataset.FieldByName('Estado').AsString+
  '. '+dataset.FieldByName('Calle').AsString+ dataset.FieldByName('NoExterior').AsString+
  ' '+dataset.FieldByName('Colonia').AsString +' '+ dataset.FieldByName('CodigoPostal').AsString;
end;

function TdmFacturas.AgregarDocumento(FileName: TFileName): Integer;
var
  dmDocumentos: TdmDocumentos;
begin
  dmDocumentos := TdmDocumentos.Create(Self);
  try
    dmDocumentos.IdDocumentoTipo := 2;
    Result:= dmDocumentos.SetFile(FileName);
  finally
    dmDocumentos.Free;
  end;
end;

function TdmFacturas.SacaTipoComp(tipoD:Integer):String;   //Nov 29/16
begin
  Result:='';
  ADODSAuxiliar.Close;
  ADODSAuxiliar.CommandText:='Select * from CFDITipoDocumento where idCFDITipoDocumento='+intToStr(tipoD);
  ADODSAuxiliar.open;
  if not ADODSAuxiliar.eof then
    result:=ADODSAuxiliar.fieldbyname('SATClave').AsString;
end;

//function TdmFacturas.CargaXMLPDFaFS(Archivo, Describe: string): integer;
//var
//  FacturaXML : TFileName;
//begin
//  FacturaXML := Archivo;
//  adodsDocumento.Open;
//  adodsDocumento.Insert;
//  adodsDocumentoIdDocumentoTipo.Value := 2;
//  adodsDocumentoIdDocumentoClase.Value := 1;
//  adodsDocumentoDescripcion.AsString := Describe;
//  adodsDocumentoNombreArchivo.AsString := ExtractFileName(Archivo);
//  SubirXMLPDFaFS(FacturaXML);
//  adodsDocumento.Post;
//  Result := adodsDocumentoIdDocumento.Value;
//  adodsDocumento.Close;
//end;

function TdmFacturas.ConvierteFechaT_DT(Texto: String): TDateTime;
var                      //Texto Viene en formato 'yyyy-mm-dd''T''hh:nn:ss'
 anio, mes, dia:word;
 tiempo:string;
 dato2:TDatetime;
 t:Ttime;
begin
   anio:= STRToint(copy(texto,1,4)) ;
   mes:= STRToint(copy(texto,6,2)) ;
   dia:= STRToint(copy(texto,9,2)) ;
   dato2:=encodedate(anio,mes,dia);
   tiempo:=copy(texto,12,8);
   t:=strToTime(tiempo);
   dato2:=Dato2+t;
   Result:=Dato2;
end;

constructor TdmFacturas.CreateWMostrar(AOwner: TComponent; Muestra: Boolean;
  IdCFDITipoDocumento: TCFDITipoDocumento);
begin
  FIdCFDITipoDocumento := IdCFDITipoDocumento;
  inherited Create(AOwner);
end;

procedure TdmFacturas.DataModuleCreate(Sender: TObject);
begin
  inherited;
  if adodsCFDIConceptos.CommandText <> EmptyStr then adodsCFDIConceptos.Open;
  gGridForm:= TfrmFacturasGrid.Create(Self);
  gGridForm.ReadOnlyGrid := (IdCFDITipoDocumento = tdCFDIPago);
  gGridForm.DataSet:= adodsMaster;
  case IdCFDITipoDocumento of
    tdFactura: gGridForm.Caption:='Facturas';
    tdNotaCredito: gGridForm.Caption:='Notas de Crédito';
    tdNotaCargo: ;
    tdCFDIPago: gGridForm.Caption:='CFDI de pagos';
  end;
  gGridForm.actSearch := actSearch;
  TfrmFacturasGrid(gGridForm).actTimbrarCFDI := actTimbrarCFDI;
  TfrmFacturasGrid(gGridForm).actImprimirCFDI := actImprimirCFDI;
  TfrmFacturasGrid(gGridForm).actCancelarCFDI := actCancelarCFDI;
  TfrmFacturasGrid(gGridForm).actRelacionarCFDI := actRelacionarCFDI;
  if IdCFDITipoDocumento = tdCFDIPago then
  begin
    adodsCFDICPRelacionados.Open;
    gFormDeatil1:= TfrmCFDICPRelacionados.Create(Self);
    gFormDeatil1.ReadOnlyGrid := True;
    gFormDeatil1.DataSet:= adodsCFDICPRelacionados;
  end;
  // Busqueda
  if IdCFDITipoDocumento = tdCFDIPago then
    SQLSelect:= 'SELECT C.IdCFDI, C.IdCFDITipoDocumento, C.IdCFDIFormaPago, C.IdMetodoPago, C.IdMoneda, C.IdPersonaEmisor, C.IdPersonaReceptor, C.IdDocumentoCBB, C.IdDocumentoXML, C.IdDocumentoPDF, C.IdCFDIEstatus, ' +
    'C.IdCFDIFacturaGral, C.IdClienteDomicilio, C.IdCuentaXCobrar, C.IdCFDIFormaPago33, C.IdCFDIMetodoPago33, C.IDCFDITipoRelacion, C.IdCFDIUsoCFDI, C.IdPago, C.Version, C.CuentaCte, C.TipoCambio, C.TipoComp, C.Serie, ' +
    'C.Folio, C.Fecha, C.LugarExpedicion, C.Sello, C.CondPago, C.NoCertificado, C.Certificado, C.SubTotal, C.Descto, C.MotivoDescto, C.Total, C.NumCtaPago, C.CadenaOriginal, C.TotalImpuestoRetenido, C.TotalImpuestoTrasladado, ' +
    'C.SaldoDocumento, C.FechaCancelacion, C.Observaciones, C.PorcentajeIVA, C.EmailCliente, C.UUID_TB, C.SelloCFD_TB, C.SelloSAT_TB, C.CertificadoSAT_TB, C.FechaTimbrado_TB, C.SaldoFactoraje, C.NumPagosAplicados, ' +
    'CCP.IdCFDIComplementoPago, CCP.IdCFDITipoCadenaPago, CCP.VersionPago, CCP.FechaPago, CCP.FormaPagoP, CCP.MonedaP, CCP.TipoCambioP, CCP.Monto, CCP.NumOperacion ' +
    'FROM CFDI AS C ' +
    'LEFT OUTER JOIN CFDIComplementoPagos AS CCP ON C.IdCFDI = CCP.IdCFDI '
  else
    // Se quita la relacion con la tabla compelemwento de pago para que pueda agregar facturas manuales
    SQLSelect:= 'SELECT C.IdCFDI, C.IdCFDITipoDocumento, C.IdCFDIFormaPago, C.IdMetodoPago, C.IdMoneda, C.IdPersonaEmisor, C.IdPersonaReceptor, C.IdDocumentoCBB, C.IdDocumentoXML, C.IdDocumentoPDF, C.IdCFDIEstatus, ' +
    'C.IdCFDIFacturaGral, C.IdClienteDomicilio, C.IdCuentaXCobrar, C.IdCFDIFormaPago33, C.IdCFDIMetodoPago33, C.IDCFDITipoRelacion, C.IdCFDIUsoCFDI, C.IdPago, C.Version, C.CuentaCte, C.TipoCambio, C.TipoComp, C.Serie, ' +
    'C.Folio, C.Fecha, C.LugarExpedicion, C.Sello, C.CondPago, C.NoCertificado, C.Certificado, C.SubTotal, C.Descto, C.MotivoDescto, C.Total, C.NumCtaPago, C.CadenaOriginal, C.TotalImpuestoRetenido, C.TotalImpuestoTrasladado, ' +
    'C.SaldoDocumento, C.FechaCancelacion, C.Observaciones, C.PorcentajeIVA, C.EmailCliente, C.UUID_TB, C.SelloCFD_TB, C.SelloSAT_TB, C.CertificadoSAT_TB, C.FechaTimbrado_TB, C.SaldoFactoraje, C.NumPagosAplicados, ' +
    'CAST(NULL AS bigint) AS IdCFDIComplementoPago, NULL AS IdCFDITipoCadenaPago, CAST(NULL AS varchar(5))  AS VersionPago, CAST(NULL AS datetime) AS FechaPago, CAST(NULL AS varchar(2)) AS FormaPagoP, CAST(NULL AS varchar(3)) AS MonedaP, ' +
    'CAST(NULL AS decimal(18,6)) AS TipoCambioP, CAST(NULL AS decimal(18,6)) AS Monto, CAST(NULL AS varchar(100)) AS NumOperacion ' +
    'FROM CFDI AS C ';
  actSearch.Execute;
end;

procedure TdmFacturas.SetCanEdit(const Value: Boolean);
begin
  FCanEdit := Value;
end;

procedure TdmFacturas.SetCFDI(IdCFDI: Integer);
begin
  Self.IdCFDI := IdCFDI;
  actSearch.Execute;
end;

procedure TdmFacturas.SetFilter;
begin
  inherited;
  if IdCFDI = 0 then
  begin
    if IdCFDITipoDocumento = tdNone then
      SQLWhere := ' WHERE 0 = 0 '
    else
      SQLWhere := Format(' WHERE C.IdCFDITipoDocumento =  %d ', [Ord(IdCFDITipoDocumento)]);
    if TfrmFacturasGrid(gGridForm).Cliente <> EmptyStr then
      SQLWhere := SQLWhere + 'AND C.IdPersonaReceptor IN (SELECT IdPersona FROM Personas WHERE RazonSocial LIKE ''%' + TfrmFacturasGrid(gGridForm).Cliente + '%'') ';
    if TfrmFacturasGrid(gGridForm).UsarFecha then
      SQLWhere := SQLWhere + Format('AND C.Fecha BETWEEN CONVERT(datetime, ''%s'' , 103) AND CONVERT(datetime, ''%s'' , 103) ', [DateToStr(TfrmFacturasGrid(gGridForm).Desde), DateToStr(TfrmFacturasGrid(gGridForm).Hasta)]);
    if TfrmFacturasGrid(gGridForm).ConSaldo then
      SQLWhere := SQLWhere + 'AND C.SaldoDocumento > 0 ';
  end
  else
    SQLWhere := Format(' WHERE C.IdCFDI =  %d ', [IdCFDI]);
end;

procedure TdmFacturas.ReadFileCERKEY(FileNameCER, FileNameKEY: TFileName);
var
  Blob : TStream;
  Fs: TFileStream;
begin
  Blob := adodsArchivosCerKey.CreateBlobStream(adodsArchivosCerKeyArchiCer, bmRead);
  try
    Blob.Seek(0, soFromBeginning);
    Fs := TFileStream.Create(FileNameCER, fmCreate);
    try
      Fs.CopyFrom(Blob, Blob.Size);
    finally
      Fs.Free;
    end;
  finally
    Blob.Free
  end;

  Blob := adodsArchivosCerKey.CreateBlobStream(adodsArchivosCerKeyArchiKey, bmRead);
  try
    Blob.Seek(0, soFromBeginning);
    Fs := TFileStream.Create(FileNameKEY, fmCreate);
    try
      Fs.CopyFrom(Blob, Blob.Size);
    finally
      Fs.Free;
    end;
  finally
    Blob.Free
  end;
end;

//procedure TdmFacturas.SubirXMLPDFaFS(FileName: TFileName);
//var
//  Blob: TStream;
//  Fs: TFileStream;
//begin
//  Blob:= adodsUpdate.CreateBlobStream(adodsDocumentoArchivo, bmWrite);
//  try
//    Blob.Seek(0, soFromBeginning);
//    Fs := TFileStream.Create(FileName, fmOpenRead or fmShareDenyWrite);
//    try
//      Blob.CopyFrom(Fs, Fs.Size)
//    finally
//      Fs.Free
//    end;
//  finally
//    Blob.Free
//  end;
//end;

function TdmFacturas.Timbrar(IdCFDI: Integer): Boolean;
var
  CFDICreado: Boolean;
  CreadaAntes: Boolean;
  CFDIVersion: string;
  CFDITipoDocumento: TCFDITipoDocumento;

  function ConfirmarGeneracion: Boolean; //Ago 31/17
  var
    FrmDatosFacturaPrev: TFrmDatosFacturaPrev;
  begin
     FrmDatosFacturaPrev:=TFrmDatosFacturaPrev.Create(self);
     try
       FrmDatosFacturaPrev.CFDI := adodsMaster;
       FrmDatosFacturaPrev.Conceptos := adodsCFDIConceptos;
       FrmDAtosFActuraPrev.MetodoPago := ADODtStSelMetPago;
       FrmDAtosFActuraPrev.actRelacionarCFDI := actRelacionarCFDI;
       FrmDatosFacturaPrev.CFDITipoDocumento := CFDITipoDocumento;
       FrmDatosFacturaPrev.ShowModal;
       Result:= FrmDatosFacturaPrev.modalresult=mrok;
     finally
       FrmDatosFacturaPrev.Free;
     end;
  end;

  procedure VerificaYCambiaEstatusCXC(IdCFDI, NvoEstatus, AntEstatus: Integer);
  var
    IdCuentaXCobrar: Integer;
  begin
    ADOQryAuxiliar.Close;
    ADOQryAuxiliar.sql.clear;
    ADOQryAuxiliar.sql.Add('Select * from CFDI where IDCFDI='+intTostr(IdCFDI));
    ADOQryAuxiliar.Open;
    if (ADOQryAuxiliar.FieldByName('IdCFDIEstatus').AsInteger = 2) then  // Vigente
    begin
      IdCuentaXCobrar:= ADOQryAuxiliar.FieldByName('IdCuentaXCobrar').AsInteger;
      ADOQryAuxiliar.Close;
      ADOQryAuxiliar.sql.clear;
      ADOQryAuxiliar.sql.Add('UPDATE CuentasXCobrar SET IDCuentaXCobrarEstatus ='+intToStr(NvoEstatus)+
       ' , IDCFDI ='+intTostr(IdCFDI)+' where  IDCuentaXCobrar= '+intToSTR(IdCuentaXCobrar)+' and IDCuentaXCobrarEstatus='+intToStr(antEstatus));
     ADOQryAuxiliar.ExecSQL;
    end;
  end;

begin
  Result := False;
  //Obtiene informacion del CFDI
//  adoqCFDIInfo.Close;
//  adoqCFDIInfo.Parameters.ParamByName('IdCFDI').Value := IdCFDI;
//  adoqCFDIInfo.Open;
//  CFDICreado := (adoqCFDIInfoIdCFDI.Value = IdCFDI);
//  CFDITipoDocumento := TCFDITipoDocumento(adoqCFDIInfoIdCFDITipoDocumento.Value);
//  CreadaAntes := (adoqCFDIInfoIdCuentaXCobrar.Value = 2);  // Vigente
//  CFDIVersion := adoqCFDIInfoVersion.AsString;
//  adoqCFDIInfo.Close;

  adodsMaster.Refresh;
  CFDICreado :=  adodsMaster.Locate('IDCFDI',IdCFDI,[]);
//  Self.IdCFDI := IdCFDI;
//  CFDICreado := (adodsMasterIdCFDI.Value = IdCFDI);
  CFDITipoDocumento := TCFDITipoDocumento(adodsMasterIdCFDITipoDocumento.Value);
  CreadaAntes := adodsMasterIdCFDIEstatus.Value = 2;  // Vigente
  CFDIVersion := adodsMasterVersion.AsString;
  if CFDICreado and (not CreadaAntes) then
  begin
    if ConfirmarGeneracion then
    begin
      if CFDIVersion = '3.3' then
        Result:= Timbrar33(IdCFDI);
//      else
//        Result:= Timbrar32(IdCFDI);
      if Result and (CFDITipoDocumento <> tdCFDIPago) then
        VerificaYCambiaEstatusCXC(IdCFDI, 1, 0);
    end
    else
    begin
      ShowMessage('Canceló Timbrado de Factura');
    end;
  end;
end;

//function TdmFacturas.Timbrar32(IdCFDI: Integer): Boolean;
//const  //Copiado de sistema RH Dic 7/15
//  _SEGUNDOS_A_RESTAR = -30;
//var
//  DocumentoComprobanteFiscal: TDocumentoComprobanteFiscal;
//  Certificado: TFECertificado;
//  Emisor, Receptor: TFEContribuyente;
//  ImpuestoRet: TFEImpuestoRetenido;
//  ImpuestoTras : TFEImpuestoTrasladado;
////  ImpuestoLocal: TFEImpuestoLocal;
//  ConceptoActual : TFEConcepto;    // Dic 7/15 Se cambio  para que en el se coloque cada concepto y luiego se mande agregaer en un ciclo
//
//  TimbreCFDI: VirtualXML.TTimbreCFDI;
//  FileCertificado, FileKey : TFileName;
//  Clave : String;
//  Anio, Mes, Dia : Word;                         //Ene 27/17
//  RutaBase, SubCarpeta, RutaFactura, RutaPDF: String;
//  XMLpdf : TdmodXMLtoPDF;
//  IDPDF, IDXML, IDCBB: integer; //Sep 27/16 Para hacer proceso en dos partes
//  Respuesta:String; //Sep 27/16
//
//  FechaAux:TDAteTime;//Porque si se intento generar le mande la misma fecha original
//  TipoDoc:String; //Mar 31/16 para enviar como parametro
//  IdCFDIAuxiliar:integer; //Oct 27/16 para verificar que este en el mismo , idOrdenSalAux se quito nov 28/16
//  Contrato:String; //Para mañarina dic 7/16
//
//  Continuar:Boolean; //Ene27/17 para proceso alterno facturacion
//  AuxTxt:String;
//begin
//  Result:= False;
//  AuxTxt:='';
//  //Habilitado Dic 21/15
//  ShowProgress(10,100.1,'Preparando Datos para Generar CFDI ' + IntToStr(10) + '%');  //Jun 2/16
//  XMLpdf := TdmodXMLtoPDF.Create(Self);
//  XMLpdf.FileRTM:= ExtractFilePath(Application.ExeName) + 'CFDIManarina.rtm'; //Cambiado Nov 29/16
//  XMLpdf.FileXTR:= ExtractFilePath(Application.ExeName) + 'Transfor32.xtr';
//   //Habilitado Dic 21/15 hasta aca
//  //verificar si no se intento generar antes
//  FechaAux:=IncSecond(Now, _SEGUNDOS_A_RESTAR);
//                                      //Prefactura
//  if adodsMasterIdCFDIEstatus.AsInteger =1 then
//  begin
//    //Poner Folio Serie
//    if adodsMasterFolio.AsInteger=0 then
//    begin
//      ADODtStBuscaFolioSerie.Close;
//      ADODtStBuscaFolioSerie.Parameters.ParamByName('IdCFDITipoDocumento').Value:= adodsMasterIdCFDITipoDocumento.AsInteger; //Asegurarse que tenga valor
//      ADODtStBuscaFolioSerie.Open;
//                                                                                  //Mantiene el valor del siguiente a generar Nov 29/16
//      if (not ADODtStBuscaFolioSerie.eof) and (ADODtStBuscaFolioSerie.FieldByName('FolioDoc').AsInteger >0)then
//      begin
//        adodsMaster.Edit;
//        adodsMasterFecha.AsDateTime:=FechaAux;
//        adodsMasterFolio.AsInteger:= ADODtStBuscaFolioSerie.FieldByName('FolioDoc').AsInteger;
//        adodsMasterSerie.AsString:= ADODtStBuscaFolioSerie.FieldByName('SerieDoc').AsString;
//        adodsMaster.Post;
//
//        ADODtStBuscaFolioSerie.Edit;
//        ADODtStBuscaFolioSerie.FieldByName('FolioDoc').AsInteger:= ADODtStBuscaFolioSerie.FieldByName('FolioDoc').AsInteger+1;
//        ADODtStBuscaFolioSerie.Post;
//      end
//      else //Verificar si se debe hacer algun ajuste antes de generar!!
//      begin //dic 29/15
//        Showmessage('Se generara sin serie ,ni folio ');
//        adodsMaster.Edit;
//        adodsMasterFecha.AsDateTime:=FechaAux;
//        adodsMaster.Post;
//
//      end;
//    end
//    else //Dic 29/15 ya se intento pero no se genero
//    begin
//      if FechaAux-adodsMasterFecha.AsDateTime >3 then
//      begin
//        adodsMaster.Edit;
//        adodsMasterFecha.AsDateTime:=FechaAux;
//        adodsMaster.Post
//      end
//      else
//        FechaAux:=adodsMasterFecha.AsDateTime; //Para que use esa con los datos que tiene
//    end;
//   // ScreenCursorProc(-11);  //Deshabilitado Dic 29/15
//    DecodeDate(Now, Anio, Mes, Dia);
//    ShowProgress(20,100.1,'Preparando Datos para Generar CFDI ' + IntToStr(20) + '%');  //Jun 2/16
//    adodsArchivosCerKey.Close;
//
//    ADODtStPersonaEmisor.Close;
//    ADODtStPersonaReceptor.Close;
//    // Verificar si se require esto... o borrar  adodsEmisor.Parameters.ParamByName('IdPersona').Value := adodsMaster.FieldByName('IdPersona').Value;
//    // adodsReceptor.Parameters.ParamByName('IdPersona').Value := adodsMaster.FieldByName('IdPersonaRelacionada').Value;
//     adodsArchivosCerKey.Parameters.ParamByName('IdPersona').Value := adodsMaster.FieldByName('IdPersonaEmisor').asInteger;
//    // adodsKey.Parameters.ParamByName('IdPersona').Value := adodsMaster.FieldByName('IdPersona').Value;
//    adodsArchivosCerKey.Open;
//    ADODtStPersonaEmisor.Open;
//    ADODtStPersonaReceptor.Open;
//
//    RutaBase:=dmConfiguracion.RutaFacturas;//ExtractFilePath(application.ExeName); //CAmbiado SEp 27/17
//    if RutaBase='' then
//       RutaBase:=ExtractFilePath(application.ExeName);    // SEp 27/17
//
//    SubCarpeta := '\' + UpperCase(System.SysUtils.FormatSettings.ShortMonthNames[MonthOfTheYear(Now)]) + IntToStr(Anio) + '\';
//    Esproduccion:=FileExists(ExtractFilePath(application.ExeName)+'EnProduccion.txt'); //Temporal Dic 8/15 //Modificado sep 27/17
//    DocumentoComprobanteFiscal:= TDocumentoComprobanteFiscal.Create;
//
//    TipoDoc:=adodsMaster.FieldByName('TipoDocumento').asString; //Mar 31/16
//    ShowProgress(30,100.1,'Extrayendo datos de Emisor ' + IntToStr(30) + '%');  //Jun 2/16
//    try
//        Emisor.RFC                    := TFERFC(ADODtStPersonaEmisorRFC.AsString);
//        Emisor.Nombre                 := ADODtStPersonaEmisorRazonSocial.AsString;
//        Emisor.Direccion.Calle        := ADODtStPersonaEmisorCalle.AsString;
//        Emisor.Direccion.NoExterior   := ADODtStPersonaEmisorNoExterior.AsString;
//        Emisor.Direccion.NoInterior   := ADODtStPersonaEmisorNoInterior.AsString;
//        Emisor.Direccion.CodigoPostal := ADODtStPersonaEmisorCodigoPostal.AsString;
//        Emisor.Direccion.Colonia      := ADODtStPersonaEmisorColonia.AsString;
//        Emisor.Direccion.Municipio    := ADODtStPersonaEmisorMunicipio.AsString;
//        Emisor.Direccion.Estado       := ADODtStPersonaEmisorEstado.AsString;
//        Emisor.Direccion.Pais         := ADODtStPersonaEmisorPais.AsString;
//        Emisor.Direccion.Localidad    := ADODtStPersonaEmisorPoblacion.AsString;
//         // 2. Agregamos los régimenes fiscales (requerido en CFD >= 2.2)
//        SetLength(Emisor.Regimenes, 1);
//        Emisor.Regimenes[0] := ADODtStPersonaEmisorRegimenFiscalEmisor.AsString;
//        // Asignamos los valores iguales a la direcion del emisor suponiendo que se genera en el mismo lugar que se emitio
//        // Se debe verificar antes de colocar el expedido. ya que sólo debe hacerse para cuando son diferentes
//   (*     Emisor.ExpedidoEn.Calle        := Emisor.Direccion.Calle;
//        Emisor.ExpedidoEn.NoExterior   := Emisor.Direccion.NoExterior;
//        Emisor.ExpedidoEn.NoInterior   := Emisor.Direccion.NoInterior;
//        Emisor.ExpedidoEn.CodigoPostal := Emisor.Direccion.CodigoPostal;
//        Emisor.ExpedidoEn.Colonia      := Emisor.Direccion.Colonia;
//        Emisor.ExpedidoEn.Municipio    := Emisor.Direccion.Municipio;
//        Emisor.ExpedidoEn.Estado       := Emisor.Direccion.Estado;
//        Emisor.ExpedidoEn.Pais         := Emisor.Direccion.Pais;
//        Emisor.ExpedidoEn.Localidad    := Emisor.Direccion.Localidad;
//        Emisor.ExpedidoEn.Referencia   := Emisor.Direccion.Referencia;    *)
//
//        ShowProgress(40,100.1,'Extrayendo datos de Receptor ' + IntToStr(40) + '%');  //Jun 2/16
//        Receptor.RFC := TFERFC(ADODtStPersonaReceptorRFC.AsString);
//        Receptor.Nombre := ADODtStPersonaReceptorRazonSocial.AsString;
//            //Por si no tiene registro de direccion Ene 29/17
//        if (not ADODtStPersonaReceptor.Eof)and(ADODtStPersonaReceptorCalle.AsString<>'')and (ADODtStPersonaReceptorPais.AsString<>'')then
//        begin
//          Receptor.Direccion.Calle:=ADODtStPersonaReceptorCalle.AsString;
//          Receptor.Direccion.NoExterior:=ADODtStPersonaReceptorNoExterior.AsString;
//          Receptor.Direccion.NoInterior:=ADODtStPersonaReceptorNoInterior.AsString;
//          Receptor.Direccion.CodigoPostal:=ADODtStPersonaReceptorCodigoPostal.AsString;
//          Receptor.Direccion.Colonia:=ADODtStPersonaReceptorColonia.AsString;
//          Receptor.Direccion.Municipio:=ADODtStPersonaReceptorMunicipio.AsString;
//          Receptor.Direccion.Estado:=ADODtStPersonaReceptorEstado.AsString;
//          Receptor.Direccion.Pais :=ADODtStPersonaReceptorPais.AsString;
//          Receptor.Direccion.Localidad:=ADODtStPersonaReceptorPoblacion.AsString;
//        end;
//
//
//        FileCertificado := ExtractFilePath(application.ExeName)+ adodsArchivosCerKeyNomCert.AsString;
//        FileKey := ExtractFilePath(application.ExeName)+  adodsArchivosCerKeyNomKey.AsString;  //  TPath.GetTempPath +
//        ReadFileCERKEY(FileCertificado,FileKey);
//
//        Clave := adodsArchivosCerKeyClave.AsString;
//
//        Certificado.Ruta := FileCertificado;
//        Certificado.LlavePrivada.Ruta := FileKey;
//        Certificado.LlavePrivada.Clave := Clave;
//
//        DocumentoComprobanteFiscal.Folio:= adodsMasterFolio.AsInteger; //Dic 9/15
//        DocumentoComprobanteFiscal.Serie:= adodsMasterSerie.AsString;  //Dic 9/15
//
//        DocumentoComprobanteFiscal.Emisor := Emisor;
//        DocumentoComprobanteFiscal.Receptor := Receptor;
//                                                          //Se cambio mar 31/16
//        DocumentoComprobanteFiscal.TipoCompTexto := adodsMasterTipoComp.AsString; //verificar que venga
//
//        DocumentoComprobanteFiscal.FechaGeneracion := FechaAux; //Para evitar  dobles generaciones
//
//        DocumentoComprobanteFiscal.MetodoDePago := adodsMasterMetPagoClaveSAT.AsString; //Jun 27/16  adodsMasterMetodoPago.AsString;
//        if adodsMasterNumCtaPago.AsString <>''then
//          DocumentoComprobanteFiscal.NumeroDeCuenta:= adodsMasterNumCtaPago.AsString;
//        // Asignamos el lugar de expedición (requerido en  CFD >= 2.2)
//        DocumentoComprobanteFiscal.LugarDeExpedicion := ADODtStPersonaEmisorMunicipio.AsString+ ', ' + ADODtStPersonaEmisorEstado.AsString;
//        //adodsEmisorPoblacion.AsString ;
//
//    //Llevaba ceros..
//        DocumentoComprobanteFiscal.Moneda:= adodsMasterClaveMoneda.AsString;//Jun 27/16
//        DocumentoComprobanteFiscal.TipoCambio:= (adodsMasterTipoCambio.AsFloat);//Jun 27/16
//
//        // Definimos todos los conceptos que incluyo la factura
//        ShowProgress(50,100.1,'Extrayendo datos de conceptos ' + IntToStr(50) + '%');  //Jun 2/16
//
//        adodsCFDIConceptos.First;
//        while not adodsCFDIConceptos.Eof do
//        begin
//          ConceptoActual.Cantidad := adodsCFDIConceptosCantidad.AsFloat;
//          ConceptoActual.Unidad := adodsCFDIConceptosUnidad.AsString;  //Verificar contenido
//          ConceptoActual.Descripcion := adodsCFDIConceptosDescripcion.AsString;
//
//          ConceptoActual.ValorUnitario := adodsCFDIConceptosValorUnitario.AsFloat;
//          ConceptoActual.NoIdentificacion := adodsCFDIConceptosNoIdentifica.asstring;
////        ConceptoActual.CuentaPredial := ADOdsConceptocdsCuentaPredial.Value;
//          DocumentoComprobanteFiscal.AgregarConcepto(ConceptoActual);
//          adodsCFDIConceptos.Next;
//        end;
//        ADODtStCFDIImpuestos.Close;
//        ADODtStCFDIImpuestos.Open;  //Verificar que este ubicado
//
//       // ADODtStCFDIImpuestos.First;
//        while not ADODtStCFDIImpuestos.Eof do
//        begin
//          if ADODtStCFDIImpuestosTipoImp.AsString='Trasladado' then //Verificar que se coloque
//          begin
//            Impuestotras.Nombre := ADODtStCFDIImpuestosImpuesto.AsString;
//            Impuestotras.Tasa := ADODtStCFDIImpuestosTasa.AsFloat;
//            Impuestotras.Importe := ADODtStCFDIImpuestosImporte.AsFloat;
//            DocumentoComprobanteFiscal.AgregarImpuestoTrasladado(Impuestotras);
//          end
//          else
//          begin
//            ImpuestoRet.Nombre := ADODtStCFDIImpuestosImpuesto.AsString;
//            ImpuestoRet.Importe := ADODtStCFDIImpuestosImporte.AsFloat;
//            DocumentoComprobanteFiscal.AgregarImpuestoRetenido(ImpuestoRet);
//          end;
//          ADODtStCFDIImpuestos.Next;
//        end;
//        RutaFactura := RutaBase + ADODtStPersonaEmisorRFC.AsString + SubCarpeta;
//        if not DirectoryExists (RutaFactura) then
//           ForceDirectories(RutaFactura);
//        if  DirectoryExists (RutaFactura) then
//        begin
//          ShowProgress(60,100.1,'Timbrando  CFDI .... ' + IntToStr(60) + '%');  //Jun 2/16
//        (*  if not esProduccion then
//          begin
//            Continuar:=CrearArchivos_TimbrePrueba(RutaFactura,TimbreCFDI,adodsMasterSerie.asstring + adodsMasterFolio.asString + feXML);
//            RutaPDF:=ChangeFileExt(RutaFactura, fePDF);
//            RutaIMG:= ChangeFileExt(RutaFactura, fePNG);
//            AuxTxt:='Proceso Alterno ';
//          end
//          else  // deshabilitado para usar  la del  2017 Abr 6/17*)
//          Continuar:=GenerarCFDI(RutaFactura, DocumentoComprobanteFiscal, Certificado, TimbreCFDI, EsProduccion);
//          if Continuar then
//          begin
//            XMLpdf.FileIMG := RutaFactura + fePNG; //Dic 21/15
//            XMLpdf.CadenaOriginalTimbre:= TimbreCFDI.CadenaTimbre; //Dic 28/15                  tenia nov 28/16  adodsMasterIdentificadorCte.AsString
//            Contrato:=Informacioncontrato(adodsMasterIdCuentaXCobrar.Value); //Dic 7/16 //verificar  que pasa si la FActura no tiene CXC??
//            RutaPDF := XMLpdf.GeneratePDFFile(RutaFactura,TipoDoc,Contrato,''); //Dic 21/15  //verificar si sirve ese Formato
//            //Actualizar datos de Timbre en CFDI         //Mar 31/16              //Ago 26/16
//            adodsMaster.Edit;
//            adodsMasterUUID_TB.AsString:=  TimbreCFDI.UUID;
//            adodsMasterSelloCFD_TB.AsString:=TimbreCFDI.SelloEmisor;// 26 ago se regreso como estaba Cadenatimbre; XImpresion // ajustado ago 24/16 era SelloEmisor;
//            adodsMasterSelloSAT_TB.AsString:=TimbreCFDI.SelloSAT;
//            adodsMasterSello.AsString:=TimbreCFDI.SelloEmisor; //Verificar
//            adodsMasterCertificadoSAT_TB.AsString:=   TimbreCFDI.NoCertificadoSAT;
//            adodsMasterFechaTimbrado_TB.AsDateTime:=ConvierteFechaT_DT(TimbreCFDI.FechaTimbre);
//            adodsMasterCadenaOriginal.AsString:= TimbreCFDI.CadenaTimbre;// 26 ago se regreso como estaba//Cadenaoriginal;//CadenaTimbre ;Ago 24/16  // Dic 23/15
//            adodsMasterIdCFDIEstatus.AsInteger:=2; //Dic 29/15
//            IdCFDIAuxiliar:= adodsMasterIdCFDI.AsInteger;// Oct 27/16
//            adodsMaster.Post; //Se puso esto primero  y luego se asocia el resto
//
//            adodsMaster.Edit;
//            IDXML := CargaXMLPDFaFS(RutaFactura,TipoDoc + String(DocumentoComprobanteFiscal.Serie) + IntToStr(DocumentoComprobanteFiscal.Folio));
//            IDPDF:=  CargaXMLPDFaFS(RutaPDF, TipoDoc+ String(DocumentoComprobanteFiscal.Serie) + IntToStr(DocumentoComprobanteFiscal.Folio));
//            IDCBB:=  CargaXMLPDFaFS(XMLpdf.FileIMG,'PNG '+TipoDoc + String(DocumentoComprobanteFiscal.Serie) + IntToStr(DocumentoComprobanteFiscal.Folio));//Ene 5/2016
//            Respuesta:='';
//            if VerificaArchivo(IDXML,ExtractFileName(RutaFactura), Respuesta) then     //REspuesta debe concatenar las respuestas si no va vacia //Sep 27/16
//              adodsMasterIdDocumentoXML.Value :=IDXML ;
//            if VerificaArchivo(IDPDF,ExtractFileName(RutaPDF), Respuesta) then
//              adodsMasterIdDocumentoPDF.Value :=IDPDF;
//            if  VerificaArchivo(IDCBB, ExtractFileName(XMLpdf.FileIMG), Respuesta) then
//               adodsMasterIdDocumentoCBB.Value := IDCBB;
//            adodsMaster.Post;
//            ShowProgress(80,100.1,'Actualizando Datos Cliente ' +AuxTxt+ IntToStr(80) + '%');  //Jun 2/16
//
//            if IdCFDIAuxiliar <> adodsMasterIdCFDI.value then    //oct 26/16
//               Respuesta:=Respuesta+AuxTxt+'R'+intToStr(IdCFDIAuxiliar)+' CFDI C'+ intTostr(adodsMasterIdCFDI.value);
////          //  Actualiza Saldos  Mar 1/16
////              ActualizaSaldoCliente(adodsMasterIdCFDI.value,adodsMasterIdPersonaReceptor.Value,adodsMasterIdClienteDomicilio.value, adodsMasterTotal.Value,'+ ');
//            ShowProgress(100,100.1,'Procesando PDF '+ AuxTxt + IntToStr(100) + '%');  //Jun 2/16
//            ShowProgress(100,100);
//            if Respuesta <>'' then //Por los archivos Sep 27/16
//               showMessage('Advertencias de asociacion archivos...'+ Respuesta);
//           (* if not EsProduccion then
//              showMessage('Proceso Alterno de Facturación Terminado '+adodsMasterSerie.asstring+'-'+ adodsMasterFolio.asstring)
//            else   // deshabilitado para usar  la del  2017 Abr 6/17 *)
//              if FileExists(RutaPDF) then
//                ShellExecute(application.Handle, 'open', PChar(RutaPDF), nil, nil, SW_SHOWNORMAL);     //VErificar el FRM Edit
//       //     ActEnvioCorreoFact.Execute; //verificar  Abr5/16
//            //ShowMessage('Envio a Cliente por Correo Electronico en proceso');
//            if (StrToint(TimbreCFDI.TimbresRestantes) <100) then
//               Showmessage(' Timbres Restantes : '+TimbreCFDI.TimbresRestantes);   //Oct 16/17
//            Result:= True;
//          end
//          else
//          begin
//            Showmessage('Error Generando CFDI '+AuxTxt+TimbreCFDI.MensajeError);//Dic 29/15
//            ShowProgress(100,100.1,'Proceso Terminado con errores ' +AuxTxt + IntToStr(100) + '%');  //Jun 16/16
//            ShowProgress(100,100); //Jun 16/16
//          end
//        end
//        else
//          application.MessageBox('No se pudo Crear el directorio. Verifique permisos', 'Error', MB_Ok);
//      finally
//
//    end;
//  end
//  else
//    Showmessage('CFDI generado con anterioridad');
//end;

function TdmFacturas.Timbrar33(IdCFDI: Integer): Boolean;
var
  facturaCFDIv33 : IComprobanteFiscalV33;
  UUIDRelacionado33:IComprobanteFiscalV33_CfdiRelacionados_CfdiRelacionado;
  concepto33 : IComprobanteFiscalV33_Conceptos_Concepto;
  iva33 : IComprobanteFiscalV33_Conceptos_Concepto_Impuestos_Traslados_Traslado;
  totalIVA33 : IComprobanteFiscalV33_Impuestos_Traslados_Traslado;
  rutaCertificado, rutaLlavePrivada, claveLlavePrivada: string;
  TimbreCFDI: VirtualXML33.TTimbreCFDI;
  RutaFactura: string;
  ArchivoPDF: string;
  ArchivoCBB: string;
//  TipoDocumento: string;
  IdDocumentoXML: Integer;
  IdDocumentoCBB: Integer;
  IdDocumentoPDF: Integer;
  IdCFDITipoDocumento: TCFDITipoDocumento;
  complementoPagoV1: IPagosV1;
  pagoComplementPagoV1: IPagos_PagoV1;
  doctoRelacionadoListV1: IPagos_Pago_DoctoRelacionadoListV1;
  doctoRelacionadoComplementoPagoV1: IPagos_Pago_DoctoRelacionadoV1;

  function GetRutaFactura(EmisorRFC: string): string;
  var
    Anio, Mes, Dia: Word;
    RutaBase: string;
  begin
    DecodeDate(Now, Anio, Mes, Dia);
    {$IFDEF DEBUG}
      RutaBase := ExtractFilePath(application.ExeName);
    {$ELSE}
      RutaBase := dmConfiguracion.RutaFacturas;
    {$ENDIF}
    if RutaBase=EmptyStr then
      RutaBase := ExtractFilePath(application.ExeName);
    Result := RutaBase + EmisorRFC + PathDelim +
    UpperCase(System.SysUtils.FormatSettings.ShortMonthNames[MonthOfTheYear(Now)]) + IntToStr(Anio) + PathDelim;
  end;
  procedure GetCSD(IdPersonaEmisor: Integer);
  begin
    {$IFDEF DEBUG}
      rutaCertificado   := ExtractFilePath(Application.ExeName) + 'CSD01_AAA010101AAA.cer';
      rutaLlavePrivada  := ExtractFilePath(Application.ExeName) + 'CSD01_AAA010101AAA.key';
      claveLlavePrivada := '12345678a';
    {$ELSE}
      adodsArchivosCerKey.Close;
      adodsArchivosCerKey.Parameters.ParamByName('IdPersona').Value := IdPersonaEmisor;
      adodsArchivosCerKey.Open;
      rutaCertificado   := ExtractFilePath(application.ExeName)+ adodsArchivosCerKeyNomCert.AsString;
      rutaLlavePrivada  := ExtractFilePath(application.ExeName)+  adodsArchivosCerKeyNomKey.AsString;
      claveLlavePrivada := adodsArchivosCerKeyClave.AsString;
      ReadFileCERKEY(rutaCertificado,rutaLlavePrivada);
      adodsArchivosCerKey.Close;
    {$ENDIF}
  end;
  procedure SetCFDIFolio(IdCFDI: Integer);
  begin
    adospSetCFDIFolio.Parameters.ParamByName('@IdCFDI').Value := IdCFDI;
    adospSetCFDIFolio.ExecProc;
  end;
  procedure SetCFDITimbre(IdCFDI: Integer);
  begin
    adopUpdCFDITimbre.Parameters.ParamByName('IdCFDIEstatus').Value := 2;
    adopUpdCFDITimbre.Parameters.ParamByName('Sello').Value := TimbreCFDI.SelloEmisor;
    adopUpdCFDITimbre.Parameters.ParamByName('NoCertificado').Value := TimbreCFDI.CertificadoEmisor;
//    adopUpdCFDITimbre.Parameters.ParamByName('Certificado').Value :=
    adopUpdCFDITimbre.Parameters.ParamByName('CadenaOriginal').Value := TimbreCFDI.CadenaOriginal;
    adopUpdCFDITimbre.Parameters.ParamByName('CadenaTimbre').Value := TimbreCFDI.CadenaTimbre;
    adopUpdCFDITimbre.Parameters.ParamByName('UUID_TB').Value := TimbreCFDI.UUID;
    adopUpdCFDITimbre.Parameters.ParamByName('SelloCFD_TB').Value := TimbreCFDI.SelloEmisor;
    adopUpdCFDITimbre.Parameters.ParamByName('SelloSAT_TB').Value := TimbreCFDI.SelloSAT;
    adopUpdCFDITimbre.Parameters.ParamByName('CertificadoSAT_TB').Value := TimbreCFDI.NoCertificadoSAT;
    adopUpdCFDITimbre.Parameters.ParamByName('FechaTimbrado_TB').Value := ConvierteFechaT_DT(TimbreCFDI.FechaTimbre);
    adopUpdCFDITimbre.Parameters.ParamByName('RFCProvCertifica_TB').Value := TimbreCFDI.RFCPAC;
    adopUpdCFDITimbre.Parameters.ParamByName('LeyendaSAT_TB').Value := TimbreCFDI.LeyendaSAT;
//    adopUpdCFDITimbre.Parameters.ParamByName('NumRegistroIdTrib33').Value :=
    adopUpdCFDITimbre.Parameters.ParamByName('IdCFDI').Value := IdCFDI;
    adopUpdCFDITimbre.Execute;
  end;
  procedure SetCFDIArchivos(IdCFDI: Integer);
  begin
    adocUpdCFDIArchivos.Parameters.ParamByName('IdDocumentoCBB').Value := IdDocumentoCBB;
    adocUpdCFDIArchivos.Parameters.ParamByName('IdDocumentoXML').Value := IdDocumentoXML;
    adocUpdCFDIArchivos.Parameters.ParamByName('IdDocumentoPDF').Value := IdDocumentoPDF;
    adocUpdCFDIArchivos.Parameters.ParamByName('IdCFDI').Value := IdCFDI;
    adocUpdCFDIArchivos.Execute;
  end;
begin
  Result:= False;
  Esproduccion:=FileExists(ExtractFilePath(application.ExeName)+'EnProduccion.txt'); //Temporal Dic 8/15 //Modificado sep 27/17
  //Poner Folio Serie
  SetCFDIFolio(IdCFDI);
  // Selecciona CFDI a timbrar
  adoqCFDI.Close;
  adoqCFDI.Parameters.ParamByName('IdCFDI').Value := IdCFDI;
  adoqCFDI.Open;
  adoqCFDIConceptos.Open;
  adoqCFDIImpuestos.Open;
  IdCFDITipoDocumento:= TCFDITipoDocumento(adoqCFDIIdCFDITipoDocumento.Value);
  // Verifica que el CFDi este en prefactura
  if adoqCFDIIdCFDIEstatus.Value =1 then
  begin
    //Aca van las que se timbran.. Facturas y notas de cargo y de credito (egreso  Forma de Pago misma de CFDI relacionado)
    //Si es Factura o Nota CArgo, si no( es egreso NCR) debe llevar La forma de Pago de las factura relacionada...
    // Timbrar
    ShowProgress(20,100,'Preparando Datos para Generar CFDI ' + IntToStr(20) + '%');  //Jun 2/16
//    ShowProgress(30,100.1,'Extrayendo datos de Emisor ' + IntToStr(30) + '%');  //Jun 2/16
    CoInitialize(nil);
    try
      facturaCFDIv33 := NewComprobanteFiscalV33;
      facturaCFDIv33.OwnerDocument.Options := facturaCFDIv33.OwnerDocument.Options - [doNodeAutoIndent];
      if IdCFDITipoDocumento = tdCFDIPago then
      begin
        facturaCFDIv33.Serie             := adoqCFDISerie.AsString;
        facturaCFDIv33.Folio             := adoqCFDIFolio.AsString;
        facturaCFDIv33.Fecha             := TFacturacionHelper.ComoFechaISO8601(adoqCFDIFecha.Value);
        facturaCFDIv33.Subtotal          := TFacturacionHelper.ComoMoneda(adoqCFDISubTotal.Value);
        facturaCFDIv33.Moneda            := 'XXX'; //adoqCFDIMoneda.AsString;
        facturaCFDIv33.Total             := TFacturacionHelper.ComoMoneda(adoqCFDITotal.AsExtended);
        facturaCFDIv33.TipoDeComprobante := adoqCFDITipoComp.AsString;
        facturaCFDIv33.LugarExpedicion   := adoqCFDILugarExpedicion.AsString;
      end
      else
      begin
        facturaCFDIv33.Serie             := adoqCFDISerie.AsString;
        facturaCFDIv33.Folio             := adoqCFDIFolio.AsString;
        facturaCFDIv33.Fecha             := TFacturacionHelper.ComoFechaISO8601(adoqCFDIFecha.Value);
        facturaCFDIv33.CondicionesDePago :=adoqCFDICondPago.AsString;
        facturaCFDIv33.FormaPago         := adoqCFDIFormaPago33.AsString;
        facturaCFDIv33.MetodoPago        := adoqCFDIMetodoPago33.AsString;
        facturaCFDIv33.Subtotal          := TFacturacionHelper.ComoMoneda(adoqCFDISubTotal.Value);
        facturaCFDIv33.Descuento         := TFacturacionHelper.ComoMoneda(adoqCFDIDescto.Value);
        facturaCFDIv33.Moneda            := adoqCFDIMoneda.AsString;
        facturaCFDIv33.TipoCambio        := adoqCFDITipoCambio.AsString;
        facturaCFDIv33.Total             := TFacturacionHelper.ComoMoneda(adoqCFDITotal.AsExtended);
        facturaCFDIv33.TipoDeComprobante := adoqCFDITipoComp.AsString;
        facturaCFDIv33.LugarExpedicion   := adoqCFDILugarExpedicion.AsString;
      end;
//      ShowProgress(30,100,'Extrayendo datos de Emisor ' + IntToStr(30) + '%');
      {$IFDEF DEBUG}
        facturaCFDIv33.Emisor.Rfc        := 'AAA010101AAA';
      {$ELSE}
        facturaCFDIv33.Emisor.Rfc        := adoqCFDIEmisorRFC.AsString;
      {$ENDIF}
      facturaCFDIv33.Emisor.Nombre     := adoqCFDIEmisorNombre.AsString;
      facturaCFDIv33.Emisor.RegimenFiscal :=adoqCFDIEmisorRegimenFiscal.AsString;;
//      ShowProgress(40,100.1,'Extrayendo datos de Receptor ' + IntToStr(40) + '%');
      facturaCFDIv33.Receptor.Rfc         := adoqCFDIReceptorRFC.asString;//'MTI0806042N7';
      facturaCFDIv33.Receptor.Nombre      := adoqCFDIReceptorNombre.AsString;
//      ShowProgress(50,100.1,'Extrayendo datos de conceptos ' + IntToStr(50) + '%');  //Jun 2/16
      // Documentos relacionados
      facturaCFDIv33.Receptor.UsoCFDI     := adoqCFDIUsoCFDI.AsString;
      adoqCFDIRelacionados.Close;
      adoqCFDIRelacionados.Open;
      if not adoqCFDIRelacionados.Eof then
      begin
        facturaCFDIv33.CfdiRelacionados.TipoRelacion := adoqCFDICFDITipoRelacion.AsString;
        adoqCFDIRelacionados.First;
        while not adoqCFDIRelacionados.Eof do
        begin
          UUIDRelacionado33 := facturaCFDIv33.CfdiRelacionados.Add;
          UUIDRElacionado33.UUID := adoqCFDIRelacionadosUUID.AsString;
          adoqCFDIRelacionados.Next;
        end;
      end;
      // Conceptos
      adoqCFDIConceptos.First;
      while not adoqCFDIConceptos.Eof do
      begin
        concepto33 := facturaCFDIv33.Conceptos.Add;
        concepto33.ClaveProdServ    := adoqCFDIConceptosSATClaveProdServ.AsString;
        concepto33.NoIdentificacion := adoqCFDIConceptosNoIdentifica.AsString;
        concepto33.Cantidad         := TFacturacionHelper.ComoCantidad(adoqCFDIConceptosCantidad.Value);
        concepto33.ClaveUnidad      := adoqCFDIConceptosSATClaveUnidad.AsString;
        concepto33.Unidad           := adoqCFDIConceptosUnidad.AsString;
        concepto33.Descripcion      := adoqCFDIConceptosDescripcion.AsString;
        concepto33.ValorUnitario    := TFacturacionHelper.ComoMoneda(adoqCFDIConceptosValorUnitario.AsExtended);
        concepto33.Importe          := TFacturacionHelper.ComoMoneda(adoqCFDIConceptosImporte.AsExtended);
        concepto33.Descuento        := TFacturacionHelper.ComoMoneda(adoqCFDIConceptosDescuento.AsExtended);
        adoqCFDIConceptosImpuestos.Close;
        adoqCFDIConceptosImpuestos.Open;
        adoqCFDIConceptosImpuestos.First;
        while not adoqCFDIConceptosImpuestos.Eof do
        begin
          iva33 := concepto33.Impuestos.Traslados.Add;
          iva33.Base        := TFacturacionHelper.ComoMoneda(adoqCFDIConceptosImpuestosBase.AsExtended);
          iva33.Impuesto    := adoqCFDIConceptosImpuestosClaveImpuesto.AsString;
          iva33.TipoFactor  := adoqCFDIConceptosImpuestosTipoFactor.AsString;
          iva33.TasaOCuota  := TFacturacionHelper.ComoMoneda(adoqCFDIConceptosImpuestosTasaOCuota.AsExtended,6);
          iva33.Importe     := TFacturacionHelper.ComoMoneda(adoqCFDIConceptosImpuestosImporte.AsExtended);
          adoqCFDIConceptosImpuestos.Next;
        end;
        //Aca deberia ir información Aduanera
        adoqCFDIConceptos.Next;
      end;
//      ShowProgress(60,100.1,'Extrayendo datos de impuestos ' + IntToStr(60) + '%');  // se recorrio respecto del original
      if IdCFDITipoDocumento <> tdCFDIPago then
      begin
        facturaCFDIv33.Impuestos.TotalImpuestosTrasladados  := TFacturacionHelper.ComoMoneda(adoqCFDITotalImpuestoTrasladado.AsExtended );
        adoqCFDIImpuestos.First;
        while not adoqCFDIImpuestos.Eof do
        begin
          totalIVA33 := facturaCFDIv33.Impuestos.Traslados.Add;
          totalIVA33.Impuesto   := adoqCFDIImpuestosClaveImpuesto.AsString;
          totalIVA33.TipoFactor := adoqCFDIImpuestosTipoFactor.AsString;
  //        if  totalIVA33.TipoFactor<>'Exento' then //VErificar
          totalIVA33.TasaOCuota := TFacturacionHelper.ComoMoneda(adoqCFDIImpuestosTasa.AsExtended,6);
          totalIVA33.Importe    := TFacturacionHelper.ComoMoneda(adoqCFDIImpuestosImporte.AsExtended);
          adoqCFDIImpuestos.Next;
        end;
      end;
      {$region 'Complemento de pago'}
      if IdCFDITipoDocumento = tdCFDIPago then
      begin
        adoqCFDIComplementoPagos.Close;
        adoqCFDIComplementoPagos.Open;
        complementoPagoV1 := NewComplementoPagoV1;
        pagoComplementPagoV1 := complementoPagoV1.Add;
        pagoComplementPagoV1.FechaPago        := TFacturacionHelper.ComoFechaISO8601(adoqCFDIComplementoPagosFechaPago.Value);
        pagoComplementPagoV1.FormaDePagoP     := adoqCFDIComplementoPagosFormaPagoP.AsString;
        pagoComplementPagoV1.MonedaP          := adoqCFDIComplementoPagosMonedaP.AsString;
        if  pagoComplementPagoV1.MonedaP<>'MXN' then
          pagoComplementPagoV1.TipoCambioP      := adoqCFDIComplementoPagosTipoCambioP.AsString;
        pagoComplementPagoV1.Monto            := TFacturacionHelper.ComoMoneda(adoqCFDIComplementoPagosMonto.AsExtended);
        pagoComplementPagoV1.NumOperacion     := adoqCFDIComplementoPagosNumOperacion.AsString;
        if adoqCFDIComplementoPagosRFCEmisorCtaOrd.AsString <> EmptyStr then
          pagoComplementPagoV1.RfcEmisorCtaOrd  := adoqCFDIComplementoPagosRFCEmisorCtaOrd.AsString;
        if adoqCFDIComplementoPagosNomBancoOrdExt.AsString <> EmptyStr then
          pagoComplementPagoV1.CtaOrdenante     := adoqCFDIComplementoPagosNomBancoOrdExt.AsString;
        if adoqCFDIComplementoPagosRFCEmisorCtaBen.AsString <> EmptyStr then
          pagoComplementPagoV1.RfcEmisorCtaBen  := adoqCFDIComplementoPagosRFCEmisorCtaBen.AsString;
        if adoqCFDIComplementoPagosCtaBeneficiario.AsString <> EmptyStr then
          pagoComplementPagoV1.CtaBeneficiario  := adoqCFDIComplementoPagosCtaBeneficiario.AsString;
        doctoRelacionadoListV1 := pagoComplementPagoV1.DoctoRelacionado;
        adoqCFDIComplementoPagosRelacionado.Close;
        adoqCFDIComplementoPagosRelacionado.Open;
        while not adoqCFDIComplementoPagosRelacionado.Eof  do
        begin
          doctoRelacionadoComplementoPagoV1 := doctoRelacionadoListV1.Add;
          doctoRelacionadoComplementoPagoV1.IdDocumento      := adoqCFDIComplementoPagosRelacionadoUUID.asString;
          doctoRelacionadoComplementoPagoV1.Serie            := adoqCFDIComplementoPagosRelacionadoSerie.AsString;
          doctoRelacionadoComplementoPagoV1.Folio            := adoqCFDIComplementoPagosRelacionadoFolio.AsString;
          doctoRelacionadoComplementoPagoV1.MonedaDR         := adoqCFDIComplementoPagosRelacionadoMonedaDR.AsString;
          //Tipo Cambio puede implicar cambio en aplicacion de pago.. verificar //FEb22/18
          if (pagoComplementPagoV1.MonedaP <> doctoRelacionadoComplementoPagoV1.MonedaDR) then
            doctoRelacionadoComplementoPagoV1.TipoCambioDR   := adoqCFDIComplementoPagosRelacionadoTipoCambioDR.AsString;
          doctoRelacionadoComplementoPagoV1.MetodoDePagoDR   := adoqCFDIComplementoPagosRelacionadoMetodoPagoDR.AsString;
          doctoRelacionadoComplementoPagoV1.NumParcialidad   := adoqCFDIComplementoPagosRelacionadoNumParcialidad.AsInteger;
          doctoRelacionadoComplementoPagoV1.ImpSaldoAnt      := TFacturacionHelper.ComoMoneda(adoqCFDIComplementoPagosRelacionadoImpSaldoAnt.AsExtended);
          doctoRelacionadoComplementoPagoV1.ImpPagado        := TFacturacionHelper.ComoMoneda(adoqCFDIComplementoPagosRelacionadoImpPagado.AsExtended);
          doctoRelacionadoComplementoPagoV1.ImpSaldoInsoluto := TFacturacionHelper.ComoMoneda(adoqCFDIComplementoPagosRelacionadoImpSaldoInsoluto.AsExtended);
          adoqCFDIComplementoPagosRelacionado.Next;
        end;
        facturaCFDIv33.AgregarComplemento(complementoPagoV1,
                                        'pago10',
                                        'http://www.sat.gob.mx/Pagos',
                                        'http://www.sat.gob.mx/Pagos http://www.sat.gob.mx/sitio_internet/cfd/Pagos/Pagos10.xsd');
      end;
      {$endregion}
      GetCSD(adoqCFDIIdPersonaEmisor.Value);
      RutaFactura := GetRutaFactura(adoqCFDIEmisorRFC.AsString);
      if not DirectoryExists (RutaFactura) then
         ForceDirectories(RutaFactura);
      if  DirectoryExists (RutaFactura) then
      begin
        ShowProgress(60,100,'Timbrando CFDI ' + IntToStr(60) + '%');
        if GenerarCFDI33(Virtualxml33.tcIngreso, facturaCFDIv33, rutaCertificado,
        rutaLlavePrivada, claveLlavePrivada,RutaFactura,TimbreCFDI, Esproduccion) then
        begin
          SetCFDITimbre(IdCFDI);
//          TipoDocumento:= adoqCFDITipoDocumento.AsString;
          ArchivoCBB:= TimbreCFDI.NombreArchivo + fePNG;
          ArchivoPDF:= ChangeFileExt(TimbreCFDI.NombreArchivo, fePDF);
          ShowProgress(80,100,'Generando PDF ' + IntToStr(80) + '%');
          GenerarPDF(IdCFDI, ArchivoPDF, ArchivoCBB);
          ShowProgress(90,100,'Almacenando archivos ' + IntToStr(90) + '%');
//          IdDocumentoXML := CargaXMLPDFaFS(TimbreCFDI.NombreArchivo, TipoDocumento + String(facturaCFDIv33.Serie) + facturaCFDIv33.Folio);
//          IdDocumentoPDF:=  CargaXMLPDFaFS(ArchivoPDF, TipoDocumento + String(facturaCFDIv33.Serie) + facturaCFDIv33.Folio);
//          IdDocumentoCBB:=  CargaXMLPDFaFS(ArchivoCBB,'PNG '+ TipoDocumento + String(facturaCFDIv33.Serie) + facturaCFDIv33.Folio);
          IdDocumentoXML := AgregarDocumento(TimbreCFDI.NombreArchivo);
          IdDocumentoPDF :=  AgregarDocumento(ArchivoPDF);
          IdDocumentoCBB :=  AgregarDocumento(ArchivoCBB);
          SetCFDIArchivos(IdCFDI);
          ShowProgress(100,100);
          if FileExists(ArchivoPDF) then
            ShellExecute(application.Handle, 'open', PChar(ArchivoPDF), nil, nil, SW_SHOWNORMAL);
     //     ActEnvioCorreoFact.Execute; //verificar  Abr5/16
          //ShowMessage('Envio a Cliente por Correo Electronico en proceso');
//          if (StrToint(TimbreCFDI.TimbresRestantes) <100) then
//             Showmessage(' Timbres Restantes : '+TimbreCFDI.TimbresRestantes);   //Oct 16/17
          Result:= True;
        end
        else
        begin
          Showmessage('Error Generando CFDI '+TimbreCFDI.MensajeError);//Dic 29/15
          ShowProgress(100,100.1,'Proceso Terminado con errores ' + IntToStr(100) + '%');  //Jun 16/16
          ShowProgress(100,100); //Jun 16/16
        end
      end
      else
        application.MessageBox('No se pudo Crear el directorio. Verifique permisos', 'Error', MB_Ok);
    finally
      CoUninitialize;
    end;
  end
  else
    Showmessage('CFDI generado con anterioridad');
end;

end.
