unit AnexosMoratoriosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB, Vcl.Dialogs, _Utils;

type
  TdmAnexosMoratorios = class(T_dmStandar)
    adodsMasterIdAnexoMoratorio: TIntegerField;
    adodsMasterIdAnexoAmortizacion: TIntegerField;
    adodsMasterIdAnexoMoratorioEstatus: TIntegerField;
    adodsMasterFecha: TDateTimeField;
    adodsMasterImporteBase: TFMTBCDField;
    adodsMasterImporte: TFMTBCDField;
    adodsMasterDescuento: TFMTBCDField;
    adodsMasterImpuesto: TFMTBCDField;
    adodsEstatus: TADODataSet;
    adodsMasterEstatus: TStringField;
    adopUpdAmortizacionMoratorio: TADOStoredProc;
    adodsMasterIdCuentaXCobrar: TIntegerField;
    adodsMasterImporteAplicado: TFMTBCDField;
    adodsMasterCancelacion: TDateTimeField;
    dsMaster: TDataSource;
    actAgregarDescuento: TAction;
    actEliminarDescuento: TAction;
    adopSetMoratoriosDescuento: TADOStoredProc;
    adopSetMoratoriosDescuentos: TADOStoredProc;
    actDescuentoParcial: TAction;
    adodsMasterMoratorio: TFMTBCDField;
    adodsMasterMoratorioTotal: TFMTBCDField;
    procedure DataModuleCreate(Sender: TObject);
    procedure adodsMasterImporteChange(Sender: TField);
    procedure adodsMasterAfterPost(DataSet: TDataSet);
    procedure dsMasterDataChange(Sender: TObject; Field: TField);
    procedure adodsMasterDescuentoValidate(Sender: TField);
    procedure actAgregarDescuentoExecute(Sender: TObject);
    procedure actEliminarDescuentoExecute(Sender: TObject);
    procedure actDescuentoParcialExecute(Sender: TObject);
  private
    { Private declarations }
    FIdCuentaXCobrar: Integer;
    FReadOnly: Boolean;
    procedure CalcularImportes;
    procedure SetIdCuentaXCobrar(const Value: Integer);
    procedure SetReadOnly(const Value: Boolean);
    property IdCuentaXCobrar: Integer read FIdCuentaXCobrar write SetIdCuentaXCobrar;
    property ReadOnly: Boolean read FReadOnly write SetReadOnly;
  public
    { Public declarations }
    constructor CreateWCXC(AOwner: TComponent; IdCuentaXCobrar: Integer); virtual;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses AnexosMoratoriosForm, ProcesosType;

{$R *.dfm}

procedure TdmAnexosMoratorios.actAgregarDescuentoExecute(Sender: TObject);
begin
  inherited;
  adopSetMoratoriosDescuento.Parameters.ParamByName('@IdAnexoMoratorio').Value:= adodsMasterIdAnexoMoratorio.Value;
  adopSetMoratoriosDescuento.Parameters.ParamByName('@Descuento').Value:= adodsMasterImporte.AsFloat;
  adopSetMoratoriosDescuento.ExecProc;
  RefreshADODS(adodsMaster, adodsMasterIdAnexoMoratorio);
end;

procedure TdmAnexosMoratorios.actDescuentoParcialExecute(Sender: TObject);
var
  Importe: Double;
begin
  inherited;
  Importe:= StrToFloat(InputBox('Ingrese el importe de descuento a diversificar', 'Importe', '0'));
  if  Importe <> 0 then
  begin
    adopSetMoratoriosDescuentos.Parameters.ParamByName('@IdAnexoAmortizacion').Value:= adodsMasterIdAnexoAmortizacion.Value;
    adopSetMoratoriosDescuentos.Parameters.ParamByName('@ImporteDescuento').Value:= Importe;
    adopSetMoratoriosDescuentos.ExecProc;
    RefreshADODS(adodsMaster, adodsMasterIdAnexoMoratorio);
  end;
end;

