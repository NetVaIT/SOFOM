unit PDFAplicacionSaldosDM;

interface

uses
  System.SysUtils, System.Classes, _ReportSOFOMDM, dxmdaset, ppParameter,
  ppDesignLayer, ppVar, ppCtrls, ppBands, dxGDIPlusClasses, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, Data.DB,
  Data.Win.ADODB;

type
  TDmRptAplicacionPagospdf = class(T_dmReportSOFOM)
    adodsReportFechaAplicacion: TDateTimeField;
    adodsReportimporte: TFMTBCDField;
    adodsReportFechaPago: TDateTimeField;
    adodsReportFolioPago: TIntegerField;
    adodsReportSeriePago: TStringField;
    adodsReportNoCuentaXCobrar: TAutoIncField;
    adodsReportFechaCXC: TDateTimeField;
    adodsReportCliente: TStringField;
    adodsReportIDAnexo: TIntegerField;
    adodsReportAnexo: TStringField;
    adodsReportIdPagoAplicacion: TAutoIncField;
    adodsReportIdPago: TIntegerField;
    adodsReportIdPersonaCliente: TIntegerField;
    adodsReportIdContrato: TIntegerField;
    adodsReportidMetodoPago: TIntegerField;
    adodsReportIdCFDI: TLargeintField;
    adodsReportSerieFactura: TStringField;
    adodsReportFolioFactura: TLargeintField;
    adodsReportDescripcion: TStringField;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppLabel3: TppLabel;
    ppDBText4: TppDBText;
    ppLabel4: TppLabel;
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
    adodsReportsaldoCXC: TFMTBCDField;
    adodsReportTotalFactura: TFMTBCDField;
    ppLabel10: TppLabel;
    ppDBText10: TppDBText;
    ppLabel11: TppLabel;
    ppDBText11: TppDBText;
    ppLine1: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLine2: TppLine;
    ppLabel12: TppLabel;
    ppDBText12: TppDBText;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AssignParam; override;
  end;

var
  DmRptAplicacionPagospdf: TDmRptAplicacionPagospdf;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDmRptAplicacionPagospdf }

procedure TDmRptAplicacionPagospdf.AssignParam;
begin
  inherited;
//
end;

end.
