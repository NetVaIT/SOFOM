unit UsuariosPerfilesDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmUsuariosPerfiles = class(T_dmStandar)
    adodsMasterIdUsuarioPerfil: TAutoIncField;
    adodsMasterDescripcion: TStringField;
    adodsMasterPermisoMenu: TStringField;
    adodsMasterPermisoOpcion: TStringField;
    adodsMasterPermisosFuncion: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmUsuariosPerfiles: TdmUsuariosPerfiles;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UsuariosPerfilesForm;

{$R *.dfm}

procedure TdmUsuariosPerfiles.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmUsuariosPerfiles.Create(Self);
  gGridForm.DataSet := adodsMaster;
end;

end.
