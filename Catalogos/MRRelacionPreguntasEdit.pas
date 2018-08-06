unit MRRelacionPreguntasEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, _EditForm, dxSkinsCore, dxSkinBlack,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxPCdxBarPopupMenu,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls, cxPC,
  cxContainer, cxEdit, cxTextEdit, cxDBEdit, Vcl.DBCtrls, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxLabel,
  cxDBLabel;

type
  TfrmRelacionPreguntasEdit = class(T_frmEdit)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    DSConPreguntas: TDataSource;
    DSConOpciones: TDataSource;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    cxDBLblPaquete: TcxDBLabel;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
  private
    FDataSetPreguntas: TDataSet;
    FDataSetOpciones: TDataSet;
    procedure SetDataSetOpciones(const Value: TDataSet);
    procedure SetDataSetPreguntas(const Value: TDataSet);
    { Private declarations }
  public
    { Public declarations }
   property DataSetPreguntas: TDataSet read FDataSetPreguntas write SetDataSetPreguntas;
   property DataSetOpciones: TDataSet read FDataSetOpciones write SetDataSetOpciones;

  end;

var
  frmRelacionPreguntasEdit: TfrmRelacionPreguntasEdit;

implementation

{$R *.dfm}

uses MRPaquetesPreguntasDM;




{ TfrmRelacionPreguntasEdit }

procedure TfrmRelacionPreguntasEdit.SetDataSetOpciones(const Value: TDataSet);
begin
  FDataSetOpciones := Value;
  DSConOpciones.DataSet:= Value;
end;

procedure TfrmRelacionPreguntasEdit.SetDataSetPreguntas(const Value: TDataSet);
begin
  FDataSetPreguntas := Value;
  DSConPreguntas.DataSet:= Value;
end;

end.
