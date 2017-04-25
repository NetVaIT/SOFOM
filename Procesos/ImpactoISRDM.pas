unit ImpactoISRDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB, dxmdaset, System.Math, ProcesosType, AmortizacionesDM;

type
  TdmImpactoISR = class(T_dmStandar)
    dxmdDepreciacion: TdxMemData;
    dxmdDepreciacionMeses: TIntegerField;
    dxmdDepreciacionCapitalTotal: TFloatField;
    dxmdDepreciacionFiscal: TFloatField;
    dxmdDepreciacionFinanciera: TFloatField;
    dxmdDepreciacionDiferencia: TFloatField;
    dxmdDepreciacionISR: TFloatField;
    dxmdDepreciacionKe: TFloatField;
    actImpactoISR: TAction;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
    dmAmortizaciones: TdmAmortizaciones;
    FPorcentajeKe: Currency;
    FPorcentajeISR: Currency;
    FPorcentajeDepreciacion: Currency;
    procedure SetPorcentajeDepreciacion(const Value: Currency);
    procedure SetPorcentajeISR(const Value: Currency);
    procedure SetPorcentajeKe(const Value: Currency);
    function GetImpactoISR(FechaVencimiento: TDateTime; TasaAnual: Currency;
      Plazo: Integer; PrecioTotal, EngancheTotal, ValorPresente,
      ValorFuturo: Extended): Extended;
  public
    { Public declarations }
    property PorcentajeDepreciacion: Currency read FPorcentajeDepreciacion write SetPorcentajeDepreciacion;
    property PorcentajeISR: Currency read FPorcentajeISR write SetPorcentajeISR;
    property PorcentajeKe: Currency read FPorcentajeKe write SetPorcentajeKe;
    function Execute(FechaVencimiento: TDateTime; TasaAnual: Currency;
      Plazo: Integer; PrecioTotal, EngancheTotal, ValorPresente,
      ValorFuturo: Extended; var ImpactoISR: Extended): Boolean;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses ImpactoISREdit;

{$R *.dfm}

{ TdmImpactoISR }

procedure TdmImpactoISR.DataModuleCreate(Sender: TObject);
begin
  inherited;
  dmAmortizaciones:= TdmAmortizaciones.Create(Self);
end;

procedure TdmImpactoISR.DataModuleDestroy(Sender: TObject);
begin
  inherited;
  dmAmortizaciones.Free;
end;

function TdmImpactoISR.Execute(FechaVencimiento: TDateTime; TasaAnual: Currency;
  Plazo: Integer; PrecioTotal, EngancheTotal, ValorPresente, ValorFuturo: Extended;
  var ImpactoISR: Extended): Boolean;
var
  frmImpactoISREdit: TfrmImpactoISREdit;
begin
  frmImpactoISREdit := TfrmImpactoISREdit.Create(Self);
  try
    frmImpactoISREdit.DataSet := dxmdDepreciacion;
    frmImpactoISREdit.FechaVencimiento := FechaVencimiento;
    frmImpactoISREdit.PorcentajeDepreciacion := PorcentajeDepreciacion;
    frmImpactoISREdit.ImpactoISR := GetImpactoISR(FechaVencimiento, TasaAnual,
    Plazo, PrecioTotal, EngancheTotal, ValorPresente, ValorFuturo);
    TfrmImpactoISREdit(frmImpactoISREdit).actImpactoISR := actImpactoISR;
    if frmImpactoISREdit.Execute then
    begin
      ImpactoISR := frmImpactoISREdit.ImpactoISR;
      Result:= True;
    end
    else
    begin
      ImpactoISR := 0;
      Result:= False;
    end;
  finally
    frmImpactoISREdit.Free;
  end;
end;

function TdmImpactoISR.GetImpactoISR(FechaVencimiento: TDateTime;
  TasaAnual: Currency; Plazo: Integer; PrecioTotal,
  EngancheTotal, ValorPresente, ValorFuturo: Extended): Extended;
var
  I: Integer;
  Precio, Enganche, TotalKe: Extended;
  FactorIVA, FactorDepreciacion: Extended;
  CapitalMeses: TCapitalMeses;
begin
  dmAmortizaciones.GetCapitalAnual(FechaVencimiento, TasaAnual, Plazo, ValorPresente, ValorFuturo, CapitalMeses);
  dxmdDepreciacion.Open;
  for I := 0 to Length(CapitalMeses)-1 do
  begin
    dxmdDepreciacion.Append;
    dxmdDepreciacionMeses.Value := CapitalMeses[I].Meses;
    dxmdDepreciacionCapitalTotal.Value := CapitalMeses[I].CapitalTotal;
    dxmdDepreciacion.Post;
  end;
  TotalKe:= 0;
  FactorIVA := (1+(_IMPUESTOS_IVA/100));
  Precio := PrecioTotal / FactorIVA;
  Enganche := EngancheTotal / FactorIVA;
  dxmdDepreciacion.First;
  while not dxmdDepreciacion.Eof do
  begin
    FactorDepreciacion:= (PorcentajeDepreciacion/100/12)*dxmdDepreciacionMeses.Value;
    dxmdDepreciacion.Edit;
    dxmdDepreciacionFiscal.Value := Precio*FactorDepreciacion;
    if dxmdDepreciacion.RecNo = 1 then
      dxmdDepreciacionFinanciera.Value := Enganche + (dxmdDepreciacionCapitalTotal.Value / FactorIVA)
    else
      dxmdDepreciacionFinanciera.Value := dxmdDepreciacionCapitalTotal.Value / FactorIVA;
    dxmdDepreciacionDiferencia.Value := dxmdDepreciacionFinanciera.Value - dxmdDepreciacionFiscal.Value;
    dxmdDepreciacionISR.Value := dxmdDepreciacionDiferencia.Value * (PorcentajeISR/100);
    dxmdDepreciacionKe.Value := dxmdDepreciacionISR.Value * (PorcentajeKe/100);
    if Sign(dxmdDepreciacionKe.Value) = 1 then
      TotalKe := TotalKe + dxmdDepreciacionKe.Value;
    dxmdDepreciacion.Post;
    dxmdDepreciacion.Next;
  end;
  if Plazo < 1 then
    Result := 0
  else
    Result := (TotalKe/Plazo)*FactorIVA;
end;

procedure TdmImpactoISR.SetPorcentajeDepreciacion(const Value: Currency);
begin
  FPorcentajeDepreciacion := Value;
end;

procedure TdmImpactoISR.SetPorcentajeISR(const Value: Currency);
begin
  FPorcentajeISR := Value;
end;

procedure TdmImpactoISR.SetPorcentajeKe(const Value: Currency);
begin
  FPorcentajeKe := Value;
end;

end.
