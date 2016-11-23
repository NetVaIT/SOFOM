unit CuentasXCobrarConceptosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmCuentasXCobrarConceptos = class(T_dmStandar)
    adodsMasterIdCuentaXCobrarConcepto: TAutoIncField;
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

uses CuentasXCobrarConceptosForm;

{$R *.dfm}

procedure TdmCuentasXCobrarConceptos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmCuentasXCobrarConceptos.Create(Self);
  gGridForm.DataSet:= adodsMaster;
end;

end.
