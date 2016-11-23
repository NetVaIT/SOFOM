unit Monedas2DM;

interface

uses
  System.SysUtils, System.Classes, _ProviderDMod, Datasnap.DBClient,
  Datasnap.Provider, Data.DB, Data.Win.ADODB;

type
  TdmMonedas2 = class(T_dmProvider)
    adodsPais: TADODataSet;
    cdsMasterIdMoneda: TAutoIncField;
    cdsMasterIdPais: TIntegerField;
    cdsMasterIdentificador: TStringField;
    cdsMasterDescripcion: TStringField;
    cdsMasterPais: TStringField;
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

procedure TdmMonedas2.DataModuleCreate(Sender: TObject);
begin
  inherited;
  adodsPais.Open;
  gGridForm:= TfrmMonedas.Create(Self);
  gGridForm.DataSet:= cdsMaster;
end;

end.
