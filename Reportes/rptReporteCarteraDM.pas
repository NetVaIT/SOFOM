unit rptReporteCarteraDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, System.Actions,
  Vcl.ActnList, Data.Win.ADODB, ShellAPi, Forms,winapi.windows;

type
  TdmrptReporteCartera = class(T_dmStandar)
    adodsMasterIdAnexo: TIntegerField;
    adodsMasterContrato: TStringField;
    adodsMasterAnexo: TStringField;
    adodsMasterCLiente: TStringField;
    adodsMasterTc: TStringField;
    adodsMasterPlazo: TIntegerField;
    adodsMasterTotal: TFMTBCDField;
    adodsMasterCobradoCXC: TFMTBCDField;
    adodsMasterTotalPorCobrar: TFMTBCDField;
    adodsMasterSaldopendiente: TFMTBCDField;
    adodsMasterTotalVigente: TFMTBCDField;
    adodsMasterTotalPorVencer: TFMTBCDField;
    adodsMasterTotalCobradoVencido: TFMTBCDField;
    adodsMasterVencidoA30: TFMTBCDField;
    adodsMasterVencidoA60: TFMTBCDField;
    adodsMasterVencidoA90: TFMTBCDField;
    adodsMasterVencidoA120: TFMTBCDField;
    adodsMasterVencidoMas120: TFMTBCDField;
    adodsMasterDiasRetraso: TIntegerField;
    adodsMasterCantidad: TIntegerField;
    adodsMasteratrasados: TIntegerField;
    adodsMasteratiempo: TIntegerField;
    adodsMasterCuotasPendientes: TIntegerField;
    adodsMasterDiasPagoTotal: TIntegerField;
    adodsMasterDiasPagoRetraso: TIntegerField;
    adodsMasterPorcentajeAtrasados: TFMTBCDField;
    adodsMasterPorcentajeATiempo: TFMTBCDField;
    adodsMasterCuotaMostrar: TStringField;
    ActPDFCartera: TAction;
    procedure adodsMasterCalcFields(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure ActPDFCarteraExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmrptReporteCartera: TdmrptReporteCartera;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses rptReporteCarteraForm, PDFReporteCarteraDM;

{$R *.dfm}

procedure TdmrptReporteCartera.ActPDFCarteraExecute(Sender: TObject);
var
  dmReporteCarteraPDF:TDmReporteCarteraPDF;
  ArchiPDF:TFileName;
  Texto,TxtSQL, GrupoSQL, Fecha:String;
  FechaIni, FechaFin:TDAteTime;
begin
  inherited;
  TxtSQL:= 'SElect Cliente,sum("Saldo")  as SaldoTotal,  Sum ("Saldo Total Vencido")as TotalVencido, Sum (vigentes)as TotalVigentes, SUM ("vencidos a 30 días") as Total30Dias,'
          +' SUM ("vencidos a 60 días") as Total60Dias, SUM ("vencidos a 90 días") as Total90Dias ,'
          +' SUM ("vencidos a 120 días") as Total120Dias ,Sum("Vencidos a mas de 120 días") as TotalMas120Dias,'
          +' SUM ("Vencidos a mas de 120 días") as TotalMas120Dias  from Vw_AntiguedadSaldosCXC ';
  Fecha:= ' where fecha>=:Fini and fecha<=:Ffin ';
  GrupoSQL:=' Group BY Cliente order by Totalvencido desc, SaldoTotal desc'; //adodsMaster.CommandText; ver si se le coloca Fecha

  //FechaIni:=  TfrmrptantiguedadSaldos(gGridForm).AFecIni;
  //FechaFin:=  TfrmrptantiguedadSaldos(gGridForm).AFecFin;
  TExto:= adodsMaster.CommandText;
  if pos(':FIni',Texto)>0 then   //REvisa si hizo consulta por fecha Mar 2/17
     TxtSQL:=TxtSQL+Fecha;
  TxtSQL:=TxtSQL +GrupoSQL;

  TExto:= '_' +FormatDateTime('ddmmmyyyy',Date);
  ArchiPDF:='AntiguedadXCliente'+Texto+'.PDF';
  dmReporteCarteraPDF:= TdmReporteCarteraPDF.Create(Self);
  try
   (*  dmReporteCarteraPDF.DSAntXCliente.DataSet.Close;
     TAdoDAtaset(dmReporteCarteraPDF.DSAntXCliente.DataSet).CommandText:=  TxtSQL;
    if pos(':FIni',TxtSQL)>0 then
    begin
      TADoDAtaset(dmAntiguedadSaldosPDF.DSAntXCliente.DataSet).Parameters.ParamByName('Fini').Value:= FechaIni;
      TADoDAtaset(dmAntiguedadSaldosPDF.DSAntXCliente.DataSet).Parameters.ParamByName('FFin').Value:= FechaFin;
      TExto:= ' DEL ' + DAteToSTR(FEchaIni) + ' AL '+ DAteToSTR(FEchaFin);//+FormatDateTime('mmm-dd-yyyy',FechaIni)+ ' AL: '+FormatDateTime('dd mmm del aaaa',FechaFin);
    end
    else
      TExto:=  'AL '+upperCASE(FormatDateTime('dd ''de'' mmmm ''del'' yyyy',Date));   *)

    dmReporteCarteraPDF.adodsReport.Open;

    dmReporteCarteraPDF.ppReport.ShowPrintDialog:= False;
    dmReporteCarteraPDF.ppReport.ShowCancelDialog:= False;
    dmReporteCarteraPDF.ppReport.PrinterSetup.DocumentName:=  'REPORTE DE CARTERA POR CLIENTE '+#13 +Texto;

    dmReporteCarteraPDF.ppReport.DeviceType:= 'PDF';
    dmReporteCarteraPDF.ppReport.TextFileName:= ArchiPDF;
   // dmAntiguedadSaldosPDF.ppLblTitulo2.caption:= 'ANTIGUEDAD DE SALDOS COBRADOS POR CLIENTE '+#13 +Texto;
    dmReporteCarteraPDF.ppReport.print;

     dmReporteCarteraPDF.adodsReport.Close;
  finally
    dmReporteCarteraPDF.Free;
  end;
  if FileExists(ArchiPDF) then
      ShellExecute(application.Handle, 'open', PChar(ArchiPDF), nil, nil, SW_SHOWNORMAL);

end;

procedure TdmrptReporteCartera.adodsMasterCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('CuotaMostrar').asstring:=   DataSet.FieldByName('CuotasPendientes').asstring+'/'+ DataSet.FieldByName('Plazo').asstring;

end;

procedure TdmrptReporteCartera.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TFrmReporteCarteraGrid.Create(Self);
  gGridForm.DataSet:= adodsMaster;
  gGridForm.ReadOnlyGrid:= True;

  TFrmReporteCarteraGrid(gGridForm).ActPDFReporteCartera:=ActPDFCartera;
end;

end.
