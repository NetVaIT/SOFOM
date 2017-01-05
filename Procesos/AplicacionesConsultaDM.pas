unit AplicacionesConsultaDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmAplicacionesConsulta = class(T_dmStandar)
    ADOQryAuxiliar: TADOQuery;
    adodsMasterFechaAplicacion: TDateTimeField;
    adodsMasterimporte: TFMTBCDField;
    adodsMasterFechaPago: TDateTimeField;
    adodsMasterFolioPago: TIntegerField;
    adodsMasterSeriePago: TStringField;
    adodsMasterNoCuentaXCobrar: TAutoIncField;
    adodsMasterIdPagoAplicacion: TAutoIncField;
    adodsMasterIdPago: TIntegerField;
    adodsMasterIdCFDI: TLargeintField;
    adodsMasterIdPersonaCliente: TIntegerField;
    adodsMasterFechaCXC: TDateTimeField;
    ADODtstAplicacionesInternas: TADODataSet;
    ADODtstAplicacionesInternasIDPagoAplicacionInterna: TIntegerField;
    ADODtstAplicacionesInternasIDPagoAplicacion: TIntegerField;
    ADODtstAplicacionesInternasIdCuentaXCobrarDetalle: TIntegerField;
    ADODtstAplicacionesInternasIDCFDI: TLargeintField;
    ADODtstAplicacionesInternasIDCFDIConcepto: TLargeintField;
    DSMaster: TDataSource;
    ADODtstAplicacionesInternasfechaCXC: TDateTimeField;
    ADODtstAplicacionesInternasItemCXC: TStringField;
    ADODtstAplicacionesInternassaldoCXC: TFMTBCDField;
    ADODtstAplicacionesInternasImportePagado: TFMTBCDField;
    adodsMasterCliente: TStringField;
    adodsMasterIDAnexo: TIntegerField;
    adodsMasterAnexo: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmAplicacionesConsulta: TdmAplicacionesConsulta;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses AplicacionesConsultaGrid, AplicacionesInternasCon;


{$R *.dfm}

procedure TdmAplicacionesConsulta.DataModuleCreate(Sender: TObject);
begin
  inherited;

   gGridForm:= TfrmConaplicaciones.Create(Self);
 // TfrmConaplicaciones(gGridForm).DSAplicacion.DataSet:=ADODtStAplicacionesPagos;

  gGridForm.DataSet:= adodsMaster;

  gFormDeatil1:=TfrmConAplicacionesInternas.Create(self);
  gFormDeatil1.DataSet:=ADODtstAplicacionesInternas;
  gFormDeatil1.DataSet.Open;
 (* gGridEditForm:= TFrmAplicacionesConsultaInd.Create(Self);
  gGridEditForm.DataSet := adodsMaster;
  TFrmAplicacionesConsultaInd(gGridEditForm).DSQryAuxiliar.DataSet:=ADOQryAuxiliar; //Jun 1/16  *)
  adodsMaster.open;
end;

end.
