unit RolesDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, Data.Win.ADODB,
  System.Actions, Vcl.ActnList;

type
  TdmRoles = class(T_dmStandar)
    adodsMasterIdRol: TAutoIncField;
    adodsMasterIdRolTipo: TIntegerField;
    adodsMasterIdEsquemaPago: TIntegerField;
    adodsMasterIdentificador: TStringField;
    adodsMasterDescripcion: TStringField;
    adodsRolesTipos: TADODataSet;
    adodsEsquemaPagos: TADODataSet;
    adodsMasterRolTipo: TStringField;
    adodsMasterEsquemaPago: TStringField;
    adodsDocumento: TADODataSet;
    adodsMasterDocumento: TStringField;
    actUpdateFile: TAction;
    adodsMasterIdDocumento: TIntegerField;
    adodsMasterIdRegimenFiscal: TIntegerField;
    adodsRegimenFiscal: TADODataSet;
    adodsMasterRegimenFiscal: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure actUpdateFileExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses RolesForm, DocumentosDM;

{$R *.dfm}

procedure TdmRoles.actUpdateFileExecute(Sender: TObject);
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
end;

procedure TdmRoles.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm := TfrmRoles.Create(Self);
  gGridForm.DataSet := adodsMaster;
  TfrmRoles(gGridForm).UpdateFile := actUpdateFile;
end;

end.
