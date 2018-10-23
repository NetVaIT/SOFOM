unit RptEstadoCuentaDM;

interface

uses
  System.SysUtils, System.Classes, System.UITypes, _ReportSOFOMDM, dxmdaset, ppParameter,
  ppDesignLayer, ppVar, ppCtrls, ppBands, dxGDIPlusClasses, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, Data.DB,
  Data.Win.ADODB, ppStrtch, ppMemo;

type
  TdmRptEstadoCuenta = class(T_dmReportSOFOM)
    adoqEstadoCuenta: TADOQuery;
    dsEstadoCuenta: TDataSource;
    ppRptEstadoCuenta: TppReport;
    ppTitleBand5: TppTitleBand;
    ppHeaderBandEstadoCuenta: TppHeaderBand;
    ppShape4: TppShape;
    ppLabel60: TppLabel;
    ppDBText54: TppDBText;
    ppLabel61: TppLabel;
    ppDBText55: TppDBText;
    ppLabel62: TppLabel;
    ppDBText56: TppDBText;
    ppLabel69: TppLabel;
    ppDBText61: TppDBText;
    ppLabel72: TppLabel;
    ppImage5: TppImage;
    pplblTituloEstadoCuenta: TppLabel;
    lblMontaFinanciar: TppLabel;
    dbtxtMontoFinanaciar: TppDBText;
    lblSaldoInsoluto: TppLabel;
    dbtxtSaldoInsoluto: TppDBText;
    lblTasaAnual: TppLabel;
    dbtxtTasaAnual: TppDBText;
    ppLabel82: TppLabel;
    ppDBText65: TppDBText;
    ppLabel84: TppLabel;
    ppDBText66: TppDBText;
    ppLabel87: TppLabel;
    ppDBText74: TppDBText;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLine19: TppLine;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppLabel83: TppLabel;
    ppLabel92: TppLabel;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppDBText84: TppDBText;
    ppLabel78: TppLabel;
    ppDetailBand5: TppDetailBand;
    ppDBText67: TppDBText;
    ppDBText68: TppDBText;
    ppDBText69: TppDBText;
    ppDBText70: TppDBText;
    ppDBText71: TppDBText;
    ppDBText72: TppDBText;
    ppDBText73: TppDBText;
    ppDBText75: TppDBText;
    ppFooterBand5: TppFooterBand;
    ppLine21: TppLine;
    ppDBText82: TppDBText;
    ppDBText83: TppDBText;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppShape5: TppShape;
    ppDBCalc41: TppDBCalc;
    ppLine24: TppLine;
    ppShape2: TppShape;
    ppLabel88: TppLabel;
    ppDBCalc42: TppDBCalc;
    ppDBCalc43: TppDBCalc;
    ppLabel90: TppLabel;
    ppShape3: TppShape;
    ppMemo2: TppMemo;
    ppLabel85: TppLabel;
    ppDBCalc38: TppDBCalc;
    ppDBCalc39: TppDBCalc;
    ppDBCalc40: TppDBCalc;
    ppLabel86: TppLabel;
    ppLabel89: TppLabel;
    ppLabel91: TppLabel;
    ppLabel100: TppLabel;
    ppDBText76: TppDBText;
    ppDBText77: TppDBText;
    ppLabel101: TppLabel;
    ppDBText78: TppDBText;
    ppLabel102: TppLabel;
    ppDBText79: TppDBText;
    ppLabel103: TppLabel;
    ppDBText80: TppDBText;
    ppLabel104: TppLabel;
    ppDBText81: TppDBText;
    ppDesignLayers4: TppDesignLayers;
    ppDesignLayer4: TppDesignLayer;
    ppParameterList5: TppParameterList;
    ppdbpEstadoCuenta: TppDBPipeline;
    adopGenTmpEstadoCuenta: TADOStoredProc;
    adoqEstadoCuentaFuturo: TADOQuery;
    procedure ppHeaderBandEstadoCuentaBeforePrint(Sender: TObject);
  private
    { Private declarations }
    FFechaFuturo: TDateTime;
    FIdPersona: Integer;
    FFecha: TDateTime;
    FTemporal: Boolean;
    procedure SetIdPersona(const Value: Integer);
    procedure SetFecha(const Value: TDateTime);
    procedure SetTemporal(const Value: Boolean);
  public
    { Public declarations }
    procedure AssignParam; override;
    procedure Execute; override;
    property IdPersona: Integer read FIdPersona write SetIdPersona;
    property Fecha: TDateTime read FFecha write SetFecha;
    property Temporal: Boolean read FTemporal write SetTemporal;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TdmRptEstadoCuenta }

procedure TdmRptEstadoCuenta.AssignParam;
begin
  inherited;
//
end;

procedure TdmRptEstadoCuenta.Execute;
begin
  if Temporal then
  begin
    ScreenCursorProc(crSQLWait);
    try
      adopGenTmpEstadoCuenta.Parameters.ParamByName('@IdPersona').Value := IdPersona;
      adopGenTmpEstadoCuenta.Parameters.ParamByName('@Fecha').Value := Fecha;
      adopGenTmpEstadoCuenta.ExecProc;
      adoqEstadoCuentaFuturo.Close;
      adoqEstadoCuentaFuturo.Parameters.ParamByName('IdPersona').Value := IdPersona;
      adoqEstadoCuentaFuturo.Parameters.ParamByName('Fecha').Value := Fecha;
      adoqEstadoCuentaFuturo.Open;
      dsEstadoCuenta.DataSet := adoqEstadoCuentaFuturo;
    finally
      ScreenCursorProc(crDefault);
    end;
  end
  else
  begin
    adoqEstadoCuenta.Close;
    adoqEstadoCuenta.Parameters.ParamByName('IdPersona').Value := IdPersona;
    adoqEstadoCuenta.Open;
    dsEstadoCuenta.DataSet := adoqEstadoCuenta;
  end;
  ppRptEstadoCuenta.ShowPrintDialog:= False;
  ppRptEstadoCuenta.ShowCancelDialog:= False;
  ppRptEstadoCuenta.PrinterSetup.DocumentName:= PDFFileName;
  ppRptEstadoCuenta.DeviceType:= 'PDF';
  ppRptEstadoCuenta.TextFileName:= PDFFileName;
  pplblTituloEstadoCuenta.Caption:= Title;
  ppRptEstadoCuenta.Print;
  adoqEstadoCuenta.Close;
end;

procedure TdmRptEstadoCuenta.ppHeaderBandEstadoCuentaBeforePrint(Sender: TObject);
var
  Mostrar: Boolean;
begin
  inherited;
  Mostrar:= dsEstadoCuenta.DataSet.FieldByName('IdContratoTipo').AsInteger<>3;  // Arrendamiento puro
  lblMontaFinanciar.Visible:= Mostrar;
  dbtxtMontoFinanaciar.Visible:= Mostrar;
  lblSaldoInsoluto.Visible:= Mostrar;
  dbtxtSaldoInsoluto.Visible:= Mostrar;
  lblTasaAnual.Visible:= Mostrar;
  dbtxtTasaAnual.Visible:= Mostrar;
end;

procedure TdmRptEstadoCuenta.SetFecha(const Value: TDateTime);
begin
  FFecha := Value;
end;

procedure TdmRptEstadoCuenta.SetIdPersona(const Value: Integer);
begin
  FIdPersona := Value;
end;

procedure TdmRptEstadoCuenta.SetTemporal(const Value: Boolean);
begin
  FTemporal := Value;
end;

end.
