unit CuentasContablesNaturalezaDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmCuentasContablesNaturaleza = class(T_dmStandar)
    adodsMasterIdCuentaContableNaturaleza: TAutoIncField;
    adodsMasterIdentificador: TStringField;
    adodsMasterDescripcion: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses CuentasContablesNaturalezaForm;

{$R *.dfm}

procedure TdmCuentasContablesNaturaleza.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm := TfrmCuentasContablesNaturaleza.Create(Self);
  gGridForm.DataSet := adodsMaster;
end;

end.
