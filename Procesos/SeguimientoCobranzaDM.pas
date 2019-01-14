unit SeguimientoCobranzaDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, System.Actions,
  Vcl.ActnList, Data.Win.ADODB,dialogs;

type
  TdmSeguimientoCobranza = class(T_dmStandar)
    ADODtStIncidenciasEstados: TADODataSet;
    ADODtStPersonas: TADODataSet;
    ADODtStIncidencias: TADODataSet;
    ADODtStUsuarios: TADODataSet;
    ADODtStUsuariosIdUsuario: TAutoIncField;
    ADODtStUsuariosIdPersona: TIntegerField;
    ADODtStUsuariosIdUsuarioEstatus: TIntegerField;
    ADODtStUsuariosUsuario: TStringField;
    ADODtSTCXCPend: TADODataSet;
    dsSaldoCliente: TDataSource;
    ADODtSTCXCPendIdPersona: TIntegerField;
    ADODtSTCXCPendFecha: TDateTimeField;
    ADODtSTCXCPendIdCuentaXCobrar: TAutoIncField;
    ADODtSTCXCPendSaldo: TFMTBCDField;
    ADODtStIncidenciaXFecha: TADODataSet;
    AutoIncField1: TAutoIncField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    DateTimeField1: TDateTimeField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    DateTimeField2: TDateTimeField;
    IntegerField5: TIntegerField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    ADODtStIncidenciasIDIncidenciaCobranza: TAutoIncField;
    ADODtStIncidenciasIDUsuario: TIntegerField;
    ADODtStIncidenciasIDPersonaCliente: TIntegerField;
    ADODtStIncidenciasIdIncidenciaEstado: TIntegerField;
    ADODtStIncidenciasIdAnexo: TIntegerField;
    ADODtStIncidenciasFechaReg: TDateTimeField;
    ADODtStIncidenciasFoliosAsoc: TStringField;
    ADODtStIncidenciasRegContacto: TStringField;
    ADODtStIncidenciasAcuerdo: TStringField;
    ADODtStIncidenciasProxcontacto: TDateTimeField;
    ADODtStIncidenciasCondiciones: TIntegerField;
    ADODtStIncidenciasPromesaPago: TStringField;
    ADODtStIncidenciasEstadoIncidencia: TStringField;
    ADODtStIncidenciasCliente: TStringField;
    ADODtStIncidenciasUsuarioReg: TStringField;
    adodsMasterIdPersona: TIntegerField;
    adodsMasterRazonSocial: TStringField;
    adodsMasterSaldo: TFMTBCDField;
    adodsMasterinteres: TFMTBCDField;
    ADODtSTCXCPendSerie: TStringField;
    ADODtSTCXCPendFolio: TLargeintField;
    ADODtSTCXCPendTotal: TFMTBCDField;
    ADODtSTCXCPendSaldoDocumento: TFMTBCDField;
    ADODtSTCXCPendIdAnexo: TIntegerField;
    ADODtSTCXCPendDescripcion: TStringField;
    ADODtSTCXCPendCapitalCobrado: TFMTBCDField;
    ADODtSTCXCPendSaldoInsoluto: TFMTBCDField;
    ADODtstTelefonoCliente: TADODataSet;
    ADODtStTelContacto: TADODataSet;
    ADODtSTCXCPendIdCFDI: TLargeintField;
    ADODtSTCXCPendFechaVencimiento: TDateTimeField;
    ADODtStTelContactoidpersona: TIntegerField;
    ADODtStTelContactoContacto: TStringField;
    ADODtStTelContactotelContacto: TStringField;
    ADOQryConCalificacion: TADOQuery;
    ADOQryConCalificacioncalificacionactual: TStringField;
    DSConIncidenciaXFecha: TDataSource;
    ADODtStCXCPendientes: TADODataSet;
    ADODtStCXCPendientesIdPersona: TIntegerField;
    ADODtStCXCPendientesFecha: TDateTimeField;
    ADODtStCXCPendientesFechaVencimiento: TDateTimeField;
    ADODtStCXCPendientesIdCuentaXCobrar: TAutoIncField;
    ADODtStCXCPendientesSaldo: TFMTBCDField;
    ADODtStCXCPendientesIdCFDI: TLargeintField;
    ADODtStCXCPendientesSerie: TStringField;
    ADODtStCXCPendientesFolio: TLargeintField;
    ADODtStCXCPendientesTotal: TFMTBCDField;
    ADODtStCXCPendientesSaldoDocumento: TFMTBCDField;
    ADODtStCXCPendientesIdAnexo: TIntegerField;
    ADODtStCXCPendientesDescripcion: TStringField;
    ADODtStCXCPendientesCapitalCobrado: TFMTBCDField;
    ADODtStCXCPendientesSaldoInsoluto: TFMTBCDField;
    procedure DataModuleCreate(Sender: TObject);
    procedure ADODtStIncidenciasNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  protected
    procedure SetFilter; override;    // ene 7/18
  public
    { Public declarations }
  end;

