unit ProductosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, System.Actions,
  Vcl.ActnList, Data.Win.ADODB, Vcl.Dialogs, System.UITypes;

resourcestring
  strUpdateDepreciacion = '¿Desea actualizar la deprecición de los productos?';

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
    actActualizarDepreciacion: TAction;
    adodsMasterPrecioMoneda: TBCDField;
    adodsMasterTipoCambio: TBCDField;
    adodsMasterImpuesto: TBCDField;
    adodsMasterPorcentajeContable: TBCDField;
    adodsMasterDepreciacionContable: TBCDField;
    adodsMasterValorContable: TBCDField;
    adodsMasterPorcentajeComercial: TBCDField;
    adodsMasterDepreciacionComercial: TBCDField;
    adodsMasterValorComercial: TBCDField;
    adodsMonedas: TADODataSet;
    adodsMasterIdMoneda: TIntegerField;
    adodsMasterMoneda: TStringField;
    adodsMasterPrecio: TBCDField;
    adodsMasterPrecioTotal: TBCDField;
    adospUpdProductosDepreciacion: TADOStoredProc;
    adocGetCountProductos: TADOCommand;
    procedure DataModuleCreate(Sender: TObject);
    procedure adodsMasterPrecioMonedaChange(Sender: TField);
    procedure adodsMasterNewRecord(DataSet: TDataSet);
    procedure actActualizarDepreciacionExecute(Sender: TObject);
  private
    { Private declarations }
    procedure CalcularImportes;
  public
    { Public declarations }
    function GetCountProductos(IdAnexo: Integer): Integer;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses ProductosForm, ProcesosType, _Utils;

{$R *.dfm}

procedure TdmProductos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmProductos.Create(Self);
  gGridForm.DataSet:= adodsMaster;
  TfrmProductos(gGridForm).actActualizarDepreciacion:= actActualizarDepreciacion;
end;

function TdmProductos.GetCountProductos(IdAnexo: Integer): Integer;
begin
  adocGetCountProductos.Parameters.ParamByName('IdAnexo').Value := IdAnexo;
  adocGetCountProductos.Execute;
  Result := adocGetCountProductos.Parameters.ParamByName('Total').Value
end;

procedure TdmProductos.actActualizarDepreciacionExecute(Sender: TObject);
begin
  inherited;
  if MessageDlg(strUpdateDepreciacion, mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    ScreenCursorProc(crSQLWait);
    try
      adospUpdProductosDepreciacion.ExecProc;
    finally
      ScreenCursorProc(crDefault);
    end;
  end;
  RefreshADODS(adodsMaster, adodsMasterIdProducto);
end;

procedure TdmProductos.adodsMasterNewRecord(DataSet: TDataSet);
begin
  inherited;
  adodsMasterIdProductoEstatus.Value := 1; // Activo
  adodsMasterIdMoneda.Value := _MONEDAS_ID_DOLAR_USA;
  adodsMasterTipoCambio.Value := 1;
end;

procedure TdmProductos.adodsMasterPrecioMonedaChange(Sender: TField);
begin
  inherited;
  CalcularImportes;
end;

procedure TdmProductos.CalcularImportes;
begin
  if adodsMaster.State in [dsInsert, dsEdit] then
  begin
    adodsMasterPrecio.Value := adodsMasterPrecioMoneda.Value * adodsMasterTipoCambio.Value;
    adodsMasterImpuesto.Value := adodsMasterPrecio.Value * (_IMPUESTOS_IVA/100);
    adodsMasterPrecioTotal.Value := adodsMasterPrecio.Value + adodsMasterImpuesto.Value;
  end;
end;

end.
