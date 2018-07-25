unit PersonasAccionistasDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB, PersonasDM;

type
  TdmPersonasAccionistas = class(T_dmStandar)
    adodsMasterIdPersonaAccionista: TAutoIncField;
    adodsMasterIdPersona: TIntegerField;
    adodsMasterIdAccionista: TIntegerField;
    adodsMasterPorcentaje: TBCDField;
    adodsPersonas: TADODataSet;
    adodsMasterAccionista: TStringField;
    adodsMasterCargo: TStringField;
    adodsMasterNivelControl1: TBooleanField;
    adodsMasterNivelControl2: TBooleanField;
    adodsMasterNivelControl3: TBooleanField;
    adodsMasterNivelControl4: TBooleanField;
    adodsMasterNivelControl5: TBooleanField;
    dsMaster: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
    procedure dsMasterDataChange(Sender: TObject; Field: TField);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
    dmPersonas: TdmPersonas;
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses PersonasAccionistasForm, PersonasDocumentosForm;

{$R *.dfm}

procedure TdmPersonasAccionistas.DataModuleCreate(Sender: TObject);
begin
  inherited;
  dmPersonas := TdmPersonas.CreateWId(Self,-1);
  gGridForm := TfrmPersonasAccionistas.Create(Self);
  gGridForm.DataSet := adodsMaster;
  TfrmPersonasAccionistas(gGridForm).actAccionistas := dmPersonas.actAccionistas;
  TfrmPersonasAccionistas(gGridForm).actAdminostradores := dmPersonas.actAdministradores;
end;

procedure TdmPersonasAccionistas.DataModuleDestroy(Sender: TObject);
begin
  inherited;
  dmPersonas.Free;
end;

procedure TdmPersonasAccionistas.dsMasterDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  dmPersonas.IdPersona := adodsMasterIdAccionista.Value;
end;

end.
