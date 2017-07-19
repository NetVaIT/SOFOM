unit PersonasDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, Data.Win.ADODB,
  System.Actions, Vcl.ActnList;

type
  TRolTipo = (rNone, rDuenoProceso, rOutSourcing, rCliente, rProveedor, rEmpleado,
           rSocio, rAutoridad, rComisionista, rEmisor);
  TdmPersona = class(T_dmStandar)
    adodsMasterIdPersona: TAutoIncField;
    adodsMasterRFC: TStringField;
    adodsMasterIdPersonaTipo: TIntegerField;
    adodsMasterIdRazonSocialTipo: TIntegerField;
    adodsMasterIdSexo: TIntegerField;
    adodsMasterIdEstadoCivil: TIntegerField;
    adodsMasterIdPais: TIntegerField;
    adodsMasterIdPoblacion: TIntegerField;
    adodsMasterRazonSocial: TStringField;
    adodsMasterNombre: TStringField;
    adodsMasterApellidoPaterno: TStringField;
    adodsMasterApellidoMaterno: TStringField;
    adodsMasterFechaNacimiento: TDateTimeField;
    adodsPersonaTipo: TADODataSet;
    adodsRazonSocialTipo: TADODataSet;
    adodsSexo: TADODataSet;
    adodsEstadoCivil: TADODataSet;
    adodsPais: TADODataSet;
    adodsMasterPersonaTipo: TStringField;
    adodsMasterRazonSocialTipo: TStringField;
    adodsMasterSexo: TStringField;
    adodsMasterEstadoCivil: TStringField;
    adodsMasterPais: TStringField;
    adodsPersonaRoles: TADODataSet;
    adodsPersonaRolesIdPersonaRol: TAutoIncField;
    adodsPersonaRolesIdPersona: TIntegerField;
    adodsPersonaRolesIdPersonaRelacionada: TIntegerField;
    adodsPersonaRolesIdRol: TIntegerField;
    adodsPersonaRolesIdRolEsquemaPago: TIntegerField;
    adodsPersonaRolesIdRolEstatus: TIntegerField;
    adodsPersonaRolesIdRolClase: TIntegerField;
    adodsPersonaRelacionada: TADODataSet;
    adodsRol: TADODataSet;
    adodsRolEstatus: TADODataSet;
    adodsRolClase: TADODataSet;
    adodsPersonaRolesPersonaRelacionada: TStringField;
    adodsPersonaRolesRol: TStringField;
    adodsPersonaRolesRolEstatus: TStringField;
    adodsPersonaRolesRolClase: TStringField;
    dsMaster: TDataSource;
    adodsMasterCURP: TStringField;
    adodsPersonaRolesFacturar: TBooleanField;
    adodsMasterLugarNacimiento: TStringField;
    adodsPersonaRolesFechaIngreso: TDateTimeField;
    adodsPersonaRolesFechaBaja: TDateTimeField;
    adodsPersonaRolesNSS: TStringField;
    adodsPersonaRolesFechaAltaIMSS: TDateTimeField;
    adodsPersonaRolesCalcular: TBooleanField;
    adodsPersonaRolesPorcentajeCalculo: TFMTBCDField;
    adodsPersonaRolesRegistroPatronalIMSS: TStringField;
    adodsMasterVigenciaFM34: TDateTimeField;
    adodsPersonaRolesIdRolTipo: TIntegerField;
    adodsMasterIdRolTipo: TIntegerField;
    adodsRolesTipos: TADODataSet;
    adodsMasterRolTipo: TStringField;
    ADOdsPersonaEstatus: TADODataSet;
    adodsMasterIdMetodoPago: TIntegerField;
    adodsMasterIdRegimenFiscal: TIntegerField;
    adodsMasterIdPersonaEstatus: TIntegerField;
    adodsMasterNumCtaPagoCliente: TStringField;
    adodsMasterSaldoCliente: TFMTBCDField;
    ADOdsMetodosPago: TADODataSet;
    ADOdsRegimenFiscal: TADODataSet;
    adodsMasterMetodoPago: TStringField;
    adodsMasterRegimenFiscal: TStringField;
    adodsMasterEstatusPersona: TStringField;
    adodsMasterExigeCta: TBooleanField;
    actAccionistas: TAction;
    adodsMasterIdRiesgoTipo: TIntegerField;
    adodsMasterIdentificador: TStringField;
    adodsRiesgosTipos: TADODataSet;
    adodsMasterRiesgo: TStringField;
    adodsMasterIdBCCalificacion: TIntegerField;
    adodsMasterIdBCActividad1: TIntegerField;
    adodsMasterIdBCActividad2: TIntegerField;
    adodsMasterIdBCActividad3: TIntegerField;
    adodsMasterIdDocumentoLogo: TIntegerField;
    adodsMasterCalificacionInicial: TStringField;
    adodsMasterCalificacionActual: TStringField;
    adodsBCCalificacion: TADODataSet;
    adodsBCActividades1: TADODataSet;
    adodsBCActividades2: TADODataSet;
    adodsBCActividades3: TADODataSet;
    adodsMasterCalificacion: TStringField;
    adodsMasterActividad1: TStringField;
    adodsMasterActividad2: TStringField;
    adodsMasterActividad3: TStringField;
    adodsMasterPLDOrigenRecurso: TStringField;
    adodsMasterPLDDestinoRecurso: TStringField;
    adodsMasterPLDMontoMaximo: TFMTBCDField;
    adodsMasterPLDPagarEfectivo: TBooleanField;
    adodsMasterPLDMontoMaximoEfectivo: TFMTBCDField;
    adodsMasterPLDNumeroPagos: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure adodsPersonaRolesNewRecord(DataSet: TDataSet);
    procedure adodsMasterNewRecord(DataSet: TDataSet);
    procedure actAccionistasExecute(Sender: TObject);
    procedure actAccionistasUpdate(Sender: TObject);
  private
    { Private declarations }
    FRolTipo: TRolTipo;
    procedure SetRolTipo(const Value: TRolTipo);
    property RolTipo: TRolTipo read FRolTipo write SetRolTipo;
  protected
    procedure SetFilter; override;
  public
    { Public declarations }
    constructor CreateWRol(AOwner: TComponent; RolTipo: TRolTipo); virtual;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses PersonasForm, PersonasAccionistasDM;

