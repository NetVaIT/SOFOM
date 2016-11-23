unit CuentasContablesPersonasRolesDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmCuentasContablesPersonasRoles = class(T_dmStandar)
    adodsCuentaContable: TADODataSet;
    adodsMasterIdPersonaRol: TIntegerField;
    adodsMasterIdCuentaContable: TIntegerField;
    adodsMasterIdCuentaContableNCA: TIntegerField;
    adodsMasterIdCuentaContableNCR: TIntegerField;
    adodsMasterIdCuentaContableAnticipo: TIntegerField;
    adodsMasterTotalFacturado: TFMTBCDField;
    adodsMasterSaldoPendiente: TFMTBCDField;
    adodsMasterCalificacion: TIntegerField;
    adodsCuentaContableNCA: TADODataSet;
    adodsCuentaContableNCR: TADODataSet;
    adodsCuentaContableAnticipo: TADODataSet;
    adodsMasterCuentaContable: TStringField;
    adodsMasterCuentaContableNCA: TStringField;
    adodsMasterCuentaContableNCR: TStringField;
    adodsMasterCuentaContableAnticipo: TStringField;
    adodsMasterIdCuentaContablePersonaRol: TAutoIncField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses CuentasContablesPersonasRolesForm;

{$R *.dfm}

procedure TdmCuentasContablesPersonasRoles.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmCuentasContablesPersonasRoles.Create(Self);
  gGridForm.DataSet:= adodsMaster;
end;

end.
