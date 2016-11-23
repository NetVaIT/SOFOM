unit PersonasRolesCXCConceptosDM;

interface

uses
  System.SysUtils, System.Classes, _DualListDM, System.Actions, Vcl.ActnList,
  Data.Win.ADODB, Data.DB;

type
  TdmPersonaRolesCXCConceptos = class(T_dmDualList)
    adoqAvailableIdCuentaXCobrarConcepto: TAutoIncField;
    adoqAvailableDescripcion: TStringField;
    adoqAssignedIdCuentaXCobrarConcepto: TAutoIncField;
    adoqAssignedDescripcion: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses PersonasRolesCXCConceptosForm, CuentasXCobrarConceptosDM;

{$R *.dfm}

procedure TdmPersonaRolesCXCConceptos.DataModuleCreate(Sender: TObject);
begin
  IdFieldName1:= 'IdPersonaRol';
  IdFieldName2:= 'IdCuentaXCobrarConcepto';
  gGridForm := TfrmPersonasRolesCXCConceptos.Create(Self);
  inherited;
end;

end.
