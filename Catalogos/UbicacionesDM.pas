unit UbicacionesDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, Data.Win.ADODB,
  System.Actions, Vcl.ActnList;

const
  IdPais_Predeterminado = 148;

type
  TdmUbicaciones = class(T_dmStandar)
    adodsMasterIdPais: TAutoIncField;
    adodsMasterIdentificador: TStringField;
    adodsMasterDescripcion: TStringField;
    dsMaster: TDataSource;
    adodsEstados: TADODataSet;
    adodsEstadosIdEstado: TAutoIncField;
    adodsEstadosIdPais: TIntegerField;
    adodsEstadosIdentificador: TStringField;
    adodsEstadosDescripcion: TStringField;
    dsEstados: TDataSource;
    adodsMunicipios: TADODataSet;
    dsMunicipios: TDataSource;
    adodsPoblaciones: TADODataSet;
    adodsMunicipiosIdMunicipio: TIntegerField;
    adodsMunicipiosIdEstado: TIntegerField;
    adodsMunicipiosIdentificador: TIntegerField;
    adodsMunicipiosDescripcion: TStringField;
    adodsPoblacionesIdPoblacion: TIntegerField;
    adodsPoblacionesIdMunicipio: TIntegerField;
    adodsPoblacionesIdentificador: TIntegerField;
    adodsPoblacionesDescripcion: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure adodsMasterAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses PaisesForm, EstadosForm, MunicipiosForm, PoblacionesForm;

{$R *.dfm}

procedure TdmUbicaciones.adodsMasterAfterOpen(DataSet: TDataSet);
begin
  inherited;
  adodsMaster.Locate('IdPais', IdPais_Predeterminado, []);
end;

procedure TdmUbicaciones.DataModuleCreate(Sender: TObject);
begin
  inherited;
  if adodsEstados.CommandText <> EmptyStr then adodsEstados.Open;
  if adodsMunicipios.CommandText <> EmptyStr then adodsMunicipios.Open;
  if adodsPoblaciones.CommandText <> EmptyStr then adodsPoblaciones.Open;
  gGridForm:= TfrmPaises.Create(Self);
  gGridForm.DataSet:= adodsMaster;
  gFormDeatil1:= TfrmEstados.Create(Self);
  gFormDeatil1.DataSet:= adodsEstados;
  gFormDeatil2:= TfrmMunicipios.Create(Self);
  gFormDeatil2.DataSet:= adodsMunicipios;
  gFormDeatil3:= TfrmPoblaciones.Create(Self);
  gFormDeatil3.DataSet:= adodsPoblaciones;
end;

end.
