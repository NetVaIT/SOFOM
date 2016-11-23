unit RegimenFiscalDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, Data.Win.ADODB;

type
  TdmRegimenFiscal = class(T_dmStandar)
    adodsMasterIdentificador: TStringField;
    adodsMasterDescripcion: TStringField;
    adodsMasterIdRegimenFiscal: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses RegimenFiscalesForm;

{$R *.dfm}

procedure TdmRegimenFiscal.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmRegimenFiscales.Create(Self);
  gGridForm.DataSet:= adodsMaster;
end;

end.
