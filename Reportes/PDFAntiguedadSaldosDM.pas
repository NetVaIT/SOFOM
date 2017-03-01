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
    adodsReportVencidosmásde90días: TFMTBCDField;
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