var
  dmSeguimientoCobranza: TdmSeguimientoCobranza;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses SeguimientoCobranzaCon, _ConectionDmod;

{$R *.dfm}

procedure TdmSeguimientoCobranza.ADODtStIncidenciasNewRecord(DataSet: TDataSet);
begin
  inherited;
  dataset.FieldByName('FEchareg').AsDateTime:=_DmConection.LaFechaActual;//Now; Jun 30/17  //SEguimiento
  dataset.FieldByName('IdUsuario').AsInteger:=_dmConection.IdUsuario;
  dataset.FieldByName('IdPersonaCliente').AsInteger:= ADODSMaster.FieldByName('IdPersona').AsInteger;
  dataset.FieldByName('IdIncidenciaEstado').AsInteger:=1;
end;

procedure TdmSeguimientoCobranza.DataModuleCreate(Sender: TObject);
begin
  inherited;
  SQLSELECT:= 'select CxC.IdPersona,P.RazonSocial,Sum(CXC.Saldo) as Saldo , sum(CXC.Interes) as interes from CuentasXCobrar CXC, Personas P'
           +' where p.idpersona=Cxc.IdPersona  and Saldo>0.01'
           +' and CXC.IDCuentaXCobrarRestructura is null ';  // Ene 7/19 para consulta desde Grid

  SQLGROUPBY:=' Group by cxC.IdPersona, P.RazonSocial';

  gGridForm:= TFrmSeguimientoCobranza.Create(Self);     //Dic 5/16

  gGridForm.DataSet:= adodsMaster;
  TFrmSeguimientoCobranza(gGridForm).DSConIncidencias.DataSet:=ADODtStIncidenciaXFecha;
  TFrmSeguimientoCobranza(gGridForm).DSIncidencias.DataSet:=ADODtStIncidencias; //Va a cambiar nombre
  TFrmSeguimientoCobranza(gGridForm).DSCXCPendientes.DataSet:=ADODtSTCXCPend;
  TFrmSeguimientoCobranza(gGridForm).DSCXCPendXincidencia.DataSet:=ADODtSTCXCPendientes;
  TFrmSeguimientoCobranza(gGridForm).DSClientes.DataSet:=ADODtStPersonas;
  TFrmSeguimientoCobranza(gGridForm).dsConsulta.DataSet:=adodsMaster; //Este era saldo cliente
  TFrmSeguimientoCobranza(gGridForm).DSCalificaciones.DataSet:=ADOQryConCalificacion;//Ene 8/19
  TFrmSeguimientoCobranza(gGridForm).actConsultar:=actSearch;

end;

procedure TdmSeguimientoCobranza.SetFilter;
begin  //Ene 7/19
  inherited;
  if  TFrmSeguimientoCobranza(gGridForm).FiltroCalifica<>'' then
     SQLWHERE:= ' and ('+TFrmSeguimientoCobranza(gGridForm).FiltroCalifica+')'
  else
     SQLWHERE:= ' ';
  //verificar si se ponen demás filtros aca

end;

end.
