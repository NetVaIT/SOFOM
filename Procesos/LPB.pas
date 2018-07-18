
{**********************************************************************}
{                                                                      }
{                           XML Data Binding                           }
{                                                                      }
{         Generated on: 16/07/2018 01:15:58 p. m.                      }
{       Generated from: C:\Desarrollo\Documentos\SofomListas\LPB.xsd   }
{                                                                      }
{**********************************************************************}

unit LPB;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLListas = interface;
  IXMLLista = interface;
  IXMLDestinatario = interface;
  IXMLReportados = interface;
  IXMLIndividuo = interface;
  IXMLIndividuoList = interface;
  IXMLTitulo = interface;
  IXMLDesignacion = interface;
  IXMLNacionalidad2 = interface;
  IXMLUltima_Actualizacion = interface;
  IXMLAlias_Individuo = interface;
  IXMLAlias_IndividuoList = interface;
  IXMLDomicilio_Individuo = interface;
  IXMLDomicilio_IndividuoList = interface;
  IXMLFecha_Nac_Individuo = interface;
  IXMLFecha_Nac_IndividuoList = interface;
  IXMLLugar_Nacimiento_Individuo = interface;
  IXMLLugar_Nacimiento_IndividuoList = interface;
  IXMLDocumento_Individuo = interface;
  IXMLDocumento_IndividuoList = interface;
  IXMLEntidad = interface;
  IXMLEntidadList = interface;
  IXMLAlias_Entidad = interface;
  IXMLAlias_EntidadList = interface;
  IXMLDomicilio_Entidad = interface;
  IXMLDomicilio_EntidadList = interface;
  IXMLString_List = interface;

{ IXMLListas }

  IXMLListas = interface(IXMLNodeCollection)
    ['{AFF45F46-8D94-4909-B83D-FE7415F59BC8}']
    { Property Accessors }
    function Get_Lista(Index: Integer): IXMLLista;
    { Methods & Properties }
    function Add: IXMLLista;
    function Insert(const Index: Integer): IXMLLista;
    property Lista[Index: Integer]: IXMLLista read Get_Lista; default;
  end;

{ IXMLLista }

  IXMLLista = interface(IXMLNode)
    ['{9129F7A6-A5DA-4B6D-9CD7-7E40465D53E3}']
    { Property Accessors }
    function Get_Acuerdo_LPB: UnicodeString;
    function Get_Fecha_Gen: UnicodeString;
    function Get_Tipo_Lista: UnicodeString;
    function Get_Destinatario: IXMLDestinatario;
    function Get_Reportados: IXMLReportados;
    procedure Set_Acuerdo_LPB(Value: UnicodeString);
    procedure Set_Fecha_Gen(Value: UnicodeString);
    procedure Set_Tipo_Lista(Value: UnicodeString);
    { Methods & Properties }
    property Acuerdo_LPB: UnicodeString read Get_Acuerdo_LPB write Set_Acuerdo_LPB;
    property Fecha_Gen: UnicodeString read Get_Fecha_Gen write Set_Fecha_Gen;
    property Tipo_Lista: UnicodeString read Get_Tipo_Lista write Set_Tipo_Lista;
    property Destinatario: IXMLDestinatario read Get_Destinatario;
    property Reportados: IXMLReportados read Get_Reportados;
  end;

{ IXMLDestinatario }

  IXMLDestinatario = interface(IXMLNode)
    ['{C84AEF02-2432-4DE5-B2F6-B8ECE3CD7DFD}']
    { Property Accessors }
    function Get_Sector: IXMLString_List;
    function Get_Institucion: IXMLString_List;
    { Methods & Properties }
    property Sector: IXMLString_List read Get_Sector;
    property Institucion: IXMLString_List read Get_Institucion;
  end;

{ IXMLReportados }

  IXMLReportados = interface(IXMLNode)
    ['{116C6EE4-466D-449D-A826-33CD521A1D84}']
    { Property Accessors }
    function Get_Individuo: IXMLIndividuoList;
    function Get_Entidad: IXMLEntidadList;
    { Methods & Properties }
    property Individuo: IXMLIndividuoList read Get_Individuo;
    property Entidad: IXMLEntidadList read Get_Entidad;
  end;

{ IXMLIndividuo }

  IXMLIndividuo = interface(IXMLNode)
    ['{FECE2A06-E45C-41EA-B42E-C425CD13C1E5}']
    { Property Accessors }
    function Get_DataId: Integer;
    function Get_Numero_Version: Integer;
    function Get_Primer_Nombre: UnicodeString;
    function Get_Segundo_Nombre: UnicodeString;
    function Get_Tercer_Nombre: UnicodeString;
    function Get_Cuarto_Nombre: UnicodeString;
    function Get_UN_Tipo_Lista: UnicodeString;
    function Get_Tipo_Lista: UnicodeString;
    function Get_Numero_Referencia: UnicodeString;
    function Get_FechaListado: UnicodeString;
    function Get_Genero: UnicodeString;
    function Get_Presentado_Por: UnicodeString;
    function Get_Comentarios: UnicodeString;
    function Get_Nacionalidad: UnicodeString;
    function Get_Titulo: IXMLTitulo;
    function Get_Designacion: IXMLDesignacion;
    function Get_Nacionalidad2: IXMLNacionalidad2;
    function Get_Ultima_Actualizacion: IXMLUltima_Actualizacion;
    function Get_Alias_Individuo: IXMLAlias_IndividuoList;
    function Get_Domicilio_Individuo: IXMLDomicilio_IndividuoList;
    function Get_Fecha_Nac_Individuo: IXMLFecha_Nac_IndividuoList;
    function Get_Lugar_Nacimiento_Individuo: IXMLLugar_Nacimiento_IndividuoList;
    function Get_Documento_Individuo: IXMLDocumento_IndividuoList;
    function Get_Fecha_Retirado_Lista: UnicodeString;
    procedure Set_DataId(Value: Integer);
    procedure Set_Numero_Version(Value: Integer);
    procedure Set_Primer_Nombre(Value: UnicodeString);
    procedure Set_Segundo_Nombre(Value: UnicodeString);
    procedure Set_Tercer_Nombre(Value: UnicodeString);
    procedure Set_Cuarto_Nombre(Value: UnicodeString);
    procedure Set_UN_Tipo_Lista(Value: UnicodeString);
    procedure Set_Tipo_Lista(Value: UnicodeString);
    procedure Set_Numero_Referencia(Value: UnicodeString);
    procedure Set_FechaListado(Value: UnicodeString);
    procedure Set_Genero(Value: UnicodeString);
    procedure Set_Presentado_Por(Value: UnicodeString);
    procedure Set_Comentarios(Value: UnicodeString);
    procedure Set_Nacionalidad(Value: UnicodeString);
    procedure Set_Fecha_Retirado_Lista(Value: UnicodeString);
    { Methods & Properties }
    property DataId: Integer read Get_DataId write Set_DataId;
    property Numero_Version: Integer read Get_Numero_Version write Set_Numero_Version;
    property Primer_Nombre: UnicodeString read Get_Primer_Nombre write Set_Primer_Nombre;
    property Segundo_Nombre: UnicodeString read Get_Segundo_Nombre write Set_Segundo_Nombre;
    property Tercer_Nombre: UnicodeString read Get_Tercer_Nombre write Set_Tercer_Nombre;
    property Cuarto_Nombre: UnicodeString read Get_Cuarto_Nombre write Set_Cuarto_Nombre;
    property UN_Tipo_Lista: UnicodeString read Get_UN_Tipo_Lista write Set_UN_Tipo_Lista;
    property Tipo_Lista: UnicodeString read Get_Tipo_Lista write Set_Tipo_Lista;
    property Numero_Referencia: UnicodeString read Get_Numero_Referencia write Set_Numero_Referencia;
    property FechaListado: UnicodeString read Get_FechaListado write Set_FechaListado;
    property Genero: UnicodeString read Get_Genero write Set_Genero;
    property Presentado_Por: UnicodeString read Get_Presentado_Por write Set_Presentado_Por;
    property Comentarios: UnicodeString read Get_Comentarios write Set_Comentarios;
    property Nacionalidad: UnicodeString read Get_Nacionalidad write Set_Nacionalidad;
    property Titulo: IXMLTitulo read Get_Titulo;
    property Designacion: IXMLDesignacion read Get_Designacion;
    property Nacionalidad2: IXMLNacionalidad2 read Get_Nacionalidad2;
    property Ultima_Actualizacion: IXMLUltima_Actualizacion read Get_Ultima_Actualizacion;
    property Alias_Individuo: IXMLAlias_IndividuoList read Get_Alias_Individuo;
    property Domicilio_Individuo: IXMLDomicilio_IndividuoList read Get_Domicilio_Individuo;
    property Fecha_Nac_Individuo: IXMLFecha_Nac_IndividuoList read Get_Fecha_Nac_Individuo;
    property Lugar_Nacimiento_Individuo: IXMLLugar_Nacimiento_IndividuoList read Get_Lugar_Nacimiento_Individuo;
    property Documento_Individuo: IXMLDocumento_IndividuoList read Get_Documento_Individuo;
    property Fecha_Retirado_Lista: UnicodeString read Get_Fecha_Retirado_Lista write Set_Fecha_Retirado_Lista;
  end;

{ IXMLIndividuoList }

  IXMLIndividuoList = interface(IXMLNodeCollection)
    ['{A695DCB1-13E9-4A63-A2BD-07462DC5D765}']
    { Methods & Properties }
    function Add: IXMLIndividuo;
    function Insert(const Index: Integer): IXMLIndividuo;

    function Get_Item(Index: Integer): IXMLIndividuo;
    property Items[Index: Integer]: IXMLIndividuo read Get_Item; default;
  end;

{ IXMLTitulo }

  IXMLTitulo = interface(IXMLNodeCollection)
    ['{EBCEB68C-61B4-4FDD-B8A1-7FA1F5049995}']
    { Property Accessors }
    function Get_VALUE(Index: Integer): UnicodeString;
    { Methods & Properties }
    function Add(const VALUE: UnicodeString): IXMLNode;
    function Insert(const Index: Integer; const VALUE: UnicodeString): IXMLNode;
    property VALUE[Index: Integer]: UnicodeString read Get_VALUE; default;
  end;

{ IXMLDesignacion }

  IXMLDesignacion = interface(IXMLNodeCollection)
    ['{CF863B83-8532-42A1-B363-09F0C5C242D1}']
    { Property Accessors }
    function Get_VALUE(Index: Integer): UnicodeString;
    { Methods & Properties }
    function Add(const VALUE: UnicodeString): IXMLNode;
    function Insert(const Index: Integer; const VALUE: UnicodeString): IXMLNode;
    property VALUE[Index: Integer]: UnicodeString read Get_VALUE; default;
  end;

