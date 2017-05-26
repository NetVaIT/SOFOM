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
    ADODtStPrefacturasCFDIIdCuentaXCobrar: TIntegerField;
    ADODtStPrefacturasCFDISaldoFactoraje: TFMTBCDField;
    DetallesCXCParaFacturarEsMoratorios: TBooleanField;
    adopSetCXCMoratorio: TADOStoredProc;
    ADOStrprcActGralMoratorios: TADOStoredProc;
    ActActualizaMoratorios: TAction;
    adodsMasterSaldoFactoraje: TFMTBCDField;
    ADOdsCXCDetallePagosAplicados: TFMTBCDField;
    ADOdsCXCDetallePagosAplicadosFactoraje: TFMTBCDField;
    ActGeneraCuentasXCobrar: TAction;
    ADOStrdPrcGeneraCXC: TADOStoredProc;
    adodsMasterIdAnexo: TIntegerField;
    ADODTSTCXCMoratorios: TADODataSet;
    ADODTSTCXCMoratoriosIdCuentaXCobrar: TAutoIncField;
    ADODTSTCXCMoratoriosIdCuentaXCobrarEstatus: TIntegerField;
    ADODTSTCXCMoratoriosIdPersona: TIntegerField;
    ADODTSTCXCMoratoriosIdAnexosAmortizaciones: TIntegerField;
    ADODTSTCXCMoratoriosFecha: TDateTimeField;
    ADODTSTCXCMoratoriosImporte: TFMTBCDField;
    ADODTSTCXCMoratoriosImpuesto: TFMTBCDField;
    ADODTSTCXCMoratoriosInteres: TFMTBCDField;
    ADODTSTCXCMoratoriosTotal: TFMTBCDField;
    ADODTSTCXCMoratoriosSaldo: TFMTBCDField;
    ADODTSTCXCMoratoriosSaldoFactoraje: TFMTBCDField;
    ADODTSTCXCMoratoriosIdAnexo: TIntegerField;
    ADODTSTCXCMoratoriosIdCuentaXCobrarBase: TIntegerField;
    ADODTSTCXCMoratoriosDescripcion: TStringField;
    ADODTSTCXCMoratoriosIdCFDI: TLargeintField;
    adodsMasterIdCFDI: TLargeintField;
    adodsMasterIdCuentaXCobrarBase: TIntegerField;
    adodsMasterFechaVencimiento: TDateTimeField;
    ADODTSTCXCMoratoriosFechaVencimiento: TDateTimeField;
    adodsMasterEsMoratorio: TBooleanField;
    ADOPActualizaTotalesCXC: TADOStoredProc;
    ActTotalesCXC: TAction;
    ADODtStAdicionalesContratoAnexo: TADODataSet;
    ADODtStAdicionalesContratoAnexoIdAnexo: TAutoIncField;
    ADODtStAdicionalesContratoAnexoIdContrato: TAutoIncField;
    ADODtStAdicionalesContratoAnexoAnexo: TStringField;
    ADODtStAdicionalesContratoAnexoContrato: TStringField;
    adodsMasterAnexo: TStringField;
    adodsMasterContrato: TStringField;
    ADOQryAux2: TADOQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure actGeneraPreFacturasExecute(Sender: TObject);
    procedure ADODtStPrefacturasCFDINewRecord(DataSet: TDataSet);
    procedure ADODtStCFDIConceptosPrefNewRecord(DataSet: TDataSet);
    procedure ADODtStCFDIConceptosPrefAfterPost(DataSet: TDataSet);
    procedure ADODtStPrefacturasCFDIBeforeOpen(DataSet: TDataSet);
    procedure adodsMasterAfterOpen(DataSet: TDataSet);
    procedure ActActualizaMoratoriosExecute(Sender: TObject);
    procedure ActGeneraCuentasXCobrarExecute(Sender: TObject);
    procedure adodsMasterBeforeInsert(DataSet: TDataSet);
    procedure ActTotalesCXCExecute(Sender: TObject);
  private
    FFacturando: boolean;
    function SacaTipoComp(TipoDoc: Integer): String;
    function SacaDireccion(IDCliente: Integer): Integer;
    function SacaMetodo(IDCliente: Integer; var CtaPago:String): Integer;
    procedure Facturar(IDCFDIGen: Integer; var CFDICreado: Boolean;
      IDGenTipoDoc: integer);
    procedure RegistraBitacora(tipoRegistro: Integer);
    function GetFFechaActual: TDAteTime;    //May 26/17

    { Private declarations }
  public
    { Public declarations }
    Property Facturando:boolean read FFacturando write FFacturando; //Abr 7/17 copiado de Pagos
    Property FFechaActual:TDAteTime read GetFFechaActual;
  end;

