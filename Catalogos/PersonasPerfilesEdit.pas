unit PersonasPerfilesEdit;

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
  cxContainer, cxEdit, cxMemo, cxDBEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, Vcl.Buttons, cxLabel, cxDBLabel;

type
  TfrmPersonasPerfilesEdit = class(T_frmEdit)
    Label1: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label3: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label4: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label5: TLabel;
    cxDBMemo1: TcxDBMemo;
    Label6: TLabel;
    cxDBLabel1: TcxDBLabel;
    btnUpdateFile: TSpeedButton;
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

uses PersonasPerfilesDM;

{ TfrmPersonasPerfilesEdit }

procedure TfrmPersonasPerfilesEdit.SetUpdateFile(const Value: TBasicAction);
begin
  FUpdateFile := Value;
  btnUpdateFile.Action := Value;
end;

end.
