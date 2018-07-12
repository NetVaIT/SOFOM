unit PLDAlertasDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB, System.StrUtils, System.DateUtils, Vcl.Dialogs,
  System.UITypes, System.IOUtils, dxmdaset;

resourcestring
  strCreateFile    = 'Se creo el archivo %s, con %d registro(s).';
  strNotCreateFile = 'No se encontraron información, por lo que no se genero el archivo.';

type
  TdmPLDAlertas = class(T_dmStandar)
    adodsOperacionTipo: TADODataSet;
    adodsTipo: TADODataSet;
    adodsEstatus: TADODataSet;
    adodsMasterIdPLDAlerta: TAutoIncField;
    adodsMasterIdPersona: TIntegerField;
    adodsMasterIdPago: TIntegerField;
    adodsMasterIdPLDOperacionTipo: TIntegerField;
    adodsMasterIdPLDAlertaTipo: TIntegerField;
    adodsMasterIdPLDAlertaEstatus: TIntegerField;
    adodsMasterCliente: TStringField;
    adodsMasterContrato: TStringField;
    adodsMasterPeriodoMes: TIntegerField;
    adodsMasterPeriodoAnio: TIntegerField;
    adodsMasterSoloEfectivo: TBooleanField;
    adodsMasterFechaPago: TDateTimeField;
    adodsMasterMetodoPago: TStringField;
    adodsMasterFechaDeteccion: TDateTimeField;
    adodsMasterTotal: TFMTBCDField;
    adodsMasterTotalUSD: TFMTBCDField;
    adodsMasterTotalPagos: TIntegerField;
    adodsMasterDescripcion: TStringField;
    adodsMasterRazon: TStringField;
    adodsMasterR24: TBooleanField;
    adodsMasterOperacionTipo: TStringField;
    adodsMasterTipo: TStringField;
    adodsMasterEstatus: TStringField;
    actGenerarAlertas: TAction;
    actGenerarArchivo: TAction;
    adopGenPLDAlertas: TADOStoredProc;
    adoqPLDAlertas: TADOQuery;
    adoqPLDAlertasIdPLDAlerta: TIntegerField;
    adoqPLDAlertasIdPersona: TIntegerField;
    adoqPLDAlertasIdPago: TIntegerField;
    adoqPLDAlertasC01_TIPO_DE_REPORTE: TStringField;
    adoqPLDAlertasC02_PERIODO_DEL_REPORTE: TStringField;
    adoqPLDAlertasC03_FOLIO: TStringField;
    adoqPLDAlertasC04_ORGANO_SUPERVISOR: TStringField;
    adoqPLDAlertasC05_CLAVE_INTITUCION: TStringField;
    adoqPLDAlertasC06_LOCALIDAD: TStringField;
    adoqPLDAlertasC07_CP_SUCURSAL: TStringField;
    adoqPLDAlertasC08_TIPO_OPERACION: TStringField;
    adoqPLDAlertasC09_INSTRUMENTO_MONETARIO: TStringField;
    adoqPLDAlertasC10_CONTRATO: TStringField;
    adoqPLDAlertasC11_MONTO: TFMTBCDField;
    adoqPLDAlertasC12_MONEDA: TStringField;
    adoqPLDAlertasC13_FECHA_OPERACION: TStringField;
    adoqPLDAlertasC14_FECHA_DETECCION: TStringField;
    adoqPLDAlertasC15_NACIONALIDAD: TStringField;
    adoqPLDAlertasC16_TIPO_DE_PERSONA: TStringField;
    adoqPLDAlertasC17_RAZON_SOCIAL: TStringField;
    adoqPLDAlertasC18_NOMBRE: TStringField;
    adoqPLDAlertasC19_APELLIDO_PATERNO: TStringField;
    adoqPLDAlertasC20_APELIIDO_MATERNO: TStringField;
    adoqPLDAlertasC21_RFC: TStringField;
    adoqPLDAlertasC22_CURP: TStringField;
    adoqPLDAlertasC23_FECHA_NACIMIENTO_CONSTITUCION: TStringField;
    adoqPLDAlertasC24_DOMICILIO: TStringField;
    adoqPLDAlertasC25_COLONIA: TStringField;
    adoqPLDAlertasC26_POBLACION: TStringField;
    adoqPLDAlertasC27_TELEFONO: TStringField;
    adoqPLDAlertasC28_ACTIVADAD_ECONOMICA: TStringField;
    adoqPLDAlertasC29_CONSECUTIVO_RELACIONADO: TStringField;
    adoqPLDAlertasC30_CONTRATO_RELACIONADO: TStringField;
    adoqPLDAlertasC31_CLAVE_INTITUCION_RELACIONADO: TStringField;
    adoqPLDAlertasC32_NOMBRE_RELACIONADO: TStringField;
    adoqPLDAlertasC33_PATERNO__RELACIONADO: TStringField;
    adoqPLDAlertasC34_MATERNO_RELACIONADO: TStringField;
    adoqPLDAlertasC35_DESCRIPCION: TStringField;
    adoqPLDAlertasC36_RAZON: TStringField;
    adoqConfiguracion: TADOQuery;
    adoqConfiguracionPLDAlertaTipo: TStringField;
    adoqConfiguracionPLDCodigoCASFIM: TStringField;
    adoqConfiguracionPLDArchivoRuta: TStringField;
    adoqConfiguracionPLDArchivoExtension: TStringField;
    adcUpdPLDAlertas: TADOCommand;
    daMaster: TDataSource;
    adopSetPLDAlertas: TADOStoredProc;
    dxmdAlerta: TdxMemData;
    dxmdAlertaFecha: TDateTimeField;
    dxmdAlertaMensaje: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure actGenerarAlertasExecute(Sender: TObject);
    procedure actGenerarArchivoExecute(Sender: TObject);
    procedure daMasterDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    function GenerarAlertas(Month, Year: Word): Boolean;
    function GenerarArchivo(IdPLDALertaTipo, Factor, Year: Word;
      FileName: TFileName): Integer;
    function GetNombreArchivo(IdPLDALertaTipo, Factor, Year: Word): TFileName;
  public
    { Public declarations }
    procedure GenerarAlertaPreocupante;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses PLDAlertasForm, PLDAlertasFiltroForm, _Utils, PLDAlertasPreocupanteForm;

