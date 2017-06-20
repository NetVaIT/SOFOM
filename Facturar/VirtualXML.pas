unit VirtualXML;

interface

uses Winapi.Windows, System.SysUtils,
  FacturaTipos, DocComprobanteFiscal, FacturaReglamentacion, Dialogs;

const
  CFDIVersion = '3.2';
  feXML = '.XML';
  fePNG = '.PNG';
  strDir = 'C:\Temp';
  PagoUnaExhibicion = 'Pago en una sola exhibición';
  PagoParcialidades = 'En parcialidades';
  TipoIngreso = 'ingreso';
  TipoEgreso = 'egreso';
  TipoTraslado = 'traslado';

type

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
    NombreArchivo: string;
  end;

  function GenerarCFDI(var Ruta : String; Documento: TDocumentoComprobanteFiscal;
  Certificado: TFECertificado; var TimbradoCFDI: TTimbreCFDI; Produccion: Boolean = False): Boolean;
  function CancelarCFDI(UUID: string; ArchivoOUT: string; Certificado: TFECertificado;
  var Respuesta: string; Produccion: Boolean = False): Boolean;

var
  hXML: LongInt;
  hBar: THandle;
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
  VirtualXML_AddinstEducativas : procedure( p:LongInt; CURP:PChar; autRVOE:PChar; nivelEducativo:PChar; nombreAlumno:PChar; rfcPago:PChar ); cdecl;
  VirtualXML_SetImpuestosInfo : procedure( p:LongInt; totalImpuestosTrasladados:PChar; totalImpuestosRetenidos:PChar ); cdecl;
  VirtualXML_AddRetencion : procedure( p:LongInt; impuesto:PChar; importe:PChar ); cdecl;
  VirtualXML_AddTraslado : procedure( p:LongInt; impuesto:PChar; tasa:PChar; importe:PChar ); cdecl;
  VirtualXML_SetImpuestosLocalesInfo : procedure( p:LongInt; TotaldeTraslados:PChar; TotaldeRetenciones:PChar ); cdecl;
  VirtualXML_AddImpuestoLocalRetenido : procedure( p:LongInt; ImpLocRetenido:PChar; TasadeRetencion:PChar; Importe:PChar ); cdecl;
  VirtualXML_AddImpuestoLocalTrasladado : procedure( p:LongInt; ImpLocTrasladado:PChar; TasadeTraslado:PChar; Importe:PChar ); cdecl;
  VirtualXML_AddDonatarias : procedure( p:LongInt; fechaAutorizacion:PChar; noAutorizacion:PChar ); cdecl;
  //VirtualXML_SetDllPath : procedure( p:LongInt; DllPath:PChar ); cdecl;
  //VirtualXML_SetMetodo : procedure( p:LongInt; Metodo:PChar ); cdecl;
  //VirtualXML_GetValueInFile : procedure( p:LongInt; value:LongInt; file:PChar ); cdecl;
  //VirtualXML_ProcessFile : procedure( szFile:PChar ); cdecl;
  //VirtualXML_CheckFile : function( szFile:PChar ): LongInt; cdecl;
  //VirtualXML_SetComprobanteFecha : procedure( p:LongInt; fecha:PChar ); cdecl;
  //VirtualXML_SetLogFile : procedure( p:LongInt; file:PChar ); cdecl;
  //VirtualXML_SetFlags : procedure( p:LongInt; flags:LongInt ); cdecl;
  //VirtualXML_ShowValue : procedure( p:LongInt; lValue:LongInt; title:PChar ); cdecl;
  //VirtualXML_FirmaSellaDocto : function( p:LongInt; csd:PChar; key:PChar; keypwd:PChar; outfile:PChar ): LongInt; cdecl;
  //VirtualXML_SetAddendaText : procedure( p:LongInt; text:PChar ); cdecl;
  //VirtualXML_SetAddenda : procedure( p:LongInt; text:PChar ); cdecl;
  //VirtualXML_AddComplemento : procedure( p:LongInt; complementoXml:PChar ); cdecl;
  //VirtualXML_AddComplementoConcepto : procedure( p:LongInt; complementoXml:PChar ); cdecl;
  //VirtualXML_Save : procedure( p:LongInt; file:PChar ); cdecl;
  //VirtualXML_Load : function( file:PChar ): LongInt; cdecl;
  //VirtualXML_SetTralixInfo : procedure( p:LongInt; CustomerKey:PChar; url:PChar ); cdecl;
  //VirtualXML_GetTimeWithDelay : function( p:LongInt; nSegs:LongInt ): PChar; cdecl;
  //VirtualXML_GetEmisorInfo : function( emisor:PChar; pwd:PChar; fecha:PChar; outfile:PChar ): LongInt; cdecl;
  //VirtualXML_SetFacturarEnLineaInfo : procedure( p:LongInt; user:PChar; pwd:PChar; referencia:PChar; action:PChar ); cdecl;
  //VirtualXML_SetTimbreFiscalInfo : procedure( p:LongInt; pemcert:PChar; url:PChar ); cdecl;
  //VirtualXML_GetValues : procedure( p:LongInt; file:PChar; lFormat:LongInt ); cdecl;
  VirtualXML_AddCuentaPredial : procedure( p:LongInt; numero:PChar ); cdecl;
  VirtualXML_CancelaUUID : function( szUser:PChar; szEmisor:PChar; szCert:PChar; szKey:PChar; szPwd:PChar; szUuid:PChar; szOut:PChar ): LongInt; cdecl;
  //VirtualXML_CerKeyMatch : function( p:LongInt; szEmisor:PChar; szCSD:PChar; szKey:PChar; szKeyPwd:PChar ): LongInt; cdecl;
  //VirtualXML_CheckLicence : function( user:PChar; llave:PChar; emisor:PChar ): LongInt; cdecl;
  //VirtualXML_AddNameSpace : procedure( p:LongInt; ns:PChar; ur:PChar; sl:PChar ); cdecl;
  //VirtualXML_SetNomina : procedure( p:LongInt; NumEmpleado:PChar; CURP:PChar; TipoRegimen:PChar; FechaPago:PChar; FechaInicialPago:PChar; FechaFinalPago:PChar; NumDiasPagados:PChar; PeriodicidadPago:PChar; Antiguedad:PChar; Banco:PChar; CLABE:PChar; Departamento:PChar; FechaInicioRelLaboral:PChar; NumSeguridadSocial:PChar; Puesto:PChar; RegistroPatronal:PChar; RiesgoPuesto:PChar; SalarioBaseCotApor:PChar; SalarioDiarioIntegrado:PChar; TipoContrato:PChar; TipoJornada:PChar ); cdecl;
  //VirtualXML_NominaAddPercepcion : procedure( p:LongInt; TipoPercepcion:PChar; Clave:PChar; Concepto:PChar; ImporteGravado:PChar; ImporteExento:PChar ); cdecl;
  //VirtualXML_NominaSetDeducciones : procedure( p:LongInt; TotalGravado:PChar; TotalExento:PChar ); cdecl;
  //VirtualXML_NominaAddDeduccion : procedure( p:LongInt; TipoDeduccion:PChar; Clave:PChar; Concepto:PChar; ImporteGravado:PChar; ImporteExento:PChar ); cdecl;
  //VirtualXML_NominaAddIncapacidad : procedure( p:LongInt; DiasIncapacidad:PChar; TipoIncapacidad:PChar; Descuento:PChar ); cdecl;
  //VirtualXML_NominaAddHorasExtras : procedure( p:LongInt; Dias:PChar; TipoHoras:PChar; HorasExtra:PChar; ImportePagado:PChar ); cdecl;
  //VirtualXML_NominaSetPercepciones : procedure( p:LongInt; TotalGravado:PChar; TotalExento:PChar ); cdecl;

