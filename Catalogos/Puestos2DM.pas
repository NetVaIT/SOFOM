unit Puestos2DM;

interface

uses
  System.SysUtils, System.Classes, _ProviderDMod, Datasnap.DBClient,
  Datasnap.Provider, Data.DB, Data.Win.ADODB,
  Vcl.Controls,
  PuestosPerfilesForm;

type
  TdmPuestos2 = class(T_dmProvider)
    adodsPuestoSuperior: TADODataSet;
    adodsPuestosCategorias: TADODataSet;
    cdsMasterIdPuesto: TAutoIncField;
    cdsMasterIdDepartamento: TIntegerField;
    cdsMasterIdentificacion: TStringField;
    cdsMasterDescripcion: TStringField;
    cdsMasterFechaCreacionPuesto: TWideStringField;
    cdsMasterIdPuestoSuperior: TIntegerField;
    cdsMasterIdPuestoCategoria: TIntegerField;
    cdsMasterPuestoSuperior: TStringField;
    cdsMasterPuestoCategoria: TStringField;
    adodsPerfiles: TADODataSet;
    dspPerfiles: TDataSetProvider;
    cdsPerfiles: TClientDataSet;
    adodsPuestosPerfilCategorias: TADODataSet;
    dsMaster: TDataSource;
    DataSource1: TDataSource;
    cdsMasteradodsPerfiles: TDataSetField;
    cdsPerfilesIdPuestoPerfil: TAutoIncField;
    cdsPerfilesIdPuesto: TIntegerField;
    cdsPerfilesIdPuestoPerfilCategoria: TIntegerField;
    cdsPerfilesIdentificador: TStringField;
    cdsPerfilesDescripcion: TStringField;
    cdsPerfilesValor: TIntegerField;
    cdsPerfilesPerfilCategoria: TStringField;
    adodsMasterIdPuesto: TAutoIncField;
    adodsMasterIdDepartamento: TIntegerField;
    adodsMasterIdentificacion: TStringField;
    adodsMasterDescripcion: TStringField;
    adodsMasterFechaCreacionPuesto: TWideStringField;
    adodsMasterIdPuestoSuperior: TIntegerField;
    adodsMasterIdPuestoCategoria: TIntegerField;
    adodsPerfilesIdPuestoPerfil: TAutoIncField;
    adodsPerfilesIdPuesto: TIntegerField;
    adodsPerfilesIdPuestoPerfilCategoria: TIntegerField;
    adodsPerfilesIdentificador: TStringField;
    adodsPerfilesDescripcion: TStringField;
    adodsPerfilesValor: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure cdsMasterNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  protected
    procedure ApplyUpdates; override;
    procedure CancelUpdates; override;
  public
    { Public declarations }
    frmPuestosPerfiles: TfrmPuestosPerfiles;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses PuestosForm;

{$R *.dfm}


procedure TdmPuestos2.ApplyUpdates;
begin
  inherited;
  cdsPerfiles.ApplyUpdates(0);
end;

procedure TdmPuestos2.CancelUpdates;
begin
  inherited;
  cdsPerfiles.CancelUpdates;
end;

procedure TdmPuestos2.cdsMasterNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsMasterIdDepartamento.Value:= 1;
end;

procedure TdmPuestos2.DataModuleCreate(Sender: TObject);
begin
  inherited;
  adodsPuestoSuperior.Open;
  adodsPuestosCategorias.Open;
  gGridForm:= TfrmPuestos.Create(Self);
  gGridForm.DataSet:= cdsMaster;

  adodsPerfiles.Open;
  cdsPerfiles.Open;

  frmPuestosPerfiles:= TfrmPuestosPerfiles.Create(Self);
  frmPuestosPerfiles.DataSet:= cdsPerfiles;

//    frmPuestosPerfiles.Parent:= TfrmPuesto(gGridForm.gEditForm).tsPerfil;
//    frmPuestosPerfiles.Align:= alClient;
//    frmPuestosPerfiles.Show;



end;

procedure TdmPuestos2.DataModuleDestroy(Sender: TObject);
begin
  inherited;
  adodsPuestoSuperior.Close;
  adodsPuestosCategorias.Close;
end;

end.
