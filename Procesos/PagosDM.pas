unit PagosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, System.Actions,
  Vcl.ActnList, Data.Win.ADODB;

type
  TdmPagos = class(T_dmStandar)
    adodsMasterIdPago: TAutoIncField;
    adodsMasterIdBanco: TIntegerField;
    adodsMasterIdPersonaCliente: TIntegerField;
    adodsMasterIdCuentaBancariaEstadoCuenta: TIntegerField;
    adodsMasterFechaPago: TDateTimeField;
    adodsMasterFolioPago: TIntegerField;
    adodsMasterSeriePago: TStringField;
    adodsMasterReferencia: TStringField;
    adodsMasterImporte: TFMTBCDField;
    adodsMasterSaldo: TFMTBCDField;
    adodsMasterObservaciones: TStringField;
    ADOSPersonas: TADODataSet;
    ADODtStConfiguraciones: TADODataSet;
    ADODtStConfiguracionesUltimoFolioPago: TIntegerField;
    ADODtStConfiguracionesUltimaSeriePago: TStringField;
    ADoDtStBancos: TADODataSet;
    ADoDtStBancosIdBanco: TAutoIncField;
    ADoDtStBancosIdPaisBanco: TIntegerField;
    ADoDtStBancosIdentificador: TStringField;
    ADoDtStBancosNombre: TStringField;
    ADoDtStBancosDescripcion: TStringField;
    ADoDtStBancosSiglas: TStringField;
    adodsMasterBanco: TStringField;
    adodsMasterCliente: TStringField;
    ADODtStAplicacionesPagos: TADODataSet;
    ADODtStCXCPendientes: TADODataSet;
    ADODtStCxCDetallePend: TADODataSet;
    DSMaster: TDataSource;
    DSCXCPendientes: TDataSource;
    ADODtStCXCPendientesIdCuentaXCobrar: TAutoIncField;
    ADODtStCXCPendientesIdCuentaXCobrarEstatus: TIntegerField;
    ADODtStCXCPendientesIdPersona: TIntegerField;
    ADODtStCXCPendientesIdAnexosAmortizaciones: TIntegerField;
    ADODtStCXCPendientesIdAnexo: TIntegerField;
    ADODtStCXCPendientesFecha: TDateTimeField;
    ADODtStCXCPendientesImporte: TFMTBCDField;
    ADODtStCXCPendientesImpuesto: TFMTBCDField;
    ADODtStCXCPendientesInteres: TFMTBCDField;
    ADODtStCXCPendientesTotal: TFMTBCDField;
    ADODtStCXCPendientesSaldo: TFMTBCDField;
    ADODtStAplicacionesPagosIdPagoAplicacion: TIntegerField;
    ADODtStAplicacionesPagosIdPago: TIntegerField;
    ADODtStAplicacionesPagosIdCFDI: TLargeintField;
    ADODtStAplicacionesPagosIdPersonaCliente: TIntegerField;
    ADODtStAplicacionesPagosIdCuentaXCobrarDetalle: TIntegerField;
    ADODtStAplicacionesPagosIdCuentaXCobrar: TIntegerField;
    ADODtStAplicacionesPagosFechaAplicacion: TDateTimeField;
    ADODtStAplicacionesPagosImporte: TFMTBCDField;
    ADODtStCxCDetallePendIdCuentaXCobrarDetlle: TAutoIncField;
    ADODtStCxCDetallePendIdCuentaXCobrar: TIntegerField;
    ADODtStCxCDetallePendIdCuentaXCobrarTipo: TIntegerField;
    ADODtStCxCDetallePendIdentificador: TStringField;
    ADODtStCxCDetallePendDescripcion: TStringField;
    ADODtStCxCDetallePendImporte: TFMTBCDField;
    ADODtStCxCDetallePendSaldo: TFMTBCDField;
    procedure adodsMasterNewRecord(DataSet: TDataSet);
    procedure adodsMasterAfterPost(DataSet: TDataSet);
    procedure adodsMasterBeforePost(DataSet: TDataSet);
    procedure adodsMasterAfterCancel(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure adodsMasterAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
    Inserto:Boolean;
  public
    { Public declarations }
  end;

var
  dmPagos: TdmPagos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses PagosForm;

{$R *.dfm}

procedure TdmPagos.adodsMasterAfterCancel(DataSet: TDataSet);
begin
  inherited;
  inserto:=False;
end;

procedure TdmPagos.adodsMasterAfterOpen(DataSet: TDataSet);
begin
  inherited;
  ADODtStAplicacionesPagos.Open;
  ADODtStCXCPendientes.Open;
  ADODtStCxCDetallePend.Open;
end;

procedure TdmPagos.adodsMasterAfterPost(DataSet: TDataSet);
var SErieAct:String;
    FolioAct:Integer;
begin
  inherited;
  //Verificar si aca

  SerieAct:= adoDSMaster.FieldByName('SeriePago').AsString;
  FolioAct:= adoDSMaster.FieldByName('FolioPago').AsInteger;
  ADODtStConfiguraciones.Edit;
  ADODtStConfiguraciones.FieldByName('UltimaSeriePago').AsString:=SerieAct;
  ADODtStConfiguraciones.FieldByName('UltimoFolioPago').AsInteger :=FolioAct;
  ADODtStConfiguraciones.Post;

end;
procedure TdmPagos.adodsMasterBeforePost(DataSet: TDataSet);
begin
  inherited;
  Inserto:=dataset.state=dsInsert;
  if dataset.State=dsInsert then
  begin
    adodsMaster.FieldByName('Saldo').AsFloat:=adodsMaster.FieldByName('Importe').AsFloat;
  end;
end;

procedure TdmPagos.adodsMasterNewRecord(DataSet: TDataSet);
var SErieAct:String;
    FolioAct:Integer;
begin  //Pagos
  inherited;

  DataSet.FieldByName('Fecha').AsDateTime:=Now;
  SerieAct:= ADODtStConfiguraciones.FieldByName('UltimaSeriePago').AsString;
  FolioAct:= ADODtStConfiguraciones.FieldByName('UltimoFolioPago').AsInteger;
  DataSet.FieldByName('SeriePago').AsString:=SerieAct;
  DataSet.FieldByName('FolioPago').asInteger:=FolioAct+1;



end;

procedure TdmPagos.DataModuleCreate(Sender: TObject);
begin
  inherited;
//  if ADODtStCFDIConceptos.CommandText <> EmptyStr then ADODtStCFDIConceptos.Open;
  gGridForm:= TFrmConPagos.Create(Self);

  gGridForm.DataSet:= adodsMaster;
 //  TfrmFacturasGrid(gGridForm).ActGenerarCFDI := actProcesaFactura;  //Nov29/16
end;

end.
