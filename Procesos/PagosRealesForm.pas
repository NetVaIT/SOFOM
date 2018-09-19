unit PagosRealesForm;

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
  TFrmConPagosReales = class(T_frmGrid)
    tvMasterIDPagoReal: TcxGridDBColumn;
    tvMasterIdPersonaCliente: TcxGridDBColumn;
    tvMasterIdBanco: TcxGridDBColumn;
    tvMasterFechaPago: TcxGridDBColumn;
    tvMasterReferencia: TcxGridDBColumn;
    tvMasterImporte: TcxGridDBColumn;
    tvMasterSaldo: TcxGridDBColumn;
    tvMasterIdMoneda: TcxGridDBColumn;
    tvMasterIdFormaPago33: TcxGridDBColumn;
    tvMasterIdCuentaBancoOrdenante: TcxGridDBColumn;
    tvMasterIdCuentaBancoBeneficiario: TcxGridDBColumn;
    tvMasterIdCFDITipoCadenaTipo: TcxGridDBColumn;
    tvMasterCertificado: TcxGridDBColumn;
    tvMasterCadena: TcxGridDBColumn;
    tvMasterSello: TcxGridDBColumn;
    tvMasterMoneda: TcxGridDBColumn;
    tvMasterFormaPago: TcxGridDBColumn;
    tvMasterBanco: TcxGridDBColumn;
    tvMasterCliente: TcxGridDBColumn;
    tvMasterCuentaOrdenante: TcxGridDBColumn;
    tvMasterCuentaBeneficiario: TcxGridDBColumn;
    tvMasterTipoCadena: TcxGridDBColumn;
    dxBrBtnFragmentaPago: TdxBarButton;
    DSPagosFragmento: TDataSource;
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
    ChckBxDeposito: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
    procedure SpdBtnBuscarClick(Sender: TObject);
    procedure EdtNombreChange(Sender: TObject);
  private
    FactAddCuentaOrdenante: TBasicAction;
    FactFragmentaPago: TBasicAction;
    FPuedeCambiar: Boolean;
    FCFecIni: TDAteTime;
    FCFecFin: TDAteTime;
    FCUsaFEcha: boolean;
    FCClienteTxt: String;
    FSoloDepGar: boolean;
    FCConSaldo: boolean;
    ffiltroNombre: String;
    ffiltroFecha: String;
    ffiltro: String;
    procedure SetFactFragmentaPago(const Value: TBasicAction);
    procedure SETFPuedeCAmbiar(const Value: Boolean);
    procedure SETFCFecIni(const Value: TDAteTime);
    procedure SETFCClienteTxt(const Value: String);
    procedure SETFCConSaldo(const Value: boolean);
    procedure SETFCFecFin(const Value: TDAteTime);
    procedure SETFCUsaFEcha(const Value: boolean);
    procedure SETFSoloDepGar(const Value: boolean);
    function GetFFiltroNombre: String;
    procedure PoneFiltro;
    function GetFCFecIni: TDAteTime;
    function GetFCClienteTxt: String;
    function GetFCConSaldo: boolean;
    function GEtFCFecFin: TDAteTime;
    function GEtFCUsaFEcha: boolean;
    function GetFSoloDepGar: boolean;
    { Private declarations }
  public
    { Public declarations }
    property actAddCuentaOrdenante: TBasicAction read FactAddCuentaOrdenante write FactAddCuentaOrdenante;
    property actFragmentaPago: TBasicAction read FactFragmentaPago write SetFactFragmentaPago;
    Property PuedeCambiar:Boolean  read FPuedeCambiar write SETFPuedeCAmbiar;  //Ago 27/18
    //Para consultas Sep 3/18
    Property CFechaIni:TDAteTime read GetFCFecIni write SETFCFecIni;
    Property CFechaFin:TDAteTime read GEtFCFecFin write SETFCFecFin;
    Property CClienteTxt:String read GetFCClienteTxt write SETFCClienteTxt;
    Property CUsaFecha:boolean read GEtFCUsaFEcha write SETFCUsaFEcha;
    Property CConSaldo:boolean read GetFCConSaldo write SETFCConSaldo;
    property CSoloDepGar:boolean read GetFSoloDepGar write SETFSoloDepGar;

    property FiltroCon:String read ffiltro write ffiltro;             //Copiaco de Pagos sep 3/18
    property FiltroFecha: String read ffiltroFecha write ffiltroFecha;
    property FiltroNombre:String read GetFFiltroNombre write ffiltroNombre;
  end;

