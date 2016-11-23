unit PlazasDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, Data.Win.ADODB,
  System.Actions, Vcl.ActnList;

type
  TdmPlazas = class(T_dmStandar)
    adodsPlazaTemporalidadTipos: TADODataSet;
    adodsUbicacion: TADODataSet;
    adodsPlazaTurnos: TADODataSet;
    adodsMasterIdPlaza: TIntegerField;
    adodsMasterIdPuesto: TIntegerField;
    adodsMasterIdPersonaEmpleado: TIntegerField;
    adodsMasterIdPlazaTurno: TIntegerField;
    adodsMasterIdUbicacion: TIntegerField;
    adodsMasterIdPlazaTemporalidadTipo: TIntegerField;
    adodsMasterIdentificador: TStringField;
    adodsMasterDescripcion: TStringField;
    adodsMasterSalarioBase: TBCDField;
    adodsMasterTurnos: TStringField;
    adodsMasterUbicacion: TStringField;
    adodsMasterTemporalidad: TStringField;
    adodsMasterFechaCreacion: TDateTimeField;
    adodsEmpleado: TADODataSet;
    adodsMasterEmpleado: TStringField;
    adodsMasterIdPlazaClase: TIntegerField;
    adodsPlazaClase: TADODataSet;
    adodsMasterPlazaClase: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses PlazasForm;

{$R *.dfm}

procedure TdmPlazas.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmPlazas.Create(Self);
  gGridForm.DataSet:= adodsMaster;
end;

end.
