unit AbonarCapitalDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB, ProcesosType, Vcl.Dialogs, System.UITypes, System.Math;

resourcestring
  strMontoVencido = 'El anexo tiene un monto vencido, favor de liquidarlo antes de realizar esta operación.';

type
  TdmAbonarCapital = class(T_dmStandar)
    adoqAnexo: TADOQuery;
    adoqAnexoSaldoInsoluto: TFMTBCDField;
    adoqAnexoMontoVencido: TFMTBCDField;
    adopCXCAbonarCapital: TADOStoredProc;
    adoqAnexosSel: TADOQuery;
    adoqAnexosSelIdContrato: TAutoIncField;
    adoqAnexosSelIdPersona: TIntegerField;
    adoqAnexosSelIdContratoTipo: TIntegerField;
    adoqAnexosSelIdAnexo: TAutoIncField;
    adoqAnexosSelContrato: TStringField;
    adoqAnexosSelAnexo: TStringField;
    adoqAnexosSelCliente: TStringField;
    adoqAnexosSelSaldoInsoluto: TFMTBCDField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    FPaymentTime: TPaymentTime;
    FFecha: TDateTime;
    FIdAnexo: Integer;
    FIdCuentaXCobrar: Integer;
    FImporte: Extended;
    procedure SetPaymentTime(const Value: TPaymentTime);
    function AbonarCapital(IdAnexo, IdTipoContrato: Integer; Fecha: TDateTime; Importe: Extended;
    Tipo: TAbonoCapital): Boolean;
    procedure SetFecha(const Value: TDateTime);
    procedure SetIdAnexo(const Value: Integer);
    procedure SetIdCuentaXCobrar(const Value: Integer);
    procedure SetImporte(const Value: Extended);
    property PaymentTime: TPaymentTime read FPaymentTime write SetPaymentTime;
  public
    { Public declarations }
    function Execute: Boolean;
    property IdAnexo: Integer read FIdAnexo write SetIdAnexo;
    property IdCuentaXCobrar: Integer read FIdCuentaXCobrar write SetIdCuentaXCobrar;
    property Fecha: TDateTime read FFecha write SetFecha;
    property Importe: Extended read FImporte write SetImporte;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses AbonarCapitalEdit, AmortizacionesDM;

{$R *.dfm}

{ TdmAbonarCapital }

function TdmAbonarCapital.AbonarCapital(IdAnexo, IdTipoContrato: Integer; Fecha: TDateTime;
  Importe: Extended; Tipo: TAbonoCapital): Boolean;
var
  dmAmortizaciones: TdmAmortizaciones;
begin
  Result := False;
  // Crear CXC
  adopCXCAbonarCapital.Parameters.ParamByName('@IdAnexo').Value := IdAnexo;
  adopCXCAbonarCapital.Parameters.ParamByName('@Fecha').Value := Fecha;
  adopCXCAbonarCapital.Parameters.ParamByName('@ImporteCapital').Value := Importe;
  adopCXCAbonarCapital.ExecProc;
  IdCuentaXCobrar := adopCXCAbonarCapital.Parameters.ParamByName('@IdCuentaXCobrar').Value;
  // Ajustar amortizaciones
 if IdCuentaXCobrar > 0 then
  begin
    dmAmortizaciones := TdmAmortizaciones.Create(Self);
    try
      dmAmortizaciones.PaymentTime := PaymentTime;
      dmAmortizaciones.TipoContrato:= TCTipoContrato(IdTipoContrato);
      Result := dmAmortizaciones.SetAmortizaciones(IdAnexo, Importe, Tipo);
    finally
      dmAmortizaciones.Free;
    end;
  end;
end;

procedure TdmAbonarCapital.DataModuleCreate(Sender: TObject);
begin
  inherited;
  PaymentTime := ptEndOfPeriod;
  IdAnexo := 0;
  IdCuentaXCobrar := 0;
  Fecha:= Date;
  Importe:= 0;
end;

function TdmAbonarCapital.Execute: Boolean;
const
  _SQL = 'SELECT Contratos.IdContrato, Contratos.IdPersona, Contratos.IdContratoTipo, Anexos.IdAnexo, ' +
'Contratos.Identificador AS Contrato, Anexos.Identificador AS Anexo, Personas.RazonSocial AS Cliente, Anexos.SaldoInsoluto ' +
'FROM Anexos ' +
'INNER JOIN Contratos ON Anexos.IdContrato = Contratos.IdContrato ' +
'INNER JOIN Personas ON Contratos.IdPersona = Personas.IdPersona ' +
'WHERE (Anexos.MontoVencido = 0) AND (Anexos.SaldoInsoluto > 0) ';

var
  frmAbonarCapitalEdit: TfrmAbonarCapitalEdit;
  IdTipoContrato: Integer;
begin
  Result:= False;
  adoqAnexosSel.Close;
  adoqAnexosSel.SQL.Text := _SQL;
  if IdAnexo <> 0 then
    adoqAnexosSel.SQL.Text := _SQL + Format('AND Anexos.IdAnexo= %d', [IdAnexo]);
  adoqAnexosSel.Open;
  frmAbonarCapitalEdit := TfrmAbonarCapitalEdit.Create(Self);
  try
    frmAbonarCapitalEdit.DataSet:= adoqAnexosSel;
    frmAbonarCapitalEdit.Fecha := Fecha;
    frmAbonarCapitalEdit.Importe := Importe;
    frmAbonarCapitalEdit.Tipo:= Ord(acReducirCuota);
    if frmAbonarCapitalEdit.Execute then
    begin
      IdAnexo := adoqAnexosSelIdAnexo.Value;
      IdTipoContrato := adoqAnexosSelIdContratoTipo.Value;
      Result := AbonarCapital(IdAnexo, IdTipoContrato, frmAbonarCapitalEdit.Fecha,
      frmAbonarCapitalEdit.Importe, TAbonoCapital(frmAbonarCapitalEdit.Tipo));
    end;
  finally
    frmAbonarCapitalEdit.Free;
    adoqAnexosSel.Close;
  end;
end;

procedure TdmAbonarCapital.SetFecha(const Value: TDateTime);
begin
  FFecha := Value;
end;

procedure TdmAbonarCapital.SetIdAnexo(const Value: Integer);
begin
  FIdAnexo := Value;
end;

procedure TdmAbonarCapital.SetIdCuentaXCobrar(const Value: Integer);
begin
  FIdCuentaXCobrar := Value;
end;

procedure TdmAbonarCapital.SetImporte(const Value: Extended);
begin
  FImporte := Value;
end;

procedure TdmAbonarCapital.SetPaymentTime(const Value: TPaymentTime);
begin
  FPaymentTime := Value;
end;

end.
