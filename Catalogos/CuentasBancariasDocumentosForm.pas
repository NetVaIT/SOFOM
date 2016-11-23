unit CuentasBancariasDocumentosForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, _GridForm, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  dxSkinsdxBarPainter, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxSkinsdxRibbonPainter, dxPSCore, dxPScxCommon, dxBar, Vcl.ImgList,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxClasses, Vcl.StdActns, Vcl.DBActns,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  Vcl.ExtCtrls;

type
  TfrmCuentasBancariasDocumentos = class(T_frmGrid)
    tvMasterIdCuentaBancariaDocumento: TcxGridDBColumn;
    tvMasterIdCuentaBancaria: TcxGridDBColumn;
    tvMasterIdDocumento: TcxGridDBColumn;
    tvMasterDocumento: TcxGridDBColumn;
    procedure DatasetInsertExecute(Sender: TObject);
    procedure DatasetEditExecute(Sender: TObject);
    procedure tvMasterCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
    FInsertFile : TBasicAction;
    FEditFile : TBasicAction;
    procedure SetInsertFile(const Value: TBasicAction);
    procedure SetEditFile(const Value: TBasicAction);
  public
    { Public declarations }
    property InsertFile : TBasicAction read FInsertFile write SetInsertFile;
    property EditFile : TBasicAction read FEditFile write SetEditFile;
  end;

implementation

{$R *.dfm}

uses CuentasBancariasDocumentosDM;

{ TfrmCuentasBancariasDocumentos }

procedure TfrmCuentasBancariasDocumentos.DatasetEditExecute(Sender: TObject);
begin
  EditFile.Execute;
end;

procedure TfrmCuentasBancariasDocumentos.DatasetInsertExecute(Sender: TObject);
begin
//  DataSource.DataSet.Insert;
  InsertFile.Execute;
end;

procedure TfrmCuentasBancariasDocumentos.SetEditFile(
  const Value: TBasicAction);
begin
  FEditFile := Value;
end;

procedure TfrmCuentasBancariasDocumentos.SetInsertFile(
  const Value: TBasicAction);
begin
  FInsertFile := Value;
end;

procedure TfrmCuentasBancariasDocumentos.tvMasterCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if ReadOnlyGrid then
    actShow.Execute
  else
    EditFile.Execute;
end;

end.
