unit CotizacionesForm;

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
  dxSkinsdxRibbonPainter, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, dxPSCore, dxPScxCommon, dxBar, Vcl.ImgList,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxClasses, Vcl.StdActns, Vcl.DBActns,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, cxGridLevel, cxGridCustomView,
  cxGrid, Vcl.ExtCtrls;

type
  TfrmCotizaciones = class(T_frmGrid)
    tvMasterIdCotizacion: TcxGridDBColumn;
    tvMasterIdPersona: TcxGridDBColumn;
    tvMasterIdContratoTipo: TcxGridDBColumn;
    tvMasterIdMoneda: TcxGridDBColumn;
    tvMasterIdCotizacionEstatus: TcxGridDBColumn;
    tvMasterIdUsuario: TcxGridDBColumn;
    tvMasterIdentificador: TcxGridDBColumn;
    tvMasterDescripcion: TcxGridDBColumn;
    tvMasterElaboracion: TcxGridDBColumn;
    tvMasterVigencia: TcxGridDBColumn;
    tvMasterCliente: TcxGridDBColumn;
    tvMasterTipoContrato: TcxGridDBColumn;
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
    tvMasterEstatus: TcxGridDBColumn;
    tvMasterUsuario: TcxGridDBColumn;
    dxbbAmortizaciones: TdxBarButton;
    dxbbCambiarEstatus: TdxBarButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FactAmortizaciones: TBasicAction;
    FactCambiarEstatus: TBasicAction;
    FactGetTipoCambio: TBasicAction;
    procedure SetactAmortizaciones(const Value: TBasicAction);
    procedure SetactCambiarEstatus(const Value: TBasicAction);
  public
    { Public declarations }
    property actAmortizaciones: TBasicAction read FactAmortizaciones write SetactAmortizaciones;
    property actCambiarEstatus: TBasicAction read FactCambiarEstatus write SetactCambiarEstatus;
    property actGetTipoCambio: TBasicAction read FactGetTipoCambio write FactGetTipoCambio;
  end;

implementation

{$R *.dfm}

uses CotizacionesDM, CotizacionesEdit;

{ TfrmCotizaciones }

procedure TfrmCotizaciones.FormCreate(Sender: TObject);
begin
  inherited;
  gEditForm:= TfrmCotizacionesEdit.Create(Self);
end;

procedure TfrmCotizaciones.FormShow(Sender: TObject);
begin
  inherited;
  TfrmCotizacionesEdit(gEditForm).actGetTipoCambio := actGetTipoCambio;
end;

procedure TfrmCotizaciones.SetactAmortizaciones(const Value: TBasicAction);
begin
  FactAmortizaciones := Value;
  dxbbAmortizaciones.Action := Value;
end;

procedure TfrmCotizaciones.SetactCambiarEstatus(const Value: TBasicAction);
begin
  FactCambiarEstatus := Value;
  dxbbCambiarEstatus.Action := Value;
end;

end.
