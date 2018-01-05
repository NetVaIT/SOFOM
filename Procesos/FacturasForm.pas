unit FacturasForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, _GridForm, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, Data.DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomPopupMenu, cxGridPopupMenu, cxClasses,
  Vcl.StdActns, Vcl.DBActns, System.Actions, Vcl.ActnList, Vcl.ImgList,
  cxGridLevel, cxGridCustomView, cxGrid, Vcl.ComCtrls, Vcl.ToolWin, Vcl.ExtCtrls,
  _StandarGridForm, dxSkinsdxBarPainter, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxSkinsdxRibbonPainter, dxPSCore, dxPScxCommon,
  dxBar, Vcl.StdCtrls, cxContainer, dxCore, cxDateUtils, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, Vcl.Buttons,Data.Win.ADODB;

type
  TfrmFacturasGrid = class(T_frmGrid)
    tvMasterIdCFDITipoDocumento: TcxGridDBColumn;
    tvMasterIdCFDIFormaPago: TcxGridDBColumn;
    tvMasterIdMetodoPago: TcxGridDBColumn;
    tvMasterIdMoneda: TcxGridDBColumn;
    tvMasterIdPersonaEmisor: TcxGridDBColumn;
    tvMasterIdPersonaReceptor: TcxGridDBColumn;
    tvMasterIdDocumentoCBB: TcxGridDBColumn;
    tvMasterIdDocumentoXML: TcxGridDBColumn;
    tvMasterIdDocumentoPDF: TcxGridDBColumn;
    tvMasterIdCFDIEstatus: TcxGridDBColumn;
    tvMasterIdCFDIFacturaGral: TcxGridDBColumn;
    tvMasterIdClienteDomicilio: TcxGridDBColumn;
    tvMasterCuentaCte: TcxGridDBColumn;
    tvMasterTipoCambio: TcxGridDBColumn;
    tvMasterTipoComp: TcxGridDBColumn;
    tvMasterSerie: TcxGridDBColumn;
    tvMasterFolio: TcxGridDBColumn;
    tvMasterFecha: TcxGridDBColumn;
    tvMasterLugarExpedicion: TcxGridDBColumn;
    tvMasterSello: TcxGridDBColumn;
    tvMasterCondPago: TcxGridDBColumn;
    tvMasterNoCertificado: TcxGridDBColumn;
    tvMasterCertificado: TcxGridDBColumn;
    tvMasterSubTotal: TcxGridDBColumn;
    tvMasterDescto: TcxGridDBColumn;
    tvMasterMotivoDescto: TcxGridDBColumn;
    tvMasterTotal: TcxGridDBColumn;
    tvMasterNumCtaPago: TcxGridDBColumn;
    tvMasterCadenaOriginal: TcxGridDBColumn;
    tvMasterTotalImpuestoRetenido: TcxGridDBColumn;
    tvMasterTotalImpuestoTrasladado: TcxGridDBColumn;
    tvMasterSaldoDocumento: TcxGridDBColumn;
    tvMasterFechaCancelacion: TcxGridDBColumn;
    tvMasterObservaciones: TcxGridDBColumn;
    tvMasterPorcentajeIVA: TcxGridDBColumn;
    tvMasterEmailCliente: TcxGridDBColumn;
    tvMasterUUID_TB: TcxGridDBColumn;
    tvMasterSelloCFD_TB: TcxGridDBColumn;
    tvMasterSelloSAT_TB: TcxGridDBColumn;
    tvMasterCertificadoSAT_TB: TcxGridDBColumn;
    tvMasterFechaTimbrado_TB: TcxGridDBColumn;
    tvMasterCliente: TcxGridDBColumn;
    tvMasterEstatus: TcxGridDBColumn;
    tvMasterMetodoPago: TcxGridDBColumn;
    dxbbTimbrarCFDI: TdxBarButton;
    dxbbImprimirCFDI: TdxBarButton;
    PnlBusqueda: TPanel;
    Button1: TButton;
    Panel1: TPanel;
    Label3: TLabel;
    EdtNombre: TEdit;
    PnlFechas: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    SpdBtnBuscar: TSpeedButton;
    cxDtEdtDesde: TcxDateEdit;
    cxDtEdtHasta: TcxDateEdit;
    ChckBxXFecha: TCheckBox;
    dxbbCancelarCFDI: TdxBarButton;
    ChckBxFactVivas: TCheckBox;
    tvMasterIdCFDI: TcxGridDBColumn;
    tvMasterMetPagoClaveSAT: TcxGridDBColumn;
    tvMasterClaveMoneda: TcxGridDBColumn;
    tvMasterTipoDocumento: TcxGridDBColumn;
    tvMasterDirCompleta: TcxGridDBColumn;
    tvMasterDireccionC: TcxGridDBColumn;
    tvMasterIdCuentaXCobrar: TcxGridDBColumn;
    tvMasterSaldoFactoraje: TcxGridDBColumn;
    DSQryAuxiliar: TDataSource;
    tvMasterVersion: TcxGridDBColumn;
    tvMasterIdCFDIFormaPago33: TcxGridDBColumn;
    tvMasterIdCFDIMetodoPago33: TcxGridDBColumn;
    tvMasterIDCFDITipoRelacion: TcxGridDBColumn;
    tvMasterIDCFDIUsoCFDI: TcxGridDBColumn;
    tvMasterFormaPago33: TcxGridDBColumn;
    tvMasterMetodoPago33: TcxGridDBColumn;
    tvMasterTipoRelacion: TcxGridDBColumn;
    tvMasterUsoCFDI: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
    procedure SpdBtnBuscarClick(Sender: TObject);
    procedure EdtNombreChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
