unit PuestosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, Data.Win.ADODB,
  System.Actions, Vcl.ActnList;

type
  TdmPuestos = class(T_dmStandar)
    adodsGerencias: TADODataSet;
    dsMaster: TDataSource;
    adodsDepartamentos: TADODataSet;
    adodsPuestos: TADODataSet;
    dsGerencias: TDataSource;
    dsDepartamentos: TDataSource;
    adodsGerenciasIdGerencia: TIntegerField;
    adodsGerenciasIdUnidadNegocio: TIntegerField;
    adodsGerenciasIdentificador: TStringField;
    adodsGerenciasDescripcion: TStringField;
    adodsDepartamentosIdDepartamento: TIntegerField;
    adodsDepartamentosIdGerencia: TIntegerField;
    adodsDepartamentosIdentificador: TStringField;
    adodsDepartamentosDescripcion: TStringField;
    adodsPuestosCategorias: TADODataSet;
    adodsPuestoSuperior: TADODataSet;
    adodsPuestosIdPuesto: TAutoIncField;
    adodsPuestosIdDepartamento: TIntegerField;
    adodsPuestosIdPuestoSuperior: TIntegerField;
    adodsPuestosIdPuestoCategoria: TIntegerField;
    adodsPuestosIdentificador: TStringField;
    adodsPuestosDescripcion: TStringField;
    adodsPuestosPuestoSuperior: TStringField;
    adodsPuestosPuestoCategoria: TStringField;
    adodsPuestosFechaCreacion: TDateTimeField;
    adodsMasterIdUnidadNegocio: TAutoIncField;
    adodsMasterIdPersona: TIntegerField;
    adodsMasterIdentificador: TStringField;
    adodsMasterDescripcion: TStringField;
    adodsPersonas: TADODataSet;
    adodsMasterPersona: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UnidadesNegocioForm, GerenciasForm, DepartamentosForm, PuestosForm;

{$R *.dfm}

procedure TdmPuestos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  adodsGerencias.Open;
  adodsDepartamentos.Open;
  adodsPuestos.Open;
  gGridForm:= TfrmUnidadesNegocio.Create(Self);
  gGridForm.DataSet:= adodsMaster;
  gFormDeatil1:= TfrmGerencias.Create(Self);
  gFormDeatil1.DataSet:= adodsGerencias;
  gFormDeatil2:= TfrmDepartamentos.Create(Self);
  gFormDeatil2.DataSet:= adodsDepartamentos;
  gFormDeatil3:= TfrmPuestos.Create(Self);
  gFormDeatil3.DataSet:= adodsPuestos;
end;

procedure TdmPuestos.DataModuleDestroy(Sender: TObject);
begin
  inherited;
  adodsPuestos.Close;
  adodsDepartamentos.Close;
  adodsGerencias.Close;
end;

end.
