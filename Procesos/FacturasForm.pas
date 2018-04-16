unit FacturasForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, _GridForm, cxGraphics, System.DateUtils,
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
  cxDropDownEdit, cxCalendar, Vcl.Buttons,Data.Win.ADODB, cxCheckBox,
  cxBarEditItem;

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
    dxbbCancelarCFDI: TdxBarButton;
    tvMasterIdCFDI: TcxGridDBColumn;
    tvMasterMetPagoClaveSAT: TcxGridDBColumn;
    tvMasterClaveMoneda: TcxGridDBColumn;
    tvMasterTipoDocumento: TcxGridDBColumn;
    tvMasterDirCompleta: TcxGridDBColumn;
    tvMasterDireccionC: TcxGridDBColumn;
    tvMasterIdCuentaXCobrar: TcxGridDBColumn;
    tvMasterSaldoFactoraje: TcxGridDBColumn;
    tvMasterVersion: TcxGridDBColumn;
    tvMasterIdCFDIFormaPago33: TcxGridDBColumn;
    tvMasterIdCFDIMetodoPago33: TcxGridDBColumn;
    tvMasterIDCFDITipoRelacion: TcxGridDBColumn;
    tvMasterIDCFDIUsoCFDI: TcxGridDBColumn;
    tvMasterFormaPago33: TcxGridDBColumn;
    tvMasterMetodoPago33: TcxGridDBColumn;
    tvMasterTipoRelacion: TcxGridDBColumn;
    tvMasterUsoCFDI: TcxGridDBColumn;
    edtCliente: TcxBarEditItem;
    edtDesde: TcxBarEditItem;
    edtHasta: TcxBarEditItem;
    edtUsarFecha: TcxBarEditItem;
    edtConSaldo: TcxBarEditItem;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtUsarFechaChange(Sender: TObject);
    procedure edtConSaldoChange(Sender: TObject);
  private
    { Private declarations }
    ffiltroNombre: String;
    fOrden: String;
    ffiltroFecha: String;
    FTipoDoc: Integer;
    FactCancelarCFDI: TBasicAction;
    FactImprimirCFDI: TBasicAction;
    FactTimbrarCFDI: TBasicAction;
    FactRelacionarCFDI: TBasicAction;
    function GetFFiltroNombre: String;
    procedure SetactCancelarCFDI(const Value: TBasicAction);
    procedure SetactImprimirCFDI(const Value: TBasicAction);
    procedure SetactTimbrarCFDI(const Value: TBasicAction);
    function GetCliente: string;
    function GetConSaldo: Boolean;
    function GetDesde: TDateTime;
    function GetHasta: TDateTime;
    function GetUsarFecha: Boolean;
    procedure SetCliente(const Value: string);
    procedure SetConSaldo(const Value: Boolean);
    procedure SetDesde(const Value: TDateTime);
    procedure SetHasta(const Value: TDateTime);
    procedure SetUsarFecha(const Value: Boolean);
  public
    { Public declarations }
    property actTimbrarCFDI: TBasicAction read FactTimbrarCFDI write SetactTimbrarCFDI;
    property actImprimirCFDI: TBasicAction read FactImprimirCFDI write SetactImprimirCFDI;
    property actCancelarCFDI: TBasicAction read FactCancelarCFDI write SetactCancelarCFDI;
    property actRelacionarCFDI: TBasicAction read FactRelacionarCFDI write FactRelacionarCFDI;
    property FiltroFecha: String read ffiltroFecha write ffiltroFecha;
    property FiltroNombre:String read GetFFiltroNombre write ffiltroNombre;
    property Cliente: string read GetCliente write SetCliente;
    property Desde: TDateTime read GetDesde write SetDesde;
    property Hasta: TDateTime read GetHasta write SetHasta;
    property UsarFecha: Boolean read GetUsarFecha write SetUsarFecha;
    property ConSaldo: Boolean read GetConSaldo write SetConSaldo;
  end;

implementation

{$R *.dfm}

uses FacturasDM, FacturasEdit, _ConectionDmod, FacturaConfirmacionForm,
  MetodoPagoFacturaEdt;

procedure TfrmFacturasGrid.edtConSaldoChange(Sender: TObject);
begin
  inherited;
  actSearch.Execute;
end;

procedure TfrmFacturasGrid.edtUsarFechaChange(Sender: TObject);
begin
  inherited;
  actSearch.Execute;
end;

procedure TfrmFacturasGrid.FormCreate(Sender: TObject);
var
  Year, Month, Day: Word;
begin
  inherited;
  gEditForm:= TfrmEdfactura.Create(Self);
  DecodeDate(Date, year, month, day);
  Desde := EncodeDate(Year, Month, 1);
  Hasta := EncodeDate(Year, Month, DaysInMonth(Date));
  Cliente := EmptyStr;
end;

procedure TfrmFacturasGrid.FormShow(Sender: TObject);
begin
  inherited;
  TfrmEdfactura(gEditForm).actRelacionarCFDI := actRelacionarCFDI;
end;

function TfrmFacturasGrid.GetCliente: string;
begin
  Result:= edtCliente.EditValue;
end;

function TfrmFacturasGrid.GetConSaldo: Boolean;
begin
  Result := edtConSaldo.EditValue;
end;

function TfrmFacturasGrid.GetDesde: TDateTime;
begin
  Result := edtDesde.EditValue;
end;

function TfrmFacturasGrid.GetFFiltroNombre: String;
begin
  Result := ffiltroNombre;
end;

function TfrmFacturasGrid.GetHasta: TDateTime;
begin
  Result := edtHasta.EditValue;
end;

function TfrmFacturasGrid.GetUsarFecha: Boolean;
begin
  Result := edtUsarFecha.EditValue;
end;

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

procedure TfrmFacturasGrid.SetCliente(const Value: string);
begin
  edtCliente.EditValue := Value;
end;

procedure TfrmFacturasGrid.SetConSaldo(const Value: Boolean);
begin
  edtConSaldo.EditValue := Value;
end;

procedure TfrmFacturasGrid.SetDesde(const Value: TDateTime);
begin
  edtDesde.EditValue := Value;
end;

procedure TfrmFacturasGrid.SetHasta(const Value: TDateTime);
begin
  edtHasta.EditValue := Value;
end;

procedure TfrmFacturasGrid.SetUsarFecha(const Value: Boolean);
begin
  edtUsarFecha.EditValue := Value;
end;

end.
