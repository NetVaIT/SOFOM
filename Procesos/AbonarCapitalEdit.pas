unit AbonarCapitalEdit;

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
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls, cxPC,
  cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils, cxCalendar,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalc, cxLabel, Vcl.Grids,
  Vcl.DBGrids;

type
  TfrmAbonarCapitalEdit = class(T_frmEdit)
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    edtSaldoInsoluto: TcxCalcEdit;
    edtMontoVencido: TcxCalcEdit;
    edtFecha: TcxDateEdit;
    cxLabel4: TcxLabel;
    edtImporte: TcxCalcEdit;
    cxLabel5: TcxLabel;
    cbxTipo: TcxComboBox;
    DBGrid1: TDBGrid;
    Button1: TButton;
  private
    FactCD: TBasicAction;
    FIdAnexo: Integer;
    { Private declarations }
    function GetFecha: TDateTime;
    function GetImporte: Extended;
    function GetMontoVencido: Extended;
    function GetSaldoInsoluto: Extended;
    procedure SetFecha(const Value: TDateTime);
    procedure SetImporte(const Value: Extended);
    procedure SetMontoVencido(const Value: Extended);
    procedure SetSaldoInsoluto(const Value: Extended);
    function GetTipo: Integer;
    procedure SetTipo(const Value: Integer);
    procedure SetactCD(const Value: TBasicAction);
    procedure SetIdAnexo(const Value: Integer);
  public
    { Public declarations }
    property SaldoInsoluto: Extended read GetSaldoInsoluto write SetSaldoInsoluto;
    property MontoVencido: Extended read GetMontoVencido write SetMontoVencido;
    property Fecha: TDateTime read GetFecha write SetFecha;
    property Importe: Extended read GetImporte write SetImporte;
    property Tipo: Integer read GetTipo write SetTipo;
    function Execute: Boolean;
    property actCD: TBasicAction read FactCD write SetactCD;
    property IdAnexo: Integer read FIdAnexo write SetIdAnexo;
  end;

implementation

{$R *.dfm}

uses AmortizacionesDM;

{ TfrmAbonarCapitalEdit }

function TfrmAbonarCapitalEdit.Execute: Boolean;
begin
  Result:= (ShowModal = mrOk);
end;

function TfrmAbonarCapitalEdit.GetFecha: TDateTime;
begin
  Result:= edtFecha.EditValue;
end;

function TfrmAbonarCapitalEdit.GetImporte: Extended;
begin
  Result:= edtImporte.EditValue;
end;

function TfrmAbonarCapitalEdit.GetMontoVencido: Extended;
begin
  Result:= edtMontoVencido.EditValue;
end;

function TfrmAbonarCapitalEdit.GetSaldoInsoluto: Extended;
begin
  Result:= edtSaldoInsoluto.EditValue;
end;

function TfrmAbonarCapitalEdit.GetTipo: Integer;
begin
  Result:= cbxTipo.ItemIndex;
end;

procedure TfrmAbonarCapitalEdit.SetactCD(const Value: TBasicAction);
begin
  FactCD := Value;
  Button1.Action := Value;
end;

procedure TfrmAbonarCapitalEdit.SetFecha(const Value: TDateTime);
begin
  edtFecha.EditValue := Value
end;

procedure TfrmAbonarCapitalEdit.SetIdAnexo(const Value: Integer);
begin
  FIdAnexo := Value;
end;

procedure TfrmAbonarCapitalEdit.SetImporte(const Value: Extended);
begin
  edtImporte.EditValue := Value
end;

procedure TfrmAbonarCapitalEdit.SetMontoVencido(const Value: Extended);
begin
  edtMontoVencido.EditValue := Value
end;

procedure TfrmAbonarCapitalEdit.SetSaldoInsoluto(const Value: Extended);
begin
  edtSaldoInsoluto.EditValue := Value
end;

procedure TfrmAbonarCapitalEdit.SetTipo(const Value: Integer);
begin
  cbxTipo.ItemIndex:= Value;
end;

end.
