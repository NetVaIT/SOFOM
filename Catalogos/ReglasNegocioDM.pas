unit ReglasNegocioDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, Data.Win.ADODB,
  System.Actions, Vcl.ActnList;

type
  TdmReglasNegocio = class(T_dmStandar)
    ADODataSet1: TADODataSet;
    adodsReglaNegocioTipo: TADODataSet;
    adodsMasterIdReglaNegocio: TIntegerField;
    adodsMasterIdentificador: TStringField;
    adodsMasterDescripcion: TStringField;
    adodsMasterIdReglaNegocioTipo: TIntegerField;
    adodsMasterReglaNegocioTipo: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmReglasNegocio: TdmReglasNegocio;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses ReglasNegocioForm;

{$R *.dfm}

procedure TdmReglasNegocio.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmReglasNegocio.Create(Self);
  gGridForm.DataSet:= adodsMaster;
end;

end.
