unit rptAntiguedadSaldosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, System.Actions,
  Vcl.ActnList, Data.Win.ADODB, shellapi,Forms,  winapi.windows;

type
  TdmRptAntiguedadSaldos = class(T_dmStandar)
    adodsMasterIdCuentaXCobrar: TAutoIncField;
    adodsMasterFecha: TDateTimeField;
    adodsMasterIdPersona: TIntegerField;
    adodsMasterIdCuentaXCobrarEstatus: TIntegerField;
    adodsMasterTotal: TFMTBCDField;
    adodsMasterSaldo: TFMTBCDField;
    adodsMasterCliente: TStringField;
    adodsMasterVigentes: TFMTBCDField;
    adodsMasterVencidosa30días: TFMTBCDField;
    adodsMasterVencidosa60días: TFMTBCDField;
    adodsMasterVencidosa90días: TFMTBCDField;
    adodsMasterIDAnexo: TIntegerField;
    adodsMasterIDContrato: TIntegerField;
    adodsMasterIdContratoTipo: TIntegerField;
    adodsMasterTipoContrato: TStringField;
    ActGenPDFAntigSaldos: TAction;
    adodsMasterTC: TStringField;
    ActPDFAntiguedadXCliente: TAction;
    adodsMasterAnexo: TStringField;
    adodsMasterContrato: TStringField;
    adodsMasterSaldoTotalVencido: TFMTBCDField;
    adodsMasterVencidosmásde120días: TFMTBCDField;
    adodsMasterFechaVencimiento: TDateTimeField;
    adodsMasterCobroX: TStringField;
    ActPDFCtasActualCliente: TAction;
    ActPDFXContratosVencidos: TAction;
    adodsMasterVencidos0a30: TFMTBCDField;
    actEstadoCuenta: TAction;
    actEstadoCuentaFuturo: TAction;
    procedure DataModuleCreate(Sender: TObject);
    procedure ActGenPDFAntigSaldosExecute(Sender: TObject);
    procedure ActPDFAntiguedadXClienteExecute(Sender: TObject);
    procedure ActPDFCtasActualClienteExecute(Sender: TObject);
    procedure ActPDFXContratosVencidosExecute(Sender: TObject);
    procedure actEstadoCuentaExecute(Sender: TObject);
    procedure actEstadoCuentaFuturoExecute(Sender: TObject);
  private
    { Private declarations }
    function GetActual: string;
    property Actual: string read GetActual;
  protected
    procedure SetFilter; override;
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses _ConectionDmod, ProcesosType, rptAntiguedadSaldosForm,
  PDFAntiguedadSaldosDM, RptEstadoCuentaDM;

{$R *.dfm}

procedure TdmRptAntiguedadSaldos.ActPDFCtasActualClienteExecute(Sender: TObject);
//var
//  dmAntiguedadSaldosPDF: TdmAntiguedadSaldosPDF;
//  ArchiPDF: TFileName;
//  Texto: String;
begin
//  inherited;
//  ArchiPDF:='EstadoCuentaCliente'+'_'+Actual+_ExtensionPDF;
//  dmAntiguedadSaldosPDF:= TdmAntiguedadSaldosPDF.Create(Self);
//  try
//    dmAntiguedadSaldosPDF.ADODtStCtaActCliente.Close;
//    TADoDAtaset(dmAntiguedadSaldosPDF.ADODtStCtaActCliente).Parameters.ParamByName('IdPersona').Value:=adodsMasterIdPersona.AsInteger; //DEl que tenga actualmente  siempre usa fechas
//    Texto:= 'ESTADO DE CUENTA EN MONEDA NACIONAL "PESOS"';
//    dmAntiguedadSaldosPDF.ADODtStCtaActCliente.Open;
//    dmAntiguedadSaldosPDF.ppRptCtaActCliente.ShowPrintDialog:= False;
//    dmAntiguedadSaldosPDF.ppRptCtaActCliente.ShowCancelDialog:= False;
//    dmAntiguedadSaldosPDF.ppRptCtaActCliente.PrinterSetup.DocumentName:= ArchiPDF;
//    dmAntiguedadSaldosPDF.ppRptCtaActCliente.DeviceType:= 'PDF';
//    dmAntiguedadSaldosPDF.ppRptCtaActCliente.TextFileName:= ArchiPDF;
//    dmAntiguedadSaldosPDF.ppTituloAdeudo.Caption:= Texto;
//    dmAntiguedadSaldosPDF.ppRptCtaActCliente.Print;
//    dmAntiguedadSaldosPDF.ADODtStCtaActCliente.Close;
//  finally
//    dmAntiguedadSaldosPDF.Free;
//  end;
//  if FileExists(ArchiPDF) then
//    ShellExecute(application.Handle, 'open', PChar(ArchiPDF), nil, nil, SW_SHOWNORMAL);
end;

