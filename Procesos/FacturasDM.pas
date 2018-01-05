unit FacturasDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB,dateutils,dialogs,forms, shellAPI,winapi.windows,
  Vcl.Controls,
  VirtualXML,
  XMLIntf, Activex,VirtualXML33;

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
    ADODtStCFDIConceptos: TADODataSet;
    ADODtStCFDIConceptosIdCFDI: TLargeintField;
    ADODtStCFDIConceptosIdUnidadMedida: TIntegerField;
    ADODtStCFDIConceptosCantidad: TFloatField;
    ADODtStCFDIConceptosUnidad: TStringField;
    ADODtStCFDIConceptosDescripcion: TStringField;
    ADODtStCFDIConceptosNoIdentifica: TStringField;
    ADODtStCFDIConceptosValorUnitario: TFMTBCDField;
    ADODtStCFDIConceptosImporte: TFMTBCDField;
    ADODtStCFDIConceptosIdCFDIConcepto: TLargeintField;
    DSMaster: TDataSource;
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
    ADODtStFormasPago: TADODataSet;
    ADODtStFormasPagoIDCFDIFormaPago: TAutoIncField;
    ADODtStFormasPagoIdentificador: TStringField;
    ADODtStFormasPagoDescripcion: TStringField;
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
    adodsMasterDirCompleta: TStringField;
    actImprimirCFDI: TAction;
    adodsMasterDireccionC: TStringField;
    ADODtStCFDIConceptosIdCuentaXCobrarDetalle: TIntegerField;
    adodsMasterIdCuentaXCobrar: TIntegerField;
    adodsMasterSaldoFactoraje: TFMTBCDField;
    actCancelarCFDI: TAction;
    adodsMasterRFCEmisor: TStringField;
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
    adodsFormasPago33: TADODataSet;
    adodsMetodosPago33: TADODataSet;
    adodsTiposRelaciones: TADODataSet;
    adodsUsosCFDI: TADODataSet;
    adodsMasterFormaPago33: TStringField;
    adodsMasterMetodoPago33: TStringField;
    adodsMasterTipoRelacion: TStringField;
    adodsMasterUsoCFDI: TStringField;
    ADODtStCFDIConceptosDescuento: TFMTBCDField;
    ADODtStCFDIConceptosSATClaveProdServ: TStringField;
    ADODtStCFDIConceptosSATClaveUnidad: TStringField;
    adocSetConceptoImpuesto: TADOCommand;
    adocUpdCFDITotales: TADOCommand;
    adocSetImpuestos: TADOCommand;
    adocDelConceptoImpuesto: TADOCommand;
    procedure DataModuleCreate(Sender: TObject);
    procedure actTimbrarCFDIExecute(Sender: TObject);
    procedure adodsMasterNewRecord(DataSet: TDataSet);
    procedure adodsMasterBeforeOpen(DataSet: TDataSet);
    procedure ADODtStCFDIConceptosBeforeInsert(DataSet: TDataSet);
    procedure ADODtStCFDIConceptosAfterPost(DataSet: TDataSet);
    procedure ADODtStCFDIConceptosNewRecord(DataSet: TDataSet);
    procedure ADODtStCFDIConceptosValorUnitarioChange(Sender: TField);
    procedure ADODtStCFDIConceptosAfterDelete(DataSet: TDataSet);
    procedure adodsMasterIdPersonaReceptorChange(Sender: TField);
    procedure ADODtStDireccionesClienteCalcFields(DataSet: TDataSet);
    procedure actImprimirCFDIExecute(Sender: TObject);
    procedure adodsMasterAfterOpen(DataSet: TDataSet);
    procedure actCancelarCFDIExecute(Sender: TObject);
    procedure actTimbrarCFDIUpdate(Sender: TObject);
    procedure actCancelarCFDIUpdate(Sender: TObject);
    procedure ADODtStCFDIConceptosBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
    FMuestra: Boolean;
    FIdCFDITipoDocumento: Integer;
//    FIDCFDIGen: Integer;
    procedure ReadFileCERKEY(FileNameCER,FileNameKEY: TFileName);
    function ConvierteFechaT_DT(Texto: String): TDateTime;
    function CargaXMLPDFaFS(Archivo, Describe: string): integer;
    procedure SubirXMLPDFaFS(FileName: TFileName);
//    Function ActualizaSaldoCliente(IdCFDI, IDCliente, IDDomicilioCliente:Integer;Importe :Double; operacion:String):Boolean;
    function VerificaArchivo(var IDArchivo: Integer; Archivo: String;
      var Respuesta: String): Boolean;
    procedure SetMuestra(const Value: Boolean);
    function SacaTipoComp(tipoD: Integer): String;
    function InformacionContrato(IdCXC: Integer): String;
    procedure ReadFile(FileName: TFileName);
    function CrearArchivos_TimbrePrueba(var Ruta: String;
      var TimbradoCFDI: TTimbreCFDI; Adicional: String): Boolean;
    procedure RefreshCFDI;
    procedure DesAsociarCFDIdeCXC(Idcfdi: Integer);
    procedure RegistraBitacora(tipoRegistro: Integer; Observacion: String);    //Regresado
    function Timbrar32(IdCFDI: Integer): Boolean;
    function Timbrar33(IdCFDI: Integer): Boolean;
    procedure GenerarPDF(IdCFDI:Integer; ArchivoPDF, ArchivoImagen: TFileName);
  public
    { Public declarations }
    EsProduccion:Boolean;
    constructor CreateWMostrar(AOwner: TComponent; Muestra: Boolean;
      IdCFDITipoDocumento: Integer); virtual;
    function CrearPrefactura(IdCuentaXCobrar: Integer): Integer;
    function Timbrar(IdCFDI: Integer): Boolean;
    property Muestra:Boolean read FMuestra write SetMuestra;
    property IdCFDITipoDocumento:Integer read FIdCFDITipoDocumento write FIdCFDITipoDocumento;
//    property PIDCFDIGen:Integer read  FIDCFDIGen write FIDCFDIGen; //FEb 8/17
  end;

//var
//  dmFacturas: TdmFacturas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses FacturasForm, ConceptosFacturaForm,
  DocComprobanteFiscal, FacturaTipos, XMLtoPDFDmod,
  _Utils, _ConectionDmod, ConfiguracionDM, FacturaConfirmacionForm,
  FacturaReglamentacion, Facturacion.ComprobanteV33,
  Facturacion.ComplementoPagoV1, Facturacion.ImpuestosLocalesV1,
  Facturacion.Helper, RptCFDI33DM;

{$R *.dfm}

procedure TdmFacturas.actCancelarCFDIExecute(Sender: TObject);
var               //Solo se permite si es el ultimo movimiento...    //AGo 3/17
  txt:String;

  Certificado: TFECertificado;
  FileCertificado, FileKey : TFileName;
  Clave, RutaBase, carpeta, Respuesta, ArchivoSal,dato, motivo : String;
  Anio,dia,mes:Word;
  F:TextFile;
