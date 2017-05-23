unit ListasRestringidasForm;

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
  dxSkinsdxBarPainter, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxSkinsdxRibbonPainter, dxPSCore, dxPScxCommon, dxBar, Vcl.ImgList,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxClasses, Vcl.StdActns, Vcl.DBActns,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  Vcl.ExtCtrls, cxTextEdit, cxBarEditItem, cxCurrencyEdit;

type
  TfrmListasRestringidas = class(T_frmGrid)
    tvMasterIdListaRestringida: TcxGridDBColumn;
    tvMasterIdOrganismo: TcxGridDBColumn;
    tvMasterIdPais: TcxGridDBColumn;
    tvMasterIdEstatus: TcxGridDBColumn;
    tvMasterIdentificador: TcxGridDBColumn;
    tvMasterOrganismo: TcxGridDBColumn;
    tvMasterPais: TcxGridDBColumn;
    tvMasterNombre: TcxGridDBColumn;
    tvMasterAlias: TcxGridDBColumn;
    edtNombre: TcxBarEditItem;
    procedure FormCreate(Sender: TObject);
  private
    function GetNombre: String;
    procedure SetNombre(const Value: String);
    { Private declarations }
  public
    { Public declarations }
    property Nombre: String read GetNombre write SetNombre;
  end;

implementation

{$R *.dfm}

uses ListasRestringidasDM, ListasRestringidasEdit;

procedure TfrmListasRestringidas.FormCreate(Sender: TObject);
begin
  inherited;
  gEditForm := TfrmListasRestringidasEdit.Create(Self);
  ApplyBestFit:= False;
end;

function TfrmListasRestringidas.GetNombre: String;
begin
  Result := edtNombre.EditValue;
end;

procedure TfrmListasRestringidas.SetNombre(const Value: String);
begin
  edtNombre.EditValue := Value;
end;

end.
