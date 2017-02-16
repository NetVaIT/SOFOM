unit SeguimientoCobranzaDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, System.Actions,
  Vcl.ActnList, Data.Win.ADODB;

type
  TdmSeguimientoCobranza = class(T_dmStandar)
    ADODtStIncidenciasEstados: TADODataSet;
    adodsMasterIDIncidenciaCobranza: TAutoIncField;
    adodsMasterIDUsuario: TIntegerField;
    adodsMasterIDPersonaCliente: TIntegerField;
    adodsMasterIdIncidenciaEstado: TIntegerField;
    adodsMasterIdAnexo: TIntegerField;
    adodsMasterFechaReg: TDateTimeField;
    adodsMasterFoliosAsoc: TStringField;
    adodsMasterRegContacto: TStringField;
    adodsMasterAcuerdo: TStringField;
    adodsMasterProxcontacto: TDateTimeField;
    adodsMasterCondiciones: TIntegerField;
    adodsMasterPromesaPago: TStringField;
    adodsMasterEstadoIncidencia: TStringField;
    ADODtStPersonas: TADODataSet;
    adodsMasterCliente: TStringField;
    ADODtStSaldoCliente: TADODataSet;
    ADODtStSaldoClienteIdPersona: TIntegerField;
    ADODtStSaldoClienteSaldo: TFMTBCDField;
    ADODtStSaldoClienteinteres: TFMTBCDField;
    ADODtStUsuarios: TADODataSet;
    ADODtStUsuariosIdUsuario: TAutoIncField;
    ADODtStUsuariosIdPersona: TIntegerField;
    ADODtStUsuariosIdUsuarioEstatus: TIntegerField;
    ADODtStUsuariosUsuario: TStringField;
    adodsMasterUsuarioReg: TStringField;
    ADODtSTCXCPend: TADODataSet;
    dsSaldoCliente: TDataSource;
    ADODtStSaldoClienteRazonSocial: TStringField;
    ADODtSTCXCPendIdPersona: TIntegerField;
    ADODtSTCXCPendFecha: TDateTimeField;
    ADODtSTCXCPendIdCuentaXCobrar: TAutoIncField;
    ADODtSTCXCPendSaldo: TFMTBCDField;
    ADODtSTCXCPendIdCFDINormal: TLargeintField;
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
    procedure DataModuleCreate(Sender: TObject);
    procedure adodsMasterNewRecord(DataSet: TDataSet);
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

procedure TdmSeguimientoCobranza.adodsMasterNewRecord(DataSet: TDataSet);
begin
  inherited;
  dataset.FieldByName('FEchareg').AsDateTime:=Now;
  dataset.FieldByName('IdUsuario').AsInteger:=_dmConection.IdUsuario;
  dataset.FieldByName('IdPersonaCliente').AsInteger:= ADODtStSaldoCliente.FieldByName('IdPersona').AsInteger;
   dataset.FieldByName('IdIncidenciaEstado').AsInteger:=1;
end;

procedure TdmSeguimientoCobranza.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TFrmSeguimientoCobranza.Create(Self);     //Dic 5/16

  gGridForm.DataSet:= adodsMaster;
  TFrmSeguimientoCobranza(gGridForm).DSConIncidencias.DataSet:=ADODtStIncidenciaXFecha;
  TFrmSeguimientoCobranza(gGridForm).DSIncidencias.DataSet:=adodsMaster;
  TFrmSeguimientoCobranza(gGridForm).DSCXCPendientes.DataSet:=ADODtSTCXCPend;
  TFrmSeguimientoCobranza(gGridForm).DSClientes.DataSet:=ADODtStPersonas;
  TFrmSeguimientoCobranza(gGridForm).dsConsulta.DataSet:=ADODtStSaldoCliente;

end;

end.
