unit PDFAntiguedadSaldosDM;

interface

uses
  System.SysUtils, System.Classes, _ReportSOFOMDM, dxmdaset, ppParameter,
  ppDesignLayer, ppVar, ppCtrls, ppBands, dxGDIPlusClasses, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, Data.DB,
  Data.Win.ADODB;

type
  TdmAntiguedadSaldosPDF = class(T_dmReportSOFOM)
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    adodsReportIdCuentaXCobrar: TAutoIncField;
    adodsReportIDAnexo: TIntegerField;
    adodsReportIDContrato: TIntegerField;
    adodsReportIdContratoTipo: TIntegerField;
    adodsReportTipoContrato: TStringField;
    adodsReportFecha: TDateTimeField;
    adodsReportIdPersona: TIntegerField;
    adodsReportIdCuentaXCobrarEstatus: TIntegerField;
    adodsReportTotal: TFMTBCDField;
    adodsReportSaldo: TFMTBCDField;
    adodsReportCliente: TStringField;
    adodsReportVigentes: TFMTBCDField;
    adodsReportVencidosa30días: TFMTBCDField;
    adodsReportVencidosa60días: TFMTBCDField;
    adodsReportVencidosa90días: TFMTBCDField;
    ppDBText3: TppDBText;
    ppLabel5: TppLabel;
    ppDBText5: TppDBText;
    ppLabel6: TppLabel;
    ppDBText6: TppDBText;
    ppLabel7: TppLabel;
    ppDBText7: TppDBText;
    ppLabel8: TppLabel;
    ppDBText8: TppDBText;
    ppLabel9: TppLabel;
    ppDBText9: TppDBText;
    ppLabel10: TppLabel;
    ppDBText10: TppDBText;
    ppLine1: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppLabel11: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    adodsReportTC: TStringField;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppLine4: TppLine;
    ppLabel12: TppLabel;
    ADODtStAntXCliente: TADODataSet;
    DSAntXCliente: TDataSource;
    ppRprtAntXCliente: TppReport;
    ppTitleBand2: TppTitleBand;
    ppLblTitulo2: TppLabel;
    ppImage2: TppImage;
    ppHeaderBand2: TppHeaderBand;
    ppLabel14: TppLabel;
    ppDBText11: TppDBText;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppDetailBand2: TppDetailBand;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppLine7: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSummaryBand2: TppSummaryBand;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppLine8: TppLine;
    ppLabel24: TppLabel;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppParameterList2: TppParameterList;
    adodsReportSaldoTotalVencido: TFMTBCDField;
    ppLabel13: TppLabel;
    ppDBCalc16: TppDBCalc;
    ppLabel15: TppLabel;
    ppDBCalc17: TppDBCalc;
    ppLabel16: TppLabel;
    ppDBText12: TppDBText;
    ppDBCalc18: TppDBCalc;
    ppLabel17: TppLabel;
    ppDBCalc19: TppDBCalc;
    ppLabel18: TppLabel;
    ppDBCalc20: TppDBCalc;
    ppLabel25: TppLabel;
    ppDBText13: TppDBText;
    ppDBAntXClienteX: TppDBPipeline;
    ppDBCalc21: TppDBCalc;
    ppLine9: TppLine;
    adodsReportAnexo: TStringField;
    adodsReportContrato: TStringField;
    ppLine10: TppLine;
    ppLabel26: TppLabel;
    ppDBAntXCliente: TppDBPipeline;
    ppLabel27: TppLabel;
    ppDBText14: TppDBText;
    ppDBCalc22: TppDBCalc;
    adodsReportVencidosmásde120días: TFMTBCDField;
    ADODtStCtaActCliente: TADODataSet;
    DSCtaActCliente: TDataSource;
    ppRptCtaActCliente: TppReport;
    ppTitleBand3: TppTitleBand;
    ppTituloAdeudo: TppLabel;
    ppImage3: TppImage;
    ppHeaderBand3: TppHeaderBand;
    ppLabel28: TppLabel;
    ppLine11: TppLine;
    ppDetailBand3: TppDetailBand;
    ppDBText23: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppLine13: TppLine;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppSummaryBand3: TppSummaryBand;
    ppLine14: TppLine;
    ppLabel36: TppLabel;
    ppDBCalc27: TppDBCalc;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    ppParameterList3: TppParameterList;
    ppDBPplnCtaActCliente: TppDBPipeline;
    ppLabel35: TppLabel;
    ppDBText27: TppDBText;
    ppLabel37: TppLabel;
    ppDBText28: TppDBText;
    ppLabel38: TppLabel;
    ppDBText29: TppDBText;
    ppLabel39: TppLabel;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppLabel40: TppLabel;
    ppDBText21: TppDBText;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppDBText22: TppDBText;
    ppLabel43: TppLabel;
    ppDBText24: TppDBText;
    ppLabel44: TppLabel;
    ppDBText25: TppDBText;
    ppLine12: TppLine;
    ppDBCalc14: TppDBCalc;
    ppLine15: TppLine;
  private
    { Private declarations }
  public
    { Public declarations }
      procedure AssignParam; override;
  end;

var
  dmAntiguedadSaldosPDF: TdmAntiguedadSaldosPDF;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}



{ TdmAntiguedadSaldosPDF }

procedure TdmAntiguedadSaldosPDF.AssignParam;
begin
  inherited;
//
end;

end.
