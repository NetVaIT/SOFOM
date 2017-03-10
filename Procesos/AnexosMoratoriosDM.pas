unit AnexosMoratoriosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmAnexosMoratorios = class(T_dmStandar)
    adodsMasterIdAnexoMoratorio: TIntegerField;
    adodsMasterIdAnexoAmortizacion: TIntegerField;
    adodsMasterIdAnexoMoratorioEstatus: TIntegerField;
    adodsMasterFecha: TDateTimeField;
    adodsMasterImporteBase: TFMTBCDField;
    adodsMasterImporte: TFMTBCDField;
    adodsMasterDescuento: TFMTBCDField;
    adodsMasterImpuesto: TFMTBCDField;
    adodsEstatus: TADODataSet;
    adodsMasterEstatus: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses AnexosMoratoriosForm;

{$R *.dfm}

procedure TdmAnexosMoratorios.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmAnexosMoratorios.Create(Self);
  gGridForm.DataSet := adodsMaster;
end;

end.
