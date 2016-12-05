
{*******************************************************************************}
{                                                                               }
{                               XML Data Binding                                }
{                                                                               }
{         Generated on: 04/03/2015 11:09:05 a. m.                               }
{       Generated from: http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv32.xsd   }
{                                                                               }
{*******************************************************************************}

unit cfdv32;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLComprobante = interface;
  IXMLComprobante_Emisor = interface;
  IXMLT_UbicacionFiscal = interface;
  IXMLT_Ubicacion = interface;
  IXMLComprobante_Emisor_RegimenFiscal = interface;
  IXMLComprobante_Emisor_RegimenFiscalList = interface;
  IXMLComprobante_Receptor = interface;
  IXMLComprobante_Conceptos = interface;
  IXMLComprobante_Conceptos_Concepto = interface;
  IXMLT_InformacionAduanera = interface;
  IXMLT_InformacionAduaneraList = interface;
  IXMLComprobante_Conceptos_Concepto_CuentaPredial = interface;
  IXMLComprobante_Conceptos_Concepto_ComplementoConcepto = interface;
  IXMLComprobante_Conceptos_Concepto_Parte = interface;
  IXMLComprobante_Conceptos_Concepto_ParteList = interface;
  IXMLComprobante_Impuestos = interface;
  IXMLComprobante_Impuestos_Retenciones = interface;
  IXMLComprobante_Impuestos_Retenciones_Retencion = interface;
  IXMLComprobante_Impuestos_Traslados = interface;
  IXMLComprobante_Impuestos_Traslados_Traslado = interface;
  IXMLComprobante_Complemento = interface;
  IXMLComprobante_Addenda = interface;

{ IXMLComprobante }

  IXMLComprobante = interface(IXMLNode)
    ['{663BA582-ECF8-4262-897D-25BC952E68B9}']
    { Property Accessors }
    function Get_Version: UnicodeString;
    function Get_Serie: UnicodeString;
    function Get_Folio: UnicodeString;
    function Get_Fecha: UnicodeString;
    function Get_Sello: UnicodeString;
    function Get_FormaDePago: UnicodeString;
    function Get_NoCertificado: UnicodeString;
    function Get_Certificado: UnicodeString;
    function Get_CondicionesDePago: UnicodeString;
    function Get_SubTotal: UnicodeString;
    function Get_Descuento: UnicodeString;
    function Get_MotivoDescuento: UnicodeString;
    function Get_TipoCambio: UnicodeString;
    function Get_Moneda: UnicodeString;
    function Get_Total: UnicodeString;
    function Get_TipoDeComprobante: UnicodeString;
    function Get_MetodoDePago: UnicodeString;
    function Get_LugarExpedicion: UnicodeString;
    function Get_NumCtaPago: UnicodeString;
    function Get_FolioFiscalOrig: UnicodeString;
    function Get_SerieFolioFiscalOrig: UnicodeString;
    function Get_FechaFolioFiscalOrig: UnicodeString;
    function Get_MontoFolioFiscalOrig: UnicodeString;
    function Get_Emisor: IXMLComprobante_Emisor;
    function Get_Receptor: IXMLComprobante_Receptor;
    function Get_Conceptos: IXMLComprobante_Conceptos;
    function Get_Impuestos: IXMLComprobante_Impuestos;
    function Get_Complemento: IXMLComprobante_Complemento;
    function Get_Addenda: IXMLComprobante_Addenda;
    procedure Set_Version(Value: UnicodeString);
    procedure Set_Serie(Value: UnicodeString);
    procedure Set_Folio(Value: UnicodeString);
    procedure Set_Fecha(Value: UnicodeString);
    procedure Set_Sello(Value: UnicodeString);
    procedure Set_FormaDePago(Value: UnicodeString);
    procedure Set_NoCertificado(Value: UnicodeString);
    procedure Set_Certificado(Value: UnicodeString);
    procedure Set_CondicionesDePago(Value: UnicodeString);
    procedure Set_SubTotal(Value: UnicodeString);
    procedure Set_Descuento(Value: UnicodeString);
    procedure Set_MotivoDescuento(Value: UnicodeString);
    procedure Set_TipoCambio(Value: UnicodeString);
    procedure Set_Moneda(Value: UnicodeString);
    procedure Set_Total(Value: UnicodeString);
    procedure Set_TipoDeComprobante(Value: UnicodeString);
    procedure Set_MetodoDePago(Value: UnicodeString);
    procedure Set_LugarExpedicion(Value: UnicodeString);
    procedure Set_NumCtaPago(Value: UnicodeString);
    procedure Set_FolioFiscalOrig(Value: UnicodeString);
    procedure Set_SerieFolioFiscalOrig(Value: UnicodeString);
    procedure Set_FechaFolioFiscalOrig(Value: UnicodeString);
    procedure Set_MontoFolioFiscalOrig(Value: UnicodeString);
    { Methods & Properties }
    property Version: UnicodeString read Get_Version write Set_Version;
    property Serie: UnicodeString read Get_Serie write Set_Serie;
    property Folio: UnicodeString read Get_Folio write Set_Folio;
    property Fecha: UnicodeString read Get_Fecha write Set_Fecha;
    property Sello: UnicodeString read Get_Sello write Set_Sello;
    property FormaDePago: UnicodeString read Get_FormaDePago write Set_FormaDePago;
    property NoCertificado: UnicodeString read Get_NoCertificado write Set_NoCertificado;
    property Certificado: UnicodeString read Get_Certificado write Set_Certificado;
    property CondicionesDePago: UnicodeString read Get_CondicionesDePago write Set_CondicionesDePago;
    property SubTotal: UnicodeString read Get_SubTotal write Set_SubTotal;
    property Descuento: UnicodeString read Get_Descuento write Set_Descuento;
    property MotivoDescuento: UnicodeString read Get_MotivoDescuento write Set_MotivoDescuento;
    property TipoCambio: UnicodeString read Get_TipoCambio write Set_TipoCambio;
    property Moneda: UnicodeString read Get_Moneda write Set_Moneda;
    property Total: UnicodeString read Get_Total write Set_Total;
    property TipoDeComprobante: UnicodeString read Get_TipoDeComprobante write Set_TipoDeComprobante;
    property MetodoDePago: UnicodeString read Get_MetodoDePago write Set_MetodoDePago;
    property LugarExpedicion: UnicodeString read Get_LugarExpedicion write Set_LugarExpedicion;
    property NumCtaPago: UnicodeString read Get_NumCtaPago write Set_NumCtaPago;
    property FolioFiscalOrig: UnicodeString read Get_FolioFiscalOrig write Set_FolioFiscalOrig;
    property SerieFolioFiscalOrig: UnicodeString read Get_SerieFolioFiscalOrig write Set_SerieFolioFiscalOrig;
    property FechaFolioFiscalOrig: UnicodeString read Get_FechaFolioFiscalOrig write Set_FechaFolioFiscalOrig;
    property MontoFolioFiscalOrig: UnicodeString read Get_MontoFolioFiscalOrig write Set_MontoFolioFiscalOrig;
    property Emisor: IXMLComprobante_Emisor read Get_Emisor;
    property Receptor: IXMLComprobante_Receptor read Get_Receptor;
    property Conceptos: IXMLComprobante_Conceptos read Get_Conceptos;
    property Impuestos: IXMLComprobante_Impuestos read Get_Impuestos;
    property Complemento: IXMLComprobante_Complemento read Get_Complemento;
    property Addenda: IXMLComprobante_Addenda read Get_Addenda;
  end;

{ IXMLComprobante_Emisor }

  IXMLComprobante_Emisor = interface(IXMLNode)
    ['{477F1276-CE32-43B7-BDF4-2E1E23296C00}']
    { Property Accessors }
    function Get_Rfc: UnicodeString;
    function Get_Nombre: UnicodeString;
    function Get_DomicilioFiscal: IXMLT_UbicacionFiscal;
    function Get_ExpedidoEn: IXMLT_Ubicacion;
    function Get_RegimenFiscal: IXMLComprobante_Emisor_RegimenFiscalList;
    procedure Set_Rfc(Value: UnicodeString);
    procedure Set_Nombre(Value: UnicodeString);
    { Methods & Properties }
    property Rfc: UnicodeString read Get_Rfc write Set_Rfc;
    property Nombre: UnicodeString read Get_Nombre write Set_Nombre;
    property DomicilioFiscal: IXMLT_UbicacionFiscal read Get_DomicilioFiscal;
    property ExpedidoEn: IXMLT_Ubicacion read Get_ExpedidoEn;
    property RegimenFiscal: IXMLComprobante_Emisor_RegimenFiscalList read Get_RegimenFiscal;
  end;

{ IXMLT_UbicacionFiscal }

  IXMLT_UbicacionFiscal = interface(IXMLNode)
    ['{D843A01E-BC28-4AB7-B70E-D359C1779B02}']
    { Property Accessors }
    function Get_Calle: UnicodeString;
    function Get_NoExterior: UnicodeString;
    function Get_NoInterior: UnicodeString;
    function Get_Colonia: UnicodeString;
    function Get_Localidad: UnicodeString;
    function Get_Referencia: UnicodeString;
    function Get_Municipio: UnicodeString;
    function Get_Estado: UnicodeString;
    function Get_Pais: UnicodeString;
    function Get_CodigoPostal: UnicodeString;
    procedure Set_Calle(Value: UnicodeString);
    procedure Set_NoExterior(Value: UnicodeString);
    procedure Set_NoInterior(Value: UnicodeString);
    procedure Set_Colonia(Value: UnicodeString);
    procedure Set_Localidad(Value: UnicodeString);
    procedure Set_Referencia(Value: UnicodeString);
    procedure Set_Municipio(Value: UnicodeString);
    procedure Set_Estado(Value: UnicodeString);
    procedure Set_Pais(Value: UnicodeString);
    procedure Set_CodigoPostal(Value: UnicodeString);
    { Methods & Properties }
    property Calle: UnicodeString read Get_Calle write Set_Calle;
    property NoExterior: UnicodeString read Get_NoExterior write Set_NoExterior;
    property NoInterior: UnicodeString read Get_NoInterior write Set_NoInterior;
    property Colonia: UnicodeString read Get_Colonia write Set_Colonia;
    property Localidad: UnicodeString read Get_Localidad write Set_Localidad;
    property Referencia: UnicodeString read Get_Referencia write Set_Referencia;
    property Municipio: UnicodeString read Get_Municipio write Set_Municipio;
    property Estado: UnicodeString read Get_Estado write Set_Estado;
    property Pais: UnicodeString read Get_Pais write Set_Pais;
    property CodigoPostal: UnicodeString read Get_CodigoPostal write Set_CodigoPostal;
  end;

