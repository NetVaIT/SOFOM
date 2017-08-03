unit PDFReporteEstatusCXC;

interface

uses
  System.SysUtils, System.Classes, _ReportSOFOMDM, ppCtrls, ppDB, dxmdaset,
  ppParameter, ppDesignLayer, ppVar, ppBands, dxGDIPlusClasses, ppPrnabl,
  ppClass, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, Data.DB,
  Data.Win.ADODB;

type
  TDMListaCXCPendFactPDF = class(T_dmReportSOFOM)
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
    ppLine1: TppLine;
  private
    { Private declarations }
  public
    { Public declarations }
          procedure AssignParam; override;
  end;

var
  DMListaCXCPendFactPDF: TDMListaCXCPendFactPDF;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDMListaCXCPendFactPDF.AssignParam;    //Ago 3/17
begin
  inherited;
//
end;

end.
