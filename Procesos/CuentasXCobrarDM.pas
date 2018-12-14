unit CuentasXCobrarDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB, Vcl.Dialogs, System.UITypes, Vcl.Forms,
  Winapi.ShellAPI, Winapi.Windows, dxmdaset;

resourcestring
  strAllowGenMoratorios = '¿Desea generar los moratorios de todos los contratos a la fecha: %s?';
  strAllowDelCuentaxCobrar = '¿Deseas eliminar la cuenta por cobrar %d?';

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
    adospUpdCuentasXCobrarTotales: TADOStoredProc;
    ActTotalesCXC: TAction;
    adodsAnexos: TADODataSet;
    adodsMasterAnexo: TStringField;
    ADOQryAux2: TADOQuery;
    ADODtStSelMetPago: TADODataSet;
    ADODtStSelMetPagoIdMetodoPago: TIntegerField;
    ADODtStSelMetPagoIdentificador: TStringField;
    ADODtStSelMetPagoDescripcion: TStringField;
    ADODtStSelMetPagoExigeCuenta: TIntegerField;
    ADODtStSelMetPagoClaveSAT2016: TStringField;
    adodsMasterDescripcion: TStringField;
    ActRepCxCEstatusFactPendiente: TAction;
    actEliminar: TAction;
    adospDelCuentasXCobrar: TADOStoredProc;
    actAgregarCXCDetalle: TAction;
    adospGenCuentasXCobrarDetalle: TADOStoredProc;
    adocUpdEstatusCXC: TADOCommand;
    adodsMasterDescuento: TFMTBCDField;
    ADOdsCXCDetalleDescuento: TFMTBCDField;
    adodsMasterManual: TBooleanField;
    adodsAnexosLkp: TADODataSet;
    procedure DataModuleCreate(Sender: TObject);
    procedure actGeneraPreFacturasExecute(Sender: TObject);
    procedure ADODtStPrefacturasCFDINewRecord(DataSet: TDataSet);
    procedure ADODtStCFDIConceptosPrefNewRecord(DataSet: TDataSet);
    procedure ADODtStCFDIConceptosPrefAfterPost(DataSet: TDataSet);
    procedure ADODtStPrefacturasCFDIBeforeOpen(DataSet: TDataSet);
    procedure adodsMasterAfterOpen(DataSet: TDataSet);
    procedure ActActualizaMoratoriosExecute(Sender: TObject);
    procedure ActGeneraCuentasXCobrarExecute(Sender: TObject);
    procedure DSMasterDataChange(Sender: TObject; Field: TField);
    procedure ActRepCxCEstatusFactPendienteExecute(Sender: TObject);
    procedure actEliminarExecute(Sender: TObject);
    procedure actEliminarUpdate(Sender: TObject);
    procedure adodsMasterNewRecord(DataSet: TDataSet);
    procedure ADOdsCXCDetalleAfterPost(DataSet: TDataSet);
    procedure ADOdsCXCDetalleAfterDelete(DataSet: TDataSet);
    procedure actAgregarCXCDetalleExecute(Sender: TObject);
    procedure adodsMasterIdPersonaChange(Sender: TField);
  private
    { Private declarations }
//    function SacaTipoComp(TipoDoc: Integer): String;
//    function SacaDireccion(IDCliente: Integer): Integer;
//    function SacaMetodo(IDCliente: Integer; var CtaPago:String): Integer;
    procedure RegistraBitacora(tipoRegistro: Integer);
    function GetFFechaActual: TDAteTime;
    function GetFTotalConMora: Double;
//    procedure verificaYCambiaEstatusCXC(IDCFDIACT, NvoEstatus, IdCXCAct:integer);
    function EliminarCuentaXCobrar(IdCuentaxCobrar: Integer): Boolean;
    function ActualizarTotales(IdCuentaxCobrar: Integer): Boolean;
    function AgregarDetalle(IdCuentaXCobrar, IdCuentaXCobrarTipo: Integer;
      Descripcion: string; Importe: Currency): Integer;
    procedure AbrirAnexosLkp;
  public
    { Public declarations }
    function CrearCFDI(IdCuentaXCobrar: Integer): Integer;
    property FFechaActual:TDAteTime read GetFFechaActual;
    property TotalConMora : Double read GetFTotalConMora;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses CuentasXCobrarForm, FacturasDM, _ConectionDmod, ConceptoOpcionCEdt, MetodoPagoFacturaEdt,
  PDFReporteEstatusCXC, FacturaConfirmacionForm, _Utils, ProcesosType,
  CuentasXCobrarDetalleAddEdit;

{$R *.dfm}

procedure TdmCuentasXCobrar.ActRepCxCEstatusFactPendienteExecute(
  Sender: TObject);
var
  DMListaCXCPendFactPDF: TDMListaCXCPendFactPDF;
  ArchiPDF: TFileName;
  Actual: string;
