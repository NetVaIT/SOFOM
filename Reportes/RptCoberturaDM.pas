unit RptCoberturaDM;

interface

uses
  System.SysUtils, System.Classes, _ReportSOFOMDM, ppCtrls, Data.DB, dxmdaset,
  ppParameter, ppDesignLayer, ppVar, ppBands, dxGDIPlusClasses, ppPrnabl,
  ppClass, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,
  Data.Win.ADODB, ppStrtch, ppSubRpt;

type
  TdmRptCobertura = class(T_dmReportSOFOM)
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
    ppLabel1: TppLabel;
    ppDBText11: TppDBText;
    ppLabel12: TppLabel;
    ppDBText12: TppDBText;
    ppLabel13: TppLabel;
    adodsReportIdAnexo: TAutoIncField;
    adodsReportContrato: TStringField;
    adodsReportAnexo: TStringField;
    adodsReportFecha: TDateTimeField;
    adodsReportCliente: TStringField;
    adodsReportSaldoInsoluto: TFMTBCDField;
    adodsReportMontoVencido: TFMTBCDField;
    adodsReportDepositos: TFMTBCDField;
    adodsReportOpcionCompra: TFMTBCDField;
    adodsReportValorResidual: TFMTBCDField;
    adodsReportTotalLiquidar: TFMTBCDField;
    adodsReportValorComercial: TBCDField;
    adodsReportTipoCambioOriginal: TBCDField;
    adodsReportValorComercialActualizado: TBCDField;
    adodsReportCobertura: TFMTBCDField;
    adodsReportFactor: TFMTBCDField;
    ppLabel14: TppLabel;
    ppDBText13: TppDBText;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppDBText14: TppDBText;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppDBText15: TppDBText;
    ppLabel24: TppLabel;
    adodsParidad: TADODataSet;
    dsParidad: TDataSource;
    dbpParidad: TppDBPipeline;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppDetailBand2: TppDetailBand;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    mdParamsVencidos: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure mdParamsNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AssignParam; override;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses RptCoberturaForm;

{$R *.dfm}

procedure TdmRptCobertura.AssignParam;
begin
  inherited;
  case mdParamsVencidos.Value of
    0: adodsReport.Parameters.ParamByName('Vencidos').Value := 0;
    1: adodsReport.Parameters.ParamByName('Vencidos').Value := 30;
  end;
//  adodsReport.Parameters.ParamByName('Year').Value := mdParamsYear.Value;
end;

procedure TdmRptCobertura.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gReportForm := TfrmRptCobertura.Create(Self);
end;

procedure TdmRptCobertura.mdParamsNewRecord(DataSet: TDataSet);
begin
  inherited;
  mdParamsVencidos.Value := 0;
end;

end.
