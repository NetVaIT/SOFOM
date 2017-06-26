unit AplicacionesInternasCon;

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
  TfrmConAplicacionesInternas = class(T_frmGrid)
    tvMasterIDPagoAplicacionInterna: TcxGridDBColumn;
    tvMasterIDPagoAplicacion: TcxGridDBColumn;
    tvMasterIdCuentaXCobrarDetalle: TcxGridDBColumn;
    tvMasterIDCFDI: TcxGridDBColumn;
    tvMasterIDCFDIConcepto: TcxGridDBColumn;
    tvMasterfechaCXC: TcxGridDBColumn;
    tvMasterItemCXC: TcxGridDBColumn;
    tvMastersaldoCXC: TcxGridDBColumn;
    tvMasterImportePagado: TcxGridDBColumn;
    dxBrBtnPAgosXDepo: TdxBarButton;
    procedure FormCreate(Sender: TObject);
  private
    FActCreaPagoDeposito: TBasicAction;
    procedure SetFCreaPagoDeposito(const Value: TBasicAction);
    { Private declarations }
  public
    { Public declarations }
    property ActCreaPagoXDeposito: TBasicAction read FActCreaPagoDeposito write SetFCreaPagoDeposito;  //Jun 21/17
  end;

var
  frmConAplicacionesInternas: TfrmConAplicacionesInternas;

implementation

{$R *.dfm}

uses AplicacionesConsultaDM;

procedure TfrmConAplicacionesInternas.FormCreate(Sender: TObject);
begin
  inherited;
  applybestfit:=False;
end;

procedure TfrmConAplicacionesInternas.SetFCreaPagoDeposito(
  const Value: TBasicAction);                   //Jun 21/17
begin
  FActCreaPagoDeposito := Value;
  dxBrBtnPAgosXDepo.Action:=Value;
  dxBrBtnPAgosXDepo.ImageIndex:=17;
end;

end.
