unit CuentasXCobrarForm;

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
  Vcl.ExtCtrls, cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, Vcl.Buttons,Data.Win.ADODB;

type
  TFrmConCuentasXCobrar = class(T_frmGrid)
    tvMasterIdCuentaXCobrarEstatus: TcxGridDBColumn;
    tvMasterIdPersona: TcxGridDBColumn;
    tvMasterIdAnexosAmortizaciones: TcxGridDBColumn;
    tvMasterFecha: TcxGridDBColumn;
    tvMasterImporte: TcxGridDBColumn;
    tvMasterImpuesto: TcxGridDBColumn;
    tvMasterInteres: TcxGridDBColumn;
    tvMasterTotal: TcxGridDBColumn;
    tvMasterSaldo: TcxGridDBColumn;
    tvMasterEstatusCXC: TcxGridDBColumn;
    tvMasterCliente: TcxGridDBColumn;
    dxBarButton8: TdxBarButton;
    dxBtnPrefacturas: TdxBarButton;
    tvMasterIdCuentaXCobrar: TcxGridDBColumn;
    dxBrBtnMoratorios: TdxBarButton;
    dxBrBtnGenerarCXC: TdxBarButton;
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
    tvMasterSaldoFactoraje: TcxGridDBColumn;
    tvMasterIdAnexo: TcxGridDBColumn;
    ChckBxMostrarMoratorios: TCheckBox;
    tvMasterIdCFDI: TcxGridDBColumn;
    tvMasterIdCuentaXCobrarBase: TcxGridDBColumn;
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure SpdBtnBuscarClick(Sender: TObject);
    procedure EdtNombreChange(Sender: TObject);
  private
    FActGeneraPrefactura: TBasicAction;
    FActActualizaMoratorios: TBasicAction;
    FActGeneraCXC: TBasicAction;
    ffiltroNombre: String;
    ffiltroFecha: String;
    ffiltro: String;
    procedure SetActGeneraPrefactura(const Value: TBasicAction);
    procedure SetActActualizaMoratorios(const Value: TBasicAction);
    procedure SetActGeneraCXC(const Value: TBasicAction);
    function GetFFiltroNombre: String;//Feb 8/17
    procedure PoneFiltro; //Mar 9/17
    { Private declarations }
  public
    { Public declarations }
    property ActGenerarPrefactura : TBasicAction read FActGeneraPrefactura write SetActGeneraPrefactura;
    property ActActualizaMoratorios : TBasicAction read FActActualizaMoratorios write SetActActualizaMoratorios;  //Feb 8/17
    property ActGenerarCXCs : TBasicAction read FActGeneraCXC write SetActGeneraCXC;  //Feb 14/17

    property FiltroFecha: String read ffiltroFecha write ffiltroFecha; //Mar 9/17
    property FiltroNombre:String read GetFFiltroNombre write ffiltroNombre;
    property FiltroCon:String read ffiltro write ffiltro;
  end;

var
  FrmConCuentasXCobrar: TFrmConCuentasXCobrar;

implementation

{$R *.dfm}

uses CuentasXCobrarDM, CuentasXCobrarEdit;

{ TFrmConCuentasXCobrar }

procedure TFrmConCuentasXCobrar.DataSourceDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  dxBtnPrefacturas.Enabled:=datasource.DataSet.FieldByName('IDCuentaXCobrarEstatus').AsInteger=-1;  //Dic 7/16 Precargada
end;

procedure TFrmConCuentasXCobrar.EdtNombreChange(Sender: TObject);
begin
  inherited;
  if  edtNombre.Text<>'' then
  begin
    FfiltroNombre:=' inner join Personas P On P.IdPersona=CXC.IdPersona and P.RazonSocial Like ''%'+edtNombre.Text+'%''';
  end
  else
    FfiltroNombre:='';
end;

procedure TFrmConCuentasXCobrar.FormCreate(Sender: TObject);
var         //mar 9/17
  a,m,d:Word;
  FechaAux:TDAteTime;
begin
  inherited;
  gEditForm:= TFrmEdCuentasXCobrar.Create(Self);
  //Desde aca Mar 9/17
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

  SpdBtnBuscarClick(SpdBtnBuscar); //Mar 10/17
end;

function TFrmConCuentasXCobrar.GetFFiltroNombre: String;
begin
  Result := ffiltroNombre;
end;

procedure TFrmConCuentasXCobrar.PoneFiltro; //Mar 9/17
var
  Aux:string;
begin
  Aux:='where';
  if ChckBxXFecha.Checked then
    ffiltroFecha:=' Fecha >:Fini and Fecha<:FFin '
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

procedure TFrmConCuentasXCobrar.SetActActualizaMoratorios(   //Feb 8/17
  const Value: TBasicAction);
begin
  FActActualizaMoratorios := Value;
  dxBrBtnMoratorios.Action:=VAlue;
  dxBrBtnMoratorios.ImageIndex:=18;
end;

procedure TFrmConCuentasXCobrar.SetActGeneraCXC(const Value: TBasicAction);
begin
  FActGeneraCXC := Value;
  dxBrBtnGenerarCXC.Action:=Value;
  dxBrBtnGenerarCXC.ImageIndex:=19;
end;

procedure TFrmConCuentasXCobrar.SetActGeneraPrefactura(
  const Value: TBasicAction);
begin
  FActGeneraPrefactura := Value;
  dxBtnPrefacturas.Action:=Value;
  dxBtnPrefacturas.ImageIndex:=17;
end;

procedure TFrmConCuentasXCobrar.SpdBtnBuscarClick(Sender: TObject);
const  //Mar 9/17
   TxtSQL='select IdCuentaXCobrar, IdCuentaXCobrarEstatus, CXC.IdPersona,'+
          'IdAnexosAmortizaciones, Fecha, Importe, Impuesto, Interes,' +
          'Total, CXC.Saldo, SaldoFactoraje, IdCFDI, IDAnexo, CXC.IdCuentaXCobrarBase, '
          +' ''Interés Moratorio'' as Descripcion from CuentasXCobrar CXC ';
   whereNoMora=' EsMoratorio=0';
   whereMora=' EsMoratorio=1';

   orden=' order by   IdAnexo, IDAnexosAmortizaciones'; //Mar 27/17
begin
  inherited;

  PoneFiltro;
   //Mar 30/17 Desde
  if ChckBxMostrarMoratorios.Checked then
  begin
    if ffiltro<>'' then
       Ffiltro:=Ffiltro +' and '+WhereMora
    else
      FFiltro:=' where '+WhereMora;
  end
  else
  begin
    if ffiltro<>'' then
       Ffiltro:=Ffiltro +' and '+WhereNoMora
    else
      FFiltro:=' where '+WhereNoMora;
  end;
     //Mar 30/17 hasta

  Tadodataset(datasource.DataSet).Close;
  Tadodataset(datasource.DataSet).CommandText:=TxtSQL+ ffiltroNombre+ffiltro+ orden; //Mar 27/17
 // ShowMessage(TxtSQL+ ffiltroNombre+ffiltro);
  if ffiltroFecha <>''then
  begin
    Tadodataset(datasource.DataSet).Parameters.ParamByName('FIni').Value:=cxDtEdtDesde.Date;
    Tadodataset(datasource.DataSet).Parameters.ParamByName('FFin').Value:=cxDtEdtHasta.Date+1;

  end;

  Tadodataset(datasource.DataSet).open;
end;

end.
