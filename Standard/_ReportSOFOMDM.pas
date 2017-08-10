unit _ReportSOFOMDM;

interface

uses
  System.SysUtils, System.Classes, _ReportDMod, dxGDIPlusClasses, ppCtrls,
  dxmdaset, ppParameter, ppDesignLayer, ppVar, ppBands, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, Data.DB,
  Data.Win.ADODB, ppStrtch, ppMemo;

type
  T_dmReportSOFOM = class(T_dmReport)
    ppImage1: TppImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _dmReportSOFOM: T_dmReportSOFOM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