{ IXMLT_Ubicacion }

  IXMLT_Ubicacion = interface(IXMLNode)
    ['{55594FB6-BC4D-44E9-87C5-757C9660B3D4}']
    { Property Accessors }
    function Get_Calle: UnicodeString;
    function Get_NoExterior: UnicodeString;
    function Get_NoInterior: UnicodeString;
    function Get_Colonia: UnicodeString;
    function Get_Localidad: UnicodeString;
    function Get_Referencia: UnicodeString;
    function Get_Municipio: UnicodeString;
    function Get_Estado: UnicodeString;
    function Get_Pais: UnicodeString;
    function Get_CodigoPostal: UnicodeString;
    procedure Set_Calle(Value: UnicodeString);
    procedure Set_NoExterior(Value: UnicodeString);
    procedure Set_NoInterior(Value: UnicodeString);
    procedure Set_Colonia(Value: UnicodeString);
    procedure Set_Localidad(Value: UnicodeString);
    procedure Set_Referencia(Value: UnicodeString);
    procedure Set_Municipio(Value: UnicodeString);
    procedure Set_Estado(Value: UnicodeString);
    procedure Set_Pais(Value: UnicodeString);
    procedure Set_CodigoPostal(Value: UnicodeString);
    { Methods & Properties }
    property Calle: UnicodeString read Get_Calle write Set_Calle;
    property NoExterior: UnicodeString read Get_NoExterior write Set_NoExterior;
    property NoInterior: UnicodeString read Get_NoInterior write Set_NoInterior;
    property Colonia: UnicodeString read Get_Colonia write Set_Colonia;
    property Localidad: UnicodeString read Get_Localidad write Set_Localidad;
    property Referencia: UnicodeString read Get_Referencia write Set_Referencia;
    property Municipio: UnicodeString read Get_Municipio write Set_Municipio;
    property Estado: UnicodeString read Get_Estado write Set_Estado;
    property Pais: UnicodeString read Get_Pais write Set_Pais;
    property CodigoPostal: UnicodeString read Get_CodigoPostal write Set_CodigoPostal;
  end;

{ IXMLComprobante_Emisor_RegimenFiscal }

  IXMLComprobante_Emisor_RegimenFiscal = interface(IXMLNode)
    ['{ACA5644F-88A8-4096-9AD7-E2835F5D1886}']
    { Property Accessors }
    function Get_Regimen: UnicodeString;
    procedure Set_Regimen(Value: UnicodeString);
    { Methods & Properties }
    property Regimen: UnicodeString read Get_Regimen write Set_Regimen;
  end;

{ IXMLComprobante_Emisor_RegimenFiscalList }

  IXMLComprobante_Emisor_RegimenFiscalList = interface(IXMLNodeCollection)
    ['{366657A2-0F31-4F16-AB93-DDCB522CED25}']
    { Methods & Properties }
    function Add: IXMLComprobante_Emisor_RegimenFiscal;
    function Insert(const Index: Integer): IXMLComprobante_Emisor_RegimenFiscal;

    function Get_Item(Index: Integer): IXMLComprobante_Emisor_RegimenFiscal;
    property Items[Index: Integer]: IXMLComprobante_Emisor_RegimenFiscal read Get_Item; default;
  end;

{ IXMLComprobante_Receptor }

  IXMLComprobante_Receptor = interface(IXMLNode)
    ['{1025FBAE-3934-46E3-8F48-90122CB7772D}']
    { Property Accessors }
    function Get_Rfc: UnicodeString;
    function Get_Nombre: UnicodeString;
    function Get_Domicilio: IXMLT_Ubicacion;
    procedure Set_Rfc(Value: UnicodeString);
    procedure Set_Nombre(Value: UnicodeString);
    { Methods & Properties }
    property Rfc: UnicodeString read Get_Rfc write Set_Rfc;
    property Nombre: UnicodeString read Get_Nombre write Set_Nombre;
    property Domicilio: IXMLT_Ubicacion read Get_Domicilio;
  end;

{ IXMLComprobante_Conceptos }

  IXMLComprobante_Conceptos = interface(IXMLNodeCollection)
    ['{0AA8D413-12A6-4C27-B9F0-E1DD995599C8}']
    { Property Accessors }
    function Get_Concepto(Index: Integer): IXMLComprobante_Conceptos_Concepto;
    { Methods & Properties }
    function Add: IXMLComprobante_Conceptos_Concepto;
    function Insert(const Index: Integer): IXMLComprobante_Conceptos_Concepto;
    property Concepto[Index: Integer]: IXMLComprobante_Conceptos_Concepto read Get_Concepto; default;
  end;

{ IXMLComprobante_Conceptos_Concepto }

  IXMLComprobante_Conceptos_Concepto = interface(IXMLNode)
    ['{E12E9E89-0A35-4691-9F24-EA314764C1ED}']
    { Property Accessors }
    function Get_Cantidad: UnicodeString;
    function Get_Unidad: UnicodeString;
    function Get_NoIdentificacion: UnicodeString;
    function Get_Descripcion: UnicodeString;
    function Get_ValorUnitario: UnicodeString;
    function Get_Importe: UnicodeString;
    function Get_InformacionAduanera: IXMLT_InformacionAduaneraList;
    function Get_CuentaPredial: IXMLComprobante_Conceptos_Concepto_CuentaPredial;
    function Get_ComplementoConcepto: IXMLComprobante_Conceptos_Concepto_ComplementoConcepto;
    function Get_Parte: IXMLComprobante_Conceptos_Concepto_ParteList;
    procedure Set_Cantidad(Value: UnicodeString);
    procedure Set_Unidad(Value: UnicodeString);
    procedure Set_NoIdentificacion(Value: UnicodeString);
    procedure Set_Descripcion(Value: UnicodeString);
    procedure Set_ValorUnitario(Value: UnicodeString);
    procedure Set_Importe(Value: UnicodeString);
    { Methods & Properties }
    property Cantidad: UnicodeString read Get_Cantidad write Set_Cantidad;
    property Unidad: UnicodeString read Get_Unidad write Set_Unidad;
    property NoIdentificacion: UnicodeString read Get_NoIdentificacion write Set_NoIdentificacion;
    property Descripcion: UnicodeString read Get_Descripcion write Set_Descripcion;
    property ValorUnitario: UnicodeString read Get_ValorUnitario write Set_ValorUnitario;
    property Importe: UnicodeString read Get_Importe write Set_Importe;
    property InformacionAduanera: IXMLT_InformacionAduaneraList read Get_InformacionAduanera;
    property CuentaPredial: IXMLComprobante_Conceptos_Concepto_CuentaPredial read Get_CuentaPredial;
    property ComplementoConcepto: IXMLComprobante_Conceptos_Concepto_ComplementoConcepto read Get_ComplementoConcepto;
    property Parte: IXMLComprobante_Conceptos_Concepto_ParteList read Get_Parte;
  end;

{ IXMLT_InformacionAduanera }

  IXMLT_InformacionAduanera = interface(IXMLNode)
    ['{6B01E45D-25D3-40D6-AF76-AB5A489E4007}']
    { Property Accessors }
    function Get_Numero: UnicodeString;
    function Get_Fecha: UnicodeString;
    function Get_Aduana: UnicodeString;
    procedure Set_Numero(Value: UnicodeString);
    procedure Set_Fecha(Value: UnicodeString);
    procedure Set_Aduana(Value: UnicodeString);
    { Methods & Properties }
    property Numero: UnicodeString read Get_Numero write Set_Numero;
    property Fecha: UnicodeString read Get_Fecha write Set_Fecha;
    property Aduana: UnicodeString read Get_Aduana write Set_Aduana;
  end;

{ IXMLT_InformacionAduaneraList }

  IXMLT_InformacionAduaneraList = interface(IXMLNodeCollection)
    ['{84BC8F65-8A6D-4398-940E-1DF9D994E03B}']
    { Methods & Properties }
    function Add: IXMLT_InformacionAduanera;
    function Insert(const Index: Integer): IXMLT_InformacionAduanera;

    function Get_Item(Index: Integer): IXMLT_InformacionAduanera;
    property Items[Index: Integer]: IXMLT_InformacionAduanera read Get_Item; default;
  end;

{ IXMLComprobante_Conceptos_Concepto_CuentaPredial }

  IXMLComprobante_Conceptos_Concepto_CuentaPredial = interface(IXMLNode)
    ['{41865BD7-F89B-4365-AC0D-A964C2F2E63B}']
    { Property Accessors }
    function Get_Numero: UnicodeString;
    procedure Set_Numero(Value: UnicodeString);
    { Methods & Properties }
    property Numero: UnicodeString read Get_Numero write Set_Numero;
  end;

{ IXMLComprobante_Conceptos_Concepto_ComplementoConcepto }

  IXMLComprobante_Conceptos_Concepto_ComplementoConcepto = interface(IXMLNode)
    ['{81E34942-7027-4F94-B107-478FC849E5E1}']
  end;

