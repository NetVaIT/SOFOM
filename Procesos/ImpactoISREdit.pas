unit ImpactoISREdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, _EditForm, dxSkinsCore, dxSkinBlack,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxPCdxBarPopupMenu,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Vcl.ImgList, System.Actions,
  Vcl.ActnList, Vcl.StdCtrls, Vcl.ExtCtrls, cxPC, cxContainer, Vcl.ComCtrls,
  dxCore, cxDateUtils, cxCurrencyEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxLabel;

type
  TfrmImpactoISREdit = class(T_frmEdit)
    pnlMaster: TPanel;
    cxGrid: TcxGrid;
    tvMaster: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    tvMasterRecId: TcxGridDBColumn;
    tvMasterMeses: TcxGridDBColumn;
    tvMasterCapitalTotal: TcxGridDBColumn;
    tvMasterFiscal: TcxGridDBColumn;
    tvMasterFinanciera: TcxGridDBColumn;
    tvMasterDiferencia: TcxGridDBColumn;
    tvMasterISR: TcxGridDBColumn;
    tvMasterKe: TcxGridDBColumn;
    cxLabel1: TcxLabel;
    edtFecha: TcxDateEdit;
    edtDepreciacion: TcxCurrencyEdit;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    edtImpactoISR: TcxCurrencyEdit;
  private
    { Private declarations }
    FactImpactoISR: TBasicAction;
    function GetFechaVencimiento: TDateTime;
    procedure SetFechaVencimiento(const Value: TDateTime);
    function GetPorcentajeDepreciacion: Currency;
    procedure SetPorcentajeDepreciacion(const Value: Currency);
    function GetImpactoISR: Extended;
    procedure SetImpactoISR(const Value: Extended);
    procedure SetactImpactoISR(const Value: TBasicAction);
  public
    { Public declarations }
    function Execute: Boolean;
    property FechaVencimiento: TDateTime read GetFechaVencimiento write SetFechaVencimiento;
    property PorcentajeDepreciacion: Currency read GetPorcentajeDepreciacion write SetPorcentajeDepreciacion;
    property ImpactoISR: Extended read GetImpactoISR write SetImpactoISR;
    property actImpactoISR: TBasicAction read FactImpactoISR write SetactImpactoISR;
  end;

implementation

{$R *.dfm}

uses ImpactoISRDM;

{ TfrmImpactoISREdit }

function TfrmImpactoISREdit.Execute: Boolean;
begin
  Result:= (ShowModal = mrOk);
end;

function TfrmImpactoISREdit.GetFechaVencimiento: TDateTime;
begin
  Result:= edtFecha.EditValue;
end;

function TfrmImpactoISREdit.GetImpactoISR: Extended;
begin
  Result:= edtImpactoISR.EditValue;
end;

function TfrmImpactoISREdit.GetPorcentajeDepreciacion: Currency;
begin
  Result:= edtDepreciacion.EditValue;
end;

procedure TfrmImpactoISREdit.SetactImpactoISR(const Value: TBasicAction);
begin
  FactImpactoISR := Value;
//  btnImpactoISR.Action := Value;
end;

procedure TfrmImpactoISREdit.SetFechaVencimiento(const Value: TDateTime);
begin
  edtFecha.EditValue := Value;
end;

procedure TfrmImpactoISREdit.SetImpactoISR(const Value: Extended);
begin
  edtImpactoISR.EditValue := Value;
end;

procedure TfrmImpactoISREdit.SetPorcentajeDepreciacion(const Value: Currency);
begin
  edtDepreciacion.EditValue := Value;
end;

end.
