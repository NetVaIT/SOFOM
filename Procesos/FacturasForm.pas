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
    dxBrBtnCFDI: TdxBarButton;
    dxBrBtnImprimePDF: TdxBarButton;
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
    dxBrBtnCancelaCFDI: TdxBarButton;
    ChckBxFactVivas: TCheckBox;
    tvMasterIdCFDI: TcxGridDBColumn;
    tvMasterMetPagoClaveSAT: TcxGridDBColumn;
    tvMasterClaveMoneda: TcxGridDBColumn;
    tvMasterTipoDocumento: TcxGridDBColumn;
    tvMasterDirCompleta: TcxGridDBColumn;
    tvMasterDireccionC: TcxGridDBColumn;
    tvMasterIdCuentaXCobrar: TcxGridDBColumn;
    tvMasterSaldoFactoraje: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
    procedure SpdBtnBuscarClick(Sender: TObject);
    procedure EdtNombreChange(Sender: TObject);
  private
    FActGenerarCFDI: TBasicAction;
    FActImprimePDF: TBasicAction;
    ffiltroNombre: String;
    fOrden: String;
    ffiltroFecha: String;
    FActCancelaCFDI: TBasicAction;
    procedure SetActGenerarCFDI(const Value: TBasicAction);
    procedure SetActImprimePDF(const Value: TBasicAction);
    function GetFFiltroNombre: String;
    procedure PoneRangoFechas;
    procedure SetActCancelaCFDI(const Value: TBasicAction);
    { Private declarations }
  public
    { Public declarations }
      property ActGenerarCFDI : TBasicAction read FActGenerarCFDI write SetActGenerarCFDI;
      property ActImprimePDF : TBasicAction read FActImprimePDF write SetActImprimePDF;
      property ActCancelaCFDI : TBasicAction read FActCancelaCFDI write SetActCancelaCFDI;

      //Dic 20/16
     property FiltroFecha: String read ffiltroFecha write ffiltroFecha;
    // Property ElOrden :String read fOrden write fOrden;
     property FiltroNombre:String read GetFFiltroNombre write ffiltroNombre;
     //Dic 20/16 hasta aca

  end;

var
  frmFacturasGrid: TfrmFacturasGrid;

implementation

{$R *.dfm}

uses FacturasDM, FacturasEdit, _ConectionDmod;

procedure TfrmFacturasGrid.DataSourceDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  dxBrBtnCFDI.Enabled:=datasource.DataSet.FieldByName('IDCFDIEstatus').AsInteger=1;  //Dic 7/16
  dxBrBtnCancelaCFDI.Enabled:= (datasource.DataSet.FieldByName('IDCFDIEstatus').AsInteger=2) and   //MAr 23/17
                               (datasource.DataSet.FieldByName('SaldoDocumento').Value=datasource.DataSet.FieldByName('Total').VAlue)and
                               (datasource.DataSet.FieldByName('SaldoDocumento').Value=datasource.DataSet.FieldByName('SaldoFactoraje').VAlue);


end;

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

  SpdBtnBuscarClick(SpdBtnBuscar); //Mar 14/17
end;

function TfrmFacturasGrid.GetFFiltroNombre: String;
begin
  Result := ffiltroNombre;
end;

procedure TfrmFacturasGrid.SetActCancelaCFDI(const Value: TBasicAction);
begin                         //Mar 23/17
  FActCancelaCFDI := Value;
  dxBrBtnCancelaCFDI.Action:= Value;
  dxBrBtnCancelaCFDI.ImageIndex:=19;
end;

procedure TfrmFacturasGrid.SetActGenerarCFDI(const Value: TBasicAction);
begin           //Nov 29/16
  FActGenerarCFDI := Value;
  dxBrBtnCFDI.Action:=Value;
  dxBrBtnCFDI.ImageIndex:=17;
end;

procedure TfrmFacturasGrid.SetActImprimePDF(const Value: TBasicAction);
begin
  FActImprimePDF := Value;
  dxBrBtnImprimePDF.Action:=Value;
  dxBrBtnImprimePDF.ImageIndex:=18;
end;

procedure TfrmFacturasGrid.SpdBtnBuscarClick(Sender: TObject);
const TxtSQL='select  IdCFDI, IdCFDITipoDocumento, IdCFDIFormaPago, C.IdMetodoPago, C.IdMoneda, IdPersonaEmisor, IdPersonaReceptor,'+
'IdDocumentoCBB, IdDocumentoXML, IdDocumentoPDF, IdCFDIEstatus, IdCFDIFacturaGral, IdClienteDomicilio,'+
'CuentaCte, TipoCambio, TipoComp, Serie, Folio, Fecha, LugarExpedicion, Sello, CondPago, NoCertificado, Certificado,'+
'SubTotal, Descto, MotivoDescto, Total,  C.NumCtaPago,CadenaOriginal, TotalImpuestoRetenido, TotalImpuestoTrasladado,'+
'SaldoDocumento, FechaCancelacion, Observaciones,PorcentajeIVA, EmailCliente, UUID_TB,'+
'SelloCFD_TB, SelloSAT_TB,CertificadoSAT_TB,FechaTimbrado_TB, IdCuentaXCobrar, SaldoFactoraje from CFDI C '; //Mar 14/17 SF
var AuxFiltro, aux2 :String;     //Pendiente de programar   Dic 17/16    //Ene 12/17  era cxc
begin
  inherited;
  AuxFiltro:='';
  //Mar 23/17 desde
  Aux2:='';//Mar 23/17
  if ChckBxFactVivas.Checked then
     Aux2:='SaldoDocumento>0';
  // HAsta Mar 23/17


  PoneRangoFechas;

  if FFiltroFecha<>'' then
  begin
    AuxFiltro:=' where '+FFiltroFecha;

  end;
   //Mar 23/17 desde
  if aux2<>'' then //Tiene filtrosaldo
  begin
    if AuxFiltro<>'' then
      AuxFiltro :=AuxFiltro+ ' and '+Aux2
    else
     AuxFiltro:= ' where '+  Aux2;
  end;
  //Mar 23/17 hasta

 Tadodataset(datasource.DataSet).Close;
  Tadodataset(datasource.DataSet).CommandText:=TxtSQL+ffiltroNombre+ AuxFiltro;
//  ShowMessage(TxtSQL+ffiltroNombre+ffiltro+ AuxFiltro);
  if ffiltroFecha <>''then
  begin
    Tadodataset(datasource.DataSet).Parameters.ParamByName('FIni').Value:=cxDtEdtDesde.Date;
    Tadodataset(datasource.DataSet).Parameters.ParamByName('FFin').Value:=cxDtEdtHasta.Date+1;
  end;



  Tadodataset(datasource.DataSet).open;


end;

procedure TfrmFacturasGrid.PoneRangoFechas; //Dic 20/16
begin
  ffiltroFecha:='';
  if ChckBxXFecha.checked then
    ffiltroFecha:=' Fecha >:FIni and Fecha <:FFin';

end;


end.