{ IXMLNacionalidad2 }

  IXMLNacionalidad2 = interface(IXMLNodeCollection)
    ['{CB325EB8-FA8A-45DC-9345-8AB5EEC0AAC8}']
    { Property Accessors }
    function Get_VALUE(Index: Integer): UnicodeString;
    { Methods & Properties }
    function Add(const VALUE: UnicodeString): IXMLNode;
    function Insert(const Index: Integer; const VALUE: UnicodeString): IXMLNode;
    property VALUE[Index: Integer]: UnicodeString read Get_VALUE; default;
  end;

{ IXMLUltima_Actualizacion }

  IXMLUltima_Actualizacion = interface(IXMLNodeCollection)
    ['{93904ED5-4189-4D65-A511-F4C6B80DE5BD}']
    { Property Accessors }
    function Get_VALUE(Index: Integer): UnicodeString;
    { Methods & Properties }
    function Add(const VALUE: UnicodeString): IXMLNode;
    function Insert(const Index: Integer; const VALUE: UnicodeString): IXMLNode;
    property VALUE[Index: Integer]: UnicodeString read Get_VALUE; default;
  end;

{ IXMLAlias_Individuo }

  IXMLAlias_Individuo = interface(IXMLNode)
    ['{65021DDF-109E-48E5-87E4-33CDCACF53B3}']
    { Property Accessors }
    function Get_Calidad: UnicodeString;
    function Get_Nombre_Alias: UnicodeString;
    function Get_Fecha_Nacimiento: UnicodeString;
    function Get_Ciudad_Nacimiento: UnicodeString;
    function Get_Pais_Nacimiento: UnicodeString;
    function Get_Nota: UnicodeString;
    procedure Set_Calidad(Value: UnicodeString);
    procedure Set_Nombre_Alias(Value: UnicodeString);
    procedure Set_Fecha_Nacimiento(Value: UnicodeString);
    procedure Set_Ciudad_Nacimiento(Value: UnicodeString);
    procedure Set_Pais_Nacimiento(Value: UnicodeString);
    procedure Set_Nota(Value: UnicodeString);
    { Methods & Properties }
    property Calidad: UnicodeString read Get_Calidad write Set_Calidad;
    property Nombre_Alias: UnicodeString read Get_Nombre_Alias write Set_Nombre_Alias;
    property Fecha_Nacimiento: UnicodeString read Get_Fecha_Nacimiento write Set_Fecha_Nacimiento;
    property Ciudad_Nacimiento: UnicodeString read Get_Ciudad_Nacimiento write Set_Ciudad_Nacimiento;
    property Pais_Nacimiento: UnicodeString read Get_Pais_Nacimiento write Set_Pais_Nacimiento;
    property Nota: UnicodeString read Get_Nota write Set_Nota;
  end;

{ IXMLAlias_IndividuoList }

  IXMLAlias_IndividuoList = interface(IXMLNodeCollection)
    ['{AE59E6EA-44CA-4598-827B-921BF06E9731}']
    { Methods & Properties }
    function Add: IXMLAlias_Individuo;
    function Insert(const Index: Integer): IXMLAlias_Individuo;

    function Get_Item(Index: Integer): IXMLAlias_Individuo;
    property Items[Index: Integer]: IXMLAlias_Individuo read Get_Item; default;
  end;

{ IXMLDomicilio_Individuo }

  IXMLDomicilio_Individuo = interface(IXMLNode)
    ['{580F3EE1-221E-47CC-A447-F100F710B829}']
    { Property Accessors }
    function Get_Calle: UnicodeString;
    function Get_Ciudad: UnicodeString;
    function Get_Estado: UnicodeString;
    function Get_Codigo_Postal: UnicodeString;
    function Get_Pais: UnicodeString;
    function Get_Nota: UnicodeString;
    procedure Set_Calle(Value: UnicodeString);
    procedure Set_Ciudad(Value: UnicodeString);
    procedure Set_Estado(Value: UnicodeString);
    procedure Set_Codigo_Postal(Value: UnicodeString);
    procedure Set_Pais(Value: UnicodeString);
    procedure Set_Nota(Value: UnicodeString);
    { Methods & Properties }
    property Calle: UnicodeString read Get_Calle write Set_Calle;
    property Ciudad: UnicodeString read Get_Ciudad write Set_Ciudad;
    property Estado: UnicodeString read Get_Estado write Set_Estado;
    property Codigo_Postal: UnicodeString read Get_Codigo_Postal write Set_Codigo_Postal;
    property Pais: UnicodeString read Get_Pais write Set_Pais;
    property Nota: UnicodeString read Get_Nota write Set_Nota;
  end;

{ IXMLDomicilio_IndividuoList }

  IXMLDomicilio_IndividuoList = interface(IXMLNodeCollection)
    ['{7DDC99FF-8275-4532-B46D-214FF4BC5A7A}']
    { Methods & Properties }
    function Add: IXMLDomicilio_Individuo;
    function Insert(const Index: Integer): IXMLDomicilio_Individuo;

    function Get_Item(Index: Integer): IXMLDomicilio_Individuo;
    property Items[Index: Integer]: IXMLDomicilio_Individuo read Get_Item; default;
  end;

{ IXMLFecha_Nac_Individuo }

  IXMLFecha_Nac_Individuo = interface(IXMLNode)
    ['{7DA9846D-B054-4CA4-B4DE-6D1049CA588E}']
    { Property Accessors }
    function Get_Tipo_Fecha: UnicodeString;
    function Get_Nota: UnicodeString;
    function Get_Fecha: UnicodeString;
    function Get_Anno: Integer;
    function Get_DelAnno: Integer;
    function Get_AlAnno: Integer;
    procedure Set_Tipo_Fecha(Value: UnicodeString);
    procedure Set_Nota(Value: UnicodeString);
    procedure Set_Fecha(Value: UnicodeString);
    procedure Set_Anno(Value: Integer);
    procedure Set_DelAnno(Value: Integer);
    procedure Set_AlAnno(Value: Integer);
    { Methods & Properties }
    property Tipo_Fecha: UnicodeString read Get_Tipo_Fecha write Set_Tipo_Fecha;
    property Nota: UnicodeString read Get_Nota write Set_Nota;
    property Fecha: UnicodeString read Get_Fecha write Set_Fecha;
    property Anno: Integer read Get_Anno write Set_Anno;
    property DelAnno: Integer read Get_DelAnno write Set_DelAnno;
    property AlAnno: Integer read Get_AlAnno write Set_AlAnno;
  end;

{ IXMLFecha_Nac_IndividuoList }

  IXMLFecha_Nac_IndividuoList = interface(IXMLNodeCollection)
    ['{FF7C443B-8C49-4F3B-B73A-3A8C275A18BD}']
    { Methods & Properties }
    function Add: IXMLFecha_Nac_Individuo;
    function Insert(const Index: Integer): IXMLFecha_Nac_Individuo;

    function Get_Item(Index: Integer): IXMLFecha_Nac_Individuo;
    property Items[Index: Integer]: IXMLFecha_Nac_Individuo read Get_Item; default;
  end;

{ IXMLLugar_Nacimiento_Individuo }

  IXMLLugar_Nacimiento_Individuo = interface(IXMLNode)
    ['{AD2DA999-063D-42F5-9B0A-EF2A093C5855}']
    { Property Accessors }
    function Get_Ciudad: UnicodeString;
    function Get_Estado: UnicodeString;
    function Get_Pais: UnicodeString;
    function Get_Nota: UnicodeString;
    procedure Set_Ciudad(Value: UnicodeString);
    procedure Set_Estado(Value: UnicodeString);
    procedure Set_Pais(Value: UnicodeString);
    procedure Set_Nota(Value: UnicodeString);
    { Methods & Properties }
    property Ciudad: UnicodeString read Get_Ciudad write Set_Ciudad;
    property Estado: UnicodeString read Get_Estado write Set_Estado;
    property Pais: UnicodeString read Get_Pais write Set_Pais;
    property Nota: UnicodeString read Get_Nota write Set_Nota;
  end;

{ IXMLLugar_Nacimiento_IndividuoList }

  IXMLLugar_Nacimiento_IndividuoList = interface(IXMLNodeCollection)
    ['{9F52076E-E0B5-4122-ACCC-173E0E859798}']
    { Methods & Properties }
    function Add: IXMLLugar_Nacimiento_Individuo;
    function Insert(const Index: Integer): IXMLLugar_Nacimiento_Individuo;

    function Get_Item(Index: Integer): IXMLLugar_Nacimiento_Individuo;
    property Items[Index: Integer]: IXMLLugar_Nacimiento_Individuo read Get_Item; default;
  end;

{ IXMLDocumento_Individuo }

  IXMLDocumento_Individuo = interface(IXMLNode)
    ['{E4A3BAE1-F25F-42FF-AF6D-F686C916F74A}']
    { Property Accessors }
    function Get_Tipo_Documento: UnicodeString;
    function Get_Tipo_Documento2: UnicodeString;
    function Get_Numero: UnicodeString;
    function Get_Pais_Emisor: UnicodeString;
    function Get_Fecha_Emision: UnicodeString;
    function Get_Ciudad_Emision: UnicodeString;
    function Get_Pais_Emision: UnicodeString;
    function Get_Nota: UnicodeString;
    procedure Set_Tipo_Documento(Value: UnicodeString);
    procedure Set_Tipo_Documento2(Value: UnicodeString);
    procedure Set_Numero(Value: UnicodeString);
    procedure Set_Pais_Emisor(Value: UnicodeString);
    procedure Set_Fecha_Emision(Value: UnicodeString);
    procedure Set_Ciudad_Emision(Value: UnicodeString);
    procedure Set_Pais_Emision(Value: UnicodeString);
    procedure Set_Nota(Value: UnicodeString);
    { Methods & Properties }
    property Tipo_Documento: UnicodeString read Get_Tipo_Documento write Set_Tipo_Documento;
    property Tipo_Documento2: UnicodeString read Get_Tipo_Documento2 write Set_Tipo_Documento2;
    property Numero: UnicodeString read Get_Numero write Set_Numero;
    property Pais_Emisor: UnicodeString read Get_Pais_Emisor write Set_Pais_Emisor;
    property Fecha_Emision: UnicodeString read Get_Fecha_Emision write Set_Fecha_Emision;
    property Ciudad_Emision: UnicodeString read Get_Ciudad_Emision write Set_Ciudad_Emision;
    property Pais_Emision: UnicodeString read Get_Pais_Emision write Set_Pais_Emision;
    property Nota: UnicodeString read Get_Nota write Set_Nota;
  end;

