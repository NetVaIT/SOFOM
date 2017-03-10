unit PagosForm;

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
  cxGridDBTableView, dxPSCore, dxPScxCommon, dxBar, Vcl.ImgList,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxClasses, Vcl.StdActns, Vcl.DBActns,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, cxGridLevel, cxGridCustomView,
  cxGrid, Vcl.ExtCtrls,Data.Win.ADODB, cxContainer, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, Vcl.Buttons;

type
  TFrmConPagos = class(T_frmGrid)
    tvMasterIdPago: TcxGridDBColumn;
    tvMasterIdBanco: TcxGridDBColumn;
    tvMasterIdPersonaCliente: TcxGridDBColumn;
    tvMasterIdCuentaBancariaEstadoCuenta: TcxGridDBColumn;
    tvMasterFechaPago: TcxGridDBColumn;
    tvMasterFolioPago: TcxGridDBColumn;
    tvMasterSeriePago: TcxGridDBColumn;
    tvMasterReferencia: TcxGridDBColumn;
    tvMasterImporte: TcxGridDBColumn;
    tvMasterSaldo: TcxGridDBColumn;
    tvMasterObservaciones: TcxGridDBColumn;
    tvMasterBanco: TcxGridDBColumn;
    tvMasterCliente: TcxGridDBColumn;
    dxBrBtnAplicaicones: TdxBarButton;
    dsConCXCPendientes: TDataSource;
    DSDetallesCXC: TDataSource;
    DSAplicacion: TDataSource;
    DSPersonas: TDataSource;
    PnlBusqueda: TPanel;
    Button1: TButton;
    Panel1: TPanel;
    Label3: TLabel;
    EdtNombre: TEdit;
    PnlFechas: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    SpdBtnBuscar: TSpeedButton;
    cxDtEdtDesde: TcxDateEdit;
    cxDtEdtHasta: TcxDateEdit;
    ChckBxXFecha: TCheckBox;
    ChckBxConSaldo: TCheckBox;
    ActFacturaMorato: TAction;
    DSDetalleMostrar: TDataSource;
    dxbbAbonarCapital: TdxBarButton;
    DSAnexos: TDataSource;
    tvMasterIdMetodoPago: TcxGridDBColumn;
    tvMasterCuentaPago: TcxGridDBColumn;
    tvMasterMetodoPago: TcxGridDBColumn;
    tvMasterOrigenPago: TcxGridDBColumn;
    tvMasterIdContrato: TcxGridDBColumn;
    tvMasterIdAnexo: TcxGridDBColumn;
    tvMasterAnexo: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure dxBrBtnAplicaiconesClick(Sender: TObject);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
    procedure SpdBtnBuscarClick(Sender: TObject);
    procedure EdtNombreChange(Sender: TObject);
  private
    ffiltroNombre: String;
    ffiltroFecha: String;
    ffiltro: String;
    FactAbonarCapital: TBasicAction;
    function GetFFiltroNombre: String;

    procedure PoneFiltro;
    procedure SetactAbonarCapital(const Value: TBasicAction);
    { Private declarations }
  public
    { Public declarations }
    property FiltroCon:String read ffiltro write ffiltro;
    property FiltroFecha: String read ffiltroFecha write ffiltroFecha;
    property FiltroNombre:String read GetFFiltroNombre write ffiltroNombre;
    property actAbonarCapital: TBasicAction read FactAbonarCapital write SetactAbonarCapital;
  end;

var
  FrmConPagos: TFrmConPagos;

implementation

{$R *.dfm}

uses PagosDM, PagosEdit, AplicacionPagos;

procedure TFrmConPagos.DataSourceDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  dxBrBtnAplicaicones.Enabled:= DataSource.DataSet.FieldByName('Saldo').AsFloat>0.0001;   //Verificar que cambia && ene 13 /17
end;

