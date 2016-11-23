unit PuestosPerfilesDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, Data.Win.ADODB,
  System.Actions, Vcl.ActnList;

type
  TdmPuestosPerfiles = class(T_dmStandar)
    adodsMasterIdPuestoPerfil: TAutoIncField;
    adodsMasterIdPuesto: TIntegerField;
    adodsMasterIdPuestoPerfilCategoria: TIntegerField;
    adodsMasterIdentificador: TStringField;
    adodsMasterDescripcion: TStringField;
    adodsMasterValor: TIntegerField;
    adodsMasterPerfilCategoria: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses PuestosPerfilesForm;

{$R *.dfm}

procedure TdmPuestosPerfiles.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmPuestosPerfiles.Create(Self);
  gGridForm.DataSet:= adodsMaster;
end;

end.
