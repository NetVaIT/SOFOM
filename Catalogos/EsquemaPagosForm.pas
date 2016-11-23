unit EsquemaPagosForm;

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
  dxSkinsdxBarPainter, dxBar, Vcl.ImgList, cxGridCustomPopupMenu,
  cxGridPopupMenu, cxClasses, Vcl.StdActns, Vcl.DBActns, System.Actions,
  Vcl.ActnList, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Vcl.ExtCtrls,
  EsquemaPagosMovimientosTiposDM, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd,
  dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxSkinsdxRibbonPainter, dxPSCore, dxPScxCommon, Vcl.StdCtrls;

type
  TfrmEsquemaPagos = class(T_frmGrid)
    tvMasterIdEsquemaPago: TcxGridDBColumn;
    tvMasterIdentificador: TcxGridDBColumn;
    tvMasterDescripcion: TcxGridDBColumn;
    tvMasterIdEsquemaPagoEstatus: TcxGridDBColumn;
    tvMasterEsquemaPagoEstatus: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    dmEsquemaPagosMovimientosTipos: TdmEsquemaPagosMovimientosTipos;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses EsquemaPagosDM, EsquemaPagosEdit;

procedure TfrmEsquemaPagos.FormCreate(Sender: TObject);
begin
  inherited;
  gEditForm:= TfrmEsquemaPagosEdit.Create(Self);
  dmEsquemaPagosMovimientosTipos:= TdmEsquemaPagosMovimientosTipos.Create(nil);
end;

procedure TfrmEsquemaPagos.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(dmEsquemaPagosMovimientosTipos);
end;

procedure TfrmEsquemaPagos.FormShow(Sender: TObject);
begin
  inherited;
  dmEsquemaPagosMovimientosTipos.MasterSource:= DataSource;
  dmEsquemaPagosMovimientosTipos.ShowModule(pnlDetail1);
end;

end.
