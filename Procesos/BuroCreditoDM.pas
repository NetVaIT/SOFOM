unit BuroCreditoDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB, System.StrUtils, System.DateUtils, Vcl.Dialogs,
  System.UITypes;

const
  cFormatDate = 'ddmmyyyy';
  cFormatFloat = '0';

resourcestring
  strCreateFile    = 'Se creo el archivo %s, con %d empresa(s).';
  strNotCreateFile = 'No se encontraron información, por lo que no se genero el archivo.';
  strEmptyFileName = 'El nombre del archivo no puede estar vacio.';

type
  TdmBuroCredito = class(T_dmStandar)
    adoqConfiguracion: TADOQuery;
    adoqConfiguracionBCClaveInstitucion: TStringField;
    adoqConfiguracionBCInstitucion: TStringField;
    adoqConfiguracionBCTipo: TStringField;
    adoqCredito: TADOQuery;
    adoqCreditoIdAnexo: TAutoIncField;
    adoqCreditoIdPersona: TIntegerField;
    adoqCreditoRFC: TStringField;
    adoqCreditoContrato: TStringField;
    adoqCreditoContratoAnterior: TStringField;
    adoqCreditoFechaApertura: TDateTimeField;
    adoqCreditoPlazo: TIntegerField;
    adoqCreditoTipoCredito: TIntegerField;
    adoqCreditoSaldoInicial: TFMTBCDField;
    adoqCreditoMoneda: TStringField;
    adoqCreditoNumeroPagos: TIntegerField;
    adoqCreditoFrecuenciaPagos: TStringField;
    adoqCreditoImportePagos: TFMTBCDField;
    adoqCreditoFechaUltimoPago: TIntegerField;
    adoqCreditoFechaReestructura: TIntegerField;
    adoqCreditoPagoFinalMorosa: TIntegerField;
    adoqCreditoFechaLiquidacion: TIntegerField;
    adoqCreditoQuita: TIntegerField;
    adoqCreditoDacion: TIntegerField;
    adoqCreditoQuebranto: TIntegerField;
    adoqCreditoClaveObservacion: TStringField;
    adoqCreditoCreditoEspecial: TStringField;
    adoqCreditoFechaPrimerIncumplimiento: TIntegerField;
    adoqCreditoSaldoInsoluto: TFMTBCDField;
    adoqCreditoCreditoMaximo: TIntegerField;
    adoqCreditoFechacarteraVencida: TIntegerField;
    adoqCreditoFechaVencimiento: TDateTimeField;
    adoqCreditoDiasVencimiento: TIntegerField;
    adoqCreditoSaldo: TFMTBCDField;
    adoqCreditoInteres: TFMTBCDField;
    adoqPersonas: TADOQuery;
    adoqPersonasIdPersona: TAutoIncField;
    adoqPersonasRFC: TStringField;
    adoqPersonasCURP: TStringField;
    adoqPersonasEmpresa: TStringField;
    adoqPersonasPrimerNombre: TStringField;
    adoqPersonasSegindoNombre: TStringField;
    adoqPersonasApellidoPaterno: TStringField;
    adoqPersonasApellidoMaterno: TStringField;
    adoqPersonasNacionalidad: TStringField;
    adoqPersonasCalificacionCartera: TStringField;
    adoqPersonasActividad1: TStringField;
    adoqPersonasActividad2: TStringField;
    adoqPersonasActividad3: TStringField;
    adoqPersonasDirrecion1: TStringField;
    adoqPersonasDirrecion2: TStringField;
    adoqPersonasColonia: TStringField;
    adoqPersonasMunicipio: TStringField;
    adoqPersonasCiudad: TStringField;
    adoqPersonasEstado: TStringField;
    adoqPersonasCodigoPostal: TStringField;
    adoqPersonasTelefono: TStringField;
    adoqPersonasExtension: TStringField;
    adoqPersonasFax: TStringField;
    adoqPersonasTipoCliente: TIntegerField;
    adoqPersonasEstadoPaisExtranjero: TStringField;
    adoqPersonasPais: TStringField;
    adoqAccionistas: TADOQuery;
    adoqAccionistasIdPersonaAccionista: TAutoIncField;
    adoqAccionistasRFC: TStringField;
    adoqAccionistasCURP: TStringField;
    adoqAccionistasEmpresa: TStringField;
    adoqAccionistasPrimerNombre: TStringField;
    adoqAccionistasSegindoNombre: TStringField;
    adoqAccionistasApellidoPaterno: TStringField;
    adoqAccionistasApellidoMaterno: TStringField;
    adoqAccionistasPorcentaje: TBCDField;
    adoqAccionistasDirrecion1: TStringField;
    adoqAccionistasDirrecion2: TStringField;
    adoqAccionistasColonia: TStringField;
    adoqAccionistasMunicipio: TStringField;
    adoqAccionistasCiudad: TStringField;
    adoqAccionistasEstado: TStringField;
    adoqAccionistasCodigoPostal: TStringField;
    adoqAccionistasTelefono: TStringField;
    adoqAccionistasExtension: TStringField;
    adoqAccionistasFax: TStringField;
    adoqAccionistasTipo: TIntegerField;
    adoqAccionistasEstadoPaisExtranjero: TStringField;
    adoqAccionistasPais: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    FFormato: Word;
    FVersion: String;
    procedure SetFormato(const Value: Word);
    procedure SetVersion(const Value: String);
    function CrearArchivo(Month, Year: Word; FileName: TFileName): Integer;
    /// <summary> Se registra el tipo de formato dependiendo del tipo de Usuario: Entidad
    ///Financiera o Empresa Comercial. Las opciones son:
    ///1 = Detallado para Entidades Financieras
    ///2 = Sumarizado para Empresas Comerciales</summary>
    property Formato: Word read FFormato write SetFormato;
    /// <summary> Se selecciona la versión. Las opciones son:
    ///01 = Sin campo de “Fecha de Primer Incumplimiento”
    ///02 = Con campo de “Fecha de Primer Incumplimiento”
    ///03 = Versión 3 para Saldo Insoluto del principal y Clave de
    ///Consolidación para Estados y Municipios.
    ///04 = Con campos requeridos y nuevas etiquetas.
    ///Cambios solicitados en la Circular 17/ 2014 del Banco de México,
    ///publicada en el Diario Oficial de la Federación el 3 de octubre de 2014.</summary>
    property Version: String read FVersion write SetVersion;
  public
    { Public declarations }
    procedure Execute;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses BuroCreditoFiltroForm;

