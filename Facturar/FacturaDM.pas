unit FacturaDM;

interface

uses
  System.SysUtils, System.Classes, Vcl.Dialogs,
  System.DateUtils,
  Vcl.Forms,
  VirtualXML, Data.DB, Data.Win.ADODB;

type
  TdmFactura = class(TDataModule)
    ADOdsReceptor: TADODataSet;
    ADOdsConcepto: TADODataSet;
    ADOdsImpuesto: TADODataSet;
    dsEmisor: TDataSource;
    ADOdsReceptorIDDocs: TLargeintField;
    ADOdsReceptorIDConcepto: TIntegerField;
    ADOdsReceptorRFCCliente: TStringField;
    ADOdsReceptorNombreReceptor: TStringField;
    ADOdsReceptorCalle: TStringField;
    ADOdsReceptorNoExt: TStringField;
    ADOdsReceptorNoInt: TStringField;
    ADOdsReceptorRefer: TStringField;
    ADOdsReceptorColonia: TStringField;
    ADOdsReceptorLocalidad: TStringField;
    ADOdsReceptormunicipio: TStringField;
    ADOdsReceptorEstado: TStringField;
    ADOdsReceptorPais: TStringField;
    ADOdsReceptorCodPostal: TIntegerField;
    ADOdsReceptorIDCliente: TStringField;
    ADOdsConceptoIDDocs: TLargeintField;
    ADOdsConceptoIDConcepto: TIntegerField;
    ADOdsConceptocdsCantidad: TBCDField;
    ADOdsConceptocdsunidad: TStringField;
    ADOdsConceptocdsNoidentifica: TStringField;
    ADOdsConceptocdsDescripcion: TStringField;
    ADOdsConceptocdsValorUnitario: TBCDField;
    ADOdsConceptocdsImporte: TBCDField;
    ADOdsConceptocdsCuentaPredial: TStringField;
    ADOdsImpuestocdsImpuesto: TStringField;
    ADOdsImpuestocdsTasa: TBCDField;
    ADOdsImpuestocdsimporte: TBCDField;
    ADOdsImpuestocdsTipoImp: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CreaFactura;
    procedure Abrir;
    procedure Facturar;
    procedure Cancelar(UUID: string);
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses DocComprobanteFiscal, FacturaTipos;


{$R *.dfm}

{ TdmFacturar }

procedure TdmFactura.Abrir;
begin
  ADOdsReceptor.Open;
  ADOdsConcepto.Open;
  ADOdsImpuesto.Open;
end;

procedure TdmFactura.Cancelar(UUID: string);
var
  Certificado: TFECertificado;
  Respuesta: string;
begin
    Certificado.Ruta:=ExtractFilePath(Application.ExeName) + PathDelim + 'AAA010101AAA.cer';
    Certificado.LlavePrivada.Ruta:=ExtractFilePath(Application.ExeName) + PathDelim + 'AAA010101AAA.key';
    Certificado.LlavePrivada.Clave:='12345678a';
    Certificado.RFCAlQuePertenece:='AAA010101AAA';
//    CancelarCFDI(UUID, Certificado, Respuesta);
end;

procedure TdmFactura.CreaFactura;
const
  _SEGUNDOS_A_RESTAR = -30;
var
  DocumentoComprobanteFiscal: TDocumentoComprobanteFiscal;
  Certificado: TFECertificado;
  Emisor, Receptor: TFEContribuyente;
  Impuesto1: TFEImpuestoRetenido;
  Impuesto2 : TFEImpuestoTrasladado;
  ImpuestoLocal: TFEImpuestoLocal;
  Concepto1, Concepto2 : TFEConcepto;
  TimbreCFDI: TTimbreCFDI;