implementation

function CargarLibreria: Boolean;
begin
  Result:= False;
  Hbar := LoadLibrary('VirtualXML.dll');
  if Hbar = 0 then
  begin
   ShowMessage('Error: No se encontro la libreria VirtualXML.dll');
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
  VirtualXML_AddinstEducativas := GetProcAddress( Hbar, 'VirtualXML_AddinstEducativasW' );
  VirtualXML_SetImpuestosInfo := GetProcAddress( Hbar, 'VirtualXML_SetImpuestosInfoW' );
  VirtualXML_AddRetencion := GetProcAddress( Hbar, 'VirtualXML_AddRetencionW' );
  VirtualXML_AddTraslado := GetProcAddress( Hbar, 'VirtualXML_AddTrasladoW' );
  VirtualXML_SetImpuestosLocalesInfo := GetProcAddress( Hbar, 'VirtualXML_SetImpuestosLocalesInfoW' );
  VirtualXML_AddImpuestoLocalRetenido := GetProcAddress( Hbar, 'VirtualXML_AddImpuestoLocalRetenidoW' );
  VirtualXML_AddImpuestoLocalTrasladado := GetProcAddress( Hbar, 'VirtualXML_AddImpuestoLocalTrasladadoW' );
  VirtualXML_AddDonatarias := GetProcAddress( Hbar, 'VirtualXML_AddDonatariasW' );
  //VirtualXML_SetDllPath := GetProcAddress( Hbar, 'VirtualXML_SetDllPathW' );
  //VirtualXML_SetMetodo := GetProcAddress( Hbar, 'VirtualXML_SetMetodoW' );
  //VirtualXML_GetValueInFile := GetProcAddress( Hbar, 'VirtualXML_GetValueInFileW' );
  //VirtualXML_ProcessFile := GetProcAddress( Hbar, 'VirtualXML_ProcessFileW' );
  //VirtualXML_CheckFile := GetProcAddress( Hbar, 'VirtualXML_CheckFileW' );
  //VirtualXML_SetComprobanteFecha := GetProcAddress( Hbar, 'VirtualXML_SetComprobanteFechaW' );
  //VirtualXML_SetLogFile := GetProcAddress( Hbar, 'VirtualXML_SetLogFileW' );
  //VirtualXML_SetFlags := GetProcAddress( Hbar, 'VirtualXML_SetFlagsW' );
  //VirtualXML_ShowValue := GetProcAddress( Hbar, 'VirtualXML_ShowValueW' );
  //VirtualXML_FirmaSellaDocto := GetProcAddress( Hbar, 'VirtualXML_FirmaSellaDoctoW' );
  //VirtualXML_SetAddendaText := GetProcAddress( Hbar, 'VirtualXML_SetAddendaTextW' );
  //VirtualXML_SetAddenda := GetProcAddress( Hbar, 'VirtualXML_SetAddendaW' );
  //VirtualXML_AddComplemento := GetProcAddress( Hbar, 'VirtualXML_AddComplementoW' );
  //VirtualXML_AddComplementoConcepto := GetProcAddress( Hbar, 'VirtualXML_AddComplementoConceptoW' );
  //VirtualXML_Save := GetProcAddress( Hbar, 'VirtualXML_SaveW' );
  //VirtualXML_Load := GetProcAddress( Hbar, 'VirtualXML_LoadW' );
  //VirtualXML_SetTralixInfo := GetProcAddress( Hbar, 'VirtualXML_SetTralixInfoW' );
  //VirtualXML_GetTimeWithDelay := GetProcAddress( Hbar, 'VirtualXML_GetTimeWithDelayW' );
  //VirtualXML_GetEmisorInfo := GetProcAddress( Hbar, 'VirtualXML_GetEmisorInfoW' );
  //VirtualXML_SetFacturarEnLineaInfo := GetProcAddress( Hbar, 'VirtualXML_SetFacturarEnLineaInfoW' );
  //VirtualXML_SetTimbreFiscalInfo := GetProcAddress( Hbar, 'VirtualXML_SetTimbreFiscalInfoW' );
  //VirtualXML_GetValues := GetProcAddress( Hbar, 'VirtualXML_GetValuesW' );
  VirtualXML_AddCuentaPredial := GetProcAddress( Hbar, 'VirtualXML_AddCuentaPredialW' );
  VirtualXML_CancelaUUID := GetProcAddress( Hbar, 'VirtualXML_CancelaUUIDW' );
  //VirtualXML_CerKeyMatch := GetProcAddress( Hbar, 'VirtualXML_CerKeyMatchW' );
  //VirtualXML_CheckLicence := GetProcAddress( Hbar, 'VirtualXML_CheckLicenceW' );
  //VirtualXML_AddNameSpace := GetProcAddress( Hbar, 'VirtualXML_AddNameSpaceW' );
  //VirtualXML_SetNomina := GetProcAddress( Hbar, 'VirtualXML_SetNominaW' );
  //VirtualXML_NominaAddPercepcion := GetProcAddress( Hbar, 'VirtualXML_NominaAddPercepcionW' );
  //VirtualXML_NominaSetDeducciones := GetProcAddress( Hbar, 'VirtualXML_NominaSetDeduccionesW' );
  //VirtualXML_NominaAddDeduccion := GetProcAddress( Hbar, 'VirtualXML_NominaAddDeduccionW' );
  //VirtualXML_NominaAddIncapacidad := GetProcAddress( Hbar, 'VirtualXML_NominaAddIncapacidadW' );
  //VirtualXML_NominaAddHorasExtras := GetProcAddress( Hbar, 'VirtualXML_NominaAddHorasExtrasW' );
  //VirtualXML_NominaSetPercepciones := GetProcAddress( Hbar, 'VirtualXML_NominaSetPercepcionesW' );
  Result:= True;
