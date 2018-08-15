unit EvaluacionesRiesgoDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, System.Actions,
  Vcl.ActnList, Data.Win.ADODB, Dialogs, ppCtrls, ppPrnabl, ppClass, ppDB,
  ppBands, ppCache, ppDesignLayer, ppDBPipe, ppParameter, ppComm, ppRelatv,
  ppProd, ppReport;

type
  TdmEvaluacionRiesgo = class(T_dmStandar)
    adodsPersonas: TADODataSet;
    dsMaster: TDataSource;
    adodsPreguntas: TADODataSet;
    adodsPreguntasOpciones: TADODataSet;
    ADOdsConPregOpciones: TADODataSet;
    ADOdsConPregOpcionesIdMRPreguntaOpcion: TAutoIncField;
    ADOdsConPregOpcionesIdMRPregunta: TIntegerField;
    ADOdsConPregOpcionesOpcion: TStringField;
    dsPreguntas: TDataSource;
    ADOdsCuestionarios: TADODataSet;
    DSCuestionario: TDataSource;
    ADODSRespuestasCuestionario: TADODataSet;
    ADOdsPaquetesPreguntas: TADODataSet;
    ADOdsPaquetesPreguntasIdMRPaquetePregunta: TAutoIncField;
    ADOdsPaquetesPreguntasIdMRCuestionario: TIntegerField;
    ADOdsPaquetesPreguntasDescripcionPaquete: TStringField;
    ADOdsPaquetesPreguntasPonderacion_Extra: TFloatField;
    ADODsCamposAdicionales: TADODataSet;
    ADODsCamposAdicionalesIdMRTablaAsociadoCampo: TAutoIncField;
    ADODsCamposAdicionalesIdMRPreguntaOpcion: TIntegerField;
    ADODsCamposAdicionalesCampoEspecialAltoRiesgo: TStringField;
    ADODsCamposAdicionalesCondicionEnTexto: TStringField;
    ADODsCamposAdicionalesPonderacionExtra: TFloatField;
    ADODsRelacionPreguntas: TADODataSet;
    ADODsRelacionPreguntasIdMRRelacionPregunta: TAutoIncField;
    ADODsRelacionPreguntasIdMRPaquetePregunta: TIntegerField;
    ADODsRelacionPreguntasIdMRPregunta: TIntegerField;
    ADODsRelacionPreguntasIdMRPreguntaOpcion: TIntegerField;
    ADODsRelacionPreguntasValorCondicionante: TStringField;
    ADODsRelacionPreguntasPreguntaTxt: TStringField;
    ADODsRelacionPreguntasOpcionTxt: TStringField;
    ADODsRelacionPreguntasPaqueteTxt: TStringField;
    DSPaquetePregunta: TDataSource;
    adodsMasterIdMRCuestionarioAplicado: TAutoIncField;
    adodsMasterIdMRCuestionario: TIntegerField;
    adodsMasterIDPersona: TIntegerField;
    adodsMasterFecha: TDateTimeField;
    adodsMasterPonderacionTotal: TFloatField;
    adodsMasterIdUsuario: TIntegerField;
    adodsMasterFechaVencimiento: TDateTimeField;
    adodsMasterCliente: TStringField;
    adodsMasterVersionCuestionario: TFloatField;
    adodsMastermesesVen: TIntegerField;
    actAplicaCuestionario: TAction;
    actCreaCuestionarioXAplicar: TAction;
    ADOQryAuxiliar: TADOQuery;
    ADOQryInsertaPreguntas: TADOQuery;
    ADODSRespuestasCuestionarioIdMRCuestionarioAplicadoRespuesta: TAutoIncField;
    ADODSRespuestasCuestionarioIdMRCuestionarioAplicado: TIntegerField;
    ADODSRespuestasCuestionarioIdMRPregunta: TIntegerField;
    ADODSRespuestasCuestionarioIdMRPreguntaOpcionResp: TIntegerField;
    ADODSRespuestasCuestionarioOtroTexto: TStringField;
    ADODSRespuestasCuestionarioPregunta: TStringField;
    ADOdsConPregOpcionesPonderacion: TFloatField;
    ADOdsConPregOpcionesReqTextoAdi: TBooleanField;
    ADOdsConPregOpcionesTablaExterna: TStringField;
    ADOdsConPregOpcionesCampoADesplegar: TStringField;
    ADOdsConPregOpcionesCondicionTablaExt: TStringField;
    ADOdsConPregOpcionesEvaluaCamposAdicionales: TBooleanField;
    ADODSRespuestasCuestionarioopcion: TStringField;
    ADOQryEvaluacionRespuestas: TADOQuery;
    ADOQryEvaluacionRespuestasIdMRCuestionarioAplicadoRespuesta: TAutoIncField;
    ADOQryEvaluacionRespuestasIdMRCuestionarioAplicado: TIntegerField;
    ADOQryEvaluacionRespuestasIdMRPregunta: TIntegerField;
    ADOQryEvaluacionRespuestasIdMRPreguntaOpcionResp: TIntegerField;
    ADOQryEvaluacionRespuestasOtroTexto: TStringField;
    ADOQryEvaluacionRespuestasPregunta: TStringField;
    ADOQryEvaluacionRespuestasOpcion: TStringField;
    ADOQryEvaluacionRespuestasPonderacion: TFloatField;
    ADOQryEvaluacionRespuestasReqTextoAdi: TBooleanField;
    ADOQryEvaluacionRespuestasTablaExterna: TStringField;
    ADOQryEvaluacionRespuestasCondicionTablaExt: TStringField;
    ADOQryEvaluacionRespuestasEvaluaCamposAdicionales: TBooleanField;
    ADOQryCamposAdicionales: TADOQuery;
    ADOQryCamposAdicionalesIdMRTablaAsociadoCampo: TAutoIncField;
    ADOQryCamposAdicionalesIdMRPreguntaOpcion: TIntegerField;
    ADOQryCamposAdicionalesCampoEspecialAltoRiesgo: TStringField;
    ADOQryCamposAdicionalesCondicionEnTexto: TStringField;
    ADOQryCamposAdicionalesPonderacionExtra: TFloatField;
    ADOQryCamposAdicionalesTablaExterna: TStringField;
    ADOQryCamposAdicionalesCondicionTablaExt: TStringField;
    ADOQryCamposAdicionalesPonderacion: TFloatField;
    dsEvaluacionREspuestas: TDataSource;
    actCalcularPonderacion: TAction;
    ADOQryCamposAdicionalesCAmpoaDesplegar: TStringField;
    ADOQryCalificacionesRiesgos: TADOQuery;
    ppRptCuestionarioAplicado: TppReport;
    ppParameterList1: TppParameterList;
    DBPplnCuestionario: TppDBPipeline;
    DBPplnPreguntasRespuestas: TppDBPipeline;
    DSRespuestasCuestionario: TDataSource;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppDBText2: TppDBText;
    ppLabel4: TppLabel;
    ppDBText3: TppDBText;
    ppLabel5: TppLabel;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLabel7: TppLabel;
    ppDBText6: TppDBText;
    ppLblEspecificar: TppLabel;
    ppDBTxtOtro: TppDBText;
    ADODSRespuestasCuestionarioOrden: TIntegerField;
    ppDBCalc1: TppDBCalc;
    ppLabel9: TppLabel;
    ppDBText8: TppDBText;
    adodsMasterTipoPersona: TStringField;
    ppLabel10: TppLabel;
    ppDBText9: TppDBText;
    ppShape1: TppShape;
    adodsMasterRiesgo: TStringField;
    ppLabel6: TppLabel;
    ppDBText10: TppDBText;
    adodsMasterRFC: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure adodsMasterNewRecord(DataSet: TDataSet);
    procedure adodsMasterIdMRCuestionarioChange(Sender: TField);
    procedure actCreaCuestionarioXAplicarExecute(Sender: TObject);
    procedure actAplicaCuestionarioExecute(Sender: TObject);
    procedure actCalcularPonderacionExecute(Sender: TObject);
  private
    function SacaTipoPersona(idpesonaAct: integer): Integer;
    function TraeValorExtra(TextoAdi:String): Double;
    function EvaluarPaquetesPreguntas(idcuestionario,idCuestAplica: Integer): Double;
    procedure AjustaRiesgoCliente(IdCliente: Integer; ValorRiesgo: Double);
    { Private declarations }
  public
    { Public declarations }

  end;

