unit RptAnexosProductosDM;

interface

uses
  System.SysUtils, System.Classes, _ReportSOFOMDM, ppBands, ppReport, ppStrtch,
  ppSubRpt, ppCtrls, Data.DB, dxmdaset, ppParameter, ppDesignLayer, ppVar,
  dxGDIPlusClasses, ppPrnabl, ppClass, ppCache, ppProd, ppComm, ppRelatv, ppDB,
  ppDBPipe, Data.Win.ADODB, ppModule, raCodMod, myChkBox;

type
  TdmRptAnexosProductos = class(T_dmReportSOFOM)
    adodsProductos: TADODataSet;
    dsProductos: TDataSource;
    dbpProductos: TppDBPipeline;
    adodsReportIdAnexo: TAutoIncField;
    adodsReportEmpleado: TStringField;
    adodsReportContratoTipo: TStringField;
    adodsReportContrato: TStringField;
    adodsReportAnexo: TStringField;
    adodsReportFecha: TDateTimeField;
    adodsReportFechaVencimiento: TDateTimeField;
    adodsReportEstatus: TStringField;
    adodsReportCliente: TStringField;
    adodsReportPrecioTotal: TFMTBCDField;
    adodsReportMontoFinanciar: TFMTBCDField;
    adodsProductosIdProducto: TAutoIncField;
    adodsProductosIdAnexo: TIntegerField;
    adodsProductosDescripcion: TStringField;
    adodsProductosTipo: TStringField;
    adodsProductosFamilia: TStringField;
    adodsProductosMarca: TStringField;
    adodsProductosModelo: TStringField;
    adodsProductosEstatus: TStringField;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    ppLabel5: TppLabel;
    ppDBText5: TppDBText;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppTitleBand2: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppDBText7: TppDBText;
    ppLabel8: TppLabel;
    ppDBText8: TppDBText;
    ppLabel9: TppLabel;
    ppDBText9: TppDBText;
    ppLabel10: TppLabel;
    ppDBText10: TppDBText;
    ppLabel11: TppLabel;
    ppDBText11: TppDBText;
    ppLabel12: TppLabel;
    ppDBText12: TppDBText;
    ppLabel13: TppLabel;
    ppDBText13: TppDBText;
    ppLabel14: TppLabel;
    ppDBText14: TppDBText;
    ppLabel15: TppLabel;
    ppDBText15: TppDBText;
    ppLabel16: TppLabel;
    ppDBText16: TppDBText;
    ppLine2: TppLine;
    ppLine1: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppLine3: TppLine;
    ppDBCalc2: TppDBCalc;
    ppSummaryBand2: TppSummaryBand;
    adodsReportCartaCompensacion: TBooleanField;
    myDBCheckBox1: TmyDBCheckBox;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AssignParam; override;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TdmRptAnexosProductos }

procedure TdmRptAnexosProductos.AssignParam;
begin
  inherited;

end;

end.