{$R *.dfm}

  function PreparaCadena(Origen, Justifica, Relleno: string; Longitud: integer): String;
  var
    Falta : integer;
    Nueva : string;
  begin
    if Length(Origen) < Longitud then
    begin
      Falta := Longitud - Length(Origen);
      if Justifica = 'I' then
        Nueva := Origen + DupeString(Relleno,Falta);
      if Justifica = 'D' then
        Nueva := DupeString(Relleno,Falta) + Origen;
    end
    else
      Nueva := Copy(Origen,1, Longitud);
    Result := Nueva;
  end;

procedure TdmPLDAlertas.actGenerarAlertasExecute(Sender: TObject);
var
  frmFiltro: TfrmPLDAlertasFiltro;
begin
  inherited;
  frmFiltro := TfrmPLDAlertasFiltro.Create(Self);
  try
    frmFiltro.Accion := 1;
    if frmFiltro.Execute(False) then
    begin
      if GenerarAlertas(frmFiltro.Factor, frmFiltro.PeriodoAnio) then
        RefreshADODS(adodsMaster, adodsMasterIdPLDAlerta);
    end;
  finally
    frmFiltro.Free;
  end;
end;

procedure TdmPLDAlertas.actGenerarArchivoExecute(Sender: TObject);
var
  frmFiltro: TfrmPLDAlertasFiltro;
  NombreArchivo: TFileName;
  NoRegistros: Integer;
begin
  inherited;
  frmFiltro := TfrmPLDAlertasFiltro.Create(Self);
  try
    frmFiltro.Accion := 2;
    if frmFiltro.Execute(True) then
    begin
      NombreArchivo:= GetNombreArchivo(frmFiltro.IdTipo, frmFiltro.Factor, frmFiltro.PeriodoAnio);
      NoRegistros:= GenerarArchivo(frmFiltro.IdTipo, frmFiltro.Factor, frmFiltro.PeriodoAnio, NombreArchivo);
      if (NoRegistros>0) then
      begin
        RefreshADODS(adodsMaster, adodsMasterIdPLDAlerta);
        MessageDlg(Format(strCreateFile, [NombreArchivo, NoRegistros]), mtInformation, [mbOK], 0);
      end
      else
        MessageDlg(Format(strNotCreateFile, []), mtInformation, [mbOK], 0);
    end;
  finally
    frmFiltro.Free;
  end;
end;

procedure TdmPLDAlertas.daMasterDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if adodsMaster.State in [dsBrowse] then
    if Assigned(gGridForm) then
      gGridForm.ReadOnlyGrid := (adodsMasterIdPLDAlertaEstatus.Value = 3) or
      (adodsMasterIdPLDAlertaEstatus.Value = 5);
end;

