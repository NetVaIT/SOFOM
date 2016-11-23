unit EsquemaPagosMovimientosTiposDM;

interface

uses
  System.SysUtils, System.Classes, _DualListDM, System.Actions, Vcl.ActnList,
  Data.Win.ADODB, Data.DB;

type
  TdmEsquemaPagosMovimientosTipos = class(T_dmDualList)
    adoqAssignedIdMovimientoTipo: TAutoIncField;
    adoqAssignedDescripcion: TStringField;
    adoqAvailableIdMovimientoTipo: TAutoIncField;
    adoqAvailableIdentificador: TStringField;
    adoqAvailableDescripcion: TStringField;
    adoqAvailableCategoria: TStringField;
    adoqAvailableEfecto: TStringField;
    adoqAvailableProduceCXC: TBooleanField;
    adoqAvailableProduceCXP: TBooleanField;
    adoqAssignedIdentificador: TStringField;
    adoqAssignedCategoria: TStringField;
    adoqAssignedEfecto: TStringField;
    adoqAssignedProduceCXC: TBooleanField;
    adoqAssignedProduceCXP: TBooleanField;
    procedure DataModuleCreate(Sender: TObject);
    procedure actViewAviableExecute(Sender: TObject);
    procedure actViewAssignedExecute(Sender: TObject);
  private
    { Private declarations }
    procedure ViewMovimientos(Id: Integer);
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses EsquemaPagosMovimientosTiposForm, MovimientosTiposDM;

{$R *.dfm}

procedure TdmEsquemaPagosMovimientosTipos.actViewAssignedExecute(
  Sender: TObject);
var
  Id: Integer;
begin
  inherited;
  Id:= adoqAssignedIdMovimientoTipo.Value;
  ViewMovimientos(Id);
end;

procedure TdmEsquemaPagosMovimientosTipos.actViewAviableExecute(
  Sender: TObject);
var
  Id: Integer;
begin
  inherited;
  Id:= adoqAvailableIdMovimientoTipo.Value;
  ViewMovimientos(Id);
end;

procedure TdmEsquemaPagosMovimientosTipos.DataModuleCreate(Sender: TObject);
begin
  IdFieldName1:= 'IdEsquemaPago';
  IdFieldName2:= 'IdMovimientoTipo';
  gGridForm:= TfrmEsquemaPagosMovimientosTipos.Create(Self);
  inherited;
end;

procedure TdmEsquemaPagosMovimientosTipos.ViewMovimientos(Id: Integer);
var
  dmMovimientosTipo: TdmMovimientosTipo;
begin
  dmMovimientosTipo := TdmMovimientosTipo.Create(Self);
  try
    dmMovimientosTipo.View(Id);
  finally
    dmMovimientosTipo.Free;
  end;
end;

end.
