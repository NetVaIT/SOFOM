unit CuentasBancariasForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, _GridForm, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  dxSkinsdxBarPainter, dxBar, Vcl.ImgList, cxGridCustomPopupMenu,
  cxGridPopupMenu, cxClasses, Vcl.StdActns, Vcl.DBActns, System.Actions,
  Vcl.ActnList, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Vcl.ExtCtrls, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxRibbonPainter,
  dxPSCore, dxPScxCommon, Vcl.StdCtrls;

type
  TfrmCuentasBancarias = class(T_frmGrid)
    tvMasterIdCuentaBancaria: TcxGridDBColumn;
    tvMasterIdPersona: TcxGridDBColumn;
    tvMasterIdCuentaBancariaTipo: TcxGridDBColumn;
    tvMasterCuentaBancariaTipo: TcxGridDBColumn;
    tvMasterIdBanco: TcxGridDBColumn;
    tvMasterBanco: TcxGridDBColumn;
    tvMasterCuentaBancaria: TcxGridDBColumn;
    tvMasterClabeInterbancaria: TcxGridDBColumn;
    tvMasterIdMoneda: TcxGridDBColumn;
    tvMasterMoneda: TcxGridDBColumn;
    tvMasterEstructuraEstadoCuenta: TcxGridDBColumn;
    tvMasterSaldoCuenta: TcxGridDBColumn;
    tvMasterIdDocumento: TcxGridDBColumn;
    tvMasterIdCuentaBancariaEstatus: TcxGridDBColumn;
    tvMasterEstatus: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FUpdateFile: TBasicAction;
  public
    { Public declarations }
    property UpdateFile: TBasicAction read FUpdateFile write FUpdateFile;
  end;

implementation

{$R *.dfm}

uses CuentasBancariasEdit, CuentasBancariasDM;

procedure TfrmCuentasBancarias.FormCreate(Sender: TObject);
begin
  inherited;
  gEditForm:= TFrmCuentasBancariasEdit.Create(Self);
end;

procedure TfrmCuentasBancarias.FormShow(Sender: TObject);
begin
  inherited;
  TfrmCuentasBancariasEdit(gEditForm).UpdateFile := FUpdateFile;
end;

end.
