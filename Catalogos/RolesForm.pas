unit RolesForm;

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
  cxGridTableView, cxGridDBTableView, cxGrid, Vcl.ExtCtrls,
  RolesEsquemasPagosDM, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxSkinsdxRibbonPainter, dxPSCore, dxPScxCommon, Vcl.StdCtrls;

type
  TfrmRoles = class(T_frmGrid)
    tvMasterIdRol: TcxGridDBColumn;
    tvMasterIdRolTipo: TcxGridDBColumn;
    tvMasterIdEsquemaPago: TcxGridDBColumn;
    tvMasterIdentificador: TcxGridDBColumn;
    tvMasterDescripcion: TcxGridDBColumn;
    tvMasterRolTipo: TcxGridDBColumn;
    tvMasterEsquemaPago: TcxGridDBColumn;
    tvMasterIdDocumento: TcxGridDBColumn;
    tvMasterDocumento: TcxGridDBColumn;
    tvMasterIdRegimenFiscal: TcxGridDBColumn;
    tvMasterRegimenFiscal: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
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

uses RolesDM, RolesEdit;

procedure TfrmRoles.FormCreate(Sender: TObject);
begin
  inherited;
  gEditForm:= TfrmRolesEdit.Create(Self);
//  dmRolesEsquemasPagos:= TdmRolesEsquemasPagos.Create(nil);
end;

procedure TfrmRoles.FormDestroy(Sender: TObject);
begin
  inherited;
//  FreeAndNil(dmRolesEsquemasPagos);
end;

procedure TfrmRoles.FormShow(Sender: TObject);
begin
  inherited;
//  dmRolesEsquemasPagos.MasterSource:= DataSource;
//  dmRolesEsquemasPagos.ShowModule(pnlDetail1);
  TfrmRolesEdit(gEditForm).UpdateFile := UpdateFile;
end;

end.
