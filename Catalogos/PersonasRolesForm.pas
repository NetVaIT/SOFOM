unit PersonasRolesForm;

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
  cxGridTableView, cxGridDBTableView, cxGrid, Vcl.ExtCtrls, PersonasDM,
  Vcl.StdCtrls, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxRibbonPainter,
  dxPSCore, dxPScxCommon;

type
  TfrmPersonasRoles = class(T_frmGrid)
    tvMasterIdPersonaRol: TcxGridDBColumn;
    tvMasterIdPersona: TcxGridDBColumn;
    tvMasterIdPersonaRelacionada: TcxGridDBColumn;
    tvMasterIdRol: TcxGridDBColumn;
    tvMasterIdRolEsquemaPago: TcxGridDBColumn;
    tvMasterIdRolEstatus: TcxGridDBColumn;
    tvMasterIdRolClase: TcxGridDBColumn;
    tvMasterRol: TcxGridDBColumn;
    tvMasterPersonaRelacionada: TcxGridDBColumn;
    tvMasterRolEstatus: TcxGridDBColumn;
    tvMasterRolClase: TcxGridDBColumn;
    tvMasterFechaIngreso: TcxGridDBColumn;
    tvMasterFechaBaja: TcxGridDBColumn;
    cxsRol: TcxStyle;
    tvMasterIdRolTipo: TcxGridDBColumn;
    tvMasterFacturar: TcxGridDBColumn;
    tvMasterCalcular: TcxGridDBColumn;
    tvMasterPorcentajeCalculo: TcxGridDBColumn;
    tvMasterRegistroPatronalIMSS: TcxGridDBColumn;
    tvMasterNSS: TcxGridDBColumn;
    tvMasterFechaAltaIMSS: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure tvMasterStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
  private
    { Private declarations }
    FRol: TPRol;
    procedure SetRol(const Value: TPRol);
  public
    { Public declarations }
    property Rol: TPRol read FRol write SetRol;
  end;

implementation

{$R *.dfm}

uses PersonasRolesEdit;

procedure TfrmPersonasRoles.FormCreate(Sender: TObject);
begin
  inherited;
  gEditForm:= TfrmPersonaRolesEdit.Create(Self);
end;

procedure TfrmPersonasRoles.SetRol(const Value: TPRol);
begin
  FRol := Value;
  TfrmPersonaRolesEdit(gEditForm).Rol:= Value;
end;

procedure TfrmPersonasRoles.tvMasterStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  inherited;
  if (ARecord <> nil) and (AItem <> nil) then
  begin
    if ARecord.Values[tvMasterIdRolTipo.Index] = Ord(Rol) then
      AStyle := cxsRol;
  end;

end;

end.
