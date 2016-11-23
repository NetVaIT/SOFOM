unit FamiliasDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmFamilias = class(T_dmStandar)
    adodsMasterIdFamila: TAutoIncField;
    adodsMasterIdentificador: TStringField;
    adodsMasterDescripcion: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses FamiliasForm;

{$R *.dfm}

procedure TdmFamilias.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmFamilias.Create(Self);
  gGridForm.DataSet:= adodsMaster;
end;

end.
