unit SeguimientoCobranzaDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, System.Actions,
  Vcl.ActnList, Data.Win.ADODB;

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
    procedure DataModuleCreate(Sender: TObject);
    procedure ADODtStIncidenciasNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
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
  dataset.FieldByName('FEchareg').AsDateTime:=Now;
  dataset.FieldByName('IdUsuario').AsInteger:=_dmConection.IdUsuario;
  dataset.FieldByName('IdPersonaCliente').AsInteger:= ADODSMaster.FieldByName('IdPersona').AsInteger;
  dataset.FieldByName('IdIncidenciaEstado').AsInteger:=1;
end;

procedure TdmSeguimientoCobranza.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TFrmSeguimientoCobranza.Create(Self);     //Dic 5/16

  gGridForm.DataSet:= adodsMaster;
  TFrmSeguimientoCobranza(gGridForm).DSConIncidencias.DataSet:=ADODtStIncidenciaXFecha;
  TFrmSeguimientoCobranza(gGridForm).DSIncidencias.DataSet:=ADODtStIncidencias; //Va a cambiar nombre
  TFrmSeguimientoCobranza(gGridForm).DSCXCPendientes.DataSet:=ADODtSTCXCPend;
  TFrmSeguimientoCobranza(gGridForm).DSClientes.DataSet:=ADODtStPersonas;
  TFrmSeguimientoCobranza(gGridForm).dsConsulta.DataSet:=adodsMaster; //Este era saldo cliente

end;

end.
