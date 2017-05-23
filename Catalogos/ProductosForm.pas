unit ProductosForm;

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
  TfrmProductos = class(T_frmGrid)
    tvMasterIdProducto: TcxGridDBColumn;
    tvMasterIdProductoTipo: TcxGridDBColumn;
    tvMasterIdMarca: TcxGridDBColumn;
    tvMasterIdFamilia: TcxGridDBColumn;
    tvMasterIdProductoEstatus: TcxGridDBColumn;
    tvMasterIdentificador: TcxGridDBColumn;
    tvMasterDescripcion: TcxGridDBColumn;
    tvMasterTipo: TcxGridDBColumn;
    tvMasterMarca: TcxGridDBColumn;
    tvMasterFamilia: TcxGridDBColumn;
    tvMasterModelo: TcxGridDBColumn;
    tvMasterAnio: TcxGridDBColumn;
    tvMasterNumeroSerie: TcxGridDBColumn;
    tvMasterNumeroEconomico: TcxGridDBColumn;
    tvMasterEstatus: TcxGridDBColumn;
    tvMasterIdAnexo: TcxGridDBColumn;
    tvMasterFechaImportacion: TcxGridDBColumn;
    tvMasterPedimento: TcxGridDBColumn;
    tvMasterAduana: TcxGridDBColumn;
    tvMasterFechaCompra: TcxGridDBColumn;
    dxbbActualizarDeprecicion: TdxBarButton;
    tvMasterIdMoneda: TcxGridDBColumn;
    tvMasterPrecioMoneda: TcxGridDBColumn;
    tvMasterMoneda: TcxGridDBColumn;
    tvMasterTipoCambio: TcxGridDBColumn;
    tvMasterPrecio: TcxGridDBColumn;
    tvMasterImpuesto: TcxGridDBColumn;
    tvMasterPrecioTotal: TcxGridDBColumn;
    tvMasterPorcentajeContable: TcxGridDBColumn;
    tvMasterDepreciacionContable: TcxGridDBColumn;
    tvMasterValorContable: TcxGridDBColumn;
    tvMasterPorcentajeComercial: TcxGridDBColumn;
    tvMasterDepreciacionComercial: TcxGridDBColumn;
    tvMasterValorComercial: TcxGridDBColumn;
    tvMasterPorcentajeAnexo: TcxGridDBColumn;
    tvMasterContrato: TcxGridDBColumn;
    tvMasterAnexo: TcxGridDBColumn;
    tvMasterCliente: TcxGridDBColumn;
    tvMasterIdProductoDestino: TcxGridDBColumn;
    tvMasterDestino: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
  private
    FactActualizarDepreciacion: TBasicAction;
    procedure SetactActualizarDepreciacion(const Value: TBasicAction);
    { Private declarations }
  public
    { Public declarations }
    property actActualizarDepreciacion: TBasicAction read FactActualizarDepreciacion write SetactActualizarDepreciacion;
  end;

implementation

{$R *.dfm}

uses ProductosEdit, ProductosDM;

procedure TfrmProductos.FormCreate(Sender: TObject);
begin
  inherited;
  gEditForm:= TfrmProductosEdit.Create(Self);
end;

procedure TfrmProductos.SetactActualizarDepreciacion(const Value: TBasicAction);
begin
  FactActualizarDepreciacion := Value;
  dxbbActualizarDeprecicion.Action := Value;
end;

end.