var
  dmEvaluacionRiesgo: TdmEvaluacionRiesgo;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses EvaluacionesRiesgoForm, MRAplicacionCuesionarioEdit, _ConectionDmod,
  _Utils;

{$R *.dfm}

procedure TdmEvaluacionRiesgo.actAplicaCuestionarioExecute(Sender: TObject);
var
  ArchiPDF:TFileName;
begin
  inherited;
  if adodsMasterPonderacionTotal.AsFloat >0  then
  begin  //Reporte
    ArchiPDF:='CuestMatrizRiesgo'+'_'+adodsMasterRFC.asstring+'.PDF';
    ppRptCuestionarioAplicado.ShowPrintDialog:= False;
    ppRptCuestionarioAplicado.ShowCancelDialog:= False;
    ppRptCuestionarioAplicado.PrinterSetup.DocumentName:= ArchiPDF;
    ppRptCuestionarioAplicado.DeviceType:= 'PDF';
    ppRptCuestionarioAplicado.TextFileName:= ArchiPDF;
    ppRptCuestionarioAplicado.Print;
  end
  else  //cuando aun no esta completo
  begin
    actCreaCuestionarioXAplicar.Execute; //Este crea
    ADODSRespuestasCuestionario.Close; //Solo se puede
    ADODSRespuestasCuestionario.Open;
    ADOdsConPregOpciones.Open;
    FrmAplicacionCuestionarioEdt:= TFrmAplicacionCuestionarioEdt.create(nil);
    FrmAplicacionCuestionarioEdt.dsCuestionarioaplicado.DataSet:=ADODSMaster;
    FrmAplicacionCuestionarioEdt.dsrespuestasCuestionario.DataSet:=ADODSRespuestasCuestionario;   //Verificar si se deja auto edit
  
    FrmAplicacionCuestionarioEdt.DSConOpciones.DataSet:=ADOdsConPregOpciones;
    FrmAplicacionCuestionarioEdt.ActCalculaPonderacion:=actCalcularPonderacion; //Ago 9/18

  
    ADODSRespuestasCuestionario.Edit;
    FrmAplicacionCuestionarioEdt.ShowModal;
    FrmAplicacionCuestionarioEdt.Free;

    if adodsMasterPonderacionTotal.AsFloat >0  then
    begin
      //Mostrar REporte??

      adodspersonas.Close; //Ago 15/18
      adodsPersonas.Open;
      RefreshADODS(adodsMaster,adodsMasterIdMRCuestionarioAplicado);
      ArchiPDF:='CuestMatrizRiesgo'+'_'+adodsMasterRFC.asstring+'.PDF';
      ppRptCuestionarioAplicado.ShowPrintDialog:= False;
      ppRptCuestionarioAplicado.ShowCancelDialog:= False;
      ppRptCuestionarioAplicado.PrinterSetup.DocumentName:= ArchiPDF;
      ppRptCuestionarioAplicado.DeviceType:= 'PDF';
      ppRptCuestionarioAplicado.TextFileName:= ArchiPDF;
      ppRptCuestionarioAplicado.Print;

    end;


  end;
