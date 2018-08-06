unit MRPaquetesPreguntasDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, System.Actions,
  Vcl.ActnList, Data.Win.ADODB, dialogs;

type
  TdmMRPaquetesPreguntas = class(T_dmStandar)
    adodsMasterIdMRPaquetePregunta: TAutoIncField;
    adodsMasterIdMRCuestionario: TIntegerField;
    adodsMasterDescripcionPaquete: TStringField;
    adodsMasterPonderacion_Extra: TFloatField;
    dsMaster: TDataSource;
    adodsPreguntas: TADODataSet;
    adodsPreguntasOpciones: TADODataSet;
    dsPreguntas: TDataSource;
    dsPreguntaOpcion: TDataSource;
    ADOdsConPregOpciones: TADODataSet;
    ADOdsConPregOpcionesIdMRPreguntaOpcion: TAutoIncField;
    ADOdsConPregOpcionesIdMRPregunta: TIntegerField;
    ADOdsConPregOpcionesOpcion: TStringField;
    dsRElacionpreguntas: TDataSource;
    adodspreguntasconsulta: TADODataSet;
    AutoIncField1: TAutoIncField;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    BooleanField1: TBooleanField;
    BooleanField2: TBooleanField;
    IntegerField2: TIntegerField;
    BooleanField3: TBooleanField;
    BooleanField4: TBooleanField;
    AdoDSRElacionpreg: TADODataSet;
    dsPreguntas1: TDataSource;
    AdoDSRElacionpregIdMRRelacionPregunta: TAutoIncField;
    AdoDSRElacionpregIdMRPaquetePregunta: TIntegerField;
    AdoDSRElacionpregIdMRPregunta: TIntegerField;
    AdoDSRElacionpregIdMRPreguntaOpcion: TIntegerField;
    AdoDSRElacionpregValorCondicionante: TStringField;
    AdoDSRElacionpregPregunta: TStringField;
    AdoDSRElacionpregOpcion: TStringField;
    AdoDSRElacionpregPaquete: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure AdoDSRElacionpregIdMRPreguntaChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmMRPaquetesPreguntas: TdmMRPaquetesPreguntas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses MRPaquetePreguntasForm, MRRelacionPreguntasForm;

{$R *.dfm}

procedure TdmMRPaquetesPreguntas.AdoDSRElacionpregIdMRPreguntaChange(
  Sender: TField);
begin
  inherited;
  AdoDSRElacionpregIdMRPreguntaOpcion.Clear;

end;

procedure TdmMRPaquetesPreguntas.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmPaquetePreguntas.Create(Self);
  gGridForm.DataSet:= adodsMaster;


  if ADODsRelacionPreg.CommandText <> EmptyStr then
    ADODsRelacionPreg.Open;

  gFormDeatil1:= TfrmRelacionPreguntas.Create(Self);      ///Rsto no funciona
  gFormDeatil1.DataSet:=ADODsRelacionPreg; //ADODsRelacionPreguntas;

  TfrmRelacionPreguntas(gFormDeatil1).DataSetPreguntas:=adodsPreguntas;

  TfrmRelacionPreguntas(gFormDeatil1).DAtaSetOpciones:= ADOdsConPregOpciones;//adodsPreguntasOpciones;

  adodsPreguntas.Open;
  adodsPreguntasOpciones.Open;
  ADOdsConPregOpciones.Open;

end;

end.
