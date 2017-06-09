unit RptExpedientesRecibidosDM;

interface

uses
  System.SysUtils, System.Classes, _ReportSOFOMDM, ppCtrls, Data.DB, dxmdaset,
  ppParameter, ppDesignLayer, ppVar, ppBands, dxGDIPlusClasses, ppPrnabl,
  ppClass, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,
  Data.Win.ADODB, ppStrtch, ppSubRpt;

type
  TdmRptExpedientesRecibidos = class(T_dmReportSOFOM)
    adodsReportIdCotizacion: TAutoIncField;
    adodsReportIdentificador: TStringField;
    adodsReportElaboracion: TDateTimeField;
    adodsReportCliente: TStringField;
    adodsReportEstatus: TStringField;
    adodsReportCausa: TStringField;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    adodsEstatus: TADODataSet;
    dsEstatus: TDataSource;
    dbpEstatus: TppDBPipeline;
    adodsEstatusIdCotizacionEstatus: TIntegerField;
    adodsEstatusEstatus: TStringField;
    adodsEstatusCuenta: TIntegerField;
    adodsEstatusPorcentaje: TFloatField;
    ppSummaryBand1: TppSummaryBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppTitleBand2: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    ppLabel5: TppLabel;
    ppDBText5: TppDBText;
    ppLabel6: TppLabel;
    ppDBText6: TppDBText;
    ppLabel7: TppLabel;
    ppDBText7: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLine1: TppLine;
    adodsCausa: TADODataSet;
    dsCausa: TDataSource;
    dbpCausa: TppDBPipeline;
    adodsCausaIdCotizacionCausa: TIntegerField;
    adodsCausaEstatus: TStringField;
    adodsCausaCausa: TStringField;
    adodsCausaCuenta: TIntegerField;
    adodsCausaPorcentaje: TFloatField;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    ppTitleBand3: TppTitleBand;
    ppDetailBand3: TppDetailBand;
    ppSummaryBand3: TppSummaryBand;
    ppLabel8: TppLabel;
    ppDBText8: TppDBText;
    ppLabel9: TppLabel;
    ppDBText9: TppDBText;
    ppLabel10: TppLabel;
    ppDBText10: TppDBText;
    ppLabel11: TppLabel;
    ppDBText11: TppDBText;
    ppLine2: TppLine;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLine3: TppLine;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AssignParam; override;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TdmRptExpedientesRecibidos }

procedure TdmRptExpedientesRecibidos.AssignParam;
begin
  inherited;

end;

end.
