unit PagosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, System.Actions,
  Vcl.ActnList,Data.Win.ADODB, math, dialogs;

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
    ADODtStCxCDetallePend_anterior: TADODataSet;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    FMTBCDField7: TFMTBCDField;
    FMTBCDField8: TFMTBCDField;
    AutoIncField2: TAutoIncField;
    AutoIncField3: TAutoIncField;
    LargeintField1: TLargeintField;
    LargeintField2: TLargeintField;
    FMTBCDField9: TFMTBCDField;
    IntegerField8: TIntegerField;
    StringField3: TStringField;
    IntegerField9: TIntegerField;
    IntegerField10: TIntegerField;
    LargeintField3: TLargeintField;
    AutoIncField4: TAutoIncField;
    FMTBCDField10: TFMTBCDField;
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
    adopSetCXCMoratorio: TADOStoredProc;
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
    CXCMoratoriosParaFacturar: TADODataSet;
    CXCMoratoriosParaFacturarIdCuentaXCobrar: TIntegerField;
    CXCMoratoriosParaFacturarIdCuentaXCobrarTipo: TIntegerField;
    CXCMoratoriosParaFacturarIdentificador: TStringField;
    CXCMoratoriosParaFacturarDescripcion: TStringField;
    CXCMoratoriosParaFacturarImporte: TFMTBCDField;
    CXCMoratoriosParaFacturarSaldo: TFMTBCDField;
    CXCMoratoriosParaFacturarFacturar: TBooleanField;
    CXCMoratoriosParaFacturarIdTipoContrato: TIntegerField;
    CXCMoratoriosParaFacturarEsIVA: TBooleanField;
    CXCMoratoriosParaFacturarTemporalidad: TStringField;
    CXCMoratoriosParaFacturarIdCuentaXCobrarDetalle: TAutoIncField;
    CXCMoratoriosParaFacturarEsMoratorios: TBooleanField;
    ActGeneraPrefMoratorios: TAction;
    ADOSumaIVAMora: TADODataSet;
    ADODtStCXCPendientesIdCFDINormal: TLargeintField;
    ADODtStCXCPendientesSaldoDocumento: TFMTBCDField;
    ADODtStCXCPendientesSaldoFactorajeCFDI: TFMTBCDField;
    CXCMoratoriosParaFacturarPagosAplicados: TFMTBCDField;
    CXCMoratoriosParaFacturarSaldoPendiente: TFMTBCDField;
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
  private
    { Private declarations }
    Inserto:Boolean;
    FFacturando: boolean;
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
    function EncuentraFacturaconSaldo(var IdEstado: Integer; idcxc: Integer;
      Valor: Double): Boolean;
  public
    { Public declarations }
    Property Facturando:boolean read FFacturando write FFacturando; //Feb 8/17
  end;

var
  dmPagos: TdmPagos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses PagosForm, FacturasDM, _ConectionDmod;

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
procedure TdmPagos.adodsMasterBeforePost(DataSet: TDataSet);
begin
  inherited;
  Inserto:=dataset.state=dsInsert;
  if dataset.State = dsInsert then
  begin
    adodsMaster.FieldByName('Saldo').AsFloat:=adodsMaster.FieldByName('Importe').AsFloat;
  end;
end;

procedure TdmPagos.adodsMasterNewRecord(DataSet: TDataSet);
var SErieAct:String;
    FolioAct:Integer;
begin  //Pagos
  inherited;

  DataSet.FieldByName('FechaPago').AsDateTime:=Now;
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
//VErificar si optimizando se comporta igual Ene 16/17
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
    ADODtStPagosAuxiliarImporte.AsFloat:=DataSet.FieldByName('IMPORTE').AsFloat;


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
  ADOQryAuxiliar.SQL.Clear;                                                                                                                  //  subtotal*1.16                      //  subtotal*1.16
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
  DataSet.FieldByName('Fecha').AsDateTime:=now; //Se supondría que se van a generar inmediatamente pero hay que verificar(por si se requiere cambio de fecha antes de generar)
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

