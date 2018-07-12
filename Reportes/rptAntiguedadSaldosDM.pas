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
    procedure DataModuleCreate(Sender: TObject);
    procedure ActGenPDFAntigSaldosExecute(Sender: TObject);
    procedure ActPDFAntiguedadXClienteExecute(Sender: TObject);
    procedure ActPDFCtasActualClienteExecute(Sender: TObject);
    procedure ActPDFXContratosVencidosExecute(Sender: TObject);
  private
    function GetActual: string;
    { Private declarations }
    property Actual: string read GetActual;
  public
    { Public declarations }

  end;

var
  dmRptAntiguedadSaldos: TdmRptAntiguedadSaldos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses rptAntiguedadSaldosForm, PDFAntiguedadSaldosDM, _ConectionDmod,
  ProcesosType;

{$R *.dfm}

procedure TdmRptAntiguedadSaldos.ActPDFCtasActualClienteExecute(Sender: TObject);
var
  dmAntiguedadSaldosPDF: TdmAntiguedadSaldosPDF;
  ArchiPDF: TFileName;
  Texto: String;
//  FechaIni, FechaFin: TDAteTime;
begin
  inherited;
//  FechaIni:=  TfrmrptantiguedadSaldos(gGridForm).AFecIni;
//  FechaFin:=  TfrmrptantiguedadSaldos(gGridForm).AFecFin;
  ArchiPDF:='EstadoCuentaCliente'+'_'+Actual+_ExtensionPDF;
  dmAntiguedadSaldosPDF:= TdmAntiguedadSaldosPDF.Create(Self);
  try
    dmAntiguedadSaldosPDF.ADODtStCtaActCliente.Close;
    TADoDAtaset(dmAntiguedadSaldosPDF.ADODtStCtaActCliente).Parameters.ParamByName('IdPersona').Value:=adodsMasterIdPersona.AsInteger; //DEl que tenga actualmente  siempre usa fechas
    Texto:= 'ESTADO DE CUENTA POR CLIENTE AL' +#13+ UpperCase(FormatDateTime('dd ''de'' mmmm ''del'' yyyy',_DmConection.LaFechaActual));
    dmAntiguedadSaldosPDF.ADODtStCtaActCliente.Open;
    dmAntiguedadSaldosPDF.ppRptCtaActCliente.ShowPrintDialog:= False;
    dmAntiguedadSaldosPDF.ppRptCtaActCliente.ShowCancelDialog:= False;
    dmAntiguedadSaldosPDF.ppRptCtaActCliente.PrinterSetup.DocumentName:= ArchiPDF;
    dmAntiguedadSaldosPDF.ppRptCtaActCliente.DeviceType:= 'PDF';
    dmAntiguedadSaldosPDF.ppRptCtaActCliente.TextFileName:= ArchiPDF;
    dmAntiguedadSaldosPDF.ppTituloAdeudo.Caption:= Texto;
    dmAntiguedadSaldosPDF.ppRptCtaActCliente.Print;
    dmAntiguedadSaldosPDF.ADODtStCtaActCliente.Close;
  finally
    dmAntiguedadSaldosPDF.Free;
  end;
  if FileExists(ArchiPDF) then
    ShellExecute(application.Handle, 'open', PChar(ArchiPDF), nil, nil, SW_SHOWNORMAL);
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
  FechaIni:=  TfrmrptantiguedadSaldos(gGridForm).AFecIni;
  FechaFin:=  TfrmrptantiguedadSaldos(gGridForm).AFecFin;
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
    end
    else
      Texto:= Texto + 'AL '+upperCASE(FormatDateTime('dd ''de'' mmmm ''del'' yyyy',_DmConection.LaFechaActual));
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
  FechaIni:=  TfrmrptantiguedadSaldos(gGridForm).AFecIni;
  FechaFin:=  TfrmrptantiguedadSaldos(gGridForm).AFecFin;
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
    end
    else
      Texto:= Texto + 'AL ' + UpperCase(FormatDateTime('dd ''de'' mmmm ''del'' yyyy',_DmConection.LaFechaActual));
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
  TfrmrptantiguedadSaldos(gGridForm).ActPDFAdeudoActualCliente:=ActPDFCtasActualCliente;
//DEshabilitado Oct12/17  TfrmrptantiguedadSaldos(gGridForm).ActPDFxContratosVenc:=ActPDFXContratosVencidos;
end;

function TdmRptAntiguedadSaldos.GetActual: string;
begin
  Result:= FormatDateTime('ddmmmyyyyhhnnss', Now);
end;

end.
