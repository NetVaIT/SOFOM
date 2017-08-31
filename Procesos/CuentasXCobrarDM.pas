unit CuentasXCobrarDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB, dialogs, vcl.controls,forms, winapi.windows, shellapi;

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
    ADODtStSelMetPago: TADODataSet;
    ADODtStSelMetPagoIdMetodoPago: TIntegerField;
    ADODtStSelMetPagoIdentificador: TStringField;
    ADODtStSelMetPagoDescripcion: TStringField;
    ADODtStSelMetPagoExigeCuenta: TIntegerField;
    ADODtStSelMetPagoClaveSAT2016: TStringField;
    adodsMasterDescripcion: TStringField;
    ActRepCxCEstatusFactPendiente: TAction;
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
    procedure DSMasterDataChange(Sender: TObject; Field: TField);
    procedure ActRepCxCEstatusFactPendienteExecute(Sender: TObject);

  private
    FFacturando: boolean;
    FTotalConMora: Double;
    function SacaTipoComp(TipoDoc: Integer): String;
    function SacaDireccion(IDCliente: Integer): Integer;
    function SacaMetodo(IDCliente: Integer; var CtaPago:String): Integer;
    procedure Facturar(IDCFDIGen: Integer; var CFDICreado, CFDITimbrado: Boolean;
      IDGenTipoDoc: integer);
    procedure RegistraBitacora(tipoRegistro: Integer);
    function GetFFechaActual: TDAteTime;
    function EsOpcionCompra(idCXC: Integer;var ConceptoNvo:String; var idCXCDet :integer): Boolean;
    function GetFTotalConMora: Double;  //May 26/17
    function CambiarMetodoPago(var IDMetodoPago: Integer;
      var Cuenta,CompConcepto: String): Boolean;
    procedure verificaYCambiaEstatusCXC(IDCFDIACT, NvoEstatus, IdCXCAct:integer; CFDICreado:Boolean );
    function ConfirmarGeneracion(AMAster, AConceptos: TAdoDAtaSEt): Boolean;

    { Private declarations }
  public
    { Public declarations }
    Property Facturando:boolean read FFacturando write FFacturando; //Abr 7/17 copiado de Pagos
    Property FFechaActual:TDAteTime read GetFFechaActual;

    Property TotalConMora : Double read GetFTotalConMora ;//Jul 10/17    write FTotalConMora
  end;

var
  dmCuentasXCobrar: TdmCuentasXCobrar;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses CuentasXCobrarForm, FacturasDM, _ConectionDmod, ConceptoOpcionCEdt, MetodoPagoFacturaEdt,
  PDFReporteEstatusCXC, FacturaConfirmacionForm;


{$R *.dfm}

procedure TdmCuentasXCobrar.ActRepCxCEstatusFactPendienteExecute(
  Sender: TObject);
var
  DMListaCXCPendFactPDF:TDMListaCXCPendFactPDF;
  ArchiPDF:TFileName;
  Texto:String;//,TxtSQL:String;
  FechaIni, FechaFin:TDAteTime;
begin        //Jul 11/17
  inherited;
//  FechaIni:=  TfrmrptantiguedadSaldos(gGridForm).AFecIni;
//  FechaFin:=  TfrmrptantiguedadSaldos(gGridForm).AFecFin;
  //Ajustado para que no cambie l consulta

  TExto:= '_' +FormatDateTime('ddmmmyyyy', _DmConection.LaFechaActual);//Date); Jun 30/17
  ArchiPDF:='ListaCXCPendFacturas'+Texto+'.PDF';
  DMListaCXCPendFactPDF:= TDMListaCXCPendFactPDF.Create(Self);
  try
 //    DMListaCXCPendFactPDF.ADODtStCtaActCliente.Close;
  //   TAdoDAtaset(dmAntiguedadSaldosPDF.ADODtStCtaActCliente).CommandText:=  TxtSQL;
   // if pos(':FIni',TxtSQL)>0 then
    begin                                                                                        //Jul 11/17
  //    TADoDAtaset(dmAntiguedadSaldosPDF.ADODtStCtaActCliente).Parameters.ParamByName('IdPersona').Value:=adodsMasterIdPersona.AsInteger; //DEl que tenga actualmente  siempre usa fechas