end;

function GenerarCFDI(var Ruta : String; Documento: TDocumentoComprobanteFiscal;
Certificado: TFECertificado; var TimbradoCFDI: TTimbreCFDI; Produccion: Boolean = False): Boolean;
var
  ArchivoXML: TFileName;
  I: Integer;
  RutaCompleta : String;
  TotalImpuestosTrasladados: Currency;
  TotalImpuestosRetenidos: Currency;

  function GetFormaDePago(FormaDePago: TFEFormaDePago): string;
  begin
    case FormaDePago of
      fpUnaSolaExhibicion: Result:= PagoUnaExhibicion;
      fpParcialidades: Result:= PagoParcialidades;
    end;
  end;

  function GetTipoComprobante(TipoComprobante: TFETipoComprobante): string;
  begin
    case TipoComprobante of
      tcIngreso: Result:= TipoIngreso;
      tcEgreso: Result:= TipoEgreso;
      tcTraslado: Result:= TipoTraslado;
    end;
  end;

  procedure SetConceptos(Conceptos: TFEConceptos);
  var
    I: Integer;
  begin
    for I := 0 to Length(Conceptos) - 1 do
    begin
      // VirtualXML_AddConcepto(hXml, '1', 'Pza', 'Producto', '200.00', '200.00', '');
      VirtualXML_AddConcepto(hXML,
      PWideChar(TFEReglamentacion.ComoCantidad(Conceptos[I].Cantidad)),
      PWideChar(Conceptos[I].Unidad),
      PWideChar(TFEReglamentacion.ComoCadena(Conceptos[I].Descripcion)),
      PWideChar(TFEReglamentacion.ComoMoneda(Conceptos[I].ValorUnitario)),
      PWideChar(TFEReglamentacion.ComoMoneda(Conceptos[I].ValorUnitario * Conceptos[I].Cantidad)),
      PWideChar(TFEReglamentacion.ComoCadena(Conceptos[I].NoIdentificacion)));
      //  VirtualXML_AddInformacionAduanera(hXml, '2012-04-02', '1234', 'mexico');
      if (Conceptos[I].DatosAduana.NumeroDocumento <> EmptyStr) then
        VirtualXML_AddInformacionAduanera(hXML,
        PWideChar(TFEReglamentacion.ComoFechaAduanera(Conceptos[I].DatosAduana.FechaExpedicion)),
        PWideChar(Conceptos[I].DatosAduana.NumeroDocumento),
        PWideChar(TFEReglamentacion.ComoCadena(Conceptos[I].DatosAduana.Aduana)));
      if Trim(Conceptos[I].CuentaPredial) <> '' then
        VirtualXML_AddCuentaPredial(hXML,
        PWideChar(TFEReglamentacion.ComoCadena(Conceptos[I].CuentaPredial)));
    end;
  end;

  procedure SetImpuestosRetenidos(ImpuestosRetenidos: TFEImpuestosRetenidos);
  var
    I: Integer;
  begin
    // VirtualXML_AddRetencion : procedure( p:LongInt; impuesto:PChar; importe:PChar ); cdecl;
    for I := 0 to Length(ImpuestosRetenidos) - 1 do
    begin
      VirtualXML_AddRetencion(hXMl,
      PWideChar(TFEReglamentacion.ComoCadena(ImpuestosRetenidos[I].Nombre)),
      PWideChar(TFEReglamentacion.ComoMoneda(ImpuestosRetenidos[I].Importe)));
      TotalImpuestosRetenidos:= TotalImpuestosRetenidos + ImpuestosRetenidos[I].Importe;
    end;
  end;

  procedure SetImpuestosTrasladados(ImpuestosTrasladados: TFEImpuestosTrasladados);
  var
    I: Integer;
  begin
    // VirtualXML_AddTraslado : procedure( p:LongInt; impuesto:PChar; tasa:PChar; importe:PChar ); cdecl;
    for I := 0 to Length(ImpuestosTrasladados) - 1 do
    begin
      VirtualXML_AddTraslado(hXML,
      PWideChar(TFEReglamentacion.ComoCadena(ImpuestosTrasladados[I].Nombre)),
      PWideChar(TFEReglamentacion.ComoTasaImpuesto(ImpuestosTrasladados[I].Tasa)),
      PWideChar(TFEReglamentacion.ComoMoneda(ImpuestosTrasladados[I].Importe)));
      TotalImpuestosTrasladados:= TotalImpuestosTrasladados + ImpuestosTrasladados[I].Importe;
    end;
  end;

