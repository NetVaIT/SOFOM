unit PDFEStadoCuentaDM;

interface

uses
  System.SysUtils, System.Classes, _ReportSOFOMDM, dxmdaset, ppParameter,
  ppDesignLayer, ppVar, ppCtrls, ppBands, dxGDIPlusClasses, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, Data.DB,
  Data.Win.ADODB;

type
  TdmRepEstadoCta = class(T_dmReportSOFOM)
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
    ppLabel6: TppLabel;
    ppDBText6: TppDBText;
    ppLabel7: TppLabel;
    ppDBText7: TppDBText;
    adodsReportIdEstadoCuenta: TAutoIncField;
    adodsReportIdPersona: TIntegerField;
    adodsReportIdContrato: TIntegerField;
    adodsReportFechaVencimiento: TDateTimeField;
    adodsReportFechaCorte: TDateTimeField;
    adodsReportSaldoInsoluto: TFMTBCDField;
    adodsReportSaldoAnterior: TFMTBCDField;
    adodsReportSaldoAPagar: TFMTBCDField;
    adodsReportSaldoVencido: TFMTBCDField;
    adodsReportRazonSocial: TStringField;
    adodsReportIdentificador: TStringField;
    adodsReportTipoContrato: TStringField;
    ppLabel8: TppLabel;
    ppDBText8: TppDBText;
    ADORepDetalle: TADODataSet;
    adodsReportRFC: TStringField;
    ppLabel9: TppLabel;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppLabel10: TppLabel;
    ppDBPplnDetalle: TppDBPipeline;
    ADORepDetalleIdEstadoCuentaDetalle: TAutoIncField;
    ADORepDetalleIdEstadoCuenta: TIntegerField;
    ADORepDetalleIdAnexo: TIntegerField;
    ADORepDetalleIdCuentaXCobrar: TIntegerField;
    ADORepDetalleIdCuentaXCobrarDetalle: TIntegerField;
    ADORepDetalleIdPagoAplicacion: TIntegerField;
    ADORepDetalleFechaMovimiento: TDateTimeField;
    ADORepDetalleConcepto: TStringField;
    ADORepDetalleCargos: TFMTBCDField;
    ADORepDetalleAbonos: TFMTBCDField;
    dsDetalle: TDataSource;
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
    ppLine1: TppLine;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AssignParam; override;
  end;

var
  dmRepEstadoCta: TdmRepEstadoCta;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmRepEstadoCta.AssignParam;
begin
//
end;

end.
