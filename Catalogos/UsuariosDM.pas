unit UsuariosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmUsuarios = class(T_dmStandar)
    adodsPersona: TADODataSet;
    adodsMasterIdUsuario: TAutoIncField;
    adodsMasterIdPersona: TIntegerField;
    adodsMasterIdUsuarioEstatus: TIntegerField;
    adodsMasterLogin: TStringField;
    adodsMasterPassword: TStringField;
    adodsMasterLoginServidor: TStringField;
    adodsMasterPasswordServidor: TStringField;
    adodsUsuarioEstatus: TADODataSet;
    adodsMasterPersona: TStringField;
    adodsMasterUsuarioEstatus: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UsuariosForm;

{$R *.dfm}

procedure TdmUsuarios.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmUsuarios.Create(Self);
  gGridForm.DataSet:= adodsMaster;
end;

end.
