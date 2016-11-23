unit CuentasInternasDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmCuentasInternas = class(T_dmStandar)
    adodsPersona: TADODataSet;
    adodsCuentaInternaPadre: TADODataSet;
    adodsMasterIdCuentaInterna: TAutoIncField;
    adodsMasterIdPersona: TIntegerField;
    adodsMasterCuentaInterna: TStringField;
    adodsMasterDescripcion: TStringField;
    adodsMasterIdCuentaInternaPadre: TIntegerField;
    adodsMasterPersona: TStringField;
    adodsMasterCuentaInternaPadre: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses CuentasInternasForm;

{$R *.dfm}

procedure TdmCuentasInternas.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmCuentasInternas.Create(Self);
  gGridForm.DataSet:= adodsMaster;
end;

end.
