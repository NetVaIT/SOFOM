unit AplicacionesConsultaDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB, System.UITypes, dialogs, math, Forms,
  Winapi.ShellAPI, Winapi.Windows;

resourcestring
  strDelAplicacion = '¿Deseas elimina esta aplicación de pago?';

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
    actDesaplicar: TAction;
    adopDelPagosAplicaciones: TADOStoredProc;
    ADOSP_CreaPagoDepoGar: TADOStoredProc;
    adodsMasteridBAnco: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure ActAplicaMoratorioIntenoExecute(Sender: TObject);
    procedure ActCreaPagoDepositoExecute(Sender: TObject);
    procedure ActRepAplicacionesPagosExecute(Sender: TObject);
    procedure actDesaplicarExecute(Sender: TObject);
  private
    { Private declarations }
    function AplicarMoratorioInterno(idCXC: integer;
      ImporteAplicado: Double): Double;
    function CrearPagoXDeposito(Importe: Double;
      ADatosPago: TADODataSet): Boolean;
    function NoExistePagoXDeposito(IdPagoAplicaInt, idanexo: integer): boolean;
    function Desaplicar: Boolean;
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses AplicacionesConsultaGrid, AplicacionesInternasCon, _ConectionDmod,
  PDFAplicacionSaldosDM, _Utils, ProcesosType;

{$R *.dfm}

procedure TdmAplicacionesConsulta.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmConaplicaciones.Create(Self);
  gGridForm.DataSet:= adodsMaster;
  gGridForm.ReadOnlyGrid:= True;
  TfrmConaplicaciones(gGridForm).ActAplicaMoraInterno:=ActAplicaMoratorioInteno; //Abr 17/17
  TfrmConaplicaciones(gGridForm).ActRepApliacionesPDF:=ActRepAplicacionesPagos; //Ago 7/17
  TfrmConaplicaciones(gGridForm).actDesaplicar := actDesaplicar;
  ADODtstAplicacionesInternas.Open;
  gFormDeatil1:=TfrmConAplicacionesInternas.Create(self);
  gFormDeatil1.DataSet:=ADODtstAplicacionesInternas;
  gFormDeatil1.ReadOnlyGrid:= True;
  TfrmConAplicacionesInternas(gFormDeatil1).ActCreaPagoXDeposito:=ActCreaPagoDeposito; //Jun 21/17
end;

function TdmAplicacionesConsulta.Desaplicar: Boolean;
var
  IdPagoAplicacion: Integer;
begin
  Result:= False;
  IdPagoAplicacion := adodsMasterIdPagoAplicacion.Value;
  if IdPagoAplicacion <> 0 then
  begin
    if MessageDlg(strDelAplicacion, mtConfirmation, mbYesNo, 0) = mrYes then
    begin
      ScreenCursorProc(crSQLWait);
      try
        adopDelPagosAplicaciones.Parameters.ParamByName('@IdPagoAplicacion').Value:= IdPagoAplicacion;
        adopDelPagosAplicaciones.Parameters.ParamByName('@IdUsuario').Value:= _dmConection.IdUsuario;
        adopDelPagosAplicaciones.ExecProc;
      finally
        ScreenCursorProc(crDefault);
      end;
      Result:= True;
    end;
  end;
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
  impDepo:=ADOQryAuxiliar.fieldbyname('Importe').AsFloat - ADOQryAuxiliar.fieldbyname('Descuento').AsFloat; //verificar  oct 1/18
 //Oct 17/17 hasta aca
  i:=Pos('Deposito en garantia',ADODtstAplicacionesInternasItemCXC.AsString);
  if (i>0) and (ADODtstAplicacionesInternassaldoCXC.AsFloat<0.01)
    and NoExistePagoXDeposito(ADODtstAplicacionesInternasIDPagoAplicacionInterna.asinteger,adodsMasterIDAnexo.AsInteger )  then // verificar si asi o con sus id(56,66,76)
  begin                //    ADODtstAplicacionesInternas.FieldByName('IMPORTEPAGADO').AsFloat   //Oct 17/17
    if CrearPagoXDeposito(impDepo,AdoDsMaster) then
      ShowMessage('Se creó pago correspondiente al Depósito en Garantía. Auxiliar');
  end;
end;

procedure TdmAplicacionesConsulta.actDesaplicarExecute(Sender: TObject);
begin
  inherited;
  if Desaplicar then
    RefreshADODS(adodsMaster, adodsMasterIdPagoAplicacion);
end;

procedure TdmAplicacionesConsulta.ActRepAplicacionesPagosExecute(
  Sender: TObject);
var
  DmRptAplicacionPagospdf:TDmRptAplicacionPagospdf;
  ArchiPDF:TFileName;
  Actual: string;
  Texto,TxtSQL:String;
  FechaIni, FechaFin:TDAteTime;