procedure TdmPLDAlertas.GenerarAlertaPreocupante;
var
  frmPLDAlertasPreocupante: TfrmPLDAlertasPreocupante;

  procedure GenerarAlerta(Fecha: TDateTime; Descripcion: string);
  var
    Year, Month, Day: Word;
  begin
    DecodeDate(Fecha, Year, Month, Day);
    adopSetPLDAlertas.Parameters.ParamByName('@IdPLDOperacionTipo').Value := 11;
    adopSetPLDAlertas.Parameters.ParamByName('@IdPLDAlertaTipo').Value := 3;
    adopSetPLDAlertas.Parameters.ParamByName('@IdPLDAlertaEstatus').Value := 1;
    adopSetPLDAlertas.Parameters.ParamByName('@PeriodoMes').Value := Month;
    adopSetPLDAlertas.Parameters.ParamByName('@PeriodoAnio').Value := Year;
    adopSetPLDAlertas.Parameters.ParamByName('@SoloEfectivo').Value := 0;
    adopSetPLDAlertas.Parameters.ParamByName('@FechaDeteccion').Value := Now;
    adopSetPLDAlertas.Parameters.ParamByName('@Total').Value := 0;
    adopSetPLDAlertas.Parameters.ParamByName('@TotalUSD').Value := 0;
    adopSetPLDAlertas.Parameters.ParamByName('@TotalPagos').Value := 0;
    adopSetPLDAlertas.Parameters.ParamByName('@Descripcion').Value := Descripcion;
    adopSetPLDAlertas.Parameters.ParamByName('@R24').Value := 0;
    adopSetPLDAlertas.ExecProc;
  end;

begin
  frmPLDAlertasPreocupante := TfrmPLDAlertasPreocupante.Create(Self);
  try
    dxmdAlerta.Open;
    dxmdAlerta.Insert;
    dxmdAlertaFecha.Value := Now;
    frmPLDAlertasPreocupante.DataSet:= dxmdAlerta;
    if frmPLDAlertasPreocupante.ShowModal = mrOk then
    begin
      GenerarAlerta(dxmdAlertaFecha.Value, dxmdAlertaMensaje.AsString);
    end;
  finally
    frmPLDAlertasPreocupante.Free;
  end;
  dxmdAlerta.Close;
end;

function TdmPLDAlertas.GenerarAlertas(Month, Year: Word): Boolean;
begin
//  Result:= False;
  ScreenCursorProc(crSQLWait);
  try
    adopGenPLDAlertas.Parameters.ParamByName('@PeriodoMes').Value:= Month;
    adopGenPLDAlertas.Parameters.ParamByName('@PeriodoAnio').Value:= Year;
    adopGenPLDAlertas.ExecProc;
  finally
    ScreenCursorProc(crDefault);
  end;
  Result:= True;
end;

function TdmPLDAlertas.GenerarArchivo(IdPLDALertaTipo, Factor, Year: Word;
  FileName: TFileName): Integer;
const
  cSeparador = ';';
var
  Directorio: string;
  TXTArchivo: TextFile;
  Registro: String;
  NoRegistros: Integer;
