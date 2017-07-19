unit PLDAlertasDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmPLDAlertas = class(T_dmStandar)
    adodsOperacionTipo: TADODataSet;
    adodsTipo: TADODataSet;
    adodsEstatus: TADODataSet;
    adodsMasterIdPLDAlerta: TIntegerField;
    adodsMasterIdPago: TIntegerField;
    adodsMasterIdPLDOperacionTipo: TIntegerField;
    adodsMasterIdPLDAlertaTipo: TIntegerField;
    adodsMasterIdPLDAlertaEstatus: TIntegerField;
    adodsMasterFechaDeteccion: TDateTimeField;
    adodsMasterDescripcion: TStringField;
    adodsMasterRazon: TStringField;
    adodsMasterR24: TBooleanField;
    adodsMasterOperacionTipo: TStringField;
    adodsMasterTipo: TStringField;
    adodsMasterEstatus: TStringField;
    adodsMasterFechaPago: TDateTimeField;
    adodsMasterCliente: TStringField;
    adodsMasterFolioPago: TIntegerField;
    adodsMasterSeriePago: TStringField;
    adodsMasterMetodoPago: TStringField;
    adodsMasterImportePago: TFMTBCDField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses PLDAlertasForm;

{$R *.dfm}

procedure TdmPLDAlertas.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmPLDAlertas.Create(Self);
  gGridForm.DataSet:= adodsMaster;
end;

end.
