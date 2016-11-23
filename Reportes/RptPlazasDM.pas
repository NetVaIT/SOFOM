unit RptPlazasDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmRptPlazas = class(T_dmStandar)
    adodsMasterOutsourcing: TStringField;
    adodsMasterGerencia: TStringField;
    adodsMasterDepartamento: TStringField;
    adodsMasterPuesto: TStringField;
    adodsMasterCategoriaPuesto: TStringField;
    adodsMasterPuestoSuperior: TStringField;
    adodsMasterCreacionPuesto: TDateTimeField;
    adodsMasterPlaza: TStringField;
    adodsMasterTurno: TStringField;
    adodsMasterTemporalidad: TStringField;
    adodsMasterClasePlaza: TStringField;
    adodsMasterUbicacion: TStringField;
    adodsMasterEmpleado: TStringField;
    adodsMasterSalarioBase: TBCDField;
    adodsMasterCreacionPlaza: TDateTimeField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses RptPlazasForm;

{$R *.dfm}

procedure TdmRptPlazas.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm := TfrmRptPlazas.Create(Self);
  gGridForm.DataSet := adodsMaster;
end;

end.
