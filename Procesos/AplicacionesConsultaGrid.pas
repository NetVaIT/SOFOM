unit AplicacionesConsultaGrid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, _StandarGFormGrid, cxGraphics,
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
  cxNavigator, Data.DB, cxDBData, Vcl.Menus, cxGridCustomPopupMenu,
  cxGridPopupMenu, cxClasses, Vcl.StdActns, Vcl.DBActns, System.Actions,
  Vcl.ActnList, Vcl.ImgList, Vcl.ComCtrls, Vcl.ToolWin, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, Vcl.ExtCtrls, cxContainer, dxCore, cxDateUtils, Vcl.StdCtrls,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,Data.Win.ADODB, Vcl.Buttons;

type
  TFrmAplicacionesConsultaGrid = class(T_frmStandarGFormGrid)
    tvMasterRazonSocial: TcxGridDBColumn;
    tvMasterIdentificador: TcxGridDBColumn;
    tvMasterFechaAplicacion: TcxGridDBColumn;
    tvMasterFechaPago: TcxGridDBColumn;
    tvMasterFolioPago: TcxGridDBColumn;
    tvMasterSeriePago: TcxGridDBColumn;
    tvMasterFolioFactura: TcxGridDBColumn;
    tvMasterSerieFactura: TcxGridDBColumn;
    tvMasterFechaFactura: TcxGridDBColumn;
    tvMasterimporte: TcxGridDBColumn;
    Panel1: TPanel;
    ToolButton11: TToolButton;
    TlBtnConsulta: TToolButton;
    RdGrpSeleccion: TRadioGroup;
    PnlBusqueda: TPanel;
    Label3: TLabel;
    EdtNombre: TEdit;
    PnlFechas: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    SpdBtnConsulta: TSpeedButton;
    cxDtEdtInicio: TcxDateEdit;
    cxDtEdtFin: TcxDateEdit;
    TlBtnDesaplicaPago: TToolButton;
    DSQryAux: TDataSource;
    procedure TlBtnConsultaClick(Sender: TObject);
    procedure RdGrpSeleccionClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EdtNombreChange(Sender: TObject);
    procedure EdtNombreKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TlBtnDesaplicaPagoClick(Sender: TObject);
  private
  //  ffiltro: String;
    FfiltroNombre: String;
    ffiltroFec: String;
    function GetFFiltroNombre: String;
    { Private declarations }
  public
    { Public declarations }
  // se cambio may 30/16   property FiltroCon:String read ffiltro write ffiltro; //Dic 29/15

    property FiltroFecha:String read ffiltroFec write ffiltroFec; //May 30/16
    Property AFiltroNombre:String read GetFFiltroNombre write FfiltroNombre; //May 30/16


  end;

var
  FrmAplicacionesConsultaGrid: TFrmAplicacionesConsultaGrid;

implementation

{$R *.dfm}

uses AplicacionesConsultaDM, PagosConfirmaDesaplica, _ConectionDmod;

procedure TFrmAplicacionesConsultaGrid.EdtNombreChange(Sender: TObject);
begin
  inherited;

 if  edtNombre.Text<>'' then
  begin
    FfiltroNombre:='and P.RazonSocial Like ''%'+edtNombre.Text+'%'' '; //Va a quedar como parte del inner join
  end
  else
    FfiltroNombre:='';
end;

procedure TFrmAplicacionesConsultaGrid.EdtNombreKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key=13 then
  begin
    key:=0;
    SpdBtnConsulta.Click;
  end;
end;

procedure TFrmAplicacionesConsultaGrid.FormCreate(Sender: TObject);
var
  a,m,d:Word;
  FechaAux:TDAteTime;
