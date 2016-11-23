unit EsquemaPagosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, Data.Win.ADODB,
  System.Actions, Vcl.ActnList;

type
  TdmEsquemaPagos = class(T_dmStandar)
    adodsMasterIdEsquemaPago: TIntegerField;
    adodsMasterIdentificador: TStringField;
    adodsMasterDescripcion: TStringField;
    adodsMasterIdEsquemaPagoEstatus: TIntegerField;
    adodsEsquemaPagoEstatus: TADODataSet;
    adodsMasterEsquemaPagoEstatus: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses EsquemaPagosForm;

{$R *.dfm}

procedure TdmEsquemaPagos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmEsquemaPagos.Create(Self);
  gGridForm.DataSet:= adodsMaster;
end;

end.
