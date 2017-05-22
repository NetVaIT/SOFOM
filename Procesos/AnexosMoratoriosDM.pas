unit AnexosMoratoriosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

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
    procedure DataModuleCreate(Sender: TObject);
    procedure adodsMasterImporteChange(Sender: TField);
    procedure adodsMasterAfterPost(DataSet: TDataSet);
    procedure dsMasterDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    procedure CalcularImportes;
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses AnexosMoratoriosForm, ProcesosType;

{$R *.dfm}

procedure TdmAnexosMoratorios.adodsMasterAfterPost(DataSet: TDataSet);
begin
  inherited;
  adopUpdAmortizacionMoratorio.Parameters.ParamByName('@IdAnexoAmortizacion').Value:= adodsMasterIdAnexoAmortizacion.Value;
  adopUpdAmortizacionMoratorio.ExecProc;
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

procedure TdmAnexosMoratorios.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmAnexosMoratorios.Create(Self);
  gGridForm.DataSet := adodsMaster;
end;

procedure TdmAnexosMoratorios.dsMasterDataChange(Sender: TObject;
  Field: TField);
var
  ReadOnly: Boolean;
begin
  inherited;
  if adodsMaster.State in [dsBrowse] then
  begin
    ReadOnly:= ((adodsMasterIdAnexoMoratorioEstatus.Value <> 1) // Diferente de vigente
    or (adodsMasterImporteAplicado.AsFloat <> 0));
    gGridForm.ReadOnlyGrid := ReadOnly;
    gGridForm.DatasetInsert.Visible := False;
    gGridForm.DatasetDelete.Visible := False;
  end;
end;

end.