procedure TdmAnexosMoratorios.actEliminarDescuentoExecute(Sender: TObject);
begin
  inherited;
  adopSetMoratoriosDescuento.Parameters.ParamByName('@IdAnexoMoratorio').Value:= adodsMasterIdAnexoMoratorio.Value;
  adopSetMoratoriosDescuento.Parameters.ParamByName('@Descuento').Value:= 0;
  adopSetMoratoriosDescuento.ExecProc;
  RefreshADODS(adodsMaster, adodsMasterIdAnexoMoratorio);
end;

procedure TdmAnexosMoratorios.adodsMasterAfterPost(DataSet: TDataSet);
begin
  inherited;
  adopUpdAmortizacionMoratorio.Parameters.ParamByName('@IdAnexoAmortizacion').Value:= adodsMasterIdAnexoAmortizacion.Value;
  adopUpdAmortizacionMoratorio.ExecProc;
end;

procedure TdmAnexosMoratorios.adodsMasterDescuentoValidate(Sender: TField);
begin
  inherited;
  if (adodsMasterDescuento.Value > adodsMasterImporte.Value) then
  begin
    ShowMessage('El descuento debe ser menor o igual que el importe');
    Abort;
  end;
end;

procedure TdmAnexosMoratorios.adodsMasterImporteChange(Sender: TField);
begin
  inherited;
  CalcularImportes;
end;

procedure TdmAnexosMoratorios.CalcularImportes;
begin
  if adodsMaster.State in [dsInsert, dsEdit] then
  begin
    adodsMasterImpuesto.Value := (adodsMasterImporte.Value - adodsMasterDescuento.Value) * (_IMPUESTOS_IVA/100);
  end;
end;

constructor TdmAnexosMoratorios.CreateWCXC(AOwner: TComponent;
  IdCuentaXCobrar: Integer);
begin
  FIdCuentaXCobrar:= IdCuentaXCobrar;
  inherited Create(AOwner);
end;

procedure TdmAnexosMoratorios.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmAnexosMoratorios.Create(Self);
  gGridForm.DataSet := adodsMaster;
  TfrmAnexosMoratorios(gGridForm).actAgregarDescuento := actAgregarDescuento;
  TfrmAnexosMoratorios(gGridForm).actEliminarDescuento := actEliminarDescuento;
  TfrmAnexosMoratorios(gGridForm).actDescuentoParcial := actDescuentoParcial;
  if IdCuentaXCobrar <> 0 then
  begin                              //posible cambio para mostrar el descuento sep 25/18
    // Filtrar
    SQLSelect:= 'select IdAnexoMoratorio, IdAnexoAmortizacion, IdAnexoMoratorioEstatus, IdCuentaXCobrar, Fecha, ImporteBase, Importe, Descuento, ' +
    'CASE WHEN IdAnexoMoratorioEstatus = 2 THEN 0 ELSE Importe-Descuento END AS Moratorio, CASE WHEN IdAnexoMoratorioEstatus = 2 THEN 0 ELSE Impuesto END AS Impuesto, ' +
    'CASE WHEN IdAnexoMoratorioEstatus = 2 THEN 0 ELSE Importe-Descuento+Impuesto END AS MoratorioTotal, ImporteAplicado, Cancelacion from AnexosMoratorios ';
    SQLWhere:= Format('WHERE IdCuentaXCobrar = %d', [IdCuentaXCobrar]);
    SQLOrderBy:= 'ORDER BY Fecha ';
    OpenDataSet;
  end;
end;

procedure TdmAnexosMoratorios.dsMasterDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if adodsMaster.State in [dsBrowse] then
  begin
    ReadOnly:= ((adodsMasterIdAnexoMoratorioEstatus.Value <> 1) // Diferente de vigente
    or (adodsMasterImporteAplicado.AsFloat <> 0));
    gGridForm.DatasetInsert.Visible := False;
    gGridForm.DatasetDelete.Visible := False;
  end;
end;

procedure TdmAnexosMoratorios.SetIdCuentaXCobrar(const Value: Integer);
begin
  FIdCuentaXCobrar := Value;
end;

procedure TdmAnexosMoratorios.SetReadOnly(const Value: Boolean);
begin
  FReadOnly := Value;
  gGridForm.ReadOnlyGrid := Value;
end;

end.
