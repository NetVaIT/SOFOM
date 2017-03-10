unit rptAntiguedadSaldosForm;

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
  cxMaskEdit, cxDropDownEdit, cxCalendar, Vcl.Buttons,Data.Win.ADODB,
  Vcl.CheckLst;

type
  TfrmRptAntiguedadSaldos = class(T_frmGrid)
    tvMasterCliente: TcxGridDBColumn;
    tvMasterFecha: TcxGridDBColumn;
    tvMasterVigentes: TcxGridDBColumn;
    tvMasterVencidosa30das: TcxGridDBColumn;
    tvMasterVencidosa60das: TcxGridDBColumn;
    tvMasterVencidosa90das: TcxGridDBColumn;
    tvMasterVencidosmsde90das: TcxGridDBColumn;
    PnlFiltros: TPanel;
    PnlBusqueda: TPanel;
    Label3: TLabel;
    EdtNombre: TEdit;
    PnlFechas: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    SpdBtnConsulta: TSpeedButton;
    cxDtEdtInicio: TcxDateEdit;
    cxDtEdtFin: TcxDateEdit;
    ChckBxXFecha: TCheckBox;
    PnlTipoDoc: TPanel;
    ChckLstBxTipoDoc: TCheckListBox;
    tvMasterIdCuentaXCobrar: TcxGridDBColumn;
    tvMasterIdPersona: TcxGridDBColumn;
    tvMasterIdCuentaXCobrarEstatus: TcxGridDBColumn;
    tvMasterIDAnexo: TcxGridDBColumn;
    tvMasterTotal: TcxGridDBColumn;
    tvMasterSaldo: TcxGridDBColumn;
    tvMasterIDContrato: TcxGridDBColumn;
    tvMasterTipoContrato: TcxGridDBColumn;
    tvMasterIdContratoTipo: TcxGridDBColumn;
    dxBrBtnPDF: TdxBarButton;
    dxBrBtnAntXCliente: TdxBarButton;
    procedure SpdBtnConsultaClick(Sender: TObject);
    procedure EdtNombreKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FAFecIni: TDateTime;
    FAFecFin: TDateTime;
    FPDFAntigSaldos: TBasicAction;
    FPDFAntiXcliente: TBasicAction;
    function GetFAFecIni: TDateTime;
    function GetFAFecFin: TDateTime;
    procedure SetPDFAntigSaldos(const Value: TBasicAction);
    procedure SetPDFAntXCliente(const Value: TBasicAction);
       { Private declarations }
  public
    { Public declarations }
     property AFecIni :TDateTime read GetFAFecIni write FAFecIni;
     property AFecFin :TDateTime read GetFAFecFin write FAFecFin;
     Property ActPDFAntSaldos: TBasicAction read FPDFAntigSaldos write SetPDFAntigSaldos;
     Property ActPDFAntXCliente: TBasicAction read FPDFAntiXcliente write SetPDFAntXCliente;
  end;

var
  frmRptAntiguedadSaldos: TfrmRptAntiguedadSaldos;

implementation

{$R *.dfm}

uses rptAntiguedadSaldosDM;


procedure TfrmRptAntiguedadSaldos.EdtNombreKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key=13 then
  begin
    key:=0;
    SpdBtnConsulta.Click;
  end;
end;

procedure TfrmRptAntiguedadSaldos.FormCreate(Sender: TObject);
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

end;

procedure TfrmRptAntiguedadSaldos.FormShow(Sender: TObject);
begin
  inherited;
  actFullColapseGroup.Execute; //Feb 22/17
end;

function TfrmRptAntiguedadSaldos.GetFAFecFin: TDateTime;
begin                         //Mar1/17
  FAFecFin:= cxDtEdtFin.Date+1;
  Result := FAFecFin;
end;

function TfrmRptAntiguedadSaldos.GetFAFecIni: TDateTime;
begin                           //Mar1/17
  FAFecIni:=cxDtEdtInicio.Date;
  Result := FAFecIni;
end;


procedure TfrmRptAntiguedadSaldos.SetPDFAntigSaldos(const Value: TBasicAction);
begin
  FPDFAntigSaldos := Value;
  dxBrBtnPDF.Action:=Value;
  dxBrBtnPDF.ImageIndex:=17;
end;