begin
  inherited;
  DEcodeDate(Date,a,m,d);

  cxDtEdtInicio.Date:=EncodeDate(a,m,1);
  m:=m+1;
  if m=13 then  //Aban Abr 19/16
  begin
    m:=1;
    a:=a+1;
  end;
  FechaAux:=EncodeDate(a,m,1);
  FechaAux:=FechaAux-1;  //Día anterior
  cxDtEdtFin.Date:=FechaAux;
  TlBtnDesaplicaPago.Visible:=pos('autoriza',_dmConection.PerFuncion)>0 ; //Jun 2/16
end;

function TFrmAplicacionesConsultaGrid.GetFFiltroNombre: String;
begin
  Result := FfiltroNombre;
end;

procedure TFrmAplicacionesConsultaGrid.RdGrpSeleccionClick(Sender: TObject);
begin
  inherited;
  case RdGrpSeleccion.itemindex of
    0:ffiltroFec:='where PA.Fecha >=:Fini and PA.Fecha<= :FFin';// ' Where idCFDIEstatus=1'
    1:ffiltroFec:='where PR.Fecha >=:Fini and PR.Fecha<= :FFin';
    2:ffiltroFec:='where Ci.Fecha >=:Fini and Ci.Fecha<= :FFin';
    3:ffiltroFec:='' ;    //Todos
  end;
end;

procedure TFrmAplicacionesConsultaGrid.TlBtnConsultaClick(Sender: TObject);
const
   TxtSQL='select PA.Fecha FechaAplicacion,pa.importe, PR.Fecha as FechaPago, PR.FolioPago, Pr.SeriePago,'
   +'CI.Folio FolioFactura,CI.Serie SerieFactura, CI.Fecha as FechaFactura ,P.RazonSocial,Pd.Identificador, '
   +'PA.IdPagoAplicacion, Pa.IdPagoRegistro, PA.IdCFDI, PA.IdPersonaCliente '                            //Agregado Jun 1/16
   +'from PagosAplicaciones PA inner join PagosRegistros PR on PA.IdPagoRegistro=PR.IdPagoRegistro '
   +'inner join CFDI CI on PA.IdCFDI =CI.IdCFDI inner join PersonasDomicilios Pd on '
   +'Pd.IdPersonaDomicilio= CI.IdClienteDomicilio inner join Personas P on P.IdPersona =Pd.IdPersona ';
begin
  inherited;

  Tadodataset(datasource.DataSet).Close;
  Tadodataset(datasource.DataSet).CommandText:=TxtSQL+ffiltronombre+ffiltroFec;
  if ffiltroFec <>''then
  begin
    Tadodataset(datasource.DataSet).Parameters.ParamByName('FIni').Value:=cxDtEdtInicio.Date;
    Tadodataset(datasource.DataSet).Parameters.ParamByName('FFin').Value:=cxDtEdtFin.Date+1;

  end;


  Tadodataset(datasource.DataSet).open;

end;

procedure TFrmAplicacionesConsultaGrid.TlBtnDesaplicaPagoClick(Sender: TObject);
var
  Texto:String;
begin
  inherited;
  Texto:= '¿Esta seguro de desaplicar el pago '+dataSource.DataSet.FieldByName('SeriePago').AsString+'-'+dataSource.DataSet.FieldByName('FolioPago').AsString
         +' de la Factura'+dataSource.DataSet.FieldByName('SerieFactura').AsString+'-'+dataSource.DataSet.FieldByName('FolioFactura').AsString+'?';
  if Application.MessageBox(pchar(Texto),'Confirmar Desaplicación', MB_YESNO)=ID_YES then
  begin
    FrmConfirmaDesaplicacion:= TFrmConfirmaDesaplicacion.Create(self);
    FrmConfirmaDesaplicacion.DtSrcMostrarDatos.DataSet:=DataSource.DataSet;
    FrmConfirmaDesaplicacion.DtSrcDesaplica.DataSet:=DSQryAux.DataSet;
    FrmConfirmaDesaplicacion.showModal;
    FrmConfirmaDesaplicacion.free;
    SpdBtnConsulta.Click;
  end;
end;

end.
