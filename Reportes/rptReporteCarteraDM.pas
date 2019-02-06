unit rptReporteCarteraDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, System.Actions,
  Vcl.ActnList, Data.Win.ADODB, ShellAPi, Forms,winapi.windows, dialogs;

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
    ActAmorYPago2: TAction;
    adodsMasterTotal0A30: TFMTBCDField;
    ADOQryBorrarTemporales: TADOQuery;
    ADOQryInsertaCartera: TADOQuery;
    ADOQryInsertaRetraso: TADOQuery;
    ActAmorYPago3: TAction;
    procedure adodsMasterCalcFields(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure ActPDFCarteraExecute(Sender: TObject);
    procedure ActPDFHojaControlExecute(Sender: TObject);
    procedure ActPDFAmortizaYPagoExecute(Sender: TObject);
    procedure ActAmorYPago2Execute(Sender: TObject);
    procedure ActAmorYPago3Execute(Sender: TObject);
  private
    function GetActual: string;
    { Private declarations }
    property Actual: string read GetActual;
  public
    { Public declarations }
  end;

var
  dmrptReporteCartera: TdmrptReporteCartera;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses rptReporteCarteraForm, PDFReporteCarteraDM, _ConectionDmod, ProcesosType;

{$R *.dfm}

procedure TdmrptReporteCartera.ActAmorYPago2Execute(Sender: TObject);
var
  dmReporteCarteraPDF: TDmReporteCarteraPDF;
  ArchiPDF: TFileName;
  TxtSQL: string;
begin
  inherited;
  ArchiPDF:='AmortizacionesYPagos2'+'_'+Actual+_ExtensionPDF;
  dmReporteCarteraPDF:= TdmReporteCarteraPDF.Create(Self);
  try
  dmReporteCarteraPDF.ADODtStAnexoCliente.Close;
  dmReporteCarteraPDF.ADODtStAnexoCliente.Parameters.ParamByName('IDAnexo').Value:= TFrmReporteCarteraGrid(gGridForm).AIdAnexoAct;
  dmReporteCarteraPDF.ADODtStAnexoCliente.open;
  dmReporteCarteraPDF.ADODtStRepHojaControlCte.Open;
  TxtSQL:=' IdAnexo = ' + intTostr(TFrmReporteCarteraGrid(gGridForm).AIdAnexoAct);
    if TxtSql<>'' then    //May 22/17
    begin
      dmReporteCarteraPDF.ADODtStRepHojaControlCte.Filter:= TxtSql;
      dmReporteCarteraPDF.ADODtStRepHojaControlCte.Filtered:=True;
    end
    else
      dmReporteCarteraPDF.ADODtStRepHojaControlCte.Filtered:=False;  // nunca va por aca en este reporte
    dmReporteCarteraPDF.ADODtStAmortiza.Close;
    dmReporteCarteraPDF.ADODtStAmortiza.Parameters.ParamByName('IDAnexo1').Value:=TFrmReporteCarteraGrid(gGridForm).AIdAnexoAct;
    dmReporteCarteraPDF.ADODtStAmortiza.Open;
    dmReporteCarteraPDF.ADODtStAmortiza2.Close;
    dmReporteCarteraPDF.ADODtStAmortiza2.Parameters.ParamByName('IDAnexo1').Value:=TFrmReporteCarteraGrid(gGridForm).AIdAnexoAct;
    dmReporteCarteraPDF.ADODtStAmortiza2.Parameters.ParamByName('IDAnexo2').Value:=TFrmReporteCarteraGrid(gGridForm).AIdAnexoAct;
    dmReporteCarteraPDF.ADODtStAmortiza2.Open;
    dmReporteCarteraPDF.ADODtStProd2.Close;
    dmReporteCarteraPDF.adodtstProd2.Parameters.ParamByName('IdAnexo').Value:= TFrmReporteCarteraGrid(gGridForm).AIdAnexoAct;
    dmReporteCarteraPDF.adodtstProd2.Open;
    dmReporteCarteraPDF.ADODtStPago2.Open;
    dmReporteCarteraPDF.ADODtStMoratoriosXCXC.Open;
    dmReporteCarteraPDF.ppRprtAmoryPagos2.ShowPrintDialog:= False;
    dmReporteCarteraPDF.ppRprtAmoryPagos2.ShowCancelDialog:= False;
    dmReporteCarteraPDF.ppRprtAmoryPagos2.PrinterSetup.DocumentName:= ArchiPDF;
    dmReporteCarteraPDF.ppRprtAmoryPagos2.DeviceType:= 'PDF';
    dmReporteCarteraPDF.ppRprtAmoryPagos2.TextFileName:= ArchiPDF;
    dmReporteCarteraPDF.ppRprtAmoryPagos2.print;
  finally
    dmReporteCarteraPDF.Free;
  end;
  if FileExists(ArchiPDF) then
    ShellExecute(application.Handle, 'open', PChar(ArchiPDF), nil, nil, SW_SHOWNORMAL);
end;

procedure TdmrptReporteCartera.ActAmorYPago3Execute(Sender: TObject);
var
  dmReporteCarteraPDF: TDmReporteCarteraPDF;
  ArchiPDF: TFileName;
  TxtSQL: string;
begin
  inherited;
  ArchiPDF:='AmortizacionesYPagos3'+'_'+Actual+_ExtensionPDF;
  dmReporteCarteraPDF:= TdmReporteCarteraPDF.Create(Self);
  try
  dmReporteCarteraPDF.ADODtStAnexoCliente.Close;
  dmReporteCarteraPDF.ADODtStAnexoCliente.Parameters.ParamByName('IDAnexo').Value:= TFrmReporteCarteraGrid(gGridForm).AIdAnexoAct;
  dmReporteCarteraPDF.ADODtStAnexoCliente.open;
  dmReporteCarteraPDF.ADODtStRepHojaControlCte.Open;
  TxtSQL:=' IdAnexo = ' + intTostr(TFrmReporteCarteraGrid(gGridForm).AIdAnexoAct);
    if TxtSql<>'' then    //May 22/17
    begin
      dmReporteCarteraPDF.ADODtStRepHojaControlCte.Filter:= TxtSql;
      dmReporteCarteraPDF.ADODtStRepHojaControlCte.Filtered:=True;
    end
    else
      dmReporteCarteraPDF.ADODtStRepHojaControlCte.Filtered:=False;  // nunca va por aca en este reporte
    dmReporteCarteraPDF.ADODtStAmortiza.Close;
    dmReporteCarteraPDF.ADODtStAmortiza.Parameters.ParamByName('IDAnexo1').Value:=TFrmReporteCarteraGrid(gGridForm).AIdAnexoAct;
    dmReporteCarteraPDF.ADODtStAmortiza.Open;
    dmReporteCarteraPDF.ADODtStAmortiza2.Close;
    dmReporteCarteraPDF.ADODtStAmortiza2.Parameters.ParamByName('IDAnexo1').Value:=TFrmReporteCarteraGrid(gGridForm).AIdAnexoAct;
    dmReporteCarteraPDF.ADODtStAmortiza2.Parameters.ParamByName('IDAnexo2').Value:=TFrmReporteCarteraGrid(gGridForm).AIdAnexoAct;
    dmReporteCarteraPDF.ADODtStAmortiza2.Open;
    dmReporteCarteraPDF.ADODtStProd2.Close;
    dmReporteCarteraPDF.adodtstProd2.Parameters.ParamByName('IdAnexo').Value:= TFrmReporteCarteraGrid(gGridForm).AIdAnexoAct;
    dmReporteCarteraPDF.adodtstProd2.Open;
    dmReporteCarteraPDF.ADODtStPago2.Open;
    dmReporteCarteraPDF.ADODtStMoratoriosXCXC.Open;

    //Feb 1/19
    dmReporteCarteraPDF.ADtStCXCAdicionalSA.close;
    dmReporteCarteraPDF.ADtStCXCAdicionalSA.Parameters.ParamByName('IdAnexo').Value:=  TFrmReporteCarteraGrid(gGridForm).AIdAnexoAct;
    dmReporteCarteraPDF.ADtStCXCAdicionalSA.open;
    dmReporteCarteraPDF.ADtStPagoCXCAdiSA.Close;
    dmReporteCarteraPDF.ADtStPagoCXCAdiSA.Open;
    //HAsta aca feb 1/19

    dmReporteCarteraPDF.ppRprtAmoryPagos3.ShowPrintDialog:= False;
    dmReporteCarteraPDF.ppRprtAmoryPagos3.ShowCancelDialog:= False;
    dmReporteCarteraPDF.ppRprtAmoryPagos3.PrinterSetup.DocumentName:= ArchiPDF;
    dmReporteCarteraPDF.ppRprtAmoryPagos3.DeviceType:= 'PDF';
    dmReporteCarteraPDF.ppRprtAmoryPagos3.TextFileName:= ArchiPDF;
    dmReporteCarteraPDF.ppRprtAmoryPagos3.print;
  finally
    dmReporteCarteraPDF.Free;
  end;
  if FileExists(ArchiPDF) then
    ShellExecute(application.Handle, 'open', PChar(ArchiPDF), nil, nil, SW_SHOWNORMAL);

end;

procedure TdmrptReporteCartera.ActPDFAmortizaYPagoExecute(Sender: TObject);
var                                                //Jul 19/17
  dmReporteCarteraPDF: TDmReporteCarteraPDF;
  ArchiPDF: TFileName;
  TxtSQL: String;
begin
  inherited;
  ArchiPDF:='HojaAmortizacionesYPagos'+'_'+Actual+_ExtensionPDF;
  if  TFrmReporteCarteraGrid(gGridForm).AEsIndividual then
    TxtSQL:=' IdAnexo = ' + intTostr(TFrmReporteCarteraGrid(gGridForm).AIdAnexoAct)
  else
    TxtSql:='';
  dmReporteCarteraPDF:= TdmReporteCarteraPDF.Create(Self);
  try
    dmReporteCarteraPDF.ADODtStRepHojaControlCte.Open;
    if TxtSql<>'' then
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
    dmReporteCarteraPDF.ppRprtRepAmortizayPagos.PrinterSetup.DocumentName:= ArchiPDF;
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
  Monto, Total,ValMax,ValMin:Double;
  Cantidad:integer;
begin
  inherited;
  ArchiPDF:='CarteraXCliente'+'_'+Actual+_ExtensionPDF;
//  //No se usa esto aca.. verificar... Ago 21 /17 Sum (Vencidos0a30)as Total0a30,  no colocado ???
//  TxtSQL:= 'SElect Cliente,sum("Saldo")  as SaldoTotal,  Sum ("Saldo Total Vencido")as TotalVencido, Sum (vigentes)as TotalVigentes, SUM ("vencidos a 30 días") as Total30Dias,'
//          +' SUM ("vencidos a 60 días") as Total60Dias, SUM ("vencidos a 90 días") as Total90Dias ,'
//        //  +' SUM ("vencidos a 120 días") as Total120Dias ,Sum("Vencidos a mas de 120 días") as TotalMas120Dias,' //May 18/17
//          +' SUM ("Vencidos a mas de 120 días") as TotalMas120Dias  from Vw_AntiguedadSaldosCXC ';
//  Fecha:= ' where fecha>=:Fini and fecha<=:Ffin ';
//  GrupoSQL:=' Group BY Cliente order by Totalvencido desc, SaldoTotal desc'; //adodsMaster.CommandText; ver si se le coloca Fecha
//  TExto:= adodsMaster.CommandText;
//  if pos(':FIni',Texto)>0 then   //REvisa si hizo consulta por fecha Mar 2/17
//     TxtSQL:=TxtSQL+Fecha;
//  TxtSQL:=TxtSQL +GrupoSQL;
  dmReporteCarteraPDF:= TdmReporteCarteraPDF.Create(Self);
  try
    dmReporteCarteraPDF.adodsReport.Open;
    dmReporteCarteraPDF.ppReport.ShowPrintDialog:= False;
    dmReporteCarteraPDF.ppReport.ShowCancelDialog:= False;
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
    dmReporteCarteraPDF.ppReport.PrinterSetup.DocumentName:= ArchiPDF;
    dmReporteCarteraPDF.ppReport.DeviceType:= 'PDF';
    dmReporteCarteraPDF.ppReport.TextFileName:= ArchiPDF;
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
  TxtSQL:String;
begin
  inherited;
  ArchiPDF:='HojaControlGeneral'+'_'+Actual+_ExtensionPDF;
  if  TFrmReporteCarteraGrid(gGridForm).AEsIndividual then
    TxtSQL:=' IdAnexo = ' + intTostr(TFrmReporteCarteraGrid(gGridForm).AIdAnexoAct)
  else
    TxtSql:='';
  dmReporteCarteraPDF:= TdmReporteCarteraPDF.Create(Self);
  try
    dmReporteCarteraPDF.ADODtStRepHojaControlCte.Open;
    if TxtSql<>'' then
    begin
      dmReporteCarteraPDF.ADODtStRepHojaControlCte.Filter:= TxtSql;
      dmReporteCarteraPDF.ADODtStRepHojaControlCte.Filtered:=True;
    end
    else
      dmReporteCarteraPDF.ADODtStRepHojaControlCte.Filtered:=False;
    dmReporteCarteraPDF.ppRprtHojaControlCte.ShowPrintDialog:= False;
    dmReporteCarteraPDF.ppRprtHojaControlCte.ShowCancelDialog:= False;
    dmReporteCarteraPDF.ppRprtHojaControlCte.PrinterSetup.DocumentName:= ArchiPDF;
    dmReporteCarteraPDF.ppRprtHojaControlCte.DeviceType:= 'PDF';
    dmReporteCarteraPDF.ppRprtHojaControlCte.TextFileName:= ArchiPDF;
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
  //Borrar tablas temporales  e insertar de nuevo Nov 24/17
  try
    _dmConection.ADOConnection.BeginTrans; //nov 24/17
    AdoQryBorrarTemporales.ExecSQL;
    ADOQryInsertaCartera.ExecSQL;
    ADOQryInsertaRetraso.ExecSQL;
    _dmConection.ADOConnection.CommitTrans;  //nov 24/17
  except
    _dmConection.ADOConnection.RollbackTrans;  //nov 24/17
    showMessage('Algun error');
    raise;
  end;
  gGridForm:= TFrmReporteCarteraGrid.Create(Self);
  gGridForm.DataSet:= adodsMaster;
  gGridForm.ReadOnlyGrid:= True;
  TFrmReporteCarteraGrid(gGridForm).ActPDFReporteCartera:=ActPDFCartera;    //se re habilitó nov 21/17 DEshabilitado Oct12/17
  TFrmReporteCarteraGrid(gGridForm).ActPDFHojaControlGral:=ActPDFHojaControl;
  TFrmReporteCarteraGrid(gGridForm).ActPDFHojaAmorYpago:=ActPDFAmortizayPago;
  TFrmReporteCarteraGrid(gGridForm).ActPDFNuevoAmoryPago2:=ActAmorYPago3;//ActAmorYPago2;
end;

function TdmrptReporteCartera.GetActual: string;
begin
  Result:= FormatDateTime('ddmmmyyyyhhnnss', Now);
end;

end.
