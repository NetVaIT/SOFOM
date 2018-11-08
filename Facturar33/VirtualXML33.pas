unit VirtualXML33;

interface

uses Winapi.Windows, System.SysUtils,
  Xml.XMLIntf,
  Facturacion.ComprobanteV33, FacturaTipos,System.IniFiles;  //Oct 26/18

const
  CFDIVersion = '3.3';
  cVirtualPAC_OK = 'VIRTUALXML_OK';
  feXML = '.XML';
  fePNG = '.PNG';

type
  TFETipoComprobante = (tcIngreso, tcEgreso, tcTraslado, tcPagos, tcNomina, tcRetenciones);
  TTimbreCFDI = record
    Resultado: string;
    MensajeError: string;
    CertificadoEmisor: string;
    SelloEmisor: string;
    CadenaOriginal: string;
    NoCertificadoSAT: string;
    SelloSAT: string;
    CadenaTimbre: string;
    UUID: string;
    FechaTimbre: string;
    InicioVigenciaCertificado: string;
    FinVigenciaCertificado: string;
    VirtualPACID: string;
    TimbresRestantes: string;
    VersionLibreria: string;
    FechaEmisionXML: string;
    AdvertanciaVirtualPAC: string;
    PAC: string;
    RevisionLibreria: string;
    NombreArchivo: string;
    RFCPAC:String;
    LeyendaSAT:String;
  end;

  function GenerarCFDI33(Tipo: TFETipoComprobante; Comprobante: IComprobanteFiscalV33;
  RutaCertificado, RutaLlavePrivada: TFileName; ClaveLlavePrivada: String;
  Ruta: String; var TimbradoCFDI: TTimbreCFDI; Produccion: Boolean = False): Boolean;

   //Nuevo Esquema Cancelaciones Nov 1/18
  function CancelarCFDI_ConSolicitud(UUID, RFCReceptor, TotalTxt: string; ArchivoOUT, LogCancela : string; Certificado: TFECertificado;       //Oct 26/18
      var Respuesta: string; Produccion: Boolean = False): Boolean;

  procedure LeerArchivoINI(Archivo: TFileName; var  UUID,RFCEMI, RFCREC, CodRes, error, EstadoCFDI,
      EsCancelable, EstadoCancela: String);   //Oct 27/18


  procedure LlenaArchiBita(ARchivo:TFileName;UUID,RFCEMI, RFCREC, CodRes, error, EstadoCFDI,
      EsCancelable, EstadoCancela: String);    //Oct 27/18

  function ConsultaEstatusCFDI33(UUID:String;RFCEmi,RFCReceptor:String; Total:String;
      var Resultado:String; ArchiINI, ArchiLog:String;EsProduccion:Boolean=False):integer;   //Oct 27/18 Es Consulta nueva de estatus de 3.3  con nuevo esquema