{$R *.dfm}

{ TdmBuroCredito }

procedure TdmBuroCredito.Execute;
var
  frmFiltro: TfrmBuroCreditoFiltro;
  NoRegistros: Integer;
begin
  frmFiltro := TfrmBuroCreditoFiltro.Create(Self);
  try
    if frmFiltro.Execute then
    begin
      if (frmFiltro.NombreArchivo<>EmptyStr)  then
      begin
        NoRegistros:= CrearArchivo(frmFiltro.PeriodoMes, frmFiltro.PeriodoAnio, frmFiltro.NombreArchivo);
        if (NoRegistros>0) then
          MessageDlg(Format(strCreateFile, [frmFiltro.NombreArchivo, NoRegistros]), mtInformation, [mbOK], 0)
        else
          MessageDlg(Format(strNotCreateFile, []), mtInformation, [mbOK], 0);
      end
      else
        MessageDlg(Format(strEmptyFileName, []), mtInformation, [mbOK], 0);
    end;
  finally
    frmFiltro.Free;
  end;
end;

function TdmBuroCredito.CrearArchivo(Month, Year: Word; FileName: TFileName): Integer;
const
  SHD = 'HDBNCPM';
  SEM = 'EMEM';
  SAC = 'ACAC';
  SCR = 'CRCR';
  SDE = 'DEDE';
  SAV = 'AVAV';
  STS = 'TSTS';
