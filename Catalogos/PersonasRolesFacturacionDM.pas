unit PersonasRolesFacturacionDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmPersonasRolesFacturacion = class(T_dmStandar)
    adodsMasterIdPersonaRolFacturacion: TAutoIncField;
    adodsMasterIdPersonaRol: TIntegerField;
    adodsMasterIdDocumento: TIntegerField;
    adodsMasterClave: TStringField;
    adodsMasterVencimientoDocumento: TWideStringField;
    adodsDocumento: TADODataSet;
    adodsMasterArchivo: TStringField;
    actUpdateFile: TAction;
    procedure DataModuleCreate(Sender: TObject);
    procedure actUpdateFileExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses PersonasRolesFacturacionForm, DocumentosDM;

{$R *.dfm}

procedure TdmPersonasRolesFacturacion.actUpdateFileExecute(Sender: TObject);
var
  dmDocumentos: TdmDocumentos;
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

procedure TdmPersonasRolesFacturacion.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm := TfrmPersonasRolesFacturacion.Create(Self);
  gGridForm.DataSet:= adodsMaster;
  TfrmPersonasRolesFacturacion(gGridForm).UpdateFile := actUpdateFile;
end;

end.