var
  FrmConPagosReales: TFrmConPagosReales;

implementation

{$R *.dfm}

uses PagosRealesDM, PagosRealesEdit, _ConectionDmod;

procedure TFrmConPagosReales.DataSourceDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if (DSPagosFragmento.DataSet<>nil)  and (DSPagosFragmento.DataSet.state <>dsInactive) then
    PuedeCambiar:= DSPagosFragmento.DataSet.RecordCount<=1 ;

end;

procedure TFrmConPagosReales.EdtNombreChange(Sender: TObject);
begin
  inherited;
 if  edtNombre.Text<>'' then
  begin
   // FfiltroNombre:=' INNER JOIN Personas AS P ON P.IdPersona = PR.IdPersonaCliente AND P.RazonSocial LIKE ''%'+edtNombre.Text+'%''';
    FfiltroNombre:=' PR.IdPersonaCliente IN (SELECT IdPersona FROM Personas WHERE RazonSocial LIKE ''%' +edtNombre.Text+'%'') ';
  end
  else
    FfiltroNombre:='';
end;

procedure TFrmConPagosReales.FormCreate(Sender: TObject);
  var   //Copia dePagos Sep 3/18
  a,m,d:Word;
  FechaAux:TDAteTime;
begin
  inherited;
  gEditForm:= TFrmEdPagosReales.Create(Self);

             //May 26/17  Date
(*  DEcodeDate(_DmConection.LafechaActual,a,m,d);
  cxDtEdtDesde.Date:=EncodeDate(a,m,1);
  m:=m+1;
  if m=13 then
  begin
    m:=1;
    a:=a+1;
  end;
  FechaAux:=EncodeDate(a,m,1);
  FechaAux:=FechaAux-1;  //Día anterior
  cxDtEdtHasta.Date:=FechaAux;  *)
 // SpdBtnBuscarClick(SpdBtnBuscar); //mar 10/17

end;


procedure TFrmConPagosReales.PoneFiltro;
var
  Aux:string;
  FiltroDepo:String;  //Aca no es
begin
  if ChckBxDeposito.Checked then    //No se usara sep 3/18
    FiltroDepo:=' PP.EsDeposito = 1 '
  else
    FiltroDepo:='';

  Aux:='where';
  if ChckBxXFecha.Checked then
    ffiltroFecha:=' PR.FechaPago >=:Fini and PR.FechaPago<:FFin '
  else
    ffiltroFecha:='';
  Aux:=Aux+ffiltroFecha;
  if ChckBxConSaldo.Checked then
    Ffiltro:=' PR.Saldo > 0.01 ' //0.0001
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

  if FiltroDepo <> '' then   //Jun 29/17   //No usado
  begin
    if Ffiltro<>'' then
    begin
      FFiltro:=FFiltro +' and '+FiltroDepo;
    end
    else
      if Aux='where'then
        ffiltro:=Aux + FiltroDepo
      else
        ffiltro:= aux+ ' and '+FiltroDepo;
  end;

end;

procedure TFrmConPagosReales.FormShow(Sender: TObject);
begin
  inherited;

  TFrmEdPagosReales(gEditForm).PuedeCambiar:= PuedeCambiar;

end;

function TFrmConPagosReales.GetFCClienteTxt: String;
begin
  Result:=EdtNombre.Text;
end;

function TFrmConPagosReales.GetFCConSaldo: boolean;
begin
  REsult:=ChckBxConSaldo.Checked;
end;

function TFrmConPagosReales.GEtFCFecFin: TDAteTime;
begin
  REsult:=cxDtEdtHasta.Date;
end;

function TFrmConPagosReales.GetFCFecIni: TDAteTime;
begin

  REsult:=cxDtEdtDesde.Date;
end;

function TFrmConPagosReales.GEtFCUsaFEcha: boolean;
begin
  result:=ChckBxXFecha.Checked;
end;

function TFrmConPagosReales.GetFFiltroNombre: String;
begin
  Result := ffiltroNombre;
end;

function TFrmConPagosReales.GetFSoloDepGar: boolean;
begin
   result:=ChckBxDeposito.Checked;
end;