procedure TdmRptAntiguedadSaldos.ActPDFXContratosVencidosExecute(
  Sender: TObject);
var
  dmAntiguedadSaldosPDF: TdmAntiguedadSaldosPDF;
  ArchiPDF: TFileName;
begin
  inherited;
  ArchiPDF:='AntiguedadSaldos'+'_'+Actual+_ExtensionPDF;
  dmAntiguedadSaldosPDF:= TdmAntiguedadSaldosPDF.Create(Self);
  try
    dmAntiguedadSaldosPDF.ADODtStXContratosVencidos.Close;
    dmAntiguedadSaldosPDF.ADODtStXContratosVencidos.Open;
    dmAntiguedadSaldosPDF.ppRptXContratosVencidos.ShowPrintDialog:= False;
    dmAntiguedadSaldosPDF.ppRptXContratosVencidos.ShowCancelDialog:= False;
    dmAntiguedadSaldosPDF.ppRptXContratosVencidos.PrinterSetup.DocumentName:= ArchiPDF;
    dmAntiguedadSaldosPDF.ppRptXContratosVencidos.DeviceType:= 'PDF';
    dmAntiguedadSaldosPDF.ppRptXContratosVencidos.TextFileName:= ArchiPDF;
    dmAntiguedadSaldosPDF.ppRptXContratosVencidos.Print;
  finally
    dmAntiguedadSaldosPDF.Free;
  end;
  if FileExists(ArchiPDF) then
    ShellExecute(application.Handle, 'open', PChar(ArchiPDF), nil, nil, SW_SHOWNORMAL);
end;

procedure TdmRptAntiguedadSaldos.actEstadoCuentaExecute(Sender: TObject);
var
  dmRptEstadoCuenta: TdmRptEstadoCuenta;
  ArchivoPDF: TFileName;
begin
  inherited;
  ArchivoPDF:='EstadoCuentaCliente'+'_'+Actual+_ExtensionPDF;
  dmRptEstadoCuenta:= TdmRptEstadoCuenta.Create(Self);
  try
    dmRptEstadoCuenta.Title := 'ESTADO DE CUENTA EN MONEDA NACIONAL "PESOS"';
    dmRptEstadoCuenta.PDFFileName := ArchivoPDF;
    dmRptEstadoCuenta.Temporal := False;
    dmRptEstadoCuenta.IdPersona := adodsMasterIdPersona.Value;
    dmRptEstadoCuenta.Execute;
  finally
    dmRptEstadoCuenta.Free;
  end;
  if FileExists(ArchivoPDF) then
    ShellExecute(application.Handle, 'open', PChar(ArchivoPDF), nil, nil, SW_SHOWNORMAL);
end;

procedure TdmRptAntiguedadSaldos.actEstadoCuentaFuturoExecute(Sender: TObject);
var
  dmRptEstadoCuenta: TdmRptEstadoCuenta;
  ArchivoPDF: TFileName;