var
  TXTArchivo: TextFile;
  Registro: String;
  IdAnexo: Integer;
  FechaPeriodo: TDateTime;
  TotalEmpresas: Integer;
  TotalSaldo: Double;

  function PreparaCadena(Origen, Justifica, Relleno: string; Longitud: integer): String;
  var
    Falta : integer;
    Nueva : string;
  begin
    if Length(Origen) <> Longitud then
    begin
      Falta := Longitud - Length(Origen);
      if Justifica = 'I' then
        Nueva := Origen + DupeString(Relleno,Falta);
      if Justifica = 'D' then
        Nueva := DupeString(Relleno,Falta) + Origen;
    end
    else
      Nueva := Origen;
    Result := Nueva;
  end;

  function GetHD(Month, Year: Word): String;
  begin
    adoqConfiguracion.Open;
    try
      Result := SHD;
      Result := Result + '00' + adoqConfiguracionBCClaveInstitucion.AsString;
      Result := Result + '01' + PreparaCadena(EmptyStr, 'D', '0', 4);
      Result := Result + '02' + adoqConfiguracionBCTipo.AsString;
      Result := Result + '03' + IntToStr(Formato);
      Result := Result + '04' + FormatDateTime(cFormatDate, Date);
      Result := Result + '05' + IntToStr(Month) + IntToStr(Year); // Periodo
      Result := Result + '06' + Version;
      Result := Result + '07' + PreparaCadena(adoqConfiguracionBCInstitucion.AsString, 'I', ' ', 75);
      Result := Result + '08' + PreparaCadena(EmptyStr, 'I', ' ', 52);
    finally
      adoqConfiguracion.Close;
    end;
  end;

  function GetEM(IdPersona: Integer): String;
  begin
    adoqPersonas.Close;
    adoqPersonas.Parameters.ParamByName('IdPersona').Value := IdPersona;
    adoqPersonas.Open;
    try
      Result := SEM;
      Result := Result + '00' + PreparaCadena(adoqPersonasRFC.AsString,'I',' ',13);
      Result := Result + '01' + PreparaCadena(adoqPersonasCURP.AsString,'I',' ',18);
      Result := Result + '02' + PreparaCadena(EmptyStr, 'D', '0', 10);
      Result := Result + '03' + PreparaCadena(adoqPersonasEmpresa.AsString,'I',' ',150);
      Result := Result + '04' + PreparaCadena(adoqPersonasPrimerNombre.AsString,'I',' ',30);
      Result := Result + '05' + PreparaCadena(adoqPersonasSegindoNombre.AsString,'I',' ',30);
      Result := Result + '06' + PreparaCadena(adoqPersonasApellidoPaterno.AsString,'I',' ',25);
      Result := Result + '07' + PreparaCadena(adoqPersonasApellidoMaterno.AsString,'I',' ',25);
      Result := Result + '08' + PreparaCadena(adoqPersonasNacionalidad.AsString,'I',' ',2);
      Result := Result + '09' + PreparaCadena(adoqPersonasCalificacionCartera.AsString,'I',' ',2);
      Result := Result + '10' + PreparaCadena(adoqPersonasActividad1.AsString,'D','0',11);
      Result := Result + '11' + PreparaCadena(adoqPersonasActividad2.AsString,'D','0',11);
      Result := Result + '12' + PreparaCadena(adoqPersonasActividad3.AsString,'D','0',11);
      Result := Result + '13' + PreparaCadena(adoqPersonasDirrecion1.AsString,'I',' ',40);
      Result := Result + '14' + PreparaCadena(adoqPersonasDirrecion2.AsString,'I',' ',40);
      Result := Result + '15' + PreparaCadena(adoqPersonasColonia.AsString,'I',' ',60);
      Result := Result + '16' + PreparaCadena(adoqPersonasMunicipio.AsString,'I',' ',40);
      Result := Result + '17' + PreparaCadena(adoqPersonasCiudad.AsString,'I',' ',40);
      Result := Result + '18' + PreparaCadena(adoqPersonasEstado.AsString,'I',' ',4);
      Result := Result + '19' + PreparaCadena(adoqPersonasCodigoPostal.AsString,'I',' ',10);
      Result := Result + '20' + PreparaCadena(adoqPersonasTelefono.AsString,'I',' ',11);
      Result := Result + '21' + PreparaCadena(adoqPersonasExtension.AsString,'I',' ',8);
      Result := Result + '22' + PreparaCadena(adoqPersonasFax.AsString,'I',' ',11);
      Result := Result + '23' + PreparaCadena(adoqPersonasTipoCliente.AsString,'D','0',1);
      Result := Result + '24' + PreparaCadena(adoqPersonasEstadoPaisExtranjero.AsString,'I',' ',40);
      Result := Result + '25' + PreparaCadena(adoqPersonasPais.AsString,'I',' ',2);
      Result := Result + '26' + PreparaCadena(EmptyStr,'D','0',8);
      Result := Result + '27' + PreparaCadena(EmptyStr, 'I', ' ', 87);
    finally
    adoqPersonas.Close;
    end;
  end;

  function GetAC(IdPersona: Integer): String;
  begin
    adoqAccionistas.Close;
    adoqAccionistas.Parameters.ParamByName('IdPersona').Value := IdPersona;
    adoqAccionistas.Open;
    try
      while not adoqAccionistas.Eof do
      begin
        Result := SAC;
        Result := Result + '00' + PreparaCadena(adoqAccionistasRFC.AsString,'I',' ',13);
        Result := Result + '01' + PreparaCadena(adoqAccionistasCURP.AsString,'I',' ',18);
        Result := Result + '02' + PreparaCadena(EmptyStr, 'D', '0', 10);
        Result := Result + '03' + PreparaCadena(adoqAccionistasEmpresa.AsString,'I',' ',150);
        Result := Result + '04' + PreparaCadena(adoqAccionistasPrimerNombre.AsString,'I',' ',30);
        Result := Result + '05' + PreparaCadena(adoqAccionistasSegindoNombre.AsString,'I',' ',30);
        Result := Result + '06' + PreparaCadena(adoqAccionistasApellidoPaterno.AsString,'I',' ',25);
        Result := Result + '07' + PreparaCadena(adoqAccionistasApellidoMaterno.AsString,'I',' ',25);
        Result := Result + '08' + PreparaCadena(FormatFloat(cFormatFloat, adoqAccionistasPorcentaje.AsFloat),'D','0',2);
        Result := Result + '09' + PreparaCadena(adoqAccionistasDirrecion1.AsString,'I',' ',40);
        Result := Result + '10' + PreparaCadena(adoqAccionistasDirrecion2.AsString,'I',' ',40);
        Result := Result + '11' + PreparaCadena(adoqAccionistasColonia.AsString,'I',' ',60);
        Result := Result + '12' + PreparaCadena(adoqPersonasMunicipio.AsString,'I',' ',40);
        Result := Result + '13' + PreparaCadena(adoqAccionistasCiudad.AsString,'I',' ',40);
        Result := Result + '14' + PreparaCadena(adoqAccionistasEstado.AsString,'I',' ',4);
        Result := Result + '15' + PreparaCadena(adoqAccionistasCodigoPostal.AsString,'I',' ',10);
        Result := Result + '16' + PreparaCadena(adoqAccionistasTelefono.AsString,'I',' ',11);
        Result := Result + '17' + PreparaCadena(adoqAccionistasExtension.AsString,'I',' ',8);
        Result := Result + '18' + PreparaCadena(adoqAccionistasFax.AsString,'I',' ',11);
        Result := Result + '19' + PreparaCadena(adoqAccionistasTipo.AsString,'D','0',1);
        Result := Result + '20' + PreparaCadena(adoqAccionistasEstadoPaisExtranjero.AsString,'I',' ',40);
        Result := Result + '21' + PreparaCadena(adoqAccionistasPais.AsString,'I',' ',2);
        Result := Result + '22' + PreparaCadena(EmptyStr, 'I', ' ', 40);
        adoqAccionistas.Next;
      end;
    finally
    adoqAccionistas.Close;
    end;
  end;

  function GetCR: String;
  begin
    Result := SCR;
    Result := Result + '00' + PreparaCadena(adoqCreditoRFC.AsString,'I',' ',13);
    Result := Result + '01' + PreparaCadena(EmptyStr,'D','0',6);
    Result := Result + '02' + PreparaCadena(adoqCreditoContrato.AsString,'I',' ',25);
    Result := Result + '03' + PreparaCadena(adoqCreditoContratoAnterior.AsString,'I',' ',25);
    Result := Result + '04' + FormatDateTime(cFormatDate, adoqCreditoFechaApertura.Value);
    Result := Result + '05' + PreparaCadena(adoqCreditoPlazo.AsString,'D','0',6);
    Result := Result + '06' + PreparaCadena(adoqCreditoTipoCredito.AsString,'I',' ',4);
    Result := Result + '07' + PreparaCadena(FormatFloat(cFormatFloat, adoqCreditoSaldoInicial.AsFloat),'D','0',20);
    Result := Result + '08' + PreparaCadena(adoqCreditoMoneda.AsString,'I',' ',3);
    Result := Result + '09' + PreparaCadena(adoqCreditoNumeroPagos.AsString,'D','0',4);
    Result := Result + '10' + PreparaCadena(adoqCreditoFrecuenciaPagos.AsString,'D','0',5);
    Result := Result + '11' + PreparaCadena(FormatFloat(cFormatFloat, adoqCreditoImportePagos.AsFloat),'D','0',20);
    Result := Result + '12' + FormatDateTime(cFormatDate, adoqCreditoFechaUltimoPago.Value);
    Result := Result + '13' + FormatDateTime(cFormatDate, adoqCreditoFechaReestructura.Value);
    Result := Result + '14' + PreparaCadena(FormatFloat(cFormatFloat, adoqCreditoPagoFinalMorosa.AsFloat),'D','0',20);
    Result := Result + '15' + FormatDateTime(cFormatDate, adoqCreditoFechaLiquidacion.Value);
    Result := Result + '16' + PreparaCadena(FormatFloat(cFormatFloat, adoqCreditoQuita.AsFloat),'D','0',20);
    Result := Result + '17' + PreparaCadena(FormatFloat(cFormatFloat, adoqCreditoDacion.AsFloat),'D','0',20);
    Result := Result + '18' + PreparaCadena(FormatFloat(cFormatFloat, adoqCreditoQuebranto.AsFloat),'D','0',20);
    Result := Result + '19' + PreparaCadena(adoqCreditoClaveObservacion.AsString,'I',' ',4);
    Result := Result + '20' + PreparaCadena(adoqCreditoCreditoEspecial.AsString,'I',' ',1);
    Result := Result + '21' + FormatDateTime(cFormatDate, adoqCreditoFechaPrimerIncumplimiento.Value);
    Result := Result + '22' + PreparaCadena(FormatFloat(cFormatFloat, adoqCreditoSaldoInsoluto.AsFloat),'D','0',20);
    Result := Result + '23' + PreparaCadena(FormatFloat(cFormatFloat, adoqCreditoCreditoMaximo.AsFloat),'D','0',20);
    Result := Result + '24' + FormatDateTime(cFormatDate, adoqCreditoFechacarteraVencida.Value);
    Result := Result + '25' + PreparaCadena(EmptyStr, 'I', ' ', 40);
  end;

  function GetAV(IdPersona: Integer): String;
  begin
    Result := SAV
  end;

  function GetTS(TotalEmpresas: Integer; TotalSaldo: Double): String;
  begin
    Result := STS;
    Result := Result + '00' + PreparaCadena(IntToStr(TotalEmpresas),'D','0',7);
    Result := Result + '01' + PreparaCadena(FormatFloat(cFormatFloat, TotalSaldo),'D','0',30);
    Result := Result + '02' + PreparaCadena(EmptyStr, 'I', ' ', 53);
  end;

