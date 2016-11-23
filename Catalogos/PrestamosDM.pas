unit PrestamosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, System.Actions,
  Vcl.ActnList, Data.Win.ADODB;

type
  TdmPrestamos = class(T_dmStandar)
    adodsMasterIdPrestamo: TAutoIncField;
    adodsMasterIdPersona: TIntegerField;
    adodsMasterImporte: TFMTBCDField;
    adodsMasterFecha: TDateTimeField;
    adodsMasterPorcentaje: TFMTBCDField;
    adodsMasterSaldo: TFMTBCDField;
    adodsPersonas: TADODataSet;
    adodsMasterPersona: TStringField;
    dsMaster: TDataSource;
    adodsPrestamosPago: TADODataSet;
    adodsPrestamosPagoIdPrestamoPago: TAutoIncField;
    adodsPrestamosPagoIdPrestamo: TIntegerField;
    adodsPrestamosPagoIdMovimiento: TIntegerField;
    adodsPrestamosPagoIdPersona: TIntegerField;
    adodsPrestamosPagoIdPeriodo: TIntegerField;
    adodsPrestamosPagoIdMovimientoTipo: TIntegerField;
    adodsPrestamosPagoImporteCalculo: TFMTBCDField;
    adodsPrestamosPagoPorcentaje: TFMTBCDField;
    adodsPrestamosPagoImportePeriodo: TFMTBCDField;
    adodsPrestamosPagoImportePago: TFMTBCDField;
    adodsMovimientoTipo: TADODataSet;
    adodsPersonasPago: TADODataSet;
    adodsPrestamosPagoMovimientoTipo: TStringField;
    adodsPrestamosPagoPersona: TStringField;
    adodsPeriodo: TADODataSet;
    adodsPrestamosPagoPeriodo: TStringField;
    adopUpdPrestamosSaldo: TADOStoredProc;
    procedure DataModuleCreate(Sender: TObject);
    procedure adodsMasterAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses PrestamosForm, PrestamosPagoForm;

{$R *.dfm}

procedure TdmPrestamos.adodsMasterAfterPost(DataSet: TDataSet);
begin
  inherited;
  adopUpdPrestamosSaldo.Parameters.ParamByName('@IdPrestamo').Value:= adodsMasterIdPrestamo.Value;
  adopUpdPrestamosSaldo.ExecProc;
  adodsMaster.Refresh;
end;

procedure TdmPrestamos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  adodsPrestamosPago.Open;
  gGridForm:= TfrmPrestamos.Create(Self);
  gGridForm.DataSet:= adodsMaster;
  gFormDeatil1:= TfrmPrestamosPago.Create(Self);
  gFormDeatil1.ReadOnlyGrid:= True;
  gFormDeatil1.DataSet:= adodsPrestamosPago;
end;

end.
