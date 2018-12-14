unit ReestructurarForm;

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
  cxGridDBTableView, cxPropertiesStore, dxPSCore, dxPScxCommon, dxBar,
  Vcl.ImgList, cxGridCustomPopupMenu, cxGridPopupMenu, cxClasses, Vcl.StdActns,
  Vcl.DBActns, System.Actions, Vcl.ActnList, Vcl.StdCtrls, cxGridLevel,
  cxGridCustomView, cxGrid, Vcl.ExtCtrls, cxButtonEdit, Vcl.Menus, cxButtons;

type
  TfrmReestructurar = class(T_frmGrid)
    tvMasterIdCuentaXCobrar: TcxGridDBColumn;
    tvMasterIdCFDI: TcxGridDBColumn;
    tvMasterFechaVencimiento: TcxGridDBColumn;
    tvMasterDescripcion: TcxGridDBColumn;
    tvMasterSaldo: TcxGridDBColumn;
    tvMasterFecha: TcxGridDBColumn;
    tvMasterUUID: TcxGridDBColumn;
    tvMasterSaldoDocumento: TcxGridDBColumn;
    tvMasterCFDIFormaPago: TcxGridDBColumn;
    tvMasterCFDIMetodoPago: TcxGridDBColumn;
    tvMasterIdCFDIEstatus: TcxGridDBColumn;
    btnCXCTermino: TcxButton;
  private
    FactTimbrar: TBasicAction;
    FactCrearFactura: TBasicAction;
    FactGenCxCTermino: TBasicAction;
    procedure SetactTimbrar(const Value: TBasicAction);
    procedure SetactCrearFactura(const Value: TBasicAction);
    procedure SetactGenCxCTermino(const Value: TBasicAction);
    { Private declarations }
  public
    { Public declarations }
    property actCrearFactura: TBasicAction read FactCrearFactura write SetactCrearFactura;
    property actTimbrar: TBasicAction read FactTimbrar write SetactTimbrar;
    property actGenCxCTermino: TBasicAction read FactGenCxCTermino write SetactGenCxCTermino;
  end;

implementation

{$R *.dfm}

uses ContratosDM;

{ TfrmReestructurar }

procedure TfrmReestructurar.SetactCrearFactura(const Value: TBasicAction);
begin
  FactCrearFactura := Value;
  tvMasterSaldoDocumento.Properties.Buttons[0].Action := Value;
end;

procedure TfrmReestructurar.SetactGenCxCTermino(const Value: TBasicAction);
begin
  FactGenCxCTermino := Value;
  btnCXCTermino.Action := Value;
end;

procedure TfrmReestructurar.SetactTimbrar(const Value: TBasicAction);
begin
  FactTimbrar := Value;
  tvMasterSaldoDocumento.Properties.Buttons[1].Action := Value;
end;

end.