//    procedure dxBrBtnCFDIClick(Sender: TObject);
  private
//    FActGenerarCFDI: TBasicAction;
//    FActImprimePDF: TBasicAction;
    ffiltroNombre: String;
    fOrden: String;
    ffiltroFecha: String;
//    FActCancelaCFDI: TBasicAction;
    FTipoDoc: Integer;
//    FADoSelMetPAgo: TAdoDAtaset;
//    FADoCFDIConceptos: TAdoDAtaset;
    FactCancelarCFDI: TBasicAction;
    FactImprimirCFDI: TBasicAction;
    FactTimbrarCFDI: TBasicAction;
//    procedure SetActGenerarCFDI(const Value: TBasicAction);
//    procedure SetActImprimePDF(const Value: TBasicAction);
    function GetFFiltroNombre: String;
    procedure PoneRangoFechas;
//    procedure SetActCancelaCFDI(const Value: TBasicAction);
//    procedure VerificaYCambiaEstatusCXC(IDCFDIACT, NvoEstatus, AntEstatus,
//      IdCXCAct: integer);
    procedure SetactCancelarCFDI(const Value: TBasicAction);
    procedure SetactImprimirCFDI(const Value: TBasicAction);
    procedure SetactTimbrarCFDI(const Value: TBasicAction);
//    function CambiarMetodoPago(var IDMetodoPago: Integer; var Cuenta,
//      CompConcepto: String): Boolean;
//    function SacaMetodo(IDCliente: Integer; var CtaPago: String): Integer;
//    function ConfirmarGeneracion(AMaster, AConceptos: TAdoDAtaSEt): Boolean; //Jul 20/17
    { Private declarations }
  public
    { Public declarations }
//      property ActGenerarCFDI : TBasicAction read FActGenerarCFDI write SetActGenerarCFDI;
//      property ActImprimePDF : TBasicAction read FActImprimePDF write SetActImprimePDF;
//      property ActCancelaCFDI : TBasicAction read FActCancelaCFDI write SetActCancelaCFDI;
    property actTimbrarCFDI: TBasicAction read FactTimbrarCFDI write SetactTimbrarCFDI;
    property actImprimirCFDI: TBasicAction read FactImprimirCFDI write SetactImprimirCFDI;
    property actCancelarCFDI: TBasicAction read FactCancelarCFDI write SetactCancelarCFDI;
    property FiltroFecha: String read ffiltroFecha write ffiltroFecha;
    property FiltroNombre:String read GetFFiltroNombre write ffiltroNombre;
    property TipoD:Integer read FTipoDoc write fTipoDoc; // Jun 26/17
