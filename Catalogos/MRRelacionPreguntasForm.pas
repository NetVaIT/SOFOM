unit MRRelacionPreguntasForm;

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
  Vcl.ExtCtrls;

type
  TfrmRelacionPreguntas = class(T_frmGrid)
    tvMasterIdMRRelacionPregunta: TcxGridDBColumn;
    tvMasterIdMRPaquetePregunta: TcxGridDBColumn;
    tvMasterIdMRPregunta: TcxGridDBColumn;
    tvMasterIdMRPreguntaOpcion: TcxGridDBColumn;
    tvMasterValorCondicionante: TcxGridDBColumn;
    tvMasterPregunta: TcxGridDBColumn;
    tvMasterOpcion: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FDataSetPreguntas: TDataSet;
    FDataSetOpciones: TDataSet;
    { Private declarations }
  public
    { Public declarations }
    property DataSetPreguntas: TDataSet read FDataSetPreguntas write FDataSetPreguntas;
    property DataSetOpciones: TDataSet read FDataSetOpciones write FDataSetOpciones;
  end;

var
  frmRelacionPreguntas: TfrmRelacionPreguntas;

implementation

{$R *.dfm}

uses MRPaquetesPreguntasDM, MRRelacionPreguntasEdit;

procedure TfrmRelacionPreguntas.FormCreate(Sender: TObject);
begin
  inherited;
  gEditForm:= TfrmRelacionPreguntasEdit.Create(Self);
end;

procedure TfrmRelacionPreguntas.FormShow(Sender: TObject);
begin
  inherited;
  TfrmRelacionPreguntasEdit(gEditForm).DataSetPreguntas:= DataSetPreguntas;
  TfrmRelacionPreguntasEdit(gEditForm).DataSetOpciones:= DataSetOpciones;
end;

end.
