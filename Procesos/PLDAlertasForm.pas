unit PLDAlertasForm;

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
  cxGrid, Vcl.ExtCtrls, cxPropertiesStore;

type
  TfrmPLDAlertas = class(T_frmGrid)
    tvMasterIdPLDAlerta: TcxGridDBColumn;
    tvMasterIdPersona: TcxGridDBColumn;
    tvMasterIdPago: TcxGridDBColumn;
    tvMasterIdPLDOperacionTipo: TcxGridDBColumn;
    tvMasterIdPLDAlertaTipo: TcxGridDBColumn;
    tvMasterIdPLDAlertaEstatus: TcxGridDBColumn;
    tvMasterCliente: TcxGridDBColumn;
    tvMasterContrato: TcxGridDBColumn;
    tvMasterPeriodoMes: TcxGridDBColumn;
    tvMasterPeriodoAnio: TcxGridDBColumn;
    tvMasterSoloEfectivo: TcxGridDBColumn;
    tvMasterFechaPago: TcxGridDBColumn;
    tvMasterMetodoPago: TcxGridDBColumn;
    tvMasterFechaDeteccion: TcxGridDBColumn;
    tvMasterTotal: TcxGridDBColumn;
    tvMasterTotalUSD: TcxGridDBColumn;
    tvMasterTotalPagos: TcxGridDBColumn;
    tvMasterDescripcion: TcxGridDBColumn;
    tvMasterRazon: TcxGridDBColumn;
    tvMasterR24: TcxGridDBColumn;
    tvMasterOperacionTipo: TcxGridDBColumn;
    tvMasterTipo: TcxGridDBColumn;
    tvMasterEstatus: TcxGridDBColumn;
    dxbbGenerar: TdxBarButton;
    dxbbArchivo: TdxBarButton;
    procedure FormCreate(Sender: TObject);
  private
    FactGenerarAlertas: TBasicAction;
    FactGenerarArchivo: TBasicAction;
    procedure SetactGenerarAlertas(const Value: TBasicAction);
    procedure SetactGenerarArchivo(const Value: TBasicAction);
    { Private declarations }
  public
    { Public declarations }
    property actGenerarAlertas: TBasicAction read FactGenerarAlertas write SetactGenerarAlertas;
    property actGenerarArchivo: TBasicAction read FactGenerarArchivo write SetactGenerarArchivo;
  end;

implementation

{$R *.dfm}

uses PLDAlertasDM, PLDAlertasEdit;

procedure TfrmPLDAlertas.FormCreate(Sender: TObject);
begin
  inherited;
  gEditForm:= TfrmPLDAlertasEdit.Create(Self);
end;

procedure TfrmPLDAlertas.SetactGenerarAlertas(const Value: TBasicAction);
begin
  FactGenerarAlertas := Value;
  dxbbGenerar.Action :=  Value;
end;

procedure TfrmPLDAlertas.SetactGenerarArchivo(const Value: TBasicAction);
begin
  FactGenerarArchivo := Value;
  dxbbArchivo.Action := Value;
end;

end.
