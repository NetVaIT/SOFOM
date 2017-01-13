unit CuentasXCobrarDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB, dialogs;

type
  TdmCuentasXCobrar = class(T_dmStandar)
    ADOdsCXCDetalle: TADODataSet;
    adodsMasterIdCuentaXCobrar: TAutoIncField;
    adodsMasterIdCuentaXCobrarEstatus: TIntegerField;
    adodsMasterIdPersona: TIntegerField;
    adodsMasterIdAnexosAmortizaciones: TIntegerField;
    adodsMasterFecha: TDateTimeField;
    adodsMasterImporte: TFMTBCDField;
    adodsMasterImpuesto: TFMTBCDField;
    adodsMasterInteres: TFMTBCDField;
    adodsMasterTotal: TFMTBCDField;
    adodsMasterSaldo: TFMTBCDField;
    ADODsCXCTiposConc: TADODataSet;
    ADODSCXCEstatus: TADODataSet;
    adodsMasterEstatusCXC: TStringField;
    ADOSPersonas: TADODataSet;
    adodsMasterCliente: TStringField;
    DSMaster: TDataSource;
    actGeneraPreFacturas: TAction;
    DetallesCXCParaFacturar: TADODataSet;
    ADOSumaIVA: TADODataSet;
    ADODtStPrefacturasCFDI: TADODataSet;
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
    ADODtStCFDIImpuestosPref: TADODataSet;
    ADODtStCFDIImpuestosPrefIdCFDI: TLargeintField;
    ADODtStCFDIImpuestosPrefTipoImp: TStringField;
    ADODtStCFDIImpuestosPrefImpuesto: TStringField;
    ADODtStCFDIImpuestosPrefTasa: TFloatField;
    ADODtStCFDIImpuestosPrefImporte: TFloatField;
    DSPrefacturasCFDI: TDataSource;
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
    ADOdsAuxiliar: TADODataSet;
    ADOdsCXCDetalleIdCuentaXCobrar: TIntegerField;
    ADOdsCXCDetalleIdCuentaXCobrarTipo: TIntegerField;
    ADOdsCXCDetalleIdentificador: TStringField;
    ADOdsCXCDetalleDescripcion: TStringField;
    ADOdsCXCDetalleImporte: TFMTBCDField;
    ADOdsCXCDetalleSaldo: TFMTBCDField;
    ADOQryAuxiliar: TADOQuery;
    DetallesCXCParaFacturarIdCuentaXCobrar: TIntegerField;
    DetallesCXCParaFacturarIdCuentaXCobrarTipo: TIntegerField;
    DetallesCXCParaFacturarIdentificador: TStringField;
    DetallesCXCParaFacturarDescripcion: TStringField;
    DetallesCXCParaFacturarImporte: TFMTBCDField;
    DetallesCXCParaFacturarSaldo: TFMTBCDField;
    DetallesCXCParaFacturarFacturar: TBooleanField;
    DetallesCXCParaFacturarIdTipoContrato: TIntegerField;
    DetallesCXCParaFacturarEsIVA: TBooleanField;
    DetallesCXCParaFacturarTemporalidad: TStringField;
    ADOdsCXCDetalleIdCuentaXCobrarDetalle: TAutoIncField;
    DetallesCXCParaFacturarIdCuentaXCobrarDetalle: TAutoIncField;
    ADODtStCFDIConceptosPrefIdCuentaXCobrarDetalle: TIntegerField;
    ADOdsCXCDetalleSaldoFactoraje: TFMTBCDField;
    procedure DataModuleCreate(Sender: TObject);
    procedure actGeneraPreFacturasExecute(Sender: TObject);
    procedure ADODtStPrefacturasCFDINewRecord(DataSet: TDataSet);
    procedure ADODtStCFDIConceptosPrefNewRecord(DataSet: TDataSet);
    procedure ADODtStCFDIConceptosPrefAfterPost(DataSet: TDataSet);
    procedure ADODtStPrefacturasCFDIBeforeOpen(DataSet: TDataSet);
    procedure adodsMasterAfterOpen(DataSet: TDataSet);
  private
    function SacaTipoComp(TipoDoc: Integer): String;
    function SacaDireccion(IDCliente: Integer): Integer;
    function SacaMetodo(IDCliente: Integer; var CtaPago:String): Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCuentasXCobrar: TdmCuentasXCobrar;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses CuentasXCobrarForm;