begin
  inherited;
  ArchivoPDF:='EstadoCuentaFuturo'+'_'+Actual+_ExtensionPDF;
  dmRptEstadoCuenta:= TdmRptEstadoCuenta.Create(Self);
  try
    dmRptEstadoCuenta.Title := 'ESTADO DE CUENTA EN MONEDA NACIONAL "PESOS"';
    dmRptEstadoCuenta.PDFFileName := ArchivoPDF;
    dmRptEstadoCuenta.Temporal := True;
    dmRptEstadoCuenta.IdPersona := adodsMasterIdPersona.Value;
    dmRptEstadoCuenta.Fecha := TfrmrptantiguedadSaldos(gGridForm).Fecha;
    dmRptEstadoCuenta.Execute;
  finally
    dmRptEstadoCuenta.Free;
  end;
  if FileExists(ArchivoPDF) then
    ShellExecute(application.Handle, 'open', PChar(ArchivoPDF), nil, nil, SW_SHOWNORMAL);
end;

procedure TdmRptAntiguedadSaldos.ActGenPDFAntigSaldosExecute(Sender: TObject);
var
  dmAntiguedadSaldosPDF: TdmAntiguedadSaldosPDF;
  ArchiPDF:TFileName;
  Texto,TxtSQL:String;
  FechaIni, FechaFin:TDAteTime;
begin
  inherited;
  ArchiPDF:='AntiguedadSaldos'+'_'+Actual+_ExtensionPDF;
  TxtSQL:= adodsMaster.CommandText;
  FechaIni:=  TfrmrptantiguedadSaldos(gGridForm).Desde;
  FechaFin:=  TfrmrptantiguedadSaldos(gGridForm).Hasta;
  dmAntiguedadSaldosPDF:= TdmAntiguedadSaldosPDF.Create(Self);
  try
    dmAntiguedadSaldosPDF.dsReport.DataSet.Close;
    Texto := 'ANTIGUEDAD DE SALDOS ';
    TAdoDAtaset(dmAntiguedadSaldosPDF.dsReport.DataSet).CommandText:=  TxtSQL;
    if pos(':FIni',TxtSQL)>0 then
    begin
      TADoDAtaset(dmAntiguedadSaldosPDF.dsReport.DataSet).Parameters.ParamByName('Fini').Value:= FechaIni;
      TADoDAtaset(dmAntiguedadSaldosPDF.dsReport.DataSet).Parameters.ParamByName('FFin').Value:= FechaFin;
      Texto:= Texto + ' DEL ' + DateToStr(FEchaIni) + ' AL '+ DateToStr(FEchaFin);
    end;
//    else
//      Texto:= Texto + 'AL '+upperCASE(FormatDateTime('dd ''de'' mmmm ''del'' yyyy',_DmConection.LaFechaActual));
    dmAntiguedadSaldosPDF.dsReport.DataSet.Open;
    dmAntiguedadSaldosPDF.Title:= Texto;
    dmAntiguedadSaldosPDF.PDFFileName:= ArchiPDF;
    dmAntiguedadSaldosPDF.Execute
  finally
    dmAntiguedadSaldosPDF.Free;
  end;
  if FileExists(ArchiPDF) then
    ShellExecute(application.Handle, 'open', PChar(ArchiPDF), nil, nil, SW_SHOWNORMAL);
end;

procedure TdmRptAntiguedadSaldos.ActPDFAntiguedadXClienteExecute(
  Sender: TObject);
var
  dmAntiguedadSaldosPDF: TdmAntiguedadSaldosPDF;
  ArchiPDF: TFileName;
  Texto, TxtSQL, GrupoSQL, Fecha: String;
  FechaIni, FechaFin: TDateTime;
