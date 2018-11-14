unit PersonasAccionistasForm;

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
  Vcl.ExtCtrls, cxPropertiesStore;

type
  TfrmPersonasAccionistas = class(T_frmGrid)
    tvMasterIdPersonaAccionista: TcxGridDBColumn;
    tvMasterIdPersona: TcxGridDBColumn;
    tvMasterIdAccionista: TcxGridDBColumn;
    tvMasterAccionista: TcxGridDBColumn;
    tvMasterPorcentaje: TcxGridDBColumn;
    tvMasterCargo: TcxGridDBColumn;
    tvMasterNivelControl1: TcxGridDBColumn;
    tvMasterNivelControl2: TcxGridDBColumn;
    tvMasterNivelControl3: TcxGridDBColumn;
    tvMasterNivelControl4: TcxGridDBColumn;
    tvMasterNivelControl5: TcxGridDBColumn;
    btnAccionistas: TdxBarButton;
    btnAdministradores: TdxBarButton;
    procedure FormCreate(Sender: TObject);
  private
    FactAccionistas: TBasicAction;
    FactAdminostradores: TBasicAction;
    procedure SetactAccionistas(const Value: TBasicAction);
    procedure SetactAdminostradores(const Value: TBasicAction);
    { Private declarations }
  public
    { Public declarations }
    property actAccionistas: TBasicAction read FactAccionistas write SetactAccionistas;
    property actAdminostradores: TBasicAction read FactAdminostradores write SetactAdminostradores;
  end;

implementation

{$R *.dfm}

uses PersonasAccionistasDM, PersonasAccionistasEdit;

procedure TfrmPersonasAccionistas.FormCreate(Sender: TObject);
begin
  inherited;
  gEditForm:= TfrmPersonasAccionistasEdit.Create(Self);
end;

procedure TfrmPersonasAccionistas.SetactAccionistas(const Value: TBasicAction);
begin
  FactAccionistas := Value;
  btnAccionistas.Action := Value;
end;

procedure TfrmPersonasAccionistas.SetactAdminostradores(
  const Value: TBasicAction);
begin
  FactAdminostradores := Value;
  btnAdministradores.Action := Value;
end;

end.
