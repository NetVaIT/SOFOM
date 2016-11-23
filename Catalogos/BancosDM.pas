unit BancosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, Data.Win.ADODB,
  System.Actions, Vcl.ActnList;

type
  TdmBancos = class(T_dmStandar)
    adodsMasterIdentificador: TStringField;
    adodsMasterNombre: TStringField;
    adodsMasterDescripcion: TStringField;
    adodsMasterSiglas: TStringField;
    adodsMasterIdBanco: TAutoIncField;
    adodsMasterIdPaisBanco: TIntegerField;
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

uses BancosForm;

{$R *.dfm}

procedure TdmBancos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmBancos.Create(Self);
  gGridForm.DataSet:= adodsMaster;
end;

end.
