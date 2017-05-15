unit RptCoberturaDM;

interface

uses
  System.SysUtils, System.Classes, _ReportSOFOMDM, ppCtrls, Data.DB, dxmdaset,
  ppParameter, ppDesignLayer, ppVar, ppBands, dxGDIPlusClasses, ppPrnabl,
  ppClass, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,
  Data.Win.ADODB;

type
  TdmRptCobertura = class(T_dmReportSOFOM)
    adodsReportIdAnexo: TAutoIncField;
    adodsReportContrato: TStringField;
    adodsReportAnexo: TStringField;
    adodsReportFecha: TDateTimeField;
    adodsReportCliente: TStringField;
    adodsReportSaldoInsoluto: TFMTBCDField;
    adodsReportMontoVencido: TFMTBCDField;
    adodsReportDepositos: TFMTBCDField;
    adodsReportTotalLiquidar: TFMTBCDField;
    adodsReportValorComercialActualizado: TBCDField;
    adodsReportCobertura: TFMTBCDField;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppLine1: TppLine;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AssignParam; override;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmRptCobertura.AssignParam;
begin
  inherited;

end;

end.