begin          //Agregado Ago 3/17
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
        ShowMessage(adodsMasterUUID_TB.Value + #13+'Prueba de Cancelación ');
      end
      else
      if  cancelarCFDI(adodsMasterUUID_TB.Value,carpeta+ArchivoSal,Certificado,Respuesta,Esproduccion) then
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

             ShowMessage(adodsMasterUUID_TB.Value + #13+'Documento cancelado en SAT. Recuerde que debe descargar del SAT, los acuses de cancelación');

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
               ShowMessage(adodsMasterUUID_TB.Value + #13+'Prueba de Cancelación ');
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
   REsp:Integer;
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

  Resp:=ADOQryAuxiliar.ExecSQL;
//  if Resp=1 then
  //  showmessage('Lo creó');
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
  dmRptCFDI33: TdmRptCFDI33;
  IdCFDI: Integer;
  IdDoc, Avance:Integer;
  nombreArchi, nomImagen,ArchivoPDF:TfileName;
  XMLpdf: TdmodXMLtoPDF;
  Contrato: string;
  TipoDoc: string;
  CFDIVersion: string;
begin
  inherited;
  Avance:=0; //Ene8/16
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
//      dmRptCFDI33 := TdmRptCFDI33.Create(Self);
//      try
//        dmRptCFDI33.Imprimir(IdCFDI, nomImagen);
//      finally
//        dmRptCFDI33.Free;
//      end;
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
      Showmessage ('No fue posible regenerar el PDF, verifique que no se encuentre abierto en si visor de PDFs');
  end;
  ShowProgress(100,100);
  //Filtrar con ID enDocumento
  //Sacar Documento
  //Aun no guarda de nuevo.. (Verificar)
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
  actTimbrarCFDI.Enabled := (adodsMasterIdCFDIEstatus.Value = 1) and (adodsMasterTotal.Value > 0);
end;

//Ene 27/17 Copiado
function TDMFacturas.CrearArchivos_TimbrePrueba( var Ruta : String; var TimbradoCFDI: TTimbreCFDI; Adicional :String):Boolean;
const
    XMLF='XMLPruebaST.xml';
    PDFF='PDFPruebaST.pdf';
    PNGF='PNGPruebaST.png';
var
  rutaAux, BAse:String;
  XRuta:String;
begin

  Base:=ExtractFilePath(application.exename);
  Result:=True;
  Ruta := Ruta + adicional;
  XRuta:=Base+XMLF;
//  if FileExists(XRuta) then
 //    ShowMessage('XML existe');

   XRuta:=Base+PDFF;
 // if FileExists(XRuta) then
 //    ShowMessage('pdf existe');

  XRuta:=Base+PNGF;
 // if FileExists(XRuta) then
   //  ShowMessage('png existe');


  if FileExists(Base+XMLF) and FileExists(Base+PDFF) and FileExists(Base+PNGF) then
  begin
    CopyFile(pwidechar(Base+XMLF),pwidechar(Ruta),false);
    RutaAux:= Ruta ;

    RutaAux:= ChangeFileExt(Ruta, fePDF);
    CopyFile(pwidechar(Base+PDFF),pwidechar(RutaAux), False);

    RutaAux:= ChangeFileExt(Ruta, fePNG);
    CopyFile(pwidechar(Base+PNGF),pwidechar(RutaAux),false);

    TimbradoCFDI.Resultado := 'PRUEBA';      // constante de descripcion del error
    TimbradoCFDI.MensajeError:= '';      // descripcion del error
    TimbradoCFDI.CertificadoEmisor:= '111111111';      // No certificado del emisor
    TimbradoCFDI.SelloEmisor:='fffffffffffffffffff';      // Sello del emisor
    TimbradoCFDI.CadenaOriginal:= '||prueba|||';      // Cadena Original del documento
    TimbradoCFDI.NoCertificadoSAT:='aaaaaaaaaaaaaaaaaaaaaa';      // No. certificado del SAT
    TimbradoCFDI.SelloSAT:= '==aaaaaaaaaa=';      // Sello del SAT
    TimbradoCFDI.CadenaTimbre:= 'cadenatimbre';      // Cadena del timbre
    TimbradoCFDI.UUID:= '74305F11-FFFF-FFFF-FFFF-BD200698C5EA';      // UUID
    TimbradoCFDI.FechaTimbre:= dateTimeToStr(now);     // fecha del timbrado
    TimbradoCFDI.InicioVigenciaCertificado:= dateTimeToStr(date-10);     // inicio de vigencia del certificado
    TimbradoCFDI.FinVigenciaCertificado:= dateTimeToStr(date+10);     // fin de vigencia del certificado
    TimbradoCFDI.VirtualPACID:= 'Prueba';     // VPID
    TimbradoCFDI.TimbresRestantes:= '1';     // timbres restantes
    TimbradoCFDI.VersionLibreria:= '00';     // version de la libreria
    TimbradoCFDI.NombreArchivo:= Ruta;
  end
  else
    REsult:=FAlse;

end;

function TdmFacturas.CrearPrefactura(IdCuentaXCobrar: Integer): Integer;

function CambiarMetodoPago(var IdMetodoPago: Integer; var CuentaPago, CompConcepto:String): Boolean;
begin
//  Cuenta:='';
//  CompConcepto:='';
//  IdMetodoPago:=6; // No identificado
//  FrmMetodoPagoFactura:=TFrmMetodoPagoFactura.Create(self);
//  FrmMetodoPagoFactura.IdMetSeleccion:=IDMetodoPago;
//  FrmMetodoPagoFactura.CuentaSeleccion:= Cuenta;
//  FrmMetodoPagoFactura.DSMetodoPago.DataSet:=ADODtStSelMetPago;
//
//  FrmMetodoPagoFactura.ShowModal;
//  Result:= FrmMetodoPagoFactura.ModalResult=mrOk ;
//  if result then
//  begin
//    IDMetodoPago:= FrmMetodoPagoFactura.IdMetSeleccion;
//    Cuenta:= FrmMetodoPagoFactura.CuentaSeleccion;
//    CompConcepto:=FrmMetodoPagoFactura.ComplemConcepto; //Ago 30/17
//  end;
//  FrmMetodoPagoFactura.Free;
end;

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

//function TdmFacturas.ActualizaSaldoCliente(IdCFDI, IDCliente,
//  IDDomicilioCliente: Integer; Importe: Double; operacion: String): Boolean;
//begin
//
//  if IDCliente<>-1 then
//  begin
//    try
//      ADOQryAuxiliar.Close;
//      ADOQryAuxiliar.Sql.Clear;
//      ADOQryAuxiliar.Sql.add('Update PersonasDomicilios set Saldo =Saldo '+operacion+floatToStr(Importe)+' where IDPersonaDomicilio='+intToStr(IdDomiciliocliente));
//      ADOQryAuxiliar.ExecSQL;
//
// (* quitado Ene 28/17
//      ADOQryAuxiliar.Close;
//      ADOQryAuxiliar.Sql.Clear;
//      ADOQryAuxiliar.Sql.add('Update Personas set SaldoCliente =SaldoCliente '+operacion+floatToStr(Importe)+' where IDPersona='+intToStr(IdCliente));
//      ADOQryAuxiliar.ExecSQL;    *)
//      result:=true;
//    except
//       result:=False;
//    end;
//  end
//  else //No hay agrupadas de publico en general
//    result:=False;
//end;

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
  DataSet.FieldByName('IDCFDITipoDocumento').AsInteger:= IdCFDITipoDocumento; //Factura    //ADODtSTOrdenSalida.fieldByname('IdGeneraCFDITipoDoc').ASInteger;//Mod. Mar 28/16
  DataSet.FieldByName('TipoComp').AsString:=SacaTipoComp(IdCFDITipoDocumento); //DataSet.FieldByName('TipoComprobante').AsString;//'ingreso'; //columna TipoComprobante de Tabla CFDItipoDocumento
  //Verificar si serie yFolio se colocan aca o se colocan justo antes de generar el CFDI
  DataSet.FieldByName('Folio').AsInteger:=0; //Sin asignar aun
  DataSet.FieldByName('Fecha').AsDateTime:=now; //Se supondría que se van a generar inmediatamente pero hay que verificar(por si se requiere cambio de fecha antes de generar)
  DataSet.FieldByName('LugarExpedicion').AsString:= ADODtStPersonaEmisorCodigoPostal.AsString;//ADODtStPersonaEmisorMunicipio.Value +', '+ADODtStPersonaEmisorEstado.Value;//'Zapopan, Jalisco' ; //Verificar si se saca de  la direccion del emisor?
// DataSet.FieldByName('Serie').AsString:=
//  DataSet.FieldByName('IdCFDIFormaPago').AsInteger :=1;
//  DataSet.FieldByName('IDMetodoPago').AsInteger:=5; //Otros Jun 27/16  4; //No identificado // abril 1/16      se supone que al seleccionar el cliente debe cambiar, si tiene
  DataSet.FieldByName('IDMoneda').AsInteger:=106;
  adodsMaster.fieldbyname('TipoCambio').AsInteger:=1; //Jun 27/16
  DataSet.FieldByName('IdPersonaEmisor').AsInteger:=ADODtStPersonaEmisoridpersona.AsInteger; //Debe estar abierta y debe tener una direccion fiscal
  adodsMasterIdCFDIMetodoPago33.Value := 2;
  adodsMasterIdCFDIFormaPago33.Value := 99;
  adodsMasterIDCFDIUsoCFDI.Value := 22;
  Except
    Raise;
  end;
end;

procedure TdmFacturas.ADODtStCFDIConceptosAfterDelete(DataSet: TDataSet);
var
IdCFDI: Integer;
//   idDocCFDI, IDDocItem, idImp:Integer;
//  Subtotal,IVACal,TotalCal:Double;
//  Existe:Boolean;
begin
  inherited;
  IdCFDI := ADODtStCFDIConceptosIdCFDI.Value;
  // Actualiza impuesto
  adocSetImpuestos.Parameters.ParamByName('IdCFDI').Value := IdCFDI;
  adocSetImpuestos.Execute;
  // Actualiza totales
  adocUpdCFDITotales.Parameters.ParamByName('IdCFDI').Value := IdCFDI;
  adocUpdCFDITotales.Execute;
//  idDocCFDI:=DSMaster.DataSet.FieldByName('IDCFDI').AsInteger;
//  //Siempre actualizar
//  ADOQryAuxiliar.Close;
//  ADOQryAuxiliar.SQL.Clear;
//  ADOQryAuxiliar.SQL.Add('Select Sum(Importe) as ValorST From CFDIConceptos where IDCFDI='+intToStr(idDocCFDI));
//  ADOQryAuxiliar.open;
//  Subtotal:= ADOQryAuxiliar.FieldByName('ValorST').AsFloat;
//  IVACal:= subtotal*0.16;
//  TotalCal:= Subtotal+IVACal; //subtotal*1.16 ;    //Ago 25/16
//  ADOQryAuxiliar.Close;                                                                                       //   subtotal*0.16
//  ADOQryAuxiliar.SQL.Clear;                                                                                                                  //  subtotal*1.16                      //  subtotal*1.16
//  ADOQryAuxiliar.SQL.Add('UPDATE CFDI SET Subtotal='+FloattoSTR(subtotal)+' , TotalImpuestoTrasladado='+FloatToSTR(IVACal)+', Total='+FloatToSTR(TotalCal) +', SaldoDocumento='+FloatToSTR(TotalCal)
//                          +', SaldoFactoraje='+FloatToSTR(TotalCal)+' where IDCFDI ='+IntToStr(idDocCFDI));
//  ADOQryAuxiliar.ExecSQL;
//  ADOQryAuxiliar.Close;
//  ADOQryAuxiliar.SQL.Clear;
//  ADOQryAuxiliar.SQL.Add('SElect * from  CFDIImpuestos where IDCFDI ='+IntToStr(idDocCFDI)
//                         +' and TipoImp=''Trasladado'' and Impuesto=''IVA''');
//  ADOQryAuxiliar.Open;
//  if not ADOQryAuxiliar.eof then//No existe
//    idImp:=ADOQryAuxiliar.FieldByName('IDCFDIImpuesto').AsInteger;
//    // Mar 31/16
//  if idImp=-1 then //No existe
//  begin
//    ADOQryAuxiliar.Close;
//    ADOQryAuxiliar.SQL.Clear;
//    ADOQryAuxiliar.SQL.Add('Insert into CFDIImpuestos (IDCFDI, TipoIMP,Impuesto, Tasa, Importe) VAlues('
//                          +IntToStr(idDocCFDI) +', ''Trasladado'', ''IVA'', 16, '+FloatToSTR(IVACal)+')');
//    ADOQryAuxiliar.ExecSQL;                                                                 //  subtotal*0.16 Ago 30 /16 ajustado
//  end
//  else
//  begin
//    ADOQryAuxiliar.Close;
//    ADOQryAuxiliar.SQL.Clear;
//    ADOQryAuxiliar.SQL.Add('UPDATE CFDIImpuestos SET Importe='+FloatToSTR(IVACal)   //subtotal*0.16
//                            +' where IDCFDIImpuesto ='+IntToStr(idImp));
//    ADOQryAuxiliar.ExecSQL;
//  end;  //Hasta aca
  AdoDSMaster.Refresh;
end;

procedure TdmFacturas.ADODtStCFDIConceptosAfterPost(DataSet: TDataSet);
var        //Este sólo debe usarse si sehace factura manual.. No para la que viene del proceso dela CXC
  IdCFDI: Integer;
  IdCFDIConcepto: Integer;
  Base: Double;
//  idImp:Integer;
//  Subtotal,IVACal,TotalCal:Double; //Agregado ago 25/16
//  Existe:Boolean;
begin
  inherited;
  if adodsMasterIdCuentaXCobrar.IsNull then  // ago 31/17 Por si se esta modificando el concepto al vuelo , solo esto aplica a las que no tienen CXC
  begin
    Showmessage('Se actualizarán totales e IVA para este comprobante'); //feb 7/17
//    idImp:=-1;
    IdCFDI := ADODtStCFDIConceptosIdCFDI.Value;
    IdCFDIConcepto := ADODtStCFDIConceptosIdCFDIConcepto.Value;
    Base := ADODtStCFDIConceptosImporte.AsFloat;
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
//    ADOQryAuxiliar.Close;
//    ADOQryAuxiliar.SQL.Clear;
//    ADOQryAuxiliar.SQL.Add('Select Sum(Importe) as ValorST From CFDIConceptos where IDCFDI='+intToStr(IdCFDI));
//    ADOQryAuxiliar.open;
//
//    Subtotal:= ADOQryAuxiliar.FieldByName('ValorST').AsFloat;
//
//    IVACal:= subtotal*0.16;
//    TotalCal:= Subtotal+IVACal; //subtotal*1.16 ;    //Ago 25/16
//
//    //Ver si va a ir decto?? Nov 29/16
//
//    ADOQryAuxiliar.Close;                                                                                       //   subtotal*0.16
//    ADOQryAuxiliar.SQL.Clear;                                                                                                                  //  subtotal*1.16                      //  subtotal*1.16
//    ADOQryAuxiliar.SQL.Add('UPDATE CFDI SET Subtotal='+FloattoSTR(subtotal)+' , TotalImpuestoTrasladado='+FloatToSTR(IVACal)+', Total='+FloatToSTR(TotalCal) +', SaldoDocumento='+FloatToSTR(TotalCal)
//                            +', SaldoFactoraje='+FloatToSTR(TotalCal)+' where IDCFDI ='+IntToStr(IdCFDI));
//                            //feb 9/17 Manual
//    ADOQryAuxiliar.ExecSQL;
//
//    //Acualizar impuestos si no tiene Impuestos //Mar 30/16
//    //Si existe actualizar si no existe crear en tabla de impuestos          //Ago 31/16
//
//    ADOQryAuxiliar.Close;
//    ADOQryAuxiliar.SQL.Clear;
//    ADOQryAuxiliar.SQL.Add('SElect * from  CFDIImpuestos where IDCFDI ='+IntToStr(IdCFDI)
//                           +' and TipoImp=''Trasladado'' and Impuesto=''IVA''');
//    ADOQryAuxiliar.Open;
//
//    if not ADOQryAuxiliar.eof then//No existe
//      idImp:=ADOQryAuxiliar.FieldByName('IDCFDIImpuesto').AsInteger;
//      // Mar 31/16
//    if idImp=-1 then //No existe
//    begin
//      ADOQryAuxiliar.Close;
//      ADOQryAuxiliar.SQL.Clear;
//      ADOQryAuxiliar.SQL.Add('Insert into CFDIImpuestos (IDCFDI, TipoIMP,Impuesto, Tasa, Importe) VAlues('
//                            +IntToStr(IdCFDI) +', ''Trasladado'', ''IVA'', 16, '+FloatToSTR(IVACal)+')');
//      ADOQryAuxiliar.ExecSQL;                                                                 //  subtotal*0.16 Ago 30 /16 ajustado
//    end
//    else
//    begin
//      ADOQryAuxiliar.Close;
//      ADOQryAuxiliar.SQL.Clear;
//      ADOQryAuxiliar.SQL.Add('UPDATE CFDIImpuestos SET Importe='+FloatToSTR(IVACal)   //subtotal*0.16
//                              +' where IDCFDIImpuesto ='+IntToStr(idImp));
//      ADOQryAuxiliar.ExecSQL;
//    end;  //Hasta aca
  end;
  RefreshCFDI; //jun 27/17
end;

procedure TdmFacturas.RefreshCFDI; //jun 27/17
var
  IdCFDI: Integer;
begin
    IdCFDI:= ADODtStCFDIConceptos.FieldByName('IdCFDI').AsInteger;
    ADODsmaster.Close;
    ADODsmaster.Open;
    ADODsmaster.Locate('IdCFDI', IdCFDI, []);
end;

procedure TdmFacturas.ADODtStCFDIConceptosBeforeDelete(DataSet: TDataSet);
begin
  inherited;
    adocDelConceptoImpuesto.Parameters.ParamByName('IdCFDIConcepto').Value := ADODtStCFDIConceptosIdCFDIConcepto.Value;
    adocDelConceptoImpuesto.Execute;
end;

procedure TdmFacturas.ADODtStCFDIConceptosBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if adodsMaster.State in [dsInsert,dsEdit] then
     adodsMaster.Post;
end;

procedure TdmFacturas.ADODtStCFDIConceptosNewRecord(DataSet: TDataSet);
begin
  inherited;
  ADODtStCFDIConceptosIdUnidadMedida.Value :=2; //NA
  ADODtStCFDIConceptosUnidad.AsString:='NA';
  ADODtStCFDIConceptosSATClaveUnidad.AsString:='XNA';
  ADODtStCFDIConceptosCantidad.AsFloat:=1;
  ADODtStCFDIConceptosDescuento.Value := 0;
end;

procedure TdmFacturas.ADODtStCFDIConceptosValorUnitarioChange(Sender: TField);
begin
  inherited;
  if (ADODtStCFDIConceptos.State in [dsEdit,dsInsert]) and (ADODtStCFDIConceptos.FieldByName('ValorUnitario').AsFloat <>0) and (ADODtStCFDIConceptos.FieldByName('Cantidad').AsFloat<>0) then
  begin                                      //Value Feb 19/17
    ADODtStCFDIConceptos.FieldByName('Importe').Value:=ADODtStCFDIConceptos.FieldByName('ValorUnitario').AsFloat* ADODtStCFDIConceptos.FieldByName('CAntidad').AsFloat;
  end;

end;

procedure TdmFacturas.ADODtStDireccionesClienteCalcFields(DataSet: TDataSet);
begin
  inherited;
  dataset.FieldByName('DirCompleta').AsString:= dataset.FieldByName('Municipio').AsString +', '+dataset.FieldByName('Estado').AsString+
                                                '. '+dataset.FieldByName('Calle').AsString+ dataset.FieldByName('NoExterior').AsString+
                                                ' '+dataset.FieldByName('Colonia').AsString +' '+ dataset.FieldByName('CodigoPostal').AsString;

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

function TdmFacturas.CargaXMLPDFaFS(Archivo, Describe: string): integer;
var
  FacturaXML : TFileName;
begin
  FacturaXML := Archivo;
  adodsDocumento.Open;
  adodsDocumento.Insert;
  adodsDocumentoIdDocumentoTipo.Value := 2;
  adodsDocumentoIdDocumentoClase.Value := 1;
  adodsDocumentoDescripcion.AsString := Describe;
  adodsDocumentoNombreArchivo.AsString := ExtractFileName(Archivo);
  SubirXMLPDFaFS(FacturaXML);
  adodsDocumento.Post;
  Result := adodsDocumentoIdDocumento.Value;
  adodsDocumento.Close;
end;

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
  IdCFDITipoDocumento: Integer);
begin
  FMuestra:=Muestra;
  FIdCFDITipoDocumento := IdCFDITipoDocumento;
  inherited Create(AOwner);
end;

procedure TdmFacturas.DataModuleCreate(Sender: TObject);
begin
  inherited;
  if ADODtStCFDIConceptos.CommandText <> EmptyStr then ADODtStCFDIConceptos.Open;
  gGridForm:= TfrmFacturasGrid.Create(Self);
  gGridForm.DataSet:= adodsMaster;
  case IdCFDITipoDocumento  of  //Jun 26/17
  1:  gGridForm.Caption:='Facturas';
  2:  gGridForm.Caption:='Notas de Crédito';
  end;
  TfrmFacturasGrid(gGridForm).DSQryAuxiliar.DataSet:=ADOQryAuxiliar;
  TfrmFacturasGrid(gGridForm).ChckBxFactVivas.Caption:= gGridForm.Caption+' con Saldo';
  TfrmFacturasGrid(gGridForm).TipoD := IdCFDITipoDocumento;
  TfrmFacturasGrid(gGridForm).actTimbrarCFDI := actTimbrarCFDI;  //Nov29/16
  TfrmFacturasGrid(gGridForm).actImprimirCFDI := actImprimirCFDI;  //Dic 15/16
  TfrmFacturasGrid(gGridForm).actCancelarCFDI := actCancelarCFDI;//Mar 23/17
//  TfrmFacturasGrid(gGridForm).VADODtStSelMetPago:=ADODtStSelMetPago; //Ago 31/17
//  TfrmFacturasGrid(gGridForm).VADODtStCFDIConceptos:=ADODtStCFDIConceptos; //Ago 31/17
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

procedure TdmFacturas.SetMuestra(const Value: Boolean);
begin
  FMuestra := Value;
end;

procedure TdmFacturas.SubirXMLPDFaFS(FileName: TFileName);
var
  Blob: TStream;
  Fs: TFileStream;
begin
  Blob:= adodsUpdate.CreateBlobStream(adodsDocumentoArchivo, bmWrite);
  try
    Blob.Seek(0, soFromBeginning);
    Fs := TFileStream.Create(FileName, fmOpenRead or fmShareDenyWrite);
    try
      Blob.CopyFrom(Fs, Fs.Size)
    finally
      Fs.Free
    end;
  finally
    Blob.Free
  end;
end;

function TdmFacturas.Timbrar(IdCFDI: Integer): Boolean;
var
  IdCuentaXCobrar: Integer;
  CFDICreado: Boolean;
  CreadaAntes: Boolean;
  CFDIVersion: string;

function ConfirmarGeneracion: Boolean; //Ago 31/17
var
  FrmDatosFacturaPrev: TFrmDatosFacturaPrev;
begin
   FrmDatosFacturaPrev:=TFrmDatosFacturaPrev.Create(self);
   try
     FrmDatosFacturaPrev.DSCFDIPrevio.DataSet:=adodsMaster;
     FrmDatosFacturaPrev.DSConceptosPrevios.DataSet:=ADODtStCFDIConceptos;
     FrmDAtosFActuraPrev.dsQryAuxiliar.DataSet:=ADOQryAuxiliar;
     FrmDAtosFActuraPrev.VADODtStSelMetPago:=ADODtStSelMetPago;
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
  Result := False; //En caso que estuvies etimbrada no debe entrar a la confirmación
  adodsMaster.Open; //por si no esta abierta   //Feb12/17
  IdCuentaXCobrar := adodsMasterIdCuentaXCobrar.Value;
  CFDICreado :=  adodsMaster.Locate('IDCFDI',IdCFDI,[]);  //SE ubica en el CFDI feb 8/
  CreadaAntes := adodsMasterIdCFDIEstatus.Value = 2;  // Vigente
  CFDIVersion := adodsMasterVersion.AsString;
//  and (IDGenTipoDoc=1)
  if CFDICreado and (not CreadaAntes) then
  begin
    if ConfirmarGeneracion then
    begin
      if CFDIVersion = '3.3' then
        Result:= Timbrar33(IdCFDI)
      else
        Result:= Timbrar32(IdCFDI);
      if Result then
        VerificaYCambiaEstatusCXC(IdCFDI, 1, 0);
//      if adodsMasterIdCFDIEstatus.Value = 2 then //Se timbro en este momento //Ago 31/17
//        Result:=True;
    end
    else
    begin
      ShowMessage('Canceló Timbrado de Factura');
    end;
  end;
end;

function TdmFacturas.Timbrar32(IdCFDI: Integer): Boolean;
const  //Copiado de sistema RH Dic 7/15
  _SEGUNDOS_A_RESTAR = -30;
var
  DocumentoComprobanteFiscal: TDocumentoComprobanteFiscal;
  Certificado: TFECertificado;
  Emisor, Receptor: TFEContribuyente;
  ImpuestoRet: TFEImpuestoRetenido;
  ImpuestoTras : TFEImpuestoTrasladado;
//  ImpuestoLocal: TFEImpuestoLocal;
  ConceptoActual : TFEConcepto;    // Dic 7/15 Se cambio  para que en el se coloque cada concepto y luiego se mande agregaer en un ciclo

  TimbreCFDI: VirtualXML.TTimbreCFDI;
  FileCertificado, FileKey : TFileName;
  Clave : String;
  Anio, Mes, Dia : Word;                         //Ene 27/17
  RutaBase, SubCarpeta, RutaFactura, RutaPDF, RutaIMG : String;
  XMLpdf : TdmodXMLtoPDF;
  Max, Avance, i ,
  IDPDF, IDXML, IDCBB: integer; //Sep 27/16 Para hacer proceso en dos partes
  Respuesta:String; //Sep 27/16

  FechaAux:TDAteTime;//Porque si se intento generar le mande la misma fecha original
  TipoDoc:String; //Mar 31/16 para enviar como parametro
  IdCFDIAuxiliar:integer; //Oct 27/16 para verificar que este en el mismo , idOrdenSalAux se quito nov 28/16
  Contrato:String; //Para mañarina dic 7/16

  Continuar:Boolean; //Ene27/17 para proceso alterno facturacion
  AuxTxt:String;
begin
  Result:= False;
  AuxTxt:='';
  //Habilitado Dic 21/15
  ShowProgress(10,100.1,'Preparando Datos para Generar CFDI ' + IntToStr(10) + '%');  //Jun 2/16
  XMLpdf := TdmodXMLtoPDF.Create(Self);
  XMLpdf.FileRTM:= ExtractFilePath(Application.ExeName) + 'CFDIManarina.rtm'; //Cambiado Nov 29/16
  XMLpdf.FileXTR:= ExtractFilePath(Application.ExeName) + 'Transfor32.xtr';
   //Habilitado Dic 21/15 hasta aca
  //verificar si no se intento generar antes
  FechaAux:=IncSecond(Now, _SEGUNDOS_A_RESTAR);
                                      //Prefactura
  if adodsMasterIdCFDIEstatus.AsInteger =1 then
  begin
    //Poner Folio Serie
    if adodsMasterFolio.AsInteger=0 then
    begin
      ADODtStBuscaFolioSerie.Close;
      ADODtStBuscaFolioSerie.Parameters.ParamByName('IdCFDITipoDocumento').Value:= adodsMasterIdCFDITipoDocumento.AsInteger; //Asegurarse que tenga valor
      ADODtStBuscaFolioSerie.Open;
                                                                                  //Mantiene el valor del siguiente a generar Nov 29/16
      if (not ADODtStBuscaFolioSerie.eof) and (ADODtStBuscaFolioSerie.FieldByName('FolioDoc').AsInteger >0)then
      begin
        adodsMaster.Edit;
        adodsMasterFecha.AsDateTime:=FechaAux;
        adodsMasterFolio.AsInteger:= ADODtStBuscaFolioSerie.FieldByName('FolioDoc').AsInteger;
        adodsMasterSerie.AsString:= ADODtStBuscaFolioSerie.FieldByName('SerieDoc').AsString;
        adodsMaster.Post;

        ADODtStBuscaFolioSerie.Edit;
        ADODtStBuscaFolioSerie.FieldByName('FolioDoc').AsInteger:= ADODtStBuscaFolioSerie.FieldByName('FolioDoc').AsInteger+1;
        ADODtStBuscaFolioSerie.Post;
      end
      else //Verificar si se debe hacer algun ajuste antes de generar!!
      begin //dic 29/15
        Showmessage('Se generara sin serie ,ni folio ');
        adodsMaster.Edit;
        adodsMasterFecha.AsDateTime:=FechaAux;
        adodsMaster.Post;

      end;
    end
    else //Dic 29/15 ya se intento pero no se genero
    begin
      if FechaAux-adodsMasterFecha.AsDateTime >3 then
      begin
        adodsMaster.Edit;
        adodsMasterFecha.AsDateTime:=FechaAux;
        adodsMaster.Post
      end
      else
        FechaAux:=adodsMasterFecha.AsDateTime; //Para que use esa con los datos que tiene
    end;
   // ScreenCursorProc(-11);  //Deshabilitado Dic 29/15
    DecodeDate(Now, Anio, Mes, Dia);
    ShowProgress(20,100.1,'Preparando Datos para Generar CFDI ' + IntToStr(20) + '%');  //Jun 2/16
    adodsArchivosCerKey.Close;

    ADODtStPersonaEmisor.Close;
    ADODtStPersonaReceptor.Close;
    // Verificar si se require esto... o borrar  adodsEmisor.Parameters.ParamByName('IdPersona').Value := adodsMaster.FieldByName('IdPersona').Value;
    // adodsReceptor.Parameters.ParamByName('IdPersona').Value := adodsMaster.FieldByName('IdPersonaRelacionada').Value;
     adodsArchivosCerKey.Parameters.ParamByName('IdPersona').Value := adodsMaster.FieldByName('IdPersonaEmisor').asInteger;
    // adodsKey.Parameters.ParamByName('IdPersona').Value := adodsMaster.FieldByName('IdPersona').Value;
    adodsArchivosCerKey.Open;
    ADODtStPersonaEmisor.Open;
    ADODtStPersonaReceptor.Open;

    RutaBase:=dmConfiguracion.RutaFacturas;//ExtractFilePath(application.ExeName); //CAmbiado SEp 27/17
    if RutaBase='' then
       RutaBase:=ExtractFilePath(application.ExeName);    // SEp 27/17

    SubCarpeta := '\' + UpperCase(System.SysUtils.FormatSettings.ShortMonthNames[MonthOfTheYear(Now)]) + IntToStr(Anio) + '\';
    Esproduccion:=FileExists(ExtractFilePath(application.ExeName)+'EnProduccion.txt'); //Temporal Dic 8/15 //Modificado sep 27/17
    DocumentoComprobanteFiscal:= TDocumentoComprobanteFiscal.Create;

    TipoDoc:=adodsMaster.FieldByName('TipoDocumento').asString; //Mar 31/16
    ShowProgress(30,100.1,'Extrayendo datos de Emisor ' + IntToStr(30) + '%');  //Jun 2/16
    try
        Emisor.RFC                    := TFERFC(ADODtStPersonaEmisorRFC.AsString);
        Emisor.Nombre                 := ADODtStPersonaEmisorRazonSocial.AsString;
        Emisor.Direccion.Calle        := ADODtStPersonaEmisorCalle.AsString;
        Emisor.Direccion.NoExterior   := ADODtStPersonaEmisorNoExterior.AsString;
        Emisor.Direccion.NoInterior   := ADODtStPersonaEmisorNoInterior.AsString;
        Emisor.Direccion.CodigoPostal := ADODtStPersonaEmisorCodigoPostal.AsString;
        Emisor.Direccion.Colonia      := ADODtStPersonaEmisorColonia.AsString;
        Emisor.Direccion.Municipio    := ADODtStPersonaEmisorMunicipio.AsString;
        Emisor.Direccion.Estado       := ADODtStPersonaEmisorEstado.AsString;
        Emisor.Direccion.Pais         := ADODtStPersonaEmisorPais.AsString;
        Emisor.Direccion.Localidad    := ADODtStPersonaEmisorPoblacion.AsString;
         // 2. Agregamos los régimenes fiscales (requerido en CFD >= 2.2)
        SetLength(Emisor.Regimenes, 1);
        Emisor.Regimenes[0] := ADODtStPersonaEmisorRegimenFiscalEmisor.AsString;
        // Asignamos los valores iguales a la direcion del emisor suponiendo que se genera en el mismo lugar que se emitio
        // Se debe verificar antes de colocar el expedido. ya que sólo debe hacerse para cuando son diferentes
   (*     Emisor.ExpedidoEn.Calle        := Emisor.Direccion.Calle;
        Emisor.ExpedidoEn.NoExterior   := Emisor.Direccion.NoExterior;
        Emisor.ExpedidoEn.NoInterior   := Emisor.Direccion.NoInterior;
        Emisor.ExpedidoEn.CodigoPostal := Emisor.Direccion.CodigoPostal;
        Emisor.ExpedidoEn.Colonia      := Emisor.Direccion.Colonia;
        Emisor.ExpedidoEn.Municipio    := Emisor.Direccion.Municipio;
        Emisor.ExpedidoEn.Estado       := Emisor.Direccion.Estado;
        Emisor.ExpedidoEn.Pais         := Emisor.Direccion.Pais;
        Emisor.ExpedidoEn.Localidad    := Emisor.Direccion.Localidad;
        Emisor.ExpedidoEn.Referencia   := Emisor.Direccion.Referencia;    *)

        ShowProgress(40,100.1,'Extrayendo datos de Receptor ' + IntToStr(40) + '%');  //Jun 2/16
        Receptor.RFC := TFERFC(ADODtStPersonaReceptorRFC.AsString);
        Receptor.Nombre := ADODtStPersonaReceptorRazonSocial.AsString;
            //Por si no tiene registro de direccion Ene 29/17
        if (not ADODtStPersonaReceptor.Eof)and(ADODtStPersonaReceptorCalle.AsString<>'')and (ADODtStPersonaReceptorPais.AsString<>'')then
        begin
          Receptor.Direccion.Calle:=ADODtStPersonaReceptorCalle.AsString;
          Receptor.Direccion.NoExterior:=ADODtStPersonaReceptorNoExterior.AsString;
          Receptor.Direccion.NoInterior:=ADODtStPersonaReceptorNoInterior.AsString;
          Receptor.Direccion.CodigoPostal:=ADODtStPersonaReceptorCodigoPostal.AsString;
          Receptor.Direccion.Colonia:=ADODtStPersonaReceptorColonia.AsString;
          Receptor.Direccion.Municipio:=ADODtStPersonaReceptorMunicipio.AsString;
          Receptor.Direccion.Estado:=ADODtStPersonaReceptorEstado.AsString;
          Receptor.Direccion.Pais :=ADODtStPersonaReceptorPais.AsString;
          Receptor.Direccion.Localidad:=ADODtStPersonaReceptorPoblacion.AsString;
        end;


        FileCertificado := ExtractFilePath(application.ExeName)+ adodsArchivosCerKeyNomCert.AsString;
        FileKey := ExtractFilePath(application.ExeName)+  adodsArchivosCerKeyNomKey.AsString;  //  TPath.GetTempPath +
        ReadFileCERKEY(FileCertificado,FileKey);

        Clave := adodsArchivosCerKeyClave.AsString;

        Certificado.Ruta := FileCertificado;
        Certificado.LlavePrivada.Ruta := FileKey;
        Certificado.LlavePrivada.Clave := Clave;

        DocumentoComprobanteFiscal.Folio:= adodsMasterFolio.AsInteger; //Dic 9/15
        DocumentoComprobanteFiscal.Serie:= adodsMasterSerie.AsString;  //Dic 9/15

        DocumentoComprobanteFiscal.Emisor := Emisor;
        DocumentoComprobanteFiscal.Receptor := Receptor;
                                                          //Se cambio mar 31/16
        DocumentoComprobanteFiscal.TipoCompTexto := adodsMasterTipoComp.AsString; //verificar que venga

        DocumentoComprobanteFiscal.FechaGeneracion := FechaAux; //Para evitar  dobles generaciones

        DocumentoComprobanteFiscal.MetodoDePago := adodsMasterMetPagoClaveSAT.AsString; //Jun 27/16  adodsMasterMetodoPago.AsString;
        if adodsMasterNumCtaPago.AsString <>''then
          DocumentoComprobanteFiscal.NumeroDeCuenta:= adodsMasterNumCtaPago.AsString;
        // Asignamos el lugar de expedición (requerido en  CFD >= 2.2)
        DocumentoComprobanteFiscal.LugarDeExpedicion := ADODtStPersonaEmisorMunicipio.AsString+ ', ' + ADODtStPersonaEmisorEstado.AsString;
        //adodsEmisorPoblacion.AsString ;

    //Llevaba ceros..
        DocumentoComprobanteFiscal.Moneda:= adodsMasterClaveMoneda.AsString;//Jun 27/16
        DocumentoComprobanteFiscal.TipoCambio:= (adodsMasterTipoCambio.AsFloat);//Jun 27/16

        // Definimos todos los conceptos que incluyo la factura
        ShowProgress(50,100.1,'Extrayendo datos de conceptos ' + IntToStr(50) + '%');  //Jun 2/16

        ADODtStCFDIConceptos.First;
        while not ADODtStCFDIConceptos.Eof do
        begin
          ConceptoActual.Cantidad := ADODtStCFDIConceptosCantidad.AsFloat;
          ConceptoActual.Unidad := ADODtStCFDIConceptosUnidad.AsString;  //Verificar contenido
          ConceptoActual.Descripcion := ADODtStCFDIConceptosDescripcion.AsString;

          ConceptoActual.ValorUnitario := ADODtStCFDIConceptosValorUnitario.AsFloat;
          ConceptoActual.NoIdentificacion := ADODtStCFDIConceptosNoIdentifica.asstring;
//        ConceptoActual.CuentaPredial := ADOdsConceptocdsCuentaPredial.Value;
          DocumentoComprobanteFiscal.AgregarConcepto(ConceptoActual);
          ADODtStCFDIConceptos.Next;
        end;
        ADODtStCFDIImpuestos.Close;
        ADODtStCFDIImpuestos.Open;  //Verificar que este ubicado

       // ADODtStCFDIImpuestos.First;
        while not ADODtStCFDIImpuestos.Eof do
        begin
          if ADODtStCFDIImpuestosTipoImp.AsString='Trasladado' then //Verificar que se coloque
          begin
            Impuestotras.Nombre := ADODtStCFDIImpuestosImpuesto.AsString;
            Impuestotras.Tasa := ADODtStCFDIImpuestosTasa.AsFloat;
            Impuestotras.Importe := ADODtStCFDIImpuestosImporte.AsFloat;
            DocumentoComprobanteFiscal.AgregarImpuestoTrasladado(Impuestotras);
          end
          else
          begin
            ImpuestoRet.Nombre := ADODtStCFDIImpuestosImpuesto.AsString;
            ImpuestoRet.Importe := ADODtStCFDIImpuestosImporte.AsFloat;
            DocumentoComprobanteFiscal.AgregarImpuestoRetenido(ImpuestoRet);
          end;
          ADODtStCFDIImpuestos.Next;
        end;
        RutaFactura := RutaBase + ADODtStPersonaEmisorRFC.AsString + SubCarpeta;
        if not DirectoryExists (RutaFactura) then
           ForceDirectories(RutaFactura);
        if  DirectoryExists (RutaFactura) then
        begin
          ShowProgress(60,100.1,'Timbrando  CFDI .... ' + IntToStr(60) + '%');  //Jun 2/16
        (*  if not esProduccion then
          begin
            Continuar:=CrearArchivos_TimbrePrueba(RutaFactura,TimbreCFDI,adodsMasterSerie.asstring + adodsMasterFolio.asString + feXML);
            RutaPDF:=ChangeFileExt(RutaFactura, fePDF);
            RutaIMG:= ChangeFileExt(RutaFactura, fePNG);
            AuxTxt:='Proceso Alterno ';
          end
          else  // deshabilitado para usar  la del  2017 Abr 6/17*)
          Continuar:=GenerarCFDI(RutaFactura, DocumentoComprobanteFiscal, Certificado, TimbreCFDI, EsProduccion);
          if Continuar then
          begin
            XMLpdf.FileIMG := RutaFactura + fePNG; //Dic 21/15
            XMLpdf.CadenaOriginalTimbre:= TimbreCFDI.CadenaTimbre; //Dic 28/15                  tenia nov 28/16  adodsMasterIdentificadorCte.AsString
            Contrato:=Informacioncontrato(adodsMasterIdCuentaXCobrar.Value); //Dic 7/16 //verificar  que pasa si la FActura no tiene CXC??
            RutaPDF := XMLpdf.GeneratePDFFile(RutaFactura,TipoDoc,Contrato,''); //Dic 21/15  //verificar si sirve ese Formato
            //Actualizar datos de Timbre en CFDI         //Mar 31/16              //Ago 26/16
            adodsMaster.Edit;
            adodsMasterUUID_TB.AsString:=  TimbreCFDI.UUID;
            adodsMasterSelloCFD_TB.AsString:=TimbreCFDI.SelloEmisor;// 26 ago se regreso como estaba Cadenatimbre; XImpresion // ajustado ago 24/16 era SelloEmisor;
            adodsMasterSelloSAT_TB.AsString:=TimbreCFDI.SelloSAT;
            adodsMasterSello.AsString:=TimbreCFDI.SelloEmisor; //Verificar
            adodsMasterCertificadoSAT_TB.AsString:=   TimbreCFDI.NoCertificadoSAT;
            adodsMasterFechaTimbrado_TB.AsDateTime:=ConvierteFechaT_DT(TimbreCFDI.FechaTimbre);
            adodsMasterCadenaOriginal.AsString:= TimbreCFDI.CadenaTimbre;// 26 ago se regreso como estaba//Cadenaoriginal;//CadenaTimbre ;Ago 24/16  // Dic 23/15
            adodsMasterIdCFDIEstatus.AsInteger:=2; //Dic 29/15
            IdCFDIAuxiliar:= adodsMasterIdCFDI.AsInteger;// Oct 27/16
            adodsMaster.Post; //Se puso esto primero  y luego se asocia el resto

            adodsMaster.Edit;
            IDXML := CargaXMLPDFaFS(RutaFactura,TipoDoc + String(DocumentoComprobanteFiscal.Serie) + IntToStr(DocumentoComprobanteFiscal.Folio));
            IDPDF:=  CargaXMLPDFaFS(RutaPDF, TipoDoc+ String(DocumentoComprobanteFiscal.Serie) + IntToStr(DocumentoComprobanteFiscal.Folio));
            IDCBB:=  CargaXMLPDFaFS(XMLpdf.FileIMG,'PNG '+TipoDoc + String(DocumentoComprobanteFiscal.Serie) + IntToStr(DocumentoComprobanteFiscal.Folio));//Ene 5/2016
            Respuesta:='';
            if VerificaArchivo(IDXML,ExtractFileName(RutaFactura), Respuesta) then     //REspuesta debe concatenar las respuestas si no va vacia //Sep 27/16
              adodsMasterIdDocumentoXML.Value :=IDXML ;
            if VerificaArchivo(IDPDF,ExtractFileName(RutaPDF), Respuesta) then
              adodsMasterIdDocumentoPDF.Value :=IDPDF;
            if  VerificaArchivo(IDCBB, ExtractFileName(XMLpdf.FileIMG), Respuesta) then
               adodsMasterIdDocumentoCBB.Value := IDCBB;
            adodsMaster.Post;
            ShowProgress(80,100.1,'Actualizando Datos Cliente ' +AuxTxt+ IntToStr(80) + '%');  //Jun 2/16

            if IdCFDIAuxiliar <> adodsMasterIdCFDI.value then    //oct 26/16
               Respuesta:=Respuesta+AuxTxt+'R'+intToStr(IdCFDIAuxiliar)+' CFDI C'+ intTostr(adodsMasterIdCFDI.value);
//          //  Actualiza Saldos  Mar 1/16
//              ActualizaSaldoCliente(adodsMasterIdCFDI.value,adodsMasterIdPersonaReceptor.Value,adodsMasterIdClienteDomicilio.value, adodsMasterTotal.Value,'+ ');
            ShowProgress(100,100.1,'Procesando PDF '+ AuxTxt + IntToStr(100) + '%');  //Jun 2/16
            ShowProgress(100,100);
            if Respuesta <>'' then //Por los archivos Sep 27/16
               showMessage('Advertencias de asociacion archivos...'+ Respuesta);
           (* if not EsProduccion then
              showMessage('Proceso Alterno de Facturación Terminado '+adodsMasterSerie.asstring+'-'+ adodsMasterFolio.asstring)
            else   // deshabilitado para usar  la del  2017 Abr 6/17 *)
              if FileExists(RutaPDF) then
                ShellExecute(application.Handle, 'open', PChar(RutaPDF), nil, nil, SW_SHOWNORMAL);     //VErificar el FRM Edit
       //     ActEnvioCorreoFact.Execute; //verificar  Abr5/16
            //ShowMessage('Envio a Cliente por Correo Electronico en proceso');
            if (StrToint(TimbreCFDI.TimbresRestantes) <100) then
               Showmessage(' Timbres Restantes : '+TimbreCFDI.TimbresRestantes);   //Oct 16/17
            Result:= True;
          end
          else
          begin
            Showmessage('Error Generando CFDI '+AuxTxt+TimbreCFDI.MensajeError);//Dic 29/15
            ShowProgress(100,100.1,'Proceso Terminado con errores ' +AuxTxt + IntToStr(100) + '%');  //Jun 16/16
            ShowProgress(100,100); //Jun 16/16
          end
        end
        else
          application.MessageBox('No se pudo Crear el directorio. Verifique permisos', 'Error', MB_Ok);
      finally

    end;
  end
  else
    Showmessage('CFDI generado con anterioridad');
end;

function TdmFacturas.Timbrar33(IdCFDI: Integer): Boolean;
var
  facturaCFDIv33 : IComprobanteFiscalV33;
  concepto33 : IComprobanteFiscalV33_Conceptos_Concepto;
  iva33 : IComprobanteFiscalV33_Conceptos_Concepto_Impuestos_Traslados_Traslado;
  totalIVA33 : IComprobanteFiscalV33_Impuestos_Traslados_Traslado;
  rutaCertificado, rutaLlavePrivada, claveLlavePrivada: string;
  TimbreCFDI: VirtualXML33.TTimbreCFDI;
  RutaFactura: string;
  ArchivoPDF: string;
  ArchivoCBB: string;
  TipoDocumento: string;
  IdDocumentoXML: Integer;
  IdDocumentoCBB: Integer;
  IdDocumentoPDF: Integer;
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
      facturaCFDIv33.Serie     := adoqCFDISerie.AsString;
      facturaCFDIv33.Folio     := adoqCFDIFolio.AsString;
      facturaCFDIv33.Fecha     := TFacturacionHelper.ComoFechaISO8601(adoqCFDIFecha.Value);
      facturaCFDIv33.CondicionesDePago :=adoqCFDICondPago.AsString;
      facturaCFDIv33.FormaPago         := adoqCFDIFormaPago33.AsString;
      facturaCFDIv33.MetodoPago        := adoqCFDIMetodoPago33.AsString;
      facturaCFDIv33.Subtotal          := TFacturacionHelper.ComoMoneda(adoqCFDISubTotal.Value);
      facturaCFDIv33.Descuento         := TFacturacionHelper.ComoMoneda(adoqCFDIDescto.Value);
      facturaCFDIv33.Moneda            := adoqCFDIMoneda.AsString;
      facturaCFDIv33.TipoCambio        := adoqCFDITipoCambio.AsString;
      facturaCFDIv33.Total             := TFacturacionHelper.ComoMoneda(adoqCFDITotal.AsExtended);
      facturaCFDIv33.TipoDeComprobante := adoqCFDITipoComp.AsString;
//      ShowProgress(30,100,'Extrayendo datos de Emisor ' + IntToStr(30) + '%');
      facturaCFDIv33.LugarExpedicion   := adoqCFDILugarExpedicion.AsString;
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
      facturaCFDIv33.Receptor.UsoCFDI     := adoqCFDIUsoCFDI.AsString;
      facturaCFDIv33.Impuestos.TotalImpuestosTrasladados  := TFacturacionHelper.ComoMoneda(adoqCFDITotalImpuestoTrasladado.AsExtended );
//      ShowProgress(50,100.1,'Extrayendo datos de conceptos ' + IntToStr(50) + '%');  //Jun 2/16
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
      GetCSD(adoqCFDIIdPersonaEmisor.Value);
      RutaFactura := GetRutaFactura(adoqCFDIEmisorRFC.Value);
      if not DirectoryExists (RutaFactura) then
         ForceDirectories(RutaFactura);
      if  DirectoryExists (RutaFactura) then
      begin
        ShowProgress(60,100,'Timbrando CFDI ' + IntToStr(60) + '%');
        if GenerarCFDI33(Virtualxml33.tcIngreso, facturaCFDIv33, rutaCertificado,
        rutaLlavePrivada, claveLlavePrivada,RutaFactura,TimbreCFDI, Esproduccion) then
        begin
          SetCFDITimbre(IdCFDI);
          TipoDocumento:= adoqCFDITipoDocumento.AsString;
          ArchivoCBB:= TimbreCFDI.NombreArchivo + fePNG;
          ArchivoPDF:= ChangeFileExt(TimbreCFDI.NombreArchivo, fePDF);
          ShowProgress(80,100,'Generando PDF ' + IntToStr(80) + '%');
          GenerarPDF(IdCFDI, ArchivoPDF, ArchivoCBB);
          ShowProgress(90,100,'Almacenando archivos ' + IntToStr(90) + '%');
          IdDocumentoXML := CargaXMLPDFaFS(TimbreCFDI.NombreArchivo, TipoDocumento + String(facturaCFDIv33.Serie) + facturaCFDIv33.Folio);
          IdDocumentoPDF:=  CargaXMLPDFaFS(ArchivoPDF, TipoDocumento + String(facturaCFDIv33.Serie) + facturaCFDIv33.Folio);
          IdDocumentoCBB:=  CargaXMLPDFaFS(ArchivoCBB,'PNG '+ TipoDocumento + String(facturaCFDIv33.Serie) + facturaCFDIv33.Folio);
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

function TdmFacturas.VerificaArchivo(var IDArchivo: Integer; Archivo: String;
  var Respuesta: String): Boolean;
begin
result:=False;
  if idArchivo <>0 then
  begin
    AdodsAuxiliar.Close;
    AdodsAuxiliar.CommandText :='Select * from Documentos where IdDocumento='+ intToStr(IDArchivo);
    AdodsAuxiliar.open;
    if AdodsAuxiliar.eof then
    begin
      Respuesta :=Respuesta+' ID no encontrado('+intTostr(IDArchivo)+') '+Archivo;
      AdodsAuxiliar.Close;
      AdodsAuxiliar.CommandText :='Select * from Documentos where NombreArchivo='''+ Archivo+'''';
      AdodsAuxiliar.open;
      if not AdodsAuxiliar.eof then
      begin
        IDArchivo:=  AdodsAuxiliar.fieldbyname('IDDocumento').AsInteger;
        result:=true;
      end;
    end
    else  //Si encontró el id
    begin
      if AdodsAuxiliar.fieldbyname('NombreArchivo').AsString<>Archivo then
        Respuesta :=Respuesta+' Nombres diferentes G:'+AdodsAuxiliar.fieldbyname('NombreArchivo').AsString +' B:'+Archivo;
      result:=true;
      //Se asocia ID
    end;

  end
  else
  begin
    Respuesta :=Respuesta+' ID (0) '+Archivo;
    AdodsAuxiliar.Close;
    AdodsAuxiliar.CommandText :='Select * from Documentos where NombreArchivo='''+ Archivo+'''';
    AdodsAuxiliar.open;
    if not AdodsAuxiliar.eof then
    begin
      IDArchivo:=  AdodsAuxiliar.fieldbyname('IDDocumento').AsInteger;
      result:=true;
    end
    else
      Respuesta :=Respuesta+' No encontro nombre: '+ Archivo;  //Va falso y no se pone
  end;
end;

end.
