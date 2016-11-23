unit EsquemaPagosPersonasDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmEsquemaPagosPersonas = class(T_dmStandar)
    adodsMasterIdEsquemaPagoPersona: TAutoIncField;
    adodsMasterIdPersona: TIntegerField;
    adodsMasterIdEquemaPago: TIntegerField;
    adodsMasterIdCuentaBancaria: TIntegerField;
    adodsPersonas: TADODataSet;
    adodsCuentaBacarias: TADODataSet;
    adodsMasterPersona: TStringField;
    adodsMasterCuentaBancaria: TStringField;
    adodsCuentaBacariasLkp: TADODataSet;
    procedure DataModuleCreate(Sender: TObject);
    procedure adodsMasterIdPersonaChange(Sender: TField);
    procedure adodsMasterAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
    procedure OpenCuentaBacariasLkp;
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses EsquemaPagosPersonasForm;

{$R *.dfm}

procedure TdmEsquemaPagosPersonas.adodsMasterAfterScroll(DataSet: TDataSet);
begin
  inherited;
  OpenCuentaBacariasLkp
end;

procedure TdmEsquemaPagosPersonas.adodsMasterIdPersonaChange(Sender: TField);
begin
  inherited;
  adodsMasterIdCuentaBancaria.Clear;
  OpenCuentaBacariasLkp
end;

procedure TdmEsquemaPagosPersonas.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmEsquemaPagosPersonas.Create(Self);
  gGridForm.DataSet:= adodsMaster;
  TfrmEsquemaPagosPersonas(gGridForm).DataSetCuentasBancarias:= adodsCuentaBacariasLkp;
end;

procedure TdmEsquemaPagosPersonas.OpenCuentaBacariasLkp;
begin
  adodsCuentaBacariasLkp.Close;
  adodsCuentaBacariasLkp.Parameters.ParamByName('IdPersona').Value:= adodsMasterIdPersona.Value;
  adodsCuentaBacariasLkp.Open;
end;

end.