{ IXMLComprobante_Conceptos_Concepto_Parte }

  IXMLComprobante_Conceptos_Concepto_Parte = interface(IXMLNodeCollection)
    ['{485266D2-F543-4C8C-8C8D-AF1D43D748CD}']
    { Property Accessors }
    function Get_Cantidad: UnicodeString;
    function Get_Unidad: UnicodeString;
    function Get_NoIdentificacion: UnicodeString;
    function Get_Descripcion: UnicodeString;
    function Get_ValorUnitario: UnicodeString;
    function Get_Importe: UnicodeString;
    function Get_InformacionAduanera(Index: Integer): IXMLT_InformacionAduanera;
    procedure Set_Cantidad(Value: UnicodeString);
    procedure Set_Unidad(Value: UnicodeString);
    procedure Set_NoIdentificacion(Value: UnicodeString);
    procedure Set_Descripcion(Value: UnicodeString);
    procedure Set_ValorUnitario(Value: UnicodeString);
    procedure Set_Importe(Value: UnicodeString);
    { Methods & Properties }
    function Add: IXMLT_InformacionAduanera;
    function Insert(const Index: Integer): IXMLT_InformacionAduanera;
    property Cantidad: UnicodeString read Get_Cantidad write Set_Cantidad;
    property Unidad: UnicodeString read Get_Unidad write Set_Unidad;
    property NoIdentificacion: UnicodeString read Get_NoIdentificacion write Set_NoIdentificacion;
    property Descripcion: UnicodeString read Get_Descripcion write Set_Descripcion;
    property ValorUnitario: UnicodeString read Get_ValorUnitario write Set_ValorUnitario;
    property Importe: UnicodeString read Get_Importe write Set_Importe;
    property InformacionAduanera[Index: Integer]: IXMLT_InformacionAduanera read Get_InformacionAduanera; default;
  end;

{ IXMLComprobante_Conceptos_Concepto_ParteList }

  IXMLComprobante_Conceptos_Concepto_ParteList = interface(IXMLNodeCollection)
    ['{0CB0B3AC-C55F-4116-B45F-5B79C74C5D0B}']
    { Methods & Properties }
    function Add: IXMLComprobante_Conceptos_Concepto_Parte;
    function Insert(const Index: Integer): IXMLComprobante_Conceptos_Concepto_Parte;

    function Get_Item(Index: Integer): IXMLComprobante_Conceptos_Concepto_Parte;
    property Items[Index: Integer]: IXMLComprobante_Conceptos_Concepto_Parte read Get_Item; default;
  end;

{ IXMLComprobante_Impuestos }

  IXMLComprobante_Impuestos = interface(IXMLNode)
    ['{825B123F-68BB-4A0B-9B77-C5E1B975D5A0}']
    { Property Accessors }
    function Get_TotalImpuestosRetenidos: UnicodeString;
    function Get_TotalImpuestosTrasladados: UnicodeString;
    function Get_Retenciones: IXMLComprobante_Impuestos_Retenciones;
    function Get_Traslados: IXMLComprobante_Impuestos_Traslados;
    procedure Set_TotalImpuestosRetenidos(Value: UnicodeString);
    procedure Set_TotalImpuestosTrasladados(Value: UnicodeString);
    { Methods & Properties }
    property TotalImpuestosRetenidos: UnicodeString read Get_TotalImpuestosRetenidos write Set_TotalImpuestosRetenidos;
    property TotalImpuestosTrasladados: UnicodeString read Get_TotalImpuestosTrasladados write Set_TotalImpuestosTrasladados;
    property Retenciones: IXMLComprobante_Impuestos_Retenciones read Get_Retenciones;
    property Traslados: IXMLComprobante_Impuestos_Traslados read Get_Traslados;
  end;

{ IXMLComprobante_Impuestos_Retenciones }

  IXMLComprobante_Impuestos_Retenciones = interface(IXMLNodeCollection)
    ['{8E61F729-8C94-4FB4-97A8-2551462B5E7F}']
    { Property Accessors }
    function Get_Retencion(Index: Integer): IXMLComprobante_Impuestos_Retenciones_Retencion;
    { Methods & Properties }
    function Add: IXMLComprobante_Impuestos_Retenciones_Retencion;
    function Insert(const Index: Integer): IXMLComprobante_Impuestos_Retenciones_Retencion;
    property Retencion[Index: Integer]: IXMLComprobante_Impuestos_Retenciones_Retencion read Get_Retencion; default;
  end;

{ IXMLComprobante_Impuestos_Retenciones_Retencion }

  IXMLComprobante_Impuestos_Retenciones_Retencion = interface(IXMLNode)
    ['{04B96ACC-1C54-4B7A-BC14-2D2AD6895032}']
    { Property Accessors }
    function Get_Impuesto: UnicodeString;
    function Get_Importe: UnicodeString;
    procedure Set_Impuesto(Value: UnicodeString);
    procedure Set_Importe(Value: UnicodeString);
    { Methods & Properties }
    property Impuesto: UnicodeString read Get_Impuesto write Set_Impuesto;
    property Importe: UnicodeString read Get_Importe write Set_Importe;
  end;

{ IXMLComprobante_Impuestos_Traslados }

  IXMLComprobante_Impuestos_Traslados = interface(IXMLNodeCollection)
    ['{8D716C6D-2E96-476B-9982-060D32F143AD}']
    { Property Accessors }
    function Get_Traslado(Index: Integer): IXMLComprobante_Impuestos_Traslados_Traslado;
    { Methods & Properties }
    function Add: IXMLComprobante_Impuestos_Traslados_Traslado;
    function Insert(const Index: Integer): IXMLComprobante_Impuestos_Traslados_Traslado;
    property Traslado[Index: Integer]: IXMLComprobante_Impuestos_Traslados_Traslado read Get_Traslado; default;
  end;

{ IXMLComprobante_Impuestos_Traslados_Traslado }

  IXMLComprobante_Impuestos_Traslados_Traslado = interface(IXMLNode)
    ['{9CCA4F4A-C174-4329-80DA-D47BFD3E7B22}']
    { Property Accessors }
    function Get_Impuesto: UnicodeString;
    function Get_Tasa: UnicodeString;
    function Get_Importe: UnicodeString;
    procedure Set_Impuesto(Value: UnicodeString);
    procedure Set_Tasa(Value: UnicodeString);
    procedure Set_Importe(Value: UnicodeString);
    { Methods & Properties }
    property Impuesto: UnicodeString read Get_Impuesto write Set_Impuesto;
    property Tasa: UnicodeString read Get_Tasa write Set_Tasa;
    property Importe: UnicodeString read Get_Importe write Set_Importe;
  end;

{ IXMLComprobante_Complemento }

  IXMLComprobante_Complemento = interface(IXMLNode)
    ['{A440CE06-A02A-4671-B70B-884E48B74472}']
  end;

{ IXMLComprobante_Addenda }

  IXMLComprobante_Addenda = interface(IXMLNode)
    ['{F83B063C-529E-4E0F-8ADA-E99D7AE02BB3}']
  end;

{ Forward Decls }

  TXMLComprobante = class;
  TXMLComprobante_Emisor = class;
  TXMLT_UbicacionFiscal = class;
  TXMLT_Ubicacion = class;
  TXMLComprobante_Emisor_RegimenFiscal = class;
  TXMLComprobante_Emisor_RegimenFiscalList = class;
  TXMLComprobante_Receptor = class;
  TXMLComprobante_Conceptos = class;
  TXMLComprobante_Conceptos_Concepto = class;
  TXMLT_InformacionAduanera = class;
  TXMLT_InformacionAduaneraList = class;
  TXMLComprobante_Conceptos_Concepto_CuentaPredial = class;
  TXMLComprobante_Conceptos_Concepto_ComplementoConcepto = class;
  TXMLComprobante_Conceptos_Concepto_Parte = class;
  TXMLComprobante_Conceptos_Concepto_ParteList = class;
  TXMLComprobante_Impuestos = class;
  TXMLComprobante_Impuestos_Retenciones = class;
  TXMLComprobante_Impuestos_Retenciones_Retencion = class;
  TXMLComprobante_Impuestos_Traslados = class;
  TXMLComprobante_Impuestos_Traslados_Traslado = class;
  TXMLComprobante_Complemento = class;
  TXMLComprobante_Addenda = class;