end;

procedure TdmEvaluacionRiesgo.actCalcularPonderacionExecute(Sender: TObject);
var
   Valor, ValAux:Double;
   IdCuestAplica, IDCuest:Integer;
begin
  inherited;
  Valor:=0;
  IdCuestAplica := adodsMasterIdMRCuestionarioAplicado.AsInteger;
  IDCuest:= adodsMasterIdMRCuestionario.AsInteger; //Ago 10/18 
  ADOQryEvaluacionRespuestas.Close;
  ADOQryEvaluacionRespuestas.Parameters.ParamByName('IDMRCuestionarioAplicado').Value:= IdCuestAplica;
  ADOQryEvaluacionRespuestas.Open;

  while not ADOQryEvaluacionRespuestas.Eof do
  begin
    if ADOQryEvaluacionRespuestasEvaluaCamposAdicionales.AsBoolean then
    begin
      ValAux:=TraeValorExtra(ADOQryEvaluacionRespuestasOtroTexto.AsString);
      if ValAux=0 then  //REgrsa cero si no se cumplealguna condicion
        ValAux:= ADOQryEvaluacionRespuestasPonderacion.AsFloat;
    end  
    else
      ValAux:= ADOQryEvaluacionRespuestasPonderacion.AsFloat;
    Valor:=Valor+ValAux;


    ADOQryEvaluacionRespuestas.Next;
  end;
  ValAux:=EvaluarPaquetesPreguntas (IDCuest,IdCuestAplica); //
  Valor:= Valor+ValAux;

  ShowMessage('Total ponderación :'+floatToStr(Valor));
  AdoDSMaster.Edit;
  adodsMasterPonderacionTotal.AsFloat:=Valor;
  adodsMaster.Post;

  //Ajustar cliente???
  AjustaRiesgoCliente(adodsMasterIDPersona.AsInteger, valor);
end;