begin
  DocumentoComprobanteFiscal:= TDocumentoComprobanteFiscal.Create;
  try
    Emisor.RFC:='AAA010101AAA';
    Emisor.Nombre:='Mi Empresa SA de CV';
    Emisor.Direccion.Calle:='Calle de la Amargura';
    Emisor.Direccion.NoExterior:='123';
    Emisor.Direccion.NoInterior:='456';
    Emisor.Direccion.CodigoPostal:='87345';
    Emisor.Direccion.Colonia:='Col. Bondojito';
    Emisor.Direccion.Municipio:='Oaxaca';
    Emisor.Direccion.Estado:='Oaxaca';
    Emisor.Direccion.Pais:='México';
    Emisor.Direccion.Localidad:='Oaxaca';
     // 2. Agregamos los régimenes fiscales (requerido en CFD >= 2.2)
    SetLength(Emisor.Regimenes, 1);
    Emisor.Regimenes[0] := 'Regimen General de Ley';
    // Asignamos los valores iguales a la direcion del emisor suponiendo que se genera en el mismo lugar que se emitio
    Emisor.ExpedidoEn.Calle:=Emisor.Direccion.Calle;
    Emisor.ExpedidoEn.NoExterior:=Emisor.Direccion.NoExterior;
    Emisor.ExpedidoEn.NoInterior:=Emisor.Direccion.NoInterior;
    Emisor.ExpedidoEn.CodigoPostal:=Emisor.Direccion.CodigoPostal;
    Emisor.ExpedidoEn.Colonia:=Emisor.Direccion.Colonia;
    Emisor.ExpedidoEn.Municipio:=Emisor.Direccion.Municipio;
    Emisor.ExpedidoEn.Estado:=Emisor.Direccion.Estado;
    Emisor.ExpedidoEn.Pais:=Emisor.Direccion.Pais;
    Emisor.ExpedidoEn.Localidad:=Emisor.Direccion.Localidad;
    Emisor.ExpedidoEn.Referencia:=Emisor.Direccion.Referencia;

    Receptor.RFC:='PWD090210DR5';
    Receptor.Nombre:='Mi Cliente SA de CV';
    Receptor.Direccion.Calle:='Patriotismo';
    Receptor.Direccion.NoExterior:='4579';
    Receptor.Direccion.NoInterior:='94';
    Receptor.Direccion.CodigoPostal:='75489';
    Receptor.Direccion.Colonia:='La Añoranza';
    Receptor.Direccion.Municipio:='Coyoacán';
    Receptor.Direccion.Estado:='Veracruz';
    Receptor.Direccion.Pais:='México';
    Receptor.Direccion.Localidad:='Boca del Rio';

    // 4. Definimos el certificado junto con su llave privada
    Certificado.Ruta:=ExtractFilePath(Application.ExeName) + PathDelim + 'AAA010101AAA.cer';
    Certificado.LlavePrivada.Ruta:=ExtractFilePath(Application.ExeName) + PathDelim + 'AAA010101AAA.key';
    Certificado.LlavePrivada.Clave:='12345678a';

//      // 5. Creamos la clase Factura con los parametros minimos.
//      WriteLn('Generando factura CFD ...');
//      Factura:=TFacturaElectronica.Create(Emisor, Receptor, Certificado, tcIngreso);

    DocumentoComprobanteFiscal.Emisor:= Emisor;
    DocumentoComprobanteFiscal.Receptor:= Receptor;
    DocumentoComprobanteFiscal.Tipo:= tcIngreso;
//    DocumentoComprobanteFiscal.FechaGeneracion:= Now;
    DocumentoComprobanteFiscal.FechaGeneracion:= IncSecond(Now, _SEGUNDOS_A_RESTAR);

    DocumentoComprobanteFiscal.MetodoDePago:='Tarjeta de credito';
    //DocumentoComprobanteFiscal..NumeroDeCuenta:='1234';
    // Asignamos el lugar de expedición (requerido en  CFD >= 2.2)
    DocumentoComprobanteFiscal.LugarDeExpedicion:='Queretaro, Qro';
    // Definimos todos los conceptos que incluyo la factura
    Concepto1.Cantidad:=10.25;
    Concepto1.Unidad:='Kilo';
    Concepto1.Descripcion:='Arroz blanco precocido (con caractéres inválidos: |&<>''")';
    Concepto1.ValorUnitario:=12.23;
    DocumentoComprobanteFiscal.AgregarConcepto(Concepto1);

    Concepto2.Cantidad:=2;
    Concepto2.Unidad:='No identificado';
    Concepto2.Descripcion:='Servicio de mantenimiento';
    Concepto2.ValorUnitario:=100;
    DocumentoComprobanteFiscal.AgregarConcepto(Concepto2);

    // Agregamos, para fines de ejemplo, un impuesto retenido
    Impuesto1.Nombre:='ISR';
    Impuesto1.Importe:=(Concepto2.ValorUnitario * Concepto2.Cantidad);
    DocumentoComprobanteFiscal.AgregarImpuestoRetenido(Impuesto1);

    Impuesto2.Nombre:='IVA';
    Impuesto2.Tasa:=16;
    Impuesto2.Importe:=(Concepto1.ValorUnitario * Concepto1.Cantidad) * (Impuesto2.Tasa/100);;
    DocumentoComprobanteFiscal.AgregarImpuestoTrasladado(Impuesto2);

    // Si queremos agregar un impuesto local lo hacemos de la siguiente manera:
    ImpuestoLocal.Nombre := 'ISH';
    ImpuestoLocal.Tipo := tiTrasladado;
    ImpuestoLocal.Tasa := 3;
    ImpuestoLocal.Importe := ((Concepto1.ValorUnitario * Concepto1.Cantidad) + (Concepto2.ValorUnitario * Concepto2.Cantidad)) * (ImpuestoLocal.Tasa/100);
    DocumentoComprobanteFiscal.AgregarImpuestoLocal(ImpuestoLocal);

    Concepto2.Cantidad:=5;
    Concepto2.Unidad:='PZA';
    Concepto2.Descripcion:='Piña dulce del bajio';
    Concepto2.ValorUnitario:=18.90;
    DocumentoComprobanteFiscal.AgregarConcepto(Concepto2);

    // Le damos un descuento
    //DocumentoComprobanteFiscal.AsignarDescuento(5, 'Por pronto pago');

