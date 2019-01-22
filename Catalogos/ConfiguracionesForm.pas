unit ConfiguracionesForm;

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
  TfrmConfiguraciones = class(T_frmGrid)
    tvMasterIdPais: TcxGridDBColumn;
    tvMasterIdMoneda: TcxGridDBColumn;
    tvMasterPais: TcxGridDBColumn;
    tvMasterMoneda: TcxGridDBColumn;
    tvMasterRutaBaseFacturas: TcxGridDBColumn;
    tvMasterRutaBasePagos: TcxGridDBColumn;
    tvMasterUltimoFolioPago: TcxGridDBColumn;
    tvMasterUltimaSeriePago: TcxGridDBColumn;
    tvMasterPorcentajeImpuestoIVA: TcxGridDBColumn;
    tvMasterBCClaveInstitucion: TcxGridDBColumn;
    tvMasterBCInstitucion: TcxGridDBColumn;
    tvMasterBCTipo: TcxGridDBColumn;
    tvMasterPLDPerfilTransaccional: TcxGridDBColumn;
    tvMasterPLDInicioOperaciones: TcxGridDBColumn;
    tvMasterPLDCodigoCASFIM: TcxGridDBColumn;
    tvMasterPLDSupervisorCNBV: TcxGridDBColumn;
    tvMasterPLDArchivoRuta: TcxGridDBColumn;
    tvMasterPLDArchivoExtension: TcxGridDBColumn;
    tvMasterPLDMontoRelevante: TcxGridDBColumn;
    tvMasterPLDLocalidad: TcxGridDBColumn;
    tvMasterPLDCodigoPostal: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FactGetPlantillaAmortizacion: TBasicAction;
  public
    { Public declarations }
    property actGetPlantillaAmortizacion: TBasicAction read FactGetPlantillaAmortizacion write FactGetPlantillaAmortizacion;
  end;

implementation

{$R *.dfm}

uses ConfiguracionDM, ConfiguracionesEdit;

procedure TfrmConfiguraciones.FormCreate(Sender: TObject);
begin
  inherited;
  gEditForm:= TfrmConfiguracionesEdit.Create(Self);
end;

procedure TfrmConfiguraciones.FormShow(Sender: TObject);
begin
  inherited;
  TfrmConfiguracionesEdit(gEditForm).actGetPlantillaAmortizacion := actGetPlantillaAmortizacion
end;

end.