//    property VADODtStSelMetPago :TAdoDAtaset read FADoSelMetPAgo  write FadoSElMetPago;  //Ago 31/17 para cargar la tabla
//    property VADODtStCFDIConceptos :TAdoDAtaset read FADoCFDIConceptos  write FADoCFDIConceptos;
  end;

//var
//  frmFacturasGrid: TfrmFacturasGrid;

implementation

{$R *.dfm}

uses FacturasDM, FacturasEdit, _ConectionDmod, FacturaConfirmacionForm,
  MetodoPagoFacturaEdt;

procedure TfrmFacturasGrid.DataSourceDataChange(Sender: TObject; Field: TField);
begin
  inherited;                                                                          //Jun 27/17
//  dxBrBtnCFDI.Enabled:=(datasource.DataSet.FieldByName('IDCFDIEstatus').AsInteger=1) and (datasource.DataSet.FieldByName('total').Value>0);  //Dic 7/16
//  dxBrBtnCancelaCFDI.Enabled:= (datasource.DataSet.FieldByName('IDCFDIEstatus').AsInteger=2) and   //MAr 23/17
//                               (datasource.DataSet.FieldByName('SaldoDocumento').Value=datasource.DataSet.FieldByName('Total').VAlue)and
//                               (datasource.DataSet.FieldByName('SaldoDocumento').Value=datasource.DataSet.FieldByName('SaldoFactoraje').VAlue);
end;

//procedure TfrmFacturasGrid.dxBrBtnCFDIClick(Sender: TObject);
//var idcxcAct, IdCFDIAct:Integer;
//   IdNvoMetPago:Integer; //D Ago 31/17
//    CtaNvaPago, ComplementoConc:String;
//     CambioMetPago , CFDITimbrado:Boolean; //Ago 31/17
//                         //HAgo 31/17
//begin
//  inherited;
//  idcxcAct:=-1;
//  if not(DAtasource.DataSet.FieldByName('IDCuentaXCobrar').isnull) then
//    idcxcAct :=DAtasource.DataSet.FieldByName('IDCuentaXCobrar').asinteger;
//  IdCFDIAct:=  DAtasource.DataSet.FieldByName('Idcfdi').asinteger; //Ya existe por ques desde la lista y no esta generada //Jul 20/17
//  //D Ago 31/17
//
//  //Ver si se muestra primero  y luego otra vez
//(*  IdNvoMetPago:=0;
//  CambioMetPago:=CambiarMetodoPago(IdNvoMetPago,CtaNvaPago,ComplementoConc );
//  if cambioMetPago then
//  begin
//    DAtasource.DataSet.Edit;
//    DAtasource.DataSet.Fieldbyname('IDMetodoPago').asInteger:= IdNvoMetPago ;
//
//    DAtasource.DataSet.Fieldbyname('NumCtaPago').AsString:=CtaNvaPago;
//    DAtasource.DataSet.Post;
//   // if True then
//    VADODtStCFDIConceptos.Open;    //Verificar que es te en el primero de la factura
//    VADODtStCFDIConceptos.first;
//    if ComplementoConc<>'' and (not VADODtStCFDIConceptos.eof) and (VADODtStCFDIConceptos.FieldByName('IDCFDI').ASinteger = DAtasource.DataSet.Fieldbyname('IDCFDI').asInteger) then
//    begin
//      VADODtStCFDIConceptos.Edit;
//      VADODtStCFDIConceptos.FieldByName('Descripcion').ASString:= VADODtStCFDIConceptos.FieldByName('Descripcion').asString+ ComplementoConc;
//      VADODtStCFDIConceptos.post;
//    end;
//
//
//  end;   se mando alconfirmacion *)
//   if ConfirmarGeneracion(TADoDAtaSEt(DAtasource.DataSet), VADODtStCFDIConceptos)  then //Ago 31/17
////    begin  //h Ago 31/17
//      ActGenerarCFDI.Execute;      //Equivale a ACtProcesaFActura
//
//  if idcxcAct<>-1 then
//     VerificaYCambiaEstatusCXC(IDCFDIACT, 1, 0, IdCXCAct);
//
//end;