begin
//  Result := 0;
  IdAnexo := 0;
  TotalEmpresas := 0;
  TotalSaldo := 0;
  FechaPeriodo := EncodeDate(Year,Month,DaysInAMonth(Year, Month));
  AssignFile(TXTArchivo, FileName);
  try
    Rewrite(TXTArchivo);
    Write(TXTArchivo, GetHD(Month, Year));
    adoqCredito.Close;
    adoqCredito.Parameters.ParamByName('Fecha').Value := FechaPeriodo;
    adoqCredito.Open;
    adoqCredito.First;
    while not adoqCredito.Eof do
    begin
      if (IdAnexo <> adoqCreditoIdAnexo.Value) then
      begin
        IdAnexo := adoqCreditoIdAnexo.Value;
        Write(TXTArchivo, GetEM(adoqCreditoIdPersona.Value));
        Write(TXTArchivo, GetAC(adoqCreditoIdPersona.Value));
        Write(TXTArchivo, GetCR);
        Inc(TotalEmpresas);
      end;
      Registro := SDE;
      Registro := Registro + '00' + PreparaCadena(adoqCreditoRFC.AsString,'I',' ',13);
      Registro := Registro + '01' + PreparaCadena(adoqCreditoContrato.AsString,'I',' ',25);
      Registro := Registro + '02' + PreparaCadena(adoqCreditoDiasVencimiento.AsString,'D','0',3);
      Registro := Registro + '03' + PreparaCadena(FormatFloat(cFormatFloat, adoqCreditoSaldo.AsFloat),'D','0',20);
      Registro := Registro + '04' + PreparaCadena(FormatFloat(cFormatFloat, adoqCreditoInteres.AsFloat),'D','0',20);
      Registro := Registro + '05' + PreparaCadena(EmptyStr, 'I', ' ', 53);
      Write(TXTArchivo, Registro);
      TotalSaldo := TotalSaldo + adoqCreditoSaldo.AsFloat;
      adoqCredito.Next;
    end;
    adoqCredito.Close;
    Write(TXTArchivo, GetTS(TotalEmpresas, TotalSaldo));
  finally
    CloseFile(TXTArchivo);
  end;
  Result:= TotalEmpresas;
end;

procedure TdmBuroCredito.DataModuleCreate(Sender: TObject);
begin
  inherited;
  Formato:= 1;
  Version:= '05';
end;

procedure TdmBuroCredito.SetFormato(const Value: Word);
begin
  FFormato := Value;
end;

procedure TdmBuroCredito.SetVersion(const Value: String);
begin
  FVersion := Value;
end;

end.
