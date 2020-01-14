unit PersonasDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, Data.Win.ADODB,
  System.Actions, Vcl.ActnList, Vcl.Dialogs, System.UITypes;

resourcestring
  strGenBlocked = '¿Desea ejecutar el proceso de bloqueo utilizando la listas restringidas?';
  strBlocked = 'Se bloquearon %d persona(s)';

type
  TRolTipo = (rNone, rDuenoProceso, rOutSourcing, rCliente, rProveedor, rEmpleado,
           rSocio, rAutoridad, rComisionista, rEmisor);
  TdmPersonas = class(T_dmStandar)
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
    adodsMasterIdCFDIFormaPago33: TIntegerField;
    adodsMasterIdCFDIUsoCFDI: TIntegerField;
    adodsMasterPPE: TBooleanField;
    adodsMasterRegimenFiscalPreferente: TBooleanField;
    adodsMasterListaGAFI: TBooleanField;
    adodsMasterSegundoNombre: TStringField;
    actAdministradores: TAction;
    adodsMasterIdBancoDeposito: TIntegerField;
    adodsMasterCuentaDeposito: TStringField;
    adodsMasterCLABEDeposito: TStringField;
    adodsBancos: TADODataSet;
    adodsMasterBancoDeposito: TStringField;
    adodsMasterIdPaisNacimiento: TIntegerField;
    adodsPaisN: TADODataSet;
    adodsMasterPaisNacimiento: TStringField;
    adodsMasterIdPaisResidencia: TIntegerField;
    adodsPais2: TADODataSet;
    adodsMasterResidencia: TStringField;
    adodsMasterResidenciaRFP: TBooleanField;
    adodsMasterResidenciaGAFI: TBooleanField;
    actWSPersonas: TAction;
    actPersonasBloqueadas: TAction;
    adospGenPersonasBloqueadas: TADOStoredProc;
    adodsMasterBloqueada: TBooleanField;
    adodsMasterFechaBloqueada: TDateTimeField;
    procedure DataModuleCreate(Sender: TObject);
    procedure adodsPersonaRolesNewRecord(DataSet: TDataSet);
    procedure adodsMasterNewRecord(DataSet: TDataSet);
    procedure actAccionistasExecute(Sender: TObject);
    procedure actAccionistasUpdate(Sender: TObject);
    procedure adodsMasterNombreChange(Sender: TField);
    procedure actAdministradoresExecute(Sender: TObject);
    procedure actAdministradoresUpdate(Sender: TObject);
    procedure actWSPersonasExecute(Sender: TObject);
    procedure actPersonasBloqueadasExecute(Sender: TObject);
  private
    { Private declarations }
    FRolTipo: TRolTipo;
    FIdPersona: Integer;
    function GetNombreCompleto: string;
    procedure SetIdPersona(const Value: Integer);
    property RolTipo: TRolTipo read FRolTipo write FRolTipo default rNone;
//    property IdPersona: Integer read FIdPersona write FIdPersona default 0;
  protected
    procedure SetFilter; override;
  public
    { Public declarations }
    constructor CreateWRol(AOwner: TComponent; RolTipo: TRolTipo);
    constructor CreateWId(AOwner: TComponent; IdPersona: Integer);
    property IdPersona: Integer read FIdPersona write SetIdPersona;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses PersonasForm, PersonasAccionistasDM, PersonasAdministradoresDM, _Utils;

{$R *.dfm}

procedure TdmPersonas.actAccionistasExecute(Sender: TObject);
var
  dmPersonasAccionistas: TdmPersonasAccionistas;
begin
  inherited;
  dmPersonasAccionistas := TdmPersonasAccionistas.Create(Self);
  try
    dmPersonasAccionistas.MasterSource := dsMaster;
    dmPersonasAccionistas.MasterFields := 'IdPersona';
    dmPersonasAccionistas.ShowModule(nil, '');
  finally
    dmPersonasAccionistas.Free;
  end;
end;

procedure TdmPersonas.actAccionistasUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := (adodsMasterIdPersonaTipo.Value = 2); // Solo personas morales
end;

procedure TdmPersonas.actAdministradoresExecute(Sender: TObject);
var
  dmPersonasAdministradores: TdmPersonasAdministradores;
begin
  inherited;
  dmPersonasAdministradores := TdmPersonasAdministradores.Create(Self);
  try
    dmPersonasAdministradores.MasterSource := dsMaster;
    dmPersonasAdministradores.MasterFields := 'IdPersona';
    dmPersonasAdministradores.ShowModule(nil, '');
  finally
    dmPersonasAdministradores.Free;
  end;
end;

procedure TdmPersonas.actAdministradoresUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := (adodsMasterIdPersonaTipo.Value = 2); // Solo personas morales
end;

procedure TdmPersonas.actPersonasBloqueadasExecute(Sender: TObject);
var
  Encontrados: Integer;