procedure TdmEvaluacionRiesgo.AjustaRiesgoCliente(IdCliente:Integer;ValorRiesgo:Double); //Ago 10/18
var idpersonaTipo, IdRiesgoTipo:Integer;
begin
  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.SQl.Clear;
  ADOQryAuxiliar.SQL.Add('SElect IdpersonaTipo, IdRolTipo, IdRiesgoTipo from Personas where idpersona='+ intToStr(IDCliente));
  ADOQryAuxiliar.open;
  idpersonaTipo:=ADOQryAuxiliar.FieldByName('IdPersonaTipo').AsInteger;

  ADOQryCalificacionesRiesgos.Close;
  ADOQryCalificacionesRiesgos.Parameters.ParamByName('IdMRCuestionario').Value:= adodsMasterIdMRCuestionario.asinteger;
  ADOQryCalificacionesRiesgos.Parameters.ParamByName('IdPersonaTipo').Value:= idpersonaTipo;
  ADOQryCalificacionesRiesgos.Parameters.ParamByName('Valor1').Value:= ValorRiesgo;
  ADOQryCalificacionesRiesgos.Parameters.ParamByName('Valor2').Value:= ValorRiesgo;

  ADOQryCalificacionesRiesgos.open;

  if not ADOQryCalificacionesRiesgos.eof then
  begin
    IdRiesgoTipo:= ADOQryCalificacionesRiesgos.FieldByName('IdRiesgoTipo').AsInteger;// Showmessage('Encontro algo') ;
    ADOQryAuxiliar.Close;
    ADOQryAuxiliar.SQl.Clear;
    ADOQryAuxiliar.SQL.Add('Update Personas SET IdRiesgoTipo ='+intToStr(IdRiesgoTipo)+ ' where idpersona='+ intToStr(IDCliente));
    if ADOQryAuxiliar.ExecSQL =1 then
       ShowMessage('Actualizo Riesgo Cliente')
    else
      ShowMessage('No se actualizó el riesgo');
  
  end;  
    
end;

function TdmEvaluacionRiesgo.EvaluarPaquetesPreguntas (idcuestionario, idCuestAplica:Integer):Double;
var 
   CantPregBase, CantResp:Integer;
   valPonExt:Double;
begin //Ago 10 /17
  valPonExt:=0;
  ADOdsPaquetesPreguntas.Close;
  ADOdsPaquetesPreguntas.Open;  //VErificar si ya esta relacionado
 // ADODsRelacionPreguntas.Open;

  while (not ADOdsPaquetesPreguntas.Eof) and (valPonExt=0) do
  begin                                       //Tan probto lo encuentre sale
    ADOQryAuxiliar.Close;
    ADOQryAuxiliar.SQL.Clear;
    ADOQryAuxiliar.SQL.Add('SElect * from  MRRelacionesPreguntas RP inner join  MRPaquetesPreguntas PP '+
                           'on  pp.IdMRPaquetePregunta = RP.IdMRPaquetePregunta '+
                           'and  pp.IdMRCuestionario = '+intTosTR(idcuestionario));
    ADOQryAuxiliar.Open;
    CantPregBase:= ADOQryAuxiliar.RecordCount; //CAntidad de preguntas del paquete


    ADOQryAuxiliar.Close;
    ADOQryAuxiliar.SQL.Clear;

    ADOQryAuxiliar.SQL.Add('SElect * from MRCuestionarioAplicadoRespuestas CAR where CAR.IdMRCuestionarioAplicado= '+ intToStr(idCuestAplica)+
                            ' and exists(SElect * from  MRRelacionesPreguntas RP ' +
                            ' inner join  MRPaquetesPreguntas PP on  pp.IdMRPaquetePregunta =RP.IdMRPaquetePregunta '+
                            ' where pp.IdMRCuestionario = '+intTosTR(idcuestionario)+
                            ' and car.IdMRPregunta=RP.IdMRPregunta and CAR.IdMRPreguntaOpcionResp= RP.IdMRPreguntaOpcion) ');
    ADOQryAuxiliar.Open;
    CantResp:=  ADOQryAuxiliar.RecordCount;
    if CantResp=CantPregBase then
       valPonExt:=ADOdsPaquetesPreguntasPonderacion_Extra.AsFloat;
 
    ADOdsPaquetesPreguntas.Next;
  end;
  Result:=valPonExt;

end;


