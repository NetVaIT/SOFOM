unit rptInformacionContratosForm;

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
  TFrmInformacionContratosGrid = class(T_frmGrid)
    tvMasterIdContratoEstatus: TcxGridDBColumn;
    tvMasterIdContrato: TcxGridDBColumn;
    tvMasterContrato: TcxGridDBColumn;
    tvMasterRazonSocial: TcxGridDBColumn;
    tvMasteridAnexo: TcxGridDBColumn;
    tvMasterAnexo: TcxGridDBColumn;
    tvMasterMontoFinanciar: TcxGridDBColumn;
    tvMasterMontoVencido: TcxGridDBColumn;
    tvMasterCapitalCobrado: TcxGridDBColumn;
    tvMasterSaldoInsoluto: TcxGridDBColumn;
    tvMasterEnganche: TcxGridDBColumn;
    tvMasterIdProducto: TcxGridDBColumn;
    tvMasterProducto: TcxGridDBColumn;
    tvMasterPrecio: TcxGridDBColumn;
    tvMasterPorcentajeAnexo: TcxGridDBColumn;
    tvMasterDepreciacionComercial: TcxGridDBColumn;
    tvMasterDepreciacionContable: TcxGridDBColumn;
    tvMasterPrecioTotal: TcxGridDBColumn;
    tvMasterEnganchePorcentaje: TcxGridDBColumn;
    tvMastersumaAnexo: TcxGridDBColumn;
    tvMasterTotalPagadoProd: TcxGridDBColumn;
    tvMasterAfinanciarXprod: TcxGridDBColumn;
    tvMasterVencidoXProd: TcxGridDBColumn;
    tvMasterSaldoInsolutoXProd: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmInformacionContratosGrid: TFrmInformacionContratosGrid;

implementation

{$R *.dfm}

uses rptInformacionContratosDM;

procedure TFrmInformacionContratosGrid.FormShow(Sender: TObject);
begin
  inherited;
  actFullColapseGroup.Execute;//Abr 21/17
end;

end.