begin
//  Result := 0;
  NoRegistros := 0;
  Directorio := TPath.GetDirectoryName(FileName);
  if not DirectoryExists(Directorio) then
    ForceDirectories(Directorio);
  AssignFile(TXTArchivo, FileName);
  try
    Rewrite(TXTArchivo);
    adoqPLDAlertas.Close;
    adoqPLDAlertas.Parameters.ParamByName('IdPLDAlertaTipo').Value := IdPLDALertaTipo;
    adoqPLDAlertas.Parameters.ParamByName('PeriodoFactor').Value := Factor;
    adoqPLDAlertas.Parameters.ParamByName('PeriodoAnio').Value := Year;
    adoqPLDAlertas.Open;
    adoqPLDAlertas.First;
    while not adoqPLDAlertas.Eof do
    begin
      Registro := adoqPLDAlertasC01_TIPO_DE_REPORTE.AsString + cSeparador;
      Registro := Registro + adoqPLDAlertasC02_PERIODO_DEL_REPORTE.AsString + cSeparador;
      Registro := Registro + adoqPLDAlertasC03_FOLIO.AsString + cSeparador;
      Registro := Registro + adoqPLDAlertasC04_ORGANO_SUPERVISOR.AsString + cSeparador;
      Registro := Registro + adoqPLDAlertasC05_CLAVE_INTITUCION.AsString + cSeparador;
      Registro := Registro + adoqPLDAlertasC06_LOCALIDAD.AsString + cSeparador;
      Registro := Registro + adoqPLDAlertasC07_CP_SUCURSAL.AsString + cSeparador;
      Registro := Registro + adoqPLDAlertasC08_TIPO_OPERACION.AsString + cSeparador;
      Registro := Registro + adoqPLDAlertasC09_INSTRUMENTO_MONETARIO.AsString + cSeparador;
      Registro := Registro + adoqPLDAlertasC10_CONTRATO.AsString + cSeparador;
      Registro := Registro + FormatFloat('0.00', adoqPLDAlertasC11_MONTO.AsFloat) + cSeparador;
      Registro := Registro + adoqPLDAlertasC12_MONEDA.AsString + cSeparador;
      Registro := Registro + adoqPLDAlertasC13_FECHA_OPERACION.AsString + cSeparador;
      Registro := Registro + adoqPLDAlertasC14_FECHA_DETECCION.AsString + cSeparador;
      Registro := Registro + adoqPLDAlertasC15_NACIONALIDAD.AsString + cSeparador;
      Registro := Registro + adoqPLDAlertasC16_TIPO_DE_PERSONA.AsString + cSeparador;
      Registro := Registro + adoqPLDAlertasC17_RAZON_SOCIAL.AsString + cSeparador;
      Registro := Registro + adoqPLDAlertasC18_NOMBRE.AsString + cSeparador;
      Registro := Registro + adoqPLDAlertasC19_APELLIDO_PATERNO.AsString + cSeparador;
      Registro := Registro + adoqPLDAlertasC20_APELIIDO_MATERNO.AsString + cSeparador;
      Registro := Registro + adoqPLDAlertasC21_RFC.AsString + cSeparador;
      Registro := Registro + adoqPLDAlertasC22_CURP.AsString + cSeparador;
      Registro := Registro + adoqPLDAlertasC23_FECHA_NACIMIENTO_CONSTITUCION.AsString + cSeparador;
      Registro := Registro + adoqPLDAlertasC24_DOMICILIO.AsString + cSeparador;
      Registro := Registro + adoqPLDAlertasC25_COLONIA.AsString + cSeparador;
      Registro := Registro + adoqPLDAlertasC26_POBLACION.AsString + cSeparador;
      Registro := Registro + adoqPLDAlertasC27_TELEFONO.AsString + cSeparador;
      Registro := Registro + adoqPLDAlertasC28_ACTIVADAD_ECONOMICA.AsString + cSeparador;
      Registro := Registro + adoqPLDAlertasC29_CONSECUTIVO_RELACIONADO.AsString + cSeparador;
      Registro := Registro + adoqPLDAlertasC30_CONTRATO_RELACIONADO.AsString + cSeparador;
      Registro := Registro + adoqPLDAlertasC31_CLAVE_INTITUCION_RELACIONADO.AsString + cSeparador;
      Registro := Registro + adoqPLDAlertasC32_NOMBRE_RELACIONADO.AsString + cSeparador;
      Registro := Registro + adoqPLDAlertasC33_PATERNO__RELACIONADO.AsString + cSeparador;
      Registro := Registro + adoqPLDAlertasC34_MATERNO_RELACIONADO.AsString + cSeparador;
      Registro := Registro + adoqPLDAlertasC35_DESCRIPCION.AsString + cSeparador;
      Registro := Registro + adoqPLDAlertasC36_RAZON.AsString + cSeparador;
      Write(TXTArchivo, Registro);
      // Actualiza estatus de la alerta
      adcUpdPLDAlertas.Parameters.ParamByName('IdPLDAlerta').Value := adoqPLDAlertasIdPLDAlerta.Value;
      adcUpdPLDAlertas.Execute;
      Inc(NoRegistros);
      adoqPLDAlertas.Next;
    end;
    adoqPLDAlertas.Close;
  finally
    CloseFile(TXTArchivo);
  end;
  Result:= NoRegistros;
end;

procedure TdmPLDAlertas.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmPLDAlertas.Create(Self);
  gGridForm.DataSet:= adodsMaster;
  TfrmPLDAlertas(gGridForm).actGenerarAlertas := actGenerarAlertas;
  TfrmPLDAlertas(gGridForm).actGenerarArchivo := actGenerarArchivo;
end;

function TdmPLDAlertas.GetNombreArchivo(IdPLDALertaTipo, Factor, Year: Word): TFileName;
var
  Periodo: string;
begin
  if IdPLDALertaTipo = 1 then
    Periodo := Copy(IntToStr(Year),3,4) + PreparaCadena(IntToStr(Factor*3),'D','0',2)
  else
    Periodo := Copy(IntToStr(Year),3,4) + PreparaCadena(IntToStr(Factor),'D','0',2) + '01';
  adoqConfiguracion.Close;
  adoqConfiguracion.Parameters.ParamByName('IdPLDAlertaTipo').Value := IdPLDALertaTipo;
  adoqConfiguracion.Open;
  Result:= adoqConfiguracionPLDArchivoRuta.AsString +
  adoqConfiguracionPLDAlertaTipo.AsString +
  adoqConfiguracionPLDCodigoCASFIM.AsString + Periodo +
  '.' + adoqConfiguracionPLDArchivoExtension.AsString;
  adoqConfiguracion.Close;
end;

end.