var
  hXml: LongInt;
  hBar: Thandle;
  VirtualXML_New : function( szVersion:PChar ): LongInt; cdecl;
  VirtualXML_ProcesaDocumento : function( p:LongInt; csd:PChar; key:PChar; keypwd:PChar; outfile:PChar ): LongInt; cdecl;
  VirtualXML_GetValue : function( p:LongInt; value:LongInt ): PChar; cdecl;
  VirtualXML_Free : procedure( p:LongInt ); cdecl;
  VirtualXML_SetVirtualPACInfo : procedure( p:LongInt; szUser:PChar; servidor:PChar ); cdecl;
  VirtualXML_SetCiberSATInfo : procedure( p:LongInt; userCiberPAC:PChar; llaveCiberPAC:PChar ); cdecl;
  VirtualXML_SetComprobanteInfo : procedure( p:LongInt; serie:PChar; folio:PChar; fecha:PChar; tipoDeComprobante:PChar; formaDePago:PChar; subtotal:PChar; descuento:PChar; total:PChar; moneda:PChar; tipoCambio:PChar; condicionesDePago:PChar; metodoDePago:PChar; motivoDescuento:PChar ); cdecl;
  VirtualXML_SetComprobanteCFDInfo : procedure( p:LongInt; noAprobacion:PChar; anoAprobacion:PChar ); cdecl;
  VirtualXML_SetComprobanteInfoEx : procedure( p:LongInt; LugarExpedicion:PChar; NumCtaPago:PChar; SerieFolioFiscalOrig:PChar; FolioFiscalOrig:PChar; MontoFolioFiscalOrig:PChar; FechaFolioFiscalOrig:PChar ); cdecl;
  VirtualXML_SetEmisorInfo : procedure( p:LongInt; szRFC:PChar; szRazonSocial:PChar ); cdecl;
  VirtualXML_SetEmisorDomicilio : procedure( p:LongInt; calle:PChar; noExterior:PChar; noInterior:PChar; colonia:PChar; localidad:PChar; referencia:PChar; municipio:PChar; estado:PChar; pais:PChar; codigoPostal:PChar ); cdecl;
  VirtualXML_SetEmisorExpedidoEn : procedure( p:LongInt; calle:PChar; noExterior:PChar; noInterior:PChar; colonia:PChar; localidad:PChar; referencia:PChar; municipio:PChar; estado:PChar; pais:PChar; codigoPostal:PChar ); cdecl;
  VirtualXML_AddEmisorRegimenFiscal : procedure( p:LongInt; regimen:PChar ); cdecl;
  VirtualXML_SetReceptorInfo : procedure( p:LongInt; szRFC:PChar; szRazonSocial:PChar ); cdecl;
  VirtualXML_SetReceptorDomicilio : procedure( p:LongInt; calle:PChar; noExterior:PChar; noInterior:PChar; colonia:PChar; localidad:PChar; referencia:PChar; municipio:PChar; estado:PChar; pais:PChar; codigoPostal:PChar ); cdecl;
  VirtualXML_AddConcepto : procedure( p:LongInt; cantidad:PChar; unidad:PChar; descripcion:PChar; valorUnitario:PChar; importe:PChar; noIdentificacion:PChar ); cdecl;
  VirtualXML_AddInformacionAduanera : procedure( p:LongInt; fecha:PChar; numero:PChar; aduana:PChar ); cdecl;
  VirtualXML_AddComplementoConcepto : procedure( p:LongInt ); cdecl;
  VirtualXML_AddinstEducativas : procedure( p:LongInt; CURP:PChar; autRVOE:PChar; nivelEducativo:PChar; nombreAlumno:PChar; rfcPago:PChar ); cdecl;
  VirtualXML_SetImpuestosInfo : procedure( p:LongInt; totalImpuestosTrasladados:PChar; totalImpuestosRetenidos:PChar ); cdecl;
  VirtualXML_AddRetencion : procedure( p:LongInt; impuesto:PChar; importe:PChar ); cdecl;
  VirtualXML_AddTraslado : procedure( p:LongInt; impuesto:PChar; tasa:PChar; importe:PChar ); cdecl;
  VirtualXML_SetImpuestosLocalesInfo : procedure( p:LongInt; TotaldeTraslados:PChar; TotaldeRetenciones:PChar ); cdecl;
  VirtualXML_AddImpuestoLocalRetenido : procedure( p:LongInt; ImpLocRetenido:PChar; TasadeRetencion:PChar; Importe:PChar ); cdecl;
  VirtualXML_AddImpuestoLocalTrasladado : procedure( p:LongInt; ImpLocTrasladado:PChar; TasadeTraslado:PChar; Importe:PChar ); cdecl;
  VirtualXML_AddDonatarias : procedure( p:LongInt; fechaAutorizacion:PChar; noAutorizacion:PChar ); cdecl;
  VirtualXML_SetComprobanteInfo_cfdi33 : procedure (p:LongInt; Serie:PChar; Folio:PChar; Fecha:PChar; FormaPago:PChar; CondicionesDePago:PChar; SubTotal:PChar; Descuento:PChar; Moneda:PChar; TipoCambio:PChar; Total:PChar; TipoDeComprobante:PChar; MetodoPago:PChar; LugarExpedicion:PChar; Confirmacion:PChar) cdecl;
  VirtualXML_SetCfdiRelacionados_cfdi33 : procedure (p:LongInt; TipoRelacion:PChar) cdecl;
  VirtualXML_AddCfdiRelacionado_cfdi33 : procedure (p:LongInt; UUID:PChar) cdecl;
  VirtualXML_SetEmisorInfo_cfdi33 : procedure (p:LongInt; Rfc:PChar; Nombre:PChar; RegimenFiscal:PChar) cdecl;
  VirtualXML_SetReceptorInfo_cfdi33 : procedure (p:LongInt; Rfc:PChar; Nombre:PChar; ResidenciaFiscal:PChar; NumRegIdTrib:PChar; UsoCFDI:PChar) cdecl;
  VirtualXML_AddConcepto_cfdi33 : procedure (p:LongInt; ClaveProdServ:PChar; NoIdentificacion:PChar; Cantidad:PChar; ClaveUnidad:PChar; Unidad:PChar; Descripcion:PChar; ValorUnitario:PChar; Importe:PChar; Descuento:PChar) cdecl;
  VirtualXML_AddConceptoTraslado_cfdi33 : procedure (p:LongInt; Base:PChar; Impuesto:PChar; TipoFactor:PChar; TasaOCuota:PChar; Importe:PChar) cdecl;
  VirtualXML_AddConceptoRetencion_cfdi33 : procedure (p:LongInt; Base:PChar; Impuesto:PChar; TipoFactor:PChar; TasaOCuota:PChar; Importe:PChar) cdecl;
  VirtualXML_SetImpuestosInfo_cfdi33 : procedure (p:LongInt; TotalImpuestosTrasladados:PChar; TotalImpuestosRetenidos:PChar) cdecl;
  VirtualXML_AddTraslado_cfdi33 : procedure (p:LongInt; Impuesto:PChar; TipoFactor:PChar; TasaOCuota:PChar; Importe:PChar) cdecl;
  VirtualXML_AddRetencion_cfdi33 : procedure (p:LongInt; Impuesto:PChar; Importe:PChar) cdecl;
  VirtualXML_SetPagos10 : procedure (p:LongInt) cdecl;
  VirtualXML_Pagos10SetPago : procedure (p:LongInt; FechaPago:PChar; FormaDePago:PChar; MonedaP:PChar; TipoCambioP:PChar; Monto:PChar; NumOperacion:PChar; RfcEmisorCtaOrd:PChar; NomBancoOrdExt:PChar; CtaOrdenante:PChar; RfcEmisorCtaBen:PChar; CtaBeneficiario:PChar; TipoCadPago:PChar; CertPago:PChar; CadPago:PChar; SelloPago:PChar) cdecl;
  VirtualXML_Pagos10AddPagoDoctoRelacionado : procedure (p:LongInt; IdDocumento:PChar; Serie:PChar; Folio:PChar; MonedaDR:PChar; TipoCambioDR:PChar; MetodoDePagoDR:PChar; NumParcialidad:PChar; ImpSaldoAnt:PChar; ImpPagado:PChar; ImpSaldoInsoluto:PChar) cdecl;
  VirtualXML_AddConceptoComplementoIedu_cfdi33 : procedure (p:LongInt; nombreAlumno:PChar; CURP:PChar; nivelEducativo:PChar; autRVOE:PChar; rfcPago:PChar) cdecl;
  VirtualXML_AddConceptoInformacionAduanera_cfdi33 : procedure (p:LongInt; NumeroPedimento:PChar) cdecl;
  VirtualXML_AddConceptoCuentaPredial_cfdi33 : procedure (p:LongInt; Numero:PChar) cdecl;
  VirtualXML_AddConceptoParte_cfdi33 : procedure (p:LongInt; ClaveProdServ:PChar; NoIdentificacion:PChar; Cantidad:PChar; Unidad:PChar; Descripcion:PChar; ValorUnitario:PChar; Importe:PChar; NumeroPedimento:PChar) cdecl;
  VirtualXML_SetAddendaText_cfdi33 : procedure (p:LongInt; text:PChar) cdecl;
  VirtualXML_AddComplemento_cfdi33 : procedure (p:LongInt; complementoXml:PChar) cdecl;
  VirtualXML_SetAddenda_cfdi33 : procedure (p:LongInt; text:PChar) cdecl;

implementation