begin
  inherited;
  if MessageDlg(strGenBlocked, mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    ScreenCursorProc(crSQLWait);
    try
      adospGenPersonasBloqueadas.ExecProc;
      Encontrados := adospGenPersonasBloqueadas.Parameters.ParamByName('@Encontrados').Value;
      MessageDlg(Format(strBlocked, [Encontrados]), mtInformation, [mbOk], 0)
    finally
      ScreenCursorProc(crDefault);
    end;
  end;
  RefreshADODS(adodsMaster, adodsMasterIdPersona);
end;

procedure TdmPersonas.actWSPersonasExecute(Sender: TObject);
begin
  inherited;
  ExecuteUntilFinish('WSPersonas.exe');
  RefreshADODS(adodsMaster, adodsMasterIdPersona);
end;

procedure TdmPersonas.adodsMasterNewRecord(DataSet: TDataSet);
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
  // Si es cliente uso CFDI Por definir.
  if (RolTipo = rCliente) then adodsMasterIdCFDIUsoCFDI.Value := 22;
  adodsMasterPLDPagarEfectivo.Value := False;
end;

procedure TdmPersonas.adodsMasterNombreChange(Sender: TField);
begin
  inherited;
  adodsMasterRazonSocial.AsString := GetNombreCompleto;
end;

procedure TdmPersonas.adodsPersonaRolesNewRecord(DataSet: TDataSet);
begin
  inherited;
  adodsPersonaRolesCalcular.Value:= False;
end;

constructor TdmPersonas.CreateWId(AOwner: TComponent; IdPersona: Integer);
begin
  FIdPersona:= IdPersona;
  inherited Create(AOwner);
end;

constructor TdmPersonas.CreateWRol(AOwner: TComponent; RolTipo: TRolTipo);
begin
  FRolTipo:= RolTipo;
  inherited Create(AOwner);
end;

procedure TdmPersonas.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm := TfrmPersonas.Create(Self);
  gGridForm.DataSet := adodsMaster;
  TfrmPersonas(gGridForm).RolTipo := RolTipo;
  TfrmPersonas(gGridForm).actAccionistas := actAccionistas;
  TfrmPersonas(gGridForm).actAdminostradores := actAdministradores;
  TfrmPersonas(gGridForm).actWSPersonas := actWSPersonas;
  TfrmPersonas(gGridForm).actPersonasBloqueadas := actPersonasBloqueadas;
  // Busqueda
  SQLSelect:= 'SELECT IdPersona, IdPersonaTipo, IdRolTipo, IdRazonSocialTipo, IdSexo, IdEstadoCivil, IdPais, IdPoblacion, IdRiesgoTipo, IdBCCalificacion, IdBCActividad1, IdBCActividad2, IdBCActividad3, RFC, CURP, RazonSocial, ' +
  'Nombre, SegundoNombre, ApellidoPaterno, ApellidoMaterno, FechaNacimiento, LugarNacimiento, VigenciaFM34, IdMetodoPago, IdRegimenFiscal, IdDocumentoLogo, IdPersonaEstatus, Identificador, NumCtaPagoCliente, ' +
  'SaldoCliente, CalificacionInicial, CalificacionActual, PLDOrigenRecurso, PLDDestinoRecurso, PLDMontoMaximo, PLDPagarEfectivo, PLDMontoMaximoEfectivo, PLDNumeroPagos, IdCFDIFormaPago33, IdCFDIUsoCFDI, PPE, ' +
  'IdBancoDeposito, CuentaDeposito, CLABEDeposito, IdPaisNacimiento, IdPaisResidencia, Bloqueada, FechaBloqueada ' +
  'FROM Personas';
  SQLOrderBy:= 'ORDER BY RazonSocial';
  actSearch.Execute;
end;

function TdmPersonas.GetNombreCompleto: string;
begin
  Result := EmptyStr;
  if adodsMasterNombre.AsString <> EmptyStr then
    Result := adodsMasterNombre.AsString;
  if adodsMasterSegundoNombre.AsString <> EmptyStr then
    Result := Result + ' ' + adodsMasterSegundoNombre.AsString;
  if adodsMasterApellidoPaterno.AsString <> EmptyStr then
    Result := Result + ' ' + adodsMasterApellidoPaterno.AsString;
  if adodsMasterApellidoMaterno.AsString <> EmptyStr then
    Result := Result + ' ' + adodsMasterApellidoMaterno.AsString;
end;

procedure TdmPersonas.SetFilter;
begin
  inherited;
  if RolTipo = rNone then
      SQLWhere := ' WHERE 0 = 0'
  else
      SQLWhere := Format(' WHERE (IdRolTipo =  %d)', [Ord(RolTipo)]);
  if IdPersona <> 0 then
      SQLWhere := SQLWhere + Format(' AND  IdPersona = %d', [IdPersona]);
end;

procedure TdmPersonas.SetIdPersona(const Value: Integer);
begin
  FIdPersona := Value;
  actSearch.Execute;
end;

end.