//      TADoDAtaset(dmAntiguedadSaldosPDF.ADODtStCtaActCliente).Parameters.ParamByName('Fini').Value:= FechaIni;
//      TADoDAtaset(dmAntiguedadSaldosPDF.ADODtStCtaActCliente).Parameters.ParamByName('FFin').Value:= FechaFin;
   //   TExto:= ' DEL ' + DAteToSTR(FEchaIni) + ' AL '+ DAteToSTR(FEchaFin);//+FormatDateTime('mmm-dd-yyyy',FechaIni)+ ' AL: '+FormatDateTime('dd mmm del aaaa',FechaFin);
    end;
 //   else             //
   // TExto:=  'AL '+upperCASE(FormatDateTime('dd ''de'' mmmm ''del'' yyyy',_DmConection.LaFechaActual));//Date)); Jul 11/17 para que muestre todo lo adeudado

   // DMListaCXCPendFactPDF.ADODtStCtaActCliente.Open;



    DMListaCXCPendFactPDF.adodsReport.Open;

    DMListaCXCPendFactPDF.ppReport.ShowPrintDialog:= False;
    DMListaCXCPendFactPDF.ppReport.ShowCancelDialog:= False;

    DMListaCXCPendFactPDF.ppReport.PrinterSetup.DocumentName:=  'LISTADO DE CXC CON FACTURAS PENDIENTES '+#13 +Texto;

    DMListaCXCPendFactPDF.ppReport.DeviceType:= 'PDF';
    DMListaCXCPendFactPDF.ppReport.TextFileName:= ArchiPDF;
   // dmAntiguedadSaldosPDF.ppLblTitulo2.caption:= 'ANTIGUEDAD DE SALDOS COBRADOS POR CLIENTE '+#13 +Texto;
    DMListaCXCPendFactPDF.ppReport.print;

     DMListaCXCPendFactPDF.adodsReport.Close;
  finally
    DMListaCXCPendFactPDF.Free;
  end;
  if FileExists(ArchiPDF) then
      ShellExecute(application.Handle, 'open', PChar(ArchiPDF), nil, nil, SW_SHOWNORMAL);
end;

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
 // si debe ir deshabilitado Ago 4/17
  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.SQL.Clear;
  ADOQryAuxiliar.SQL.Add('SELECT    IdAnexoAmortizacion, IdAnexoCredito, IdAnexoSegmento, Periodo, FechaCorte, FechaVencimiento, '+
                         ' TasaAnual, SaldoInicial, Pago, Capital, CapitalImpuesto, CapitalTotal, Interes, InteresImpuesto,'+
                         ' InteresTotal, ImpactoISR, PagoTotal, SaldoFinal, FechaMoratorio, MoratorioBase, Moratorio,'+
                         ' MoratorioImpuesto FROM  AnexosAmortizaciones AA where FechaCorte <=:FEchaCorte and '+
                         ' not Exists(Select * from CuentasXCobrar CXC where CXC.IdAnexosAmortizaciones=AA.IdAnexoAmortizacion) '+
//                         '       //     and CXC.Fecha=AA.FechaCorte)'+ no debe filtrar poresto
                         ' and not Exists (Select * from AnexosCreditos Ac where Ac.IdAnexoCredito =AA.IdAnexoCredito and AC.IdAnexoCreditoEstatus =2)-- no Cancelado'+
                         ' order by FechaCorte');

  ADOQryAuxiliar.Parameters.ParamByName('FechaCorte').value:= FFechaActual;// may 26/17 date;      //Se buscan a al dìa de hoy  (Fecha Tabla)

  ADOQryAuxiliar.Open;
  while not ADOQryAuxiliar.eof do
  begin

    FechaAux:= ADOQryAuxiliar.FieldByName('FechaCorte').AsDateTime;

    ADOStrdPrcGeneraCXC.Parameters.ParamByName('@FechaCorte').Value:=FechaAux;   //FFechaActual
    ADOStrdPrcGeneraCXC.ExecProc;

 // deshabilitado ab 11/17   ShowMessage('Ejecutó proceso con fecha '+dateTimeToSTR(FechaAux));
// verificar con Jesus para que mande algun valor  if ADOStrdPrcGeneraCXC.Parameters.ParamByName('@IDCuentaXCobrar').Value>0 then //Ajustado Jun 30/17

    Res:=Res+1;  //Movido aca abr 12/17
    ADOQryAuxiliar.Next;
  end;
  ADOQryAuxiliar.Close;

  adoDSMaster.Close;
  adoDSMaster.Open;
  if res=0  then
     Showmessage('No existian Cuentas X Cobrar pendientes de generar')
  else
     Showmessage('Actualizó  Cuentas X Cobrar de '+intToStr(res)+' Amortizaciones');  //Puede que no de todas actualice

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