uses Facturacion.ImpuestosLocalesV1, Facturacion.ComplementoPagoV1,
  Facturacion.OpenSSL;

function VerificarCertificado(RutaCertificado, RutaLlavePrivada: TFileName; ClaveLlavePrivada: String): Boolean;
var
  openSSL: IOpenSSL;
begin
  openSSL := TOpenSSL.Create;
//      openSSL.AsignarLlavePrivada(rutaLlavePrivada,
//                                  claveLlavePrivada);
  // Checamos que el certificado y la llave privada sean pareja
  Result:= openSSL.SonPareja(rutaCertificado, rutaLlavePrivada, claveLlavePrivada);
end;

function CargarLibreria: Boolean;
begin
  Result:= False;
  Hbar := LoadLibrary('VirtualXML.dll');
  if Hbar = 0 then
  begin
//   ShowMessage('Error: No se encontro la libreria VirtualXML.dll');
   exit;
  end;
  VirtualXML_New := GetProcAddress( Hbar, 'VirtualXML_NewW' );
  VirtualXML_ProcesaDocumento := GetProcAddress( Hbar, 'VirtualXML_ProcesaDocumentoW' );
  VirtualXML_GetValue := GetProcAddress( Hbar, 'VirtualXML_GetValueW' );
  VirtualXML_Free := GetProcAddress( Hbar, 'VirtualXML_FreeW' );
  VirtualXML_SetVirtualPACInfo := GetProcAddress( Hbar, 'VirtualXML_SetVirtualPACInfoW' );
  VirtualXML_SetCiberSATInfo := GetProcAddress( Hbar, 'VirtualXML_SetCiberSATInfoW' );
  VirtualXML_SetComprobanteInfo := GetProcAddress( Hbar, 'VirtualXML_SetComprobanteInfoW' );
  VirtualXML_SetComprobanteCFDInfo := GetProcAddress( Hbar, 'VirtualXML_SetComprobanteCFDInfoW' );
  VirtualXML_SetComprobanteInfoEx := GetProcAddress( Hbar, 'VirtualXML_SetComprobanteInfoExW' );
  VirtualXML_SetEmisorInfo := GetProcAddress( Hbar, 'VirtualXML_SetEmisorInfoW' );
  VirtualXML_SetEmisorDomicilio := GetProcAddress( Hbar, 'VirtualXML_SetEmisorDomicilioW' );
  VirtualXML_SetEmisorExpedidoEn := GetProcAddress( Hbar, 'VirtualXML_SetEmisorExpedidoEnW' );
  VirtualXML_AddEmisorRegimenFiscal := GetProcAddress( Hbar, 'VirtualXML_AddEmisorRegimenFiscalW' );
  VirtualXML_SetReceptorInfo := GetProcAddress( Hbar, 'VirtualXML_SetReceptorInfoW' );
  VirtualXML_SetReceptorDomicilio := GetProcAddress( Hbar, 'VirtualXML_SetReceptorDomicilioW' );
  VirtualXML_AddConcepto := GetProcAddress( Hbar, 'VirtualXML_AddConceptoW' );
  VirtualXML_AddInformacionAduanera := GetProcAddress( Hbar, 'VirtualXML_AddInformacionAduaneraW' );
  VirtualXML_AddComplementoConcepto := GetProcAddress( Hbar, 'VirtualXML_AddComplementoConceptoW' );
  VirtualXML_AddinstEducativas := GetProcAddress( Hbar, 'VirtualXML_AddinstEducativasW' );
  VirtualXML_SetImpuestosInfo := GetProcAddress( Hbar, 'VirtualXML_SetImpuestosInfoW' );
  VirtualXML_AddRetencion := GetProcAddress( Hbar, 'VirtualXML_AddRetencionW' );
  VirtualXML_AddTraslado := GetProcAddress( Hbar, 'VirtualXML_AddTrasladoW' );
  VirtualXML_SetImpuestosLocalesInfo := GetProcAddress( Hbar, 'VirtualXML_SetImpuestosLocalesInfoW' );
  VirtualXML_AddImpuestoLocalRetenido := GetProcAddress( Hbar, 'VirtualXML_AddImpuestoLocalRetenidoW' );
  VirtualXML_AddImpuestoLocalTrasladado := GetProcAddress( Hbar, 'VirtualXML_AddImpuestoLocalTrasladadoW' );
  VirtualXML_AddDonatarias := GetProcAddress( Hbar, 'VirtualXML_AddDonatariasW' );
  VirtualXML_SetComprobanteInfo_cfdi33 := GetProcAddress( Hbar,'VirtualXML_SetComprobanteInfo_cfdi33W');
  VirtualXML_SetCfdiRelacionados_cfdi33 := GetProcAddress( Hbar,'VirtualXML_SetCfdiRelacionados_cfdi33W');
  VirtualXML_AddCfdiRelacionado_cfdi33 := GetProcAddress( Hbar,'VirtualXML_AddCfdiRelacionado_cfdi33W');
  VirtualXML_SetEmisorInfo_cfdi33 := GetProcAddress( Hbar,'VirtualXML_SetEmisorInfo_cfdi33W');
  VirtualXML_SetReceptorInfo_cfdi33 := GetProcAddress( Hbar,'VirtualXML_SetReceptorInfo_cfdi33W');
  VirtualXML_AddConcepto_cfdi33 := GetProcAddress( Hbar,'VirtualXML_AddConcepto_cfdi33W');
  VirtualXML_AddConceptoTraslado_cfdi33 := GetProcAddress( Hbar,'VirtualXML_AddConceptoTraslado_cfdi33W');
  VirtualXML_AddConceptoRetencion_cfdi33 := GetProcAddress( Hbar,'VirtualXML_AddConceptoRetencion_cfdi33W');
  VirtualXML_SetImpuestosInfo_cfdi33 := GetProcAddress( Hbar,'VirtualXML_SetImpuestosInfo_cfdi33W');
  VirtualXML_AddTraslado_cfdi33 := GetProcAddress( Hbar,'VirtualXML_AddTraslado_cfdi33W');
  VirtualXML_AddRetencion_cfdi33 := GetProcAddress( Hbar,'VirtualXML_AddRetencion_cfdi33W');
  VirtualXML_SetPagos10 := GetProcAddress( Hbar,'VirtualXML_SetPagos10W');
  VirtualXML_Pagos10SetPago := GetProcAddress( Hbar,'VirtualXML_Pagos10SetPagoW');
  VirtualXML_Pagos10AddPagoDoctoRelacionado := GetProcAddress( Hbar,'VirtualXML_Pagos10AddPagoDoctoRelacionadoW');
  VirtualXML_AddConceptoComplementoIedu_cfdi33 := GetProcAddress( Hbar,'VirtualXML_AddConceptoComplementoIedu_cfdi33W');
  VirtualXML_AddConceptoInformacionAduanera_cfdi33 := GetProcAddress( Hbar,'VirtualXML_AddConceptoCuentaPredial_cfdi33W');
  VirtualXML_AddConceptoCuentaPredial_cfdi33 := GetProcAddress( Hbar,'VirtualXML_AddConceptoCuentaPredial_cfdi33W');
  VirtualXML_AddConceptoParte_cfdi33 := GetProcAddress( Hbar,'VirtualXML_AddConceptoParte_cfdi33W');
  VirtualXML_SetAddendaText_cfdi33 := GetProcAddress( Hbar,'VirtualXML_SetAddendaText_cfdi33W');
  VirtualXML_AddComplemento_cfdi33 := GetProcAddress( Hbar,'VirtualXML_AddComplemento_cfdi33W');
  VirtualXML_SetAddenda_cfdi33 := GetProcAddress( Hbar,'VirtualXML_SetAddenda_cfdi33W');
  Result:= True;
