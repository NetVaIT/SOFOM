unit rptAntiguedadSaldosForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, _GridForm, cxGraphics, cxControls, System.DateUtils,
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
  Vcl.ExtCtrls, cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, Vcl.Buttons,Data.Win.ADODB,
  Vcl.CheckLst, cxCheckBox, cxBarEditItem;

type
  TfrmRptAntiguedadSaldos = class(T_frmGrid)
    tvMasterCliente: TcxGridDBColumn;
    tvMasterFecha: TcxGridDBColumn;
    tvMasterVigentes: TcxGridDBColumn;
    tvMasterVencidosa30das: TcxGridDBColumn;
    tvMasterVencidosa60das: TcxGridDBColumn;
    tvMasterVencidosa90das: TcxGridDBColumn;
    tvMasterIdCuentaXCobrar: TcxGridDBColumn;
    tvMasterIdPersona: TcxGridDBColumn;
    tvMasterIdCuentaXCobrarEstatus: TcxGridDBColumn;
    tvMasterIDAnexo: TcxGridDBColumn;
    tvMasterTotal: TcxGridDBColumn;
    tvMasterSaldo: TcxGridDBColumn;
    tvMasterIDContrato: TcxGridDBColumn;
    tvMasterTipoContrato: TcxGridDBColumn;
    tvMasterIdContratoTipo: TcxGridDBColumn;
    dxBrBtnPDF: TdxBarButton;
    dxBrBtnAntXCliente: TdxBarButton;
    tvMasterContrato: TcxGridDBColumn;
    tvMasterAnexo: TcxGridDBColumn;
    tvMasterTC: TcxGridDBColumn;
    tvMasterSaldoTotalVencido: TcxGridDBColumn;
    tvMasterVencidosmsde120das: TcxGridDBColumn;
    tvMasterFechaVencimiento: TcxGridDBColumn;
    tvMasterCobroX: TcxGridDBColumn;
    dxBrBtnAdeudoActual: TdxBarButton;
    dxBrBtnRepXContAtrasa: TdxBarButton;
    tvMasterVencidos0a30: TcxGridDBColumn;
    edtCliente: TcxBarEditItem;
    edtDesde: TcxBarEditItem;
    edtHasta: TcxBarEditItem;
    edtUsarFecha: TcxBarEditItem;
    dxbEstadoCuenta: TdxBar;
    btnEstadoCuenta: TdxBarButton;
    btnEstadoCuentaFuturo: TdxBarButton;
    edtFecha: TcxBarEditItem;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
       { Private declarations }
    FPDFAntigSaldos: TBasicAction;
    FPDFAntiXcliente: TBasicAction;
    FPDFAdeudoActualCliente: TBasicAction;
    FPDFXContratoVenc: TBasicAction;
    FactEstadoCuentaFuturo: TBasicAction;
    FactEstadoCuenta: TBasicAction;
    procedure SetPDFAntigSaldos(const Value: TBasicAction);
    procedure SetPDFAntXCliente(const Value: TBasicAction);
    procedure SetPDFAdeudoActualCliente(const Value: TBasicAction);
    procedure SetPDFXContratoVenc(const Value: TBasicAction);
    function GetCliente: string;
    function GetDesde: TDateTime;
    function GetHasta: TDateTime;
    function GetUsarFecha: Boolean;
    procedure SetCliente(const Value: string);
    procedure SetDesde(const Value: TDateTime);
    procedure SetHasta(const Value: TDateTime);
    procedure SetUsarFecha(const Value: Boolean);
    procedure SetactEstadoCuenta(const Value: TBasicAction);
    procedure SetactEstadoCuentaFuturo(const Value: TBasicAction);
    function GetFecha: TDateTime;
    procedure SetFecha(const Value: TDateTime);
  public
    { Public declarations }
    property Cliente: string read GetCliente write SetCliente;
    property Desde: TDateTime read GetDesde write SetDesde;
    property Hasta: TDateTime read GetHasta write SetHasta;
    property UsarFecha: Boolean read GetUsarFecha write SetUsarFecha;
    property Fecha: TDateTime read GetFecha write SetFecha;
    property ActPDFAntSaldos: TBasicAction read FPDFAntigSaldos write SetPDFAntigSaldos;
    property ActPDFAntXCliente: TBasicAction read FPDFAntiXcliente write SetPDFAntXCliente;
    property ActPDFAdeudoActualCliente: TBasicAction read FPDFAdeudoActualCliente write SetPDFAdeudoActualCliente;
    property ActPDFxContratosVenc: TBasicAction read FPDFXContratoVenc write SetPDFXContratoVenc;
    property actEstadoCuenta: TBasicAction read FactEstadoCuenta write SetactEstadoCuenta;
    property actEstadoCuentaFuturo: TBasicAction read FactEstadoCuentaFuturo write SetactEstadoCuentaFuturo;
  end;