begin
  inherited;
  Actual:= FormatDateTime('ddmmmyyyyhhnnss', Now);
  ArchiPDF:='ListaCXCPendientesFacturas'+'_'+Actual+_ExtensionPDF;
  DMListaCXCPendFactPDF:= TDMListaCXCPendFactPDF.Create(Self);
  try
    DMListaCXCPendFactPDF.adodsReport.Open;
    DMListaCXCPendFactPDF.ppReport.ShowPrintDialog:= False;
    DMListaCXCPendFactPDF.ppReport.ShowCancelDialog:= False;
    DMListaCXCPendFactPDF.ppReport.PrinterSetup.DocumentName:= ArchiPDF;
    DMListaCXCPendFactPDF.ppReport.DeviceType:= 'PDF';
    DMListaCXCPendFactPDF.ppReport.TextFileName:= ArchiPDF;
    DMListaCXCPendFactPDF.ppReport.Print;
    DMListaCXCPendFactPDF.adodsReport.Close;
  finally
    DMListaCXCPendFactPDF.Free;
  end;
  if FileExists(ArchiPDF) then
    ShellExecute(Application.Handle, 'open', PChar(ArchiPDF), nil, nil, SW_SHOWNORMAL);
end;

procedure TdmCuentasXCobrar.AbrirAnexosLkp;
begin
  adodsAnexosLkp.Close;
  adodsAnexosLkp.Parameters.ParamByName('IdPersona').Value := adodsMasterIdPersona.Value;
  adodsAnexosLkp.Open;
end;

procedure TdmCuentasXCobrar.ActActualizaMoratoriosExecute(Sender: TObject);
var
  Fecha: TDateTime;  //Se cambio la fecha para que no tenga que ir a consultar nuevamente a la Base de datos Oct 16/17