{ IXMLDocumento_IndividuoList }

  IXMLDocumento_IndividuoList = interface(IXMLNodeCollection)
    ['{AE9D062F-D9CF-4DB3-853A-C4AEAC01816D}']
    { Methods & Properties }
    function Add: IXMLDocumento_Individuo;
    function Insert(const Index: Integer): IXMLDocumento_Individuo;

    function Get_Item(Index: Integer): IXMLDocumento_Individuo;
    property Items[Index: Integer]: IXMLDocumento_Individuo read Get_Item; default;
  end;

{ IXMLEntidad }

  IXMLEntidad = interface(IXMLNode)
    ['{DF993C13-5D9B-494A-BC27-77BD82BE07F7}']
    { Property Accessors }
    function Get_DataId: Integer;
    function Get_Numero_Version: Integer;
    function Get_Primer_Nombre: UnicodeString;
    function Get_UN_Tipo_Lista: UnicodeString;
    function Get_Tipo_Lista: UnicodeString;
    function Get_Numero_Referencia: UnicodeString;
    function Get_FechaListado: UnicodeString;
    function Get_Fecha_Presentado: UnicodeString;
    function Get_Comentarios: UnicodeString;
    function Get_Ultima_Actualizacion: IXMLUltima_Actualizacion;
    function Get_Alias_Entidad: IXMLAlias_EntidadList;
    function Get_Domicilio_Entidad: IXMLDomicilio_EntidadList;
    function Get_Fecha_Retirado_Lista: UnicodeString;
    procedure Set_DataId(Value: Integer);
    procedure Set_Numero_Version(Value: Integer);
    procedure Set_Primer_Nombre(Value: UnicodeString);
    procedure Set_UN_Tipo_Lista(Value: UnicodeString);
    procedure Set_Tipo_Lista(Value: UnicodeString);
    procedure Set_Numero_Referencia(Value: UnicodeString);
    procedure Set_FechaListado(Value: UnicodeString);
    procedure Set_Fecha_Presentado(Value: UnicodeString);
    procedure Set_Comentarios(Value: UnicodeString);
    procedure Set_Fecha_Retirado_Lista(Value: UnicodeString);
    { Methods & Properties }
    property DataId: Integer read Get_DataId write Set_DataId;
    property Numero_Version: Integer read Get_Numero_Version write Set_Numero_Version;
    property Primer_Nombre: UnicodeString read Get_Primer_Nombre write Set_Primer_Nombre;
    property UN_Tipo_Lista: UnicodeString read Get_UN_Tipo_Lista write Set_UN_Tipo_Lista;
    property Tipo_Lista: UnicodeString read Get_Tipo_Lista write Set_Tipo_Lista;
    property Numero_Referencia: UnicodeString read Get_Numero_Referencia write Set_Numero_Referencia;
    property FechaListado: UnicodeString read Get_FechaListado write Set_FechaListado;
    property Fecha_Presentado: UnicodeString read Get_Fecha_Presentado write Set_Fecha_Presentado;
    property Comentarios: UnicodeString read Get_Comentarios write Set_Comentarios;
    property Ultima_Actualizacion: IXMLUltima_Actualizacion read Get_Ultima_Actualizacion;
    property Alias_Entidad: IXMLAlias_EntidadList read Get_Alias_Entidad;
    property Domicilio_Entidad: IXMLDomicilio_EntidadList read Get_Domicilio_Entidad;
    property Fecha_Retirado_Lista: UnicodeString read Get_Fecha_Retirado_Lista write Set_Fecha_Retirado_Lista;
  end;

{ IXMLEntidadList }

  IXMLEntidadList = interface(IXMLNodeCollection)
    ['{A11A968E-3514-4C93-A1C5-3DD2E5CBCE30}']
    { Methods & Properties }
    function Add: IXMLEntidad;
    function Insert(const Index: Integer): IXMLEntidad;

    function Get_Item(Index: Integer): IXMLEntidad;
    property Items[Index: Integer]: IXMLEntidad read Get_Item; default;
  end;

{ IXMLAlias_Entidad }

  IXMLAlias_Entidad = interface(IXMLNode)
    ['{9022CC3F-856E-42CC-9926-8426D3C73A38}']
    { Property Accessors }
    function Get_Calidad: UnicodeString;
    function Get_Nombre_Alias: UnicodeString;
    procedure Set_Calidad(Value: UnicodeString);
    procedure Set_Nombre_Alias(Value: UnicodeString);
    { Methods & Properties }
    property Calidad: UnicodeString read Get_Calidad write Set_Calidad;
    property Nombre_Alias: UnicodeString read Get_Nombre_Alias write Set_Nombre_Alias;
  end;

{ IXMLAlias_EntidadList }

  IXMLAlias_EntidadList = interface(IXMLNodeCollection)
    ['{300E9BBD-069E-460C-9130-9EF0FFFFA27D}']
    { Methods & Properties }
    function Add: IXMLAlias_Entidad;
    function Insert(const Index: Integer): IXMLAlias_Entidad;

    function Get_Item(Index: Integer): IXMLAlias_Entidad;
    property Items[Index: Integer]: IXMLAlias_Entidad read Get_Item; default;
  end;

{ IXMLDomicilio_Entidad }

  IXMLDomicilio_Entidad = interface(IXMLNode)
    ['{EAA6B29E-9B63-4445-A560-297E97D95B26}']
    { Property Accessors }
    function Get_Calle: UnicodeString;
    function Get_Ciudad: UnicodeString;
    function Get_Estado: UnicodeString;
    function Get_Codigo_Postal: UnicodeString;
    function Get_Pais: UnicodeString;
    function Get_Nota: UnicodeString;
    procedure Set_Calle(Value: UnicodeString);
    procedure Set_Ciudad(Value: UnicodeString);
    procedure Set_Estado(Value: UnicodeString);
    procedure Set_Codigo_Postal(Value: UnicodeString);
    procedure Set_Pais(Value: UnicodeString);
    procedure Set_Nota(Value: UnicodeString);
    { Methods & Properties }
    property Calle: UnicodeString read Get_Calle write Set_Calle;
    property Ciudad: UnicodeString read Get_Ciudad write Set_Ciudad;
    property Estado: UnicodeString read Get_Estado write Set_Estado;
    property Codigo_Postal: UnicodeString read Get_Codigo_Postal write Set_Codigo_Postal;
    property Pais: UnicodeString read Get_Pais write Set_Pais;
    property Nota: UnicodeString read Get_Nota write Set_Nota;
  end;

{ IXMLDomicilio_EntidadList }

  IXMLDomicilio_EntidadList = interface(IXMLNodeCollection)
    ['{2F59BE28-4D30-488C-830B-6B613D75B215}']
    { Methods & Properties }
    function Add: IXMLDomicilio_Entidad;
    function Insert(const Index: Integer): IXMLDomicilio_Entidad;

    function Get_Item(Index: Integer): IXMLDomicilio_Entidad;
    property Items[Index: Integer]: IXMLDomicilio_Entidad read Get_Item; default;
  end;

{ IXMLString_List }

  IXMLString_List = interface(IXMLNodeCollection)
    ['{AE099956-2AC7-41F1-848A-C8D73AFF347F}']
    { Methods & Properties }
    function Add(const Value: UnicodeString): IXMLNode;
    function Insert(const Index: Integer; const Value: UnicodeString): IXMLNode;

    function Get_Item(Index: Integer): UnicodeString;
    property Items[Index: Integer]: UnicodeString read Get_Item; default;
  end;

{ Forward Decls }

  TXMLListas = class;
  TXMLLista = class;
  TXMLDestinatario = class;
  TXMLReportados = class;
  TXMLIndividuo = class;
  TXMLIndividuoList = class;
  TXMLTitulo = class;
  TXMLDesignacion = class;
  TXMLNacionalidad2 = class;
  TXMLUltima_Actualizacion = class;
  TXMLAlias_Individuo = class;
  TXMLAlias_IndividuoList = class;
  TXMLDomicilio_Individuo = class;
  TXMLDomicilio_IndividuoList = class;
  TXMLFecha_Nac_Individuo = class;
  TXMLFecha_Nac_IndividuoList = class;
  TXMLLugar_Nacimiento_Individuo = class;
  TXMLLugar_Nacimiento_IndividuoList = class;
  TXMLDocumento_Individuo = class;
  TXMLDocumento_IndividuoList = class;
  TXMLEntidad = class;
  TXMLEntidadList = class;
  TXMLAlias_Entidad = class;
  TXMLAlias_EntidadList = class;
  TXMLDomicilio_Entidad = class;
  TXMLDomicilio_EntidadList = class;
  TXMLString_List = class;

