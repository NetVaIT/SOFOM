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
    FSoloLectura: Boolean;
    procedure SetIdPersonaReceptor(const Value: Integer);
    procedure SetSoloLectura(const Value: Boolean);
    property IdPersonaReceptor: Integer read FIdPersonaReceptor write SetIdPersonaReceptor;
    property SoloLectura: Boolean read FSoloLectura write SetSoloLectura;
  public
    { Public declarations }
    constructor CreateWith(AOwner: TComponent; IdPersona: Integer;
      SoloLectura: Boolean);
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

constructor TdmCFDIRelacionados.CreateWith(AOwner: TComponent;
  IdPersona: Integer; SoloLectura: Boolean);
begin
  FIdPersonaReceptor:= IdPersona;
  FSoloLectura := SoloLectura;
  inherited Create(AOwner);
end;

procedure TdmCFDIRelacionados.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmCFDIRelacionados.Create(Self);
  gGridForm.DataSet:= adodsMaster;
  gGridForm.ReadOnlyGrid:= SoloLectura;
  adodsCFDIParaRelacionar.Parameters.ParamByName('IdPersonaReceptor').Value := IdPersonaReceptor;
end;

procedure TdmCFDIRelacionados.SetIdPersonaReceptor(const Value: Integer);
begin
  FIdPersonaReceptor := Value;
end;

procedure TdmCFDIRelacionados.SetSoloLectura(const Value: Boolean);
begin
  FSoloLectura := Value;
end;

end.
