unit rptAntiguedadSaldosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, System.Actions,
  Vcl.ActnList, Data.Win.ADODB;

type
  TdmRptAntiguedadSaldos = class(T_dmStandar)
    adodsMasterIdCuentaXCobrar: TAutoIncField;
    adodsMasterFecha: TDateTimeField;
    adodsMasterIdPersona: TIntegerField;
    adodsMasterIdCuentaXCobrarEstatus: TIntegerField;
    adodsMasterTotal: TFMTBCDField;
    adodsMasterSaldo: TFMTBCDField;
    adodsMasterCliente: TStringField;
    adodsMasterVigentes: TFMTBCDField;
    adodsMasterVencidosa30d�as: TFMTBCDField;
    adodsMasterVencidosa60d�as: TFMTBCDField;
    adodsMasterVencidosa90d�as: TFMTBCDField;
    adodsMasterVencidosm�sde90d�as: TFMTBCDField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmRptAntiguedadSaldos: TdmRptAntiguedadSaldos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses rptAntiguedadSaldosForm;

{$R *.dfm}

procedure TdmRptAntiguedadSaldos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmrptantiguedadSaldos.Create(Self);
  gGridForm.DataSet:= adodsMaster;
  gGridForm.ReadOnlyGrid:= True;
end;

end.