procedure TdmPagos.ActGeneraPrefMoratoriosExecute(Sender: TObject);
var
  idCFDIMora:Integer;
  CFDIcreado:Boolean;
  Estado:Integer;//Feb 13/17
begin
  inherited;
  idCFDIMora:=-1;
  CXCMoratoriosParaFacturar.Open;

  if CXCMoratoriosParaFacturar.eof then
  begin
   // ShowMessage('No existen moratorios para Facturar')  //No deberia estar habilitado en cualquiera
  end
  else
  begin
   ////Feb 13/17
   if Not EncuentraFacturaconSaldo(Estado,CXCMoratoriosParaFacturar.FieldByName('IdCuentaXCobrar').AsInteger, CXCMoratoriosParaFacturar.FieldByName('SaldoPendiente').AsFloat)  then
   begin
    //En principio individual de la actual si esta precargada.., luego filtrar las prcargadas  hacer ciclo
    //Crear encabezado con datos de cliente
    //Recorrer Detalles para crearconceptos según datos
    ADODtStPrefacturasCFDI.open;
    ADODtStCFDIConceptosPref.open;
    ADODtStPrefacturasCFDI.Insert; //ver que va en el evento..
    ADODtStPrefacturasCFDI.Post;
    idCFDIMora:=  ADODtStPrefacturasCFDIIdCFDI.AsInteger; //FEb 8/17
    CXCMoratoriosParaFacturar.First;

    while not CXCMoratoriosParaFacturar.Eof do
    begin   //ya esta filtrado por moratorios
      ADODtStCFDIConceptosPref.Insert;
      ADODtStCFDIConceptosPrefDescripcion.AsString:= CXCMoratoriosParaFacturar.fieldbyname('Descripcion').asString;
      ADODtStCFDIConceptosPrefIdCuentaXCobrarDetalle.AsInteger:=CXCMoratoriosParaFacturar.fieldbyname('IDCuentaXCobrarDEtalle').AsInteger;  //Sin a Dic 7/16
      ADODtStCFDIConceptosPrefValorUnitario.AsFloat:= CXCMoratoriosParaFacturar.fieldbyname('SaldoPendiente').asFloat;  // feb 13/17 Se cambio por el SaldoPendiente que es la resta de importe y pagoAplicado  ya que si habia anteriores pagados el importe es diferente

      ADODtStCFDIConceptosPrefImporte.AsFloat:= CXCMoratoriosParaFacturar.fieldbyname('SaldoPendiente').AsFloat;  // feb 13/17 Se cambio por el SaldoPendiente  ya que si habia anteriores pagados el importe es diferente

      ADODtStCFDIConceptosPref.Post;

      CXCMoratoriosParaFacturar.Next;   //DEbe ser sólo uno
    end;
   end;

{
    //VErificar si se hace algo en CXC
    adodsmaster.Edit;
    adodsmaster.FieldByName('IdCuentaXCobrarEstatus').AsInteger:=0; //CAmbia a pendiente
    adodsmaster.post;}
    //ShowMessage('Prefactura generada'); ver si se genera directo
    //&Verificar ivas..
    //FActurar??           //Sin timbrar feb 13/17
     if (idCFDIMora<>-1) or (Estado=0) then //Creo prefactura de moratorios feb 8/17
    begin
      Facturar(idCFDIMora , CFDIcreado , 1); //Crea factura
      if CFDICreado then
        Showmessage('Se  creo factura de moratorios');//Feb 12/17 //Mostrar??
    end;
  end;

end;