end;

procedure SetCfdiRelacionados(CfdiRelacionados: IComprobanteFiscalV33_CfdiRelacionados);
var
  I: Integer;
begin
  if CfdiRelacionados.TipoRelacion <> EmptyStr then
  begin
    VirtualXML_SetCfdiRelacionados_cfdi33(hXml, PWideChar(CfdiRelacionados.TipoRelacion));
    for I := 0 to CfdiRelacionados.Count - 1 do
    begin
      VirtualXML_AddCfdiRelacionado_cfdi33(hXml, PWideChar(CfdiRelacionados.CfdiRelacionado[I].UUID));
    end;
  end;
end;

procedure SetConceptos(Conceptos: IComprobanteFiscalV33_Conceptos);
var
  I,J: Integer;
begin
  for I := 0 to Conceptos.Count - 1 do
  begin
    VirtualXML_AddConcepto_cfdi33(hXml,
    PWideChar(Conceptos.Concepto[I].ClaveProdServ),
    PWideChar(Conceptos.Concepto[I].NoIdentificacion),
    PWideChar(Conceptos.Concepto[I].Cantidad),
    PWideChar(Conceptos.Concepto[I].ClaveUnidad),
    PWideChar(Conceptos.Concepto[I].Unidad),
    PWideChar(Conceptos.Concepto[I].Descripcion),
    PWideChar(Conceptos.Concepto[I].ValorUnitario),
    PWideChar(Conceptos.Concepto[I].Importe),
    PWideChar(Conceptos.Concepto[I].Descuento));
    // Retenciones
    for J := 0 to Conceptos.Concepto[I].Impuestos.Retenciones.Count -1 do
    begin
      VirtualXML_AddConceptoRetencion_cfdi33(hXml,
      PWideChar(Conceptos.Concepto[I].Impuestos.Retenciones.Retencion[J].Base),
      PWideChar(Conceptos.Concepto[I].Impuestos.Retenciones.Retencion[J].Impuesto),
      PWideChar(Conceptos.Concepto[I].Impuestos.Retenciones.Retencion[J].TipoFactor),
      PWideChar(Conceptos.Concepto[I].Impuestos.Retenciones.Retencion[J].TasaOCuota),
      PWideChar(Conceptos.Concepto[I].Impuestos.Retenciones.Retencion[J].Importe));
    end;
    // Traslados
    for J := 0 to Conceptos.Concepto[I].Impuestos.Traslados.Count -1 do
    begin
      VirtualXML_AddConceptoTraslado_cfdi33(hXml,
      PWideChar(Conceptos.Concepto[I].Impuestos.Traslados.Traslado[J].Base),
      PWideChar(Conceptos.Concepto[I].Impuestos.Traslados.Traslado[J].Impuesto),
      PWideChar(Conceptos.Concepto[I].Impuestos.Traslados.Traslado[J].TipoFactor),
      PWideChar(Conceptos.Concepto[I].Impuestos.Traslados.Traslado[J].TasaOCuota),
      PWideChar(Conceptos.Concepto[I].Impuestos.Traslados.Traslado[J].Importe));
    end;
    // InformacionAduanera
    for J := 0 to Conceptos.Concepto[I].InformacionAduanera.Count -1 do
    begin
      VirtualXML_AddConceptoInformacionAduanera_cfdi33(hXml,
      PWideChar(Conceptos.Concepto[I].InformacionAduanera.Items[J].NumeroPedimento));
    end;
    if Conceptos.Concepto[I].CuentaPredial.Numero <> EmptyStr then
      VirtualXML_AddConceptoCuentaPredial_cfdi33(hXml,
      PWideChar(Conceptos.Concepto[I].CuentaPredial.Numero));
//      VirtualXML_AddConceptoComplementoIedu_cfdi33
//      VirtualXML_AddConceptoParte_cfdi33
  end;
end;

procedure SetImpuestos(Impuestos: IComprobanteFiscalV33_Impuestos);
var
  I: Integer;
begin
  VirtualXML_SetImpuestosInfo_cfdi33(hXml,
  PWideChar(Impuestos.TotalImpuestosTrasladados),
  PWideChar(Impuestos.TotalImpuestosRetenidos));
  for I := 0 to Impuestos.Traslados.Count - 1 do
  begin
    VirtualXML_AddTraslado_cfdi33(hXml,
    PWideChar(Impuestos.Traslados.Traslado[I].Impuesto),
    PWideChar(Impuestos.Traslados.Traslado[I].TipoFactor),
    PWideChar(Impuestos.Traslados.Traslado[I].TasaOCuota),
    PWideChar(Impuestos.Traslados.Traslado[I].Importe));
  end;
  for I := 0 to Impuestos.Retenciones.Count - 1 do
  begin
    VirtualXML_AddRetencion_cfdi33(hXml,
    PWideChar(Impuestos.Retenciones.Retencion[I].Impuesto),
    PWideChar(Impuestos.Retenciones.Retencion[I].Importe));
  end;
