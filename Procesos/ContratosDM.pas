unit ContratosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmContratos = class(T_dmStandar)
    dsMaster: TDataSource;
    adodsPersonas: TADODataSet;
    adodsContratosTipos: TADODataSet;
    adodsMasterIdContrato: TAutoIncField;
    adodsMasterIdPersona: TIntegerField;
    adodsMasterIdContratoTipo: TIntegerField;
    adodsMasterIdContratoEstatus: TIntegerField;
    adodsMasterIdentificador: TStringField;
    adodsMasterFecha: TDateTimeField;
    adodsMasterMontoAutorizado: TBCDField;
    adodsContratosEstatus: TADODataSet;
    adodsMasterCliente: TStringField;
    adodsMasterTipo: TStringField;
    adodsMasterEstatus: TStringField;
    adodsAnexos: TADODataSet;
    adodsMonedas: TADODataSet;
    adodsAnexosEstatus: TADODataSet;
    adodsAnexosIdAnexo: TAutoIncField;
    adodsAnexosIdContrato: TIntegerField;
    adodsAnexosIdMoneda: TIntegerField;
    adodsAnexosIdAnexoEstatus: TIntegerField;
    adodsAnexosIdentificador: TStringField;
    adodsAnexosDescripcion: TStringField;
    adodsAnexosFecha: TDateTimeField;
    adodsAnexosPrecioMoneda: TFMTBCDField;
    adodsAnexosTipoCambio: TFMTBCDField;
    adodsAnexosPrecio: TFMTBCDField;
    adodsAnexosImpuesto: TFMTBCDField;
    adodsAnexosPrecioTotal: TFMTBCDField;
    adodsAnexosEnganchePorcentaje: TBCDField;
    adodsAnexosEnganche: TFMTBCDField;
    adodsAnexosComisionPorcentaje: TBCDField;
    adodsAnexosComision: TFMTBCDField;
    adodsAnexosComisionImpuesto: TFMTBCDField;
    adodsAnexosGastos: TFMTBCDField;
    adodsAnexosGastosImpuestos: TFMTBCDField;
    adodsAnexosDespositosNumero: TIntegerField;
    adodsAnexosDepositos: TFMTBCDField;
    adodsAnexosPagoIncial: TFMTBCDField;
    adodsAnexosMontoFinanciar: TFMTBCDField;
    adodsAnexosTasaAnual: TBCDField;
    adodsAnexosPlazo: TIntegerField;
    adodsAnexosPagoMensual: TFMTBCDField;
    adodsAnexosFechaInicial: TDateTimeField;
    adodsAnexosMoneda: TStringField;
    adodsAnexosEstatus2: TStringField;
    actProductos: TAction;
    adodsAnexosProductos: TADODataSet;
    adodsProductos: TADODataSet;
    adodsAnexosProductosIdAnexoProducto: TIntegerField;
    adodsAnexosProductosIdAnexo: TIntegerField;
    adodsAnexosProductosIdProducto: TIntegerField;
    adodsAnexosProductosProducto: TStringField;
    dsAnexos: TDataSource;
    adodsAmortizaciones: TADODataSet;
    adodsAmortizacionesIdAnexoAmortizacion: TAutoIncField;
    adodsAmortizacionesIdAnexoSegmento: TIntegerField;
    adodsAmortizacionesPeriodo: TIntegerField;
    adodsAmortizacionesFecha: TDateTimeField;
    adodsAmortizacionesSaldoInicial: TFMTBCDField;
    adodsAmortizacionesPago: TFMTBCDField;
    adodsAmortizacionesCapital: TFMTBCDField;
    adodsAmortizacionesCapitalImpuesto: TFMTBCDField;
    adodsAmortizacionesCapitalTotal: TFMTBCDField;
    adodsAmortizacionesInteres: TFMTBCDField;
    adodsAmortizacionesInteresImpuesto: TFMTBCDField;
    adodsAmortizacionesInteresTotal: TFMTBCDField;
    adodsAmortizacionesSaldoFinal: TFMTBCDField;
    adodsAmortizacionesPagoTotal: TFMTBCDField;
    adodsCreditos: TADODataSet;
    adodsCreditosIdAnexoCredito: TAutoIncField;
    adodsCreditosIdAnexo: TIntegerField;
    adodsCreditosIdAnexoCreditoEstatus: TIntegerField;
    adodsCreditosIdUsuario: TIntegerField;
    adodsCreditosFecha: TDateTimeField;
    adodsCreditosMontoFiananciar: TFMTBCDField;
    adodsCreditosTasaAnual: TBCDField;
    adodsCreditosPlazo: TIntegerField;
    adodsCreditosPagoMensual: TFMTBCDField;
    adodsCreditosFechaInicial: TDateTimeField;
    adodsCreditosFechaCorte: TDateTimeField;
    dsCreditos: TDataSource;
    adodsCreditoEstatus: TADODataSet;
    adodsUsuario: TADODataSet;
    adodsCreditosEstatus: TStringField;
    adodsCreditosUsuario: TStringField;
    adodsAmortizacionesIdAnexoCredito: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure actProductosExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses ContratosForm, AnexosForm, AnexosProductosForm, AnexosAmortizacionesForm,
  AnexosCreditosForm;

{$R *.dfm}

procedure TdmContratos.actProductosExecute(Sender: TObject);
var
  frmAnexosProductos: TfrmAnexosProductos;
begin
  inherited;
  frmAnexosProductos := TfrmAnexosProductos.Create(Self);
  try
    frmAnexosProductos.DataSet:= adodsAnexosProductos;
    frmAnexosProductos.View:= True;
//    adodsAnexosProductos.Close;
//    adodsAnexosProductos.Parameters.ParamByName('IdAnexo').Value:= adodsAnexosIdAnexo.Value;
    adodsAnexosProductos.Open;
    frmAnexosProductos.ShowModal;
  finally
    adodsAnexosProductos.Close;
    frmAnexosProductos.Free;
  end;
end;

procedure TdmContratos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmContratos.Create(Self);
  gGridForm.DataSet:= adodsMaster;
  if adodsAnexos.CommandText <> EmptyStr then adodsAnexos.Open;
  gFormDeatil1:= TfrmAnexos.Create(Self);
  gFormDeatil1.DataSet:= adodsAnexos;
  TfrmAnexos(gFormDeatil1).actProductos := actProductos;
  if adodsCreditos.CommandText <> EmptyStr then adodsCreditos.Open;
  gFormDeatil2:= TfrmAnexosCreditos.Create(Self);
  gFormDeatil2.DataSet:= adodsCreditos;
  if adodsAmortizaciones.CommandText <> EmptyStr then adodsAmortizaciones.Open;
  gFormDeatil3:= TfrmAnexosAmortizaciones.Create(Self);
  gFormDeatil3.DataSet:= adodsAmortizaciones;
end;

end.
