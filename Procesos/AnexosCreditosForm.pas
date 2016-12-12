unit AnexosCreditosForm;

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
  TfrmAnexosCreditos = class(T_frmGrid)
    tvMasterIdAnexoCredito: TcxGridDBColumn;
    tvMasterIdAnexo: TcxGridDBColumn;
    tvMasterIdAnexoCreditoEstatus: TcxGridDBColumn;
    tvMasterIdUsuario: TcxGridDBColumn;
    tvMasterFecha: TcxGridDBColumn;
    tvMasterMontoFiananciar: TcxGridDBColumn;
    tvMasterTasaAnual: TcxGridDBColumn;
    tvMasterPlazo: TcxGridDBColumn;
    tvMasterPagoMensual: TcxGridDBColumn;
    tvMasterEstatus: TcxGridDBColumn;
    tvMasterUsuario: TcxGridDBColumn;
    dxbbPreAmortizaciones: TdxBarButton;
    dxbbGenAmortizaciones: TdxBarButton;
    tvMasterFechaInicial: TcxGridDBColumn;
    tvMasterFechaCorte: TcxGridDBColumn;
    tvMasterValorResidual: TcxGridDBColumn;
    tvMasterImpactoISR: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FactPreAmortizaciones: TBasicAction;
    FactGenAmortizaciones: TBasicAction;
    procedure SetactPreAmortizaciones(const Value: TBasicAction);
    procedure SetactGenAmortizaciones(const Value: TBasicAction);
  public
    { Public declarations }
    property actPreAmortizaciones: TBasicAction read FactPreAmortizaciones write SetactPreAmortizaciones;
    property actGenAmortizaciones: TBasicAction read FactGenAmortizaciones write SetactGenAmortizaciones;
  end;

implementation

{$R *.dfm}

uses ContratosDM, AnexosCreditosEdit;

procedure TfrmAnexosCreditos.FormCreate(Sender: TObject);
begin
  inherited;
  gEditForm:= TfrmAnexosCreditosEdit.Create(Self);
end;

procedure TfrmAnexosCreditos.SetactGenAmortizaciones(const Value: TBasicAction);
begin
  FactGenAmortizaciones := Value;
  dxbbGenAmortizaciones.Action := Value;
end;

procedure TfrmAnexosCreditos.SetactPreAmortizaciones(const Value: TBasicAction);
begin
  FactPreAmortizaciones := Value;
  dxbbPreAmortizaciones.Action := Value;
end;

end.
