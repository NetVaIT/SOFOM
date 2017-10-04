unit AbonarCapitalDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB, ProcesosType, Vcl.Dialogs, System.UITypes, System.Math,
  AbonarCapitalEdit, AmortizacionesDM;

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
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
    frmAbonarCapitalEdit: TfrmAbonarCapitalEdit;
    FPaymentTime: TPaymentTime;
    FIdAnexo: integer;
    FImporteAct: integer;
    FFechaAct: TDateTime;
    procedure SetPaymentTime(const Value: TPaymentTime);
    function AbonarCapital(IdAnexo, IdTipoContrato: Integer; Fecha: TDateTime; Importe: Extended;
    Tipo: TAbonoCapital): Boolean;
    procedure SetFFechaAct(const Value: TDateTime);
    procedure SetFIdAnexo(const Value: integer);
    procedure SetFImporteAct(const Value: integer);
    property PaymentTime: TPaymentTime read FPaymentTime write SetPaymentTime;
  public
    { Public declarations }
    function Execute: Boolean;
    property idAnexoAct: integer read  FIdAnexo write  SetFIdAnexo; //Abr 17/17
    property FechaAct: TDateTime read  FFechaAct write  SetFFechaAct; //Abr 17/17
    property ImporteAct: integer read  FImporteAct write  SetFImporteAct; //Abr 17/17
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TdmAbonarCapital }

function TdmAbonarCapital.AbonarCapital(IdAnexo, IdTipoContrato: Integer; Fecha: TDateTime;
  Importe: Extended; Tipo: TAbonoCapital): Boolean;
var
  dmAmortizaciones: TdmAmortizaciones;
  IdCuentaXCobrar: Integer;
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
  frmAbonarCapitalEdit := TfrmAbonarCapitalEdit.Create(Self);
end;

procedure TdmAbonarCapital.DataModuleDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(frmAbonarCapitalEdit);
end;

function TdmAbonarCapital.Execute: Boolean;
var
  frmAbonarCapitalEdit: TfrmAbonarCapitalEdit;
  IdAnexo: Integer;
  IdTipoContrato: Integer;
begin
  Result:= False;
  adoqAnexosSel.Parameters.ParamByName('IdAnexo').Value:= IdanexoAct;    //Abr 17/17
  adoqAnexosSel.Open;
  frmAbonarCapitalEdit := TfrmAbonarCapitalEdit.Create(Self);
  try
    frmAbonarCapitalEdit.DataSet:= adoqAnexosSel;
    frmAbonarCapitalEdit.Fecha := FechaAct; //Date;  //Abr 17/17
    frmAbonarCapitalEdit.Importe := Importeact; //0;  //Abr 17/17
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

procedure TdmAbonarCapital.SetFFechaAct(const Value: TDateTime);
begin
  FFechaAct := Value;
end;

procedure TdmAbonarCapital.SetFIdAnexo(const Value: integer);
begin
  FIdAnexo := Value;
end;

procedure TdmAbonarCapital.SetFImporteAct(const Value: integer);
begin
  FImporteAct := Value;
end;

procedure TdmAbonarCapital.SetPaymentTime(const Value: TPaymentTime);
begin
  FPaymentTime := Value;
end;

end.