end;

procedure SetImpuestosLocales(ImpuestosLocales: IImpuestosLocalesV1);
var
  I: Integer;
begin
  if not Assigned(ImpuestosLocales) then exit;
  VirtualXML_SetImpuestosLocalesInfo(hXml,
  PWideChar(ImpuestosLocales.TotaldeTraslados),
  PWideChar(ImpuestosLocales.TotaldeRetenciones));
  for I := 0 to ImpuestosLocales.TrasladosLocales.Count - 1 do
  begin
    VirtualXML_AddImpuestoLocalTrasladado(hXml,
    PWideChar(ImpuestosLocales.TrasladosLocales[I].ImpLocTrasladado),
    PWideChar(ImpuestosLocales.TrasladosLocales[I].TasadeTraslado),
    PWideChar(ImpuestosLocales.TrasladosLocales[I].Importe));
  end;
  for I := 0 to ImpuestosLocales.RetencionesLocales.Count - 1 do
  begin
    VirtualXML_AddImpuestoLocalRetenido(hXml,
    PWideChar(ImpuestosLocales.RetencionesLocales[I].ImpLocRetenido),
    PWideChar(ImpuestosLocales.RetencionesLocales[I].TasadeRetencion),
    PWideChar(ImpuestosLocales.RetencionesLocales[I].Importe));
  end;
end;

procedure SetPagos10(Pagos: IPagosV1);
var
  I,J: Integer;
begin
  if not Assigned(Pagos) then exit;
  VirtualXML_SetPagos10(hXml);
  for I := 0 to Pagos.Count - 1 do
  begin
    VirtualXML_Pagos10SetPago(hXml,
    PWideChar(Pagos[I].FechaPago),
    PWideChar(Pagos[I].FormaDePagoP),
    PWideChar(Pagos[I].MonedaP),
    PWideChar(Pagos[I].TipoCambioP),
    PWideChar(Pagos[I].Monto),
    PWideChar(Pagos[I].NumOperacion),
    PWideChar(Pagos[I].RfcEmisorCtaOrd),
    PWideChar(Pagos[I].NomBancoOrdExt),
    PWideChar(Pagos[I].CtaOrdenante),
    PWideChar(Pagos[I].RfcEmisorCtaBen),
    PWideChar(Pagos[I].CtaBeneficiario),
    PWideChar(Pagos[I].TipoCadPago),
    PWideChar(Pagos[I].CertPago),
    PWideChar(Pagos[I].CadPago),
    PWideChar(Pagos[I].SelloPago));
    // Documentos relacionados
    for J := 0 to Pagos[I].DoctoRelacionado.Count -1 do
    begin
      VirtualXML_Pagos10AddPagoDoctoRelacionado(hXml,
      PWideChar(Pagos[I].DoctoRelacionado[J].IdDocumento),
      PWideChar(Pagos[I].DoctoRelacionado[J].Serie),
      PWideChar(Pagos[I].DoctoRelacionado[J].Folio),
      PWideChar(Pagos[I].DoctoRelacionado[J].MonedaDR),
      PWideChar(Pagos[I].DoctoRelacionado[J].TipoCambioDR),
      PWideChar(Pagos[I].DoctoRelacionado[J].MetodoDePagoDR),
      PWideChar(IntToStr(Pagos[I].DoctoRelacionado[J].NumParcialidad)),
      PWideChar(Pagos[I].DoctoRelacionado[J].ImpSaldoAnt),
      PWideChar(Pagos[I].DoctoRelacionado[J].ImpPagado),
      PWideChar(Pagos[I].DoctoRelacionado[J].ImpSaldoInsoluto));
    end;
  end;
end;

procedure GenerarCFDI33_I(Comprobante: IComprobanteFiscalV33);
begin
  // Datos del comprobante
  VirtualXML_SetComprobanteInfo_cfdi33(hXml,
  PWideChar(Comprobante.Serie),
  PWideChar(Comprobante.Folio),
  PWideChar(Comprobante.Fecha),
  PWideChar(Comprobante.FormaPago),
  PWideChar(Comprobante.CondicionesDePago),
  PWideChar(Comprobante.SubTotal),
  PWideChar(Comprobante.Descuento),
  PWideChar(Comprobante.Moneda),
  PWideChar(Comprobante.TipoCambio),
  PWideChar(Comprobante.Total),
  PWideChar(Comprobante.TipoDeComprobante),
  PWideChar(Comprobante.MetodoPago),
  PWideChar(Comprobante.LugarExpedicion),
  PWideChar(Comprobante.Confirmacion));
  // Datos de documentos relacionados
  SetCfdiRelacionados(Comprobante.CfdiRelacionados);
  // Datos Del Emisor
  VirtualXML_SetEmisorInfo_cfdi33(hXml,
  PWideChar(Comprobante.Emisor.Rfc),
  PWideChar(Comprobante.Emisor.Nombre),
  PWideChar(Comprobante.Emisor.RegimenFiscal));
  // Datos del Receptor
  VirtualXML_SetReceptorInfo_cfdi33(hXml,
  PWideChar(Comprobante.Receptor.Rfc),
  PWideChar(Comprobante.Receptor.Nombre),
  PWideChar(Comprobante.Receptor.ResidenciaFiscal),
  PWideChar(Comprobante.Receptor.NumRegIdTrib),
  PWideChar(Comprobante.Receptor.UsoCFDI));
  // Conceptos
  SetConceptos(Comprobante.Conceptos);
  // Impuestos
  SetImpuestos(Comprobante.Impuestos);
  // Impuestos locales
  SetImpuestosLocales(Comprobante.Complemento.ImpuestosLocales);
end;

