unit PersonasDomiciliosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, Data.Win.ADODB,
  System.Actions, Vcl.ActnList;

type
  TdmPersonasDomicilios = class(T_dmStandar)
    adodsDomiciliosTipos: TADODataSet;
    adodsMasterIdPersonaDomicilio: TIntegerField;
    adodsMasterIdPersona: TIntegerField;
    adodsMasterIdDomicilio: TIntegerField;
    adodsMasterIdDomicilioTipo: TIntegerField;
    adodsMasterPredeterminado: TBooleanField;
    adodsDomicilios: TADODataSet;
    adodsMasterTipo: TStringField;
    actUpdate: TAction;
    adodsDomiciliosIdDomicilio: TAutoIncField;
    adodsDomiciliosDomicilio: TStringField;
    adodsMasterDomicilio: TStringField;
    procedure adodsMasterNewRecord(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure actUpdateExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses PersonasDomiciliosForm, DomiciliosDM;

{$R *.dfm}

procedure TdmPersonasDomicilios.actUpdateExecute(Sender: TObject);
var
  dmDomicilios: TdmDomicilios;
  Id: Integer;
begin
  inherited;
  dmDomicilios:= TdmDomicilios.Create(nil);
  Id:= adodsMasterIdDomicilio.AsInteger;
  if Id  <> 0 then
  begin
    dmDomicilios.Edit(Id);
    adodsDomicilios.Requery();
//    adodsMasterDomicilio.RefreshLookupList;
  end
  else
  begin
    Id:= dmDomicilios.Add;
    if  Id <> 0 then
    begin
      adodsDomicilios.Requery();
//      adodsMasterDomicilio.RefreshLookupList;
      adodsMasterIdDomicilio.AsInteger:= Id;
    end;
  end;
  dmDomicilios.Free;
end;

procedure TdmPersonasDomicilios.adodsMasterNewRecord(DataSet: TDataSet);
begin
  inherited;
  adodsMasterPredeterminado.Value:= False;
end;

procedure TdmPersonasDomicilios.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmPersonasDomicilios.Create(Self);
  gGridForm.DataSet:= adodsMaster;
  TfrmPersonasDomicilios(gGridForm).UpdateDomicilio:= actUpdate;
end;

end.

