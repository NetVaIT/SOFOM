unit MatrizRiesgoDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmMatrizRiesgo = class(T_dmStandar)
    adodsCuestionarioEstatus: TADODataSet;
    adodsCalificacionRiesgo: TADODataSet;
    dsMaster: TDataSource;
    adodsMasterIdMRCuestionario: TAutoIncField;
    adodsMasterIdMRCuestionarioEstatus: TIntegerField;
    adodsMasterIdUsuario: TIntegerField;
    adodsMasterVersion: TFloatField;
    adodsMasterFechaCreacion: TDateTimeField;
    adodsMasterMesesVigenciaAplicacion: TIntegerField;
    adodsCalificacionRiesgoIdMRCalificacionRiesgo: TAutoIncField;
    adodsCalificacionRiesgoIdMRCuestionario: TIntegerField;
    adodsCalificacionRiesgoIdPersonaTipo: TIntegerField;
    adodsCalificacionRiesgoNivelRiesgo: TStringField;
    adodsCalificacionRiesgoValorMinimo: TFloatField;
    adodsCalificacionRiesgoValorMaximo: TFloatField;
    adodsPersonaTipo: TADODataSet;
    adodsCalificacionRiesgoPersonaTipo: TStringField;
    adodsCuestionarioEstatusIdMRCuestionarioEstatus: TAutoIncField;
    adodsCuestionarioEstatusIdentificador: TStringField;
    adodsCuestionarioEstatusDescripcion: TStringField;
    adodsMasterEstatus: TStringField;
    adodsPreguntas: TADODataSet;
    adodsPreguntasOpciones: TADODataSet;
    dsPreguntas: TDataSource;
    adodsPreguntasIdMRPregunta: TAutoIncField;
    adodsPreguntasIdMRCuestionario: TIntegerField;
    adodsPreguntasPregunta: TStringField;
    adodsPreguntasAplicaaPersonaFisica: TBooleanField;
    adodsPreguntasAplicaaPersonaMoral: TBooleanField;
    adodsPreguntasOrden: TIntegerField;
    adodsPreguntasCondicionada: TBooleanField;
    adodsPreguntasEvaluaARDirecto: TBooleanField;
    adodsPreguntasOpcionesIdMRPreguntaOpcion: TAutoIncField;
    adodsPreguntasOpcionesIdMRPregunta: TIntegerField;
    adodsPreguntasOpcionesOpcion: TStringField;
    adodsPreguntasOpcionesPonderacion: TFloatField;
    adodsPreguntasOpcionesReqTextoAdi: TBooleanField;
    adodsPreguntasOpcionesTablaExterna: TStringField;
    adodsPreguntasOpcionesCampoADesplegar: TStringField;
    adodsPreguntasOpcionesCondicionTablaExt: TStringField;
    adodsPreguntasOpcionesEvaluaCamposAdicionales: TBooleanField;
    ADOQryAuxiliar: TADOQuery;
    ADODsCamposAdicionales: TADODataSet;
    dsPreguntaOpcion: TDataSource;
    ADODsCamposAdicionalesIdMRTablaAsociadoCampo: TAutoIncField;
    ADODsCamposAdicionalesIdMRPreguntaOpcion: TIntegerField;
    ADODsCamposAdicionalesCampoEspecialAltoRiesgo: TStringField;
    ADODsCamposAdicionalesCondicionEnTexto: TStringField;
    ADODsCamposAdicionalesPonderacionExtra: TFloatField;
    ADOdsPaquetesPreguntas: TADODataSet;
    DSPaquetePregunta: TDataSource;
    ADOdsPaquetesPreguntasIdMRPaquetePregunta: TAutoIncField;
    ADOdsPaquetesPreguntasIdMRCuestionario: TIntegerField;
    ADOdsPaquetesPreguntasDescripcionPaquete: TStringField;
    ADOdsPaquetesPreguntasPonderacion_Extra: TFloatField;
    ADODsRelacionPreguntas: TADODataSet;
    ADODsRelacionPreguntasIdMRRelacionPregunta: TAutoIncField;
    ADODsRelacionPreguntasIdMRPaquetePregunta: TIntegerField;
    ADODsRelacionPreguntasIdMRPregunta: TIntegerField;
    ADODsRelacionPreguntasIdMRPreguntaOpcion: TIntegerField;
    ADODsRelacionPreguntasValorCondicionante: TStringField;
    ADODsRelacionPreguntasPreguntaTxt: TStringField;
    ADODsRelacionPreguntasOpcionTxt: TStringField;
    ADODsRelacionPreguntasPaqueteTxt: TStringField;
    ADODSRiesgosTipos: TADODataSet;
    adodsCalificacionRiesgoIDRiesgoTipo: TIntegerField;
    adodsCalificacionRiesgoTipoRiesgo: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure adodsMasterNewRecord(DataSet: TDataSet);
    procedure ADODsCamposAdicionalesNewRecord(DataSet: TDataSet);
    procedure adodsPreguntasNewRecord(DataSet: TDataSet);
    procedure dsMasterDataChange(Sender: TObject; Field: TField);
  private
  //  FListaCampos: TStrings;