begin
  inherited;
  ArchiPDF:='AntiguedadPorCliente'+'_'+Actual+_ExtensionPDF;
  TxtSQL:= 'SElect Cliente,sum("Saldo")  as SaldoTotal,  Sum ("Saldo Total Vencido")as TotalVencido, Sum (vigentes)as TotalVigentes, Sum (Vencidos0a30)as Total0a30,  SUM ("vencidos a 30 días") as Total30Dias,'
          +' SUM ("vencidos a 60 días") as Total60Dias, SUM ("vencidos a 90 días") as Total90Dias ,'                                 //Ago 21 /17 0a30
          // +' SUM ("vencidos a 120 días") as Total120Dias ,  //YA no va  //May 18/17
          +' SUM ("Vencidos a mas de 120 días") as TotalMas120Dias  from Vw_AntiguedadSaldosCXC ';
  Fecha:= ' where fecha>=:FIni and fecha<=:FFin ';
  GrupoSQL:=' Group BY Cliente order by Totalvencido desc, SaldoTotal desc'; //adodsMaster.CommandText; ver si se le coloca Fecha
  FechaIni:=  TfrmrptantiguedadSaldos(gGridForm).Desde;
  FechaFin:=  TfrmrptantiguedadSaldos(gGridForm).Hasta;
  Texto:= adodsMaster.CommandText;
  if pos(':FIni',Texto)>0 then   //REvisa si hizo consulta por fecha Mar 2/17
     TxtSQL:=TxtSQL+Fecha;
  TxtSQL:=TxtSQL +GrupoSQL;
  dmAntiguedadSaldosPDF:= TdmAntiguedadSaldosPDF.Create(Self);
  try
    dmAntiguedadSaldosPDF.DSAntXCliente.DataSet.Close;
    TADODataSet(dmAntiguedadSaldosPDF.DSAntXCliente.DataSet).CommandText:=  TxtSQL;
    Texto:= 'ANTIGUEDAD DE SALDOS POR COBRAR POR CLIENTE' + #13;
    if pos(':FIni',TxtSQL)>0 then
    begin
      TADoDAtaset(dmAntiguedadSaldosPDF.DSAntXCliente.DataSet).Parameters.ParamByName('FIni').Value:= FechaIni;
      TADoDAtaset(dmAntiguedadSaldosPDF.DSAntXCliente.DataSet).Parameters.ParamByName('FFin').Value:= FechaFin;
      Texto:= Texto + 'DEL ' + DateToStr(FEchaIni) + ' AL '+ DateToStr(FEchaFin);
    end;
//    else
//      Texto:= Texto + 'AL ' + UpperCase(FormatDateTime('dd ''de'' mmmm ''del'' yyyy',_DmConection.LaFechaActual));
    dmAntiguedadSaldosPDF.DSAntXCliente.DataSet.Open;
    dmAntiguedadSaldosPDF.ppRprtAntXCliente.ShowPrintDialog:= False;
    dmAntiguedadSaldosPDF.ppRprtAntXCliente.ShowCancelDialog:= False;
    dmAntiguedadSaldosPDF.ppRprtAntXCliente.PrinterSetup.DocumentName:= ArchiPDF;
    dmAntiguedadSaldosPDF.ppRprtAntXCliente.DeviceType:= 'PDF';
    dmAntiguedadSaldosPDF.ppRprtAntXCliente.TextFileName:= ArchiPDF;
    dmAntiguedadSaldosPDF.ppLblTitulo2.caption:= Texto;
    dmAntiguedadSaldosPDF.ppRprtAntXCliente.print;
    dmAntiguedadSaldosPDF.DSAntXCliente.DataSet.Close;
  finally
    dmAntiguedadSaldosPDF.Free;
  end;
  if FileExists(ArchiPDF) then
    ShellExecute(application.Handle, 'open', PChar(ArchiPDF), nil, nil, SW_SHOWNORMAL);
end;

procedure TdmRptAntiguedadSaldos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmrptantiguedadSaldos.Create(Self);
  gGridForm.DataSet:= adodsMaster;
  gGridForm.ReadOnlyGrid:= True;
  TfrmrptantiguedadSaldos(gGridForm).ActPDFAntSaldos:=ActGenPDFAntigSaldos;
  TfrmrptantiguedadSaldos(gGridForm).ActPDFAntXCliente:=ActPDFAntiguedadXCliente;
  TfrmrptantiguedadSaldos(gGridForm).actEstadoCuenta := actEstadoCuenta;
  TfrmrptantiguedadSaldos(gGridForm).actEstadoCuentaFuturo := actEstadoCuentaFuturo;
//  TfrmrptantiguedadSaldos(gGridForm).ActPDFAdeudoActualCliente:=ActPDFCtasActualCliente;
//DEshabilitado Oct12/17  TfrmrptantiguedadSaldos(gGridForm).ActPDFxContratosVenc:=ActPDFXContratosVencidos;
  // Busqueda
  gGridForm.actSearch := actSearch;
  SQLSelect:=
