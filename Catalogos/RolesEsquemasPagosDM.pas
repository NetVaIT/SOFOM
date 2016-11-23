unit RolesEsquemasPagosDM;

interface

uses
  System.SysUtils, System.Classes, _DualListDM, System.Actions, Vcl.ActnList,
  Data.Win.ADODB, Data.DB;

type
  TdmRolesEsquemasPagos = class(T_dmDualList)
    adoqAvailableIdEsquemaPago: TIntegerField;
    adoqAvailableDescripcion: TStringField;
    adoqAssignedIdEsquemaPago: TIntegerField;
    adoqAssignedDescripcion: TStringField;
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

uses RolesEsquemasPagosForm, EsquemaPagosMovimientosTiposDM;

{$R *.dfm}

procedure TdmRolesEsquemasPagos.actViewAssignedExecute(Sender: TObject);
var
  Id: Integer;
begin
  inherited;
  Id:= adoqAssignedIdEsquemaPago.Value;
  ViewMovimientos(Id)
end;

procedure TdmRolesEsquemasPagos.actViewAviableExecute(Sender: TObject);
var
  Id: Integer;
begin
  inherited;
  Id:= adoqAvailableIdEsquemaPago.Value;
  ViewMovimientos(Id)
end;

procedure TdmRolesEsquemasPagos.DataModuleCreate(Sender: TObject);
begin
  IdFieldName1:= 'IdRol';
  IdFieldName2:= 'IdEsquemaPago';
  gGridForm:= TfrmRolesEsquemasPagos.Create(Self);
  inherited;
end;

procedure TdmRolesEsquemasPagos.ViewMovimientos(Id: Integer);
var
  dmMovimientos: TdmEsquemaPagosMovimientosTipos;
begin
  inherited;
  dmMovimientos := TdmEsquemaPagosMovimientosTipos.Create(Self);
  try
    dmMovimientos.ViewAssigned(Id);
  finally
    dmMovimientos.Free;
  end;
end;

end.