Procedure GenerarCFDI33_P(Comprobante: IComprobanteFiscalV33);
begin
  // Datos del comprobante
  VirtualXML_SetComprobanteInfo_cfdi33(hXml,
  PWideChar(Comprobante.Serie),
  PWideChar(Comprobante.Folio),
  PWideChar(Comprobante.Fecha),
  '',
  '',
  '0',
  '',
  'XXX',
  '',
  '0',
  PWideChar(Comprobante.TipoDeComprobante),
  '',
  PWideChar(Comprobante.LugarExpedicion),
  PWideChar(Comprobante.Confirmacion));
  // Datos de documentos relacionados
  SetCfdiRelacionados(Comprobante.CfdiRelacionados);
  // Datos Del Emisor
  VirtualXML_SetEmisorInfo_cfdi33(hXml,
  PWideChar(Comprobante.Emisor.Rfc),
  PWideChar(Comprobante.Emisor.Nombre),
  PWideChar(Comprobante.Emisor.RegimenFiscal));
  // Datos del Receptor
  VirtualXML_SetReceptorInfo_cfdi33(hXml,
  PWideChar(Comprobante.Receptor.Rfc),
  PWideChar(Comprobante.Receptor.Nombre),
  PWideChar(Comprobante.Receptor.ResidenciaFiscal),
  PWideChar(Comprobante.Receptor.NumRegIdTrib),
  PWideChar(Comprobante.Receptor.UsoCFDI));
  // Conceptos
  VirtualXML_AddConcepto_cfdi33(hXml,
  '84111506',
  '',
  '1',
  'ACT',
  '',
  'Pago',
  '0',
  '0',
  '');
  // Impuestos locales
  SetImpuestosLocales(Comprobante.Complemento.ImpuestosLocales);
  // Complemento de pagos
  SetPagos10(Comprobante.Complemento.Pagos);
end;

function GenerarCFDI33(Tipo: TFETipoComprobante; Comprobante: IComprobanteFiscalV33;
RutaCertificado, RutaLlavePrivada: TFileName; ClaveLlavePrivada: String;
Ruta: String; var TimbradoCFDI: TTimbreCFDI; Produccion: Boolean = False): Boolean;
var
  ArchivoXML: TFileName;
begin
  Result:= False;
  // Solo Ingreso Egresos y pagos
  if not (Tipo in [tcIngreso, tcEgreso, tcPagos]) then exit;
  // Verifica que el certificado councida con la llave
  if not VerificarCertificado(RutaCertificado, RutaLlavePrivada, ClaveLlavePrivada) then exit;
  // Carga la libreria
  if not CargarLibreria then Exit;
  try
    hXml := VirtualXML_New(CFDIVersion);
//    hXML := VirtualXML_New(PChar(Comprobante.Version));
    if Produccion then
      VirtualXML_SetVirtualPACInfo(hXML, 'RMunguia', 'vpac-sef')
    else
//      VirtualXML_SetVirtualPACInfo(hXML, 'demo_RMunguia', 'virtual');
      VirtualXML_SetVirtualPacInfo(hXml, 'demo_cibertec', 'demo');
    case Tipo of
      tcIngreso: GenerarCFDI33_I(Comprobante);
      tcEgreso:  GenerarCFDI33_I(Comprobante);
      tcTraslado: ;
      tcPagos: GenerarCFDI33_P(Comprobante);
      tcNomina: ;
      tcRetenciones: ;
    end;
    // Genera CFDI
    ArchivoXML := Ruta + Comprobante.Receptor.Rfc +'_'+ Comprobante.Serie + Comprobante.Folio + feXML;
    VirtualXML_ProcesaDocumento(hXml,
    PWideChar(RutaCertificado),
    PWideChar(RutaLlavePrivada),
    PWideChar(ClaveLlavePrivada),
    PWideChar(ArchivoXML));
    TimbradoCFDI.Resultado := VirtualXML_GetValue(hXML, 1);      // constante de descripcion del error
    TimbradoCFDI.MensajeError:= VirtualXML_GetValue(hXML, 2);      // descripcion del error
    TimbradoCFDI.CertificadoEmisor:= VirtualXML_GetValue(hXML, 3);      // No certificado del emisor
    TimbradoCFDI.SelloEmisor:= VirtualXML_GetValue(hXML, 4);      // Sello del emisor
    TimbradoCFDI.CadenaOriginal:= VirtualXML_GetValue(hXML, 5);      // Cadena Original del documento
    TimbradoCFDI.NoCertificadoSAT:=VirtualXML_GetValue(hXML, 6);      // No. certificado del SAT
    TimbradoCFDI.SelloSAT:= VirtualXML_GetValue(hXML, 7);      // Sello del SAT
    TimbradoCFDI.CadenaTimbre:= VirtualXML_GetValue(hXML, 8);      // Cadena del timbre
    TimbradoCFDI.UUID:= VirtualXML_GetValue(hXML, 9);      // UUID
    TimbradoCFDI.FechaTimbre:= VirtualXML_GetValue(hXML, 10);     // fecha del timbrado
    TimbradoCFDI.InicioVigenciaCertificado:= VirtualXML_GetValue(hXML, 11);     // inicio de vigencia del certificado
    TimbradoCFDI.FinVigenciaCertificado:= VirtualXML_GetValue(hXML, 12);     // fin de vigencia del certificado
    TimbradoCFDI.VirtualPACID:= VirtualXML_GetValue(hXML, 13);     // VPID
    TimbradoCFDI.TimbresRestantes:= VirtualXML_GetValue(hXML, 14);     // timbres restantes
    TimbradoCFDI.VersionLibreria:= VirtualXML_GetValue(hXML, 15);     // version de la libreria
    TimbradoCFDI.FechaEmisionXML:= VirtualXML_GetValue(hXML, 16);
    TimbradoCFDI.AdvertanciaVirtualPAC:= VirtualXML_GetValue(hXML, 17);
    TimbradoCFDI.PAC:= VirtualXML_GetValue(hXML, 18);
    TimbradoCFDI.RevisionLibreria:= VirtualXML_GetValue(hXML, 19);
    TimbradoCFDI.RFCPAC:=VirtualXML_GetValue(hXml, 20);      //Sep 6/17
    TimbradoCFDI.LeyendaSAT:=VirtualXML_GetValue(hXml, 21) ; //Sep 6/17

    TimbradoCFDI.NombreArchivo:= ArchivoXML;
    Result:= (TimbradoCFDI.Resultado = cVirtualPAC_OK);
  finally
    VirtualXML_Free(hXML);
    FreeLibrary(Hbar);
  end;
