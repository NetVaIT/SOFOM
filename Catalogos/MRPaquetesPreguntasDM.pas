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
    dsPreguntasCon: TDataSource;
    ADOdsConPregOpciones: TADODataSet;
    ADOdsConPregOpcionesIdMRPreguntaOpcion: TAutoIncField;
    ADOdsConPregOpcionesIdMRPregunta: TIntegerField;
    ADOdsConPregOpcionesOpcion: TStringField;
    AdoDSRelacionPreg: TADODataSet;
    AdoDSRelacionPregIdMRRelacionPregunta: TAutoIncField;
    AdoDSRelacionPregIdMRPaquetePregunta: TIntegerField;
    AdoDSRelacionPregIdMRPregunta: TIntegerField;
    AdoDSRelacionPregIdMRPreguntaOpcion: TIntegerField;
    AdoDSRelacionPregValorCondicionante: TStringField;
    AdoDSRelacionPregPregunta: TStringField;
    AdoDSRelacionPregOpcion: TStringField;
    ADODSConPaquetes: TADODataSet;
    AdoDSRelacionPregPaquete: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    FEstatus: integer;
    procedure SetFEstatus(const Value: integer);
    { Private declarations }
  public
    { Public declarations }
    Property Estatus: integer read FEstatus write SetFEstatus;
  end;

var
  dmMRPaquetesPreguntas: TdmMRPaquetesPreguntas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses MRPaquetePreguntasForm, MRRelacionPreguntasForm;

{$R *.dfm}

procedure TdmMRPaquetesPreguntas.DataModuleCreate(Sender: TObject);
begin
  inherited;

  gGridForm:= TfrmPaquetePreguntas.Create(Self);
  gGridForm.DataSet:= adodsMaster;


  if ADODsRelacionPreg.CommandText <> EmptyStr then
    ADODsRelacionPreg.Open;

  gFormDeatil1:= TfrmRelacionPreguntas.Create(Self);      ///Rsto no funciona
  gFormDeatil1.DataSet:=ADODsRelacionPreg; //ADODsRelacionPreguntas;
 

  TfrmRelacionPreguntas(gFormDeatil1).DataSetPreguntas:=adodsPreguntas;//adodspreguntasconsulta adodsPreguntas;

  TfrmRelacionPreguntas(gFormDeatil1).DAtaSetOpciones:= ADOdsConPregOpciones;//adodsPreguntasOpciones;

   adodsPreguntas.Open;

  adodsPreguntasOpciones.Open;
  adodspreguntasconsulta.Open;
  ADOdsConPregOpciones.Open;



end;

procedure TdmMRPaquetesPreguntas.SetFEstatus(const Value: integer);
begin
  FEstatus := Value;
  //Colocar Re
  gGridForm.ReadOnlyGrid := value<>0;  //Ago 14/18
  if Assigned (gFormDeatil1)then
    gFormDeatil1.ReadOnlyGrid := value<>0;  //Ago 14/18
end;

end.
