unit EmpleadosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmEmpleados = class(T_dmStandar)
    adodsMasterIdPersonaRol: TIntegerField;
    adodsMasterIdPerfilPago: TIntegerField;
    adodsMasterNSS: TStringField;
    adodsMasterFechaIngresoIMSS: TDateTimeField;
    adodsMasterFechaIngreso: TDateTimeField;
    adodsMasterFechaBaja: TDateTimeField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses EmpleadosForm;

{$R *.dfm}

procedure TdmEmpleados.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm := TfrmEmpleados.Create(Self);
  gGridForm.DataSet := adodsMaster;
end;

end.
