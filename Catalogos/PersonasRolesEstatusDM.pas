unit PersonasRolesEstatusDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmPersonasRolesEstatus = class(T_dmStandar)
    adodsMasterIdPersonaRolEstatus: TAutoIncField;
    adodsMasterIdPersonaRol: TIntegerField;
    adodsMasterIdRolEstarus: TIntegerField;
    adodsMasterFecha: TDateTimeField;
    adodsRolesEstatus: TADODataSet;
    adodsMasterEstatus: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses PersonasRolesEstatusForm;

{$R *.dfm}

procedure TdmPersonasRolesEstatus.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm := TfrmPersonasRolesEstatus.Create(Self);
  gGridForm.DataSet:= adodsMaster;
end;

end.