{ TXMLComprobante }

  TXMLComprobante = class(TXMLNode, IXMLComprobante)
  protected
    { IXMLComprobante }
    function Get_Version: UnicodeString;
    function Get_Serie: UnicodeString;
    function Get_Folio: UnicodeString;
    function Get_Fecha: UnicodeString;
    function Get_Sello: UnicodeString;
    function Get_FormaDePago: UnicodeString;
    function Get_NoCertificado: UnicodeString;
    function Get_Certificado: UnicodeString;
    function Get_CondicionesDePago: UnicodeString;
    function Get_SubTotal: UnicodeString;
    function Get_Descuento: UnicodeString;
    function Get_MotivoDescuento: UnicodeString;
    function Get_TipoCambio: UnicodeString;
    function Get_Moneda: UnicodeString;
    function Get_Total: UnicodeString;
    function Get_TipoDeComprobante: UnicodeString;
    function Get_MetodoDePago: UnicodeString;
    function Get_LugarExpedicion: UnicodeString;
    function Get_NumCtaPago: UnicodeString;
    function Get_FolioFiscalOrig: UnicodeString;
    function Get_SerieFolioFiscalOrig: UnicodeString;
    function Get_FechaFolioFiscalOrig: UnicodeString;
    function Get_MontoFolioFiscalOrig: UnicodeString;
    function Get_Emisor: IXMLComprobante_Emisor;
    function Get_Receptor: IXMLComprobante_Receptor;
    function Get_Conceptos: IXMLComprobante_Conceptos;
    function Get_Impuestos: IXMLComprobante_Impuestos;
    function Get_Complemento: IXMLComprobante_Complemento;
    function Get_Addenda: IXMLComprobante_Addenda;
    procedure Set_Version(Value: UnicodeString);
    procedure Set_Serie(Value: UnicodeString);
    procedure Set_Folio(Value: UnicodeString);
    procedure Set_Fecha(Value: UnicodeString);
    procedure Set_Sello(Value: UnicodeString);
    procedure Set_FormaDePago(Value: UnicodeString);
    procedure Set_NoCertificado(Value: UnicodeString);
    procedure Set_Certificado(Value: UnicodeString);
    procedure Set_CondicionesDePago(Value: UnicodeString);
    procedure Set_SubTotal(Value: UnicodeString);
    procedure Set_Descuento(Value: UnicodeString);
    procedure Set_MotivoDescuento(Value: UnicodeString);
    procedure Set_TipoCambio(Value: UnicodeString);
    procedure Set_Moneda(Value: UnicodeString);
    procedure Set_Total(Value: UnicodeString);
    procedure Set_TipoDeComprobante(Value: UnicodeString);
    procedure Set_MetodoDePago(Value: UnicodeString);
    procedure Set_LugarExpedicion(Value: UnicodeString);
    procedure Set_NumCtaPago(Value: UnicodeString);
    procedure Set_FolioFiscalOrig(Value: UnicodeString);
    procedure Set_SerieFolioFiscalOrig(Value: UnicodeString);
    procedure Set_FechaFolioFiscalOrig(Value: UnicodeString);
    procedure Set_MontoFolioFiscalOrig(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLComprobante_Emisor }

  TXMLComprobante_Emisor = class(TXMLNode, IXMLComprobante_Emisor)
  private
    FRegimenFiscal: IXMLComprobante_Emisor_RegimenFiscalList;
  protected
    { IXMLComprobante_Emisor }
    function Get_Rfc: UnicodeString;
    function Get_Nombre: UnicodeString;
    function Get_DomicilioFiscal: IXMLT_UbicacionFiscal;
    function Get_ExpedidoEn: IXMLT_Ubicacion;
    function Get_RegimenFiscal: IXMLComprobante_Emisor_RegimenFiscalList;
    procedure Set_Rfc(Value: UnicodeString);
    procedure Set_Nombre(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLT_UbicacionFiscal }

  TXMLT_UbicacionFiscal = class(TXMLNode, IXMLT_UbicacionFiscal)
  protected
    { IXMLT_UbicacionFiscal }
    function Get_Calle: UnicodeString;
    function Get_NoExterior: UnicodeString;
    function Get_NoInterior: UnicodeString;
    function Get_Colonia: UnicodeString;
    function Get_Localidad: UnicodeString;
    function Get_Referencia: UnicodeString;
    function Get_Municipio: UnicodeString;
    function Get_Estado: UnicodeString;
    function Get_Pais: UnicodeString;
    function Get_CodigoPostal: UnicodeString;
    procedure Set_Calle(Value: UnicodeString);
    procedure Set_NoExterior(Value: UnicodeString);
    procedure Set_NoInterior(Value: UnicodeString);
    procedure Set_Colonia(Value: UnicodeString);
    procedure Set_Localidad(Value: UnicodeString);
    procedure Set_Referencia(Value: UnicodeString);
    procedure Set_Municipio(Value: UnicodeString);
    procedure Set_Estado(Value: UnicodeString);
    procedure Set_Pais(Value: UnicodeString);
    procedure Set_CodigoPostal(Value: UnicodeString);
  end;

{ TXMLT_Ubicacion }

  TXMLT_Ubicacion = class(TXMLNode, IXMLT_Ubicacion)
  protected
    { IXMLT_Ubicacion }
    function Get_Calle: UnicodeString;
    function Get_NoExterior: UnicodeString;
    function Get_NoInterior: UnicodeString;
    function Get_Colonia: UnicodeString;
    function Get_Localidad: UnicodeString;
    function Get_Referencia: UnicodeString;
    function Get_Municipio: UnicodeString;
    function Get_Estado: UnicodeString;
    function Get_Pais: UnicodeString;
    function Get_CodigoPostal: UnicodeString;
    procedure Set_Calle(Value: UnicodeString);
    procedure Set_NoExterior(Value: UnicodeString);
    procedure Set_NoInterior(Value: UnicodeString);
    procedure Set_Colonia(Value: UnicodeString);
    procedure Set_Localidad(Value: UnicodeString);
    procedure Set_Referencia(Value: UnicodeString);
    procedure Set_Municipio(Value: UnicodeString);
    procedure Set_Estado(Value: UnicodeString);
    procedure Set_Pais(Value: UnicodeString);
    procedure Set_CodigoPostal(Value: UnicodeString);
  end;

{ TXMLComprobante_Emisor_RegimenFiscal }

  TXMLComprobante_Emisor_RegimenFiscal = class(TXMLNode, IXMLComprobante_Emisor_RegimenFiscal)
  protected
    { IXMLComprobante_Emisor_RegimenFiscal }
    function Get_Regimen: UnicodeString;
    procedure Set_Regimen(Value: UnicodeString);
  end;

{ TXMLComprobante_Emisor_RegimenFiscalList }

  TXMLComprobante_Emisor_RegimenFiscalList = class(TXMLNodeCollection, IXMLComprobante_Emisor_RegimenFiscalList)
  protected
    { IXMLComprobante_Emisor_RegimenFiscalList }
    function Add: IXMLComprobante_Emisor_RegimenFiscal;
    function Insert(const Index: Integer): IXMLComprobante_Emisor_RegimenFiscal;

    function Get_Item(Index: Integer): IXMLComprobante_Emisor_RegimenFiscal;
  end;

{ TXMLComprobante_Receptor }

  TXMLComprobante_Receptor = class(TXMLNode, IXMLComprobante_Receptor)
  protected
    { IXMLComprobante_Receptor }
    function Get_Rfc: UnicodeString;
    function Get_Nombre: UnicodeString;
    function Get_Domicilio: IXMLT_Ubicacion;
    procedure Set_Rfc(Value: UnicodeString);
    procedure Set_Nombre(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLComprobante_Conceptos }

  TXMLComprobante_Conceptos = class(TXMLNodeCollection, IXMLComprobante_Conceptos)
  protected
    { IXMLComprobante_Conceptos }
    function Get_Concepto(Index: Integer): IXMLComprobante_Conceptos_Concepto;
    function Add: IXMLComprobante_Conceptos_Concepto;
    function Insert(const Index: Integer): IXMLComprobante_Conceptos_Concepto;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLComprobante_Conceptos_Concepto }

  TXMLComprobante_Conceptos_Concepto = class(TXMLNode, IXMLComprobante_Conceptos_Concepto)
  private
    FInformacionAduanera: IXMLT_InformacionAduaneraList;
    FParte: IXMLComprobante_Conceptos_Concepto_ParteList;
  protected
    { IXMLComprobante_Conceptos_Concepto }
    function Get_Cantidad: UnicodeString;
    function Get_Unidad: UnicodeString;
    function Get_NoIdentificacion: UnicodeString;
    function Get_Descripcion: UnicodeString;
    function Get_ValorUnitario: UnicodeString;
    function Get_Importe: UnicodeString;
    function Get_InformacionAduanera: IXMLT_InformacionAduaneraList;
    function Get_CuentaPredial: IXMLComprobante_Conceptos_Concepto_CuentaPredial;
    function Get_ComplementoConcepto: IXMLComprobante_Conceptos_Concepto_ComplementoConcepto;
    function Get_Parte: IXMLComprobante_Conceptos_Concepto_ParteList;
    procedure Set_Cantidad(Value: UnicodeString);
    procedure Set_Unidad(Value: UnicodeString);
    procedure Set_NoIdentificacion(Value: UnicodeString);
    procedure Set_Descripcion(Value: UnicodeString);
    procedure Set_ValorUnitario(Value: UnicodeString);
    procedure Set_Importe(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLT_InformacionAduanera }

  TXMLT_InformacionAduanera = class(TXMLNode, IXMLT_InformacionAduanera)
  protected
    { IXMLT_InformacionAduanera }
    function Get_Numero: UnicodeString;
    function Get_Fecha: UnicodeString;
    function Get_Aduana: UnicodeString;
    procedure Set_Numero(Value: UnicodeString);
    procedure Set_Fecha(Value: UnicodeString);
    procedure Set_Aduana(Value: UnicodeString);
  end;

{ TXMLT_InformacionAduaneraList }

  TXMLT_InformacionAduaneraList = class(TXMLNodeCollection, IXMLT_InformacionAduaneraList)
  protected
    { IXMLT_InformacionAduaneraList }
    function Add: IXMLT_InformacionAduanera;
    function Insert(const Index: Integer): IXMLT_InformacionAduanera;

    function Get_Item(Index: Integer): IXMLT_InformacionAduanera;
  end;

{ TXMLComprobante_Conceptos_Concepto_CuentaPredial }

  TXMLComprobante_Conceptos_Concepto_CuentaPredial = class(TXMLNode, IXMLComprobante_Conceptos_Concepto_CuentaPredial)
  protected
    { IXMLComprobante_Conceptos_Concepto_CuentaPredial }
    function Get_Numero: UnicodeString;
    procedure Set_Numero(Value: UnicodeString);
  end;

{ TXMLComprobante_Conceptos_Concepto_ComplementoConcepto }

  TXMLComprobante_Conceptos_Concepto_ComplementoConcepto = class(TXMLNode, IXMLComprobante_Conceptos_Concepto_ComplementoConcepto)
  protected
    { IXMLComprobante_Conceptos_Concepto_ComplementoConcepto }
  end;