' SELECT   Cc.IdCuentaXCobrar, cc.IDAnexo,a.Identificador as Anexo, A.IdContrato, Con.IdContratoTipo,Con.Identificador as Contrato,' +
'  CASE WHEN CC.Esmoratorio=1 then ''Moratorio'' else ''Amortización'' end as CobroX ,' +
' CT.Identificador as TC, ct.Descripcion as TipoContrato,Cc.Fecha,cc.FechaVencimiento, Cc.IdPersona, cc.IdCuentaXCobrarEstatus, Cc.Total, CC.Saldo,' +
' PR.RazonSocial AS Cliente, CASE WHEN ([dbo].getdateaux() - Cc.FechaVencimiento < 0) THEN Cc.Saldo ELSE 0 END AS ''Vigentes'',' +
' CASE WHEN ([dbo].getdateaux() -  cc.FechaVencimiento<= 30) AND ( [dbo].getdateAux() -  cc.FechaVencimiento>0 )  THEN Cc.Saldo END AS ''Vencidos0a30'',' +
' CASE WHEN [dbo].getdateAux() - Cc.FechaVencimiento >= 0 THEN Cc.Saldo END as ''Saldo Total Vencido'',' +
' CASE WHEN ([dbo].getdateAux() - Cc.FechaVencimiento <= 60 ) AND ([dbo].getdateAux() - Cc.FechaVencimiento > 30 )' +
' THEN Cc.Saldo END AS ''Vencidos a 30 días'', CASE WHEN ([dbo].getdateAux() - Cc.FechaVencimiento <= 90 ) AND ([dbo].getdateAux()' +
'  - Cc.FechaVencimiento > 60 ) THEN Cc.Saldo END AS ''Vencidos a 60 días'', CASE WHEN ([dbo].getdateAux() - Cc.FechaVencimiento > 90 ) AND' +
'   ([dbo].getdateAux() - Cc.FechaVencimiento <=120 ) THEN Cc.Saldo END AS ''Vencidos a 90 días'', CASE WHEN [dbo].getdateAux()' +
'  - Cc.FechaVencimiento > 120 THEN Cc.Saldo END AS ''Vencidos más de 120 días''' +
' FROM         CuentasXCobrar AS Cc INNER JOIN  Personas AS PR ON Cc.IdPersona = PR.IdPersona ' +
'             left join  Anexos As A ON Cc.IdAnexo=A.IdAnexo      ' +
'             inner join Contratos as Con ON A.IdContrato=Con.IdContrato' +
'             inner join ContratosTipos as CT On Con.IdContratoTipo =CT.IdContratoTipo ';
  SQLOrderBy:= 'ORDER BY Cliente ';
  actSearch.Execute;
end;

function TdmRptAntiguedadSaldos.GetActual: string;
begin
  Result:= FormatDateTime('ddmmmyyyyhhnnss', Now);
end;

procedure TdmRptAntiguedadSaldos.SetFilter;
begin
  inherited;
  SQLWhere := 'WHERE   (Cc.Saldo > 0)  and  (cc.IdCuentaXCobrarRestructura is null ) ';   //Dic 6/18  discriminar reestructura
  if TfrmrptantiguedadSaldos(gGridForm).Cliente <> EmptyStr then
    SQLWhere := SQLWhere + 'AND PR.Razonsocial LIKE ''%' + TfrmrptantiguedadSaldos(gGridForm).Cliente + '%'' ';
  if TfrmrptantiguedadSaldos(gGridForm).UsarFecha then
    SQLWhere := SQLWhere + Format('AND Cc.FechaVencimiento BETWEEN CONVERT(datetime, ''%s'' , 103) AND CONVERT(datetime, ''%s'' , 103) ', [DateToStr(TfrmrptantiguedadSaldos(gGridForm).Desde), DateToStr(TfrmrptantiguedadSaldos(gGridForm).Hasta+1)]);
end;

end.