procedure TFrmConPagos.dxBrBtnAplicaiconesClick(Sender: TObject);
var FrmAplicacionPago:TFrmAplicacionPago;
begin
  inherited;
  if datasource.State in [dsEdit, DSInsert] then
     datasource.DataSet.Post;

  dsConCXCPendientes.DataSet.Close;
  dsConCXCPendientes.DataSet.Open;
  if dsConCXCPendientes.DataSet.Eof then
  begin
    ShowMessage('No existen Cuentas Por Cobrar pendientes de Pago para ese Cliente');
  end
  else
  begin
    FrmAplicacionPago:=TFrmAplicacionPago.create(self);
    FrmAplicacionPago.ActFacturaMora:= ActFacturaMorato;
    FrmAplicacionPago.EsFactoraje:= Datasource.DataSet.FieldByName('OrigenPago').AsInteger=1; //Ene 13/17
    FrmAplicacionPago.LblaplicandoFactoraje.Visible:= Datasource.DataSet.FieldByName('OrigenPago').AsInteger=1; //Ene 13/17

    FrmAplicacionPago.LblImpAplicaNormal.Visible:= Datasource.DataSet.FieldByName('OrigenPago').AsInteger=0;
    FrmAplicacionPago.LblEtiquetaFacto.Visible:= Datasource.DataSet.FieldByName('OrigenPago').AsInteger=1;
    FrmAplicacionPago.cxDBTxtEdtImporteAplicar.Visible:= Datasource.DataSet.FieldByName('OrigenPago').AsInteger=0;
    FrmAplicacionPago.cxDBTxtEdtImporteAplicaFactoraje.Visible:= Datasource.DataSet.FieldByName('OrigenPago').AsInteger=1;

    FrmAplicacionPago.DSPago.DataSet:=Datasource.DataSet;
    FrmAplicacionPago.dsConCXCPendientes.DataSet:=dsConCXCPendientes.DataSet;
    FrmAplicacionPago.DSDetallesCXC.dataset:=DSDetallesCXC.DataSet;
    FrmAplicacionPago.DSDetalleMostrar.dataset:=DSDetalleMostrar.DataSet;   //Agregado Feb 16/17

    FrmAplicacionPago.DSAplicacion.DataSet:=DSAplicacion.DataSet;
    FrmAplicacionPago.dsConCXCPendientes.DataSet.Open;
    FrmAplicacionPago.DSDetalleMostrar.dataset.Open;   //Agregado Feb 16/17
    FrmAplicacionPago.DSDetallesCXC.DataSet.Open;
    FrmAplicacionPago.DSAplicacion.DataSet.Open;
    FrmAplicacionPago.DSAplicacion.DataSet.insert;
    FrmAplicacionPago.ShowModal;
    FrmAplicacionPago.Free;
  end;
  dsConCXCPendientes.DataSet.Close;
end;

procedure TFrmConPagos.EdtNombreChange(Sender: TObject);
begin
  inherited;
  if  edtNombre.Text<>'' then
  begin
    FfiltroNombre:=' inner join Personas P On P.IdPersona=Pa.IdPersonaCliente and P.RazonSocial Like ''%'+edtNombre.Text+'%''';
  end
  else
    FfiltroNombre:='';
end;

procedure TFrmConPagos.FormCreate(Sender: TObject);
var         //Dic 20/16
  a,m,d:Word;
  FechaAux:TDAteTime;
begin
  inherited;
  gEditForm:= TfrmEdPagos.Create(Self);
  TfrmEdPagos(gEditForm).DSPersonas.DataSet:=DSPersonas.DataSet;
  TfrmEdPagos(gEditForm).DSAnexos.DataSet:=DSAnexos.DataSet;  //Mar 9/17

  DEcodeDate(Date,a,m,d);
  cxDtEdtDesde.Date:=EncodeDate(a,m,1);
  m:=m+1;
  if m=13 then
  begin
    m:=1;
    a:=a+1;
  end;
  FechaAux:=EncodeDate(a,m,1);
  FechaAux:=FechaAux-1;  //Día anterior
  cxDtEdtHasta.Date:=FechaAux;

end;

function TFrmConPagos.GetFFiltroNombre: String;
begin
  Result := ffiltroNombre;
end;

procedure TFrmConPagos.PoneFiltro;
var
  Aux:string;
begin
  Aux:='where';
  if ChckBxXFecha.Checked then
    ffiltroFecha:=' FechaPago >:Fini and FechaPago<:FFin '
  else
    ffiltroFecha:='';
  Aux:=Aux+ffiltroFecha;
  if ChckBxConSaldo.Checked then
    Ffiltro:=' Saldo > 0.0001 '
  else
    Ffiltro:='';

  if ffiltro<>'' then
  begin
    if Aux='where'then
     FFiltro:=Aux+FFiltro
    else
      FFiltro:= Aux+ 'and'+FFiltro;
  end
  else
    if Aux<>'where'then
      ffiltro:=Aux;
end;

procedure TFrmConPagos.SetactAbonarCapital(const Value: TBasicAction);
begin
  FactAbonarCapital := Value;
  dxbbAbonarCapital.Action := Value;
end;

procedure TFrmConPagos.SpdBtnBuscarClick(Sender: TObject);
const  //Dic 20/16
   TxtSQL='select  IdPago, IdBanco, IdPersonaCliente, IdCuentaBancariaEstadoCuenta,'+
          'FechaPago, FolioPago, SeriePago, Referencia, Importe, Saldo, Observaciones,' +
          'PA.IdMetodoPago, CuentaPago, OrigenPago, IDContrato, IDAnexo from Pagos PA ';

begin
  inherited;
  PoneFiltro;
  Tadodataset(datasource.DataSet).Close;
  Tadodataset(datasource.DataSet).CommandText:=TxtSQL+ ffiltroNombre+ffiltro;
 // ShowMessage(TxtSQL+ ffiltroNombre+ffiltro);
  if ffiltroFecha <>''then
  begin
    Tadodataset(datasource.DataSet).Parameters.ParamByName('FIni').Value:=cxDtEdtDesde.Date;
    Tadodataset(datasource.DataSet).Parameters.ParamByName('FFin').Value:=cxDtEdtHasta.Date+1;

  end;

  Tadodataset(datasource.DataSet).open;

end;

end.
