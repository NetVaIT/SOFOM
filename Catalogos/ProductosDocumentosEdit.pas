unit ProductosDocumentosEdit;

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
  cxContainer, cxEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit,
  cxTextEdit, Vcl.DBCtrls, cxLabel, cxDBLabel, Vcl.Buttons;

type
  TfrmProductosDocumentosEdit = class(T_frmEdit)
    Label1: TLabel;
    btnUpdateFile: TSpeedButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cxDBLabel1: TcxDBLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBDateEdit1: TcxDBDateEdit;
  private
    FUpdateFile: TBasicAction;
    procedure SetUpdateFile(const Value: TBasicAction);
    { Private declarations }
  public
    { Public declarations }
    property UpdateFile: TBasicAction read FUpdateFile write SetUpdateFile;
  end;

implementation

{$R *.dfm}

uses ProductosDocumentosDM;

{ TfrmProductosDocumentosEdit }

procedure TfrmProductosDocumentosEdit.SetUpdateFile(const Value: TBasicAction);
begin
  FUpdateFile := Value;
  btnUpdateFile.Action := Value;
end;

end.