function TdmCuentasXCobrar.EsOpcionCompra(idCXC:Integer;var ConceptoNvo:String; var idCXCDet :integer ):Boolean; //Jun 28/17
begin                                                                          //Para traer la que se va a cambiar
  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.SQL.Clear;
  ADOQryAuxiliar.sql.Add('Select * from CuentasXcobrarDetalle  where idCuentaXCobrar=' +intToStr(idcxc)+
                         ' and IdCuentaXCobrarTipo in (92,96,100)' );

  ADOQryAuxiliar.open;
  if not ADOQryAuxiliar.eof then         //Solo debe ria haber una
  begin
    idCXCDet:=ADOQryAuxiliar.FieldByName('IDCuentaXCobrarDetalle').AsInteger;
    ConceptoNvo:= ADOQryAuxiliar.FieldByName('Descripcion').AsString;
    FrmConcFacturaOpcCompra:=TFrmConcFacturaOpcCompra.Create(self);
    FrmConcFacturaOpcCompra.cxMmConceptoFactura.Text:= ConceptoNvo;
    FrmConcFacturaOpcCompra.ShowModal;
    if FrmConcFacturaOpcCompra.ModalResult=mrOk then
       ConceptoNvo:= FrmConcFacturaOpcCompra.cxMmConceptoFactura.Text; //verificar si se toman las lineas y se coloca un enter entre una y otra en el texto Jul 10/17
    FrmConcFacturaOpcCompra.Free;
    result:=true;
  end
  else
  begin
    Result:=False;
    idCXCDet:=-1;
  end;
end;

function TdmCuentasXCobrar.CambiarMetodoPago(var IDMetodoPago:Integer; var Cuenta, CompConcepto:String):Boolean;
begin  //Jul 10/17
  Cuenta:=''; //Para que al menos este vacia
  CompConcepto:=''; //ago 30/17
  IDMetodoPago:=6;// No identificado SacaMetodo(adodsMasterIdPersona.AsInteger, Cuenta);   //CXC
  FrmMetodoPagoFactura:=TFrmMetodoPagoFactura.Create(self);
  FrmMetodoPagoFactura.IdMetSeleccion:=IDMetodoPago;
  FrmMetodoPagoFactura.CuentaSeleccion:= Cuenta;
  FrmMetodoPagoFactura.DSMetodoPago.DataSet:=ADODtStSelMetPago;

  FrmMetodoPagoFactura.ShowModal;
  Result:= FrmMetodoPagoFactura.ModalResult=mrOk ;
  if result then
  begin
    IDMetodoPago:= FrmMetodoPagoFactura.IdMetSeleccion;
    Cuenta:= FrmMetodoPagoFactura.CuentaSeleccion;
    CompConcepto:=FrmMetodoPagoFactura.ComplemConcepto; //Ago 30/17
  end;

  FrmMetodoPagoFactura.Free;


end;
procedure TdmCuentasXCobrar.actGeneraPreFacturasExecute(Sender: TObject);
var CFDICreado, ParaCompra, CambioMetPago , CFDITimbrado:Boolean; //Ago 31/17
    ConceptoOC, CtaNvaPago, ComplementoConc:String; //Ago 30/17
    IdCXCDet, IdNvoMetPago:Integer;