{ TXMLListas }

  TXMLListas = class(TXMLNodeCollection, IXMLListas)
  protected
    { IXMLListas }
    function Get_Lista(Index: Integer): IXMLLista;
    function Add: IXMLLista;
    function Insert(const Index: Integer): IXMLLista;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLLista }

  TXMLLista = class(TXMLNode, IXMLLista)
  protected
    { IXMLLista }
    function Get_Acuerdo_LPB: UnicodeString;
    function Get_Fecha_Gen: UnicodeString;
    function Get_Tipo_Lista: UnicodeString;
    function Get_Destinatario: IXMLDestinatario;
    function Get_Reportados: IXMLReportados;
    procedure Set_Acuerdo_LPB(Value: UnicodeString);
    procedure Set_Fecha_Gen(Value: UnicodeString);
    procedure Set_Tipo_Lista(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLDestinatario }

  TXMLDestinatario = class(TXMLNode, IXMLDestinatario)
  private
    FSector: IXMLString_List;
    FInstitucion: IXMLString_List;
  protected
    { IXMLDestinatario }
    function Get_Sector: IXMLString_List;
    function Get_Institucion: IXMLString_List;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLReportados }

  TXMLReportados = class(TXMLNode, IXMLReportados)
  private
    FIndividuo: IXMLIndividuoList;
    FEntidad: IXMLEntidadList;
  protected
    { IXMLReportados }
    function Get_Individuo: IXMLIndividuoList;
    function Get_Entidad: IXMLEntidadList;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLIndividuo }

  TXMLIndividuo = class(TXMLNode, IXMLIndividuo)
  private
    FAlias_Individuo: IXMLAlias_IndividuoList;
    FDomicilio_Individuo: IXMLDomicilio_IndividuoList;
    FFecha_Nac_Individuo: IXMLFecha_Nac_IndividuoList;
    FLugar_Nacimiento_Individuo: IXMLLugar_Nacimiento_IndividuoList;
    FDocumento_Individuo: IXMLDocumento_IndividuoList;
  protected
    { IXMLIndividuo }
    function Get_DataId: Integer;
    function Get_Numero_Version: Integer;
    function Get_Primer_Nombre: UnicodeString;
    function Get_Segundo_Nombre: UnicodeString;
    function Get_Tercer_Nombre: UnicodeString;
    function Get_Cuarto_Nombre: UnicodeString;
    function Get_UN_Tipo_Lista: UnicodeString;
    function Get_Tipo_Lista: UnicodeString;
    function Get_Numero_Referencia: UnicodeString;
    function Get_FechaListado: UnicodeString;
    function Get_Genero: UnicodeString;
    function Get_Presentado_Por: UnicodeString;
    function Get_Comentarios: UnicodeString;
    function Get_Nacionalidad: UnicodeString;
    function Get_Titulo: IXMLTitulo;
    function Get_Designacion: IXMLDesignacion;
    function Get_Nacionalidad2: IXMLNacionalidad2;
    function Get_Ultima_Actualizacion: IXMLUltima_Actualizacion;
    function Get_Alias_Individuo: IXMLAlias_IndividuoList;
    function Get_Domicilio_Individuo: IXMLDomicilio_IndividuoList;
    function Get_Fecha_Nac_Individuo: IXMLFecha_Nac_IndividuoList;
    function Get_Lugar_Nacimiento_Individuo: IXMLLugar_Nacimiento_IndividuoList;
    function Get_Documento_Individuo: IXMLDocumento_IndividuoList;
    function Get_Fecha_Retirado_Lista: UnicodeString;
    procedure Set_DataId(Value: Integer);
    procedure Set_Numero_Version(Value: Integer);
    procedure Set_Primer_Nombre(Value: UnicodeString);
    procedure Set_Segundo_Nombre(Value: UnicodeString);
    procedure Set_Tercer_Nombre(Value: UnicodeString);
    procedure Set_Cuarto_Nombre(Value: UnicodeString);
    procedure Set_UN_Tipo_Lista(Value: UnicodeString);
    procedure Set_Tipo_Lista(Value: UnicodeString);
    procedure Set_Numero_Referencia(Value: UnicodeString);
    procedure Set_FechaListado(Value: UnicodeString);
    procedure Set_Genero(Value: UnicodeString);
    procedure Set_Presentado_Por(Value: UnicodeString);
    procedure Set_Comentarios(Value: UnicodeString);
    procedure Set_Nacionalidad(Value: UnicodeString);
    procedure Set_Fecha_Retirado_Lista(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLIndividuoList }

  TXMLIndividuoList = class(TXMLNodeCollection, IXMLIndividuoList)
  protected
    { IXMLIndividuoList }
    function Add: IXMLIndividuo;
    function Insert(const Index: Integer): IXMLIndividuo;

    function Get_Item(Index: Integer): IXMLIndividuo;
  end;

{ TXMLTitulo }

  TXMLTitulo = class(TXMLNodeCollection, IXMLTitulo)
  protected
    { IXMLTitulo }
    function Get_VALUE(Index: Integer): UnicodeString;
    function Add(const VALUE: UnicodeString): IXMLNode;
    function Insert(const Index: Integer; const VALUE: UnicodeString): IXMLNode;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLDesignacion }

  TXMLDesignacion = class(TXMLNodeCollection, IXMLDesignacion)
  protected
    { IXMLDesignacion }
    function Get_VALUE(Index: Integer): UnicodeString;
    function Add(const VALUE: UnicodeString): IXMLNode;
    function Insert(const Index: Integer; const VALUE: UnicodeString): IXMLNode;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLNacionalidad2 }

  TXMLNacionalidad2 = class(TXMLNodeCollection, IXMLNacionalidad2)
  protected
    { IXMLNacionalidad2 }
    function Get_VALUE(Index: Integer): UnicodeString;
    function Add(const VALUE: UnicodeString): IXMLNode;
    function Insert(const Index: Integer; const VALUE: UnicodeString): IXMLNode;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLUltima_Actualizacion }

  TXMLUltima_Actualizacion = class(TXMLNodeCollection, IXMLUltima_Actualizacion)
  protected
    { IXMLUltima_Actualizacion }
    function Get_VALUE(Index: Integer): UnicodeString;
    function Add(const VALUE: UnicodeString): IXMLNode;
    function Insert(const Index: Integer; const VALUE: UnicodeString): IXMLNode;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLAlias_Individuo }

  TXMLAlias_Individuo = class(TXMLNode, IXMLAlias_Individuo)
  protected
    { IXMLAlias_Individuo }
    function Get_Calidad: UnicodeString;
    function Get_Nombre_Alias: UnicodeString;
    function Get_Fecha_Nacimiento: UnicodeString;
    function Get_Ciudad_Nacimiento: UnicodeString;
    function Get_Pais_Nacimiento: UnicodeString;
    function Get_Nota: UnicodeString;
    procedure Set_Calidad(Value: UnicodeString);
    procedure Set_Nombre_Alias(Value: UnicodeString);
    procedure Set_Fecha_Nacimiento(Value: UnicodeString);
    procedure Set_Ciudad_Nacimiento(Value: UnicodeString);
    procedure Set_Pais_Nacimiento(Value: UnicodeString);
    procedure Set_Nota(Value: UnicodeString);
  end;

{ TXMLAlias_IndividuoList }

  TXMLAlias_IndividuoList = class(TXMLNodeCollection, IXMLAlias_IndividuoList)
  protected
    { IXMLAlias_IndividuoList }
    function Add: IXMLAlias_Individuo;
    function Insert(const Index: Integer): IXMLAlias_Individuo;

    function Get_Item(Index: Integer): IXMLAlias_Individuo;
  end;

{ TXMLDomicilio_Individuo }

  TXMLDomicilio_Individuo = class(TXMLNode, IXMLDomicilio_Individuo)
  protected
    { IXMLDomicilio_Individuo }
    function Get_Calle: UnicodeString;
    function Get_Ciudad: UnicodeString;
    function Get_Estado: UnicodeString;
    function Get_Codigo_Postal: UnicodeString;
    function Get_Pais: UnicodeString;
    function Get_Nota: UnicodeString;
    procedure Set_Calle(Value: UnicodeString);
    procedure Set_Ciudad(Value: UnicodeString);
    procedure Set_Estado(Value: UnicodeString);
    procedure Set_Codigo_Postal(Value: UnicodeString);
    procedure Set_Pais(Value: UnicodeString);
    procedure Set_Nota(Value: UnicodeString);
  end;

{ TXMLDomicilio_IndividuoList }

  TXMLDomicilio_IndividuoList = class(TXMLNodeCollection, IXMLDomicilio_IndividuoList)
  protected
    { IXMLDomicilio_IndividuoList }
    function Add: IXMLDomicilio_Individuo;
    function Insert(const Index: Integer): IXMLDomicilio_Individuo;

    function Get_Item(Index: Integer): IXMLDomicilio_Individuo;
  end;

{ TXMLFecha_Nac_Individuo }

  TXMLFecha_Nac_Individuo = class(TXMLNode, IXMLFecha_Nac_Individuo)
  protected
    { IXMLFecha_Nac_Individuo }
    function Get_Tipo_Fecha: UnicodeString;
    function Get_Nota: UnicodeString;
    function Get_Fecha: UnicodeString;
    function Get_Anno: Integer;
    function Get_DelAnno: Integer;
    function Get_AlAnno: Integer;
    procedure Set_Tipo_Fecha(Value: UnicodeString);
    procedure Set_Nota(Value: UnicodeString);
    procedure Set_Fecha(Value: UnicodeString);
    procedure Set_Anno(Value: Integer);
    procedure Set_DelAnno(Value: Integer);
    procedure Set_AlAnno(Value: Integer);
  end;

{ TXMLFecha_Nac_IndividuoList }

  TXMLFecha_Nac_IndividuoList = class(TXMLNodeCollection, IXMLFecha_Nac_IndividuoList)
  protected
    { IXMLFecha_Nac_IndividuoList }
    function Add: IXMLFecha_Nac_Individuo;
    function Insert(const Index: Integer): IXMLFecha_Nac_Individuo;

    function Get_Item(Index: Integer): IXMLFecha_Nac_Individuo;
  end;

{ TXMLLugar_Nacimiento_Individuo }

  TXMLLugar_Nacimiento_Individuo = class(TXMLNode, IXMLLugar_Nacimiento_Individuo)
  protected
    { IXMLLugar_Nacimiento_Individuo }
    function Get_Ciudad: UnicodeString;
    function Get_Estado: UnicodeString;
    function Get_Pais: UnicodeString;
    function Get_Nota: UnicodeString;
    procedure Set_Ciudad(Value: UnicodeString);
    procedure Set_Estado(Value: UnicodeString);
    procedure Set_Pais(Value: UnicodeString);
    procedure Set_Nota(Value: UnicodeString);
  end;

{ TXMLLugar_Nacimiento_IndividuoList }

  TXMLLugar_Nacimiento_IndividuoList = class(TXMLNodeCollection, IXMLLugar_Nacimiento_IndividuoList)
  protected
    { IXMLLugar_Nacimiento_IndividuoList }
    function Add: IXMLLugar_Nacimiento_Individuo;
    function Insert(const Index: Integer): IXMLLugar_Nacimiento_Individuo;

    function Get_Item(Index: Integer): IXMLLugar_Nacimiento_Individuo;
  end;

{ TXMLDocumento_Individuo }

  TXMLDocumento_Individuo = class(TXMLNode, IXMLDocumento_Individuo)
  protected
    { IXMLDocumento_Individuo }
    function Get_Tipo_Documento: UnicodeString;
    function Get_Tipo_Documento2: UnicodeString;
    function Get_Numero: UnicodeString;
    function Get_Pais_Emisor: UnicodeString;
    function Get_Fecha_Emision: UnicodeString;
    function Get_Ciudad_Emision: UnicodeString;
    function Get_Pais_Emision: UnicodeString;
    function Get_Nota: UnicodeString;
    procedure Set_Tipo_Documento(Value: UnicodeString);
    procedure Set_Tipo_Documento2(Value: UnicodeString);
    procedure Set_Numero(Value: UnicodeString);
    procedure Set_Pais_Emisor(Value: UnicodeString);
    procedure Set_Fecha_Emision(Value: UnicodeString);
    procedure Set_Ciudad_Emision(Value: UnicodeString);
    procedure Set_Pais_Emision(Value: UnicodeString);
    procedure Set_Nota(Value: UnicodeString);
  end;

{ TXMLDocumento_IndividuoList }

  TXMLDocumento_IndividuoList = class(TXMLNodeCollection, IXMLDocumento_IndividuoList)
  protected
    { IXMLDocumento_IndividuoList }
    function Add: IXMLDocumento_Individuo;
    function Insert(const Index: Integer): IXMLDocumento_Individuo;

    function Get_Item(Index: Integer): IXMLDocumento_Individuo;
  end;

