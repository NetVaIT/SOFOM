unit VirtualXML33;

interface

uses Winapi.Windows, System.SysUtils,
  Xml.XMLIntf,
  Facturacion.ComprobanteV33;

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
//  function CancelarCFDI(UUID: string; ArchivoOUT: string; Certificado: TFECertificado;
//  var Respuesta: string; Produccion: Boolean = False): Boolean;

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
//VirtualXML_GetValue(hXml, 20) -> Recupera el RFC el PAC que certifico el documento
//VirtualXML_GetValue(hXml, 21) -> Recupera la "leyenda" del timbre fiscal digital (cuando exista)
    TimbradoCFDI.NombreArchivo:= ArchivoXML;
    Result:= (TimbradoCFDI.Resultado = cVirtualPAC_OK);
  finally
    VirtualXML_Free(hXML);
    FreeLibrary(Hbar);
  end;
end;

end.
