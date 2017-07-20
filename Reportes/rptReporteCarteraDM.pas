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
    adodsMasterTotalCobradoVencido: TFMTBCDField;
    adodsMasterVencidoA30: TFMTBCDField;
    adodsMasterVencidoA60: TFMTBCDField;
    adodsMasterVencidoA90: TFMTBCDField;
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
    ActPDFHojaControl: TAction;
    adodsMasterSaldoTotal: TFMTBCDField;
    adodsMasterValorResidual: TFMTBCDField;
    adodsMasterSaldoInsoluto: TFMTBCDField;
    adodsMasterSaldoTBD: TFMTBCDField;
    adodsMasterSaldoAmortizaciones: TFMTBCDField;
    ActPDFAmortizaYPago: TAction;
    procedure adodsMasterCalcFields(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure ActPDFCarteraExecute(Sender: TObject);
    procedure ActPDFHojaControlExecute(Sender: TObject);
    procedure ActPDFAmortizaYPagoExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmrptReporteCartera: TdmrptReporteCartera;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses rptReporteCarteraForm, PDFReporteCarteraDM, _ConectionDmod;

{$R *.dfm}

procedure TdmrptReporteCartera.ActPDFAmortizaYPagoExecute(Sender: TObject);
var                                                //Jul 19/17
  dmReporteCarteraPDF:TDmReporteCarteraPDF;
  ArchiPDF:TFileName;
  Texto,TxtSQL, GrupoSQL, Fecha:String;
  FechaIni, FechaFin:TDAteTime;
begin
  inherited;
 if  TFrmReporteCarteraGrid(gGridForm).AEsIndividual then
  begin
    TxtSQL:=' IdAnexo = ' + intTostr(TFrmReporteCarteraGrid(gGridForm).AIdAnexoAct);
  end
  else
    TxtSql:='';

  TExto:= '_' +FormatDateTime('ddmmmyyyy',_DmConection.LaFechaActual);//Date); //Jun 30/17
  ArchiPDF:='HojaAmortizacionesYPagos'+Texto+'.PDF';
  dmReporteCarteraPDF:= TdmReporteCarteraPDF.Create(Self);
  try


    dmReporteCarteraPDF.ADODtStRepHojaControlCte.Open;
    if TxtSql<>'' then    //May 22/17
    begin
      dmReporteCarteraPDF.ADODtStRepHojaControlCte.Filter:= TxtSql;
      dmReporteCarteraPDF.ADODtStRepHojaControlCte.Filtered:=True;
    end
    else
      dmReporteCarteraPDF.ADODtStRepHojaControlCte.Filtered:=False;

    dmReporteCarteraPDF.ADODtStRepAmortiza.Close;
    dmReporteCarteraPDF.ADODtStRepAmortiza.Parameters.ParamByName('IDAnexo1').Value:=TFrmReporteCarteraGrid(gGridForm).AIdAnexoAct;
    dmReporteCarteraPDF.ADODtStRepAmortiza.Parameters.ParamByName('IDAnexo2').Value:=TFrmReporteCarteraGrid(gGridForm).AIdAnexoAct;
    dmReporteCarteraPDF.ADODtStRepAmortiza.OPen;

    dmReporteCarteraPDF.ppRprtRepAmortizayPagos.ShowPrintDialog:= False;
    dmReporteCarteraPDF.ppRprtRepAmortizayPagos.ShowCancelDialog:= False;
    dmReporteCarteraPDF.ppRprtRepAmortizayPagos.PrinterSetup.DocumentName:=  'HOJA AMORTIZACIONES Y PAGOS '+#13 +Texto;

    dmReporteCarteraPDF.ppRprtRepAmortizayPagos.DeviceType:= 'PDF';
    dmReporteCarteraPDF.ppRprtRepAmortizayPagos.TextFileName:= ArchiPDF;

    dmReporteCarteraPDF.ppRprtRepAmortizayPagos.print;

     dmReporteCarteraPDF.ADODtStRepHojaControlCte.Close;
  finally
    dmReporteCarteraPDF.Free;
  end;
  if FileExists(ArchiPDF) then
      ShellExecute(application.Handle, 'open', PChar(ArchiPDF), nil, nil, SW_SHOWNORMAL);

end;

procedure TdmrptReporteCartera.ActPDFCarteraExecute(Sender: TObject);
var
  dmReporteCarteraPDF:TDmReporteCarteraPDF;
  ArchiPDF:TFileName;
  Texto,TxtSQL, GrupoSQL, Fecha:String;
  FechaIni, FechaFin:TDAteTime;
  Monto, Total,ValMax,ValMin:Double;    //jun 1/17
  Cantidad:integer;  //jun 1/17
begin
  inherited;
  TxtSQL:= 'SElect Cliente,sum("Saldo")  as SaldoTotal,  Sum ("Saldo Total Vencido")as TotalVencido, Sum (vigentes)as TotalVigentes, SUM ("vencidos a 30 días") as Total30Dias,'
          +' SUM ("vencidos a 60 días") as Total60Dias, SUM ("vencidos a 90 días") as Total90Dias ,'
        //  +' SUM ("vencidos a 120 días") as Total120Dias ,Sum("Vencidos a mas de 120 días") as TotalMas120Dias,' //May 18/17
          +' SUM ("Vencidos a mas de 120 días") as TotalMas120Dias  from Vw_AntiguedadSaldosCXC ';
  Fecha:= ' where fecha>=:Fini and fecha<=:Ffin ';
  GrupoSQL:=' Group BY Cliente order by Totalvencido desc, SaldoTotal desc'; //adodsMaster.CommandText; ver si se le coloca Fecha

  //FechaIni:=  TfrmrptantiguedadSaldos(gGridForm).AFecIni;
  //FechaFin:=  TfrmrptantiguedadSaldos(gGridForm).AFecFin;
  TExto:= adodsMaster.CommandText;
  if pos(':FIni',Texto)>0 then   //REvisa si hizo consulta por fecha Mar 2/17
     TxtSQL:=TxtSQL+Fecha;
  TxtSQL:=TxtSQL +GrupoSQL;

  TExto:= '_' +FormatDateTime('ddmmmyyyy',_DmConection.LaFechaActual);//Date); jun 30/17
  ArchiPDF:='CarteraXCliente'+Texto+'.PDF';
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
            //Jun 1/17
    dmReporteCarteraPDF.CalculoPercentil(Monto, Total,ValMax,ValMin,cantidad,0.8);
    dmReporteCarteraPDF.ppLblNumCreditos.Caption:=  intTostr(dmReporteCarteraPDF.adodsReport.recordcount);
    dmReporteCarteraPDF.ppLblCantidad80.Caption:= intToStr(cantidad) ;
    dmReporteCarteraPDF.ppLblCantidad20.Caption:= intToStr(dmReporteCarteraPDF.adodsReport.recordcount-cantidad) ;
    dmReporteCarteraPDF.ppLblMonto80.Caption:= FormatFloat('#,0',Monto/1000);  //Aplicar luego formato
    dmReporteCarteraPDF.ppLblMonto20.Caption:= FormatFloat('#,0',(Total-Monto)/1000);  //Aplicar luego formato
    dmReporteCarteraPDF.ppLblMontoTotal.Caption:= FormatFloat('#,0',Total/1000);  //Aplicar luego formato
    dmReporteCarteraPDF.ppLblProm80.Caption:= FormatFloat('#,0',(Monto/cantidad)/1000);//Aplicar luego formato
    if (dmReporteCarteraPDF.adodsReport.recordcount-cantidad)<>0 then

       dmReporteCarteraPDF.ppLblPorm20.Caption:= FormatFloat('#,0',((Total-Monto)/(dmReporteCarteraPDF.adodsReport.recordcount-cantidad)/1000)) //Aplicar luego formato
    else
      dmReporteCarteraPDF.ppLblPorm20.Caption:= FormatFloat('#,0',0);
    dmReporteCarteraPDF.ppLblValorMinCred.Caption:= FormatFloat('#,0',ValMin/1000);
    dmReporteCarteraPDF.ppLblValorMaxCred.Caption:= FormatFloat('#,0',(ValMax/1000));


    dmReporteCarteraPDF.ppLblMontoPromedioCred.Caption:= FormatFloat('#,0',(Total/dmReporteCarteraPDF.adodsReport.recordcount/1000));
    // hasta aca jun  1/17
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

procedure TdmrptReporteCartera.ActPDFHojaControlExecute(Sender: TObject);
var
  dmReporteCarteraPDF:TDmReporteCarteraPDF;
  ArchiPDF:TFileName;
  Texto,TxtSQL, GrupoSQL, Fecha:String;
  FechaIni, FechaFin:TDAteTime;
begin
  inherited;
(*  TxtSQL:= 'SElect Cliente,sum("Saldo")  as SaldoTotal,  Sum ("Saldo Total Vencido")as TotalVencido, Sum (vigentes)as TotalVigentes, SUM ("vencidos a 30 días") as Total30Dias,'
          +' SUM ("vencidos a 60 días") as Total60Dias, SUM ("vencidos a 90 días") as Total90Dias ,'
        //  +' SUM ("vencidos a 120 días") as Total120Dias ,Sum("Vencidos a mas de 120 días") as TotalMas120Dias,' //May 18/17
          +' SUM ("Vencidos a mas de 120 días") as TotalMas120Dias  from Vw_AntiguedadSaldosCXC ';
  Fecha:= ' where fecha>=:Fini and fecha<=:Ffin ';
  GrupoSQL:=' Group BY Cliente order by Totalvencido desc, SaldoTotal desc'; //adodsMaster.CommandText; ver si se le coloca Fecha

  //FechaIni:=  TfrmrptantiguedadSaldos(gGridForm).AFecIni;
  //FechaFin:=  TfrmrptantiguedadSaldos(gGridForm).AFecFin;
  TExto:= adodsMaster.CommandText;
  if pos(':FIni',Texto)>0 then   //REvisa si hizo consulta por fecha Mar 2/17
     TxtSQL:=TxtSQL+Fecha;
  TxtSQL:=TxtSQL +GrupoSQL;
  *)

  if  TFrmReporteCarteraGrid(gGridForm).AEsIndividual then
  begin
    TxtSQL:=' IdAnexo = ' + intTostr(TFrmReporteCarteraGrid(gGridForm).AIdAnexoAct);
  end
  else
    TxtSql:='';

  TExto:= '_' +FormatDateTime('ddmmmyyyy',_DmConection.LaFechaActual);//Date); //Jun 30/17
  ArchiPDF:='HojaControlGral'+Texto+'.PDF';
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

    dmReporteCarteraPDF.ADODtStRepHojaControlCte.Open;
    if TxtSql<>'' then    //May 22/17
    begin
      dmReporteCarteraPDF.ADODtStRepHojaControlCte.Filter:= TxtSql;
      dmReporteCarteraPDF.ADODtStRepHojaControlCte.Filtered:=True;
    end
    else
      dmReporteCarteraPDF.ADODtStRepHojaControlCte.Filtered:=False;

    dmReporteCarteraPDF.ppRprtHojaControlCte.ShowPrintDialog:= False;
    dmReporteCarteraPDF.ppRprtHojaControlCte.ShowCancelDialog:= False;
    dmReporteCarteraPDF.ppRprtHojaControlCte.PrinterSetup.DocumentName:=  'HOJA CONTROL '+#13 +Texto;

    dmReporteCarteraPDF.ppRprtHojaControlCte.DeviceType:= 'PDF';
    dmReporteCarteraPDF.ppRprtHojaControlCte.TextFileName:= ArchiPDF;
   // dmAntiguedadSaldosPDF.ppLblTitulo2.caption:= 'ANTIGUEDAD DE SALDOS COBRADOS POR CLIENTE '+#13 +Texto;
    dmReporteCarteraPDF.ppRprtHojaControlCte.print;

     dmReporteCarteraPDF.ADODtStRepHojaControlCte.Close;
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
  TFrmReporteCarteraGrid(gGridForm).ActPDFHojaControlGral:=ActPDFHojaControl;
  TFrmReporteCarteraGrid(gGridForm).ActPDFHojaAmorYpago:=ActPDFAmortizayPago;
end;

end.
