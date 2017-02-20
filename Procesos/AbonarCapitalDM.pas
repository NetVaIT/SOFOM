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
    Action1: TAction;
    adoqAnexo: TADOQuery;
    adoqAnexoSaldoInsoluto: TFMTBCDField;
    adoqAnexoMontoVencido: TFMTBCDField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
  private
    { Private declarations }
    dmAmortizaciones: TdmAmortizaciones;
    frmAbonarCapitalEdit: TfrmAbonarCapitalEdit;
    FPaymentTime: TPaymentTime;
    FTipoContrato: TCTipoContrato;
    procedure SetPaymentTime(const Value: TPaymentTime);
    procedure SetTipoContrato(const Value: TCTipoContrato);
    property PaymentTime: TPaymentTime read FPaymentTime write SetPaymentTime;
  public
    { Public declarations }
    property TipoContrato: TCTipoContrato read FTipoContrato write SetTipoContrato;
    function Execute(IdAnexo: Integer): Boolean;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TdmAbonarCapital }

procedure TdmAbonarCapital.Action1Execute(Sender: TObject);
begin
  inherited;
  dmAmortizaciones.PaymentTime := PaymentTime;
  dmAmortizaciones.TipoContrato:= TipoContrato;
  dmAmortizaciones.SetAmortizaciones(frmAbonarCapitalEdit.IdAnexo, frmAbonarCapitalEdit.Importe, TAbonoCapital(frmAbonarCapitalEdit.Tipo) )
end;

procedure TdmAbonarCapital.DataModuleCreate(Sender: TObject);
begin
  inherited;
  PaymentTime := ptEndOfPeriod;
  dmAmortizaciones := TdmAmortizaciones.Create(Self);
  dmAmortizaciones.PaymentTime := PaymentTime;
  frmAbonarCapitalEdit := TfrmAbonarCapitalEdit.Create(Self);
end;

procedure TdmAbonarCapital.DataModuleDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(dmAmortizaciones);
  FreeAndNil(frmAbonarCapitalEdit);
end;

function TdmAbonarCapital.Execute(IdAnexo: Integer): Boolean;
var
//  frmAbonarCapitalEdit: TfrmAbonarCapitalEdit;
  SaldoInsoluto: Extended;
  MontoVencido: Extended;
begin
  Result:= False;
  // Obtene datos del Anexo
  adoqAnexo.Close;
  adoqAnexo.Parameters.ParamByName('IdAnexo').Value:= IdAnexo;
  adoqAnexo.Open;
  try
    SaldoInsoluto := adoqAnexoSaldoInsoluto.AsFloat;
    MontoVencido := adoqAnexoMontoVencido.AsFloat;
  finally
    adoqAnexo.Close;
  end;
  // Validar que no existan vencimiento
  if MontoVencido = 0 then
  begin
//    frmAbonarCapitalEdit := TfrmAbonarCapitalEdit.Create(Self);
    try
      frmAbonarCapitalEdit.SaldoInsoluto := SaldoInsoluto;
      frmAbonarCapitalEdit.MontoVencido := MontoVencido;
      frmAbonarCapitalEdit.Fecha := Date;
      frmAbonarCapitalEdit.Importe := 0;
      frmAbonarCapitalEdit.Tipo:= Ord(acReducirCuota);
      frmAbonarCapitalEdit.DataSet:= dmAmortizaciones.dxmAnexosAmortizaciones;
      frmAbonarCapitalEdit.actCD:= Action1;
      frmAbonarCapitalEdit.IdAnexo:= IdAnexo;
      frmAbonarCapitalEdit.Execute;
//      if frmAbonarCapitalEdit.Execute then
//      begin
//        dmAmortizaciones.SetAmortizaciones(IdAnexo, frmAbonarCapitalEdit.Importe, TAbonoCapital(frmAbonarCapitalEdit.Tipo) )
//      end;
    finally
//      frmAbonarCapitalEdit.Free;
    end;
  end
  else
  begin
    MessageDlg(Format(strMontoVencido, []), mtInformation, [mbOK], 0);
  end;
end;

procedure TdmAbonarCapital.SetPaymentTime(const Value: TPaymentTime);
begin
  FPaymentTime := Value;
end;

procedure TdmAbonarCapital.SetTipoContrato(const Value: TCTipoContrato);
begin
  FTipoContrato := Value;
end;

end.
