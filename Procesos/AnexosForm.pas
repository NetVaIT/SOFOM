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
    tvMasterFechaInicial: TcxGridDBColumn;
    tvMasterEstatus: TcxGridDBColumn;
    dxbbProductos: TdxBarButton;
    tvMasterFechaCorte: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    FactProductos: TBasicAction;
    FGenerarImpuestoInteres: Boolean;
    procedure SetactProductos(const Value: TBasicAction);
    procedure SetGenerarImpuestoInteres(const Value: Boolean);
  public
    { Public declarations }
    property GenerarImpuestoInteres: Boolean read FGenerarImpuestoInteres write SetGenerarImpuestoInteres;
    property actProductos: TBasicAction read FactProductos write SetactProductos;
  end;

implementation

{$R *.dfm}

uses ContratosDM, AnexosEdit;

procedure TfrmAnexos.DataSourceDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  TfrmAnexosEdit(gEditForm).GenerarImpuestoInteres:= GenerarImpuestoInteres;
end;

procedure TfrmAnexos.FormCreate(Sender: TObject);
begin
  inherited;
  gEditForm:= TfrmAnexosEdit.Create(Self);
end;

procedure TfrmAnexos.SetactProductos(const Value: TBasicAction);
begin
  FactProductos := Value;
  dxbbProductos.Action := Value;
end;

procedure TfrmAnexos.SetGenerarImpuestoInteres(const Value: Boolean);
begin
  FGenerarImpuestoInteres := Value;
end;

end.
