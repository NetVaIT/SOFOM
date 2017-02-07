unit PersonasPerfilesDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, System.Actions,
  Vcl.ActnList, Data.Win.ADODB;

type
  TdmPersonasPerfiles = class(T_dmStandar)
    adodsMasterIdPersonaPerfil: TAutoIncField;
    adodsMasterIdPersona: TIntegerField;
    adodsMasterFecha: TDateTimeField;
    adodsMasterClasificacion: TStringField;
    adodsMasterCargo: TStringField;
    adodsMasterInstitucion: TStringField;
    adodsMasterObservaciones: TStringField;
    adodsMasterIdDocumento: TIntegerField;
    adodsDocumento: TADODataSet;
    adodsMasterDocumento: TStringField;
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

uses PersonasPerfilesForm, DocumentosDM;

{$R *.dfm}

procedure TdmPersonasPerfiles.actUpdateFileExecute(Sender: TObject);
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

procedure TdmPersonasPerfiles.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm := TfrmPersonasPerfiles.Create(Self);
  gGridForm.DataSet := adodsMaster;
  TfrmPersonasPerfiles(gGridForm).UpdateFile := actUpdateFile;
end;

end.
