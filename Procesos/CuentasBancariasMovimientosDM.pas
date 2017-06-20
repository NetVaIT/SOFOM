unit CuentasBancariasMovimientosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TDMCuentasBancariasMovimientos = class(T_dmStandar)
    ADODtStMovimientosXCtaBan: TADODataSet;
    adodsMasterIdCuentaBancaria: TAutoIncField;
    adodsMasterIdPersona: TIntegerField;
    adodsMasterIdCuentaBancariaTipo: TIntegerField;
    adodsMasterIdBanco: TIntegerField;
    adodsMasterCuentaBancaria: TStringField;
    adodsMasterClabeInterbancaria: TStringField;
    adodsMasterIdMoneda: TIntegerField;
    adodsMasterIdDocumento: TIntegerField;
    adodsMasterSaldoCuenta: TFMTBCDField;
    adodsMasterIdCuentaBancariaEstatus: TIntegerField;
    adodsMasterBanco: TStringField;
    ADODtStMovimientosXCtaBanIdCuentaBancariaEstadoCuenta: TAutoIncField;
    ADODtStMovimientosXCtaBanIdCuentaBancaria: TIntegerField;
    ADODtStMovimientosXCtaBanFecha: TDateTimeField;
    ADODtStMovimientosXCtaBanConcepto: TStringField;
    ADODtStMovimientosXCtaBanMovimiento: TFMTBCDField;
    ADODtStMovimientosXCtaBanTipoMovimiento: TStringField;
    ADODtStMovimientosXCtaBanSaldoCuenta: TFMTBCDField;
    ADODtStMovimientosXCtaBanSaldoRegistro: TFMTBCDField;
    ADODtStMovimientosXCtaBanHash: TStringField;
    ADODtStMovimientosXCtaBanIdCuentaBancariaRegistroEstatus: TIntegerField;
    ADODtStMovimientosXCtaBanObservaciones: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMCuentasBancariasMovimientos: TDMCuentasBancariasMovimientos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses CuentasBancariasMovimientosForm, MovimientosXCuentaForm;

{$R *.dfm}

procedure TDMCuentasBancariasMovimientos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TFrmCuentasBancariasMovimientos.Create(Self);
  gGridForm.DataSet:= adodsMaster;

   gFormDeatil1:= TFrmMovimientosXCtaBan.Create(Self);
//  gFormDeatil1.ApplyBestFit := False;
  gFormDeatil1.DataSet:= ADODtStMovimientosXCtaBan;
end;

end.