{ TXMLComprobante_Conceptos_Concepto_Parte }

  TXMLComprobante_Conceptos_Concepto_Parte = class(TXMLNodeCollection, IXMLComprobante_Conceptos_Concepto_Parte)
  protected
    { IXMLComprobante_Conceptos_Concepto_Parte }
    function Get_Cantidad: UnicodeString;
    function Get_Unidad: UnicodeString;
    function Get_NoIdentificacion: UnicodeString;
    function Get_Descripcion: UnicodeString;
    function Get_ValorUnitario: UnicodeString;
    function Get_Importe: UnicodeString;
    function Get_InformacionAduanera(Index: Integer): IXMLT_InformacionAduanera;
    procedure Set_Cantidad(Value: UnicodeString);
    procedure Set_Unidad(Value: UnicodeString);
    procedure Set_NoIdentificacion(Value: UnicodeString);
    procedure Set_Descripcion(Value: UnicodeString);
    procedure Set_ValorUnitario(Value: UnicodeString);
    procedure Set_Importe(Value: UnicodeString);
    function Add: IXMLT_InformacionAduanera;
    function Insert(const Index: Integer): IXMLT_InformacionAduanera;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLComprobante_Conceptos_Concepto_ParteList }

  TXMLComprobante_Conceptos_Concepto_ParteList = class(TXMLNodeCollection, IXMLComprobante_Conceptos_Concepto_ParteList)
  protected
    { IXMLComprobante_Conceptos_Concepto_ParteList }
    function Add: IXMLComprobante_Conceptos_Concepto_Parte;
    function Insert(const Index: Integer): IXMLComprobante_Conceptos_Concepto_Parte;

    function Get_Item(Index: Integer): IXMLComprobante_Conceptos_Concepto_Parte;
  end;

{ TXMLComprobante_Impuestos }

  TXMLComprobante_Impuestos = class(TXMLNode, IXMLComprobante_Impuestos)
  protected
    { IXMLComprobante_Impuestos }
    function Get_TotalImpuestosRetenidos: UnicodeString;
    function Get_TotalImpuestosTrasladados: UnicodeString;
    function Get_Retenciones: IXMLComprobante_Impuestos_Retenciones;
    function Get_Traslados: IXMLComprobante_Impuestos_Traslados;
    procedure Set_TotalImpuestosRetenidos(Value: UnicodeString);
    procedure Set_TotalImpuestosTrasladados(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLComprobante_Impuestos_Retenciones }

  TXMLComprobante_Impuestos_Retenciones = class(TXMLNodeCollection, IXMLComprobante_Impuestos_Retenciones)
  protected
    { IXMLComprobante_Impuestos_Retenciones }
    function Get_Retencion(Index: Integer): IXMLComprobante_Impuestos_Retenciones_Retencion;
    function Add: IXMLComprobante_Impuestos_Retenciones_Retencion;
    function Insert(const Index: Integer): IXMLComprobante_Impuestos_Retenciones_Retencion;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLComprobante_Impuestos_Retenciones_Retencion }

  TXMLComprobante_Impuestos_Retenciones_Retencion = class(TXMLNode, IXMLComprobante_Impuestos_Retenciones_Retencion)
  protected
    { IXMLComprobante_Impuestos_Retenciones_Retencion }
    function Get_Impuesto: UnicodeString;
    function Get_Importe: UnicodeString;
    procedure Set_Impuesto(Value: UnicodeString);
    procedure Set_Importe(Value: UnicodeString);
  end;

{ TXMLComprobante_Impuestos_Traslados }

  TXMLComprobante_Impuestos_Traslados = class(TXMLNodeCollection, IXMLComprobante_Impuestos_Traslados)
  protected
    { IXMLComprobante_Impuestos_Traslados }
    function Get_Traslado(Index: Integer): IXMLComprobante_Impuestos_Traslados_Traslado;
    function Add: IXMLComprobante_Impuestos_Traslados_Traslado;
    function Insert(const Index: Integer): IXMLComprobante_Impuestos_Traslados_Traslado;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLComprobante_Impuestos_Traslados_Traslado }

  TXMLComprobante_Impuestos_Traslados_Traslado = class(TXMLNode, IXMLComprobante_Impuestos_Traslados_Traslado)
  protected
    { IXMLComprobante_Impuestos_Traslados_Traslado }
    function Get_Impuesto: UnicodeString;
    function Get_Tasa: UnicodeString;
    function Get_Importe: UnicodeString;
    procedure Set_Impuesto(Value: UnicodeString);
    procedure Set_Tasa(Value: UnicodeString);
    procedure Set_Importe(Value: UnicodeString);
  end;

{ TXMLComprobante_Complemento }

  TXMLComprobante_Complemento = class(TXMLNode, IXMLComprobante_Complemento)
  protected
    { IXMLComprobante_Complemento }
  end;

{ TXMLComprobante_Addenda }

  TXMLComprobante_Addenda = class(TXMLNode, IXMLComprobante_Addenda)
  protected
    { IXMLComprobante_Addenda }
  end;

{ Global Functions }

function GetComprobante(Doc: IXMLDocument): IXMLComprobante;
function LoadComprobante(const FileName: string): IXMLComprobante;
function NewComprobante: IXMLComprobante;

const
  TargetNamespace = 'http://www.sat.gob.mx/cfd/3';

implementation

{ Global Functions }

function GetComprobante(Doc: IXMLDocument): IXMLComprobante;
begin
  Result := Doc.GetDocBinding('Comprobante', TXMLComprobante, TargetNamespace) as IXMLComprobante;
end;

function LoadComprobante(const FileName: string): IXMLComprobante;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Comprobante', TXMLComprobante, TargetNamespace) as IXMLComprobante;
end;

function NewComprobante: IXMLComprobante;
begin
  Result := NewXMLDocument.GetDocBinding('Comprobante', TXMLComprobante, TargetNamespace) as IXMLComprobante;
end;

{ TXMLComprobante }

procedure TXMLComprobante.AfterConstruction;
begin
  RegisterChildNode('Emisor', TXMLComprobante_Emisor);
  RegisterChildNode('Receptor', TXMLComprobante_Receptor);
  RegisterChildNode('Conceptos', TXMLComprobante_Conceptos);
  RegisterChildNode('Impuestos', TXMLComprobante_Impuestos);
  RegisterChildNode('Complemento', TXMLComprobante_Complemento);
  RegisterChildNode('Addenda', TXMLComprobante_Addenda);
  inherited;
end;

function TXMLComprobante.Get_Version: UnicodeString;
begin
  Result := AttributeNodes['version'].Text;
end;

procedure TXMLComprobante.Set_Version(Value: UnicodeString);
begin
  SetAttribute('version', Value);
end;

function TXMLComprobante.Get_Serie: UnicodeString;
begin
  Result := AttributeNodes['serie'].Text;
end;

procedure TXMLComprobante.Set_Serie(Value: UnicodeString);
begin
  SetAttribute('serie', Value);
end;

function TXMLComprobante.Get_Folio: UnicodeString;
begin
  Result := AttributeNodes['folio'].Text;
end;

procedure TXMLComprobante.Set_Folio(Value: UnicodeString);
begin
  SetAttribute('folio', Value);
end;

function TXMLComprobante.Get_Fecha: UnicodeString;
begin
  Result := AttributeNodes['fecha'].Text;
end;

procedure TXMLComprobante.Set_Fecha(Value: UnicodeString);
begin
  SetAttribute('fecha', Value);
end;

function TXMLComprobante.Get_Sello: UnicodeString;
begin
  Result := AttributeNodes['sello'].Text;
end;

procedure TXMLComprobante.Set_Sello(Value: UnicodeString);
begin
  SetAttribute('sello', Value);
end;

function TXMLComprobante.Get_FormaDePago: UnicodeString;
begin
  Result := AttributeNodes['formaDePago'].Text;
end;

procedure TXMLComprobante.Set_FormaDePago(Value: UnicodeString);
begin
  SetAttribute('formaDePago', Value);
end;

function TXMLComprobante.Get_NoCertificado: UnicodeString;
begin
  Result := AttributeNodes['noCertificado'].Text;
end;

procedure TXMLComprobante.Set_NoCertificado(Value: UnicodeString);
begin
  SetAttribute('noCertificado', Value);
end;

function TXMLComprobante.Get_Certificado: UnicodeString;
begin
  Result := AttributeNodes['certificado'].Text;
end;

procedure TXMLComprobante.Set_Certificado(Value: UnicodeString);
begin
  SetAttribute('certificado', Value);
end;

function TXMLComprobante.Get_CondicionesDePago: UnicodeString;
begin
  Result := AttributeNodes['condicionesDePago'].Text;
end;

procedure TXMLComprobante.Set_CondicionesDePago(Value: UnicodeString);
begin
  SetAttribute('condicionesDePago', Value);
end;

function TXMLComprobante.Get_SubTotal: UnicodeString;
begin
  Result := AttributeNodes['subTotal'].Text;
end;

procedure TXMLComprobante.Set_SubTotal(Value: UnicodeString);
begin
  SetAttribute('subTotal', Value);
end;

function TXMLComprobante.Get_Descuento: UnicodeString;
begin
  Result := AttributeNodes['descuento'].Text;
end;

procedure TXMLComprobante.Set_Descuento(Value: UnicodeString);
begin
  SetAttribute('descuento', Value);
end;

function TXMLComprobante.Get_MotivoDescuento: UnicodeString;
begin
  Result := AttributeNodes['motivoDescuento'].Text;
end;

procedure TXMLComprobante.Set_MotivoDescuento(Value: UnicodeString);
begin
  SetAttribute('motivoDescuento', Value);
end;

function TXMLComprobante.Get_TipoCambio: UnicodeString;
begin
  Result := AttributeNodes['TipoCambio'].Text;
end;

procedure TXMLComprobante.Set_TipoCambio(Value: UnicodeString);
begin
  SetAttribute('TipoCambio', Value);
end;

function TXMLComprobante.Get_Moneda: UnicodeString;
begin
  Result := AttributeNodes['Moneda'].Text;
end;

procedure TXMLComprobante.Set_Moneda(Value: UnicodeString);
begin
  SetAttribute('Moneda', Value);
end;

function TXMLComprobante.Get_Total: UnicodeString;
begin
  Result := AttributeNodes['total'].Text;
end;

procedure TXMLComprobante.Set_Total(Value: UnicodeString);
begin
  SetAttribute('total', Value);
end;

function TXMLComprobante.Get_TipoDeComprobante: UnicodeString;
begin
  Result := AttributeNodes['tipoDeComprobante'].Text;
end;

procedure TXMLComprobante.Set_TipoDeComprobante(Value: UnicodeString);
begin
  SetAttribute('tipoDeComprobante', Value);
end;

