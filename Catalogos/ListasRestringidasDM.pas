unit ListasRestringidasDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, System.Actions,
  Vcl.ActnList, Data.Win.ADODB;

type
  TdmListasRestringidas = class(T_dmStandar)
    adodsMasterIdListaRestringida: TAutoIncField;
    adodsMasterIdOrganismo: TIntegerField;
    adodsMasterIdPais: TIntegerField;
    adodsMasterIdEstatus: TIntegerField;
    adodsMasterIdentificador: TStringField;
    adodsMasterNombre: TStringField;
    adodsMasterAlias: TStringField;
    adodsOrganismos: TADODataSet;
    adodsPaises: TADODataSet;
    adodsMasterOrganismo: TStringField;
    adodsMasterPais: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses ListasRestringidasForm;

{$R *.dfm}

procedure TdmListasRestringidas.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm := TfrmListasRestringidas.Create(Self);
  gGridForm.DataSet := adodsMaster;
end;

end.
