unit ContratosDocumentosDM;

interface

uses
  System.SysUtils, System.Classes, _DualListDM, System.Actions, Vcl.ActnList,
  Data.Win.ADODB, Data.DB;

type
  TdmContratosDocumentos = class(T_dmDualList)
    adoqAvailableIdPersonaDocumento: TAutoIncField;
    adoqAvailableIdPersona: TIntegerField;
    adoqAvailableIdDocumento: TIntegerField;
    adoqAvailableDescripcion: TStringField;
    adoqAvailableRazonSocial: TStringField;
    adoqAvailableFechaEmision: TDateTimeField;
    adoqAssignedIdPersonaDocumento: TAutoIncField;
    adoqAssignedIdPersona: TIntegerField;
    adoqAssignedIdDocumento: TIntegerField;
    adoqAssignedDescripcion: TStringField;
    adoqAssignedRazonSocial: TStringField;
    adoqAssignedFechaEmision: TDateTimeField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    FIdPersona: Integer;
    procedure SetIdPersona(const Value: Integer);
  public
    { Public declarations }
    property IdPersona: Integer read FIdPersona write SetIdPersona;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses ContratosDocumentosForm;

{$R *.dfm}

procedure TdmContratosDocumentos.DataModuleCreate(Sender: TObject);
begin
  IdFieldName1:= 'IdContrato';
  IdFieldName2:= 'IdPersonaDocumento';
  gGridForm:= TfrmContratosDocumentos.Create(Self);
  inherited;
end;

procedure TdmContratosDocumentos.SetIdPersona(const Value: Integer);
begin
  if FIdPersona <> Value then
  begin
    FIdPersona := Value;
    adoqAvailable.Close;
    adoqAvailable.Parameters.ParamByName('IdPersona1').Value := FIdPersona;
    adoqAvailable.Parameters.ParamByName('IdPersona2').Value := FIdPersona;
    adoqAvailable.Open;
    adoqAssigned.Close;
    adoqAssigned.Parameters.ParamByName('IdPersona1').Value := FIdPersona;
    adoqAssigned.Parameters.ParamByName('IdPersona2').Value := FIdPersona;
    adoqAssigned.Open;
  end;
end;

end.
