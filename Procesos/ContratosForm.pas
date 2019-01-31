unit ContratosForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, _GridForm, System.DateUtils, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, Data.DB, cxDBData, dxSkinsdxBarPainter, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxRibbonPainter,
  cxTextEdit, cxCalendar, cxCheckBox, dxBar, cxBarEditItem,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, dxPSCore,
  dxPScxCommon, Vcl.ImgList, cxGridCustomPopupMenu, cxGridPopupMenu, cxClasses,
  Vcl.StdActns, Vcl.DBActns, System.Actions, Vcl.ActnList, Vcl.StdCtrls,
  cxGridLevel, cxGridCustomView, cxGrid, Vcl.ExtCtrls, cxPropertiesStore;

type
  TfrmContratos = class(T_frmGrid)
    tvMasterIdContrato: TcxGridDBColumn;
    tvMasterIdPersona: TcxGridDBColumn;
    tvMasterIdContratoTipo: TcxGridDBColumn;
    tvMasterIdContratoEstatus: TcxGridDBColumn;
    tvMasterIdentificador: TcxGridDBColumn;
    tvMasterFecha: TcxGridDBColumn;
    tvMasterCliente: TcxGridDBColumn;
    tvMasterTipo: TcxGridDBColumn;
    tvMasterMontoAutorizado: TcxGridDBColumn;
    tvMasterEstatus: TcxGridDBColumn;
    dxbbCrearAnexo: TdxBarButton;
    tvMasterDiaCorte: TcxGridDBColumn;
    tvMasterDiaVencimiento: TcxGridDBColumn;
    edtCliente: TcxBarEditItem;
    edtDesde: TcxBarEditItem;
    edtHasta: TcxBarEditItem;
    edtUsarFecha: TcxBarEditItem;
    dxbEstadoCuenta: TdxBar;
    edtFecha: TcxBarEditItem;
    btnEstadoCuentaFuturo: TdxBarButton;
    procedure FormCreate(Sender: TObject);
  private
    FactCrearAnexo: TBasicAction;
    FactEstadoCuentaFuturo: TBasicAction;
    procedure SetactCrearAnexo(const Value: TBasicAction);
    function GetCliente: string;
    procedure SetCliente(const Value: string);
    function GetDesde: TDateTime;
    function GetHasta: TDateTime;
    function GetUsarFecha: Boolean;
    procedure SetDesde(const Value: TDateTime);
    procedure SetHasta(const Value: TDateTime);
    procedure SetUsarFecha(const Value: Boolean);
    function GetFecha: TDateTime;
    procedure SetactEstadoCuentaFuturo(const Value: TBasicAction);
    procedure SetFecha(const Value: TDateTime);
    { Private declarations }
  public
    { Public declarations }
    property Cliente: string read GetCliente write SetCliente;
    property Desde: TDateTime read GetDesde write SetDesde;
    property Hasta: TDateTime read GetHasta write SetHasta;
    property UsarFecha: Boolean read GetUsarFecha write SetUsarFecha;
    property Fecha: TDateTime read GetFecha write SetFecha;
    property actCrearAnexo: TBasicAction read FactCrearAnexo write SetactCrearAnexo;
    property actEstadoCuentaFuturo: TBasicAction read FactEstadoCuentaFuturo write SetactEstadoCuentaFuturo;
  end;

implementation

{$R *.dfm}

uses ContratosDM, ContratosEdit;

procedure TfrmContratos.FormCreate(Sender: TObject);
var
  Year, Month, Day: Word;
begin
  inherited;
  gEditForm:= TfrmContratosEdit.Create(Self);
  DecodeDate(Date, year, month, day);
  Desde := EncodeDate(Year, Month, 1);
  Hasta := EncodeDate(Year, Month, DaysInMonth(Date));
  Fecha := Hasta;
  Cliente := EmptyStr;
end;

function TfrmContratos.GetCliente: string;
begin
  Result:= edtCliente.EditValue;
end;

function TfrmContratos.GetDesde: TDateTime;
begin
  Result := edtDesde.EditValue;
end;

function TfrmContratos.GetFecha: TDateTime;
begin
  Result := edtFecha.EditValue;
end;

function TfrmContratos.GetHasta: TDateTime;
begin
  Result := edtHasta.EditValue;
end;

function TfrmContratos.GetUsarFecha: Boolean;
begin
  Result := edtUsarFecha.EditValue;
end;

procedure TfrmContratos.SetactCrearAnexo(const Value: TBasicAction);
begin
  FactCrearAnexo := Value;
  dxbbCrearAnexo.Action := Value;
end;

procedure TfrmContratos.SetactEstadoCuentaFuturo(const Value: TBasicAction);
begin
  FactEstadoCuentaFuturo := Value;
  btnEstadoCuentaFuturo.Action := Value;
end;

procedure TfrmContratos.SetCliente(const Value: string);
begin
  edtCliente.EditValue:= Value;
end;

procedure TfrmContratos.SetDesde(const Value: TDateTime);
begin
  edtDesde.EditValue := Value;
end;

procedure TfrmContratos.SetFecha(const Value: TDateTime);
begin
  edtFecha.EditValue := Value;
end;

procedure TfrmContratos.SetHasta(const Value: TDateTime);
begin
  edtHasta.EditValue := Value;
end;

procedure TfrmContratos.SetUsarFecha(const Value: Boolean);
begin
  edtUsarFecha.EditValue := Value;
end;

end.
