unit ArchivosAdjuntosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmArchivosAdjuntos = class(T_dmStandar)
    adodsMasterIdArchivoAdjunto: TAutoIncField;
    adodsMasterIdDocumentoAdjunto: TIntegerField;
    adodsMasterDescripcion: TStringField;
    adodsMasterIdArchivo: TGuidField;
    adodsMasterArchivo: TBlobField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses ArchivosAdjuntosForm;

{$R *.dfm}

procedure TdmArchivosAdjuntos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmArchivosAdjuntos.Create(Self);
  gGridForm.DataSet:= adodsMaster;
end;

end.
