unit PDFReporteCarteraDM;

interface

uses
  System.SysUtils, System.Classes, _ReportSOFOMDM, Data.DB, ppCtrls, dxmdaset,
  ppParameter, ppDesignLayer, ppVar, ppBands, dxGDIPlusClasses, ppPrnabl,
  ppClass, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,
  Data.Win.ADODB;

type
  TDmReporteCarteraPDF = class(T_dmReportSOFOM)
    ppSystemVariable1: TppSystemVariable;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    adodsReportIdAnexo: TIntegerField;
    adodsReportContrato: TStringField;
    adodsReportAnexo: TStringField;
    adodsReportCLiente: TStringField;
    adodsReportTc: TStringField;
    adodsReportPlazo: TIntegerField;
    adodsReportTotal: TFMTBCDField;
    adodsReportCobradoCXC: TFMTBCDField;
    adodsReportTotalPorCobrar: TFMTBCDField;
    adodsReportSaldopendiente: TFMTBCDField;
    adodsReportTotalVigente: TFMTBCDField;
    adodsReportTotalPorVencer: TFMTBCDField;
    adodsReportTotalCobradoVencido: TFMTBCDField;
    adodsReportVencidoA30: TFMTBCDField;
    adodsReportVencidoA60: TFMTBCDField;
    adodsReportVencidoA90: TFMTBCDField;
    adodsReportVencidoMas120: TFMTBCDField;
    adodsReportDiasRetraso: TIntegerField;
    adodsReportCantidad: TIntegerField;
    adodsReportatrasados: TIntegerField;
    adodsReportatiempo: TIntegerField;
    adodsReportCuotasPendientes: TIntegerField;
    adodsReportDiasPagoTotal: TIntegerField;
    adodsReportDiasPagoRetraso: TIntegerField;
    adodsReportPorcentajeAtrasados: TFMTBCDField;
    adodsReportPorcentajeATiempo: TFMTBCDField;
    adodsReportCuotaMostrar: TStringField;
    ppDBText5: TppDBText;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppDBText14: TppDBText;
    ppLabel14: TppLabel;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppLabel16: TppLabel;
    ppDBText17: TppDBText;
    ppLabel15: TppLabel;
    adodsReportCalificacionInicial: TStringField;
    ADODtStRepHojaControlCte: TADODataSet;
    DSHojaControlCte: TDataSource;
    ppDBHojaControlCte: TppDBPipeline;
    ppRprtHojaControlCte: TppReport;
    ppTitleBand2: TppTitleBand;
    ppLabel17: TppLabel;
    ppImage2: TppImage;
    ppSystemVariable2: TppSystemVariable;
    ppHeaderBand2: TppHeaderBand;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppLine1: TppLine;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppParameterList2: TppParameterList;
    ADODtStRepHojaControlCteIdAnexo: TAutoIncField;
    ADODtStRepHojaControlCteAnexo: TStringField;
    ADODtStRepHojaControlCtePlazo: TIntegerField;
    ADODtStRepHojaControlCteContrato: TStringField;
    ADODtStRepHojaControlCteCalificacionInicial: TStringField;
    ADODtStRepHojaControlCtecliente: TStringField;
    ADODtStRepHojaControlCteTC: TStringField;
    ADODtStRepHojaControlCteIdAnexoCreditoEstatus: TIntegerField;
    ADODtStRepHojaControlCtePrecioMoneda: TFMTBCDField;
    ADODtStRepHojaControlCteTipoCambio: TFMTBCDField;
    ADODtdtProductos: TADODataSet;
    dsProductos: TDataSource;
    ppDBProductos: TppDBPipeline;
    ADODtStRepHojaControlCtePrecioTotal: TFMTBCDField;
    ADODtdtProductosIdAnexo: TIntegerField;
    ADODtdtProductosIdentificador: TStringField;
    ADODtdtProductosDescripcion: TStringField;
    ADODtdtProductosModelo: TStringField;
    ADODtdtProductosNumeroSerie: TStringField;
    ADODtdtProductosPorcentajeAnexo: TBCDField;
    ADODtdtProductosPrecio: TBCDField;
    ADODtdtProductosPrecioTotal: TBCDField;
    ADODtdtProductostipoCambio: TBCDField;
    ADODtdtProductosPrecioMoneda: TBCDField;
    ADODtdtProductosFamilia: TStringField;
    ADODtdtProductosEstatus: TStringField;
    ADODtdtProductosTipo: TStringField;
    ADODtdtProductosMarca: TStringField;
    ADODtStRepHojaControlCteDiasRetrasoXAnexo: TIntegerField;
    ADODtStRepHojaControlCteCantidad: TIntegerField;
    ADODtStRepHojaControlCteDiasSoloretraso: TIntegerField;
    ADODtStRepHojaControlCteMayorAtraso: TIntegerField;
    ADODtStRepHojaControlCteMayorPrepago: TIntegerField;
    ADODtStRepHojaControlCteAtrasados: TIntegerField;
    ADODtStRepHojaControlCteATiempo: TIntegerField;
    ADODtStRepHojaControlCteTotalPagados: TIntegerField;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppLabel34: TppLabel;
    ppLine2: TppLine;
    procedure CuotasReportCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
     procedure AssignParam; override;
  end;

var
  DmReporteCarteraPDF: TDmReporteCarteraPDF;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDmReporteCarteraPDF.AssignParam;
begin
  inherited;
//
end;

procedure TDmReporteCarteraPDF.CuotasReportCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('CuotaMostrar').asstring:=   DataSet.FieldByName('CuotasPendientes').asstring+'/'+ DataSet.FieldByName('Plazo').asstring;
end;

end.