function TdmEvaluacionRiesgo.TraeValorExtra(TextoAdi:String):Double; //Abr 9/18
var valAux:Double;
begin
  ValAux:=0;
  ADOQryCamposAdicionales.Open; //DEberia estar ammarrado
  while (not ADOQryCamposAdicionales.eof)and(ValAux=0) do
  begin
    adoqryAuxiliar.Close;
    adoqryAuxiliar.SQL.Clear;
    adoqryAuxiliar.SQL.Add('Select '+ADOQryCamposAdicionalesCampoEspecialAltoRiesgo.asstring +
                           ' from '+ADOQryCamposAdicionalesTablaExterna.asstring +
                           ' where '+ ADOQryCamposAdicionalesCAmpoaDesplegar.asstring+'='''+TextoAdi+''''+
                           ' and '  +ADOQryCamposAdicionalesCondicionEnTexto.asstring );
    adoqryAuxiliar.Open;
  //  if adoqryAuxiliar.FieldByName(ADOQryCamposAdicionalesCampoEspecialAltoRiesgo.asstring).asboolean then
    if not  adoqryAuxiliar.eof  then
      ValAux:=  ADOQryCamposAdicionalesPonderacionExtra.AsFloat;
    
    ADOQryCamposAdicionales.Next;
  end;
  Result:=ValAux;
end;

procedure TdmEvaluacionRiesgo.actCreaCuestionarioXAplicarExecute(
  Sender: TObject);
var
  idAplica,IdCuestionario,IdPersonaTipo, EsPF, EsPM:Integer;

begin
  inherited;
  EsPF:=0;
  EsPM:=0;
  IdPersonaTipo:= SacaTipoPersona(adodsMasterIDPersona.AsInteger);
  if IdPersonaTipo =1 then
     EsPF:=1
  else
    EsPM:=1;

  idCuestionario:=  adodsMasterIdMRCuestionario.AsInteger;
  IdAplica := adodsMasterIdMRCuestionarioAplicado.AsInteger;

  ADOQryInsertaPreguntas.Parameters.ParamByName('IdMRCuestAplica1').Value:= IdAplica;
  ADOQryInsertaPreguntas.Parameters.ParamByName('IdMRCuestAplica2').Value:= IdAplica;
  ADOQryInsertaPreguntas.Parameters.ParamByName('IdMRCuestionario').Value:= idCuestionario;
  ADOQryInsertaPreguntas.Parameters.ParamByName('PF').Value:=EsPF;
  ADOQryInsertaPreguntas.Parameters.ParamByName('PM').Value:=EsPM;
  idAplica:= ADOQryInsertaPreguntas.ExecSQL;
 (* if  idAplica >0 then     //DEshabilitado Ago 9/18
      ShowMessage('Se crearon '+ intTostr(idaplica)+' preguntas ')
  else
     Showmessage('No se crearon preguntas.. ');*)
  //adodsMasterIdMRCuestionario
  adodsMaster.Edit;
  adodsMasterPonderacionTotal.AsInteger:=0; //Para indicar que ya se crearon las preguntas  //Ago 15/18
  adodsMaster.Post;
end;

function TdmEvaluacionRiesgo.SacaTipoPersona(idpesonaAct:integer):Integer;
begin
  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.SQL.Clear;
  ADOQryAuxiliar.SQL.Add('Select IdPersonaTipo from Personas where IdPersona='+ intToStr(idpesonaAct));
  ADOQryAuxiliar.open;

  REsult:= ADOQryAuxiliar.fieldbyname('IdpersonaTipo').asinteger;   //DEbe ria ser 1 o 2


end;


procedure TdmEvaluacionRiesgo.adodsMasterIdMRCuestionarioChange(Sender: TField);
var
  m1, m2,d,m,a:Word;
  fecVenc:TDAteTime;
begin
  inherited;
  decodedate(AdodsMasterFecha.asdatetime, a,m,d);
  m1:=adodsMastermesesVen.asinteger;
  m:=m+m1; //Total meses
  m2:=m mod 12; //Meses
  m1:=m div 12; //Años
  a:=a+m1;
  if d>28 then
     d:=28; //Para evitar problemas con fechas
  fecVenc:=EncodeDate(a,m2,d);
  adodsMasterFechaVencimiento.asdatetime :=fecVenc;

end;

procedure TdmEvaluacionRiesgo.adodsMasterNewRecord(DataSet: TDataSet);
begin
  inherited;
  dataset.FieldByName('Fecha').asdatetime:= date;
  dataset.FieldByName('IdUsuario').AsInteger:=_dmConection.IdUsuario;//Ago 14/18

  dataset.FieldByName('FechaVencimiento').asdatetime:= date+45;   //Ago 15/18 para que tenga valor de referencia
end;

procedure TdmEvaluacionRiesgo.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmEvaluacionesRiesgo.Create(self); //Ago 6/18
  gGridForm.DataSet:= adodsMaster;
  TfrmEvaluacionesRiesgo(gGridForm).ActAplicaCuestionario:=actAplicaCuestionario ;
end;

end.