{$R *.dfm}

procedure TdmCuentasXCobrar.actGeneraPreFacturasExecute(Sender: TObject);
begin
  inherited;
  DetallesCXCParaFacturar.Open;

  if DetallesCXCParaFacturar.eof then
  begin
    ShowMessage('No existen items para Facturar')  //No deberia estar habilitado en cualquiera
  end
  else
  begin
    //En principio individual de la actual si esta precargada.., luego filtrar las prcargadas  hacer ciclo
    //Crear encabezado con datos de cliente
    //Recorrer Detalles para crearconceptos según datos
    ADODtStPrefacturasCFDI.open;
    ADODtStCFDIConceptosPref.open;
    ADODtStPrefacturasCFDI.Insert; //ver que va en el evento..
    ADODtStPrefacturasCFDI.Post;
    DetallesCXCParaFacturar.First;
    while not DetallesCXCParaFacturar.Eof do
    begin
      ADODtStCFDIConceptosPref.Insert;
      ADODtStCFDIConceptosPrefDescripcion.AsString:= DetallesCXCParaFacturar.fieldbyname('Descripcion').asString;
      ADODtStCFDIConceptosPrefIdCuentaXCobrarDetalle.AsInteger:=DetallesCXCParaFacturar.fieldbyname('IDCuentaXCobrarDEtalle').AsInteger;  //Sin a Dic 7/16
      ADODtStCFDIConceptosPrefValorUnitario.AsFloat:= DetallesCXCParaFacturar.fieldbyname('Importe').asFloat;

      ADODtStCFDIConceptosPrefImporte.AsFloat:= DetallesCXCParaFacturar.fieldbyname('Importe').AsFloat;

      ADODtStCFDIConceptosPref.Post;
      DetallesCXCParaFacturar.Next;
    end;
    adodsmaster.Edit;
    adodsmaster.FieldByName('IdCuentaXCobrarEstatus').AsInteger:=0; //CAmbia a pendiente
    adodsmaster.post;
    ShowMessage('Prefactura generada');
    //&Verificar ivas..
  end;
end;

procedure TdmCuentasXCobrar.adodsMasterAfterOpen(DataSet: TDataSet);
begin
  inherited;
  adodsCxcDetalle.Open;
end;

procedure TdmCuentasXCobrar.ADODtStCFDIConceptosPrefAfterPost(
  DataSet: TDataSet);
var                             //Copiado de Mas
  idDocCFDI, IDDocItem, idImp:Integer;
  Subtotal,IVACal,TotalCal:Double; //Agregado ago 25/16
  Existe:Boolean;
begin
  inherited;  //Mar 29/16     //Verificar que no intertfiera con el  proceso normal de facturacion
  idImp:=-1;
  //Verificar si aca actualizar el item respectivo del detalle del documento
  IDDocItem:=DataSet.FieldByName('IDCFDIConcepto').AsInteger;
  idDocCFDI:=DataSet.FieldByName('IDCFDI').AsInteger;

  //Siempre actualizar

  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.SQL.Clear;
  ADOQryAuxiliar.SQL.Add('Select Sum(Importe) as ValorST From CFDIConceptos where IDCFDI='+intToStr(idDocCFDI));
  ADOQryAuxiliar.open;

  Subtotal:= ADOQryAuxiliar.FieldByName('ValorST').AsFloat;

  IVACal:= subtotal*0.16;
  TotalCal:= Subtotal+IVACal; //subtotal*1.16 ;    //Ago 25/16

  //Ver si va a ir decto?? Nov 29/16

  ADOQryAuxiliar.Close;                                                                                       //   subtotal*0.16
  ADOQryAuxiliar.SQL.Clear;                                                                                                                  //  subtotal*1.16                      //  subtotal*1.16
  ADOQryAuxiliar.SQL.Add('UPDATE CFDI SET Subtotal='+FloattoSTR(subtotal)+' , TotalImpuestoTrasladado='+FloatToSTR(IVACal)+', Total='+FloatToSTR(TotalCal) +', SaldoDocumento='+FloatToSTR(TotalCal)
                          +' where IDCFDI ='+IntToStr(idDocCFDI));
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

