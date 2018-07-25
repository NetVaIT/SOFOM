unit PersonasAdministradoresDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, System.Actions,
  Vcl.ActnList, Data.Win.ADODB;

type
  TdmPersonasAdministradores = class(T_dmStandar)
    adodsMasterIdPersonaAdministrador: TAutoIncField;
    adodsMasterIdPersona: TIntegerField;
    adodsMasterIdAdministrador: TIntegerField;
    adodsMasterCargo: TStringField;
    adodsPersonas: TADODataSet;
    adodsMasterAdministrador: TStringField;
    adodsMasterRFC: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses PersonasAdministradoresForm;

{$R *.dfm}

procedure TdmPersonasAdministradores.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm := TfrmPersonasAdministradores.Create(Self);
  gGridForm.DataSet := adodsMaster;
end;

end.
