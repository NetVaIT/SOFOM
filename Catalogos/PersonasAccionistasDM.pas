unit PersonasAccionistasDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmPersonasAccionistas = class(T_dmStandar)
    adodsMasterIdPersonaAccionista: TAutoIncField;
    adodsMasterIdPersona: TIntegerField;
    adodsMasterIdAccionista: TIntegerField;
    adodsMasterPorcentaje: TBCDField;
    adodsPersonas: TADODataSet;
    adodsMasterAccionista: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses PersonasAccionistasForm;

{$R *.dfm}

procedure TdmPersonasAccionistas.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm := TfrmPersonasAccionistas.Create(Self);
  gGridForm.DataSet := adodsMaster;
end;

end.
