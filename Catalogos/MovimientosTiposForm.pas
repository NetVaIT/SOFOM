unit MovimientosTiposForm;

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
  cxGridTableView, cxGridDBTableView, cxGrid, Vcl.ExtCtrls, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxRibbonPainter,
  dxPSCore, dxPScxCommon, Vcl.StdCtrls;

type
  TfrmMovimientosTipos = class(T_frmGrid)
    tvMasterIdMovimientoTipo: TcxGridDBColumn;
    tvMasterIdMovimientoTipoCategoria: TcxGridDBColumn;
    tvMasterIdMovimientoTipoEfecto: TcxGridDBColumn;
    tvMasterIdMovimientoTipoAcumular: TcxGridDBColumn;
    tvMasterIdentificador: TcxGridDBColumn;
    tvMasterDescripcion: TcxGridDBColumn;
    tvMasterMovimientoTipoCategoria: TcxGridDBColumn;
    tvMasterMovimientoTipoEfecto: TcxGridDBColumn;
    tvMasterProduceCXC: TcxGridDBColumn;
    tvMasterProduceCXP: TcxGridDBColumn;
    tvMasterIdVariable: TcxGridDBColumn;
    tvMasterVariable: TcxGridDBColumn;
    tvMasterAgruparTipo: TcxGridDBColumn;
    tvMasterMovimientoTipo: TcxGridDBColumn;
    tvMasterIdPersonaRolPagadora1: TcxGridDBColumn;
    tvMasterIdpersonaRolPagadora2: TcxGridDBColumn;
    tvMasterPorcentajePagadora1: TcxGridDBColumn;
    tvMasterPorcentajePagadora2: TcxGridDBColumn;
    tvMasterAplicarISRProvisional: TcxGridDBColumn;
    tvMasterIdPersonaRolCXCPagadora1: TcxGridDBColumn;
    tvMasterIdPersonaRolCXCPagadora2: TcxGridDBColumn;
    tvMasterAplicarUltimoPeriodo: TcxGridDBColumn;
    tvMasterCXPRelacion1: TcxGridDBColumn;
    tvMasterCXPRelacion2: TcxGridDBColumn;
    tvMasterCXCRelacion1: TcxGridDBColumn;
    tvMasterCXCRelacion2: TcxGridDBColumn;
    tvMasterEnviarCuentaControl: TcxGridDBColumn;
    tvMasterAplicarCategoria: TcxGridDBColumn;
    tvMasterImportar: TcxGridDBColumn;
    tvMasterPorcentajeRetencion: TcxGridDBColumn;
    tvMasterPorcentajeAportacion: TcxGridDBColumn;
    tvMasterAplicarDescuentos: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FDataSetMovimientosTipo: TDataSet;
  public
    { Public declarations }
    property DataSetMovimientosTipo: TDataSet read FDataSetMovimientosTipo write FDataSetMovimientosTipo;
  end;

implementation

{$R *.dfm}

uses MovimientosTiposDM, MovimientosTiposEdit;

procedure TfrmMovimientosTipos.FormCreate(Sender: TObject);
begin
  inherited;
  gEditForm:= TfrmMovimientosTipoEdit.Create(Self);
end;

procedure TfrmMovimientosTipos.FormShow(Sender: TObject);
begin
  inherited;
  TfrmMovimientosTipoEdit(gEditForm).DataSetMovimientosTipo:= DataSetMovimientosTipo;
end;

end.
