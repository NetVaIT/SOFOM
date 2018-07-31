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
    procedure DataModuleCreate(Sender: TObject);
    procedure adodsMasterNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmMatrizRiesgo: TdmMatrizRiesgo;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses MatrizRiesgoForm, MRCalificacionRiesgoForm, _ConectionDmod,
  MRPreguntasForm, MRPreguntasOpcionesForm;

{$R *.dfm}

procedure TdmMatrizRiesgo.adodsMasterNewRecord(DataSet: TDataSet);
begin
  inherited;
  dataset.FieldByName('IdUsuario').AsInteger:=_dmConection.IdUsuario;
  dataset.FieldByName('IdMRCuestionarioEstatus').AsInteger:=0; //En creacion  //Para evitar que se use si aun no esta concluido

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

  gGridForm:= TfrmMatrizRiesgo.Create(Self);

  gGridForm.DataSet:= adodsMaster;
//  gFormDeatil1:= TfrmMRCalificacionesRiesgos.Create(Self);
//  gFormDeatil1.DataSet:= adodsCalificacionRiesgo;

  gFormDeatil1:= TfrmMRPreguntas.Create(Self);
  gFormDeatil1.DataSet:= adodsPreguntas;

  gFormDeatil2:= TfrmMRPreguntasOpciones.Create(Self);
  gFormDeatil2.DataSet:= adodsPreguntasOpciones;


end;

end.
