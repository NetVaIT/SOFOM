unit EstablecimientosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, Data.Win.ADODB,
  System.Actions, Vcl.ActnList;

type
  TdmEstablecimientos = class(T_dmStandar)
    adodsMasterIdEstablecimiento: TIntegerField;
    adodsMasterIdentificador: TStringField;
    adodsMasterDescripcion: TStringField;
    adodsMasterIdDomicilio: TIntegerField;
    adodsDomicilios: TADODataSet;
    adodsDomiciliosIdDomicilio: TAutoIncField;
    adodsDomiciliosDomicilio: TStringField;
    adodsMasterDomicilio: TStringField;
    actUpdate: TAction;
    adodsUbicacion: TADODataSet;
    adodsUbicacionIdUbicacion: TAutoIncField;
    adodsUbicacionIdEstablecimiento: TIntegerField;
    adodsUbicacionIdentificador: TStringField;
    adodsUbicacionDescripcion: TStringField;
    adodsUbicacionIdUbicacionSuperior: TIntegerField;
    adodsUbicacionSuperior: TADODataSet;
    dsMaster: TDataSource;
    adodsUbicacionUbicacionSuperior: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure actUpdateExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses EstablecimientosForm, DomiciliosDM, UbicacionesForm;

{$R *.dfm}

procedure TdmEstablecimientos.actUpdateExecute(Sender: TObject);
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
  end
  else
  begin
    Id:= dmDomicilios.Add;
    if  Id <> 0 then
    begin
      adodsDomicilios.Requery();
      adodsMasterIdDomicilio.AsInteger:= Id;
    end;
  end;
  dmDomicilios.Free;
end;

procedure TdmEstablecimientos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmEstablecimientos.Create(Self);
  gGridForm.DataSet:= adodsMaster;
  TfrmEstablecimientos(gGridForm).UpdateDomicilio:= actUpdate;
  gFormDeatil1 := TfrmUbicaciones.Create(Self);
  gFormDeatil1.DataSet := adodsUbicacion;
  adodsUbicacion.Open;
end;

end.