{ TXMLEntidad }

  TXMLEntidad = class(TXMLNode, IXMLEntidad)
  private
    FAlias_Entidad: IXMLAlias_EntidadList;
    FDomicilio_Entidad: IXMLDomicilio_EntidadList;
  protected
    { IXMLEntidad }
    function Get_DataId: Integer;
    function Get_Numero_Version: Integer;
    function Get_Primer_Nombre: UnicodeString;
    function Get_UN_Tipo_Lista: UnicodeString;
    function Get_Tipo_Lista: UnicodeString;
    function Get_Numero_Referencia: UnicodeString;
    function Get_FechaListado: UnicodeString;
    function Get_Fecha_Presentado: UnicodeString;
    function Get_Comentarios: UnicodeString;
    function Get_Ultima_Actualizacion: IXMLUltima_Actualizacion;
    function Get_Alias_Entidad: IXMLAlias_EntidadList;
    function Get_Domicilio_Entidad: IXMLDomicilio_EntidadList;
    function Get_Fecha_Retirado_Lista: UnicodeString;
    procedure Set_DataId(Value: Integer);
    procedure Set_Numero_Version(Value: Integer);
    procedure Set_Primer_Nombre(Value: UnicodeString);
    procedure Set_UN_Tipo_Lista(Value: UnicodeString);
    procedure Set_Tipo_Lista(Value: UnicodeString);
    procedure Set_Numero_Referencia(Value: UnicodeString);
    procedure Set_FechaListado(Value: UnicodeString);
    procedure Set_Fecha_Presentado(Value: UnicodeString);
    procedure Set_Comentarios(Value: UnicodeString);
    procedure Set_Fecha_Retirado_Lista(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLEntidadList }

  TXMLEntidadList = class(TXMLNodeCollection, IXMLEntidadList)
  protected
    { IXMLEntidadList }
    function Add: IXMLEntidad;
    function Insert(const Index: Integer): IXMLEntidad;

    function Get_Item(Index: Integer): IXMLEntidad;
  end;

{ TXMLAlias_Entidad }

  TXMLAlias_Entidad = class(TXMLNode, IXMLAlias_Entidad)
  protected
    { IXMLAlias_Entidad }
    function Get_Calidad: UnicodeString;
    function Get_Nombre_Alias: UnicodeString;
    procedure Set_Calidad(Value: UnicodeString);
    procedure Set_Nombre_Alias(Value: UnicodeString);
  end;

{ TXMLAlias_EntidadList }

  TXMLAlias_EntidadList = class(TXMLNodeCollection, IXMLAlias_EntidadList)
  protected
    { IXMLAlias_EntidadList }
    function Add: IXMLAlias_Entidad;
    function Insert(const Index: Integer): IXMLAlias_Entidad;

    function Get_Item(Index: Integer): IXMLAlias_Entidad;
  end;

{ TXMLDomicilio_Entidad }

  TXMLDomicilio_Entidad = class(TXMLNode, IXMLDomicilio_Entidad)
  protected
    { IXMLDomicilio_Entidad }
    function Get_Calle: UnicodeString;
    function Get_Ciudad: UnicodeString;
    function Get_Estado: UnicodeString;
    function Get_Codigo_Postal: UnicodeString;
    function Get_Pais: UnicodeString;
    function Get_Nota: UnicodeString;
    procedure Set_Calle(Value: UnicodeString);
    procedure Set_Ciudad(Value: UnicodeString);
    procedure Set_Estado(Value: UnicodeString);
    procedure Set_Codigo_Postal(Value: UnicodeString);
    procedure Set_Pais(Value: UnicodeString);
    procedure Set_Nota(Value: UnicodeString);
  end;

{ TXMLDomicilio_EntidadList }

  TXMLDomicilio_EntidadList = class(TXMLNodeCollection, IXMLDomicilio_EntidadList)
  protected
    { IXMLDomicilio_EntidadList }
    function Add: IXMLDomicilio_Entidad;
    function Insert(const Index: Integer): IXMLDomicilio_Entidad;

    function Get_Item(Index: Integer): IXMLDomicilio_Entidad;
  end;

{ TXMLString_List }

  TXMLString_List = class(TXMLNodeCollection, IXMLString_List)
  protected
    { IXMLString_List }
    function Add(const Value: UnicodeString): IXMLNode;
    function Insert(const Index: Integer; const Value: UnicodeString): IXMLNode;

    function Get_Item(Index: Integer): UnicodeString;
  end;

{ Global Functions }

function GetListas(Doc: IXMLDocument): IXMLListas;
function LoadListas(const FileName: string): IXMLListas;
function NewListas: IXMLListas;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetListas(Doc: IXMLDocument): IXMLListas;
begin
  Result := Doc.GetDocBinding('Listas', TXMLListas, TargetNamespace) as IXMLListas;
end;

function LoadListas(const FileName: string): IXMLListas;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Listas', TXMLListas, TargetNamespace) as IXMLListas;
end;

function NewListas: IXMLListas;
begin
  Result := NewXMLDocument.GetDocBinding('Listas', TXMLListas, TargetNamespace) as IXMLListas;
end;

{ TXMLListas }

procedure TXMLListas.AfterConstruction;
begin
  RegisterChildNode('Lista', TXMLLista);
  ItemTag := 'Lista';
  ItemInterface := IXMLLista;
  inherited;
end;

function TXMLListas.Get_Lista(Index: Integer): IXMLLista;
begin
  Result := List[Index] as IXMLLista;
end;

function TXMLListas.Add: IXMLLista;
begin
  Result := AddItem(-1) as IXMLLista;
end;

function TXMLListas.Insert(const Index: Integer): IXMLLista;
begin
  Result := AddItem(Index) as IXMLLista;
end;

{ TXMLLista }

procedure TXMLLista.AfterConstruction;
begin
  RegisterChildNode('Destinatario', TXMLDestinatario);
  RegisterChildNode('Reportados', TXMLReportados);
  inherited;
end;

function TXMLLista.Get_Acuerdo_LPB: UnicodeString;
begin
  Result := ChildNodes['Acuerdo_LPB'].Text;
end;

procedure TXMLLista.Set_Acuerdo_LPB(Value: UnicodeString);
begin
  ChildNodes['Acuerdo_LPB'].NodeValue := Value;
end;

function TXMLLista.Get_Fecha_Gen: UnicodeString;
begin
  Result := ChildNodes['Fecha_Gen'].Text;
end;

procedure TXMLLista.Set_Fecha_Gen(Value: UnicodeString);
begin
  ChildNodes['Fecha_Gen'].NodeValue := Value;
end;

function TXMLLista.Get_Tipo_Lista: UnicodeString;
begin
  Result := ChildNodes['Tipo_Lista'].Text;
end;

procedure TXMLLista.Set_Tipo_Lista(Value: UnicodeString);
begin
  ChildNodes['Tipo_Lista'].NodeValue := Value;
end;

function TXMLLista.Get_Destinatario: IXMLDestinatario;
begin
  Result := ChildNodes['Destinatario'] as IXMLDestinatario;
end;

function TXMLLista.Get_Reportados: IXMLReportados;
begin
  Result := ChildNodes['Reportados'] as IXMLReportados;
end;

{ TXMLDestinatario }

procedure TXMLDestinatario.AfterConstruction;
begin
  FSector := CreateCollection(TXMLString_List, IXMLNode, 'Sector') as IXMLString_List;
  FInstitucion := CreateCollection(TXMLString_List, IXMLNode, 'Institucion') as IXMLString_List;
  inherited;
end;

function TXMLDestinatario.Get_Sector: IXMLString_List;
begin
  Result := FSector;
end;

function TXMLDestinatario.Get_Institucion: IXMLString_List;
begin
  Result := FInstitucion;
end;

{ TXMLReportados }

procedure TXMLReportados.AfterConstruction;
begin
  RegisterChildNode('Individuo', TXMLIndividuo);
  RegisterChildNode('Entidad', TXMLEntidad);
  FIndividuo := CreateCollection(TXMLIndividuoList, IXMLIndividuo, 'Individuo') as IXMLIndividuoList;
  FEntidad := CreateCollection(TXMLEntidadList, IXMLEntidad, 'Entidad') as IXMLEntidadList;
  inherited;
end;

function TXMLReportados.Get_Individuo: IXMLIndividuoList;
begin
  Result := FIndividuo;
end;

function TXMLReportados.Get_Entidad: IXMLEntidadList;
begin
  Result := FEntidad;
end;

{ TXMLIndividuo }

procedure TXMLIndividuo.AfterConstruction;
begin
  RegisterChildNode('Titulo', TXMLTitulo);
  RegisterChildNode('Designacion', TXMLDesignacion);
  RegisterChildNode('Nacionalidad2', TXMLNacionalidad2);
  RegisterChildNode('Ultima_Actualizacion', TXMLUltima_Actualizacion);
  RegisterChildNode('Alias_Individuo', TXMLAlias_Individuo);
  RegisterChildNode('Domicilio_Individuo', TXMLDomicilio_Individuo);
  RegisterChildNode('Fecha_Nac_Individuo', TXMLFecha_Nac_Individuo);
  RegisterChildNode('Lugar_Nacimiento_Individuo', TXMLLugar_Nacimiento_Individuo);
  RegisterChildNode('Documento_Individuo', TXMLDocumento_Individuo);
  FAlias_Individuo := CreateCollection(TXMLAlias_IndividuoList, IXMLAlias_Individuo, 'Alias_Individuo') as IXMLAlias_IndividuoList;
  FDomicilio_Individuo := CreateCollection(TXMLDomicilio_IndividuoList, IXMLDomicilio_Individuo, 'Domicilio_Individuo') as IXMLDomicilio_IndividuoList;
  FFecha_Nac_Individuo := CreateCollection(TXMLFecha_Nac_IndividuoList, IXMLFecha_Nac_Individuo, 'Fecha_Nac_Individuo') as IXMLFecha_Nac_IndividuoList;
  FLugar_Nacimiento_Individuo := CreateCollection(TXMLLugar_Nacimiento_IndividuoList, IXMLLugar_Nacimiento_Individuo, 'Lugar_Nacimiento_Individuo') as IXMLLugar_Nacimiento_IndividuoList;
  FDocumento_Individuo := CreateCollection(TXMLDocumento_IndividuoList, IXMLDocumento_Individuo, 'Documento_Individuo') as IXMLDocumento_IndividuoList;
  inherited;
end;

function TXMLIndividuo.Get_DataId: Integer;
begin
  Result := ChildNodes['DataId'].NodeValue;
end;

