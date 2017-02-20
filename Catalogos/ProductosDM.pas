unit ProductosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, System.Actions,
  Vcl.ActnList, Data.Win.ADODB;

type
  TdmProductos = class(T_dmStandar)
    adodsMasterIdProducto: TAutoIncField;
    adodsMasterIdProductoTipo: TIntegerField;
    adodsMasterIdMarca: TIntegerField;
    adodsMasterIdFamilia: TIntegerField;
    adodsMasterIdProductoEstatus: TIntegerField;
    adodsMasterIdentificador: TStringField;
    adodsMasterDescripcion: TStringField;
    adodsMasterModelo: TStringField;
    adodsMasterAnio: TIntegerField;
    adodsMasterNumeroSerie: TStringField;
    adodsMasterNumeroEconomico: TStringField;
    adodsTipos: TADODataSet;
    adodsMarcas: TADODataSet;
    adodsFamilias: TADODataSet;
    adodsEstatus: TADODataSet;
    adodsMasterTipo: TStringField;
    adodsMasterMarca: TStringField;
    adodsMasterFamilia: TStringField;
    adodsMasterEstatus: TStringField;
    adodsMasterIdAnexo: TIntegerField;
    adodsMasterFechaImportacion: TDateTimeField;
    adodsMasterPedimento: TStringField;
    adodsMasterAduana: TStringField;
    adodsMasterFechaCompra: TDateTimeField;
    adodsMasterPrecio: TBCDField;
    adodsMasterImpuesto: TBCDField;
    adodsMasterTotal: TBCDField;
    adodsMasterPorcentajeDepreciacion: TBCDField;
    adodsMasterDepreciacion: TBCDField;
    adodsMasterValorContable: TBCDField;
    actActualizarDepreciacion: TAction;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses ProductosForm;

{$R *.dfm}

procedure TdmProductos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmProductos.Create(Self);
  gGridForm.DataSet:= adodsMaster;
  TfrmProductos(gGridForm).actActualizarDepreciacion:= actActualizarDepreciacion;
end;

end.
