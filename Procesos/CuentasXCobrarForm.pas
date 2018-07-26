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
  cxMaskEdit, cxDropDownEdit, cxCalendar, Vcl.Buttons,Data.Win.ADODB, cxImage,
  cxLabel, cxBarEditItem;

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
    tvMasterFechaVencimiento: TcxGridDBColumn;
    cxBarEditItem1: TcxBarEditItem;
    cxBarEditItem2: TcxBarEditItem;
    dxBrBtnPuntoCXC: TdxBarButton;
    dxBrBtnPuntoMora: TdxBarButton;
    dxBrBtnPuntoFAct: TdxBarButton;
    DSAuxiliar: TDataSource;
    dxBrBtnActTotalesCXC: TdxBarButton;
    tvMasterEsMoratorio: TcxGridDBColumn;
    tvMasterAnexo: TcxGridDBColumn;
    tvMasterContrato: TcxGridDBColumn;
    ChckBxOpcionCompra: TCheckBox;
    tvMasterDescripcion: TcxGridDBColumn;
    dxBrBtnEstatus: TdxBarButton;
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure SpdBtnBuscarClick(Sender: TObject);
    procedure EdtNombreChange(Sender: TObject);
    procedure dxBrBtnPuntoFActClick(Sender: TObject);
    procedure DataSourceUpdateData(Sender: TObject);
    procedure dxBrBtnPuntoCXCClick(Sender: TObject);
    procedure dxBrBtnPuntoMoraClick(Sender: TObject);
    procedure ConsultarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FActGeneraPrefactura: TBasicAction;
    FActActualizaMoratorios: TBasicAction;
    FActGeneraCXC: TBasicAction;
    ffiltroNombre: String;
    ffiltroFecha: String;
    ffiltro: String;
    FTotalConMora: Double;
    FActCXCPendFact: TBasicAction;
    FactEliminar: TBasicAction;
    FActTotalesCXC: TBasicAction;   //Jul 10/17
    procedure SetActGeneraPrefactura(const Value: TBasicAction);
    procedure SetActActualizaMoratorios(const Value: TBasicAction);
    procedure SetActGeneraCXC(const Value: TBasicAction);
    function GetFFiltroNombre: String;//Feb 8/17
    procedure PoneFiltro;
    function VerificaCreacionHoy(tipo: Integer): TdxbarItemvisible;
    function GetFTotalConMora: Double;
    procedure SetActCXCPendFact(const Value: TBasicAction);
    procedure SetactEliminar(const Value: TBasicAction);
    procedure SetActTotalesCXC(const Value: TBasicAction);//Mar 9/17
  public
    { Public declarations }
    property ActGenerarPrefactura : TBasicAction read FActGeneraPrefactura write SetActGeneraPrefactura;
    property ActActualizaMoratorios : TBasicAction read FActActualizaMoratorios write SetActActualizaMoratorios;  //Feb 8/17
    property ActGenerarCXCs : TBasicAction read FActGeneraCXC write SetActGeneraCXC;  //Feb 14/17
    property ActTotalesCXC: TBasicAction read FActTotalesCXC write SetActTotalesCXC;
    property FiltroFecha: String read ffiltroFecha write ffiltroFecha; //Mar 9/17
    property FiltroNombre:String read GetFFiltroNombre write ffiltroNombre;
    property FiltroCon:String read ffiltro write ffiltro;
    property TotalConMora  :Double read GetFTotalConMora write FTotalConMora ;  //Jul 10/17
    property ActListaCXCPendFact : TBasicAction read FActCXCPendFact write SetActCXCPendFact;  //Feb 14/17
    property actEliminar: TBasicAction read FactEliminar write SetactEliminar;
  end;

implementation

{$R *.dfm}

uses CuentasXCobrarDM, CuentasXCobrarEdit, _ConectionDmod;

{ TFrmConCuentasXCobrar }