procedure TXMLIndividuo.Set_DataId(Value: Integer);
begin
  ChildNodes['DataId'].NodeValue := Value;
end;

function TXMLIndividuo.Get_Numero_Version: Integer;
begin
  Result := ChildNodes['Numero_Version'].NodeValue;
end;

procedure TXMLIndividuo.Set_Numero_Version(Value: Integer);
begin
  ChildNodes['Numero_Version'].NodeValue := Value;
end;

function TXMLIndividuo.Get_Primer_Nombre: UnicodeString;
begin
  Result := ChildNodes['Primer_Nombre'].Text;
end;

procedure TXMLIndividuo.Set_Primer_Nombre(Value: UnicodeString);
begin
  ChildNodes['Primer_Nombre'].NodeValue := Value;
end;

function TXMLIndividuo.Get_Segundo_Nombre: UnicodeString;
begin
  Result := ChildNodes['Segundo_Nombre'].Text;
end;

procedure TXMLIndividuo.Set_Segundo_Nombre(Value: UnicodeString);
begin
  ChildNodes['Segundo_Nombre'].NodeValue := Value;
end;

function TXMLIndividuo.Get_Tercer_Nombre: UnicodeString;
begin
  Result := ChildNodes['Tercer_Nombre'].Text;
end;

procedure TXMLIndividuo.Set_Tercer_Nombre(Value: UnicodeString);
begin
  ChildNodes['Tercer_Nombre'].NodeValue := Value;
end;

function TXMLIndividuo.Get_Cuarto_Nombre: UnicodeString;
begin
  Result := ChildNodes['Cuarto_Nombre'].Text;
end;

procedure TXMLIndividuo.Set_Cuarto_Nombre(Value: UnicodeString);
begin
  ChildNodes['Cuarto_Nombre'].NodeValue := Value;
end;

function TXMLIndividuo.Get_UN_Tipo_Lista: UnicodeString;
begin
  Result := ChildNodes['UN_Tipo_Lista'].Text;
end;

procedure TXMLIndividuo.Set_UN_Tipo_Lista(Value: UnicodeString);
begin
  ChildNodes['UN_Tipo_Lista'].NodeValue := Value;
end;

function TXMLIndividuo.Get_Tipo_Lista: UnicodeString;
begin
  Result := ChildNodes['Tipo_Lista'].Text;
end;

procedure TXMLIndividuo.Set_Tipo_Lista(Value: UnicodeString);
begin
  ChildNodes['Tipo_Lista'].NodeValue := Value;
end;

function TXMLIndividuo.Get_Numero_Referencia: UnicodeString;
begin
  Result := ChildNodes['Numero_Referencia'].Text;
end;

procedure TXMLIndividuo.Set_Numero_Referencia(Value: UnicodeString);
begin
  ChildNodes['Numero_Referencia'].NodeValue := Value;
end;

function TXMLIndividuo.Get_FechaListado: UnicodeString;
begin
  Result := ChildNodes['FechaListado'].Text;
end;

procedure TXMLIndividuo.Set_FechaListado(Value: UnicodeString);
begin
  ChildNodes['FechaListado'].NodeValue := Value;
end;

function TXMLIndividuo.Get_Genero: UnicodeString;
begin
  Result := ChildNodes['Genero'].Text;
end;

procedure TXMLIndividuo.Set_Genero(Value: UnicodeString);
begin
  ChildNodes['Genero'].NodeValue := Value;
end;

function TXMLIndividuo.Get_Presentado_Por: UnicodeString;
begin
  Result := ChildNodes['Presentado_Por'].Text;
end;

procedure TXMLIndividuo.Set_Presentado_Por(Value: UnicodeString);
begin
  ChildNodes['Presentado_Por'].NodeValue := Value;
end;

function TXMLIndividuo.Get_Comentarios: UnicodeString;
begin
  Result := ChildNodes['Comentarios'].Text;
end;

procedure TXMLIndividuo.Set_Comentarios(Value: UnicodeString);
begin
  ChildNodes['Comentarios'].NodeValue := Value;
end;

function TXMLIndividuo.Get_Nacionalidad: UnicodeString;
begin
  Result := ChildNodes['Nacionalidad'].Text;
end;

procedure TXMLIndividuo.Set_Nacionalidad(Value: UnicodeString);
begin
  ChildNodes['Nacionalidad'].NodeValue := Value;
end;

function TXMLIndividuo.Get_Titulo: IXMLTitulo;
begin
  Result := ChildNodes['Titulo'] as IXMLTitulo;
end;

function TXMLIndividuo.Get_Designacion: IXMLDesignacion;
begin
  Result := ChildNodes['Designacion'] as IXMLDesignacion;
end;

function TXMLIndividuo.Get_Nacionalidad2: IXMLNacionalidad2;
begin
  Result := ChildNodes['Nacionalidad2'] as IXMLNacionalidad2;
end;

function TXMLIndividuo.Get_Ultima_Actualizacion: IXMLUltima_Actualizacion;
begin
  Result := ChildNodes['Ultima_Actualizacion'] as IXMLUltima_Actualizacion;
end;

function TXMLIndividuo.Get_Alias_Individuo: IXMLAlias_IndividuoList;
begin
  Result := FAlias_Individuo;
end;

function TXMLIndividuo.Get_Domicilio_Individuo: IXMLDomicilio_IndividuoList;
begin
  Result := FDomicilio_Individuo;
end;

function TXMLIndividuo.Get_Fecha_Nac_Individuo: IXMLFecha_Nac_IndividuoList;
begin
  Result := FFecha_Nac_Individuo;
end;

function TXMLIndividuo.Get_Lugar_Nacimiento_Individuo: IXMLLugar_Nacimiento_IndividuoList;
begin
  Result := FLugar_Nacimiento_Individuo;
end;

function TXMLIndividuo.Get_Documento_Individuo: IXMLDocumento_IndividuoList;
begin
  Result := FDocumento_Individuo;
end;

function TXMLIndividuo.Get_Fecha_Retirado_Lista: UnicodeString;
begin
  Result := ChildNodes['Fecha_Retirado_Lista'].Text;
end;

procedure TXMLIndividuo.Set_Fecha_Retirado_Lista(Value: UnicodeString);
begin
  ChildNodes['Fecha_Retirado_Lista'].NodeValue := Value;
end;

{ TXMLIndividuoList }

function TXMLIndividuoList.Add: IXMLIndividuo;
begin
  Result := AddItem(-1) as IXMLIndividuo;
end;

function TXMLIndividuoList.Insert(const Index: Integer): IXMLIndividuo;
begin
  Result := AddItem(Index) as IXMLIndividuo;
end;

function TXMLIndividuoList.Get_Item(Index: Integer): IXMLIndividuo;
begin
  Result := List[Index] as IXMLIndividuo;
end;

{ TXMLTitulo }

procedure TXMLTitulo.AfterConstruction;
begin
  ItemTag := 'VALUE';
  ItemInterface := IXMLNode;
  inherited;
end;

function TXMLTitulo.Get_VALUE(Index: Integer): UnicodeString;
begin
  Result := List[Index].Text;
end;

function TXMLTitulo.Add(const VALUE: UnicodeString): IXMLNode;
begin
  Result := AddItem(-1);
  Result.NodeValue := VALUE;
end;

function TXMLTitulo.Insert(const Index: Integer; const VALUE: UnicodeString): IXMLNode;
begin
  Result := AddItem(Index);
  Result.NodeValue := VALUE;
end;

{ TXMLDesignacion }

procedure TXMLDesignacion.AfterConstruction;
begin
  ItemTag := 'VALUE';
  ItemInterface := IXMLNode;
  inherited;
end;

function TXMLDesignacion.Get_VALUE(Index: Integer): UnicodeString;
begin
  Result := List[Index].Text;
end;

function TXMLDesignacion.Add(const VALUE: UnicodeString): IXMLNode;
begin
  Result := AddItem(-1);
  Result.NodeValue := VALUE;
end;

function TXMLDesignacion.Insert(const Index: Integer; const VALUE: UnicodeString): IXMLNode;
begin
  Result := AddItem(Index);
  Result.NodeValue := VALUE;
end;

{ TXMLNacionalidad2 }

procedure TXMLNacionalidad2.AfterConstruction;
begin
  ItemTag := 'VALUE';
  ItemInterface := IXMLNode;
  inherited;
end;

function TXMLNacionalidad2.Get_VALUE(Index: Integer): UnicodeString;
begin
  Result := List[Index].Text;
end;

function TXMLNacionalidad2.Add(const VALUE: UnicodeString): IXMLNode;
begin
  Result := AddItem(-1);
  Result.NodeValue := VALUE;
end;

function TXMLNacionalidad2.Insert(const Index: Integer; const VALUE: UnicodeString): IXMLNode;
begin
  Result := AddItem(Index);
  Result.NodeValue := VALUE;
end;

{ TXMLUltima_Actualizacion }

procedure TXMLUltima_Actualizacion.AfterConstruction;
begin
  ItemTag := 'VALUE';
  ItemInterface := IXMLNode;
  inherited;
end;

function TXMLUltima_Actualizacion.Get_VALUE(Index: Integer): UnicodeString;
begin
  Result := List[Index].Text;
end;

function TXMLUltima_Actualizacion.Add(const VALUE: UnicodeString): IXMLNode;
begin
  Result := AddItem(-1);
  Result.NodeValue := VALUE;
end;

function TXMLUltima_Actualizacion.Insert(const Index: Integer; const VALUE: UnicodeString): IXMLNode;
begin
  Result := AddItem(Index);
  Result.NodeValue := VALUE;
end;

{ TXMLAlias_Individuo }

function TXMLAlias_Individuo.Get_Calidad: UnicodeString;
begin
  Result := ChildNodes['Calidad'].Text;
end;

procedure TXMLAlias_Individuo.Set_Calidad(Value: UnicodeString);
begin
  ChildNodes['Calidad'].NodeValue := Value;
end;

function TXMLAlias_Individuo.Get_Nombre_Alias: UnicodeString;
begin
  Result := ChildNodes['Nombre_Alias'].Text;
end;

procedure TXMLAlias_Individuo.Set_Nombre_Alias(Value: UnicodeString);
begin
  ChildNodes['Nombre_Alias'].NodeValue := Value;
end;

function TXMLAlias_Individuo.Get_Fecha_Nacimiento: UnicodeString;
begin
  Result := ChildNodes['Fecha_Nacimiento'].Text;
end;

procedure TXMLAlias_Individuo.Set_Fecha_Nacimiento(Value: UnicodeString);
begin
  ChildNodes['Fecha_Nacimiento'].NodeValue := Value;
end;