//    if GenerarCFDI(DocumentoComprobanteFiscal, Certificado, TimbreCFDI, False) then
//      ShowMessage('Archivo creado: ' + TimbreCFDI.NombreArchivo)
//    else
//      ShowMessage('Error: ' + TimbreCFDI.MensajeError);
  finally
    DocumentoComprobanteFiscal.Free
  end;
end;

procedure TdmFactura.Facturar;
const
  _SEGUNDOS_A_RESTAR = -30;
var
  DocumentoComprobanteFiscal: TDocumentoComprobanteFiscal;
  Certificado: TFECertificado;
  Emisor, Receptor: TFEContribuyente;
  Impuesto1: TFEImpuestoRetenido;
  Impuesto2 : TFEImpuestoTrasladado;
  ImpuestoLocal: TFEImpuestoLocal;
  Concepto1, Concepto2 : TFEConcepto;
  TimbreCFDI: TTimbreCFDI;
begin
  DocumentoComprobanteFiscal:= TDocumentoComprobanteFiscal.Create;
  try
    Emisor.RFC:='AAA010101AAA';
    Emisor.Nombre:='Mi Empresa SA de CV';
    Emisor.Direccion.Calle:='Calle de la Amargura';
    Emisor.Direccion.NoExterior:='123';
    Emisor.Direccion.NoInterior:='456';
    Emisor.Direccion.CodigoPostal:='87345';
    Emisor.Direccion.Colonia:='Col. Bondojito';
    Emisor.Direccion.Municipio:='Oaxaca';
    Emisor.Direccion.Estado:='Oaxaca';
    Emisor.Direccion.Pais:='México';
    Emisor.Direccion.Localidad:='Oaxaca';
     // 2. Agregamos los régimenes fiscales (requerido en CFD >= 2.2)
    SetLength(Emisor.Regimenes, 1);
    Emisor.Regimenes[0] := 'Regimen General de Ley';
    // Asignamos los valores iguales a la direcion del emisor suponiendo que se genera en el mismo lugar que se emitio
    Emisor.ExpedidoEn.Calle:=Emisor.Direccion.Calle;
    Emisor.ExpedidoEn.NoExterior:=Emisor.Direccion.NoExterior;
    Emisor.ExpedidoEn.NoInterior:=Emisor.Direccion.NoInterior;
    Emisor.ExpedidoEn.CodigoPostal:=Emisor.Direccion.CodigoPostal;
    Emisor.ExpedidoEn.Colonia:=Emisor.Direccion.Colonia;
    Emisor.ExpedidoEn.Municipio:=Emisor.Direccion.Municipio;
    Emisor.ExpedidoEn.Estado:=Emisor.Direccion.Estado;
    Emisor.ExpedidoEn.Pais:=Emisor.Direccion.Pais;
    Emisor.ExpedidoEn.Localidad:=Emisor.Direccion.Localidad;
    Emisor.ExpedidoEn.Referencia:=Emisor.Direccion.Referencia;

    Receptor.RFC:=ADOdsReceptorRFCCliente.Value;
    Receptor.Nombre:=ADOdsReceptorNombreReceptor.Value;