procedure TdmCuentasXCobrar.ADODtStCFDIConceptosPrefNewRecord(
  DataSet: TDataSet);
begin                     //Copiado desde FActuras //Verificar idCFDI de relacion
  inherited;
  dataset.FieldByName('IDUnidadMedida').AsInteger:=2; //NA
  dataset.FieldByName('Unidad').AsString:='NA';
  dataset.FieldByName('Cantidad').AsFloat:=1;
end;

procedure TdmCuentasXCobrar.ADODtStPrefacturasCFDIBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  ADODtStPersonaEmisor.open;
end;

procedure TdmCuentasXCobrar.ADODtStPrefacturasCFDINewRecord(DataSet: TDataSet);
var cuenta:String;
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
  DataSet.FieldByName('IdPersonaReceptor').AsInteger:=  adodsMasterIdPersona.AsInteger;
  DataSet.FieldByName('IdClienteDomicilio').AsInteger:= SacaDireccion(adodsMasterIdPersona.AsInteger); // Ver si no tiene que pasa.... Dic 6/16
  DataSet.FieldByName('IDMetodoPago').AsInteger:= SacaMetodo(adodsMasterIdPersona.AsInteger, Cuenta); //  DataSet.FieldByName('IDMetodoPago').AsInteger:=5; //Otros  si no tiene
  if Cuenta <>'' then
     DataSet.FieldByName('NumCtaPago').asString:= cuenta;
  DataSet.FieldByName('IdCuentaXCobrar').AsInteger:=  adodsMasterIdCuentaXCobrar.AsInteger;  //Ajustado Ene 12/17 idcxc

  Except
    Raise;
  end;
end;

procedure TdmCuentasXCobrar.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmConCuentasXCobrar.Create(Self);     //Dic 5/16

  gGridForm.DataSet:= adodsMaster;
  TFrmConCuentasXCobrar(gGridForm).ActGenerarPrefactura := actGeneraPreFacturas; //Dic 7/16
end;

function TdmCuentasXCobrar.SacaTipoComp (TipoDoc:Integer) :String;
begin
  ADOdsAuxiliar.Close;
  ADOdsAuxiliar.CommandText:='Select * from CFDITipoDocumento where idCFDITipoDocumento = '+ intToSTR(TipoDoc);
  ADOdsAuxiliar.Open;
  if not ADOdsAuxiliar.eof then
    Result:=ADOdsAuxiliar.FieldByName('TipoComprobante').AsString;
end;

function TdmCuentasXCobrar.SacaDireccion (IDCliente:Integer) :Integer;
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

function TdmCuentasXCobrar.SacaMetodo (IDCliente:Integer; var CtaPago:String) :Integer;
begin                                         //Dic 6/16
  CtaPago:='';
  ADOdsAuxiliar.Close;
  ADOdsAuxiliar.CommandText:='Select * from Personas where idPersona = '+ intToSTR(IDCliente);
  ADOdsAuxiliar.Open;
  if (not ADOdsAuxiliar.eof)  and not (ADOdsAuxiliar.FieldByName('IdMetodoPago').isnull) then
  begin
    Result:=ADOdsAuxiliar.FieldByName('IdMetodoPago').asInteger;
    if not ADOdsAuxiliar.FieldByName('NumCtaPagoCliente').isnull then
       CtaPago:= ADOdsAuxiliar.FieldByName('NumCtaPagoCliente').asstring;
  end
  else
      Result:=5; //Otros

end;


end.