function TdmPagos.EncuentraFacturaconSaldo (var IdEstado:Integer; idcxc:Integer; Valor:Double):Boolean; //Feb 13/17
begin
  IDEstado:=-1;
  AdoQryAuxiliar.Close;
  AdoQryAuxiliar.SQL.Clear;                                                                                                                 //Verificar si asi
  AdoQryAuxiliar.SQL.Add('Select * from CFDI where IDCuentaXCobrar= '+intToSTR(IdCXC)+' and Subtotal= '+FloatToStr(valor)+' and SaldoDocumento>0.0001');
  AdoQryAuxiliar.open;
  Result:= not AdoQryAuxiliar.EOF;
  if not AdoQryAuxiliar.EOF then  //Existe
     IdEstado:= AdoQryAuxiliar.FieldByName('IDCFDIEstatus').asInteger;
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
begin                  //Veridficar si se deja para sólo FActuras...
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
  //FActoraje sólo filtrar FActurado//FEb
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

  //Verificar si son todas orden 0 o únicas y repartir parejo //Ene 31/17
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

          if (porcentaje <1) and (valReg>valor) then  //Ajustar para aplicar lo que queda.. aca  debe ser sólo capital..
             ValReg:=Valor;

          if (valreg<=valor) and (valreg<>0)then  //Dic 13/16 para que no aplique 0
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
           if (porcentaje <1) and (valReg>valor) then  //Ajustar para aplicar lo que queda.. aca  debe ser sólo capital..
             ValReg:=Valor;
                              //Feb 12/17  par evitar que aplique 0??
          if (valreg<=valor) { and (ValReg >0)}then
          begin
             //Aplicar interno el valor dferegistro y restar
            ADODtstAplicacionesInternas.Insert;
            ADODtstAplicacionesInternas.FieldByName('IDCuentaXCobrarDetalle').AsInteger:=ADODtStCxCDetallePendIdCuentaXCobrarDetalle.AsInteger;
                                                    // 'Importe' Ene 13/16
            ADODtstAplicacionesInternas.FieldByName(campoimporte).AsFloat:=valreg;
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

          if valreg<=valor then //O diferencias minimas
          begin
             //Aplicar interno el valor de registro y restar
            ADODtstAplicacionesInternas.Insert;
            ADODtstAplicacionesInternas.FieldByName('IDCuentaXCobrarDetalle').AsInteger:=ADODtStCxCDetallePendIdCuentaXCobrarDetalle.AsInteger;
            ADODtstAplicacionesInternas.FieldByName('Importe').AsFloat:=valreg;         //Falta actualizar saldos de cxcdetalle
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
        ADODtstAplicacionesInternas.FieldByName('Importe').AsFloat:=valreg;         //Falta actualizar saldos de cxcdetalle
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





  //HAsta aca

//  ADODtStCXCPendientes.Refresh;
//  ADODtStCxCDetallePend.Refresh;
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
    ADODtStAplicacionesPagos.FieldByName('ImporteFactoraje').asFLoat:=adodsMaster.FieldByName('Saldo').AsFloat // ene13/17
  else
    ADODtStAplicacionesPagos.FieldByName('Importe').asFLoat:=adodsMaster.FieldByName('Saldo').AsFloat; //Este se debe actualizar

end;

procedure TdmPagos.DataModuleCreate(Sender: TObject);
begin
  inherited;
//  if ADODtStCFDIConceptos.CommandText <> EmptyStr then ADODtStCFDIConceptos.Open;
  gGridForm:= TFrmConPagos.Create(Self);
  TFrmConPagos(gGridForm).DSAplicacion.DataSet:=ADODtStAplicacionesPagos;
  TFrmConPagos(gGridForm).ActFacturaMorato:=ActGeneraPrefMoratorios;
  gGridForm.DataSet:= adodsMaster;
  TFrmConPagos(gGridForm).dsPersonas.dataset:=adosPersonas;

    //Agregado Feb 16/17
   TFrmConPagos(gGridForm).DSDetallesCXC.dataset:= ADODtStCxCDetallePend;
   TFrmConPagos(gGridForm).dsConCXCPendientes.DataSet:=ADODtStCXCPendientes;
   TFrmConPagos(gGridForm).DSDetalleMostrar.DataSet:=ADODtStDetalleCXCMostrar;
   TFrmConPagos(gGridForm).DSAplicacion.DataSet :=ADODtStAplicacionesPagos;
   // hasta Agregado Feb 16/17

 //  TfrmFacturasGrid(gGridForm).ActGenerarCFDI := actProcesaFactura;  //Nov29/16
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