begin
  Result:= False;
  if not CargarLibreria then Exit;
  try
    // Generar el XML con las funciones de VirtualXML
    hXML := VirtualXML_New(PChar(CFDIVersion));
    if Produccion then
       VirtualXML_SetVirtualPACInfo(hXML, 'RMunguia', 'vpac-sef')
    else                                        //52079295     -- May 12/17
       VirtualXML_SetVirtualPACInfo(hXML, 'demo_RMunguia', 'virtual');
    // VirtualXML_SetComprobanteInfo(hXml, 'A', '1', '%cb_date', DatosCFDI[1], 'Pago en una sola exibición', '1000.00', '', '1160.00', '', '', '', 'No Disponible', '');                                                                                                                                                                                                  // V  Motivo decto tampoco en edt
    VirtualXML_SetComprobanteInfo(hXML,
    PWideChar(string(Documento.Serie)), PWideChar(IntToStr(Documento.Folio)),
    PWideChar(TFEReglamentacion.ComoFechaHora(Documento.FechaGeneracion)),
    PWideChar(Documento.TipoCompTexto{GetTipoComprobante(Documento.Tipo)}), //Dic 29/15   N
    PWideChar(GetFormaDePago(Documento.FormaDePago)),
    PWideChar(TFEReglamentacion.ComoMoneda(Documento.SubTotal)),
    PWideChar(TFEReglamentacion.ComoMoneda(Documento.DescuentoMonto)),
    PWideChar(TFEReglamentacion.ComoMoneda(Documento.Total)),
    PWideChar(Documento.Moneda),   // se quito  TFEReglamentacion.ComoCadena //Estaban invertidos Jun 27/16
    PWideChar(TFEReglamentacion.ComoMoneda(Documento.TipoCambio)), //Ojo estaban invertidos!!!!!! jun 27/16
    PWideChar(TFEReglamentacion.ComoCadena(Documento.CondicionesDePago)),
    PWideChar(TFEReglamentacion.ComoCadena(Documento.MetodoDePago)),
    PWideChar(TFEReglamentacion.ComoCadena(Documento.DescuentoMotivo)));
    // VirtualXML_SetComprobanteInfoEx(hXml, 'Mineral de la Reforma', '', '', '', '', '');
    VirtualXML_SetComprobanteInfoEx(hXML,
    PWideChar(Documento.LugarDeExpedicion), PWideChar(Documento.NumeroDeCuenta), '', '', '', '');
    // VirtualXML_SetEmisorInfo(hXml, 'AAQM610917QJA', 'Oscar Joel Lira Lira');
    VirtualXML_SetEmisorInfo(hXML, PWideChar(string(Documento.Emisor.RFC)), PWideChar(Documento.Emisor.Nombre));
    //VirtualXML_SetEmisorDomicilio(hXml, 'Circuito San Francisco', '330', '', 'Rinconadas de San Francisco', 'Mineral de la Reforma', '', 'Mineral de la Reforma', 'Hidalgo', 'México', '42185');
    VirtualXML_SetEmisorDomicilio(hXML,
    PWideChar(Documento.Emisor.Direccion.Calle),
    PWideChar(Documento.Emisor.Direccion.NoExterior),
    PWideChar(Documento.Emisor.Direccion.NoInterior),
    PWideChar(Documento.Emisor.Direccion.Colonia),
    PWideChar(Documento.Emisor.Direccion.Localidad),
    PWideChar(Documento.Emisor.Direccion.Referencia),
    PWideChar(Documento.Emisor.Direccion.Municipio),
    PWideChar(Documento.Emisor.Direccion.Estado),
    PWideChar(Documento.Emisor.Direccion.Pais),
    PWideChar(Documento.Emisor.Direccion.CodigoPostal));
    VirtualXML_SetEmisorExpedidoEn(hXML,
    PWideChar(Documento.Emisor.ExpedidoEn.Calle),
    PWideChar(Documento.Emisor.ExpedidoEn.NoExterior),
    PWideChar(Documento.Emisor.ExpedidoEn.NoInterior),
    PWideChar(Documento.Emisor.ExpedidoEn.Colonia),
    PWideChar(Documento.Emisor.ExpedidoEn.Localidad),
    PWideChar(Documento.Emisor.ExpedidoEn.Referencia),
    PWideChar(Documento.Emisor.ExpedidoEn.Municipio),
    PWideChar(Documento.Emisor.ExpedidoEn.Estado),
    PWideChar(Documento.Emisor.ExpedidoEn.Pais),
    PWideChar(Documento.Emisor.ExpedidoEn.CodigoPostal));
    // VirtualXML_AddEmisorRegimenFiscal(hXml, 'Persona Fisica');
    for I := 0 to Length(Documento.Emisor.Regimenes) - 1 do
      VirtualXML_AddEmisorRegimenFiscal(hXML, PWideChar(Documento.Emisor.Regimenes[I]));
    // VirtualXML_SetReceptorInfo(hXml, 'CADL781013T77', 'Laura Calva Dañiel');
    VirtualXML_SetReceptorInfo(hXML, PWideChar(string(Documento.Receptor.RFC)), PWideChar(Documento.Receptor.Nombre));
    // VirtualXML_SetReceptorDomicilio(hXml, 'Circuito San Francisco', '330', '', 'Rinconadas de San Francisco', 'Mineral de la Reforma', '', 'Mineral de la Reforma', 'Hidalgo', 'México', '42185');
    VirtualXML_SetReceptorDomicilio(hXML,
    PWideChar(Documento.Receptor.Direccion.Calle),
    PWideChar(Documento.Receptor.Direccion.NoExterior),
    PWideChar(Documento.Receptor.Direccion.NoInterior),
    PWideChar(Documento.Receptor.Direccion.Colonia),
    PWideChar(Documento.Receptor.Direccion.Localidad),
    PWideChar(Documento.Receptor.Direccion.Referencia),
    PWideChar(Documento.Receptor.Direccion.Municipio),
    PWideChar(Documento.Receptor.Direccion.Estado),
    PWideChar(Documento.Receptor.Direccion.Pais),
    PWideChar(Documento.Receptor.Direccion.CodigoPostal));
    SetConceptos(Documento.Conceptos);
    TotalImpuestosTrasladados:= 0;
    TotalImpuestosRetenidos:= 0;
    SetImpuestosRetenidos(Documento.ImpuestosRetenidos);
    SetImpuestosTrasladados(Documento.ImpuestosTrasladados);
    VirtualXML_SetImpuestosInfo(hXML, PWideChar(TFEReglamentacion.ComoMoneda(TotalImpuestosTrasladados)),
    PWideChar(TFEReglamentacion.ComoMoneda(TotalImpuestosRetenidos)));

  // VirtualXML_ProcesaDocumento(hXml, 'aaqm610917qja.cer', 'aaqm610917qja_1011180955s.key', '12345678a', pansichar(NomArchi));
  // RutaCompleta := Ruta + string(Documento.Emisor.RFC) + string(Documento.Serie) + IntToStr(Documento.Folio) + feXML;
   RutaCompleta := Ruta + string(Documento.Receptor.RFC) +'_'+ string(Documento.Serie) + IntToStr(Documento.Folio) + feXML;// dic 29/15 N
   ArchivoXML := RutaCompleta;                           //Modificado porque aca interesa el receptor Dic 21/15
   Ruta := RutaCompleta;
  // ArchivoXML:= strDir + PathDelim + string(Documento.Emisor.RFC) + string(Documento.Serie) + IntToStr(Documento.Folio) + feXML;
   VirtualXML_ProcesaDocumento(hXML, PWideChar(Certificado.Ruta), PWideChar(Certificado.LlavePrivada.Ruta), PWideChar(Certificado.LlavePrivada.Clave), PWideChar(ArchivoXML));
  // Ejecutamos la función de firmado y sellado, esta función realiza TODAS las labores de generación del CFDI que son:
  //
  // 1. Firmado y sellado del xml de entrada
  // 2. Envio del XML firmado y sellado al PAC
  // 3. Recuperación del timbre fiscal desde el PAC
  // 4. Inclusión del complemento de Timbre Fiscal Digital dentro del XML
  // 5. Generación del CBB (Código de Barras Bidimensional) para el documento impreso
  //
  //Se eliminó un pedazo para ahorrar espacio
  // Mensaje en pantalla indicando el resultado de la ejecución de CiberPAC
  //   Application.MessageBox( VirtualXML_GetValue( hXml, 1 ), '1' );      // constante de descripcion del error
  //   Application.MessageBox( VirtualXML_GetValue( hXml, 2 ), '2' );      // descripcion del error
  //   Application.MessageBox( VirtualXML_GetValue( hXml, 3 ), '3' );      // No certificado del emisor
  //   Application.MessageBox( VirtualXML_GetValue( hXml, 4 ), '4' );      // Sello del emisor
  //   Application.MessageBox( VirtualXML_GetValue( hXml, 5 ), '5' );      // Cadena Original del documento
  //   Application.MessageBox( VirtualXML_GetValue( hXml, 6 ), '6' );      // No. certificado del SAT
  //   Application.MessageBox( VirtualXML_GetValue( hXml, 7 ), '7' );      // Sello del SAT
  //   Application.MessageBox( VirtualXML_GetValue( hXml, 8 ), '8' );      // Cadena del timbre
  //   Application.MessageBox( VirtualXML_GetValue( hXml, 9 ), '9' );      // UUID
  //   Application.MessageBox( VirtualXML_GetValue( hXml, 10 ), '10' );    // fecha del timbrado
  //   Application.MessageBox( VirtualXML_GetValue( hXml, 11 ), '11' );    // inicio de vigencia del certificado
  //   Application.MessageBox( VirtualXML_GetValue( hXml, 12), '12' );     // fin de vigencia del certificado
  //   Application.MessageBox( VirtualXML_GetValue( hXml, 13), '13' );     // VPID
  //   Application.MessageBox( VirtualXML_GetValue( hXml, 14), '14' );     // timbres restantes
  //   Application.MessageBox( VirtualXML_GetValue( hXml, 15), '15' );     // version de la libreria
  // Revisamos si se generó algun error durante el proceso de firmado y sellado

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
     TimbradoCFDI.NombreArchivo:= ArchivoXML;
     Documento.FacturaGenerada:= (TimbradoCFDI.Resultado = 'VIRTUALXML_OK');
     Result:= Documento.FacturaGenerada;
  finally
    VirtualXML_Free(hXML);
    FreeLibrary(Hbar);
  end;
