unit ArchivosGenerarFacturasDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmArchivosGenerarFacturas = class(T_dmStandar)
    adodsMasterIdArchivoGeneraFactura: TAutoIncField;
    adodsMasterIdPersonaRol: TIntegerField;
    adodsMasterIdCSD: TGuidField;
    adodsMasterArchivoCSD: TBlobField;
    adodsMasterIdKey: TGuidField;
    adodsMasterArchivoKEY: TBlobField;
    adodsMasterClave: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses ArchivosGenerarFacturasForm;

{$R *.dfm}

procedure TdmArchivosGenerarFacturas.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm := TfrmArchivosGenerarFacturas.Create(Self);
  gGridForm.DataSet := adodsMaster;
end;

end.