begin
  inherited;
  IdNvoMetPago:=0;                                         //Ago 30/17
  CambioMetPago:=CambiarMetodoPago(IdNvoMetPago,CtaNvaPago,ComplementoConc );  //Jul 10/17

   //Jun 28/17
   ParaCompra:= EsOpcionCompra(adodsMasterIdCuentaXCobrar.asinteger,ConceptoOC,IdCXCDet ); //Verificar si es opcion de compra y pedir Concepto de Facturación
  if (idcxcdet <>-1)  and ParaCompra then
  begin
    if Application.messagebox(pchar('La factura se generará con el siguiente Concepto: "'+ConceptoOC+'". ¿Continuar? '),'Confirmación', MB_YESNO)=id_No then
      Exit;  //Verificar   //DEtener
  end;
  //HAsta aca jun 28/17

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
    if CambioMetPago then
    begin
      ADODtStPrefacturasCFDIIdMetodoPago.AsInteger:=  IdNvoMetPago;
      //if CtaNvaPago<>'' then
        ADODtStPrefacturasCFDINumCtaPago.AsString:=CtaNvaPago;
    end;
    ADODtStPrefacturasCFDI.Post;
    DetallesCXCParaFacturar.First;

    while not DetallesCXCParaFacturar.Eof do
    begin
   // abr 7/17 DEshabilitado porque  van en cxc aparte  if not DetallesCXCParaFacturar.FieldByName('EsMoratorios').AsBoolean then    //FEb 2/17 Nuevo para que sólo facture lo que no es moratorio, porque el moratorio se debe facturarse cuando se pague
     begin
      ADODtStCFDIConceptosPref.Insert;

      if ParaCompra and (IdCXCDet = DetallesCXCParaFacturar.fieldbyname('IdCuentaXCobrarDEtalle').asinteger)then //Jun 28/17
        ADODtStCFDIConceptosPrefDescripcion.AsString:=  ConceptoOC
      else
      begin                                                                                                          //Ago 30/17
        ADODtStCFDIConceptosPrefDescripcion.AsString:= DetallesCXCParaFacturar.fieldbyname('Descripcion').asString +' '+ ComplementoConc;
        ComplementoConc:=''; //Solo el primer concepto lleva complemento Ago 30/17     //Es creacion.. no hay problema
      end;

      ADODtStCFDIConceptosPrefIdCuentaXCobrarDetalle.AsInteger:=DetallesCXCParaFacturar.fieldbyname('IDCuentaXCobrarDEtalle').AsInteger;  //Sin a Dic 7/16
      ADODtStCFDIConceptosPrefValorUnitario.Value:= DetallesCXCParaFacturar.fieldbyname('Importe').asFloat;
                                            //Value Feb 19/17
      ADODtStCFDIConceptosPrefImporte.value:= DetallesCXCParaFacturar.fieldbyname('Importe').AsFloat;

      ADODtStCFDIConceptosPref.Post;
     end;
      DetallesCXCParaFacturar.Next;
    end;
    adodsmaster.Edit;
    adodsmaster.FieldByName('IdCuentaXCobrarEstatus').AsInteger:=0; //CAmbia a pendiente// NOMPRE ESTATUS PREFACTURADA  jul 19/17
    adodsmaster.FieldByName('IdCFDI').AsInteger:= ADODtStPrefacturasCFDI.FieldByName('IDCFDI').AsInteger; //Feb 9/17
    adodsmaster.post;            //ERa CFDInormal.. mar 30/17

    //Facturar Abr 7/17
                                                                                //Ago 31/17
    Facturar(ADODtStPrefacturasCFDI.FieldByName('IDCFDI').AsInteger,CFDICreado, CFDITimbrado, 1); //Timbra factura

    //DEntro del proceso de facturacion se muestraPDF //Abr 7/17
    VerificaYCambiaEstatusCXC(ADODtStPrefacturasCFDI.FieldByName('IDCFDI').AsInteger,1,adodsmaster.FieldByName('IdCuentaXCobrar').ASinteger,CFDICreado); //A EstatusFActurada (1)
    if CFDICreado  and not CFDITimbrado then
       ShowMessage('Factura Creada Pendiente de Timbrar');
  end;
end;
procedure TdmCuentasXCobrar.verificaYCambiaEstatusCXC(IDCFDIACT, NvoEstatus, IdCXCAct:integer; CFDICreado:Boolean );
begin                                //Jul 19/17
  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.SQL.Clear;
  ADOQryAuxiliar.SQL.Add('Select * from CFDI where IDCFDI='+intTostr(IDCFDIACT));
  ADOQryAuxiliar.Open;
  if (ADOQryAuxiliar.FieldByName('IdCFDIEstatus').asInteger=2)      //vigente
      and (ADOQryAuxiliar.FieldByName('IdCuentaXCobrar').asInteger=IDCXCAct)  and (adodsmaster.fieldbyname('IdcuentaXCobrarEstatus').AsInteger=0) then  
  begin
    adodsmaster.Edit;
    adodsmaster.FieldByName('IdCuentaXCobrarEstatus').AsInteger:=NvoEstatus;// FACTURADA  jul 19/17
    adodsmaster.post;
  end;
end;
procedure TdmCuentasXCobrar.ActTotalesCXCExecute(Sender: TObject);
begin
  inherited;
  ADOPActualizaTotalesCXC.Parameters.ParamByName('@IdCuentaXCobrar').Value:=  adodsmaster.FieldByName('IDCuentaXCobrar').asinteger;
  ADOPActualizaTotalesCXC.ExecProc;
end;