end;

function CancelarCFDI(UUID: string; ArchivoOUT: string; Certificado: TFECertificado;
var Respuesta: string; Produccion: Boolean = False): Boolean;
var
  hXML: LongInt;
  hBar: THandle;
  VirtualXML_New : function( szVersion:PChar ): LongInt; cdecl;
  VirtualXML_ProcesaDocumento : function( p:LongInt; csd:PChar; key:PChar; keypwd:PChar; outfile:PChar ): LongInt; cdecl;
  VirtualXML_GetValue : function( p:LongInt; value:LongInt ): PChar; cdecl;
  VirtualXML_Free : procedure( p:LongInt ); cdecl;
  VirtualXML_SetVirtualPACInfo : procedure( p:LongInt; szUser:PChar; servidor:PChar ); cdecl;
  VirtualXML_CancelaUUID : function( szUser:PChar; szEmisor:PChar; szCert:PChar; szKey:PChar; szPwd:PChar; szUuid:PChar; szOut:PChar ): LongInt; cdecl;
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
    VirtualXML_CancelaUUID := GetProcAddress( Hbar, 'VirtualXML_CancelaUUIDW' );
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
      Valor:= VirtualXML_CancelaUUID('RMunguia',
      PWideChar(Certificado.RFCAlQuePertenece),
      PWideChar(Certificado.Ruta),
      PWideChar(Certificado.LlavePrivada.Ruta),
      PWideChar(Certificado.LlavePrivada.Clave),
      PWideChar(UUID),
      PWideChar(ArchivoOUT));
    end
    else
    begin                                     //52079295 -- May 12/17
      VirtualXML_SetVirtualPACInfo(hXML, 'demo_RMunguia', 'virtual'); //CAmbio nombre del usuario a minusculs las primeras Jun 16/17
      Valor:= VirtualXML_CancelaUUID('demo_RMunguia',
      PWideChar(Certificado.RFCAlQuePertenece),
      PWideChar(Certificado.Ruta),
      PWideChar(Certificado.LlavePrivada.Ruta),
      PWideChar(Certificado.LlavePrivada.Clave),
      PWideChar(UUID),
      PWideChar(ArchivoOUT));
    end;
//    Result:= (Valor=0); //DEjó de funcionar
    Result:= FileExists(ArchivoOUT);
    Respuesta:=intToStr(valor);
  finally
    VirtualXML_Free(hXML);
    FreeLibrary(Hbar);
  end;

//  if  Valor =0 then
//  begin
//    Assignfile(F,'Cancelacion.txt');
//    reset(F);
//    readln(F,Resultado);
//    CloseFile(F);
//     if pos('previamente',Resultado)>0 then
//      ShowMessage('El comprobante ya habia sido cancelado anteriormente')
//    else
//    if pos('UUID CANCELADO CORRECTAMENTE' ,Resultado)>0 then
//    begin
//      Result:=true;
//      ShowMessage(DatosAdi + #13+'Documento cancelado en SAT. Recuerde que debe descargar del SAT, los acuses de cancelación');
//    end
//    else
//      ShowMessage(Resultado);
//  end
//  else
//    ShowMessage('Ocurrio un error Cancelando el CFDI . Error '+intTostr(Valor));

end;

end.
