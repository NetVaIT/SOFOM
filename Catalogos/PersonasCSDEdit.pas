unit PersonasCSDEdit;

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
  cxLabel, cxDBLabel, cxTextEdit, Vcl.Buttons;

type
  TfrmPersonasCSDEdit = class(T_frmEdit)
    Label1: TLabel;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label3: TLabel;
    cxDBLabel1: TcxDBLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    btnUpdateFileCER: TSpeedButton;
    Label4: TLabel;
    btnUpdateFileKEY: TSpeedButton;
    cxDBLabel2: TcxDBLabel;
  private
    FUpdateFileCER: TBasicAction;
    FUpdateFileKEY: TBasicAction;
    procedure SetUpdateFileCER(const Value: TBasicAction);
    procedure SetUpdateFileKEY(const Value: TBasicAction);
    { Private declarations }
  public
    { Public declarations }
    property UpdateFileCER: TBasicAction read FUpdateFileCER write SetUpdateFileCER;
    property UpdateFileKEY: TBasicAction read FUpdateFileKEY write SetUpdateFileKEY;
  end;

implementation

{$R *.dfm}

uses PersonasCSDDM;

{ TfrmPersonasCSDEdit }

procedure TfrmPersonasCSDEdit.SetUpdateFileCER(const Value: TBasicAction);
begin
  FUpdateFileCER := Value;
  btnUpdateFileCER.Action := Value;
end;

procedure TfrmPersonasCSDEdit.SetUpdateFileKEY(const Value: TBasicAction);
begin
  FUpdateFileKEY := Value;
  btnUpdateFileKEY.Action := Value;
end;

end.