//function TfrmFacturasGrid.CambiarMetodoPago(var IDMetodoPago:Integer; var Cuenta, CompConcepto:String):Boolean;
//begin  //Jul 10/17
//  Cuenta:=''; //Para que al menos este vacia
//  CompConcepto:=''; //ago 30/17
//  IDMetodoPago:=6;//DEshabilitado para que siempre ponga No identificado ---SacaMetodo(datasource.DataSet.FieldByName('IdPersonaReceptor').AsInteger, Cuenta); //CFDI
//  FrmMetodoPagoFactura:=TFrmMetodoPagoFactura.Create(self);
//  FrmMetodoPagoFactura.IdMetSeleccion:=IDMetodoPago;
//  FrmMetodoPagoFactura.CuentaSeleccion:= Cuenta;
//  FrmMetodoPagoFactura.DSMetodoPago.DataSet:=VADODtStSelMetPago;
//
//  FrmMetodoPagoFactura.ShowModal;
//  Result:= FrmMetodoPagoFactura.ModalResult=mrOk ;
//  if result then
//  begin
//    IDMetodoPago:= FrmMetodoPagoFactura.IdMetSeleccion;
//    Cuenta:= FrmMetodoPagoFactura.CuentaSeleccion;
//    CompConcepto:=FrmMetodoPagoFactura.ComplemConcepto; //Ago 30/17
//  end;
//
//  FrmMetodoPagoFactura.Free;
//
//
//end;

//function TfrmFacturasGrid.SacaMetodo (IDCliente:Integer; var CtaPago:String) :Integer;
//begin                             //Ajustado Ago 31/17      //Puede sobrar si se hace desde la ventana de confirmacion
//  CtaPago:='';
//  dsQryAuxiliar.dataset.Close;
//  TAdoQuery(dsQryAuxiliar.dataset).sql.clear;
//  TAdoQuery(dsQryAuxiliar.dataset).sql.Add('Select * from Personas where idPersona = '+ intToSTR(IDCliente));
//    dsQryAuxiliar.dataset.Open;
//  if (not   dsQryAuxiliar.dataset.eof)  and not ( dsQryAuxiliar.dataset.FieldByName('IdMetodoPago').isnull) then
//  begin
//    Result:=  dsQryAuxiliar.dataset.FieldByName('IdMetodoPago').asInteger;
//    if not   dsQryAuxiliar.dataset.FieldByName('NumCtaPagoCliente').isnull then
//       CtaPago:=   dsQryAuxiliar.dataset.FieldByName('NumCtaPagoCliente').asstring;
//  end
//  else
//      Result:=5; //Otros
//
//end;

//function TfrmFacturasGrid.ConfirmarGeneracion(AMaster, AConceptos:TAdoDAtaSEt):Boolean; //Ago 31/17
//begin
//   FrmDatosFacturaPrev:=TFrmDatosFacturaPrev.Create(self);
//   FrmDatosFacturaPrev.DSCFDIPrevio.DataSet:=AMASter;
//   FrmDatosFacturaPrev.DSConceptosPrevios.DataSet:=AConceptos;
//   FrmDAtosFActuraPrev.dsQryAuxiliar.DataSet:=dsQryAuxiliar.dataset;
//   FrmDAtosFActuraPrev.VADODtStSelMetPago:=VADODtStSelMetPago;
//   FrmDatosFacturaPrev.ShowModal;
//   Result:= FrmDatosFacturaPrev.modalresult=mrok;
//end;

