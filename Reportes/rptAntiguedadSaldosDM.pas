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
    adodsMasterVencidosmásde90días: TFMTBCDField;
    adodsMasterIDAnexo: TIntegerField;
    adodsMasterIDContrato: TIntegerField;
    adodsMasterIdContratoTipo: TIntegerField;
    adodsMasterTipoContrato: TStringField;
    ActGenPDFAntigSaldos: TAction;
    adodsMasterTC: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure ActGenPDFAntigSaldosExecute(Sender: TObject);
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
  IDEstadoCta:Integer;
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



procedure TdmRptAntiguedadSaldos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmrptantiguedadSaldos.Create(Self);
  gGridForm.DataSet:= adodsMaster;
  gGridForm.ReadOnlyGrid:= True;
  TfrmrptantiguedadSaldos(gGridForm).ActPDFAntSaldos:=ActGenPDFAntigSaldos;

end;





end.
