unit PeriodosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB, System.DateUtils, PeriodosCalculo;

type
  TdmPeriodos = class(T_dmStandar)
    adodsPeriodoTipo: TADODataSet;
    adodsPeriodoEstatus: TADODataSet;
    adodsMasterPeriodoTipo: TStringField;
    adodsMasterPeriodoEstatus: TStringField;
    actCalculaPeriodo: TAction;
    adodsMasterIdPeriodo: TAutoIncField;
    adodsMasterIdPeriodoTipo: TIntegerField;
    adodsMasterNumero: TIntegerField;
    adodsMasterIdPeriodoEstatus: TIntegerField;
    adodsMasterFechaInicio: TWideStringField;
    adodsMasterFechaFin: TWideStringField;
    adodsMasterDescripcion: TStringField;
    adodsMasterAnio: TIntegerField;
    dsMaster: TDataSource;
    adodsMasterMes: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure actCalculaPeriodoExecute(Sender: TObject);
  private
    { Private declarations }
    FAnioPeriodo : integer;
    FgPCalculoForm: TfrmPeriodosCalculo;
    procedure SetAnioP(Const Anio:Integer);
    procedure PeriodoSemanal();
    procedure CrearPeriodo(Inicio,Fin:TDate;Orden,TipoPeriodo:Integer;Describe:String);
    function DescripcionPeriodo(Periodo:String;Inicio,Fin:TDate):String;
  protected
    property gEditForm: TfrmPeriodosCalculo read FgPCalculoForm write FgPCalculoForm;
  public
    { Public declarations }
    property AnioPeriodo: Integer read FAnioPeriodo write SetAnioP;
    procedure Execute;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses PeriodosForm;

{$R *.dfm}

procedure TdmPeriodos.actCalculaPeriodoExecute(Sender: TObject);
var
  Resultado : integer;
begin
  inherited;
  FgPCalculoForm := TfrmPeriodosCalculo.Create(Self);
  Resultado := FgPCalculoForm.ShowModal;
  AnioPeriodo := FgPCalculoForm.AnioP;
  if Resultado = 1 then
    Execute;
end;

procedure TdmPeriodos.CrearPeriodo(Inicio, Fin: TDate; Orden, TipoPeriodo: Integer;
  Describe: String);
begin
  dsMaster.DataSet.Insert;
  dsMaster.DataSet.FieldByName('IdPeriodoTipo').Value    := TipoPeriodo;
  dsMaster.DataSet.FieldByName('Numero').Value           := Orden;
  dsMaster.DataSet.FieldByName('IdPeriodoEstatus').Value := 3;
  dsMaster.DataSet.FieldByName('FechaInicio').AsDateTime := Inicio;
  dsMaster.DataSet.FieldByName('FechaFin').AsDateTime    := Fin;
  dsMaster.DataSet.FieldByName('Descripcion').Value      := Describe;
  dsMaster.DataSet.FieldByName('Mes').Value              := MonthOf(Fin);
  dsMaster.DataSet.FieldByName('Anio').Value             := YearOf(Fin);
  dsMaster.DataSet.Post;
end;

procedure TdmPeriodos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm := TfrmPeriodos.Create(Self);
  gGridForm.DataSet := adodsMaster;
  TfrmPeriodos(gGridForm).CalcPeriodo := actCalculaPeriodo;
end;

function TdmPeriodos.DescripcionPeriodo(Periodo: String; Inicio,
  Fin: TDate): String;
begin
  Result := 'Semana del ' + DateToStr(Inicio) + ' al ' + DateToStr(Fin) ;
end;

procedure TdmPeriodos.Execute;
begin
  PeriodoSemanal();
end;

procedure TdmPeriodos.PeriodoSemanal();
var
  ISemana, FSemana : TDateTime;
  Descripcion : String;
  I, SemanasAnio : Integer;
begin
  SemanasAnio := WeeksInAYear(FAnioPeriodo);
  for I := 1 to SemanasAnio do
  begin
    ISemana := StartOfAWeek(FAnioPeriodo,I,1);
    FSemana := StartOfAWeek(FAnioPeriodo,I,7);
    Descripcion := DescripcionPeriodo('Semana',ISemana,FSemana);
    CrearPeriodo(ISemana,FSemana,I,2,Descripcion);
  end;
end;

procedure TdmPeriodos.SetAnioP(Const Anio: Integer);
begin
  FAnioPeriodo := Anio;
end;

end.