begin
  inherited;
  Actual:= FormatDateTime('ddmmmyyyyhhnnss', Now);
  ArchiPDF:='AplicacionesPagos'+'_'+Actual+_ExtensionPDF;
  TxtSQL:= AdoDSMaster.CommandText;
  FechaIni:=  TfrmConaplicaciones(gGridForm).AFecIni;
  FechaFin:=  TfrmConaplicaciones(gGridForm).AFecFin;
  DmRptAplicacionPagospdf:= TDmRptAplicacionPagospdf.Create(Self);
  try
     DmRptAplicacionPagospdf.dsReport.DataSet.Close;
     TAdoDAtaset(DmRptAplicacionPagospdf.dsReport.DataSet).CommandText:=  TxtSQL;
    if pos(':Fini',TxtSQL)>0 then
    begin
      TADoDAtaset(DmRptAplicacionPagospdf.dsReport.DataSet).Parameters.ParamByName('Fini').Value:= FechaIni;
      TADoDAtaset(DmRptAplicacionPagospdf.dsReport.DataSet).Parameters.ParamByName('FFin').Value:= FechaFin+1;
      Texto:= FormatDateTime('dd/mmm/yyyy',FEchaIni) + '  -  '+ FormatDateTime('dd/mmm/yyyy',FEchaFin);//+FormatDateTime('mmm-dd-yyyy',FechaIni)+ ' AL: '+FormatDateTime('dd mmm del aaaa',FechaFin);
    end
    else
      Texto:=  'AL '+upperCASE(FormatDateTime('dd ''de'' mmmm ''del'' yyyy',_DmConection.LaFechaActual));//Date)); //Jun 30/17
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
var serieAct:String;                                               //Es la de aplicaciones      //Es posible que aca se deba generar el deposito padre antes de....Ago 24/18
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
  //Sep 4/18


  ADOSP_CreaPagoDepoGar.Parameters.ParamByName('@idPersonaCliente').Value:= ADatosPago.FieldByName('IdPersonaCliente').asInteger;
  ADOSP_CreaPagoDepoGar.Parameters.ParamByName('@FechaPago').Value:= ADatosPago.FieldByName('FechaPago').asdatetime;
  ADOSP_CreaPagoDepoGar.Parameters.ParamByName('@IdAnexo').Value:= ADatosPago.FieldByName('IdAnexo').asInteger;
  ADOSP_CreaPagoDepoGar.Parameters.ParamByName('@IdContrato').Value:= ADatosPago.FieldByName('IdContrato').asInteger;
  if not aDatosPago.FieldByName('IDMetodoPago').isnull then
    ADOSP_CreaPagoDepoGar.Parameters.ParamByName('@IDMetodoPago').Value:= ADatosPago.FieldByName('IDMetodoPago').asInteger
  else
    ADOSP_CreaPagoDepoGar.Parameters.ParamByName('@IDMetodoPago').Value:=5;

  ADOSP_CreaPagoDepoGar.Parameters.ParamByName('@SeriePago').Value:=  serieAct;
  ADOSP_CreaPagoDepoGar.Parameters.ParamByName('@FolioPago').Value:= FolioAct;
  ADOSP_CreaPagoDepoGar.Parameters.ParamByName('@Importe').Value:=simpleroundto(Importe,-2);
  ADOSP_CreaPagoDepoGar.Parameters.ParamByName('@Saldo').Value:=simpleroundto(Importe,-2);
  ADOSP_CreaPagoDepoGar.Parameters.ParamByName('@Referencia').Value:= '';
  ADOSP_CreaPagoDepoGar.Parameters.ParamByName('@Observaciones').value:= 'Trasladado por Deposito en Garantía. API : '
                                                                           + ADODtstAplicacionesInternasIDPagoAplicacionInterna.AsString;
  ADOSP_CreaPagoDepoGar.Parameters.ParamByName('@EsDeposito').Value:= True;

  if not ADatosPago.FieldByName('IDBanco').IsNull then
     ADOSP_CreaPagoDepoGar.Parameters.ParamByName('@IDBanco').Value:= ADatosPago.FieldByName('IDBanco').asInteger
  else
    ADOSP_CreaPagoDepoGar.Parameters.ParamByName('@IDBanco').Value:= ADatosPago.FieldByName('IDBanco').Value;  //Verificar
 // ADOSP_CreaPagoDepoGar.Parameters.ParamByName('@IDFormaPago33').Value:= 3; ///por default
  ADOSP_CreaPagoDepoGar.Parameters.ParamByName('@IDFormaPago33').Value:= ADatosPago.FieldByName('IDCFDIFormaPago33').Value; //SEp 28/18 para que quede igual que la de pagos
  ADOSP_CreaPagoDepoGar.Parameters.ParamByName('@IDMoneda').Value:= _MONEDAS_ID_PESO_MXN;///Default
 //ADatosPago.FieldByName('IDFormaPago33').Value;
  ADOSP_CreaPagoDepoGar.ExecProc;
  REs:= ADOSP_CreaPagoDepoGar.Parameters.ParamByName('@idPago').Value;

  if Res>0 then
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

(*  //CReacion previa del deposito sep 3/18
function TdmAplicacionesConsulta.CrearPagoXDeposito (Importe:Double; ADatosPago: TADODataSet):Boolean; //Jun 8/17
var serieAct:String;                                               //Es la de aplicaciones      //Es posible que aca se deba generar el deposito padre antes de....Ago 24/18
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



*)


end.
