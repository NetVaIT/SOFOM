unit rptAntiguedadSaldosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, System.Actions,
  Vcl.ActnList, Data.Win.ADODB, shellapi,Forms,  winapi.windows;
                                  //Mar 1/17
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
    procedure DataModuleCreate(Sender: TObject);
    procedure ActGenPDFAntigSaldosExecute(Sender: TObject);
    procedure ActPDFAntiguedadXClienteExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  dmRptAntiguedadSaldos: TdmRptAntiguedadSaldos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses rptAntiguedadSaldosForm, PDFAntiguedadSaldosDM;

{$R *.dfm}

procedure TdmRptAntiguedadSaldos.ActGenPDFAntigSaldosExecute(Sender: TObject);
var
  dmAntiguedadSaldosPDF:TdmAntiguedadSaldosPDF;
  ArchiPDF:TFileName;
  Texto,TxtSQL:String;
  FechaIni, FechaFin:TDAteTime;
begin
  inherited;
  TxtSQL:= adodsMaster.CommandText;

  //FechaCorte:=adodsMasterFechaCorte.AsDateTime;
  //IdEstadoCta:=adodsMasterIdEstadoCuenta.AsInteger;
  FechaIni:=  TfrmrptantiguedadSaldos(gGridForm).AFecIni;
  FechaFin:=  TfrmrptantiguedadSaldos(gGridForm).AFecFin;

  TExto:= '_' +FormatDateTime('ddmmmyyyy',Date);
  ArchiPDF:='AntiguedadSaldos'+Texto+'.PDF';
  dmAntiguedadSaldosPDF:= TdmAntiguedadSaldosPDF.Create(Self);
  try
     dmAntiguedadSaldosPDF.dsReport.DataSet.Close;
     TAdoDAtaset(dmAntiguedadSaldosPDF.dsReport.DataSet).CommandText:=  TxtSQL;
    if pos(':FIni',TxtSQL)>0 then
    begin
      TADoDAtaset(dmAntiguedadSaldosPDF.dsReport.DataSet).Parameters.ParamByName('Fini').Value:= FechaIni;
      TADoDAtaset(dmAntiguedadSaldosPDF.dsReport.DataSet).Parameters.ParamByName('FFin').Value:= FechaFin;
      TExto:= ' DEL ' + DAteToSTR(FEchaIni) + ' AL '+ DAteToSTR(FEchaFin);//+FormatDateTime('mmm-dd-yyyy',FechaIni)+ ' AL: '+FormatDateTime('dd mmm del aaaa',FechaFin);
    end
    else
      TExto:=  'AL '+upperCASE(FormatDateTime('dd ''de'' mmmm ''del'' yyyy',Date));

    dmAntiguedadSaldosPDF.dsReport.DataSet.Open;
    dmAntiguedadSaldosPDF.Title:= 'ANTIGUEDAD DE SALDOS ' +Texto;
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
  dmAntiguedadSaldosPDF:TdmAntiguedadSaldosPDF;
  ArchiPDF:TFileName;
  Texto,TxtSQL, GrupoSQL, Fecha:String;
  FechaIni, FechaFin:TDAteTime;
begin
  inherited;
  TxtSQL:= 'SElect Cliente,sum("Saldo")  as SaldoTotal,  Sum ("Saldo Total Vencido")as TotalVencido, Sum (vigentes)as TotalVigentes, SUM ("vencidos a 30 días") as Total30Dias,'
          +' SUM ("vencidos a 60 días") as Total60Dias, SUM ("vencidos a 90 días") as Total90Dias ,'
          // +' SUM ("vencidos a 120 días") as Total120Dias ,  //YA no va  //May 18/17
          +' SUM ("Vencidos a mas de 120 días") as TotalMas120Dias  from Vw_AntiguedadSaldosCXC ';
  Fecha:= ' where fecha>=:Fini and fecha<=:Ffin ';
  GrupoSQL:=' Group BY Cliente order by Totalvencido desc, SaldoTotal desc'; //adodsMaster.CommandText; ver si se le coloca Fecha

  FechaIni:=  TfrmrptantiguedadSaldos(gGridForm).AFecIni;
  FechaFin:=  TfrmrptantiguedadSaldos(gGridForm).AFecFin;
  TExto:= adodsMaster.CommandText;
  if pos(':FIni',Texto)>0 then   //REvisa si hizo consulta por fecha Mar 2/17
     TxtSQL:=TxtSQL+Fecha;
  TxtSQL:=TxtSQL +GrupoSQL;

  TExto:= '_' +FormatDateTime('ddmmmyyyy',Date);
  ArchiPDF:='AntiguedadXCliente'+Texto+'.PDF';
  dmAntiguedadSaldosPDF:= TdmAntiguedadSaldosPDF.Create(Self);
  try
     dmAntiguedadSaldosPDF.DSAntXCliente.DataSet.Close;
     TAdoDAtaset(dmAntiguedadSaldosPDF.DSAntXCliente.DataSet).CommandText:=  TxtSQL;
    if pos(':FIni',TxtSQL)>0 then
    begin
      TADoDAtaset(dmAntiguedadSaldosPDF.DSAntXCliente.DataSet).Parameters.ParamByName('Fini').Value:= FechaIni;
      TADoDAtaset(dmAntiguedadSaldosPDF.DSAntXCliente.DataSet).Parameters.ParamByName('FFin').Value:= FechaFin;
      TExto:= ' DEL ' + DAteToSTR(FEchaIni) + ' AL '+ DAteToSTR(FEchaFin);//+FormatDateTime('mmm-dd-yyyy',FechaIni)+ ' AL: '+FormatDateTime('dd mmm del aaaa',FechaFin);
    end
    else
      TExto:=  'AL '+upperCASE(FormatDateTime('dd ''de'' mmmm ''del'' yyyy',Date));

    dmAntiguedadSaldosPDF.DSAntXCliente.DataSet.Open;

    dmAntiguedadSaldosPDF.ppRprtAntXCliente.ShowPrintDialog:= False;
    dmAntiguedadSaldosPDF.ppRprtAntXCliente.ShowCancelDialog:= False;
    dmAntiguedadSaldosPDF.ppRprtAntXCliente.PrinterSetup.DocumentName:=  'ANTIGUEDAD DE SALDOS COBRADOS POR CLIENTE '+#13 +Texto;

    dmAntiguedadSaldosPDF.ppRprtAntXCliente.DeviceType:= 'PDF';
    dmAntiguedadSaldosPDF.ppRprtAntXCliente.TextFileName:= ArchiPDF;
    dmAntiguedadSaldosPDF.ppLblTitulo2.caption:= 'ANTIGUEDAD DE SALDOS COBRADOS POR CLIENTE '+#13 +Texto;
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
end;





end.
