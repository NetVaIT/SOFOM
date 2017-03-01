unit EstadosCuentaForm;

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
  Vcl.ExtCtrls, dxBarExtItems;

type
  TFrmConEstadosCuenta = class(T_frmGrid)
    dxBrBtnActEstadoCTA: TdxBarButton;
    tvMasterCliente: TcxGridDBColumn;
    tvMasterIdEstadoCuenta: TcxGridDBColumn;
    tvMasterIdPersona: TcxGridDBColumn;
    tvMasterSaldoInsoluto: TcxGridDBColumn;
    dxBarDtCmbFechaCorte: TdxBarDateCombo;
    tvMasterFechaCorte: TcxGridDBColumn;
    tvMasterSaldoAnterior: TcxGridDBColumn;
    tvMasterSaldoAPagar: TcxGridDBColumn;
    tvMasterSaldoVencido: TcxGridDBColumn;
    tvMasterIdContrato: TcxGridDBColumn;
    tvMasterFechaVencimiento: TcxGridDBColumn;
    dxBrBtnPDFEstCta: TdxBarButton;
    procedure dxBarDtCmbFechaCorteChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FActEstadoCta: TBasicAction;
    fFechaCorte: TDAteTime;
    FPDFEstadoCta: TBasicAction;
    procedure SetActEstadoCta(const Value: TBasicAction);
    function GetfFechaCorte: TDAteTime;
    procedure SetPDFEstadoCta(const Value: TBasicAction);
    { Private declarations }
  public
    { Public declarations }
   property ActEstadoCta : TBasicAction read FActEstadoCta write SetActEstadoCta;
   Property AFechaCorte:TDAteTime read GetfFechaCorte write fFechaCorte;//Ene 10/17

    property ActPDFEstadoCta : TBasicAction read FPDFEstadoCta write SetPDFEstadoCta;
  end;

var
  FrmConEstadosCuenta: TFrmConEstadosCuenta;

implementation

{$R *.dfm}

uses EstadosCuentaDM;

{ TFrmConEstadosCuenta }

procedure TFrmConEstadosCuenta.dxBarDtCmbFechaCorteChange(Sender: TObject);
begin
  inherited;
  fFechaCorte:= dxBarDtCmbFechaCorte.Date; //Ene 10/17
end;

procedure TFrmConEstadosCuenta.FormCreate(Sender: TObject);
begin
  inherited;
  dxBarDtCmbFechaCorte.Date:=DAte; //Verificar si dispara evento

  fFechaCorte:= dxBarDtCmbFechaCorte.Date;
end;

function TFrmConEstadosCuenta.GetfFechaCorte: TDAteTime;
begin
  Result := fFechaCorte;
end;

procedure TFrmConEstadosCuenta.SetActEstadoCta(const Value: TBasicAction);
begin
  FActEstadoCta := Value;
  dxBrBtnActEstadoCTA.Action:=Value;
  dxBrBtnActEstadoCTA.ImageIndex:=17;
end;

procedure TFrmConEstadosCuenta.SetPDFEstadoCta(const Value: TBasicAction);
begin
  FPDFEstadoCta := Value;
  dxBrBtnPDFEstCta.Action:=Value;
  dxBrBtnPDFEstCta.ImageIndex:=18;
end;

end.