implementation

{$R *.dfm}

uses rptAntiguedadSaldosDM, _ConectionDmod;

procedure TfrmRptAntiguedadSaldos.FormCreate(Sender: TObject);
var
  Year, Month, Day: Word;
begin
  inherited;
  DecodeDate(Date, year, month, day);
  Desde := EncodeDate(Year, Month, 1);
  Hasta := EncodeDate(Year, Month, DaysInMonth(Date));
  Fecha := Hasta;
  Cliente := EmptyStr;
end;

procedure TfrmRptAntiguedadSaldos.FormShow(Sender: TObject);
begin
  inherited;
  actFullColapseGroup.Execute; //Feb 22/17
end;

function TfrmRptAntiguedadSaldos.GetCliente: string;
begin
  Result:= edtCliente.EditValue;
end;

function TfrmRptAntiguedadSaldos.GetDesde: TDateTime;
begin
  Result := edtDesde.EditValue;
end;

function TfrmRptAntiguedadSaldos.GetFecha: TDateTime;
begin
  Result := edtFecha.EditValue;
end;

function TfrmRptAntiguedadSaldos.GetHasta: TDateTime;
begin
  Result := edtHasta.EditValue;
end;

function TfrmRptAntiguedadSaldos.GetUsarFecha: Boolean;
begin
  Result := edtUsarFecha.EditValue;
end;

procedure TfrmRptAntiguedadSaldos.SetactEstadoCuenta(const Value: TBasicAction);
begin
  FactEstadoCuenta := Value;
  btnEstadoCuenta.Action := Value;
end;

procedure TfrmRptAntiguedadSaldos.SetactEstadoCuentaFuturo(
  const Value: TBasicAction);
begin
  FactEstadoCuentaFuturo := Value;
  btnEstadoCuentaFuturo.Action := Value;
end;

procedure TfrmRptAntiguedadSaldos.SetCliente(const Value: string);
begin
  edtCliente.EditValue:= Value;
end;

procedure TfrmRptAntiguedadSaldos.SetDesde(const Value: TDateTime);
begin
  edtDesde.EditValue := Value;
end;

procedure TfrmRptAntiguedadSaldos.SetFecha(const Value: TDateTime);
begin
  edtFecha.EditValue := Value;
end;

procedure TfrmRptAntiguedadSaldos.SetHasta(const Value: TDateTime);
begin
  edtHasta.EditValue := Value;
end;

procedure TfrmRptAntiguedadSaldos.SetPDFAdeudoActualCliente(
  const Value: TBasicAction);
begin
  FPDFAdeudoActualCliente := Value;
  dxBrBtnAdeudoActual.Action:=value;
  dxBrBtnAdeudoActual.ImageIndex:=19;
end;

procedure TfrmRptAntiguedadSaldos.SetPDFAntigSaldos(const Value: TBasicAction);
begin
  FPDFAntigSaldos := Value;
  dxBrBtnPDF.Action:=Value;
  dxBrBtnPDF.ImageIndex:=17;
  dxBrBtnPDF.Hint:='Antigüedad de saldos Por Cuenta X Cobrar';
end;

procedure TfrmRptAntiguedadSaldos.SetPDFAntXCliente(const Value: TBasicAction);
begin
  FPDFAntiXcliente := Value;
  dxBrBtnAntXCliente.Action:=Value;
  dxBrBtnAntXCliente.ImageIndex:=18;
  dxBrBtnAntXCliente.Hint:='Antigüedad de Saldos Acumulada por Cliente';
end;

procedure TfrmRptAntiguedadSaldos.SetPDFXContratoVenc(
  const Value: TBasicAction);
begin
  FPDFXContratoVenc := Value;
  dxBrBtnRepXContAtrasa.Action:= Value;
  dxBrBtnRepXContAtrasa.ImageIndex:=20;
  dxBrBtnRepXContAtrasa.Hint:='Antigüedad de Saldos Por Contratos Atrasados';
end;

procedure TfrmRptAntiguedadSaldos.SetUsarFecha(const Value: Boolean);
begin
  edtUsarFecha.EditValue := Value;
end;

end.
