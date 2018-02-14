unit PLDAlertasConfiguracionDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, System.Actions,
  Vcl.ActnList, Data.Win.ADODB;

type
  TdmPLDAlertasConfiguracion = class(T_dmStandar)
    adodsMasterIdPLDAlertaCofiguracion: TIntegerField;
    adodsMasterIdPersonaTipo: TIntegerField;
    adodsMasterIdMetodoPago: TIntegerField;
    adodsMasterIdMoneda: TIntegerField;
    adodsMasterImporte: TFMTBCDField;
    adodsMasterDescripcion: TStringField;
    adodsMasterMensaje: TStringField;
    adodsPersonasTipos: TADODataSet;
    adodsMetodosPago: TADODataSet;
    adodsMonedas: TADODataSet;
    adodsMasterPersonaTipo: TStringField;
    adodsMasterMetodoPago: TStringField;
    adodsMasterMoneda: TStringField;
    adodsMasterAcumular: TBooleanField;
    adodsMasterIdPLDAlertaTipo: TIntegerField;
    adodsPLDAlertasTipos: TADODataSet;
    adodsMasterPLDAlertaTipo: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure adodsMasterNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses PLDAlertasConfiguracionForm;

{$R *.dfm}

procedure TdmPLDAlertasConfiguracion.adodsMasterNewRecord(DataSet: TDataSet);
begin
  inherited;
  adodsMasterImporte.Value := 0;
  adodsMasterAcumular.Value := False;
end;

procedure TdmPLDAlertasConfiguracion.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmPLDAlertasConfiguracion.Create(Self);
  gGridForm.DataSet:= adodsMaster;
end;

end.