function TXMLComprobante.Get_MetodoDePago: UnicodeString;
begin
  Result := AttributeNodes['metodoDePago'].Text;
end;

procedure TXMLComprobante.Set_MetodoDePago(Value: UnicodeString);
begin
  SetAttribute('metodoDePago', Value);
end;

function TXMLComprobante.Get_LugarExpedicion: UnicodeString;
begin
  Result := AttributeNodes['LugarExpedicion'].Text;
end;

procedure TXMLComprobante.Set_LugarExpedicion(Value: UnicodeString);
begin
  SetAttribute('LugarExpedicion', Value);
end;

function TXMLComprobante.Get_NumCtaPago: UnicodeString;
begin
  Result := AttributeNodes['NumCtaPago'].Text;
end;

procedure TXMLComprobante.Set_NumCtaPago(Value: UnicodeString);
begin
  SetAttribute('NumCtaPago', Value);
end;

function TXMLComprobante.Get_FolioFiscalOrig: UnicodeString;
begin
  Result := AttributeNodes['FolioFiscalOrig'].Text;
end;

procedure TXMLComprobante.Set_FolioFiscalOrig(Value: UnicodeString);
begin
  SetAttribute('FolioFiscalOrig', Value);
end;

function TXMLComprobante.Get_SerieFolioFiscalOrig: UnicodeString;
begin
  Result := AttributeNodes['SerieFolioFiscalOrig'].Text;
end;

procedure TXMLComprobante.Set_SerieFolioFiscalOrig(Value: UnicodeString);
begin
  SetAttribute('SerieFolioFiscalOrig', Value);
end;

function TXMLComprobante.Get_FechaFolioFiscalOrig: UnicodeString;
begin
  Result := AttributeNodes['FechaFolioFiscalOrig'].Text;
end;

procedure TXMLComprobante.Set_FechaFolioFiscalOrig(Value: UnicodeString);
begin
  SetAttribute('FechaFolioFiscalOrig', Value);
end;

function TXMLComprobante.Get_MontoFolioFiscalOrig: UnicodeString;
begin
  Result := AttributeNodes['MontoFolioFiscalOrig'].Text;
end;

procedure TXMLComprobante.Set_MontoFolioFiscalOrig(Value: UnicodeString);
begin
  SetAttribute('MontoFolioFiscalOrig', Value);
end;

function TXMLComprobante.Get_Emisor: IXMLComprobante_Emisor;
begin
  Result := ChildNodes['Emisor'] as IXMLComprobante_Emisor;
end;

function TXMLComprobante.Get_Receptor: IXMLComprobante_Receptor;
begin
  Result := ChildNodes['Receptor'] as IXMLComprobante_Receptor;
end;

function TXMLComprobante.Get_Conceptos: IXMLComprobante_Conceptos;
begin
  Result := ChildNodes['Conceptos'] as IXMLComprobante_Conceptos;
end;

function TXMLComprobante.Get_Impuestos: IXMLComprobante_Impuestos;
begin
  Result := ChildNodes['Impuestos'] as IXMLComprobante_Impuestos;
end;

function TXMLComprobante.Get_Complemento: IXMLComprobante_Complemento;
begin
  Result := ChildNodes['Complemento'] as IXMLComprobante_Complemento;
end;

function TXMLComprobante.Get_Addenda: IXMLComprobante_Addenda;
begin
  Result := ChildNodes['Addenda'] as IXMLComprobante_Addenda;
end;

{ TXMLComprobante_Emisor }

procedure TXMLComprobante_Emisor.AfterConstruction;
begin
  RegisterChildNode('DomicilioFiscal', TXMLT_UbicacionFiscal);
  RegisterChildNode('ExpedidoEn', TXMLT_Ubicacion);
  RegisterChildNode('RegimenFiscal', TXMLComprobante_Emisor_RegimenFiscal);
  FRegimenFiscal := CreateCollection(TXMLComprobante_Emisor_RegimenFiscalList, IXMLComprobante_Emisor_RegimenFiscal, 'RegimenFiscal') as IXMLComprobante_Emisor_RegimenFiscalList;
  inherited;
end;

function TXMLComprobante_Emisor.Get_Rfc: UnicodeString;
begin
  Result := AttributeNodes['rfc'].Text;
end;

procedure TXMLComprobante_Emisor.Set_Rfc(Value: UnicodeString);
begin
  SetAttribute('rfc', Value);
end;

function TXMLComprobante_Emisor.Get_Nombre: UnicodeString;
begin
  Result := AttributeNodes['nombre'].Text;
end;

procedure TXMLComprobante_Emisor.Set_Nombre(Value: UnicodeString);
begin
  SetAttribute('nombre', Value);
end;

function TXMLComprobante_Emisor.Get_DomicilioFiscal: IXMLT_UbicacionFiscal;
begin
  Result := ChildNodes['DomicilioFiscal'] as IXMLT_UbicacionFiscal;
end;

function TXMLComprobante_Emisor.Get_ExpedidoEn: IXMLT_Ubicacion;
begin
  Result := ChildNodes['ExpedidoEn'] as IXMLT_Ubicacion;
end;

function TXMLComprobante_Emisor.Get_RegimenFiscal: IXMLComprobante_Emisor_RegimenFiscalList;
begin
  Result := FRegimenFiscal;
end;

{ TXMLT_UbicacionFiscal }

function TXMLT_UbicacionFiscal.Get_Calle: UnicodeString;
begin
  Result := AttributeNodes['calle'].Text;
end;

procedure TXMLT_UbicacionFiscal.Set_Calle(Value: UnicodeString);
begin
  SetAttribute('calle', Value);
end;

function TXMLT_UbicacionFiscal.Get_NoExterior: UnicodeString;
begin
  Result := AttributeNodes['noExterior'].Text;
end;

procedure TXMLT_UbicacionFiscal.Set_NoExterior(Value: UnicodeString);
begin
  SetAttribute('noExterior', Value);
end;

function TXMLT_UbicacionFiscal.Get_NoInterior: UnicodeString;
begin
  Result := AttributeNodes['noInterior'].Text;
end;

procedure TXMLT_UbicacionFiscal.Set_NoInterior(Value: UnicodeString);
begin
  SetAttribute('noInterior', Value);
end;

function TXMLT_UbicacionFiscal.Get_Colonia: UnicodeString;
begin
  Result := AttributeNodes['colonia'].Text;
end;

procedure TXMLT_UbicacionFiscal.Set_Colonia(Value: UnicodeString);
begin
  SetAttribute('colonia', Value);
end;

function TXMLT_UbicacionFiscal.Get_Localidad: UnicodeString;
begin
  Result := AttributeNodes['localidad'].Text;
end;

procedure TXMLT_UbicacionFiscal.Set_Localidad(Value: UnicodeString);
begin
  SetAttribute('localidad', Value);
end;

function TXMLT_UbicacionFiscal.Get_Referencia: UnicodeString;
begin
  Result := AttributeNodes['referencia'].Text;
end;

procedure TXMLT_UbicacionFiscal.Set_Referencia(Value: UnicodeString);
begin
  SetAttribute('referencia', Value);
end;

function TXMLT_UbicacionFiscal.Get_Municipio: UnicodeString;
begin
  Result := AttributeNodes['municipio'].Text;
end;

procedure TXMLT_UbicacionFiscal.Set_Municipio(Value: UnicodeString);
begin
  SetAttribute('municipio', Value);
end;

function TXMLT_UbicacionFiscal.Get_Estado: UnicodeString;
begin
  Result := AttributeNodes['estado'].Text;
end;

procedure TXMLT_UbicacionFiscal.Set_Estado(Value: UnicodeString);
begin
  SetAttribute('estado', Value);
end;

function TXMLT_UbicacionFiscal.Get_Pais: UnicodeString;
begin
  Result := AttributeNodes['pais'].Text;
end;

procedure TXMLT_UbicacionFiscal.Set_Pais(Value: UnicodeString);
begin
  SetAttribute('pais', Value);
end;

function TXMLT_UbicacionFiscal.Get_CodigoPostal: UnicodeString;
begin
  Result := AttributeNodes['codigoPostal'].Text;
end;

procedure TXMLT_UbicacionFiscal.Set_CodigoPostal(Value: UnicodeString);
begin
  SetAttribute('codigoPostal', Value);
end;

{ TXMLT_Ubicacion }

function TXMLT_Ubicacion.Get_Calle: UnicodeString;
begin
  Result := AttributeNodes['calle'].Text;
end;

procedure TXMLT_Ubicacion.Set_Calle(Value: UnicodeString);
begin
  SetAttribute('calle', Value);
end;

function TXMLT_Ubicacion.Get_NoExterior: UnicodeString;
begin
  Result := AttributeNodes['noExterior'].Text;
end;

procedure TXMLT_Ubicacion.Set_NoExterior(Value: UnicodeString);
begin
  SetAttribute('noExterior', Value);
end;

function TXMLT_Ubicacion.Get_NoInterior: UnicodeString;
begin
  Result := AttributeNodes['noInterior'].Text;
end;

procedure TXMLT_Ubicacion.Set_NoInterior(Value: UnicodeString);
begin
  SetAttribute('noInterior', Value);
end;

function TXMLT_Ubicacion.Get_Colonia: UnicodeString;
begin
  Result := AttributeNodes['colonia'].Text;
end;

procedure TXMLT_Ubicacion.Set_Colonia(Value: UnicodeString);
begin
  SetAttribute('colonia', Value);
end;

function TXMLT_Ubicacion.Get_Localidad: UnicodeString;
begin
  Result := AttributeNodes['localidad'].Text;
end;

procedure TXMLT_Ubicacion.Set_Localidad(Value: UnicodeString);
begin
  SetAttribute('localidad', Value);
end;

function TXMLT_Ubicacion.Get_Referencia: UnicodeString;
begin
  Result := AttributeNodes['referencia'].Text;
end;

procedure TXMLT_Ubicacion.Set_Referencia(Value: UnicodeString);
begin
  SetAttribute('referencia', Value);
end;