procedure TdmCuentasXCobrar.Facturar(IDCFDIGen: Integer;var CFDICreado, CFDITimbrado:Boolean;IDGenTipoDoc:integer); //abr7/17 Copiado desde Pagos
var
   CreadaAntes:boolean;

begin
  FFacturando:=True;
  CFDITimbrado:=False; //En caso que estuvies etimbrada no debe entrar a la confirmación
                                               //Mar 29/16
  dmFacturas := TdmFacturas.CreateWMostrar(nil,True,IDGenTipoDoc);  //Era false pero verificar  a ver si no da el aV
  dmFActuras.PIDCFDIGen:=IDCFDIGen;
  dmFActuras.adodsMaster.open; //por si no esta abierta   //Feb12/17
  CFDICreado:=  dmFActuras.adodsMaster.Locate('IDCFDI',IDCFDIGen,[]);  //SE ubica en el CFDI feb 8/
  CreadaAntes:=dmFActuras.adodsMasterIdCFDIEstatus.AsInteger= 2;
  if CFDICreado and (IDGenTipoDoc=1) and (not CreadaAntes) then           //Ajuste para que se mande crear si no esta Ene3/17 //Mod Mar 28/16
  begin
    if ConfirmarGeneracion(dmFActuras.adodsMaster, dmFActuras.ADODtStCFDIConceptos)  then //Ago 31/17
    begin
      dmFacturas.ActProcesaFactura.Execute;
      if dmFActuras.adodsMasterIdCFDIEstatus.AsInteger= 2 then //Se timbro en este momento //Ago 31/17
        CFDITimbrado:=True;
    end
    else
    begin
      ShowMessage('Canceló Timbrado de Factura');
    end;
  end;
  FreeAndNil(dmFacturas);
  FFacturando:=False;
end;

function TdmCuentasXCobrar.ConfirmarGeneracion(AMaster, AConceptos:TAdoDAtaSEt):Boolean; //Ago 31/17
begin
   FrmDatosFacturaPrev:=TFrmDatosFacturaPrev.Create(self);
   FrmDatosFacturaPrev.DSCFDIPrevio.DataSet:=AMASter;
   FrmDatosFacturaPrev.DSConceptosPrevios.DataSet:=AConceptos;
   FrmDAtosFActuraPrev.dsQryAuxiliar.DataSet:=ADOQryAuxiliar;
   FrmDAtosFActuraPrev.VADODtStSelMetPago:=ADODtStSelMetPago;
   FrmDatosFacturaPrev.ShowModal;
   Result:= FrmDatosFacturaPrev.modalresult=mrok;
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

function TdmCuentasXCobrar.GetFTotalConMora: Double;
begin //Jul 10/17 Calcular si tiene mora
 if not ADODTSTCXCMoratorios.eof then
    FTotalConMora:=adodsMasterSaldo.AsCurrency + ADODTSTCXCMoratoriosSaldo.AsCurrency
  else
    FTotalConMora:=adodsMasterSaldo.AsCurrency;

  Result := FTotalConMora;
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

  DataSet.FieldByName('IDMetodoPago').AsInteger:= SacaMetodo(adodsMasterIdPersona.AsInteger, Cuenta); //CXC   DataSet.FieldByName('IDMetodoPago').AsInteger:=5; //Otros  si no tiene
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
  TFrmConCuentasXCobrar(gGridForm).TotalConMora:=totalconMora;//

  TFrmConCuentasXCobrar(gGridForm).ActGenerarPrefactura := actGeneraPreFacturas; //Dic 7/16
  TFrmConCuentasXCobrar(gGridForm).ActActualizaMoratorios:= ActActualizaMoratorios;//Feb 8/17
  TFrmConCuentasXCobrar(gGridForm).ActGenerarCXCs:=ActGeneraCuentasXCobrar;//Feb 15/17
  TFrmConCuentasXCobrar(gGridForm).ActTotalesCXC:=ActTotalesCXC;//abr  17/17
  TFrmConCuentasXCobrar(gGridForm).DSAuxiliar.DataSet:=ADOQryAuxiliar; //Abr 11/17
  TFrmConCuentasXCobrar(gGridForm).ActListaCXCPendFact:=ActRepCxCEstatusFactPendiente; //Ago 3/17
end;

procedure TdmCuentasXCobrar.DSMasterDataChange(Sender: TObject; Field: TField);
begin
  inherited;          //Verificar que no interfiera
  if not ( gGridForm=nil)  then
    TFrmConCuentasXCobrar(gGridForm).TotalConMora:=totalconMora;
end;

(*  //  *)

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


