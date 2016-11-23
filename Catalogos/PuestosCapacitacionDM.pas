unit PuestosCapacitacionDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, Data.Win.ADODB;

type
  TdmPuestosCapacitacion = class(T_dmStandar)
    adodsMasterIdPuestoCapacitacion: TAutoIncField;
    adodsMasterIdPuesto: TIntegerField;
    adodsMasterIdBateriaCapacitacion: TIntegerField;
    adodsBateriaCapacitacion: TADODataSet;
    adodsMasterBateriaCapacitacion: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses PuestosCapacitacionForm;

{$R *.dfm}

procedure TdmPuestosCapacitacion.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmPuestosCapacitacion.Create(Self);
  gGridForm.DataSet:= adodsMaster;
end;

end.