function TXMLT_Ubicacion.Get_Municipio: UnicodeString;
begin
  Result := AttributeNodes['municipio'].Text;
end;

procedure TXMLT_Ubicacion.Set_Municipio(Value: UnicodeString);
begin
  SetAttribute('municipio', Value);
end;

function TXMLT_Ubicacion.Get_Estado: UnicodeString;
begin
  Result := AttributeNodes['estado'].Text;
end;

procedure TXMLT_Ubicacion.Set_Estado(Value: UnicodeString);
begin
  SetAttribute('estado', Value);
end;

function TXMLT_Ubicacion.Get_Pais: UnicodeString;
begin
  Result := AttributeNodes['pais'].Text;
end;

procedure TXMLT_Ubicacion.Set_Pais(Value: UnicodeString);
begin
  SetAttribute('pais', Value);
end;

function TXMLT_Ubicacion.Get_CodigoPostal: UnicodeString;
begin
  Result := AttributeNodes['codigoPostal'].Text;
end;

procedure TXMLT_Ubicacion.Set_CodigoPostal(Value: UnicodeString);
begin
  SetAttribute('codigoPostal', Value);
end;

{ TXMLComprobante_Emisor_RegimenFiscal }

function TXMLComprobante_Emisor_RegimenFiscal.Get_Regimen: UnicodeString;
begin
  Result := AttributeNodes['Regimen'].Text;
end;

procedure TXMLComprobante_Emisor_RegimenFiscal.Set_Regimen(Value: UnicodeString);
begin
  SetAttribute('Regimen', Value);
end;

{ TXMLComprobante_Emisor_RegimenFiscalList }

function TXMLComprobante_Emisor_RegimenFiscalList.Add: IXMLComprobante_Emisor_RegimenFiscal;
begin
  Result := AddItem(-1) as IXMLComprobante_Emisor_RegimenFiscal;
end;

function TXMLComprobante_Emisor_RegimenFiscalList.Insert(const Index: Integer): IXMLComprobante_Emisor_RegimenFiscal;
begin
  Result := AddItem(Index) as IXMLComprobante_Emisor_RegimenFiscal;
end;

function TXMLComprobante_Emisor_RegimenFiscalList.Get_Item(Index: Integer): IXMLComprobante_Emisor_RegimenFiscal;
begin
  Result := List[Index] as IXMLComprobante_Emisor_RegimenFiscal;
end;

{ TXMLComprobante_Receptor }

procedure TXMLComprobante_Receptor.AfterConstruction;
begin
  RegisterChildNode('Domicilio', TXMLT_Ubicacion);
  inherited;
end;

function TXMLComprobante_Receptor.Get_Rfc: UnicodeString;
begin
  Result := AttributeNodes['rfc'].Text;
end;

procedure TXMLComprobante_Receptor.Set_Rfc(Value: UnicodeString);
begin
  SetAttribute('rfc', Value);
end;

function TXMLComprobante_Receptor.Get_Nombre: UnicodeString;
begin
  Result := AttributeNodes['nombre'].Text;
end;

procedure TXMLComprobante_Receptor.Set_Nombre(Value: UnicodeString);
begin
  SetAttribute('nombre', Value);
end;

function TXMLComprobante_Receptor.Get_Domicilio: IXMLT_Ubicacion;
begin
  Result := ChildNodes['Domicilio'] as IXMLT_Ubicacion;
end;

{ TXMLComprobante_Conceptos }

procedure TXMLComprobante_Conceptos.AfterConstruction;
begin
  RegisterChildNode('Concepto', TXMLComprobante_Conceptos_Concepto);
  ItemTag := 'Concepto';
  ItemInterface := IXMLComprobante_Conceptos_Concepto;
  inherited;
end;

function TXMLComprobante_Conceptos.Get_Concepto(Index: Integer): IXMLComprobante_Conceptos_Concepto;
begin
  Result := List[Index] as IXMLComprobante_Conceptos_Concepto;
end;

function TXMLComprobante_Conceptos.Add: IXMLComprobante_Conceptos_Concepto;
begin
  Result := AddItem(-1) as IXMLComprobante_Conceptos_Concepto;
end;

function TXMLComprobante_Conceptos.Insert(const Index: Integer): IXMLComprobante_Conceptos_Concepto;
begin
  Result := AddItem(Index) as IXMLComprobante_Conceptos_Concepto;
end;

{ TXMLComprobante_Conceptos_Concepto }

procedure TXMLComprobante_Conceptos_Concepto.AfterConstruction;
begin
  RegisterChildNode('InformacionAduanera', TXMLT_InformacionAduanera);
  RegisterChildNode('CuentaPredial', TXMLComprobante_Conceptos_Concepto_CuentaPredial);
  RegisterChildNode('ComplementoConcepto', TXMLComprobante_Conceptos_Concepto_ComplementoConcepto);
  RegisterChildNode('Parte', TXMLComprobante_Conceptos_Concepto_Parte);
  FInformacionAduanera := CreateCollection(TXMLT_InformacionAduaneraList, IXMLT_InformacionAduanera, 'InformacionAduanera') as IXMLT_InformacionAduaneraList;
  FParte := CreateCollection(TXMLComprobante_Conceptos_Concepto_ParteList, IXMLComprobante_Conceptos_Concepto_Parte, 'Parte') as IXMLComprobante_Conceptos_Concepto_ParteList;
  inherited;
end;

function TXMLComprobante_Conceptos_Concepto.Get_Cantidad: UnicodeString;
begin
  Result := AttributeNodes['cantidad'].Text;
end;

procedure TXMLComprobante_Conceptos_Concepto.Set_Cantidad(Value: UnicodeString);
begin
  SetAttribute('cantidad', Value);
end;

function TXMLComprobante_Conceptos_Concepto.Get_Unidad: UnicodeString;
begin
  Result := AttributeNodes['unidad'].Text;
end;

procedure TXMLComprobante_Conceptos_Concepto.Set_Unidad(Value: UnicodeString);
begin
  SetAttribute('unidad', Value);
end;

function TXMLComprobante_Conceptos_Concepto.Get_NoIdentificacion: UnicodeString;
begin
  Result := AttributeNodes['noIdentificacion'].Text;
end;

procedure TXMLComprobante_Conceptos_Concepto.Set_NoIdentificacion(Value: UnicodeString);
begin
  SetAttribute('noIdentificacion', Value);
end;

function TXMLComprobante_Conceptos_Concepto.Get_Descripcion: UnicodeString;
begin
  Result := AttributeNodes['descripcion'].Text;
end;

procedure TXMLComprobante_Conceptos_Concepto.Set_Descripcion(Value: UnicodeString);
begin
  SetAttribute('descripcion', Value);
end;

function TXMLComprobante_Conceptos_Concepto.Get_ValorUnitario: UnicodeString;
begin
  Result := AttributeNodes['valorUnitario'].Text;
end;

procedure TXMLComprobante_Conceptos_Concepto.Set_ValorUnitario(Value: UnicodeString);
begin
  SetAttribute('valorUnitario', Value);
end;

function TXMLComprobante_Conceptos_Concepto.Get_Importe: UnicodeString;
begin
  Result := AttributeNodes['importe'].Text;
end;

procedure TXMLComprobante_Conceptos_Concepto.Set_Importe(Value: UnicodeString);
begin
  SetAttribute('importe', Value);
end;

function TXMLComprobante_Conceptos_Concepto.Get_InformacionAduanera: IXMLT_InformacionAduaneraList;
begin
  Result := FInformacionAduanera;
end;

function TXMLComprobante_Conceptos_Concepto.Get_CuentaPredial: IXMLComprobante_Conceptos_Concepto_CuentaPredial;
begin
  Result := ChildNodes['CuentaPredial'] as IXMLComprobante_Conceptos_Concepto_CuentaPredial;
end;

function TXMLComprobante_Conceptos_Concepto.Get_ComplementoConcepto: IXMLComprobante_Conceptos_Concepto_ComplementoConcepto;
begin
  Result := ChildNodes['ComplementoConcepto'] as IXMLComprobante_Conceptos_Concepto_ComplementoConcepto;
end;

function TXMLComprobante_Conceptos_Concepto.Get_Parte: IXMLComprobante_Conceptos_Concepto_ParteList;
begin
  Result := FParte;
end;

{ TXMLT_InformacionAduanera }

function TXMLT_InformacionAduanera.Get_Numero: UnicodeString;
begin
  Result := AttributeNodes['numero'].Text;
end;

procedure TXMLT_InformacionAduanera.Set_Numero(Value: UnicodeString);
begin
  SetAttribute('numero', Value);
end;

function TXMLT_InformacionAduanera.Get_Fecha: UnicodeString;
begin
  Result := AttributeNodes['fecha'].Text;
end;

procedure TXMLT_InformacionAduanera.Set_Fecha(Value: UnicodeString);
begin
  SetAttribute('fecha', Value);
end;

function TXMLT_InformacionAduanera.Get_Aduana: UnicodeString;
begin
  Result := AttributeNodes['aduana'].Text;
end;

procedure TXMLT_InformacionAduanera.Set_Aduana(Value: UnicodeString);
begin
  SetAttribute('aduana', Value);
end;

{ TXMLT_InformacionAduaneraList }

function TXMLT_InformacionAduaneraList.Add: IXMLT_InformacionAduanera;
begin
  Result := AddItem(-1) as IXMLT_InformacionAduanera;
end;

function TXMLT_InformacionAduaneraList.Insert(const Index: Integer): IXMLT_InformacionAduanera;
begin
  Result := AddItem(Index) as IXMLT_InformacionAduanera;
end;

function TXMLT_InformacionAduaneraList.Get_Item(Index: Integer): IXMLT_InformacionAduanera;
begin
  Result := List[Index] as IXMLT_InformacionAduanera;
end;

{ TXMLComprobante_Conceptos_Concepto_CuentaPredial }

function TXMLComprobante_Conceptos_Concepto_CuentaPredial.Get_Numero: UnicodeString;
begin
  Result := AttributeNodes['numero'].Text;
end;

