unit PersonasDocumentosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmPersonasDocumentos = class(T_dmStandar)
    adodsDocumento: TADODataSet;
    adodsDocumentoTipo: TADODataSet;
    adodsDocumentoClase: TADODataSet;
    dsMaster: TDataSource;
    actNuevoDocumento: TAction;
    actEditaDocumento: TAction;
    adodsMasterIdPersonaDocumento: TAutoIncField;
    adodsMasterIdPersona: TIntegerField;
    adodsMasterIdDocumento: TIntegerField;
    adodsMasterDocumento: TStringField;
    procedure DataModuleCreate(Sender: TObject);
//    procedure actExpedienteDigitalExecute(Sender: TObject);
    procedure actNuevoDocumentoExecute(Sender: TObject);
    procedure actEditaDocumentoExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses PersonasDocumentosForm, DocumentosDM;

{$R *.dfm}

{ TdmPersonasRolesDocumentos }

procedure TdmPersonasDocumentos.actEditaDocumentoExecute(Sender: TObject);
var
  dmDocumentos : TdmDocumentos;
  Id : Integer;
begin
  inherited;
  dmDocumentos := TdmDocumentos.Create(nil);
  dmDocumentos.FileAllowed := faAll;
  Id := adodsMasterIdDocumento.AsInteger;
  if Id  <> 0 then
  begin
    dmDocumentos.Edit(Id);
    adodsDocumento.Requery();
  end;
  dmDocumentos.Free;
end;

{procedure TdmPersonasRolesDocumentos.actExpedienteDigitalExecute(
  Sender: TObject);
var
  dmDocumentos: TdmDocumentos;
  Id: Integer;
begin
  inherited;
  dmDocumentos := TdmDocumentos.Create(nil);
  dmDocumentos.FileAllowed := faAll;
  Id := adodsMasterIdDocumento.AsInteger;
  if Id  <> 0 then
  begin
    dmDocumentos.Edit(Id);
    adodsDocumento.Requery();
  end
  else
  begin
    Id := dmDocumentos.Add;
    if  Id <> 0 then
    begin
      adodsDocumento.Requery();
      adodsMasterIdDocumento.AsInteger := Id;
    end;
  end;
  dmDocumentos.Free;
end;}

procedure TdmPersonasDocumentos.actNuevoDocumentoExecute(Sender: TObject);
var
  dmDocumentos : TdmDocumentos;
  Id : Integer;
begin
  inherited;
  dmDocumentos := TdmDocumentos.Create(nil);
  dmDocumentos.FileAllowed := faAll;
  Id := dmDocumentos.Add;
  if  Id <> 0 then
  begin
    adodsDocumento.Requery();
    adodsMaster.Insert;
    adodsMasterIdDocumento.AsInteger := Id;
    adodsMaster.Post;
  end;
  dmDocumentos.Free;
end;

procedure TdmPersonasDocumentos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm := TfrmPersonasDocumentos.Create(Self);
  gGridForm.DataSet := adodsMaster;
//  TfrmPersonasRolesDocumentos(gGridForm).UpdateFile := actExpedienteDigital;
  TfrmPersonasDocumentos(gGridForm).InsertFile := actNuevoDocumento;
  TfrmPersonasDocumentos(gGridForm).EditFile := actEditaDocumento;
end;

end.