procedure TFrmConPagosReales.SetFactFragmentaPago(const Value: TBasicAction);
begin
  FactFragmentaPago := Value;
  dxBrBtnFragmentaPago.action:=Value;
  dxBrBtnFragmentaPago.ImageIndex:=17;
end;

procedure TFrmConPagosReales.SETFCClienteTxt(const Value: String);
begin
  FCClienteTxt := Value;
  EdtNombre.Text:=Value;
end;

procedure TFrmConPagosReales.SETFCConSaldo(const Value: boolean);
begin
  FCConSaldo := Value;
  ChckBxConSaldo.Checked:=Value;
end;

procedure TFrmConPagosReales.SETFCFecFin(const Value: TDAteTime);
begin
  FCFecFin := Value;
  cxDtEdtHasta.Date:=Value;
end;

procedure TFrmConPagosReales.SETFCFecIni(const Value: TDAteTime);
begin
  FCFecIni := Value;
  cxDtEdtDesde.Date:=Value;
end;

procedure TFrmConPagosReales.SETFCUsaFEcha(const Value: boolean);
begin
  FCUsaFEcha := Value;
  ChckBxXFecha.Checked:=Value;
end;

procedure TFrmConPagosReales.SETFPuedeCAmbiar(const Value: Boolean);
begin
  FPuedeCambiar := Value;
  if gEditForm  <>nil then
    TFrmEdPagosReales(gEditForm).PuedeCambiar:= Value;
end;

procedure TFrmConPagosReales.SETFSoloDepGar(const Value: boolean);
begin
  FSoloDepGar := Value;
  ChckBxDeposito.Checked:=Value;
end;

procedure TFrmConPagosReales.SpdBtnBuscarClick(Sender: TObject);
  //FAlta programar
{const   //DEbe cambiar sep 3/18
  TxtSQL='SELECT PA.IdPago, PA.IdBanco, PA.IdPersonaCliente, PA.IdCuentaBancariaEstadoCuenta, PA.IdMetodoPago, PA.IdCFDIFormaPago33, PA.IdCuentaBancariaOrdenante, PA.IdCuentaBancariaBeneficiario, PA.IdCFDITipoCadenaPago, ' +
  'PA.IdContrato, PA.IdAnexo, PA.IdCFDI_NCR, PA.IdMonedaOrigen, PA.FechaPago, PA.FolioPago, PA.SeriePago, PA.Referencia, PA.Importe, PA.Saldo, PA.Observaciones, PA.CuentaPago, PA.OrigenPago, PA.EsDeposito, ' +
  'PA.Certificado, PA.Cadena, PA.Sello, dbo.CanGenerarCFDIPago(PA.IdPago) AS GenerarCFDIPago ' +
  'FROM Pagos AS PA ';     }

const   //DEbe cambiar sep 3/18
  TxtSQL='select IDPagoReal, IdPersonaCliente, IdBanco, FechaPago, Referencia, '+
  ' Importe, Saldo, IdMoneda, IdFormaPago33, IdCuentaBancoOrdenante, IdCuentaBancoBeneficiario'+
  ', IdCFDITipoCadenaPago, Certificado, Cadena, Sello,EsNotaCredito, IdCuentaBancariaEstadoCuenta, IDCFDI_NCR'+
  ' from PagosReales  AS PR ';

begin
  inherited;
  PoneFiltro;
  Tadodataset(datasource.DataSet).Close;
  if (ffiltroNombre <>'') then    //sep 6/18
  begin
    if (ffiltro ='') then
      Tadodataset(datasource.DataSet).CommandText:=TxtSQL+' where '+ ffiltroNombre
    else
      Tadodataset(datasource.DataSet).CommandText:=TxtSQL+ ffiltro+' and '+ ffiltroNombre;
  end
  else
    Tadodataset(datasource.DataSet).CommandText:=TxtSQL+ ffiltro;
                                                       //Se movio de lugar
 // Tadodataset(datasource.DataSet).CommandText:=TxtSQL+ ffiltro+ffiltroNombre;
 // ShowMessage(TxtSQL+ ffiltroNombre+ffiltro);
  if ffiltroFecha <>''then
  begin
    Tadodataset(datasource.DataSet).Parameters.ParamByName('FIni').Value:=cxDtEdtDesde.Date;
    Tadodataset(datasource.DataSet).Parameters.ParamByName('FFin').Value:=cxDtEdtHasta.Date+1;
  end;
  Tadodataset(datasource.DataSet).open;
end;

end.