procedure TfrmRptAntiguedadSaldos.SetPDFAntXCliente(const Value: TBasicAction);
begin
  FPDFAntiXcliente := Value;
  dxBrBtnAntXCliente.Action:=Value;
  dxBrBtnAntXCliente.ImageIndex:=18;
end;

procedure TfrmRptAntiguedadSaldos.SpdBtnConsultaClick(Sender: TObject);
const
   TxtSQL=' SELECT     Cc.IdCuentaXCobrar, cc.IDAnexo, A.IdContrato, Con.IdContratoTipo, CT.Identificador as TC, ct.Descripcion as TipoContrato,Cc.Fecha, Cc.IdPersona, cc.IdCuentaXCobrarEstatus, Cc.Total, CC.Saldo,'
         +' PR.RazonSocial AS Cliente, CASE WHEN getdate() - Cc.Fecha < 30 THEN Cc.Saldo END AS ''Vigentes'','
         +' CASE WHEN (getdate() - Cc.Fecha < 60 ) AND (getdate() - Cc.Fecha >= 30 )'
         +' THEN Cc.Saldo END AS ''Vencidos a 30 días'', CASE WHEN (getdate() - Cc.Fecha < 90 ) AND (getdate()'
         +'  - Cc.Fecha >= 60 ) THEN Cc.Saldo END AS ''Vencidos a 60 días'', CASE WHEN (getdate() - Cc.Fecha >= 90 ) AND'
         +'   (getdate() - Cc.Fecha < 120 ) THEN Cc.Saldo END AS ''Vencidos a 90 días'', CASE WHEN getdate()'
         +'  - Cc.Fecha >= 120 THEN Cc.Saldo END AS ''Vencidos más de 90 días'''

         +' FROM         CuentasXCobrar AS Cc INNER JOIN  Personas AS PR ON Cc.IdPersona = PR.IdPersona '
         +'             left join  Anexos As A ON Cc.IdAnexo=A.IdAnexo      '
         +'             inner join Contratos as Con ON A.IdContrato=Con.IdContrato'
         +'             inner join ContratosTipos as CT On Con.IdContratoTipo =CT.IdContratoTipo '
         +' WHERE   (Cc.Saldo > 0)  '; //deshabilitado mientras dic 28/16    AND


  TxtOrder=' ORDER BY Cliente';

var
   FiltroCliente, FiltroFecha, FiltroTipo:String;
  // i, aux:Integer;
begin

  inherited;
  Filtrotipo:='';
  if EdtNombre.Text<>'' then
    FiltroCliente:=' and PR.Razonsocial like ''%'+EdtNombre.Text+'%'''
  else
    FiltroCliente:='';

  if ChckBxXFecha.checked then    //May 30/16
     filtroFecha:='  and(Cc.Fecha >:FIni and Cc.Fecha <:FFin)'
  else
     filtroFecha:='';

(*  for I := 0 to ChckLstBxTipoDoc.Count-1 do
  begin
    if ChckLstBxTipoDoc.Checked[i] then
    begin
      aux:=i+2;
      if i=0 then
        FiltroTipo:=' CI.IdCFDITipoDocumento=1'
      else
       if FiltroTipo<>'' then
         FiltroTipo:=FiltroTipo+' or CI.IdCFDITipoDocumento=' +intTostr(Aux)
       else
         FiltroTipo:=' CI.IdCFDITipoDocumento=' +intTostr(Aux);
    end;
  end;
 *)
  if FiltroTipo<>'' then
     FiltroTipo:=' and ('+FiltroTipo+')';
 // Showmessage('Consulta '+TxtSQL+FiltroCliente+filtroFecha+FiltroTipo+ TxtOrder);
  Tadodataset(datasource.DataSet).Close;
  Tadodataset(datasource.DataSet).CommandText:=TxtSQL+FiltroCliente+filtroFecha+FiltroTipo+ TxtOrder;
  if filtroFecha <>''then
  begin
    Tadodataset(datasource.DataSet).Parameters.ParamByName('FIni').Value:=cxDtEdtInicio.Date;
    Tadodataset(datasource.DataSet).Parameters.ParamByName('FFin').Value:=cxDtEdtFin.Date+1;

  end;


  Tadodataset(datasource.DataSet).open;

end;

end.
