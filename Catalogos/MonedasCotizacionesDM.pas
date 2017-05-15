unit MonedasCotizacionesDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmMonedasCotizaciones = class(T_dmStandar)
    adodsMasterIdMonedaCotizacion: TAutoIncField;
    adodsMasterIdMoneda: TIntegerField;
    adodsMasterFecha: TDateTimeField;
    adodsMasterImporte: TFMTBCDField;
    adodsMonedas: TADODataSet;
    adodsMasterMoneda: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses MonedasCotizacionesForm;

{$R *.dfm}

procedure TdmMonedasCotizaciones.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmMonedasCotizaciones.Create(Self);
  gGridForm.DataSet:= adodsMaster;
end;

end.
