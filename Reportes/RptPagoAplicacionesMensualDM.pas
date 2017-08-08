unit RptPagoAplicacionesMensualDM;

interface

uses
  System.SysUtils, System.Classes, _ReportSOFOMDM, dxmdaset, ppParameter,
  ppDesignLayer, ppVar, ppCtrls, ppBands, dxGDIPlusClasses, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, Data.DB,
  Data.Win.ADODB, System.DateUtils ;

type
  TdmRptPagoAplicacionesMensual = class(T_dmReportSOFOM)
    adodsReportIdPersona: TAutoIncField;
    adodsReportCliente: TStringField;
    adodsReportAnio: TIntegerField;
    adodsReportEnero: TFMTBCDField;
    adodsReportFebrero: TFMTBCDField;
    adodsReportMarzo: TFMTBCDField;
    adodsReportAbril: TFMTBCDField;
    adodsReportMayo: TFMTBCDField;
    adodsReportJunio: TFMTBCDField;
    adodsReportJulio: TFMTBCDField;
    adodsReportAgosto: TFMTBCDField;
    adodsReportSeptiembre: TFMTBCDField;
    adodsReportOctubre: TFMTBCDField;
    adodsReportNoviembre: TFMTBCDField;
    adodsReportDiciembre: TFMTBCDField;
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
    mdParamsYear: TIntegerField;
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

uses RptPagoAplicacionesMensualForm;

{$R *.dfm}

{ TdmRptPagoAplicacionesMensual }

procedure TdmRptPagoAplicacionesMensual.AssignParam;
begin
  inherited;
  adodsReport.Parameters.ParamByName('Year').Value := mdParamsYear.Value;
end;

procedure TdmRptPagoAplicacionesMensual.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gReportForm := TfrmRptPagoAplicacionesMensual.Create(Self);
end;

procedure TdmRptPagoAplicacionesMensual.mdParamsNewRecord(DataSet: TDataSet);
begin
  inherited;
  mdParamsYear.Value := Yearof(Now);
end;

end.

