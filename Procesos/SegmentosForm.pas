unit SegmentosForm;

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
  Vcl.ExtCtrls, cxCurrencyEdit, cxCalendar, cxBarEditItem, cxSpinEdit;

type
  TfrmSegmentos = class(T_frmGrid)
    dxbbCalcular: TdxBarButton;
    dxBarManagerBar1: TdxBar;
    dxBarEdit1: TdxBarEdit;
    edtMonto: TcxBarEditItem;
    edtTasaAnual: TcxBarEditItem;
    edtPlazo: TcxBarEditItem;
    EdtSegmentos: TcxBarEditItem;
    edtFechaInicial: TcxBarEditItem;
    tvMasterRecId: TcxGridDBColumn;
    tvMasterSegmento: TcxGridDBColumn;
    tvMasterPeriodo: TcxGridDBColumn;
    tvMasterFecha: TcxGridDBColumn;
    tvMasterSaldoInicial: TcxGridDBColumn;
    tvMasterTasaAnual: TcxGridDBColumn;
    tvMasterPago: TcxGridDBColumn;
    tvMasterCapital: TcxGridDBColumn;
    tvMasterCapitalImpuesto: TcxGridDBColumn;
    tvMasterCapitalTotal: TcxGridDBColumn;
    tvMasterInteres: TcxGridDBColumn;
    tvMasterInteresImpuesto: TcxGridDBColumn;
    tvMasterInteresTotal: TcxGridDBColumn;
    tvMasterSaldoFinal: TcxGridDBColumn;
    tvMasterPagoTotal: TcxGridDBColumn;
  private
    { Private declarations }
    FactCalcular: TBasicAction;
    procedure SetactCalcular(const Value: TBasicAction);
    function GetMonto: Extended;
    procedure SetMonto(const Value: Extended);
    function GetPlazo: Integer;
    procedure SetPlazo(const Value: Integer);
    function GetSegmentos: Integer;
    procedure SetSegmentos(const Value: Integer);
    function GetFechaInicial: TDateTime;
    procedure SetFechaInicial(const Value: TDateTime);
    function GetTasaAnual: Extended;
    procedure SetTasaAnual(const Value: Extended);
  public
    { Public declarations }
    property actCalcular: TBasicAction read FactCalcular write SetactCalcular;
    property Monto: Extended read GetMonto write SetMonto;
    property TasaAnual: Extended read GetTasaAnual write SetTasaAnual;
    property Plazo: Integer read GetPlazo write SetPlazo;
    property Segmentos: Integer read GetSegmentos write SetSegmentos;
    property FechaInicial: TDateTime read GetFechaInicial write SetFechaInicial;
  end;

implementation

{$R *.dfm}

uses AmortizacionesDM;

{ TfrmAmortizaciones }

function TfrmSegmentos.GetFechaInicial: TDateTime;
begin
  Result := edtFechaInicial.EditValue;
end;

function TfrmSegmentos.GetMonto: Extended;
begin
  Result := edtMonto.EditValue;
end;

function TfrmSegmentos.GetPlazo: Integer;
begin
  Result := edtPlazo.EditValue;
end;

function TfrmSegmentos.GetSegmentos: Integer;
begin
  Result := EdtSegmentos.EditValue;
end;

function TfrmSegmentos.GetTasaAnual: Extended;
begin
  Result := edtTasaAnual.EditValue;
end;

procedure TfrmSegmentos.SetactCalcular(const Value: TBasicAction);
begin
  FactCalcular := Value;
  dxbbCalcular.Action := Value;
end;

procedure TfrmSegmentos.SetFechaInicial(const Value: TDateTime);
begin
  edtFechaInicial.EditValue := Value;
end;

procedure TfrmSegmentos.SetMonto(const Value: Extended);
begin
  edtMonto.EditValue := Value;
end;

procedure TfrmSegmentos.SetPlazo(const Value: Integer);
begin
  edtPlazo.EditValue := Value;
end;

procedure TfrmSegmentos.SetSegmentos(const Value: Integer);
begin
  EdtSegmentos.EditValue := Value;
end;

procedure TfrmSegmentos.SetTasaAnual(const Value: Extended);
begin
  edtTasaAnual.EditValue := Value;
end;

end.
