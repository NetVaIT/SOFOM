unit EvaluacionesRiesgoForm;

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
  Vcl.ExtCtrls, cxLabel, dxColorEdit, cxBarEditItem, cxPropertiesStore;

type
  TfrmEvaluacionesRiesgo = class(T_frmGrid)
    tvMasterIdMRCuestionarioAplicado: TcxGridDBColumn;
    tvMasterIdMRCuestionario: TcxGridDBColumn;
    tvMasterIDPersona: TcxGridDBColumn;
    tvMasterFecha: TcxGridDBColumn;
    tvMasterPonderacionTotal: TcxGridDBColumn;
    tvMasterIdUsuario: TcxGridDBColumn;
    tvMasterFechaVencimiento: TcxGridDBColumn;
    tvMasterCliente: TcxGridDBColumn;
    tvMasterVersionCuestionario: TcxGridDBColumn;
    dxBrBtnAplicaCuestionario: TdxBarButton;
    cxBarEditItem1: TcxBarEditItem;
    cxStyleRepository1: TcxStyleRepository;
    cxStlLblPorVencer: TcxStyle;
    cxStlVencidos: TcxStyle;
    cxBarEditItem3: TcxBarEditItem;
    procedure FormCreate(Sender: TObject);
    procedure tvMasterCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
  private
    FactActAplicaCuestionario: TBasicAction;
    procedure SetFActAplicaCuestionario(const Value: TBasicAction);

    { Private declarations }
  public
    { Public declarations }
    Property ActAplicaCuestionario:TBasicAction read FactActAplicaCuestionario write SetFActAplicaCuestionario;
  end;

var
  frmEvaluacionesRiesgo: TfrmEvaluacionesRiesgo;

implementation

{$R *.dfm}

uses EvaluacionesRiesgoDM, EvaluacionesRiesgoEdit;

procedure TfrmEvaluacionesRiesgo.FormCreate(Sender: TObject);
begin
  inherited;
  gEditForm:= TfrmEvaluacionesRiesgoEdit.Create(Self);
end;



procedure TfrmEvaluacionesRiesgo.SetFActAplicaCuestionario(
  const Value: TBasicAction);
begin
  FactActAplicaCuestionario := Value;
  dxBrBtnAplicaCuestionario.Action:=Value;
  dxBrBtnAplicaCuestionario.ImageIndex:=19;
end;

procedure TfrmEvaluacionesRiesgo.tvMasterCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var FecVenAct:TDateTime;
    i :Integer ;
    TExtoFec:String;
begin
  inherited;
//  if not datasource.DataSet.FieldByName('fechaVencimiento').isNull then
  begin
    if tvMaster.GetColumnByFieldName('FechaVencimiento')<>nil then
    begin
      i := tvMaster.GetColumnByFieldName('FechaVencimiento').Index;
      TExtoFec:=VarAsType(AViewInfo.GridRecord.DisplayTexts[i], varString);
      FecVenAct:=StrToDateTime(TextoFec);
      if FecVenAct <= date then   //vencidos
      begin
        if not AViewInfo.Selected then
          ACanvas.Canvas.Font.Color := clRed
      end
      else   if FecVenAct <= (date+30) then    //Por vencer
      begin
         if not AViewInfo.Selected then
           ACanvas.Canvas.Font.Color :=$000185DC; //$00FF0080;//clFuchsia;//$000B52F9;//clMaroon;

      end;

    end;
  end;

end;

end.
