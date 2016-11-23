unit AnexosSegmentosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmAnexosSegmentos = class(T_dmStandar)
    adodsMasterIdAnexoSegmento: TIntegerField;
    adodsMasterIdAnexo: TIntegerField;
    adodsMasterSegmento: TIntegerField;
    adodsMasterValorPresente: TFMTBCDField;
    adodsMasterTasaAnual: TFloatField;
    adodsMasterPagoMensual: TFMTBCDField;
    adodsMasterValorFuturo: TFMTBCDField;
    adodsMasterPeriodoInicial: TIntegerField;
    adodsMasterPeriodoFinal: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses AnexosSegmentosForm;

{$R *.dfm}

procedure TdmAnexosSegmentos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm := TfrmAnexosSegmentos.Create(Self);
  gGridForm.DataSet := adodsMaster;
end;

end.
