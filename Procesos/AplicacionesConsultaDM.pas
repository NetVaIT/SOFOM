unit AplicacionesConsultaDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB, dialogs, math, SHELLAPI,Forms,  winapi.windows;

type
  TdmAplicacionesConsulta = class(T_dmStandar)
    ADOQryAuxiliar: TADOQuery;
    adodsMasterFechaAplicacion: TDateTimeField;
    adodsMasterimporte: TFMTBCDField;
    adodsMasterFechaPago: TDateTimeField;
    adodsMasterFolioPago: TIntegerField;
    adodsMasterSeriePago: TStringField;
    adodsMasterNoCuentaXCobrar: TAutoIncField;
    adodsMasterIdPagoAplicacion: TAutoIncField;
    adodsMasterIdPago: TIntegerField;
    adodsMasterIdCFDI: TLargeintField;
    adodsMasterIdPersonaCliente: TIntegerField;
    adodsMasterFechaCXC: TDateTimeField;
    ADODtstAplicacionesInternas: TADODataSet;
    ADODtstAplicacionesInternasIDPagoAplicacionInterna: TIntegerField;
    ADODtstAplicacionesInternasIDPagoAplicacion: TIntegerField;
    ADODtstAplicacionesInternasIdCuentaXCobrarDetalle: TIntegerField;
    ADODtstAplicacionesInternasIDCFDI: TLargeintField;
    ADODtstAplicacionesInternasIDCFDIConcepto: TLargeintField;
    DSMaster: TDataSource;
    ADODtstAplicacionesInternasfechaCXC: TDateTimeField;
    ADODtstAplicacionesInternasItemCXC: TStringField;
    ADODtstAplicacionesInternassaldoCXC: TFMTBCDField;
    ADODtstAplicacionesInternasImportePagado: TFMTBCDField;
    adodsMasterCliente: TStringField;
    adodsMasterIDAnexo: TIntegerField;
    adodsMasterAnexo: TStringField;
    ActAplicaMoratorioInteno: TAction;
    ActCreaPagoDeposito: TAction;
    ADODtStConfiguraciones: TADODataSet;
    ADODtStConfiguracionesUltimoFolioPago: TIntegerField;
    ADODtStConfiguracionesUltimaSeriePago: TStringField;
    adodsMasterIdContrato: TIntegerField;
    adodsMasteridMetodoPago: TIntegerField;
    adodsMasterSerieFactura: TStringField;
    adodsMasterFolioFactura: TLargeintField;
    adodsMasterDescripcion: TStringField;
    ActRepAplicacionesPagos: TAction;
    adodsMasterSaldoCXC: TFMTBCDField;
    adodsMasterTotalFactura: TFMTBCDField;
    procedure DataModuleCreate(Sender: TObject);
    procedure ActAplicaMoratorioIntenoExecute(Sender: TObject);
    procedure ActCreaPagoDepositoExecute(Sender: TObject);
    procedure ActRepAplicacionesPagosExecute(Sender: TObject);
  private
    function AplicarMoratorioInterno(idCXC: integer;
      ImporteAplicado: Double): Double;
    function CrearPagoXDeposito(Importe: Double;
      ADatosPago: TADODataSet): Boolean;
    function NoExistePagoXDeposito(IdPagoAplicaInt, idanexo: integer): boolean;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmAplicacionesConsulta: TdmAplicacionesConsulta;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses AplicacionesConsultaGrid, AplicacionesInternasCon, _ConectionDmod,
  PDFAplicacionSaldosDM;


{$R *.dfm}

