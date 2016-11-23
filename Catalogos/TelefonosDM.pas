unit TelefonosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, Data.Win.ADODB,
  System.Actions, Vcl.ActnList;

type
  TdmTelefonos = class(T_dmStandar)
    adodsTelefonoTipo: TADODataSet;
    adodsMasterIdTelefono: TIntegerField;
    adodsMasterIdPersona: TIntegerField;
    adodsMasterIdTelefonoTipo: TIntegerField;
    adodsMasterPredeterminado: TBooleanField;
    adodsMasterTelefonoTipo: TStringField;
    adodsMasterLada: TStringField;
    adodsMasterTelefono: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses TelefonosForm;

{$R *.dfm}

procedure TdmTelefonos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmTelefonos.Create(Self);
  gGridForm.DataSet:= adodsMaster;
end;

end.
