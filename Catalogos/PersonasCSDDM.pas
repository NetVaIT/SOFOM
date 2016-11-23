unit PersonasCSDDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmPersonasCSD = class(T_dmStandar)
    adodsDocumento: TADODataSet;
    actUpdateFileCER: TAction;
    adodsMasterIdPersona: TIntegerField;
    adodsMasterIdPersonaCSD: TIntegerField;
    adodsMasterIdDocumentoCER: TIntegerField;
    adodsMasterIdDocumentoKEY: TIntegerField;
    adodsMasterClave: TStringField;
    adodsMasterVencimiento: TDateTimeField;
    adodsDocumento2: TADODataSet;
    adodsMasterArchivoCER: TStringField;
    adodsMasterArchivoKEY: TStringField;
    actUpdateFileKEY: TAction;
    procedure DataModuleCreate(Sender: TObject);
    procedure actUpdateFileCERExecute(Sender: TObject);
    procedure actUpdateFileKEYExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses PersonasCSDForm, DocumentosDM;

{$R *.dfm}

procedure TdmPersonasCSD.actUpdateFileCERExecute(Sender: TObject);
var
  dmDocumentos: TdmDocumentos;
  Id : Integer;
begin
  inherited;
  dmDocumentos := TdmDocumentos.Create(nil);
  dmDocumentos.FileAllowed := faCER;
  Id := adodsMasterIdDocumentoCER.AsInteger;
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
      adodsMasterIdDocumentoCER.AsInteger := Id;
    end;
  end;
  dmDocumentos.Free;
end;

procedure TdmPersonasCSD.actUpdateFileKEYExecute(Sender: TObject);
var
  dmDocumentos: TdmDocumentos;
  Id : Integer;
begin
  inherited;
  dmDocumentos := TdmDocumentos.Create(nil);
  dmDocumentos.FileAllowed := faKEY;
  Id := adodsMasterIdDocumentoKEY.AsInteger;
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
      adodsMasterIdDocumentoKEY.AsInteger := Id;
    end;
  end;
  dmDocumentos.Free;
end;

procedure TdmPersonasCSD.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm := TfrmPersonasCSD.Create(Self);
  gGridForm.DataSet:= adodsMaster;
  TfrmPersonasCSD(gGridForm).UpdateFileCER := actUpdateFileCER;
  TfrmPersonasCSD(gGridForm).UpdateFileKEY := actUpdateFileKEY;
end;

end.