end;

//Nuevo Esquema Cancelaciones //Nov 1/18
function CancelarCFDI_ConSolicitud(UUID, RFCReceptor, TotalTxt: string; ArchivoOUT, LogCancela : string; Certificado: TFECertificado;       //Oct 26/18
      var Respuesta: string; Produccion: Boolean = False): Boolean;  //Oct 26/18
var
  hXML: LongInt;
  hBar: THandle;
  VirtualXML_New : function( szVersion:PChar ): LongInt; cdecl;
  VirtualXML_ProcesaDocumento : function( p:LongInt; csd:PChar; key:PChar; keypwd:PChar; outfile:PChar ): LongInt; cdecl;
  VirtualXML_GetValue : function( p:LongInt; value:LongInt ): PChar; cdecl;
  VirtualXML_Free : procedure( p:LongInt ); cdecl;
  VirtualXML_SetVirtualPACInfo : procedure( p:LongInt; szUser:PChar; servidor:PChar ); cdecl;
  VirtualXML_CancelaCFDI : function( szUser:PChar; szEmisor:PChar; szREceptor:Pchar; szTotal: PChar; szUuid:PChar;szCert:PChar; szKey:PChar; szPwd:PChar;  szOut:PChar; szArchiLog:PChar ): LongInt; cdecl;

  Valor:integer;
//  F:TextFile;

  function CargarLibreria: Boolean;
  begin
    Result:= False;
    Hbar := LoadLibrary('VirtualXML.dll');
    if Hbar = 0 then exit;
    VirtualXML_New := GetProcAddress( Hbar, 'VirtualXML_NewW' );
    VirtualXML_ProcesaDocumento := GetProcAddress( Hbar, 'VirtualXML_ProcesaDocumentoW' );
    VirtualXML_GetValue := GetProcAddress( Hbar, 'VirtualXML_GetValueW' );
    VirtualXML_Free := GetProcAddress( Hbar, 'VirtualXML_FreeW' );
    VirtualXML_SetVirtualPACInfo := GetProcAddress( Hbar, 'VirtualXML_SetVirtualPACInfoW' );
    VirtualXML_CancelaCFDI := GetProcAddress( Hbar, 'VirtualXML_CancelaCFDIW' );        /// CancelarCFDIW  //verificar???
    Result:= True;
  end;

begin
  Result:= False;
  if not CargarLibreria then Exit;
//  ArchivoOUT:= strDir + PathDelim + UUID + '.TXT';
  hXML := VirtualXML_New(PChar(CFDIVersion));
  try
    if Produccion then
    begin
      VirtualXML_SetVirtualPACInfo(hXML, 'RMunguia', 'vpac-sef');
      Valor:= VirtualXML_CancelaCFDI('RMunguia',
      PWideChar(Certificado.RFCAlQuePertenece),
      PWideChar(RFCReceptor),     // agregado oct 26/18
      PWideChar(TotalTxt),        //agregado oct 26/18
      PWideChar(UUID),   //Movido aca
      PWideChar(Certificado.Ruta),
      PWideChar(Certificado.LlavePrivada.Ruta),
      PWideChar(Certificado.LlavePrivada.Clave),
      PWideChar(ArchivoOUT),      //INI
      PWideChar(LogCancela));
    end
    else
    begin
      VirtualXML_SetVirtualPACInfo(hXML,'demo_RMunguia' , 'virtual');  // 'DEMO_52079295'     nov 24/17
      Valor:= VirtualXML_CancelaCFDI('demo_RMunguia',
      PWideChar(Certificado.RFCAlQuePertenece),
      PWideChar(RFCReceptor),     // agregado oct 26/18
      PWideChar(TotalTxt),        //agregado oct 26/18
      PWideChar(UUID),   //Movido aca
      PWideChar(Certificado.Ruta),
      PWideChar(Certificado.LlavePrivada.Ruta),
      PWideChar(Certificado.LlavePrivada.Clave),
      PWideChar(ArchivoOUT), //INI
      PWideChar(LogCancela));
    end;


    Case Valor of    //Oct 19/18 Volvio a usarse..
    0:begin //Cancelado con exito ;
        Result:=true;
        Respuesta:='Cancelado directo';// este msg mandarlo en otro lado #13+'Documento cancelado en SAT. Recuerde que debe descargar del SAT, los acuses de cancelación. Cancelación directa.';
      end;
    1:begin //Requiere Solicitud al Receptor, Se envia Peticion.. Y posteriormente se puede intentar cancelar o si se marca estatus nuevo Procesoando
        Respuesta:='OPERANDO';
        Result:=true;
      end;

   -1:begin   //No se puede Cancelar
        Respuesta:='No se puede Cancelar.  Revisar INI'; //Se debe adjuntar razon
        Result:=False;
      end;
   -2:begin
        Respuesta:='No Existe en SAT. Intente más tarde '; //Se debe adjuntar razon
        Result:=False;
      end;
   -3:begin
        Respuesta:='Servicio SAT, no disponible. Intente más tarde '; //Se debe adjuntar razon
        Result:=False;
      end;
   end;

    //Result:= FileExists(ArchivoOUT);//(Valor=0); Mar 27/17
    //Respuesta:=intToStr(valor);
  finally
    VirtualXML_Free(hXML);
    FreeLibrary(Hbar);
  end;



end;


procedure LeerArchivoINI(Archivo: TFileName; var  UUID,RFCEMI, RFCREC, CodRes, error, EstadoCFDI,
      EsCancelable, EstadoCancela: String);   //Oct 27/18
Var         //Leer archivo Oct 23/18
  MiFichero : TIniFile;