var
  dmCuentasXCobrar: TdmCuentasXCobrar;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses CuentasXCobrarForm, FacturasDM, _ConectionDmod;

{$R *.dfm}

procedure TdmCuentasXCobrar.ActActualizaMoratoriosExecute(Sender: TObject);
begin
  inherited;
  ADOStrprcActGralMoratorios.Parameters.ParamByName('@Fecha').Value:=FFechaActual;// may 26/17 date;  //Sin hora
  ADOStrprcActGralMoratorios.ExecProc;
  Showmessage('Se ejecutó proceso de Moratorios al día: '+ dateToStr(FFechaActual)) ; // may 26/17 era date
  RegistraBitacora(1);//Moratorios Abr 12/17
  adodsMaster.Refresh;

end;

procedure TdmCuentasXCobrar.ActGeneraCuentasXCobrarExecute(Sender: TObject);
var
  res:integer;     //Feb 15/17
  FechaAux:TDateTime;
begin
  inherited;
  REs:=0;                                                                                 // may 26/17 era date
  ShowMessage('Calcula Cuentas X Cobrar pendientes de generar al dia de hoy '+dateTimeToSTR(FFechaActual));
  { feb 15/17
  //SAca lo pendiente al dia para poder usar las fechas de corte pendientes y generar
  }
  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.SQL.Clear;
  ADOQryAuxiliar.SQL.Add('SELECT    IdAnexoAmortizacion, IdAnexoCredito, IdAnexoSegmento, Periodo, FechaCorte, FechaVencimiento, '+
                         ' TasaAnual, SaldoInicial, Pago, Capital, CapitalImpuesto, CapitalTotal, Interes, InteresImpuesto,'+
                         ' InteresTotal, ImpactoISR, PagoTotal, SaldoFinal, FechaMoratorio, MoratorioBase, Moratorio,'+
                         ' MoratorioImpuesto FROM  AnexosAmortizaciones AA where FechaCorte <=:FEchaCorte and '+
                         ' not Exists(Select * from CuentasXCobrar CXC where CXC.IdAnexosAmortizaciones=AA.IdAnexoAmortizacion '+
                         '            and CXC.Fecha=AA.FechaCorte)'+
                         ' order by FechaCorte');

  ADOQryAuxiliar.Parameters.ParamByName('FechaCorte').value:= FFechaActual;// may 26/17 date;      //Se buscan a al dìa de hoy  (Fecha Tabla)

  ADOQryAuxiliar.Open;
  while not ADOQryAuxiliar.eof do
  begin

    FechaAux:= ADOQryAuxiliar.FieldByName('FechaCorte').AsDateTime;

    ADOStrdPrcGeneraCXC.Parameters.ParamByName('@FechaCorte').Value:=FechaAux;
    ADOStrdPrcGeneraCXC.ExecProc;

 // deshabilitado ab 11/17   ShowMessage('Ejecutó proceso con fecha '+dateTimeToSTR(FechaAux));
    Res:=Res+ADOStrdPrcGeneraCXC.Parameters.ParamByName('@RETURN_Value').Value;;  //Movido aca abr 12/17
    ADOQryAuxiliar.Next;
  end;
  ADOQryAuxiliar.Close;
  adoDSMaster.Close;
  adoDSMaster.Open;
  if res=0  then
     Showmessage('No existian Cuentas X Cobrar pendientes de generar')
  else
     Showmessage('Actualizó '+intToStr(res)+' Cuentas X Cobrar');
  RegistraBitacora(0);//CuentasXCobrar
end;


Procedure TdmCuentasXCobrar.RegistraBitacora(tipoRegistro:Integer); //Abr 11/17
var
   tipoTxt:String;
   REsp:Integer;