//    Receptor.Direccion.Calle:='Patriotismo';
//    Receptor.Direccion.NoExterior:='4579';
//    Receptor.Direccion.NoInterior:='94';
//    Receptor.Direccion.CodigoPostal:='75489';
//    Receptor.Direccion.Colonia:='La Añoranza';
//    Receptor.Direccion.Municipio:='Coyoacán';
//    Receptor.Direccion.Estado:='Veracruz';
    Receptor.Direccion.Pais:=ADOdsReceptorPais.Value;
//    Receptor.Direccion.Localidad:='Boca del Rio';

    // 4. Definimos el certificado junto con su llave privada
    Certificado.Ruta:=ExtractFilePath(Application.ExeName) + PathDelim + 'AAA010101AAA.cer';
    Certificado.LlavePrivada.Ruta:=ExtractFilePath(Application.ExeName) + PathDelim + 'AAA010101AAA.key';
    Certificado.LlavePrivada.Clave:='12345678a';

//      // 5. Creamos la clase Factura con los parametros minimos.
//      WriteLn('Generando factura CFD ...');
//      Factura:=TFacturaElectronica.Create(Emisor, Receptor, Certificado, tcIngreso);

    DocumentoComprobanteFiscal.Emisor:= Emisor;
    DocumentoComprobanteFiscal.Receptor:= Receptor;
    DocumentoComprobanteFiscal.Tipo:= tcIngreso;
//    DocumentoComprobanteFiscal.FechaGeneracion:= Now;
    DocumentoComprobanteFiscal.FechaGeneracion:= IncSecond(Now, _SEGUNDOS_A_RESTAR);

    DocumentoComprobanteFiscal.MetodoDePago:='Tarjeta de credito';
    //DocumentoComprobanteFiscal..NumeroDeCuenta:='1234';
    // Asignamos el lugar de expedición (requerido en  CFD >= 2.2)
    DocumentoComprobanteFiscal.LugarDeExpedicion:='Queretaro, Qro';
    // Definimos todos los conceptos que incluyo la factura
    Concepto1.Cantidad:= 1;//ADOdsConceptocdsCantidad.Value;
    Concepto1.Unidad:=ADOdsConceptocdsunidad.Value;
    Concepto1.Descripcion:=ADOdsConceptocdsDescripcion.Value;
    Concepto1.ValorUnitario:=ADOdsConceptocdsValorUnitario.Value;
    Concepto1.NoIdentificacion:= ADOdsConceptocdsNoidentifica.Value;
    Concepto1.CuentaPredial:= ADOdsConceptocdsCuentaPredial.Value;
    DocumentoComprobanteFiscal.AgregarConcepto(Concepto1);

    // Agregamos, para fines de ejemplo, un impuesto retenido
//    Impuesto1.Nombre:='ISR';
//    Impuesto1.Importe:=(Concepto2.ValorUnitario * Concepto2.Cantidad);
//    DocumentoComprobanteFiscal.AgregarImpuestoRetenido(Impuesto1);

    Impuesto2.Nombre:=ADOdsImpuestocdsImpuesto.Value;
    Impuesto2.Tasa:=ADOdsImpuestocdsTasa.Value;
    Impuesto2.Importe:= ADOdsImpuestocdsimporte.Value;
    DocumentoComprobanteFiscal.AgregarImpuestoTrasladado(Impuesto2);

    // Si queremos agregar un impuesto local lo hacemos de la siguiente manera:
//    ImpuestoLocal.Nombre := 'ISH';
//    ImpuestoLocal.Tipo := tiTrasladado;
//    ImpuestoLocal.Tasa := 3;
//    ImpuestoLocal.Importe := ((Concepto1.ValorUnitario * Concepto1.Cantidad) + (Concepto2.ValorUnitario * Concepto2.Cantidad)) * (ImpuestoLocal.Tasa/100);
//    DocumentoComprobanteFiscal.AgregarImpuestoLocal(ImpuestoLocal);

    // Le damos un descuento
    //DocumentoComprobanteFiscal.AsignarDescuento(5, 'Por pronto pago');

//    if GenerarCFDI(DocumentoComprobanteFiscal, Certificado, TimbreCFDI, False) then
//      ShowMessage('Archivo creado: ' + TimbreCFDI.NombreArchivo)
//    else
//      ShowMessage('Error: ' + TimbreCFDI.MensajeError);
  finally
    DocumentoComprobanteFiscal.Free
  end;
end;

end.
