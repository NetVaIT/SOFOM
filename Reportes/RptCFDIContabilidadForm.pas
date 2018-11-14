unit RptCFDIContabilidadForm;

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
  Vcl.ExtCtrls, cxTextEdit, cxCalendar, cxCheckBox, cxBarEditItem,
  cxPropertiesStore;

type
  TfrmRptCFDIContabilidad = class(T_frmGrid)
    edtCliente: TcxBarEditItem;
    edtDesde: TcxBarEditItem;
    edtHasta: TcxBarEditItem;
    edtUsarFecha: TcxBarEditItem;
    tvMasterIdCFDI: TcxGridDBColumn;
    tvMasterIdCFDITipoDocumento: TcxGridDBColumn;
    tvMasterFecha: TcxGridDBColumn;
    tvMasterFolio: TcxGridDBColumn;
    tvMasterUUID_TB: TcxGridDBColumn;
    tvMasterTipo: TcxGridDBColumn;
    tvMasterEstatus: TcxGridDBColumn;
    tvMasterCliente: TcxGridDBColumn;
    tvMasterTipoContrato: TcxGridDBColumn;
    tvMasterSIN_ASIGNAR: TcxGridDBColumn;
    tvMasterCS_INT: TcxGridDBColumn;
    tvMasterCS_ENGANCHE: TcxGridDBColumn;
    tvMasterCS_COM_APER: TcxGridDBColumn;
    tvMasterCS_GASTOSADM: TcxGridDBColumn;
    tvMasterCS_ABONOCAP: TcxGridDBColumn;
    tvMasterCS_INTM: TcxGridDBColumn;
    tvMasterCS_VR: TcxGridDBColumn;
    tvMasterCS_OC: TcxGridDBColumn;
    tvMasterAF_CAP: TcxGridDBColumn;
    tvMasterAF_INT: TcxGridDBColumn;
    tvMasterAF_ENGANCHE: TcxGridDBColumn;
    tvMasterAF_COM_APER: TcxGridDBColumn;
    tvMasterAF_GASTOSADM: TcxGridDBColumn;
    tvMasterAF_ABONOCAP: TcxGridDBColumn;
    tvMasterAF_INTM: TcxGridDBColumn;
    tvMasterAF_VR: TcxGridDBColumn;
    tvMasterAF_OC: TcxGridDBColumn;
    tvMasterAP_RENTA: TcxGridDBColumn;
    tvMasterAP_ENGANCHE: TcxGridDBColumn;
    tvMasterAP_COM_APER: TcxGridDBColumn;
    tvMasterAP_GASTOSADM: TcxGridDBColumn;
    tvMasterAP_ABONOCAP: TcxGridDBColumn;
    tvMasterAP_INTM: TcxGridDBColumn;
    tvMasterAP_VR: TcxGridDBColumn;
    tvMasterAP_OC: TcxGridDBColumn;
    tvMasterSubTotal: TcxGridDBColumn;
    tvMasterDescto: TcxGridDBColumn;
    tvMasterTotalImpuestoTrasladado: TcxGridDBColumn;
    tvMasterTotal: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    function GetCliente: string;
    function GetDesde: TDateTime;
    function GetHasta: TDateTime;
    function GetUsarFecha: Boolean;
    procedure SetCliente(const Value: string);
    procedure SetDesde(const Value: TDateTime);
    procedure SetHasta(const Value: TDateTime);
    procedure SetUsarFecha(const Value: Boolean);
  public
    { Public declarations }
    property Cliente: string read GetCliente write SetCliente;
    property Desde: TDateTime read GetDesde write SetDesde;
    property Hasta: TDateTime read GetHasta write SetHasta;
    property UsarFecha: Boolean read GetUsarFecha write SetUsarFecha;
  end;

implementation

{$R *.dfm}

uses RptCFDIContabilidadDM;

{ TfrmRptCFDIContabilidad }

procedure TfrmRptCFDIContabilidad.FormCreate(Sender: TObject);
var
  Year, Month, Day: Word;
begin
  inherited;
  DecodeDate(Date, year, month, day);
  Desde := EncodeDate(Year, Month, 1);
  Hasta := EncodeDate(Year, Month, DaysInMonth(Date));
  Cliente := EmptyStr;
end;

function TfrmRptCFDIContabilidad.GetCliente: string;
begin
  Result:= edtCliente.EditValue;
end;

function TfrmRptCFDIContabilidad.GetDesde: TDateTime;
begin
  Result := edtDesde.EditValue;
end;

function TfrmRptCFDIContabilidad.GetHasta: TDateTime;
begin
  Result := edtHasta.EditValue;
end;

function TfrmRptCFDIContabilidad.GetUsarFecha: Boolean;
begin
  Result := edtUsarFecha.EditValue;
end;

procedure TfrmRptCFDIContabilidad.SetCliente(const Value: string);
begin
  edtCliente.EditValue:= Value;
end;

procedure TfrmRptCFDIContabilidad.SetDesde(const Value: TDateTime);
begin
  edtDesde.EditValue := Value;
end;

procedure TfrmRptCFDIContabilidad.SetHasta(const Value: TDateTime);
begin
  edtHasta.EditValue := Value;
end;

procedure TfrmRptCFDIContabilidad.SetUsarFecha(const Value: Boolean);
begin
  edtUsarFecha.EditValue := Value;
end;

end.
