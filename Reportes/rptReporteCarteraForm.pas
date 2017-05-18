unit rptReporteCarteraForm;

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
  TFrmReporteCarteraGrid = class(T_frmGrid)
    tvMasterIdAnexo: TcxGridDBColumn;
    tvMasterContrato: TcxGridDBColumn;
    tvMasterAnexo: TcxGridDBColumn;
    tvMasterCLiente: TcxGridDBColumn;
    tvMasterTc: TcxGridDBColumn;
    tvMasterPlazo: TcxGridDBColumn;
    tvMasterTotal: TcxGridDBColumn;
    tvMasterCobradoCXC: TcxGridDBColumn;
    tvMasterTotalPorCobrar: TcxGridDBColumn;
    tvMasterSaldopendiente: TcxGridDBColumn;
    tvMasterTotalVigente: TcxGridDBColumn;
    tvMasterTotalPorVencer: TcxGridDBColumn;
    tvMasterTotalCobradoVencido: TcxGridDBColumn;
    tvMasterVencidoA30: TcxGridDBColumn;
    tvMasterVencidoA60: TcxGridDBColumn;
    tvMasterVencidoA90: TcxGridDBColumn;
    tvMasterVencidoA120: TcxGridDBColumn;
    tvMasterVencidoMas120: TcxGridDBColumn;
    tvMasterDiasRetraso: TcxGridDBColumn;
    tvMasterCantidad: TcxGridDBColumn;
    tvMasteratrasados: TcxGridDBColumn;
    tvMasteratiempo: TcxGridDBColumn;
    tvMasterCuotasPendientes: TcxGridDBColumn;
    tvMasterDiasPagoTotal: TcxGridDBColumn;
    tvMasterDiasPagoRetraso: TcxGridDBColumn;
    tvMasterPorcentajeAtrasados: TcxGridDBColumn;
    tvMasterPorcentajeATiempo: TcxGridDBColumn;
    tvMasterCuotaMostrar: TcxGridDBColumn;
    dxBrBtnReporteCarteraPDF: TdxBarButton;
  private
    FPDFREporteCartera: TBasicAction;
    procedure SetPDFREporteCartera(const Value: TBasicAction);
    { Private declarations }
  public
    { Public declarations }
    Property ActPDFReporteCartera: TBasicAction read FPDFREporteCartera write SetPDFREporteCartera;
  end;

var
  FrmReporteCarteraGrid: TFrmReporteCarteraGrid;

implementation

{$R *.dfm}

uses rptReporteCarteraDM;

{ TFrmReporteCarteraGrid }

procedure TFrmReporteCarteraGrid.SetPDFREporteCartera(
  const Value: TBasicAction);
begin
  FPDFREporteCartera := Value;
  dxBrBtnReporteCarteraPDF.Action:=VAlue;
  dxBrBtnReporteCarteraPDF.ImageIndex:=17;
end;

end.
