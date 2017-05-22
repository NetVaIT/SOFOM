unit RptColocacionAcumuladoDM;

interface

uses
  System.SysUtils, System.Classes, _ReportSOFOMDM, dxmdaset, ppParameter,
  ppDesignLayer, ppVar, ppCtrls, ppBands, dxGDIPlusClasses, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, Data.DB,
  Data.Win.ADODB, ppStrtch, ppCTMain;

type
  TdmRptColocacionAcumulado = class(T_dmReportSOFOM)
    adodsReportDestino: TStringField;
    adodsReportFamilia: TStringField;
    adodsReportMarca: TStringField;
    adodsReportAnio: TIntegerField;
    adodsReportCuenta: TIntegerField;
    adodsReportPrecioTotal: TFMTBCDField;
    adodsReportMontoFinanciar: TFMTBCDField;
    ppCrossTab1: TppCrossTab;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AssignParam; override;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TdmRptColocacionAcumulado }

procedure TdmRptColocacionAcumulado.AssignParam;
begin
  inherited;

end;

end.