procedure TFrmConCuentasXCobrar.ConsultarClick(Sender: TObject);
begin
  inherited;
  if (Sender is TCheckbox) then
  case (Sender as TCheckbox).tag of
      3:
          if (Sender as TCheckbox).checked then
            ChckBxOpcionCompra.Checked:=False;

      4:
          if (Sender as TCheckbox).checked then
            ChckBxMostrarMoratorios.Checked:=False;
  end;
  SpdBtnBuscarClick(SpdBtnBuscar);//Abr 12/17
end;

procedure TFrmConCuentasXCobrar.DataSourceDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  dxBtnPrefacturas.Enabled:=(datasource.DataSet.FieldByName('IDCuentaXCobrarEstatus').AsInteger=-1)  //Dic 7/16 Precargada
                            and (not datasource.DataSet.FieldByName('Esmoratorio').ASBoolean); //Abr 12/17
  //datasource.DataSet.FieldByName('Esmoratorio').ASBoolean;
//  dxBrBtnPuntoFAct.Enabled:=dxBtnPrefacturas.Enabled;
  if not dxBtnPrefacturas.Enabled then
     dxBrBtnPuntoFAct.visible:=  ivnever
  else
     dxBrBtnPuntoFAct.visible:=  ivalways;

  dxBrBtnPuntoCXC.Visible :=  VerificaCreacionHoy(0);

  dxBrBtnPuntoMora.Visible := VerificaCreacionHoy(1);
   if not ( gEditForm=nil)  then                  //Jul 10/17
    TFrmEdCuentasXCobrar(gEditForm).TotalConMora:= TotalConMora;
end;

procedure TFrmConCuentasXCobrar.DataSourceUpdateData(Sender: TObject);
begin
  inherited;
  dxBrBtnPuntoCXC.Visible :=  VerificaCreacionHoy(0);
  dxBrBtnPuntoMora.Visible := VerificaCreacionHoy(1);
end;

