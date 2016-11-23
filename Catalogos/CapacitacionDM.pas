unit CapacitacionDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, Data.Win.ADODB,
  System.Actions, Vcl.ActnList;

type
  TdmCapacitacion = class(T_dmStandar)
    dsMaster: TDataSource;
    adodsBateriaCapacitacionCursos: TADODataSet;
    adodsBateriaCapacitacionCursosIdBateriaCapacitacionCurso: TIntegerField;
    adodsBateriaCapacitacionCursosIdBateriaCapacitacion: TIntegerField;
    adodsBateriaCapacitacionCursosIdentificador: TStringField;
    adodsBateriaCapacitacionCursosDescripcion: TStringField;
    adodsBateriaCapacitacionCursosValorCurricular: TFloatField;
    adodsBateriaCapacitacionCursosTemas: TADODataSet;
    dsBateriaCapacitacionCursos: TDataSource;
    adodsBateriaCapacitacionCursosTemasIdBateriaCapacitacionCursoTema: TIntegerField;
    adodsBateriaCapacitacionCursosTemasIdBateriaCapacitacionCurso: TIntegerField;
    adodsBateriaCapacitacionCursosTemasIdentificador: TStringField;
    adodsBateriaCapacitacionCursosTemasDescripcion: TStringField;
    adodsBateriaCapacitacionCursosTemasPonderacion: TIntegerField;
    adodsMasterIdBateriaCapacitacion: TIntegerField;
    adodsMasterIdentificador: TStringField;
    adodsMasterDescripcion: TStringField;
    adodsMasterPonderacion: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses BateriaCapacitacionesForm, BateriaCapacitacionCursosForm,
  BateriaCapacitacionCursosTemasForm;

{$R *.dfm}

procedure TdmCapacitacion.DataModuleCreate(Sender: TObject);
begin
  inherited;
  if adodsBateriaCapacitacionCursos.CommandText <> EmptyStr then adodsBateriaCapacitacionCursos.Open;
  if adodsBateriaCapacitacionCursosTemas.CommandText <> EmptyStr then adodsBateriaCapacitacionCursosTemas.Open;
  gGridForm:= TfrmBateriasCapacitacion.Create(Self);
  gGridForm.DataSet:= adodsMaster;
  gFormDeatil1:= TfrmBateriaCapacitacionCursos.Create(Self);
  gFormDeatil1.DataSet:= adodsBateriaCapacitacionCursos;
  gFormDeatil2:= TfrmBateriaCapacitacionCursosTemas.Create(Self);
  gFormDeatil2.DataSet:= adodsBateriaCapacitacionCursosTemas;
end;

end.