procedure TdmAplicacionesConsulta.DataModuleCreate(Sender: TObject);
begin
  inherited;

   gGridForm:= TfrmConaplicaciones.Create(Self);
 // TfrmConaplicaciones(gGridForm).DSAplicacion.DataSet:=ADODtStAplicacionesPagos;

  gGridForm.DataSet:= adodsMaster;

  TfrmConaplicaciones(gGridForm).ActAplicaMoraInterno:=ActAplicaMoratorioInteno; //Abr 17/17
  TfrmConaplicaciones(gGridForm).ActRepApliacionesPDF:=ActRepAplicacionesPagos; //Ago 7/17


  gFormDeatil1:=TfrmConAplicacionesInternas.Create(self);
  gFormDeatil1.DataSet:=ADODtstAplicacionesInternas;
  gFormDeatil1.DataSet.Open;
  TfrmConAplicacionesInternas(gFormDeatil1).ActCreaPagoXDeposito:=ActCreaPagoDeposito; //Jun 21/17
 (* gGridEditForm:= TFrmAplicacionesConsultaInd.Create(Self);
  gGridEditForm.DataSet := adodsMaster;
  TFrmAplicacionesConsultaInd(gGridEditForm).DSQryAuxiliar.DataSet:=ADOQryAuxiliar; //Jun 1/16  *)
  adodsMaster.open;

end;

procedure TdmAplicacionesConsulta.ActAplicaMoratorioIntenoExecute(
  Sender: TObject);
var
  valor:Double;
begin
  inherited;
  ADOQryAuxiliar.close;
  ADOQryAuxiliar.SQL.Clear;
  ADOQryAuxiliar.SQL.Add('Select * from CuentasXCobrar where IdCuentaXCobrar= '+adodsMasterNoCuentaXCobrar.asstring);
  ADOQryAuxiliar.Open;
  if  ADOQryAuxiliar.Fieldbyname('EsMoratorio').AsBoolean then
  begin
   valor:= AplicarMoratorioInterno(adodsMasterNoCuentaXCobrar.asinteger,adodsMasterimporte.AsExtended);
    ShowMessage('Aplico Moratorios Internos '+ FloatToSTR(valor));
  end
  else
    ShowMessage('No es de Moratorios');
end;

procedure TdmAplicacionesConsulta.ActCreaPagoDepositoExecute(Sender: TObject);
 var i:Integer;
    impDepo:Double; //Oct 17/17
begin//Sólo para probar creacion de los no creados en aplicacion Jun 21/17
  inherited;
  // Requiere traer el total del depósito en Garantía     //Oct 17/17
  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.sql.Clear;
  ADOQryAuxiliar.SQL.add('Select * From CuentasXCobrarDEtalle where IdCuentaXCobrarDEtalle ='+ADODtstAplicacionesInternasIdCuentaXCobrarDetalle.AsString);
  ADOQryAuxiliar.Open;
  impDepo:=ADOQryAuxiliar.fieldbyname('Importe').AsFloat;


 //Oct 17/17 hasta aca
  i:=Pos('Deposito en garantia',ADODtstAplicacionesInternasItemCXC.AsString);
  if (i>0) and (ADODtstAplicacionesInternassaldoCXC.AsFloat<0.01)
    and NoExistePagoXDeposito(ADODtstAplicacionesInternasIDPagoAplicacionInterna.asinteger,adodsMasterIDAnexo.AsInteger )  then // verificar si asi o con sus id(56,66,76)
  begin                //    ADODtstAplicacionesInternas.FieldByName('IMPORTEPAGADO').AsFloat   //Oct 17/17
    if CrearPagoXDeposito(impDepo,AdoDsMaster) then
      ShowMessage('Se creó pago correspondiente al Depósito en Garantía. Auxiliar');
  end;
end;

procedure TdmAplicacionesConsulta.ActRepAplicacionesPagosExecute(
  Sender: TObject);
var                   //AGO 7/17
  DmRptAplicacionPagospdf:TDmRptAplicacionPagospdf;
  ArchiPDF:TFileName;
  Texto,TxtSQL:String;
  FechaIni, FechaFin:TDAteTime;
//  Monto, Total,ValMax,ValMin:Double;
//  Cantidad:integer;
begin
  inherited;
  TxtSQL:= AdoDSMaster.CommandText;

  FechaIni:=  TfrmConaplicaciones(gGridForm).AFecIni;
  FechaFin:=  TfrmConaplicaciones(gGridForm).AFecFin;
  TExto:= '_' +FormatDateTime('ddmmmyyyy',_DmConection.LaFechaActual);// jun30 /17  Date);
  ArchiPDF:='AplicacionesPagos'+Texto+'.PDF';
  DmRptAplicacionPagospdf:= TDmRptAplicacionPagospdf.Create(Self);
  try
     DmRptAplicacionPagospdf.dsReport.DataSet.Close;
     TAdoDAtaset(DmRptAplicacionPagospdf.dsReport.DataSet).CommandText:=  TxtSQL;
    if pos(':Fini',TxtSQL)>0 then
    begin
      TADoDAtaset(DmRptAplicacionPagospdf.dsReport.DataSet).Parameters.ParamByName('Fini').Value:= FechaIni;
      TADoDAtaset(DmRptAplicacionPagospdf.dsReport.DataSet).Parameters.ParamByName('FFin').Value:= FechaFin+1;
      TExto:= FormatDateTime('dd/mmm/yyyy',FEchaIni) + '  -  '+ FormatDateTime('dd/mmm/yyyy',FEchaFin);//+FormatDateTime('mmm-dd-yyyy',FechaIni)+ ' AL: '+FormatDateTime('dd mmm del aaaa',FechaFin);
    end
    else
      TExto:=  'AL '+upperCASE(FormatDateTime('dd ''de'' mmmm ''del'' yyyy',_DmConection.LaFechaActual));//Date)); //Jun 30/17

    DmRptAplicacionPagospdf.dsReport.DataSet.Open;
    DmRptAplicacionPagospdf.Title:= 'REPORTE DE APLICACIONES DE PAGOS ' +#13+Texto;
    DmRptAplicacionPagospdf.pplblFilters.Caption:=Texto;
    DmRptAplicacionPagospdf.PDFFileName:= ArchiPDF;
    DmRptAplicacionPagospdf.Execute
  finally
    DmRptAplicacionPagospdf.Free;
  end;
    if FileExists(ArchiPDF) then
      ShellExecute(application.Handle, 'open', PChar(ArchiPDF), nil, nil, SW_SHOWNORMAL);
end;

function TdmAplicacionesConsulta.NoExistePagoXDeposito (IdPagoAplicaInt, idanexo :integer):boolean;
begin // Jun 21/17
  ADOQryAuxiliar.close;
  ADOQryAuxiliar.SQL.Clear;
  ADOQryAuxiliar.SQL.Add('Select *  from Pagos  where observaciones like''%('+intToSTR(IdPagoAplicaInt)+')%'' and idAnexo='+ intToStr(idanexo));
  ADOQryAuxiliar.Open;
  Result:= ADOQryAuxiliar.eof;  //Es fin de archivo .. No existe va true--  si toiene algo va en false..
end;

function TdmAplicacionesConsulta.AplicarMoratorioInterno(idCXC:integer; ImporteAplicado:Double):Double; //Abr 17/17    TEmporal solo prueba
var ValAplica:Double;
begin
  //SAca todos los anexos moratotios activos  de la CXC.. y se va pagando hata que se acabe el saldo.
  ADOQryAuxiliar.close;
  ADOQryAuxiliar.SQL.Clear;
  ADOQryAuxiliar.SQL.Add('Select *, (Importe + Impuesto -Descuento-ImporteAplicado) as Saldo  from AnexosMoratorios  where IdCuentaXCobrar = '+intToSTR(idCXC)+' and IdAnexoMoratorioEstatus =1 ');
  ADOQryAuxiliar.Open;

  while (not ADOQryAuxiliar.eof) and  (ImporteAplicado>0) do
  begin
    if ADOQryAuxiliar.FieldByName('Saldo').AsExtended>0.01 then //jun 23/17 0.0001
    begin
      if ImporteAplicado>ADOQryAuxiliar.FieldByName('Saldo').AsExtended then
      begin
        ValAplica:= ADOQryAuxiliar.FieldByName('Saldo').AsExtended;
      end
      else
         ValAplica:=ImporteAplicado;
      ADOQryAuxiliar.Edit;
      ADOQryAuxiliar.FieldByName('ImporteAplicado').AsExtended:= ADOQryAuxiliar.FieldByName('ImporteAplicado').AsExtended+ ValAplica;
      ADOQryAuxiliar.Post;
      ImporteAplicado:=ImporteAplicado- ValAplica;
    end;
    ADOQryAuxiliar.Next;
  end;
  REsult:=ImporteAplicado; //debe ser cero.. no debe quedar nada
end;

function TdmAplicacionesConsulta.CrearPagoXDeposito (Importe:Double; ADatosPago: TADODataSet):Boolean; //Jun 8/17
var serieAct:String;                                               //Es la de aplicaciones
    FolioAct, res:Integer;
begin
  Result:=False;
  ADODtStConfiguraciones.Open;
  SerieAct:= ADODtStConfiguraciones.FieldByName('UltimaSeriePago').AsString;
  FolioAct:= ADODtStConfiguraciones.FieldByName('UltimoFolioPago').AsInteger;
  SerieAct:=SerieAct;
  FolioAct:=FolioAct+1;



  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.SQl.Clear;
  ADOQryAuxiliar.SQL.Add(' Insert Into Pagos(idPersonaCliente,FechaPago,IdAnexo, IdContrato, IDMetodoPago,  ' +
                         ' SeriePago, FolioPago,Importe, Saldo,Referencia, Observaciones, EsDeposito) Values (  '+
                         ' :idPersonaCliente,:FechaPago,:IdAnexo,:IdContrato, :IDMetodoPago,  ' +
                         ' :SeriePago, :FolioPago,:Importe, :Saldo,:Referencia, :Observaciones,:EsDeposito)');

  ADOQryAuxiliar.Parameters.ParamByName('idPersonaCliente').value:=ADatosPago.FieldByName('IdPersonaCliente').asInteger;
  ADOQryAuxiliar.Parameters.ParamByName('FechaPago').value:=ADatosPago.FieldByName('FechaPago').asDatetime;

  ADOQryAuxiliar.Parameters.ParamByName('IdAnexo').value:=ADatosPago.FieldByName('IDAnexo').asInteger;
  ADOQryAuxiliar.Parameters.ParamByName('IdContrato').value:=ADatosPago.FieldByName('IdContrato').asInteger;
  if not aDatosPago.FieldByName('IDMetodoPago').isnull then
     ADOQryAuxiliar.Parameters.ParamByName('IDMetodoPago').value:=aDatosPago.FieldByName('IDMetodoPago').asInteger
  else
     ADOQryAuxiliar.Parameters.ParamByName('IDMetodoPago').value:= 5 ;// jul 5/17 Otro


  ADOQryAuxiliar.Parameters.ParamByName('SeriePago').value:=serieAct;
  ADOQryAuxiliar.Parameters.ParamByName('FolioPago').value:= FolioAct;
  ADOQryAuxiliar.Parameters.ParamByName('Importe').value:=simpleroundto( Importe,-2);  //Jun 21/17
  ADOQryAuxiliar.Parameters.ParamByName('Saldo').value:= simpleroundto(Importe,-2);
  ADOQryAuxiliar.Parameters.ParamByName('Referencia').value:=  '';
  ADOQryAuxiliar.Parameters.ParamByName('Observaciones').value:=  'Trasladado por Deposito en Garantía.API: ('
                                                                 + ADODtstAplicacionesInternasIDPagoAplicacionInterna.AsString+')';
  ADOQryAuxiliar.Parameters.ParamByName('EsDeposito').value:=  True;


  Res:= ADOQryAuxiliar.ExecSQL;
  if Res=1 then
  begin
     REsult:=True;
    //Para actualizar folio pago
    ADODtStConfiguraciones.Edit;
    ADODtStConfiguraciones.FieldByName('UltimaSeriePago').AsString:=SerieAct;
    ADODtStConfiguraciones.FieldByName('UltimoFolioPago').AsInteger :=FolioAct;
    ADODtStConfiguraciones.Post;

  end;
  ADODtStConfiguraciones.Close;
end;
end.