function TXMLAlias_Individuo.Get_Ciudad_Nacimiento: UnicodeString;
begin
  Result := ChildNodes['Ciudad_Nacimiento'].Text;
end;

procedure TXMLAlias_Individuo.Set_Ciudad_Nacimiento(Value: UnicodeString);
begin
  ChildNodes['Ciudad_Nacimiento'].NodeValue := Value;
end;

function TXMLAlias_Individuo.Get_Pais_Nacimiento: UnicodeString;
begin
  Result := ChildNodes['Pais_Nacimiento'].Text;
end;

procedure TXMLAlias_Individuo.Set_Pais_Nacimiento(Value: UnicodeString);
begin
  ChildNodes['Pais_Nacimiento'].NodeValue := Value;
end;

function TXMLAlias_Individuo.Get_Nota: UnicodeString;
begin
  Result := ChildNodes['Nota'].Text;
end;

procedure TXMLAlias_Individuo.Set_Nota(Value: UnicodeString);
begin
  ChildNodes['Nota'].NodeValue := Value;
end;

{ TXMLAlias_IndividuoList }

function TXMLAlias_IndividuoList.Add: IXMLAlias_Individuo;
begin
  Result := AddItem(-1) as IXMLAlias_Individuo;
end;

function TXMLAlias_IndividuoList.Insert(const Index: Integer): IXMLAlias_Individuo;
begin
  Result := AddItem(Index) as IXMLAlias_Individuo;
end;

function TXMLAlias_IndividuoList.Get_Item(Index: Integer): IXMLAlias_Individuo;
begin
  Result := List[Index] as IXMLAlias_Individuo;
end;

{ TXMLDomicilio_Individuo }

function TXMLDomicilio_Individuo.Get_Calle: UnicodeString;
begin
  Result := ChildNodes['Calle'].Text;
end;

procedure TXMLDomicilio_Individuo.Set_Calle(Value: UnicodeString);
begin
  ChildNodes['Calle'].NodeValue := Value;
end;

function TXMLDomicilio_Individuo.Get_Ciudad: UnicodeString;
begin
  Result := ChildNodes['Ciudad'].Text;
end;

procedure TXMLDomicilio_Individuo.Set_Ciudad(Value: UnicodeString);
begin
  ChildNodes['Ciudad'].NodeValue := Value;
end;

function TXMLDomicilio_Individuo.Get_Estado: UnicodeString;
begin
  Result := ChildNodes['Estado'].Text;
end;

procedure TXMLDomicilio_Individuo.Set_Estado(Value: UnicodeString);
begin
  ChildNodes['Estado'].NodeValue := Value;
end;

function TXMLDomicilio_Individuo.Get_Codigo_Postal: UnicodeString;
begin
  Result := ChildNodes['Codigo_Postal'].Text;
end;

procedure TXMLDomicilio_Individuo.Set_Codigo_Postal(Value: UnicodeString);
begin
  ChildNodes['Codigo_Postal'].NodeValue := Value;
end;

function TXMLDomicilio_Individuo.Get_Pais: UnicodeString;
begin
  Result := ChildNodes['Pais'].Text;
end;

procedure TXMLDomicilio_Individuo.Set_Pais(Value: UnicodeString);
begin
  ChildNodes['Pais'].NodeValue := Value;
end;

function TXMLDomicilio_Individuo.Get_Nota: UnicodeString;
begin
  Result := ChildNodes['Nota'].Text;
end;

procedure TXMLDomicilio_Individuo.Set_Nota(Value: UnicodeString);
begin
  ChildNodes['Nota'].NodeValue := Value;
end;

{ TXMLDomicilio_IndividuoList }

function TXMLDomicilio_IndividuoList.Add: IXMLDomicilio_Individuo;
begin
  Result := AddItem(-1) as IXMLDomicilio_Individuo;
end;

function TXMLDomicilio_IndividuoList.Insert(const Index: Integer): IXMLDomicilio_Individuo;
begin
  Result := AddItem(Index) as IXMLDomicilio_Individuo;
end;

function TXMLDomicilio_IndividuoList.Get_Item(Index: Integer): IXMLDomicilio_Individuo;
begin
  Result := List[Index] as IXMLDomicilio_Individuo;
end;

{ TXMLFecha_Nac_Individuo }

function TXMLFecha_Nac_Individuo.Get_Tipo_Fecha: UnicodeString;
begin
  Result := ChildNodes['Tipo_Fecha'].Text;
end;

procedure TXMLFecha_Nac_Individuo.Set_Tipo_Fecha(Value: UnicodeString);
begin
  ChildNodes['Tipo_Fecha'].NodeValue := Value;
end;

function TXMLFecha_Nac_Individuo.Get_Nota: UnicodeString;
begin
  Result := ChildNodes['Nota'].Text;
end;

procedure TXMLFecha_Nac_Individuo.Set_Nota(Value: UnicodeString);
begin
  ChildNodes['Nota'].NodeValue := Value;
end;

function TXMLFecha_Nac_Individuo.Get_Fecha: UnicodeString;
begin
  Result := ChildNodes['Fecha'].Text;
end;

procedure TXMLFecha_Nac_Individuo.Set_Fecha(Value: UnicodeString);
begin
  ChildNodes['Fecha'].NodeValue := Value;
end;

function TXMLFecha_Nac_Individuo.Get_Anno: Integer;
begin
  Result := ChildNodes['Anno'].NodeValue;
end;

procedure TXMLFecha_Nac_Individuo.Set_Anno(Value: Integer);
begin
  ChildNodes['Anno'].NodeValue := Value;
end;

function TXMLFecha_Nac_Individuo.Get_DelAnno: Integer;
begin
  Result := ChildNodes['DelAnno'].NodeValue;
end;

procedure TXMLFecha_Nac_Individuo.Set_DelAnno(Value: Integer);
begin
  ChildNodes['DelAnno'].NodeValue := Value;
end;

function TXMLFecha_Nac_Individuo.Get_AlAnno: Integer;
begin
  Result := ChildNodes['AlAnno'].NodeValue;
end;

procedure TXMLFecha_Nac_Individuo.Set_AlAnno(Value: Integer);
begin
  ChildNodes['AlAnno'].NodeValue := Value;
end;

{ TXMLFecha_Nac_IndividuoList }

function TXMLFecha_Nac_IndividuoList.Add: IXMLFecha_Nac_Individuo;
begin
  Result := AddItem(-1) as IXMLFecha_Nac_Individuo;
end;

function TXMLFecha_Nac_IndividuoList.Insert(const Index: Integer): IXMLFecha_Nac_Individuo;
begin
  Result := AddItem(Index) as IXMLFecha_Nac_Individuo;
end;

function TXMLFecha_Nac_IndividuoList.Get_Item(Index: Integer): IXMLFecha_Nac_Individuo;
begin
  Result := List[Index] as IXMLFecha_Nac_Individuo;
end;

{ TXMLLugar_Nacimiento_Individuo }

function TXMLLugar_Nacimiento_Individuo.Get_Ciudad: UnicodeString;
begin
  Result := ChildNodes['Ciudad'].Text;
end;

procedure TXMLLugar_Nacimiento_Individuo.Set_Ciudad(Value: UnicodeString);
begin
  ChildNodes['Ciudad'].NodeValue := Value;
end;

function TXMLLugar_Nacimiento_Individuo.Get_Estado: UnicodeString;
begin
  Result := ChildNodes['Estado'].Text;
end;

procedure TXMLLugar_Nacimiento_Individuo.Set_Estado(Value: UnicodeString);
begin
  ChildNodes['Estado'].NodeValue := Value;
end;

function TXMLLugar_Nacimiento_Individuo.Get_Pais: UnicodeString;
begin
  Result := ChildNodes['Pais'].Text;
end;

procedure TXMLLugar_Nacimiento_Individuo.Set_Pais(Value: UnicodeString);
begin
  ChildNodes['Pais'].NodeValue := Value;
end;

function TXMLLugar_Nacimiento_Individuo.Get_Nota: UnicodeString;
begin
  Result := ChildNodes['Nota'].Text;
end;

procedure TXMLLugar_Nacimiento_Individuo.Set_Nota(Value: UnicodeString);
begin
  ChildNodes['Nota'].NodeValue := Value;
end;

{ TXMLLugar_Nacimiento_IndividuoList }

function TXMLLugar_Nacimiento_IndividuoList.Add: IXMLLugar_Nacimiento_Individuo;
begin
  Result := AddItem(-1) as IXMLLugar_Nacimiento_Individuo;
end;

function TXMLLugar_Nacimiento_IndividuoList.Insert(const Index: Integer): IXMLLugar_Nacimiento_Individuo;
begin
  Result := AddItem(Index) as IXMLLugar_Nacimiento_Individuo;
end;

function TXMLLugar_Nacimiento_IndividuoList.Get_Item(Index: Integer): IXMLLugar_Nacimiento_Individuo;
begin
  Result := List[Index] as IXMLLugar_Nacimiento_Individuo;
end;

{ TXMLDocumento_Individuo }

function TXMLDocumento_Individuo.Get_Tipo_Documento: UnicodeString;
begin
  Result := ChildNodes['Tipo_Documento'].Text;
end;

procedure TXMLDocumento_Individuo.Set_Tipo_Documento(Value: UnicodeString);
begin
  ChildNodes['Tipo_Documento'].NodeValue := Value;
end;

function TXMLDocumento_Individuo.Get_Tipo_Documento2: UnicodeString;
begin
  Result := ChildNodes['Tipo_Documento2'].Text;
end;

procedure TXMLDocumento_Individuo.Set_Tipo_Documento2(Value: UnicodeString);
begin
  ChildNodes['Tipo_Documento2'].NodeValue := Value;
end;

function TXMLDocumento_Individuo.Get_Numero: UnicodeString;
begin
  Result := ChildNodes['Numero'].Text;
end;

procedure TXMLDocumento_Individuo.Set_Numero(Value: UnicodeString);
begin
  ChildNodes['Numero'].NodeValue := Value;
end;

function TXMLDocumento_Individuo.Get_Pais_Emisor: UnicodeString;
begin
  Result := ChildNodes['Pais_Emisor'].Text;
end;

procedure TXMLDocumento_Individuo.Set_Pais_Emisor(Value: UnicodeString);
begin
  ChildNodes['Pais_Emisor'].NodeValue := Value;
end;

function TXMLDocumento_Individuo.Get_Fecha_Emision: UnicodeString;
begin
  Result := ChildNodes['Fecha_Emision'].Text;
end;

procedure TXMLDocumento_Individuo.Set_Fecha_Emision(Value: UnicodeString);
begin
  ChildNodes['Fecha_Emision'].NodeValue := Value;
end;

