unit AnexosMoratoriosForm;

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
  Vcl.ExtCtrls, cxPropertiesStore;

type
  TfrmAnexosMoratorios = class(T_frmGrid)
    tvMasterIdAnexoMoratorio: TcxGridDBColumn;
    tvMasterIdAnexoAmortizacion: TcxGridDBColumn;
    tvMasterIdAnexoMoratorioEstatus: TcxGridDBColumn;
    tvMasterEstatus: TcxGridDBColumn;
    tvMasterFecha: TcxGridDBColumn;
    tvMasterImporteBase: TcxGridDBColumn;
    tvMasterImporte: TcxGridDBColumn;
    tvMasterDescuento: TcxGridDBColumn;
    tvMasterImpuesto: TcxGridDBColumn;
    tvMasterIdCuentaXCobrar: TcxGridDBColumn;
    tvMasterImporteAplicado: TcxGridDBColumn;
    tvMasterCancelacion: TcxGridDBColumn;
    dxbbAgregarDescuento: TdxBarButton;
    dxbbEliminarDescuento: TdxBarButton;
    dxbbDescuentoParcial: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    tvMasterMoratorio: TcxGridDBColumn;
    tvMasterMoratorioTotal: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
  private
    FactAgregarDescuento: TBasicAction;
    FactDescuentoParcial: TBasicAction;
    FactEliminarDescuento: TBasicAction;
    procedure SetactAgregarDescuento(const Value: TBasicAction);
    procedure SetactDescuentoParcial(const Value: TBasicAction);
    procedure SetactEliminarDescuento(const Value: TBasicAction);
    { Private declarations }
  public
    { Public declarations }
    property actAgregarDescuento: TBasicAction read FactAgregarDescuento write SetactAgregarDescuento;
    property actEliminarDescuento: TBasicAction read FactEliminarDescuento write SetactEliminarDescuento;
    property actDescuentoParcial: TBasicAction read FactDescuentoParcial write SetactDescuentoParcial;
  end;

implementation

{$R *.dfm}

uses AnexosMoratoriosDM, AnexosMoratoriosEdit;

procedure TfrmAnexosMoratorios.FormCreate(Sender: TObject);
begin
  inherited;
  gEditForm := TfrmAnexosMoratoriosEdit.Create(Self);
end;

procedure TfrmAnexosMoratorios.SetactAgregarDescuento(
  const Value: TBasicAction);
begin
  FactAgregarDescuento := Value;
  dxbbAgregarDescuento.Action := Value;
end;

procedure TfrmAnexosMoratorios.SetactDescuentoParcial(
  const Value: TBasicAction);
begin
  FactDescuentoParcial := Value;
  dxbbDescuentoParcial.Action := Value;
end;

procedure TfrmAnexosMoratorios.SetactEliminarDescuento(
  const Value: TBasicAction);
begin
  FactEliminarDescuento := Value;
  dxbbEliminarDescuento.Action := Value;
end;

end.
