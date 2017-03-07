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
  Vcl.DBGrids, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid;

type
  TfrmAbonarCapitalEdit = class(T_frmEdit)
    cxLabel3: TcxLabel;
    edtFecha: TcxDateEdit;
    cxLabel4: TcxLabel;
    edtImporte: TcxCalcEdit;
    cxLabel5: TcxLabel;
    cbxTipo: TcxComboBox;
    pnlMaster: TPanel;
    cxGrid: TcxGrid;
    tvMaster: TcxGridDBTableView;
    tvMasterIdContrato: TcxGridDBColumn;
    tvMasterIdPersona: TcxGridDBColumn;
    tvMasterIdContratoTipo: TcxGridDBColumn;
    tvMasterIdAnexo: TcxGridDBColumn;
    tvMasterContrato: TcxGridDBColumn;
    tvMasterAnexo: TcxGridDBColumn;
    tvMasterCliente: TcxGridDBColumn;
    tvMasterSaldoInsoluto: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    procedure actPostExecute(Sender: TObject);
  private
    { Private declarations }
    function GetFecha: TDateTime;
    function GetImporte: Extended;
    function GetSaldoInsoluto: Extended;
    procedure SetFecha(const Value: TDateTime);
    procedure SetImporte(const Value: Extended);
    function GetTipo: Integer;
    procedure SetTipo(const Value: Integer);
  public
    { Public declarations }
    function Execute: Boolean;
    property SaldoInsoluto: Extended read GetSaldoInsoluto;
    property Fecha: TDateTime read GetFecha write SetFecha;
    property Importe: Extended read GetImporte write SetImporte;
    property Tipo: Integer read GetTipo write SetTipo;
  end;

implementation

{$R *.dfm}

uses AbonarCapitalDM;

{ TfrmAbonarCapitalEdit }

procedure TfrmAbonarCapitalEdit.actPostExecute(Sender: TObject);
begin
  if Importe > SaldoInsoluto then
    ShowMessage('El importe es mayor')
  else
    inherited;
end;

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

function TfrmAbonarCapitalEdit.GetSaldoInsoluto: Extended;
begin
  Result:= DataSource.DataSet.FieldByName('SaldoInsoluto').AsExtended;
end;

function TfrmAbonarCapitalEdit.GetTipo: Integer;
begin
  Result:= cbxTipo.ItemIndex;
end;

procedure TfrmAbonarCapitalEdit.SetFecha(const Value: TDateTime);
begin
  edtFecha.EditValue := Value
end;

procedure TfrmAbonarCapitalEdit.SetImporte(const Value: Extended);
begin
  edtImporte.EditValue := Value
end;

procedure TfrmAbonarCapitalEdit.SetTipo(const Value: Integer);
begin
  cbxTipo.ItemIndex:= Value;
end;

end.