procedure TXMLComprobante_Conceptos_Concepto_CuentaPredial.Set_Numero(Value: UnicodeString);
begin
  SetAttribute('numero', Value);
end;

{ TXMLComprobante_Conceptos_Concepto_ComplementoConcepto }

{ TXMLComprobante_Conceptos_Concepto_Parte }

procedure TXMLComprobante_Conceptos_Concepto_Parte.AfterConstruction;
begin
  RegisterChildNode('InformacionAduanera', TXMLT_InformacionAduanera);
  ItemTag := 'InformacionAduanera';
  ItemInterface := IXMLT_InformacionAduanera;
  inherited;
end;

function TXMLComprobante_Conceptos_Concepto_Parte.Get_Cantidad: UnicodeString;
begin
  Result := AttributeNodes['cantidad'].Text;
end;

procedure TXMLComprobante_Conceptos_Concepto_Parte.Set_Cantidad(Value: UnicodeString);
begin
  SetAttribute('cantidad', Value);
end;

function TXMLComprobante_Conceptos_Concepto_Parte.Get_Unidad: UnicodeString;
begin
  Result := AttributeNodes['unidad'].Text;
end;

procedure TXMLComprobante_Conceptos_Concepto_Parte.Set_Unidad(Value: UnicodeString);
begin
  SetAttribute('unidad', Value);
end;

function TXMLComprobante_Conceptos_Concepto_Parte.Get_NoIdentificacion: UnicodeString;
begin
  Result := AttributeNodes['noIdentificacion'].Text;
end;

procedure TXMLComprobante_Conceptos_Concepto_Parte.Set_NoIdentificacion(Value: UnicodeString);
begin
  SetAttribute('noIdentificacion', Value);
end;

function TXMLComprobante_Conceptos_Concepto_Parte.Get_Descripcion: UnicodeString;
begin
  Result := AttributeNodes['descripcion'].Text;
end;

procedure TXMLComprobante_Conceptos_Concepto_Parte.Set_Descripcion(Value: UnicodeString);
begin
  SetAttribute('descripcion', Value);
end;

function TXMLComprobante_Conceptos_Concepto_Parte.Get_ValorUnitario: UnicodeString;
begin
  Result := AttributeNodes['valorUnitario'].Text;
end;

procedure TXMLComprobante_Conceptos_Concepto_Parte.Set_ValorUnitario(Value: UnicodeString);
begin
  SetAttribute('valorUnitario', Value);
end;

function TXMLComprobante_Conceptos_Concepto_Parte.Get_Importe: UnicodeString;
begin
  Result := AttributeNodes['importe'].Text;
end;

procedure TXMLComprobante_Conceptos_Concepto_Parte.Set_Importe(Value: UnicodeString);
begin
  SetAttribute('importe', Value);
end;

function TXMLComprobante_Conceptos_Concepto_Parte.Get_InformacionAduanera(Index: Integer): IXMLT_InformacionAduanera;
begin
  Result := List[Index] as IXMLT_InformacionAduanera;
end;

function TXMLComprobante_Conceptos_Concepto_Parte.Add: IXMLT_InformacionAduanera;
begin
  Result := AddItem(-1) as IXMLT_InformacionAduanera;
end;

function TXMLComprobante_Conceptos_Concepto_Parte.Insert(const Index: Integer): IXMLT_InformacionAduanera;
begin
  Result := AddItem(Index) as IXMLT_InformacionAduanera;
end;

{ TXMLComprobante_Conceptos_Concepto_ParteList }

function TXMLComprobante_Conceptos_Concepto_ParteList.Add: IXMLComprobante_Conceptos_Concepto_Parte;
begin
  Result := AddItem(-1) as IXMLComprobante_Conceptos_Concepto_Parte;
end;

function TXMLComprobante_Conceptos_Concepto_ParteList.Insert(const Index: Integer): IXMLComprobante_Conceptos_Concepto_Parte;
begin
  Result := AddItem(Index) as IXMLComprobante_Conceptos_Concepto_Parte;
end;

function TXMLComprobante_Conceptos_Concepto_ParteList.Get_Item(Index: Integer): IXMLComprobante_Conceptos_Concepto_Parte;
begin
  Result := List[Index] as IXMLComprobante_Conceptos_Concepto_Parte;
end;

{ TXMLComprobante_Impuestos }

procedure TXMLComprobante_Impuestos.AfterConstruction;
begin
  RegisterChildNode('Retenciones', TXMLComprobante_Impuestos_Retenciones);
  RegisterChildNode('Traslados', TXMLComprobante_Impuestos_Traslados);
  inherited;
end;

function TXMLComprobante_Impuestos.Get_TotalImpuestosRetenidos: UnicodeString;
begin
  Result := AttributeNodes['totalImpuestosRetenidos'].Text;
end;

procedure TXMLComprobante_Impuestos.Set_TotalImpuestosRetenidos(Value: UnicodeString);
begin
  SetAttribute('totalImpuestosRetenidos', Value);
end;

function TXMLComprobante_Impuestos.Get_TotalImpuestosTrasladados: UnicodeString;
begin
  Result := AttributeNodes['totalImpuestosTrasladados'].Text;
end;

procedure TXMLComprobante_Impuestos.Set_TotalImpuestosTrasladados(Value: UnicodeString);
begin
  SetAttribute('totalImpuestosTrasladados', Value);
end;

function TXMLComprobante_Impuestos.Get_Retenciones: IXMLComprobante_Impuestos_Retenciones;
begin
  Result := ChildNodes['Retenciones'] as IXMLComprobante_Impuestos_Retenciones;
end;

function TXMLComprobante_Impuestos.Get_Traslados: IXMLComprobante_Impuestos_Traslados;
begin
  Result := ChildNodes['Traslados'] as IXMLComprobante_Impuestos_Traslados;
end;

{ TXMLComprobante_Impuestos_Retenciones }

procedure TXMLComprobante_Impuestos_Retenciones.AfterConstruction;
begin
  RegisterChildNode('Retencion', TXMLComprobante_Impuestos_Retenciones_Retencion);
  ItemTag := 'Retencion';
  ItemInterface := IXMLComprobante_Impuestos_Retenciones_Retencion;
  inherited;
end;

function TXMLComprobante_Impuestos_Retenciones.Get_Retencion(Index: Integer): IXMLComprobante_Impuestos_Retenciones_Retencion;
begin
  Result := List[Index] as IXMLComprobante_Impuestos_Retenciones_Retencion;
end;

function TXMLComprobante_Impuestos_Retenciones.Add: IXMLComprobante_Impuestos_Retenciones_Retencion;
begin
  Result := AddItem(-1) as IXMLComprobante_Impuestos_Retenciones_Retencion;
end;

function TXMLComprobante_Impuestos_Retenciones.Insert(const Index: Integer): IXMLComprobante_Impuestos_Retenciones_Retencion;
begin
  Result := AddItem(Index) as IXMLComprobante_Impuestos_Retenciones_Retencion;
end;

{ TXMLComprobante_Impuestos_Retenciones_Retencion }

function TXMLComprobante_Impuestos_Retenciones_Retencion.Get_Impuesto: UnicodeString;
begin
  Result := AttributeNodes['impuesto'].Text;
end;

procedure TXMLComprobante_Impuestos_Retenciones_Retencion.Set_Impuesto(Value: UnicodeString);
begin
  SetAttribute('impuesto', Value);
end;

function TXMLComprobante_Impuestos_Retenciones_Retencion.Get_Importe: UnicodeString;
begin
  Result := AttributeNodes['importe'].Text;
end;

procedure TXMLComprobante_Impuestos_Retenciones_Retencion.Set_Importe(Value: UnicodeString);
begin
  SetAttribute('importe', Value);
end;

{ TXMLComprobante_Impuestos_Traslados }

procedure TXMLComprobante_Impuestos_Traslados.AfterConstruction;
begin
  RegisterChildNode('Traslado', TXMLComprobante_Impuestos_Traslados_Traslado);
  ItemTag := 'Traslado';
  ItemInterface := IXMLComprobante_Impuestos_Traslados_Traslado;
  inherited;
end;

function TXMLComprobante_Impuestos_Traslados.Get_Traslado(Index: Integer): IXMLComprobante_Impuestos_Traslados_Traslado;
begin
  Result := List[Index] as IXMLComprobante_Impuestos_Traslados_Traslado;
end;

function TXMLComprobante_Impuestos_Traslados.Add: IXMLComprobante_Impuestos_Traslados_Traslado;
begin
  Result := AddItem(-1) as IXMLComprobante_Impuestos_Traslados_Traslado;
end;

function TXMLComprobante_Impuestos_Traslados.Insert(const Index: Integer): IXMLComprobante_Impuestos_Traslados_Traslado;
begin
  Result := AddItem(Index) as IXMLComprobante_Impuestos_Traslados_Traslado;
end;

{ TXMLComprobante_Impuestos_Traslados_Traslado }

function TXMLComprobante_Impuestos_Traslados_Traslado.Get_Impuesto: UnicodeString;
begin
  Result := AttributeNodes['impuesto'].Text;
end;

procedure TXMLComprobante_Impuestos_Traslados_Traslado.Set_Impuesto(Value: UnicodeString);
begin
  SetAttribute('impuesto', Value);
end;

function TXMLComprobante_Impuestos_Traslados_Traslado.Get_Tasa: UnicodeString;
begin
  Result := AttributeNodes['tasa'].Text;
end;

procedure TXMLComprobante_Impuestos_Traslados_Traslado.Set_Tasa(Value: UnicodeString);
begin
  SetAttribute('tasa', Value);
end;

function TXMLComprobante_Impuestos_Traslados_Traslado.Get_Importe: UnicodeString;
begin
  Result := AttributeNodes['importe'].Text;
end;

procedure TXMLComprobante_Impuestos_Traslados_Traslado.Set_Importe(Value: UnicodeString);
begin
  SetAttribute('importe', Value);
end;

{ TXMLComprobante_Complemento }

{ TXMLComprobante_Addenda }

end.