//    function GetListaCampos: TStrings;
    { Private declarations }
  public
    { Public declarations }
    TablaAct:String;
 //    property ListaCampos :TStrings read GetListaCampos write FListaCampos;
  end;

var
  dmMatrizRiesgo: TdmMatrizRiesgo;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses MatrizRiesgoForm, MRCalificacionRiesgoForm, _ConectionDmod,
  MRPreguntasForm, MRPreguntasOpcionesForm;

{$R *.dfm}

procedure TdmMatrizRiesgo.ADODsCamposAdicionalesNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('IdMRPreguntaOpcion').AsInteger:= adodsPreguntasOpcionesIdMRPreguntaOpcion.AsInteger;
end;

procedure TdmMatrizRiesgo.adodsMasterNewRecord(DataSet: TDataSet);
begin
  inherited;
  dataset.FieldByName('IdUsuario').AsInteger:=_dmConection.IdUsuario;
  dataset.FieldByName('IdMRCuestionarioEstatus').AsInteger:=0; //En creacion  //Para evitar que se use si aun no esta concluido

end;

procedure TdmMatrizRiesgo.adodsPreguntasNewRecord(DataSet: TDataSet);
var ordAct:integer;
begin
  inherited;
  //Ago 2 agregar uno al orden
  //Saca orden mas grande y le suma 1
  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.SQL.Clear;
  ADOQryAuxiliar.SQL.Add('Select case when (max(orden) is null) then  0 else  max(orden)end as ultimo from  MRPreguntas where IdMRCuestionario='+adodsMasterIdMRCuestionario.asstring);
  ADOQryAuxiliar.open;
  ordAct:=  ADOQryAuxiliar.FieldByName('ultimo').AsInteger;
  ADOQryAuxiliar.Close;
  DataSet.FieldByName('Orden').asinteger:=ordact+1;
end;

procedure TdmMatrizRiesgo.DataModuleCreate(Sender: TObject);
begin
  inherited;
  if adodsCalificacionRiesgo.CommandText <> EmptyStr then
     adodsCalificacionRiesgo.Open;
  if adodsPreguntas.CommandText <> EmptyStr then
     adodsPreguntas.Open;
  if adodsPreguntasOpciones.CommandText <> EmptyStr then
     adodsPreguntasOpciones.Open;

  if ADODsCamposAdicionales.CommandText <> EmptyStr then
    ADODsCamposAdicionales.Open;

  if ADOdsPaquetesPreguntas.CommandText <> EmptyStr then
    ADOdsPaquetesPreguntas.Open;

  if ADODsRelacionPreguntas.CommandText <> EmptyStr then
    ADOdsRElacionPreguntas.Open;


  gGridForm:= TfrmMatrizRiesgo.Create(Self);

  gGridForm.DataSet:= adodsMaster;
//  gFormDeatil1:= TfrmMRCalificacionesRiesgos.Create(Self);
//  gFormDeatil1.DataSet:= adodsCalificacionRiesgo;

  gFormDeatil1:= TfrmMRPreguntas.Create(Self);
  gFormDeatil1.DataSet:= adodsPreguntas;

  gFormDeatil3:= TfrmMRPreguntasOpciones.Create(Self);
  gFormDeatil3.DataSet:= adodsPreguntasOpciones;


end;



procedure TdmMatrizRiesgo.dsMasterDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if adodsMaster.State in [dsBrowse] then
  begin
    if Assigned(gFormDeatil1) then
      gFormDeatil1.ReadOnlyGrid := (adodsMasterIdMRCuestionarioEstatus.Value <> 0);
    if Assigned(gFormDeatil3) then
      gFormDeatil3.ReadOnlyGrid := (adodsMasterIdMRCuestionarioEstatus.Value <> 0);
  end;
end;

end.
