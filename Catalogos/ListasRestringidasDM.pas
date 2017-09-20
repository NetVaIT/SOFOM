unit ListasRestringidasDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, System.Actions,
  Vcl.ActnList, Data.Win.ADODB;

type
  TdmListasRestringidas = class(T_dmStandar)
    adodsMasterIdListaRestringida: TAutoIncField;
    adodsMasterIdOrganismo: TIntegerField;
    adodsMasterIdPais: TIntegerField;
    adodsMasterIdEstatus: TIntegerField;
    adodsMasterIdentificador: TStringField;
    adodsMasterNombre: TStringField;
    adodsMasterAlias: TStringField;
    adodsOrganismos: TADODataSet;
    adodsPaises: TADODataSet;
    adodsMasterOrganismo: TStringField;
    adodsMasterPais: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure adodsMasterNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  protected
    procedure SetFilter; override;
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses ListasRestringidasForm;

{$R *.dfm}

procedure TdmListasRestringidas.adodsMasterNewRecord(DataSet: TDataSet);
begin
  inherited;
  adodsMasterIdEstatus.Value := 1;
end;

procedure TdmListasRestringidas.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm := TfrmListasRestringidas.Create(Self);
  gGridForm.DataSet := adodsMaster;
  // Busqueda
  SQLSelect:= 'select IdListaRestringida, IdOrganismo, IdPais, IdEstatus, Identificador, Nombre, Alias from ListasRestringidas';
  SQLOrderBy:= 'ORDER BY Nombre ';
  gGridForm.actSearch:= actSearch;
  // Ejecuta filtrado
//  TfrmListasRestringidas(gGridForm).Nombre:= EmptyStr;
//  actSearch.Execute;
end;

procedure TdmListasRestringidas.SetFilter;
var
  Nombre: String;
begin
  inherited;
  Nombre:= TfrmListasRestringidas(gGridForm).Nombre;
  SQLWhere:= 'WHERE Nombre LIKE ''%' + Nombre + '%''';
end;

end.