//procedure TfrmFacturasGrid.VerificaYCambiaEstatusCXC(IDCFDIACT, NvoEstatus, AntEstatus, IdCXCAct:integer); //Se quito el creado por que siempre esta creado..
//begin                                //Jul 20/17
//  dsQryAuxiliar.dataset.Close;
//  TAdoQuery(dsQryAuxiliar.dataset).sql.clear;
//  TAdoQuery(dsQryAuxiliar.dataset).sql.Add('Select * from CFDI where IDCFDI='+intTostr(IDCFDIACT));
//  dsQryAuxiliar.dataset.Open;
//  if ( dsQryAuxiliar.dataset.FieldByName('IdCFDIEstatus').asInteger=2)      //vigente   and (adodsmaster.fieldbyname('IdcuentaXCobrarEstatus').AsInteger=0)
//      and ( dsQryAuxiliar.dataset.FieldByName('IdCuentaXCobrar').asInteger=IDCXCAct)  then
//  begin
//    dsQryAuxiliar.dataset.Close;
//    TAdoQuery(dsQryAuxiliar.dataset).sql.clear;
//    TAdoQuery(dsQryAuxiliar.dataset).sql.Add('UPDATE CuentasXCobrar SET IDCuentaXCobrarEstatus ='+intToStr(NvoEstatus)+
//     ' , IDCFDI ='+intTostr(IdCFDIAct)+' where  IDCuentaXCobrar= '+intToSTR(IdCXCAct)+' and IDCuentaXCobrarEstatus='+intToStr(antEstatus));
//
//   TAdoQuery(dsQryAuxiliar.dataset).ExecSQL;
//  end;
//end;

procedure TfrmFacturasGrid.EdtNombreChange(Sender: TObject);
begin
  inherited;
  if EdtNombre.Text<>'' then
  begin                           //Cambiar
    FfiltroNombre:=' inner join Personas P On P.IdPersona=C.IdPersonaReceptor and P.RazonSocial Like ''%'+edtNombre.Text+'%''';
  end
  else
    FfiltroNombre:='';
end;

procedure TfrmFacturasGrid.FormCreate(Sender: TObject);
var
  fechaAux:TDateTime;  // Dic 20/16   para mantener el filtro al regresar a la consulta
  a,m,d:Word;
begin
  inherited;
  gEditForm:= TfrmEdfactura.Create(Self);

 // TfrmEdfactura(gEditForm).PnlDetalleFact :=
            // may 26/17    _DmConection.LafechaActual   //SE dejo porque no puede timbrar en fechas anteriores
  decodeDate(date,a,m,d);   //Dic 20/16
  cxDtEdtDesde.date:= encodedate(a,m,1);
  m:=m+1;
  if m=13 then
  begin
    m:=1;
    a:=a+1;
  end;
  fechaAux:=encodedate(a,m,1);
  cxDtEdtHasta.date :=fechaAux-1;

 // SpdBtnBuscarClick(SpdBtnBuscar); //Mar 14/17
end;

procedure TfrmFacturasGrid.FormShow(Sender: TObject);
begin
  inherited;
  SpdBtnBuscarClick(SpdBtnBuscar); //Movido aca Jun 27/17
end;

function TfrmFacturasGrid.GetFFiltroNombre: String;
begin
  Result := ffiltroNombre;
end;

//procedure TfrmFacturasGrid.SetActCancelaCFDI(const Value: TBasicAction);
//begin                         //Mar 23/17
//  FActCancelaCFDI := Value;
//  dxBrBtnCancelaCFDI.Action:= Value;
//  dxBrBtnCancelaCFDI.ImageIndex:=19;
//end;
//
//procedure TfrmFacturasGrid.SetActGenerarCFDI(const Value: TBasicAction);
//begin           //Nov 29/16
//  FActGenerarCFDI := Value;
// // dxBrBtnCFDI.Action:=Value;    //PAra poder llamarlo y generar  el ajuste de estatus este es manual despues de un intento jul 20/17
// // dxBrBtnCFDI.ImageIndex:=17;
//end;
//
//procedure TfrmFacturasGrid.SetActImprimePDF(const Value: TBasicAction);
//begin
//  FActImprimePDF := Value;
//  dxBrBtnImprimePDF.Action:=Value;
//  dxBrBtnImprimePDF.ImageIndex:=18;
//end;

procedure TfrmFacturasGrid.SetactCancelarCFDI(const Value: TBasicAction);
begin
  FactCancelarCFDI := Value;
  dxbbCancelarCFDI.Action := Value;
