unit PersonasForm;

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
  TfrmPersonas = class(T_frmGrid)
    tvMasterIdPersona: TcxGridDBColumn;
    tvMasterRFC: TcxGridDBColumn;
    tvMasterIdPersonaTipo: TcxGridDBColumn;
    tvMasterIdRazonSocialTipo: TcxGridDBColumn;
    tvMasterIdSexo: TcxGridDBColumn;
    tvMasterIdEstadoCivil: TcxGridDBColumn;
    tvMasterIdPais: TcxGridDBColumn;
    tvMasterIdPoblacion: TcxGridDBColumn;
    tvMasterPersonaTipo: TcxGridDBColumn;
    tvMasterRazonSocial: TcxGridDBColumn;
    tvMasterRazonSocialTipo: TcxGridDBColumn;
    tvMasterNombre: TcxGridDBColumn;
    tvMasterApellidoPaterno: TcxGridDBColumn;
    tvMasterApellidoMaterno: TcxGridDBColumn;
    tvMasterFechaNacimiento: TcxGridDBColumn;
    tvMasterSexo: TcxGridDBColumn;
    tvMasterEstadoCivil: TcxGridDBColumn;
    tvMasterPais: TcxGridDBColumn;
    tvMasterCURP: TcxGridDBColumn;
    tvMasterLugarNacimiento: TcxGridDBColumn;
    tvMasterIdPersonaTitular: TcxGridDBColumn;
    tvMasterTitular: TcxGridDBColumn;
    tvMasterVigenciaFM34: TcxGridDBColumn;
    tvMasterIdRolTipo: TcxGridDBColumn;
    tvMasterRolTipo: TcxGridDBColumn;
    btnAccionistas: TdxBarButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FRolTipo: TRolTipo;
    FactAccionistas: TBasicAction;
    procedure SetRolTipo(const Value: TRolTipo);
    procedure SetactAccionistas(const Value: TBasicAction);
  public
    { Public declarations }
    property RolTipo: TRolTipo read FRolTipo write SetRolTipo;
    property actAccionistas: TBasicAction read FactAccionistas write SetactAccionistas;
  end;

implementation

{$R *.dfm}

uses PersonasEdit;

procedure TfrmPersonas.FormCreate(Sender: TObject);
begin
  inherited;
  gEditForm:= TfrmPersonaEdit.Create(Self);
end;

procedure TfrmPersonas.FormShow(Sender: TObject);
begin
  inherited;
  TfrmPersonaEdit(gEditForm).RolTipo := RolTipo;
  case RolTipo of
    rNone: begin
      Self.Caption := 'Personas';
//      tvMaster.Columns[tvMasterTitular.Index].Visible := true;
    end;
    rDuenoProceso: begin
      Self.Caption := 'Dueños de Proceso';
//      tvMaster.Columns[tvMasterTitular.Index].Visible := false;
    end;
    rOutSourcing: begin
      Self.Caption := 'OutSourcing';
//      tvMaster.Columns[tvMasterTitular.Index].Visible := false;
    end;
    rCliente: begin
      Self.Caption := 'Clientes';
//      tvMaster.Columns[tvMasterTitular.Index].Visible := false;
    end;
    rProveedor: begin
      Self.Caption := 'Proveedores';
//      tvMaster.Columns[tvMasterTitular.Index].Visible := false;
    end;
    rEmpleado: begin
      Self.Caption := 'Empleados';
//      tvMaster.Columns[tvMasterTitular.Index].Visible := true;
    end;
    rSocio: begin
      Self.Caption := 'Socios';
//      tvMaster.Columns[tvMasterTitular.Index].Visible := false;
    end;
    rComisionista: begin
      Self.Caption := 'Comisionistas';
//      tvMaster.Columns[tvMasterTitular.Index].Visible := true;
    end;
    rEmisor: begin
      Self.Caption := 'Emisor';
//      tvMaster.Columns[tvMasterTitular.Index].Visible := true;
    end;
  end;
end;

procedure TfrmPersonas.SetactAccionistas(const Value: TBasicAction);
begin
  FactAccionistas := Value;
  btnAccionistas.Action := Value;
end;

procedure TfrmPersonas.SetRolTipo(const Value: TRolTipo);
begin
  FRolTipo := Value;
end;

end.