function  TFrmConCuentasXCobrar.VerificaCreacionHoy(tipo:Integer) :TdxbarItemvisible; // Abr 11/17
var TipoTxt:String;
begin     //Por terminar...
  case Tipo of
  0:begin     //CuentasXCobrar
      TipoTxt:='CXC';
  end;
  1:begin     //Moratorios
      TipoTxt:='MORA';
     end;
  end;
  dsauxiliar.DataSet.Close;
  TadoQuery(dsauxiliar.DataSet).SQL.Clear;
  TadoQuery(dsauxiliar.DataSet).SQL.Add(' Select * from BitacoraGeneracion where Tipo = '''+TipoTxt+''' and FechaGeneracion =:IdFechaHoy ');
  TadoQuery(dsauxiliar.DataSet).Parameters.parambyname('IdFechahoy').Value:=_Dmconection.LaFechaActual;//date;
  TadoQuery(dsauxiliar.DataSet).Open;
  if TadoQuery(dsauxiliar.DataSet).eof then  //No existe
     Result:=ivAlways
  else
    Result:=ivNever;
end;

procedure TFrmConCuentasXCobrar.dxBrBtnPuntoCXCClick(Sender: TObject);
begin
  inherited;
  dxBrBtnGenerarCXC.Click; //Abr 11/17
end;

procedure TFrmConCuentasXCobrar.dxBrBtnPuntoFActClick(Sender: TObject);
begin
  inherited;
  dxBtnPrefacturas.Click;    //Abr 11/17
end;

procedure TFrmConCuentasXCobrar.dxBrBtnPuntoMoraClick(Sender: TObject);
begin
  inherited;
  dxBrBtnMoratorios.Click;    //Abr 11/17
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

  //Desde aca Mar 9/17 Date //May 26/17
  DEcodeDate(_DmConection.LafechaActual,a,m,d);
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
  dxBrBtnPuntoCXC.Visible :=  VerificaCreacionHoy(0); //Abr 11/17
  dxBrBtnPuntoMora.Visible := VerificaCreacionHoy(1);
end;

procedure TFrmConCuentasXCobrar.FormShow(Sender: TObject);
begin
  inherited;
   TFrmEdCuentasXCobrar(gEditForm).TotalConMora:= TotalConMora;
end;

function TFrmConCuentasXCobrar.GetFFiltroNombre: String;
begin
  Result := ffiltroNombre;
end;

function TFrmConCuentasXCobrar.GetFTotalConMora: Double;
begin
  Result := FTotalConMora;
end;

procedure TFrmConCuentasXCobrar.PoneFiltro; //Mar 9/17
var
  Aux:string;
begin
  Aux:='where';
  if ChckBxXFecha.Checked then
    ffiltroFecha:=' FechaVencimiento >=:Fini and FechaVencimiento<=:FFin '      // FV Abr 11/17    se le agrego el igual
  else
    ffiltroFecha:='';
  Aux:=Aux+ffiltroFecha;
  if ChckBxConSaldo.Checked then
    Ffiltro:=' Saldo > 0.01 '     //0.0001 Jun 19/17
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

procedure TFrmConCuentasXCobrar.SetActCXCPendFact(const Value: TBasicAction);
begin
  FActCXCPendFact := Value;
  dxBrBtnEstatus.Action:=VAlue;
  dxBrBtnEstatus.ImageIndex:=20;
end;

procedure TFrmConCuentasXCobrar.SetactEliminar(const Value: TBasicAction);
begin
  FactEliminar := Value;
  Delete1.Action := Value;
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

procedure TFrmConCuentasXCobrar.SetActTotalesCXC(const Value: TBasicAction);
begin
  FActTotalesCXC := Value;
// dxBrBtnActTotalesCXC.Action:=value;     //TEmporal para ajustar Abr 17/17
end;

procedure TFrmConCuentasXCobrar.SpdBtnBuscarClick(Sender: TObject);
const  //Mar 9/17
   TxtSQL='select CXC.IdCuentaXCobrar, IdCuentaXCobrarEstatus, CXC.IdPersona,'+
          'IdAnexosAmortizaciones, Fecha, FechaVencimiento, Importe, Impuesto, Interes,' +  //FV ab 11/17
          'Total, CXC.Saldo, SaldoFactoraje, IdCFDI, IDAnexo, CXC.IdCuentaXCobrarBase, '                            //  ''Interés Moratorio'' as Descripcion,
          +' EsMoratorio, CXC.Descripcion  from CuentasXCobrar CXC ';   //Agregada Descripcion de CXC   Jul 17/17
   whereNoMora=' EsMoratorio=0';
   whereMora=' EsMoratorio=1';

   whereOpcionCompra=' exists (Select * from CuentasXCobrarDetalle CXCD where CXCD.IdCuentaXCobrar=CXC.idcuentaXCobrar and '
                     +' idcuentaXCobrarTipo in (92,96,100) ) ';

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

  //Jun 28/17
  if ChckBxOpcionCompra.Checked then    // deben ser exclusivos opcioncompra y moratorios
  begin
    if ffiltro<>'' then
       Ffiltro:=Ffiltro +' and '+whereOpcionCompra
    else
       FFiltro:=' where '+ whereOpcionCompra;
  end;
  //hasta Jun 28/17

  Tadodataset(datasource.DataSet).Close;
  Tadodataset(datasource.DataSet).CommandText:=TxtSQL+ ffiltroNombre+ffiltro+ orden; //Mar 27/17
 // ShowMessage(TxtSQL+ ffiltroNombre+ffiltro);
  if ffiltroFecha <>''then
  begin
    Tadodataset(datasource.DataSet).Parameters.ParamByName('FIni').Value:=cxDtEdtDesde.Date;
    Tadodataset(datasource.DataSet).Parameters.ParamByName('FFin').Value:=cxDtEdtHasta.Date+1;
  end;
  Tadodataset(datasource.DataSet).open;
  tvmaster.ApplyBestFit(); //Ab 11/17
end;

end.
