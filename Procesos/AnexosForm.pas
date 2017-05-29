unit AnexosForm;

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
  TfrmAnexos = class(T_frmGrid)
    tvMasterIdAnexo: TcxGridDBColumn;
    tvMasterIdContrato: TcxGridDBColumn;
    tvMasterIdMoneda: TcxGridDBColumn;
    tvMasterIdAnexoEstatus: TcxGridDBColumn;
    tvMasterIdentificador: TcxGridDBColumn;
    tvMasterDescripcion: TcxGridDBColumn;
    tvMasterFecha: TcxGridDBColumn;
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
    tvMasterMontoFinanciar: TcxGridDBColumn;
    tvMasterTasaAnual: TcxGridDBColumn;
    tvMasterPlazo: TcxGridDBColumn;
    tvMasterPagoMensual: TcxGridDBColumn;
    tvMasterEstatus: TcxGridDBColumn;
    tvMasterFechaCorte: TcxGridDBColumn;
    tvMasterOpcionCompraPorcentaje: TcxGridDBColumn;
    tvMasterOpcionCompra: TcxGridDBColumn;
    tvMasterValorResidualPorcentaje: TcxGridDBColumn;
    tvMasterValorResidual: TcxGridDBColumn;
    tvMasterImpactoISR: TcxGridDBColumn;
    tvMasterPagoInicialCreado: TcxGridDBColumn;
    tvMasterFechaVencimiento: TcxGridDBColumn;
    dxbbGenerar: TdxBarButton;
    dxbbAbonar: TdxBarButton;
    tvMasterCapitalCobrado: TcxGridDBColumn;
    tvMasterSaldoInsoluto: TcxGridDBColumn;
    tvMasterMontoVencido: TcxGridDBColumn;
    tvMasterTasaMoratoriaAnual: TcxGridDBColumn;
    tvMasterIdCotizacionDetalle: TcxGridDBColumn;
    dxbbRestructurar: TdxBarButton;
    tvMasterCartaCompensacion: TcxGridDBColumn;
    tvMasterIdPersonaEmpleado: TcxGridDBColumn;
    tvMasterEmpleado: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FactGenerar: TBasicAction;
    FactGetTipoCambio: TBasicAction;
    FactAbonar: TBasicAction;
    FactRestructurar: TBasicAction;
    procedure SetactGenerar(const Value: TBasicAction);
    procedure SetactAbonar(const Value: TBasicAction);
    procedure SetactRestructurar(const Value: TBasicAction);
  public
    { Public declarations }
    property actGenerar: TBasicAction read FactGenerar write SetactGenerar;
    property actRestructurar: TBasicAction read FactRestructurar write SetactRestructurar;
    property actGetTipoCambio: TBasicAction read FactGetTipoCambio write FactGetTipoCambio;
    property actAbonar: TBasicAction read FactAbonar write SetactAbonar;
  end;

implementation

{$R *.dfm}

uses ContratosDM, AnexosEdit;

procedure TfrmAnexos.FormCreate(Sender: TObject);
begin
  inherited;
  gEditForm:= TfrmAnexosEdit.Create(Self);
end;

procedure TfrmAnexos.FormShow(Sender: TObject);
begin
  inherited;
  TfrmAnexosEdit(gEditForm).actGetTipoCambio := actGetTipoCambio;
end;

procedure TfrmAnexos.SetactAbonar(const Value: TBasicAction);
begin
  FactAbonar := Value;
  dxbbAbonar.Action := Value;
end;

procedure TfrmAnexos.SetactGenerar(const Value: TBasicAction);
begin
  FactGenerar := Value;
  dxbbGenerar.Action := Value;
end;

procedure TfrmAnexos.SetactRestructurar(const Value: TBasicAction);
begin
  FactRestructurar := Value;
  dxbbRestructurar.Action := Value;
end;

end.
