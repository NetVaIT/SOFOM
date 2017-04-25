unit CotizacionesDetalleForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, _GridForm, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  dxSkinsdxBarPainter, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxSkinsdxRibbonPainter, dxPSCore, dxPScxCommon, dxBar, Vcl.ImgList,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxClasses, Vcl.StdActns, Vcl.DBActns,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  Vcl.ExtCtrls;

type
  TfrmCotizacionesDetalle = class(T_frmGrid)
    tvMasterIdCotizacionDetalle: TcxGridDBColumn;
    tvMasterIdCotizacion: TcxGridDBColumn;
    tvMasterIdMoneda: TcxGridDBColumn;
    tvMasterIdCotizacionDetalleEstatus: TcxGridDBColumn;
    tvMasterIdUsuario: TcxGridDBColumn;
    tvMasterEstatus: TcxGridDBColumn;
    tvMasterPrecioMoneda: TcxGridDBColumn;
    tvMasterMoneda: TcxGridDBColumn;
    tvMasterTipoCambio: TcxGridDBColumn;
    tvMasterPrecio: TcxGridDBColumn;
    tvMasterImpuesto: TcxGridDBColumn;
    tvMasterPrecioTotal: TcxGridDBColumn;
    tvMasterEnganchePorcentaje: TcxGridDBColumn;
    tvMasterEnganche: TcxGridDBColumn;
    tvMasterComisionPorcentaje: TcxGridDBColumn;
    tvMasterComision: TcxGridDBColumn;
    tvMasterComisionImpuesto: TcxGridDBColumn;
    tvMasterGastos: TcxGridDBColumn;
    tvMasterGastosImpuestos: TcxGridDBColumn;
    tvMasterDespositosNumero: TcxGridDBColumn;
    tvMasterDepositos: TcxGridDBColumn;
    tvMasterPagoIncial: TcxGridDBColumn;
    tvMasterOpcionCompraPorcentaje: TcxGridDBColumn;
    tvMasterOpcionCompra: TcxGridDBColumn;
    tvMasterValorResidualPorcentaje: TcxGridDBColumn;
    tvMasterValorResidual: TcxGridDBColumn;
    tvMasterMontoFinanciar: TcxGridDBColumn;
    tvMasterTasaAnual: TcxGridDBColumn;
    tvMasterPlazo: TcxGridDBColumn;
    tvMasterPagoMensual: TcxGridDBColumn;
    tvMasterImpactoISR: TcxGridDBColumn;
    tvMasterRegistro: TcxGridDBColumn;
    tvMasterUsuario: TcxGridDBColumn;
    dxbbAmortizaciones: TdxBarButton;
    tvMasterFechaVencimiento: TcxGridDBColumn;
    tvMasterPorcentajeDepreciacion: TcxGridDBColumn;
    tvMasterPorcentajeISR: TcxGridDBColumn;
    tvMasterPorcentajeKE: TcxGridDBColumn;
    tvMasterTIR: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DatasetEditExecute(Sender: TObject);
    procedure DatasetDeleteExecute(Sender: TObject);
  private
    { Private declarations }
    FactGetTipoCambio: TBasicAction;
    FactAmortizaciones: TBasicAction;
    FactGetImpactoISR: TBasicAction;
    procedure SetactAmortizaciones(const Value: TBasicAction);
  public
    { Public declarations }
    property actAmortizaciones: TBasicAction read FactAmortizaciones write SetactAmortizaciones;
//    property actCambiarEstatus: TBasicAction read FactCambiarEstatus write SetactCambiarEstatus;
    property actGetTipoCambio: TBasicAction read FactGetTipoCambio write FactGetTipoCambio;
    property actGetImpactoISR: TBasicAction read FactGetImpactoISR write FactGetImpactoISR;
  end;

implementation

{$R *.dfm}

uses CotizacionesDM, CotizacionesDetalleEdit;

procedure TfrmCotizacionesDetalle.DatasetDeleteExecute(Sender: TObject);
begin
  if DataSource.DataSet.FieldByName('IdCotizacionDetalleEstatus').AsInteger <> 1 then
    ShowMessage('La cotizacion no es posible eliminarla')
  else
    inherited;
end;

procedure TfrmCotizacionesDetalle.DatasetEditExecute(Sender: TObject);
begin
  if DataSource.DataSet.FieldByName('IdCotizacionDetalleEstatus').AsInteger <> 1 then
    ShowMessage('La cotizacion no es posible modificarla')
  else
    inherited;
end;

procedure TfrmCotizacionesDetalle.FormCreate(Sender: TObject);
begin
  inherited;
  gEditForm := TfrmCotizacionesDetalleEdit.Create(Self);
end;

procedure TfrmCotizacionesDetalle.FormShow(Sender: TObject);
begin
  inherited;
  TfrmCotizacionesDetalleEdit(gEditForm).actGetTipoCambio := actGetTipoCambio;
  TfrmCotizacionesDetalleEdit(gEditForm).actGetImpactoISR := actGetImpactoISR;
end;

procedure TfrmCotizacionesDetalle.SetactAmortizaciones(
  const Value: TBasicAction);
begin
  FactAmortizaciones := Value;
  dxbbAmortizaciones.Action := Value;
end;

end.
