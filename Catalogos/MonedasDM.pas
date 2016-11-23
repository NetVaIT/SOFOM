unit MonedasDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, Data.Win.ADODB,
  System.Actions, Vcl.ActnList;

type
  TdmMonedas = class(T_dmStandar)
    adodsMasterIdentificador: TStringField;
    adodsMasterDescripcion: TStringField;
    adodsMasterIdMoneda: TIntegerField;
    adodsMasterIdPais: TIntegerField;
    adodsPais: TADODataSet;
    adodsMasterPais: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses MonedasForm;

{$R *.dfm}

procedure TdmMonedas.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmMonedas.Create(Self);
  gGridForm.DataSet:= adodsMaster;
end;

end.