begin
  MiFichero := TiniFile.Create(Archivo);         //Se completo desde afuera  ...extractFilePath(application.exename)+
                           //No estaba leyendo nada, requiere el path completo
 (* if MiFichero.SectionExists ('VirtualXML') then
     Showmessage('Existe seccion')
  else
    ShowMessage('No existe Seccion');*)
  CodRes:= MiFichero.ReadString ('VirtualXML','EXITCODE','');
  error :=MiFichero.ReadString ('VirtualXML ','COMMINFO','');
  UUID:= MiFichero.ReadString ('VirtualXML','UUID','');
  RFCEMI:= MiFichero.ReadString ('VirtualXML','RFCEMISOR','');
  RFCREC:= MiFichero.ReadString ('VirtualXML','RFCRECEPTOR','');
  EstadoCFDI := MiFichero.ReadString ('VirtualXML','ESTADO','');
  EsCancelable :=MiFichero.ReadString ('VirtualXML','ESCANCELABLE','');
  EstadoCancela :=MiFichero.ReadString ('VirtualXML','ESTATUSCANCELACION','');

  MiFichero.Free;

end;

procedure LlenaArchiBita(ARchivo:TFileName;UUID,RFCEMI, RFCREC, CodRes, error, EstadoCFDI,
      EsCancelable, EstadoCancela: String);    //Oct 27/18
var    F:TextFile;
linea :String;
begin
     //VEriificar si el nombre es gen4erio o por mes ..
  Linea:= DAteTimeTostr(now) + '|'+ UUID + '|'+  RFCEMI + '|'+  RFCREC + '|'+
  CodRes + '|'+ error + '|'+  EstadoCFDI + '|'+ EsCancelable + '|'+  EstadoCancela;

  AssignFile(F, Archivo);
  if fileExists(Archivo) then
    Append(F)
  else
    Rewrite(F);
  Writeln(F, Linea);
  CloseFile(F);

end;


function ConsultaEstatusCFDI33(UUID:String;RFCEmi,RFCReceptor:String; Total:String; var Resultado:String;
 ArchiINI, ArchiLog:String;EsProduccion:Boolean=False):integer;   //Es Consulta nueva de estatus de 3.3  con nuevo esquema
var              //Consultatr estatus , en pincipio sólo se debera habilitar para los procCancela.. poqr q cobrada de timbres
  hBar: Thandle;
  hXml: LongInt;

  VirtualXML_New : function( szVersion:PChar ): LongInt; cdecl;
  VirtualXML_Free : procedure( p:LongInt ); cdecl;
  VirtualXML_SetVirtualPACInfo : procedure( p:LongInt; szUser:PChar; servidor:PChar ); cdecl;

//  VirtualXML_CancelaCFDI:function(UsuarioCS: PChar;RFCEmisor:Pchar ;RFCReceptor:Pchar; Total: PChar;CFDI_Uuid:Pchar;ArchCertCSD:PChar;ArchKey:PChar;CSDPwd:Pchar;ArchOut:Pchar; ArchiLog:PChar): LongInt;cdecl;
  VirtualXML_GetStatusCFDI:function(UsuarioCS: PChar;RFCEmisor:Pchar ;RFCReceptor:Pchar; Total: PChar;CFDI_Uuid:Pchar;ArchOut:Pchar; ArchiLog:PChar): LongInt;cdecl;


  DatosAdi,verCFDI:String;
  Valor:integer;
  F:TextFile;
begin
  Result:=-10;  //Uno fuera del rango


  //UUID:=dsConsulta.DataSet.FieldByName('cdsUUID_TB').AsString;
  //Ya trae valor
  //DatosAdi:='FOLIO: '+dsConsulta.DataSet.FieldByName('cdsFolio').AsString+' '+dsConsulta.DataSet.FieldByName('cdsserie').AsString+ '     UUID: '+ UUID;
  Hbar := LoadLibrary( 'VirtualXML.dll' );

  VirtualXML_New := GetProcAddress( Hbar, 'VirtualXML_New' );
  VirtualXML_SetVirtualPACInfo := GetProcAddress( Hbar, 'VirtualXML_SetVirtualPACInfo' );
  VirtualXML_Free := GetProcAddress( Hbar, 'VirtualXML_Free' );
  VirtualXML_GetStatusCFDI:= GetProcAddress(HBar,'VirtualXML_GetStatusCFDI');  //Modificado oct 24/18


  // hXML := VirtualXML_New(PChar(CFDIVersion));
  hXml := VirtualXML_New (pChar(VerCFDI));//('3.2');
//Se cambio para que solo sirva con las claves si es Produccion el tipo
  if EsProduccion then  //Ajustado dic4/13
     VirtualXML_SetVirtualPACInfo(hXml, 'RMunguia', 'vpac-sef')
  else                                     //Ajustado Nov 2/17
      VirtualXML_SetVirtualPACInfo(hXml,'demo_RMunguia', 'virtual');// 'DEMO_52079295', 'virtual'); //Cambio mod oct 29/14 era oskar78
  //###########################################################

  if EsProduccion then                                                                                                                   //   'ConsultaEstado.INI','LogConsultaBita.Txt'
    Valor:=VirtualXML_GetStatusCFDI('RMunguia',PChar(RFCEmi),PChar(RFCReceptor),Pchar(Total),pChar(UUID),pChar(ArchiINI), pChar(ArchiLog))
  else //Por aca el de prueba     //Cambio Oct 29/14
    Valor:=VirtualXML_GetStatusCFDI('demo_RMunguia',PChar(RFCEmi),PChar(RFCReceptor),Pchar(Total),pChar(UUID),pChar(ArchiINI), pChar(ArchiLog));
//Ajustado


  Case Valor of    //Oct 19/18 Volvio a usarse..
  2: begin //Cancelado con exito ;

       Resultado:='CFDI Vigente y Cancelable';

     end;
  1: begin
        Resultado:='CFDI NO Cancelable'; //Verificar si se checa el INI

     end;
  0: begin
        Resultado:='CFDI Vigente, cancelación EN PROCESO'; //Verificar si se checa el INI
     end;
  -1:begin
         Resultado:='CFDI Cancelado';
     end;
  -2:begin
        Resultado:='UUID No encontrado en los registos del SAT, intente más tarde';
     end;
  -3:begin
         Resultado:='Servicio SAT, no disponible. Intente más tarde '; //Se debe adjuntar razon
     end;
  end;
  Result:=VAlor; //Verificar si hay que ponerle un valor inicial... deberia ser diferente de -3 a 2

  VirtualXML_Free(hXml);
  FreeLibrary(Hbar);

end;





end.
