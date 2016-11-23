unit PersonasContactoDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmPersonasContacto = class(T_dmStandar)
    adodsContacto: TADODataSet;
    adodsMasterIdPersonaContacto: TAutoIncField;
    adodsMasterIdPersona: TIntegerField;
    adodsMasterIdContacto: TIntegerField;
    adodsMasterPrincipal: TBooleanField;
    adodsMasterContacto: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses PersonasContactoForm;

{$R *.dfm}

procedure TdmPersonasContacto.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmPersonasContacto.Create(Self);
  gGridForm.DataSet:= adodsMaster;
end;

end.