{$R *.dfm}

procedure TdmPersona.actAccionistasExecute(Sender: TObject);
var
  dmPersonasAccionistas: TdmPersonasAccionistas;
begin
  inherited;
  dmPersonasAccionistas := TdmPersonasAccionistas.Create(Self);
  try
//    dmPersonasAccionistas.TipoContrato:= TipoContrato;
    dmPersonasAccionistas.MasterSource := dsMaster;
    dmPersonasAccionistas.MasterFields := 'IdPersona';
    dmPersonasAccionistas.ShowModule(nil, '');
  finally
    dmPersonasAccionistas.Free;
  end;
end;

procedure TdmPersona.actAccionistasUpdate(Sender: TObject);
begin
  inherited;
  actAccionistas.Enabled := (adodsMasterIdPersonaTipo.Value = 2); // Solo personas morales
end;

procedure TdmPersona.adodsMasterNewRecord(DataSet: TDataSet);
begin
  inherited;
  adodsMasterIdRolTipo.Value :=Ord(RolTipo);
  adodsMasterIdPersonaEstatus.Value :=1;
  adodsMasterIdRiesgoTipo.Value := 1;
  if (RolTipo = rEmpleado) or (RolTipo = rComisionista)
  or (RolTipo = rSocio) then
  begin
    adodsMasterIdPersonaTipo.Value := 1;
  end;
  adodsMasterPLDPagarEfectivo.Value := False;
end;

procedure TdmPersona.adodsPersonaRolesNewRecord(DataSet: TDataSet);
begin
  inherited;
  adodsPersonaRolesCalcular.Value:= False;
end;

constructor TdmPersona.CreateWRol(AOwner: TComponent; RolTipo: TRolTipo);
begin
  FRolTipo:= RolTipo;
  inherited Create(AOwner);
end;

procedure TdmPersona.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm := TfrmPersonas.Create(Self);
  gGridForm.DataSet := adodsMaster;
  TfrmPersonas(gGridForm).RolTipo := RolTipo;
  TfrmPersonas(gGridForm).actAccionistas := actAccionistas;
  // Busqueda
  SQLSelect:= 'SELECT IdPersona, IdPersonaTipo, IdRolTipo, IdRazonSocialTipo, IdSexo, IdEstadoCivil, IdPais, IdPoblacion, IdRiesgoTipo, IdBCCalificacion, IdBCActividad1, IdBCActividad2, IdBCActividad3, RFC, CURP, RazonSocial, ' +
  'Nombre, ApellidoPaterno, ApellidoMaterno, FechaNacimiento, LugarNacimiento, VigenciaFM34, IdMetodoPago, IdRegimenFiscal, IdDocumentoLogo, IdPersonaEstatus, Identificador, NumCtaPagoCliente, ' +
  'SaldoCliente, CalificacionInicial, CalificacionActual, PLDOrigenRecurso, PLDDestinoRecurso, PLDMontoMaximo, PLDPagarEfectivo, PLDMontoMaximoEfectivo, PLDNumeroPagos ' +
  'FROM Personas';
  SQLOrderBy:= 'ORDER BY RazonSocial';
  actSearch.Execute;
end;

procedure TdmPersona.SetFilter;
begin
  inherited;
  if RolTipo = rNone then
      SQLWhere := EmptyStr
  else
      SQLWhere := Format(' WHERE (IdRolTipo =  %d)', [Ord(RolTipo)]);
end;

procedure TdmPersona.SetRolTipo(const Value: TRolTipo);
begin
  FRolTipo := Value;
end;

end.