function TXMLDocumento_Individuo.Get_Ciudad_Emision: UnicodeString;
begin
  Result := ChildNodes['Ciudad_Emision'].Text;
end;

procedure TXMLDocumento_Individuo.Set_Ciudad_Emision(Value: UnicodeString);
begin
  ChildNodes['Ciudad_Emision'].NodeValue := Value;
end;

function TXMLDocumento_Individuo.Get_Pais_Emision: UnicodeString;
begin
  Result := ChildNodes['Pais_Emision'].Text;
end;

procedure TXMLDocumento_Individuo.Set_Pais_Emision(Value: UnicodeString);
begin
  ChildNodes['Pais_Emision'].NodeValue := Value;
end;

function TXMLDocumento_Individuo.Get_Nota: UnicodeString;
begin
  Result := ChildNodes['Nota'].Text;
end;

procedure TXMLDocumento_Individuo.Set_Nota(Value: UnicodeString);
begin
  ChildNodes['Nota'].NodeValue := Value;
end;

{ TXMLDocumento_IndividuoList }

function TXMLDocumento_IndividuoList.Add: IXMLDocumento_Individuo;
begin
  Result := AddItem(-1) as IXMLDocumento_Individuo;
end;

function TXMLDocumento_IndividuoList.Insert(const Index: Integer): IXMLDocumento_Individuo;
begin
  Result := AddItem(Index) as IXMLDocumento_Individuo;
end;

function TXMLDocumento_IndividuoList.Get_Item(Index: Integer): IXMLDocumento_Individuo;
begin
  Result := List[Index] as IXMLDocumento_Individuo;
end;

{ TXMLEntidad }

procedure TXMLEntidad.AfterConstruction;
begin
  RegisterChildNode('Ultima_Actualizacion', TXMLUltima_Actualizacion);
  RegisterChildNode('Alias_Entidad', TXMLAlias_Entidad);
  RegisterChildNode('Domicilio_Entidad', TXMLDomicilio_Entidad);
  FAlias_Entidad := CreateCollection(TXMLAlias_EntidadList, IXMLAlias_Entidad, 'Alias_Entidad') as IXMLAlias_EntidadList;
  FDomicilio_Entidad := CreateCollection(TXMLDomicilio_EntidadList, IXMLDomicilio_Entidad, 'Domicilio_Entidad') as IXMLDomicilio_EntidadList;
  inherited;
end;

function TXMLEntidad.Get_DataId: Integer;
begin
  Result := ChildNodes['DataId'].NodeValue;
end;

procedure TXMLEntidad.Set_DataId(Value: Integer);
begin
  ChildNodes['DataId'].NodeValue := Value;
end;

function TXMLEntidad.Get_Numero_Version: Integer;
begin
  Result := ChildNodes['Numero_Version'].NodeValue;
end;

procedure TXMLEntidad.Set_Numero_Version(Value: Integer);
begin
  ChildNodes['Numero_Version'].NodeValue := Value;
end;

function TXMLEntidad.Get_Primer_Nombre: UnicodeString;
begin
  Result := ChildNodes['Primer_Nombre'].Text;
end;

procedure TXMLEntidad.Set_Primer_Nombre(Value: UnicodeString);
begin
  ChildNodes['Primer_Nombre'].NodeValue := Value;
end;

function TXMLEntidad.Get_UN_Tipo_Lista: UnicodeString;
begin
  Result := ChildNodes['UN_Tipo_Lista'].Text;
end;

procedure TXMLEntidad.Set_UN_Tipo_Lista(Value: UnicodeString);
begin
  ChildNodes['UN_Tipo_Lista'].NodeValue := Value;
end;

function TXMLEntidad.Get_Tipo_Lista: UnicodeString;
begin
  Result := ChildNodes['Tipo_Lista'].Text;
end;

procedure TXMLEntidad.Set_Tipo_Lista(Value: UnicodeString);
begin
  ChildNodes['Tipo_Lista'].NodeValue := Value;
end;

function TXMLEntidad.Get_Numero_Referencia: UnicodeString;
begin
  Result := ChildNodes['Numero_Referencia'].Text;
end;

procedure TXMLEntidad.Set_Numero_Referencia(Value: UnicodeString);
begin
  ChildNodes['Numero_Referencia'].NodeValue := Value;
end;

function TXMLEntidad.Get_FechaListado: UnicodeString;
begin
  Result := ChildNodes['FechaListado'].Text;
end;

procedure TXMLEntidad.Set_FechaListado(Value: UnicodeString);
begin
  ChildNodes['FechaListado'].NodeValue := Value;
end;

function TXMLEntidad.Get_Fecha_Presentado: UnicodeString;
begin
  Result := ChildNodes['Fecha_Presentado'].Text;
end;

procedure TXMLEntidad.Set_Fecha_Presentado(Value: UnicodeString);
begin
  ChildNodes['Fecha_Presentado'].NodeValue := Value;
end;

function TXMLEntidad.Get_Comentarios: UnicodeString;
begin
  Result := ChildNodes['Comentarios'].Text;
end;

procedure TXMLEntidad.Set_Comentarios(Value: UnicodeString);
begin
  ChildNodes['Comentarios'].NodeValue := Value;
end;

function TXMLEntidad.Get_Ultima_Actualizacion: IXMLUltima_Actualizacion;
begin
  Result := ChildNodes['Ultima_Actualizacion'] as IXMLUltima_Actualizacion;
end;

function TXMLEntidad.Get_Alias_Entidad: IXMLAlias_EntidadList;
begin
  Result := FAlias_Entidad;
end;

function TXMLEntidad.Get_Domicilio_Entidad: IXMLDomicilio_EntidadList;
begin
  Result := FDomicilio_Entidad;
end;

function TXMLEntidad.Get_Fecha_Retirado_Lista: UnicodeString;
begin
  Result := ChildNodes['Fecha_Retirado_Lista'].Text;
end;

procedure TXMLEntidad.Set_Fecha_Retirado_Lista(Value: UnicodeString);
begin
  ChildNodes['Fecha_Retirado_Lista'].NodeValue := Value;
end;

{ TXMLEntidadList }

function TXMLEntidadList.Add: IXMLEntidad;
begin
  Result := AddItem(-1) as IXMLEntidad;
end;

function TXMLEntidadList.Insert(const Index: Integer): IXMLEntidad;
begin
  Result := AddItem(Index) as IXMLEntidad;
end;

function TXMLEntidadList.Get_Item(Index: Integer): IXMLEntidad;
begin
  Result := List[Index] as IXMLEntidad;
end;

{ TXMLAlias_Entidad }

function TXMLAlias_Entidad.Get_Calidad: UnicodeString;
begin
  Result := ChildNodes['Calidad'].Text;
end;

procedure TXMLAlias_Entidad.Set_Calidad(Value: UnicodeString);
begin
  ChildNodes['Calidad'].NodeValue := Value;
end;

function TXMLAlias_Entidad.Get_Nombre_Alias: UnicodeString;
begin
  Result := ChildNodes['Nombre_Alias'].Text;
end;

procedure TXMLAlias_Entidad.Set_Nombre_Alias(Value: UnicodeString);
begin
  ChildNodes['Nombre_Alias'].NodeValue := Value;
end;

{ TXMLAlias_EntidadList }

function TXMLAlias_EntidadList.Add: IXMLAlias_Entidad;
begin
  Result := AddItem(-1) as IXMLAlias_Entidad;
end;

function TXMLAlias_EntidadList.Insert(const Index: Integer): IXMLAlias_Entidad;
begin
  Result := AddItem(Index) as IXMLAlias_Entidad;
end;

function TXMLAlias_EntidadList.Get_Item(Index: Integer): IXMLAlias_Entidad;
begin
  Result := List[Index] as IXMLAlias_Entidad;
end;

{ TXMLDomicilio_Entidad }

function TXMLDomicilio_Entidad.Get_Calle: UnicodeString;
begin
  Result := ChildNodes['Calle'].Text;
end;

procedure TXMLDomicilio_Entidad.Set_Calle(Value: UnicodeString);
begin
  ChildNodes['Calle'].NodeValue := Value;
end;

function TXMLDomicilio_Entidad.Get_Ciudad: UnicodeString;
begin
  Result := ChildNodes['Ciudad'].Text;
end;

procedure TXMLDomicilio_Entidad.Set_Ciudad(Value: UnicodeString);
begin
  ChildNodes['Ciudad'].NodeValue := Value;
end;

function TXMLDomicilio_Entidad.Get_Estado: UnicodeString;
begin
  Result := ChildNodes['Estado'].Text;
end;

procedure TXMLDomicilio_Entidad.Set_Estado(Value: UnicodeString);
begin
  ChildNodes['Estado'].NodeValue := Value;
end;

function TXMLDomicilio_Entidad.Get_Codigo_Postal: UnicodeString;
begin
  Result := ChildNodes['Codigo_Postal'].Text;
end;

procedure TXMLDomicilio_Entidad.Set_Codigo_Postal(Value: UnicodeString);
begin
  ChildNodes['Codigo_Postal'].NodeValue := Value;
end;

function TXMLDomicilio_Entidad.Get_Pais: UnicodeString;
begin
  Result := ChildNodes['Pais'].Text;
end;

procedure TXMLDomicilio_Entidad.Set_Pais(Value: UnicodeString);
begin
  ChildNodes['Pais'].NodeValue := Value;
end;

function TXMLDomicilio_Entidad.Get_Nota: UnicodeString;
begin
  Result := ChildNodes['Nota'].Text;
end;

procedure TXMLDomicilio_Entidad.Set_Nota(Value: UnicodeString);
begin
  ChildNodes['Nota'].NodeValue := Value;
end;

{ TXMLDomicilio_EntidadList }

function TXMLDomicilio_EntidadList.Add: IXMLDomicilio_Entidad;
begin
  Result := AddItem(-1) as IXMLDomicilio_Entidad;
end;

function TXMLDomicilio_EntidadList.Insert(const Index: Integer): IXMLDomicilio_Entidad;
begin
  Result := AddItem(Index) as IXMLDomicilio_Entidad;
end;

function TXMLDomicilio_EntidadList.Get_Item(Index: Integer): IXMLDomicilio_Entidad;
begin
  Result := List[Index] as IXMLDomicilio_Entidad;
end;

{ TXMLString_List }

function TXMLString_List.Add(const Value: UnicodeString): IXMLNode;
begin
  Result := AddItem(-1);
  Result.NodeValue := Value;
end;

function TXMLString_List.Insert(const Index: Integer; const Value: UnicodeString): IXMLNode;
begin
  Result := AddItem(Index);
  Result.NodeValue := Value;
end;

function TXMLString_List.Get_Item(Index: Integer): UnicodeString;
begin
  Result := List[Index].NodeValue;
end;

end.