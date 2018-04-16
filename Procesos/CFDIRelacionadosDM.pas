unit CFDIRelacionadosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmCFDIRelacionados = class(T_dmStandar)
    adodsMasterIdCFDIRelacionado: TLargeintField;
    adodsMasterIDCFDI: TLargeintField;
    adodsMasterIDCFDIAsociado: TLargeintField;
    adodsMasterUUID: TStringField;
    adodsCFDIParaRelacionar: TADODataSet;
    adodsCFDIParaRelacionarIdCFDI: TLargeintField;
    adodsCFDIParaRelacionarFolio: TStringField;
    adodsCFDIParaRelacionarUUID: TStringField;
    adodsMasterCFDIAsociado: TStringField;
    procedure adodsMasterIDCFDIAsociadoChange(Sender: TField);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    FIdPersonaReceptor: Integer;
    procedure SetIdPersonaReceptor(const Value: Integer);
    property IdPersonaReceptor: Integer read FIdPersonaReceptor write SetIdPersonaReceptor;
  public
    { Public declarations }
    constructor CreateWPersona(AOwner: TComponent; IdPersona: Integer); virtual;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses CFDIRelacionadosForm;

{$R *.dfm}

procedure TdmCFDIRelacionados.adodsMasterIDCFDIAsociadoChange(Sender: TField);
begin
  inherited;
  if adodsMaster.State in [dsInsert, dsEdit] then
  begin
    adodsMasterUUID.AsString := adodsCFDIParaRelacionarUUID.AsString;
  end;
end;

constructor TdmCFDIRelacionados.CreateWPersona(AOwner: TComponent;
  IdPersona: Integer);
begin
  FIdPersonaReceptor:= IdPersona;
  inherited Create(AOwner);
end;

procedure TdmCFDIRelacionados.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmCFDIRelacionados.Create(Self);
  gGridForm.DataSet:= adodsMaster;
  adodsCFDIParaRelacionar.Parameters.ParamByName('IdPersonaReceptor').Value := IdPersonaReceptor;
end;

procedure TdmCFDIRelacionados.SetIdPersonaReceptor(const Value: Integer);
begin
  FIdPersonaReceptor := Value;
end;

end.