end;

procedure TfrmFacturasGrid.SetactImprimirCFDI(const Value: TBasicAction);
begin
  FactImprimirCFDI := Value;
  dxbbImprimirCFDI.Action := Value;
end;

procedure TfrmFacturasGrid.SetactTimbrarCFDI(const Value: TBasicAction);
begin
  FactTimbrarCFDI := Value;
  dxbbTimbrarCFDI.Action := Value;
end;

procedure TfrmFacturasGrid.SpdBtnBuscarClick(Sender: TObject);
const TxtSQL='SELECT C.IdCFDI, C.IdCFDITipoDocumento, C.IdCFDIFormaPago, C.IdMetodoPago, C.IdMoneda, C.IdPersonaEmisor, C.IdPersonaReceptor, C.IdDocumentoCBB, C.IdDocumentoXML, C.IdDocumentoPDF, C.IdCFDIEstatus, ' +
'C.IdCFDIFacturaGral, C.IdClienteDomicilio, C.Version, C.CuentaCte, C.TipoCambio, C.TipoComp, C.Serie, C.Folio, C.Fecha, C.LugarExpedicion, C.Sello, C.CondPago, C.NoCertificado, C.Certificado, C.SubTotal, C.Descto, ' +
'C.MotivoDescto, C.Total, C.NumCtaPago, C.CadenaOriginal, C.TotalImpuestoRetenido, C.TotalImpuestoTrasladado, C.SaldoDocumento, C.FechaCancelacion, C.Observaciones, C.PorcentajeIVA, C.EmailCliente, C.UUID_TB, ' +
'C.SelloCFD_TB, C.SelloSAT_TB, C.CertificadoSAT_TB, C.FechaTimbrado_TB, C.IdCuentaXCobrar, C.SaldoFactoraje, C.IdCFDIFormaPago33, C.IdCFDIMetodoPago33, C.IDCFDITipoRelacion, C.IdCFDIUsoCFDI ' +
'FROM CFDI AS C';
var AuxFiltro, aux2 :String;     //Pendiente de programar   Dic 17/16    //Ene 12/17  era cxc
begin
  inherited;
  AuxFiltro:=EmptyStr;
  //Mar 23/17 desde
  Aux2:='';//Mar 23/17
  if ChckBxFactVivas.Checked then
     Aux2:='C.SaldoDocumento > 0';
  // HAsta Mar 23/17
  PoneRangoFechas;
  if FFiltroFecha<>EmptyStr then
  begin
    AuxFiltro:=' WHERE '+FFiltroFecha;
  end;
   //Mar 23/17 desde
  if aux2<>EmptyStr then //Tiene filtrosaldo
  begin
    if AuxFiltro<>EmptyStr then
      AuxFiltro :=AuxFiltro+ ' AND '+Aux2
    else
     AuxFiltro:= ' WHERE '+  Aux2;
  end;
  //Mar 23/17 hasta
 if AuxFiltro <>EmptyStr then  //Jun 26/17
   AuxFiltro:= AuxFiltro+ ' AND C.IdCFDITipoDocumento = '+ intTostr(TipoD)
 else
   AuxFiltro:= ' WHERE C.IdCFDITipoDocumento = '+ intTostr(TipoD);
 Tadodataset(datasource.DataSet).Close;
  Tadodataset(datasource.DataSet).CommandText:=TxtSQL+ffiltroNombre+ AuxFiltro;
  if ffiltroFecha <> EmptyStr then
  begin
    Tadodataset(datasource.DataSet).Parameters.ParamByName('FIni').Value:=cxDtEdtDesde.Date;
    Tadodataset(datasource.DataSet).Parameters.ParamByName('FFin').Value:=cxDtEdtHasta.Date+1;
  end;
  Tadodataset(datasource.DataSet).open;
end;

procedure TfrmFacturasGrid.PoneRangoFechas; //Dic 20/16
begin
  ffiltroFecha:=EmptyStr;
  if ChckBxXFecha.checked then
    ffiltroFecha:=' C.Fecha >:FIni and C.Fecha <:FFin';
end;

end.
