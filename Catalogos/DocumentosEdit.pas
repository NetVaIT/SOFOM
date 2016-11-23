unit DocumentosEdit;

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
  cxContainer, cxEdit, cxMaskEdit, cxDropDownEdit, cxBlobEdit, cxDBEdit,
  cxTextEdit, DBTables, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  Vcl.DBCtrls, Vcl.Buttons, cxButtonEdit;

type
  TfrmDocumentosEdit = class(T_frmEdit)
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label3: TLabel;
    Label4: TLabel;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    edtArchivo: TcxDBButtonEdit;
  private
    { Private declarations }
    FactLoadFile: TBasicAction;
    FactViewFile: TBasicAction;
    FactSaveFile: TBasicAction;
    FactMD5File: TBasicAction;
    procedure SetactLoadFile(const Value: TBasicAction);
    procedure SetactSaveFile(const Value: TBasicAction);
    procedure SetactViewFile(const Value: TBasicAction);
    procedure SetactMD5File(const Value: TBasicAction);
  public
    { Public declarations }
    property actLoadFile: TBasicAction read FactLoadFile write SetactLoadFile;
    property actSaveFile: TBasicAction read FactSaveFile write SetactSaveFile;
    property actViewFile: TBasicAction read FactViewFile write SetactViewFile;
    property actMD5File: TBasicAction read FactMD5File write SetactMD5File;
  end;

implementation

{$R *.dfm}

uses DocumentosDM;

procedure TfrmDocumentosEdit.SetactLoadFile(const Value: TBasicAction);
begin
  FactLoadFile := Value;
  edtArchivo.Properties.Buttons[0].Action:= Value;
end;

procedure TfrmDocumentosEdit.SetactMD5File(const Value: TBasicAction);
begin
  FactMD5File := Value;
  edtArchivo.Properties.Buttons[3].Action:= Value;
end;

procedure TfrmDocumentosEdit.SetactSaveFile(const Value: TBasicAction);
begin
  FactSaveFile := Value;
  edtArchivo.Properties.Buttons[1].Action:= Value;
end;

procedure TfrmDocumentosEdit.SetactViewFile(const Value: TBasicAction);
begin
  FactViewFile := Value;
  edtArchivo.Properties.Buttons[2].Action:= Value;
end;

end.