begin
  FEcha:= FFechaActual;
  inherited;   //Confirmación Oct 4/17
  if MessageDlg(Format(strAllowGenMoratorios, [DateToStr(Fecha)]), mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    ADOStrprcActGralMoratorios.Parameters.ParamByName('@Fecha').Value:=FEcha;// may 26/17 date;  //Sin hora
    ADOStrprcActGralMoratorios.ExecProc;
    ShowMessage('Se ejecutó proceso de Moratorios al día: '+ dateToStr(FEcha)) ; // may 26/17 era date
    RegistraBitacora(1);//Moratorios Abr 12/17
    adodsMaster.Refresh;
  end
  else
    Showmessage('Proceso de generación de Moratorios Cancelado');
end;

procedure TdmCuentasXCobrar.actAgregarCXCDetalleExecute(Sender: TObject);
var
  frmCuentasXCobrarDetalleAddEdit: TfrmCuentasXCobrarDetalleAddEdit;
begin
  inherited;
  frmCuentasXCobrarDetalleAddEdit := TfrmCuentasXCobrarDetalleAddEdit.Create(Self);
  try
    frmCuentasXCobrarDetalleAddEdit.Descripcion:= EmptyStr;
    frmCuentasXCobrarDetalleAddEdit.Importe := 0;
    if frmCuentasXCobrarDetalleAddEdit.Execute then
    begin
      AgregarDetalle(adodsMasterIdCuentaXCobrar.Value, 102,
      frmCuentasXCobrarDetalleAddEdit.Descripcion, frmCuentasXCobrarDetalleAddEdit.Importe);
      RefreshADODS(ADOdsCXCDetalle, ADOdsCXCDetalleIdCuentaXCobrarDetalle);
      RefreshADODS(adodsMaster, adodsMasterIdCuentaXCobrar);
    end;
  finally
    frmCuentasXCobrarDetalleAddEdit.Free;
  end;
end;

procedure TdmCuentasXCobrar.actEliminarExecute(Sender: TObject);
begin
  inherited;
  if EliminarCuentaXCobrar(adodsMasterIdCuentaXCobrar.Value) then
    RefreshADODS(adodsMaster, adodsMasterIdCuentaXCobrar);
end;

procedure TdmCuentasXCobrar.actEliminarUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := (adodsMasterTotal.AsFloat = adodsMasterSaldo.Value) and
  ((adodsMasterIdCuentaXCobrarEstatus.Value = -1) or (adodsMasterIdCuentaXCobrarEstatus.Value = 0))
end;

procedure TdmCuentasXCobrar.ActGeneraCuentasXCobrarExecute(Sender: TObject);
var
  res:integer;     //Feb 15/17
  FechaAux:TDateTime;
begin
  inherited;
  REs:=0;                                                                                 // may 26/17 era date
  ShowMessage('Calcula Cuentas X Cobrar pendientes de generar al dia de hoy '+dateTimeToSTR(FFechaActual));
  ADOQryAuxiliar.Close;                      //Consulta para mandar crear CXC   probablememnte Verificar si PagoTotal es >1 Oct 24/17
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
    Res:=Res+1;
    ADOQryAuxiliar.Next;
  end;
  ADOQryAuxiliar.Close;
  adoDSMaster.Close;
  adoDSMaster.Open;
  if res=0  then
     Showmessage('No existen Amortizaciones en el rango de fechas para la creación de Cuentas X Cobrar pendientes')         //Ajustados los mensajes oct 4/17
  else
     Showmessage('Verificó '+intToStr(res)+' Amortizaciones con posibilidad de creación de Cuentas X Cobrar. Puede que se hayan generado nuevas cuentas');  //Puede que no de todas actualice
  RegistraBitacora(0);
end;

Procedure TdmCuentasXCobrar.RegistraBitacora(tipoRegistro:Integer); //Abr 11/17
var
   tipoTxt:String;
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
  ADOQryAuxiliar.ExecSQL;
  AdodsMaster.Refresh;
end;

procedure TdmCuentasXCobrar.actGeneraPreFacturasExecute(Sender: TObject);
var
  IdCuentaXCobrar: Integer;
  IdCFDI: Integer;
begin
  inherited;
  IdCuentaXCobrar := adodsMasterIdCuentaXCobrar.Value;
  IdCFDI := CrearCFDI(IdCuentaXCobrar);
  if IdCFDI <> 0  then
    RefreshADODS(adodsMaster, adodsMasterIdCuentaXCobrar);
end;

//procedure TdmCuentasXCobrar.actGeneraPreFacturasExecute(Sender: TObject);
//var CFDICreado, ParaCompra, CambioMetPago , CFDITimbrado:Boolean; //Ago 31/17
//    ConceptoOC, CtaNvaPago, ComplementoConc:String; //Ago 30/17
//    IdCXCDet, IdNvoMetPago:Integer;
//begin
//  inherited;
//  IdNvoMetPago:=0;                                         //Ago 30/17
//  CambioMetPago:=CambiarMetodoPago(IdNvoMetPago,CtaNvaPago,ComplementoConc );  //Jul 10/17
//
//   //Jun 28/17
//   ParaCompra:= EsOpcionCompra(adodsMasterIdCuentaXCobrar.asinteger,ConceptoOC,IdCXCDet ); //Verificar si es opcion de compra y pedir Concepto de Facturación
//  if (idcxcdet <>-1)  and ParaCompra then
//  begin
//    if Application.messagebox(pchar('La factura se generará con el siguiente Concepto: "'+ConceptoOC+'". ¿Continuar? '),'Confirmación', MB_YESNO)=id_No then
//      Exit;  //Verificar   //DEtener
//  end;
//  //HAsta aca jun 28/17
//
//  DetallesCXCParaFacturar.Open;
//
//  if DetallesCXCParaFacturar.eof then
//  begin
//    ShowMessage('No existen items para Facturar')  //No deberia estar habilitado en cualquiera
//  end
//  else
//  begin
//    //En principio individual de la actual si esta precargada.., luego filtrar las prcargadas  hacer ciclo
//    //Crear encabezado con datos de cliente
//    //Recorrer Detalles para crearconceptos según datos
//    ADODtStPrefacturasCFDI.open;
//    ADODtStCFDIConceptosPref.open;
//    ADODtStPrefacturasCFDI.Insert; //ver que va en el evento..
//    if CambioMetPago then
//    begin
//      ADODtStPrefacturasCFDIIdMetodoPago.AsInteger:=  IdNvoMetPago;
//      //if CtaNvaPago<>'' then
//        ADODtStPrefacturasCFDINumCtaPago.AsString:=CtaNvaPago;
//    end;
//    ADODtStPrefacturasCFDI.Post;
//    DetallesCXCParaFacturar.First;
//
//    while not DetallesCXCParaFacturar.Eof do
//    begin
//   // abr 7/17 DEshabilitado porque  van en cxc aparte  if not DetallesCXCParaFacturar.FieldByName('EsMoratorios').AsBoolean then    //FEb 2/17 Nuevo para que sólo facture lo que no es moratorio, porque el moratorio se debe facturarse cuando se pague
//     begin
//      ADODtStCFDIConceptosPref.Insert;
//
//      if ParaCompra and (IdCXCDet = DetallesCXCParaFacturar.fieldbyname('IdCuentaXCobrarDEtalle').asinteger)then //Jun 28/17
//        ADODtStCFDIConceptosPrefDescripcion.AsString:=  ConceptoOC
//      else
//      begin                                                                                                          //Ago 30/17
//        ADODtStCFDIConceptosPrefDescripcion.AsString:= DetallesCXCParaFacturar.fieldbyname('Descripcion').asString +' '+ ComplementoConc;
//        ComplementoConc:=''; //Solo el primer concepto lleva complemento Ago 30/17     //Es creacion.. no hay problema
//      end;
//
//      ADODtStCFDIConceptosPrefIdCuentaXCobrarDetalle.AsInteger:=DetallesCXCParaFacturar.fieldbyname('IDCuentaXCobrarDEtalle').AsInteger;  //Sin a Dic 7/16
//      ADODtStCFDIConceptosPrefValorUnitario.Value:= DetallesCXCParaFacturar.fieldbyname('Importe').asFloat;
//                                            //Value Feb 19/17
//      ADODtStCFDIConceptosPrefImporte.value:= DetallesCXCParaFacturar.fieldbyname('Importe').AsFloat;
//
//      ADODtStCFDIConceptosPref.Post;
//     end;
//      DetallesCXCParaFacturar.Next;
//    end;
//    adodsmaster.Edit;
//    adodsmaster.FieldByName('IdCuentaXCobrarEstatus').AsInteger:=0; //CAmbia a pendiente// NOMPRE ESTATUS PREFACTURADA  jul 19/17
//    adodsmaster.FieldByName('IdCFDI').AsInteger:= ADODtStPrefacturasCFDI.FieldByName('IDCFDI').AsInteger; //Feb 9/17
//    adodsmaster.post;            //ERa CFDInormal.. mar 30/17
//
//    //Facturar Abr 7/17
//                                                                                //Ago 31/17
//    Facturar(ADODtStPrefacturasCFDI.FieldByName('IDCFDI').AsInteger,CFDICreado, CFDITimbrado, 1); //Timbra factura
//
//    //DEntro del proceso de facturacion se muestraPDF //Abr 7/17
//    VerificaYCambiaEstatusCXC(ADODtStPrefacturasCFDI.FieldByName('IDCFDI').AsInteger,1,adodsmaster.FieldByName('IdCuentaXCobrar').ASinteger,CFDICreado); //A EstatusFActurada (1)
//    if CFDICreado  and not CFDITimbrado then
//       ShowMessage('Factura Creada Pendiente de Timbrar');
//  end;
//end;

function TdmCuentasXCobrar.ActualizarTotales(IdCuentaxCobrar: Integer): Boolean;
begin
  Result:= False;
  if IdCuentaxCobrar <> 0 then
  begin
    ScreenCursorProc(crSQLWait);
    try
      adospUpdCuentasXCobrarTotales.Parameters.ParamByName('@IdCuentaXCobrar').Value:= IdCuentaxCobrar;
      adospUpdCuentasXCobrarTotales.Parameters.ParamByName('@Temporal').Value:= 0;
      adospUpdCuentasXCobrarTotales.ExecProc;
    finally
      ScreenCursorProc(crDefault);
    end;
    Result:= True;
  end;
end;

procedure TdmCuentasXCobrar.ADOdsCXCDetalleAfterDelete(DataSet: TDataSet);
begin
  inherited;
  if ActualizarTotales(adodsMasterIdCuentaXCobrar.Value) then
    RefreshADODS(adodsMaster, adodsMasterIdCuentaXCobrar);
end;

procedure TdmCuentasXCobrar.ADOdsCXCDetalleAfterPost(DataSet: TDataSet);
begin
  inherited;
  if ActualizarTotales(adodsMasterIdCuentaXCobrar.Value) then
    RefreshADODS(adodsMaster, adodsMasterIdCuentaXCobrar);
end;

//procedure TdmCuentasXCobrar.Facturar(IDCFDIGen: Integer;var CFDICreado, CFDITimbrado:Boolean;IDGenTipoDoc:integer); //abr7/17 Copiado desde Pagos
//var
//   CreadaAntes:boolean;
//
//begin
////  FFacturando:=True;
//  CFDITimbrado:=False; //En caso que estuvies etimbrada no debe entrar a la confirmación
//                                               //Mar 29/16
//  dmFacturas := TdmFacturas.CreateWMostrar(nil,True,IDGenTipoDoc);  //Era false pero verificar  a ver si no da el aV
////  dmFActuras.PIDCFDIGen:=IDCFDIGen;
//  dmFActuras.adodsMaster.open; //por si no esta abierta   //Feb12/17
//  CFDICreado:=  dmFActuras.adodsMaster.Locate('IDCFDI',IDCFDIGen,[]);  //SE ubica en el CFDI feb 8/
//  CreadaAntes:=dmFActuras.adodsMasterIdCFDIEstatus.AsInteger= 2;
//  if CFDICreado and (IDGenTipoDoc=1) and (not CreadaAntes) then           //Ajuste para que se mande crear si no esta Ene3/17 //Mod Mar 28/16
//  begin
//    if ConfirmarGeneracion(dmFActuras.adodsMaster, dmFActuras.ADODtStCFDIConceptos)  then //Ago 31/17
//    begin
//      dmFacturas.ActProcesaFactura.Execute;
//      if dmFActuras.adodsMasterIdCFDIEstatus.AsInteger= 2 then //Se timbro en este momento //Ago 31/17
//        CFDITimbrado:=True;
//    end
//    else
//    begin
//      ShowMessage('Canceló Timbrado de Factura');
//    end;
//  end;
//  FreeAndNil(dmFacturas);
////  FFacturando:=False;
//end;
//
//function TdmCuentasXCobrar.ConfirmarGeneracion(AMaster, AConceptos:TAdoDAtaSEt):Boolean; //Ago 31/17
//begin
//   FrmDatosFacturaPrev:=TFrmDatosFacturaPrev.Create(self);
//   FrmDatosFacturaPrev.DSCFDIPrevio.DataSet:=AMASter;
//   FrmDatosFacturaPrev.DSConceptosPrevios.DataSet:=AConceptos;
//   FrmDAtosFActuraPrev.dsQryAuxiliar.DataSet:=ADOQryAuxiliar;
//   FrmDAtosFActuraPrev.VADODtStSelMetPago:=ADODtStSelMetPago;
//   FrmDatosFacturaPrev.ShowModal;
//   Result:= FrmDatosFacturaPrev.modalresult=mrok;
//end;

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
//var
//  FTotalConMora: Double;
begin //Jul 10/17 Calcular si tiene mora
  Result := 0;
  if adodsmaster.State in [dsInsert, dsEdit] then
  begin
    if not ADODTSTCXCMoratorios.eof then
      Result:=adodsMasterSaldo.AsCurrency + ADODTSTCXCMoratoriosSaldo.AsCurrency
    else
      Result:=adodsMasterSaldo.AsCurrency;
  end;
end;

procedure TdmCuentasXCobrar.adodsMasterAfterOpen(DataSet: TDataSet);
begin
  inherited;
  adodsCxcDetalle.Open;
  ADODTSTCXCMoratorios.Open;
end;

procedure TdmCuentasXCobrar.adodsMasterIdPersonaChange(Sender: TField);
begin
  inherited;
  adodsMasterIdAnexo.Clear;
  AbrirAnexosLkp;
end;

procedure TdmCuentasXCobrar.adodsMasterNewRecord(DataSet: TDataSet);
begin
  inherited;
  adodsMasterIdCuentaXCobrarEstatus.Value := -1;
  adodsMasterFecha.Value := _DmConection.LaFechaActual;//Date;
  adodsMasterFechaVencimiento.Value := adodsMasterFecha.Value;
//  adodsMasterDescripcion.Value :=
  adodsMasterImporte.Value := 0;
  adodsMasterImpuesto.Value := 0;
  adodsMasterInteres.Value := 0;
  adodsMasterTotal.Value := 0;
  adodsMasterSaldo.Value := 0;
  adodsMasterSaldoFactoraje.Value := 0;
  adodsMasterEsMoratorio.Value := False;
  adodsMasterManual.Value := True;
end;

procedure TdmCuentasXCobrar.ADODtStCFDIConceptosPrefAfterPost(
  DataSet: TDataSet);
//var                             //Copiado de Mas
//  idDocCFDI, idImp:Integer;
//  Subtotal,IVACal,TotalCal, IVAReg:Double; //Agregado ago 25/16
////  Existe:Boolean;
begin
  inherited;  //Mar 29/16     //Verificar que no intertfiera con el  proceso normal de facturacion
//  idImp:=-1;
//  IVAreg:=0; //
//  //Verificar si aca actualizar el item respectivo del detalle del documento
////  IDDocItem:=DataSet.FieldByName('IDCFDIConcepto').AsInteger;
//  idDocCFDI:=DataSet.FieldByName('IDCFDI').AsInteger;
//
//  //Verificar si tiene conceptos de IVA .. Poner y no calcular, pero si no  calcular..//Ene 16/17
//  ADOSumaIVA.Close;
//  ADOSumaIVA.Parameters.ParamByName('IdCuentaXCobrar').Value:=adodsMasterIdCuentaXCobrar.AsInteger; // ya que no tierne mas campos ino la suma ene 28/17
//  ADOSumaIVA.Open; // SE supone esta amarrado a la CuentaXCobrar
//  if not ADOSumaIVA.eof then // Pendiente de terminar
//  begin
//    IVAReg:= ADOSumaIVA.fieldbyname('IVAREG').asFloat;
//  end;
//  //Siempre actualizar
//  IVACal:=IVAReg;  //  feb 23/17
//
//  ADOQryAuxiliar.Close;
//  ADOQryAuxiliar.SQL.Clear;
//  ADOQryAuxiliar.SQL.Add('Select Sum(Importe) as ValorST From CFDIConceptos where IDCFDI='+intToStr(idDocCFDI));
//  ADOQryAuxiliar.open;
//
//  Subtotal:= ADOQryAuxiliar.FieldByName('ValorST').AsFloat;
//
//  TotalCal:= Subtotal+IVACal;   //feb 23/17
//  {  deshabilitado feb 23/17
//  IVACal:= subtotal*0.16;
//  TotalCal:= Subtotal+IVACal; //subtotal*1.16 ;    //Ago 25/16
//
//  //Ver si va a ir decto?? Nov 29/16
//  if iVACAl <> IVAReg then
//  begin
//    if IVAREG>0 then
//    begin
//      TotalCal:=Subtotal+ IVAReg;
//      IVACal:=IVAReg;
//    end
//    else
//      Showmessage('El total de IVA registrado es 0 o negativo' + floatToStr(IVAREG));
//    Showmessage('El total de IVA calculado no coincide con el registrado !') ;
//  end;   }
//
//  //Se usa siempre en registrado
//
//  ADOQryAuxiliar.Close;                                                                                       //   subtotal*0.16
//  ADOQryAuxiliar.SQL.Clear;                                                                                                                  //  subtotal*1.16                      //  subtotal*1.16
//  ADOQryAuxiliar.SQL.Add('UPDATE CFDI SET Subtotal='+FloattoSTR(subtotal)+' , TotalImpuestoTrasladado='+FloatToSTR(IVACal)+', Total='+FloatToSTR(TotalCal) +', SaldoDocumento='+FloatToSTR(TotalCal)
//                         +', SaldoFactoraje ='+FloatToSTR(TotalCal)+' where IDCFDI ='+IntToStr(idDocCFDI));
//                           //FEb 9/17 saldoFactoraje
//  ADOQryAuxiliar.ExecSQL;
//
//  //Acualizar impuestos si no tiene Impuestos //Mar 30/16
//  //Si existe actualizar si no existe crear en tabla de impuestos          //Ago 31/16
//
//  ADOQryAuxiliar.Close;
//  ADOQryAuxiliar.SQL.Clear;
//  ADOQryAuxiliar.SQL.Add('SElect * from  CFDIImpuestos where IDCFDI ='+IntToStr(idDocCFDI)
//                         +' and TipoImp=''Trasladado'' and Impuesto=''IVA''');
//  ADOQryAuxiliar.Open;
//
//  if not ADOQryAuxiliar.eof then//No existe
//    idImp:=ADOQryAuxiliar.FieldByName('IDCFDIImpuesto').AsInteger;
//    // Mar 31/16
//  if idImp=-1 then //No existe
//  begin
//    ADOQryAuxiliar.Close;
//    ADOQryAuxiliar.SQL.Clear;
//    ADOQryAuxiliar.SQL.Add('Insert into CFDIImpuestos (IDCFDI, TipoIMP,Impuesto, Tasa, Importe) VAlues('
//                          +IntToStr(idDocCFDI) +', ''Trasladado'', ''IVA'', 16, '+FloatToSTR(IVACal)+')');
//    ADOQryAuxiliar.ExecSQL;                                                                 //  subtotal*0.16 Ago 30 /16 ajustado
//  end
//  else
//  begin
//    ADOQryAuxiliar.Close;
//    ADOQryAuxiliar.SQL.Clear;
//    ADOQryAuxiliar.SQL.Add('UPDATE CFDIImpuestos SET Importe='+FloatToSTR(IVACal)   //subtotal*0.16
//                            +' where IDCFDIImpuesto ='+IntToStr(idImp));
//    ADOQryAuxiliar.ExecSQL;
//  end;  //Hasta aca
//  ADODtStPrefacturasCFDI.Refresh;
end;

procedure TdmCuentasXCobrar.ADODtStCFDIConceptosPrefNewRecord(
  DataSet: TDataSet);
begin                     //Copiado desde FActuras //Verificar idCFDI de relacion
  inherited;
//  dataset.FieldByName('IDUnidadMedida').AsInteger:=2; //NA
//  dataset.FieldByName('Unidad').AsString:='NA';
//  dataset.FieldByName('Cantidad').AsFloat:=1;
end;

procedure TdmCuentasXCobrar.ADODtStPrefacturasCFDIBeforeOpen(DataSet: TDataSet);
begin
  inherited;
//  ADODtStPersonaEmisor.open;
end;

procedure TdmCuentasXCobrar.ADODtStPrefacturasCFDINewRecord(DataSet: TDataSet);
//var cuenta:String;
//    idPersonaDomi:Integer; //Ene 29/17
begin
  inherited;
// try
//  DataSet.FieldByName('IDCFDIEstatus').AsInteger:=1; //Prefactura
//                                                       //Modificado Mar 29/16
//  DataSet.FieldByName('IDCFDITipoDocumento').AsInteger:=1; //Factura    //ADODtSTOrdenSalida.fieldByname('IdGeneraCFDITipoDoc').ASInteger;//Mod. Mar 28/16
//                                            //Verificar que se tenga Mar 31/16
//  DataSet.FieldByName('TipoComp').AsString:=SacaTipoComp(1); //DataSet.FieldByName('TipoComprobante').AsString;//'ingreso'; //columna TipoComprobante de Tabla CFDItipoDocumento
//  //Verificar si serie yFolio se colocan aca o se colocan justo antes de generar el CFDI
//  DataSet.FieldByName('Folio').AsInteger:=0; //Sin asignar aun
//  DataSet.FieldByName('Fecha').AsDateTime:=now; //Prefactura Se supondría que se van a generar inmediatamente pero hay que verificar(por si se requiere cambio de fecha antes de generar)
//  DataSet.FieldByName('LugarExpedicion').AsString:=ADODtStPersonaEmisorMunicipio.AsString +', '+ADODtStPersonaEmisorEstado.AsString;//'Zapopan, Jalisco' ; //Verificar si se saca de  la direccion del emisor?
//
//// DataSet.FieldByName('Serie').AsString:=
//  DataSet.FieldByName('IdCFDIFormaPago').AsInteger :=1;
//  DataSet.FieldByName('IDMoneda').AsInteger:=106;
//  DataSet.fieldbyname('TipoCambio').AsInteger:=1; //Jun 27/16
//
//
//  DataSet.FieldByName('IdPersonaEmisor').AsInteger:=ADODtStPersonaEmisoridpersona.AsInteger; //Debe estar abierta y debe tener una direccion fiscal
//  //DE CuentasXCobrar
//  DataSet.FieldByName('IdPersonaReceptor').AsInteger:=  adodsMasterIdPersona.AsInteger;
//  idPersonaDomi:= SacaDireccion(adodsMasterIdPersona.AsInteger);//Ene 29/17
//  if IDpersonaDomi<>-1 then
//     DataSet.FieldByName('IdClienteDomicilio').AsInteger:= IDpersonaDomi;// SacaDireccion(adodsMasterIdPersona.AsInteger); // Ver si no tiene que pasa.... Dic 6/16   (Truena no lo deja crear)
//
//  DataSet.FieldByName('IDMetodoPago').AsInteger:= SacaMetodo(adodsMasterIdPersona.AsInteger, Cuenta); //CXC   DataSet.FieldByName('IDMetodoPago').AsInteger:=5; //Otros  si no tiene
//  if Cuenta <>'' then
//     DataSet.FieldByName('NumCtaPago').asString:= cuenta;
//  DataSet.FieldByName('IdCuentaXCobrar').AsInteger:=  adodsMasterIdCuentaXCobrar.AsInteger;  //Ajustado Ene 12/17 idcxc
//  Except
//    Raise;
//  end;
end;

function TdmCuentasXCobrar.AgregarDetalle(IdCuentaXCobrar,
  IdCuentaXCobrarTipo: Integer; Descripcion: string;
  Importe: Currency): Integer;
begin
  ScreenCursorProc(crSQLWait);
  try
    adospGenCuentasXCobrarDetalle.Parameters.ParamByName('@IdCuentaxCobrar').Value:= IdCuentaxCobrar;
    adospGenCuentasXCobrarDetalle.Parameters.ParamByName('@IdCuentaXCobrarTipoBase').Value:= IdCuentaXCobrarTipo;
    adospGenCuentasXCobrarDetalle.Parameters.ParamByName('@DescripcionBase').Value:= Descripcion;
    adospGenCuentasXCobrarDetalle.Parameters.ParamByName('@ImporteBase').Value:= Importe;
    adospGenCuentasXCobrarDetalle.ExecProc;
  finally
    ScreenCursorProc(crDefault);
  end;
end;

function TdmCuentasXCobrar.CrearCFDI(IdCuentaXCobrar: Integer): Integer;
var
  dmFacturas: TdmFacturas;
  IdCFDI: Integer;
  CFDITimbrado: Boolean;

  procedure verificaYCambiaEstatusCXC(IDCFDIACT, NvoEstatus, IdCXCAct:integer);
  const
    _SQL = 'SELECT CFDI.IdCFDIEstatus, CFDI.IdCuentaXCobrar, CuentasXCobrar.IdCuentaXCobrarEstatus '+
    'FROM CFDI INNER JOIN CuentasXCobrar ON CFDI.IdCuentaXCobrar = CuentasXCobrar.IdCuentaXCobrar WHERE CFDI.IdCFDI = %d';
  begin                                //Jul 19/17
    ADOQryAuxiliar.Close;
    ADOQryAuxiliar.SQL.Clear;
    ADOQryAuxiliar.SQL.Add(Format(_SQL, [IDCFDIACT]));
    ADOQryAuxiliar.Open;
    if (ADOQryAuxiliar.FieldByName('IdCFDIEstatus').asInteger=2)      //vigente
        and (ADOQryAuxiliar.FieldByName('IdCuentaXCobrar').asInteger=IDCXCAct)  and (ADOQryAuxiliar.FieldByName('IdCuentaXCobrarEstatus').AsInteger=0) then
    begin
      adocUpdEstatusCXC.Parameters.ParamByName('IdCuentaXCobrarEstatus').Value := NvoEstatus;
      adocUpdEstatusCXC.Parameters.ParamByName('IdCuentaXCobrar').Value := IdCXCAct;
      adocUpdEstatusCXC.Execute;
    end;
  end;
//  procedure verificaYCambiaEstatusCXC(IDCFDIACT, NvoEstatus, IdCXCAct:integer);
//  begin                                //Jul 19/17
//    ADOQryAuxiliar.Close;
//    ADOQryAuxiliar.SQL.Clear;
//    ADOQryAuxiliar.SQL.Add('Select * from CFDI where IDCFDI='+intTostr(IDCFDIACT));
//    ADOQryAuxiliar.Open;
//    if (ADOQryAuxiliar.FieldByName('IdCFDIEstatus').asInteger=2)      //vigente
//        and (ADOQryAuxiliar.FieldByName('IdCuentaXCobrar').asInteger=IDCXCAct)  and (adodsmaster.fieldbyname('IdcuentaXCobrarEstatus').AsInteger=0) then
//    begin
//      adodsmaster.Edit;
//      adodsmaster.FieldByName('IdCuentaXCobrarEstatus').AsInteger:=NvoEstatus;// FACTURADA  jul 19/17
//      adodsmaster.post;
//    end;
//  end;

begin
  // Cabiar metodo de pago
  // Opcion de compra
  dmFacturas := TdmFacturas.Create(Self);
  try
    IdCFDI := dmFacturas.CrearPrefactura(IdCuentaXCobrar);
    dmFacturas.SetCFDI(IdCFDI);
    CFDITimbrado := dmFacturas.Timbrar(IdCFDI);
  finally
    dmFacturas.Free;
  end;
  VerificaYCambiaEstatusCXC(IdCFDI,1,IdCuentaXCobrar);
  if not CFDITimbrado then
    ShowMessage('Factura Creada Pendiente de Timbrar')
  else
    Showmessage('Factura Timbrada ');
  Result := IdCFDI;
end;

procedure TdmCuentasXCobrar.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmConCuentasXCobrar.Create(Self);     //Dic 5/16
  gGridForm.DataSet:= adodsMaster;
  TFrmConCuentasXCobrar(gGridForm).ActGenerarPrefactura := actGeneraPreFacturas; //Dic 7/16
  TFrmConCuentasXCobrar(gGridForm).ActActualizaMoratorios:= ActActualizaMoratorios;//Feb 8/17
  TFrmConCuentasXCobrar(gGridForm).ActGenerarCXCs:=ActGeneraCuentasXCobrar;//Feb 15/17
  TFrmConCuentasXCobrar(gGridForm).DSAuxiliar.DataSet:=ADOQryAuxiliar; //Abr 11/17
  TFrmConCuentasXCobrar(gGridForm).ActListaCXCPendFact:=ActRepCxCEstatusFactPendiente; //Ago 3/17
  TFrmConCuentasXCobrar(gGridForm).actEliminar := actEliminar;
  TFrmConCuentasXCobrar(gGridForm).DataSetAnexos := adodsAnexosLkp;
  TFrmConCuentasXCobrar(gGridForm).TotalConMora:=totalconMora;
  TFrmConCuentasXCobrar(gGridForm).actAgregarCXCDetalle := actAgregarCXCDetalle;
end;

procedure TdmCuentasXCobrar.DSMasterDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if adodsMaster.State in [dsInsert, dsEdit] then
    AbrirAnexosLkp;
  if not ( gGridForm=nil)  then
    TFrmConCuentasXCobrar(gGridForm).TotalConMora:=totalconMora;
end;

function TdmCuentasXCobrar.EliminarCuentaXCobrar(
  IdCuentaxCobrar: Integer): Boolean;
begin
  Result:= False;
  if IdCuentaxCobrar <> 0 then
  begin
    if MessageDlg(Format(strAllowDelCuentaxCobrar, [IdCuentaxCobrar]), mtConfirmation, mbYesNo, 0) = mrYes then
    begin
      ScreenCursorProc(crSQLWait);
      try
        adospDelCuentasXCobrar.Parameters.ParamByName('@IdCuentaxCobrar').Value:= IdCuentaxCobrar;
        adospDelCuentasXCobrar.Parameters.ParamByName('@IdUsuario').Value:= _dmConection.IdUsuario;
        adospDelCuentasXCobrar.ExecProc;
      finally
        ScreenCursorProc(crDefault);
      end;
      Result:= True;
    end;
  end;
end;

//function TdmCuentasXCobrar.SacaTipoComp (TipoDoc:Integer) :String;
//begin
//  ADOdsAuxiliar.Close;
//  ADOdsAuxiliar.CommandText:='Select * from CFDITipoDocumento where idCFDITipoDocumento = '+ intToSTR(TipoDoc);
//  ADOdsAuxiliar.Open;
//  if not ADOdsAuxiliar.eof then
//    Result:=ADOdsAuxiliar.FieldByName('TipoComprobante').AsString;
//end;

//function TdmCuentasXCobrar.SacaDireccion (IDCliente:Integer) :Integer;
//begin    //Verificar que pasa en caso que no tenga          //Dic 6/16
//  Result:=-1;
//  ADODtStDireccionesCliente.Close;
//  ADODtStDireccionesCliente.Parameters.ParamByName('idPersona').Value:=   IDCliente;
//  ADODtStDireccionesCliente.Open;
//  if not ADODtStDireccionesCliente.eof then
//  begin
//    REsult:= ADODtStDireccionesCliente.FieldByName('IDPersonaDomicilio').AsInteger;
//  end;
//end;

//function TdmCuentasXCobrar.SacaMetodo (IDCliente:Integer; var CtaPago:String) :Integer;
//begin                                         //Dic 6/16
//  CtaPago:='';
//  ADOdsAuxiliar.Close;
//  ADOdsAuxiliar.CommandText:='Select * from Personas where idPersona = '+ intToSTR(IDCliente);
//  ADOdsAuxiliar.Open;
//  if (not ADOdsAuxiliar.eof)  and not (ADOdsAuxiliar.FieldByName('IdMetodoPago').isnull) then
//  begin
//    Result:=ADOdsAuxiliar.FieldByName('IdMetodoPago').asInteger;
//    if not ADOdsAuxiliar.FieldByName('NumCtaPagoCliente').isnull then
//       CtaPago:= ADOdsAuxiliar.FieldByName('NumCtaPagoCliente').asstring;
//  end
//  else
//    Result:=5; //Otros
//end;

end.