begin
  case TipoRegistro of
  0:  tipoTxt:='CXC';
  1:  tipoTxt:='MORA';
  2:  tipoTxt:='ABOCAP'; //Abr 19/17
  end;

  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.SQL.Clear;
  ADOQryAuxiliar.sql.Add('IF not exists(Select * from BitacoraGeneracion where Tipo = '''+TipoTxt+''' and FechaGeneracion =:IdFechaHoy1 )'+
                         ' Insert into BitacoraGeneracion (Tipo, FechaGeneracion, IdUsuario) Values('''+tipotxt+''',:IdFechaHoy2, '  +
                         intToSTR(_DMConection.idUsuario)+' ) ' );
  ADOQryAuxiliar.Parameters.ParamByName('IdFechaHoy1').Value:=FFechaActual;  //cambio May 28/17   date bitacora
  ADOQryAuxiliar.Parameters.ParamByName('IdFechaHoy2').Value:=FFechaActual;  // cambio May 28/17   date bitacora
  Resp:=ADOQryAuxiliar.ExecSQL;
//  if Resp=1 then
  //  showmessage('Lo creó');
  AdodsMaster.Refresh;
end;


procedure TdmCuentasXCobrar.actGeneraPreFacturasExecute(Sender: TObject);
var CFDICreado:Boolean;
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
   // abr 7/17 DEshabilitado porque  van en cxc aparte  if not DetallesCXCParaFacturar.FieldByName('EsMoratorios').AsBoolean then    //FEb 2/17 Nuevo para que sólo facture lo que no es moratorio, porque el moratorio se debe facturarse cuando se pague
     begin
      ADODtStCFDIConceptosPref.Insert;
      ADODtStCFDIConceptosPrefDescripcion.AsString:= DetallesCXCParaFacturar.fieldbyname('Descripcion').asString;
      ADODtStCFDIConceptosPrefIdCuentaXCobrarDetalle.AsInteger:=DetallesCXCParaFacturar.fieldbyname('IDCuentaXCobrarDEtalle').AsInteger;  //Sin a Dic 7/16
      ADODtStCFDIConceptosPrefValorUnitario.Value:= DetallesCXCParaFacturar.fieldbyname('Importe').asFloat;
                                            //Value Feb 19/17
      ADODtStCFDIConceptosPrefImporte.value:= DetallesCXCParaFacturar.fieldbyname('Importe').AsFloat;

      ADODtStCFDIConceptosPref.Post;
     end;
      DetallesCXCParaFacturar.Next;
    end;
    adodsmaster.Edit;
    adodsmaster.FieldByName('IdCuentaXCobrarEstatus').AsInteger:=0; //CAmbia a pendiente
    adodsmaster.FieldByName('IdCFDI').AsInteger:= ADODtStPrefacturasCFDI.FieldByName('IDCFDI').AsInteger; //Feb 9/17
    adodsmaster.post;            //ERa CFDInormal.. mar 30/17

    //Facturar Abr 7/17

    Facturar(ADODtStPrefacturasCFDI.FieldByName('IDCFDI').AsInteger,CFDICreado, 1); //Timbra factura
    //DEntro del proceso de facturacion se muestraPDF //Abr 7/17

  end;
end;

procedure TdmCuentasXCobrar.ActTotalesCXCExecute(Sender: TObject);
begin
  inherited;
  ADOPActualizaTotalesCXC.Parameters.ParamByName('@IdCuentaXCobrar').Value:=  adodsmaster.FieldByName('IDCuentaXCobrar').asinteger;
  ADOPActualizaTotalesCXC.ExecProc;
end;

procedure TdmCuentasXCobrar.Facturar(IDCFDIGen: Integer;var CFDICreado:Boolean;IDGenTipoDoc:integer); //abr7/17 Copiado desde Pagos
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
  FFacturando:=False;
end;


function TdmCuentasXCobrar.GetFFechaActual: TDAteTime;   //May 26/17   //Obtener fecha Pruebas sin Hora
var d,m,a:word;
begin

  ADOQryAux2.Close;
  ADOQryAux2.SQL.Clear;
  ADOQryAux2.SQL.Add('SELECT [dbo].[GetDateAux] ()  as FechaAct ');
  ADOQryAux2.open;
  Result := ADOQryAux2.Fieldbyname('FechaAct').AsDateTime;
  DEcodedate(Result,a,m,d);
  result:=Encodedate(a,m,d);
end;

procedure TdmCuentasXCobrar.adodsMasterAfterOpen(DataSet: TDataSet);
begin
  inherited;
  adodsCxcDetalle.Open;
  ADODTSTCXCMoratorios.Open;
  ADODtStAdicionalesContratoAnexo.Open; //Abr 20/17
end;

procedure TdmCuentasXCobrar.adodsMasterBeforeInsert(DataSet: TDataSet);
const      //Ajustado por si hay que dar de alta CXC manual mar 10/17
   TxtSQL=' select IdCuentaXCobrar, IdCuentaXCobrarEstatus, IdPersona, '+
   'IdAnexosAmortizaciones, Fecha, Importe, Impuesto, Interes,'+
   'Total, Saldo, SaldoFactoraje, IdCFDI, IDAnexo from CuentasXCobrar';  // Normal era mar 30/17
   orden=' order by  IdAnexo, IDAnexosAmortizaciones'; //Mar 27/17
var Txt:String;
begin
  Txt:=   Tadodataset(adodsMaster).CommandText;
  if pos('inner ',Txt)>0 then
  begin
    Tadodataset(adodsMaster).Close;
    Tadodataset(adodsMaster).CommandText:=TxtSQL + Orden;   //Mar 27/17
    Tadodataset(adodsMaster).open;
  end;
  inherited;

end;

procedure TdmCuentasXCobrar.ADODtStCFDIConceptosPrefAfterPost(
  DataSet: TDataSet);
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
  ADOSumaIVA.Close;
  ADOSumaIVA.Parameters.ParamByName('IdCuentaXCobrar').Value:=adodsMasterIdCuentaXCobrar.AsInteger; // ya que no tierne mas campos ino la suma ene 28/17
  ADOSumaIVA.Open; // SE supone esta amarrado a la CuentaXCobrar
  if not ADOSumaIVA.eof then // Pendiente de terminar
  begin
    IVAReg:= ADOSumaIVA.fieldbyname('IVAREG').asFloat;
  end;
  //Siempre actualizar
  IVACal:=IVAReg;  //  feb 23/17

  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.SQL.Clear;
  ADOQryAuxiliar.SQL.Add('Select Sum(Importe) as ValorST From CFDIConceptos where IDCFDI='+intToStr(idDocCFDI));
  ADOQryAuxiliar.open;

  Subtotal:= ADOQryAuxiliar.FieldByName('ValorST').AsFloat;

  TotalCal:= Subtotal+IVACal;   //feb 23/17
  {  deshabilitado feb 23/17
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
  end;   }

  //Se usa siempre en registrado

  ADOQryAuxiliar.Close;                                                                                       //   subtotal*0.16
  ADOQryAuxiliar.SQL.Clear;                                                                                                                  //  subtotal*1.16                      //  subtotal*1.16
  ADOQryAuxiliar.SQL.Add('UPDATE CFDI SET Subtotal='+FloattoSTR(subtotal)+' , TotalImpuestoTrasladado='+FloatToSTR(IVACal)+', Total='+FloatToSTR(TotalCal) +', SaldoDocumento='+FloatToSTR(TotalCal)
                         +', SaldoFactoraje ='+FloatToSTR(TotalCal)+' where IDCFDI ='+IntToStr(idDocCFDI));
                           //FEb 9/17 saldoFactoraje
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
  DataSet.FieldByName('Fecha').AsDateTime:=now; //Prefactura Se supondría que se van a generar inmediatamente pero hay que verificar(por si se requiere cambio de fecha antes de generar)
  DataSet.FieldByName('LugarExpedicion').AsString:=ADODtStPersonaEmisorMunicipio.Value +', '+ADODtStPersonaEmisorEstado.Value;//'Zapopan, Jalisco' ; //Verificar si se saca de  la direccion del emisor?

// DataSet.FieldByName('Serie').AsString:=
  DataSet.FieldByName('IdCFDIFormaPago').AsInteger :=1;
  DataSet.FieldByName('IDMoneda').AsInteger:=106;
  DataSet.fieldbyname('TipoCambio').AsInteger:=1; //Jun 27/16


  DataSet.FieldByName('IdPersonaEmisor').AsInteger:=ADODtStPersonaEmisoridpersona.AsInteger; //Debe estar abierta y debe tener una direccion fiscal
  //DE CuentasXCobrar
  DataSet.FieldByName('IdPersonaReceptor').AsInteger:=  adodsMasterIdPersona.AsInteger;
  idPersonaDomi:= SacaDireccion(adodsMasterIdPersona.AsInteger);//Ene 29/17
  if IDpersonaDomi<>-1 then
     DataSet.FieldByName('IdClienteDomicilio').AsInteger:= IDpersonaDomi;// SacaDireccion(adodsMasterIdPersona.AsInteger); // Ver si no tiene que pasa.... Dic 6/16   (Truena no lo deja crear)

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
  TFrmConCuentasXCobrar(gGridForm).ActActualizaMoratorios:= ActActualizaMoratorios;//Feb 8/17
  TFrmConCuentasXCobrar(gGridForm).ActGenerarCXCs:=ActGeneraCuentasXCobrar;//Feb 15/17
  TFrmConCuentasXCobrar(gGridForm).ActTotalesCXC:=ActTotalesCXC;//abr  17/17
   TFrmConCuentasXCobrar(gGridForm).DSAuxiliar.DataSet:=ADOQryAuxiliar; //Abr 11/17
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


