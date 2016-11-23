unit MarcasDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, System.Actions,
  Vcl.ActnList, Data.Win.ADODB;

type
  TdmMarcas = class(T_dmStandar)
    adodsMasterIdMarca: TAutoIncField;
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

uses MarcasForm;

{$R *.dfm}

procedure TdmMarcas.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmMarcas.Create(Self);
  gGridForm.DataSet:= adodsMaster;
end;

end.
