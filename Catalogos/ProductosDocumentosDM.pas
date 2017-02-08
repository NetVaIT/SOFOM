unit ProductosDocumentosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmProductosDocumentos = class(T_dmStandar)
    adodsMasterIdProductoDocumento: TAutoIncField;
    adodsMasterIdProducto: TIntegerField;
    adodsMasterIdDocumento: TIntegerField;
    adodsMasterIdProductoDocumentoTipo: TIntegerField;
    adodsMasterDescripcion: TStringField;
    adodsMasterFechaEmision: TDateTimeField;
    adodsTipo: TADODataSet;
    adodsDocumento: TADODataSet;
    actUpdateFile: TAction;
    adodsMasterDocumento: TStringField;
    adodsMasterTipo: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure actUpdateFileExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses DocumentosDM, ProductosDocumentosForm;

{$R *.dfm}

procedure TdmProductosDocumentos.actUpdateFileExecute(Sender: TObject);
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

procedure TdmProductosDocumentos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm := TfrmProductosDocumentos.Create(Self);
  gGridForm.DataSet := adodsMaster;
  TfrmProductosDocumentos(gGridForm).UpdateFile := actUpdateFile;
end;

end.
