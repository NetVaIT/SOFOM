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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmSeguimientoCobranza: TdmSeguimientoCobranza;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
