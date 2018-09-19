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
    FIdCFDITipoDocumento: Integer;
    FSoloLectura: Boolean;
    procedure SetIdPersonaReceptor(const Value: Integer);
    procedure SetSoloLectura(const Value: Boolean);
    procedure SetIdCFDITipoDocumento(const Value: Integer);
    property IdPersonaReceptor: Integer read FIdPersonaReceptor write SetIdPersonaReceptor;
    property IdCFDITipoDocumento: Integer read FIdCFDITipoDocumento write SetIdCFDITipoDocumento;
    property SoloLectura: Boolean read FSoloLectura write SetSoloLectura;
  public
    { Public declarations }
    constructor CreateWith(AOwner: TComponent; IdPersona,IdCFDITipoDocumento: Integer;
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
  IdPersona,IdCFDITipoDocumento: Integer; SoloLectura: Boolean);
begin
  FIdPersonaReceptor:= IdPersona;
  FIdCFDITipoDocumento:= IdCFDITipoDocumento;
  FSoloLectura := SoloLectura;
  inherited Create(AOwner);
end;

procedure TdmCFDIRelacionados.DataModuleCreate(Sender: TObject);
var
   IdEstatusCon:Integer;  //SEp 19/18
   IdTipoDocConsulta:Integer;
begin
  inherited;
  gGridForm:= TfrmCFDIRelacionados.Create(Self);
  gGridForm.DataSet:= adodsMaster;
  gGridForm.ReadOnlyGrid:= SoloLectura;

  IdTipoDocConsulta:=IdCFDITipoDocumento; // //SEp 19/18porque para Notas de credito se relaciona  con FActuras y no con notas de Credito
  if IdCFDITipoDocumento =2 then //Nota credito  //SEp 19/18
  begin
    IdEstatusCon:=2;  //Vigentes
    IdTipoDocConsulta:=1; //Solo FActuras  ??
  end
  else
    IdEstatusCon:=3; //Cancelados para facturas y para pagos

  adodsCFDIParaRelacionar.Parameters.ParamByName('IdCFDIEstatus').Value := IdEstatusCon;  //SEp 19/18
  adodsCFDIParaRelacionar.Parameters.ParamByName('IdPersonaReceptor').Value := IdPersonaReceptor;
  adodsCFDIParaRelacionar.Parameters.ParamByName('IdCFDITipoDocumento').Value := IdTipoDocConsulta; // sept 19/18 IdCFDITipoDocumento;
end;

procedure TdmCFDIRelacionados.SetIdCFDITipoDocumento(const Value: Integer);
begin
  FIdCFDITipoDocumento := Value;
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
