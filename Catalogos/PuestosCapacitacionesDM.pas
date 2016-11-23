unit PuestosCapacitacionesDM;

interface

uses
  System.SysUtils, System.Classes, _DualListDM, System.Actions, Vcl.ActnList,
  Data.Win.ADODB, Data.DB;

type
  TdmPuestosCapacitaciones = class(T_dmDualList)
    adoqAvailableIdBateriaCapacitacion: TAutoIncField;
    adoqAvailableDescripcion: TStringField;
    adoqAssignedIdBateriaCapacitacion: TAutoIncField;
    adoqAssignedDescripcion: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses PuestosCapacitacionesForm;

{$R *.dfm}

procedure TdmPuestosCapacitaciones.DataModuleCreate(Sender: TObject);
begin
  IdFieldName1:= 'IdPuesto';
  IdFieldName2:= 'IdBateriaCapacitacion';
  gGridForm:= TfrmPuestosCapacitaciones.Create(Self);
  inherited;
end;

end.
