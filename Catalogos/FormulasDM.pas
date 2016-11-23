unit FormulasDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, Data.Win.ADODB;

type
  TdmFormulas = class(T_dmStandar)
    adodsMasterIdFormula: TIntegerField;
    adodsMasterIdentificador: TStringField;
    adodsMasterDescripcion: TStringField;
    adodsMasterFormula: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses FormulasForm;

{$R *.dfm}

procedure TdmFormulas.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmFormulas.Create(Self);
  gGridForm.DataSet:= adodsMaster;
end;

end.
