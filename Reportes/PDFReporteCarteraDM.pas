unit PDFReporteCarteraDM;

interface

uses
  System.SysUtils, System.Classes, _ReportSOFOMDM, Data.DB, ppCtrls, dxmdaset,
  ppParameter, ppDesignLayer, ppVar, ppBands, dxGDIPlusClasses, ppPrnabl,
  ppClass, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,
  Data.Win.ADODB, ppStrtch, ppSubRpt;

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
    ppDetailBand2: TppDetailBand;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
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
    ADODtStSumasTotales: TADODataSet;
    DSSumasTotales: TDataSource;
    ADODtStSumasTotalesSUMATotal: TFMTBCDField;
    ADODtStSumasTotalesSUMACobradoCXC: TFMTBCDField;
    ADODtStSumasTotalesSUMATotalPorCobrar: TFMTBCDField;
    ADODtStSumasTotalesSUMASaldopendiente: TFMTBCDField;
    ADODtStSumasTotalesSUMATotalVigente: TFMTBCDField;
    ADODtStSumasTotalesSUMATotalPorVencer: TFMTBCDField;
    ADODtStSumasTotalesSUMAVencidoA30: TFMTBCDField;
    ADODtStSumasTotalesSUMAVencidoA60: TFMTBCDField;
    ADODtStSumasTotalesSUMAVencidoA90: TFMTBCDField;
    ADODtStSumasTotalesSUMAVencidoMas120: TFMTBCDField;
    ADODtStSumasTotalesPorcentajeVig1_30: TFMTBCDField;
    ADODtStSumasTotalesPorcentajeVenc31_60: TFMTBCDField;
    ADODtStSumasTotalesPorcentajeVenc61_90: TFMTBCDField;
    ADODtStSumasTotalesPorcentajeVenc91_120: TFMTBCDField;
    ADODtStSumasTotalesPorcentajeVencMas120: TFMTBCDField;
    ppDBSumasTotales: TppDBPipeline;
    ppDBText36: TppDBText;
    ppDBText35: TppDBText;
    ppLabel35: TppLabel;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppLabel23: TppLabel;
    ppDBText40: TppDBText;
    ADODtStRepHojaControlCtePorcentajeAtrasados: TFMTBCDField;
    ADODtStRepHojaControlCtePorcentajeATiempo: TFMTBCDField;
    ppDBHojaControlCte: TppDBPipeline;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel31: TppLabel;
    ppDBText29: TppDBText;
    ppLabel32: TppLabel;
    ppDBText30: TppDBText;
    ppLabel33: TppLabel;
    ppDBText31: TppDBText;
    ppLabel36: TppLabel;
    ppDBText32: TppDBText;
    ppLabel37: TppLabel;
    ppDBText33: TppDBText;
    ppLabel38: TppLabel;
    ppDBText34: TppDBText;
    ppLabel39: TppLabel;
    ppDBText42: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ADODtStRepHojaControlCteDiasPagoTotal: TIntegerField;
    ADODtStRepHojaControlCteDiasPagoRetraso: TIntegerField;
    ppDBText43: TppDBText;
    ppLabel40: TppLabel;
    ADODtStRepHojaControlCtecantCobRecNP: TIntegerField;
    ADODtStRepHojaControlCteAtrasadoORec: TIntegerField;
    ppLabel41: TppLabel;
    ppDBText46: TppDBText;
    ppLabel42: TppLabel;
    ppDBText47: TppDBText;
    ppLine4: TppLine;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    ppTitleBand3: TppTitleBand;
    ppDetailBand3: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppDBText41: TppDBText;
    ppDBText28: TppDBText;
    ppDBText22: TppDBText;
    ppDBText25: TppDBText;
    ppDBText24: TppDBText;
    ppDBText26: TppDBText;
    ppDBText23: TppDBText;
    ppDBText27: TppDBText;
    ppLine3: TppLine;
    ADODtStRepHojaControlCteSaldoInsoluto: TFMTBCDField;
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
