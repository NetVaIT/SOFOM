unit PersonasRolesFacturacionEdit;

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
  TfrmPersonasRolesFacturacionEdit = class(T_frmEdit)
    Label1: TLabel;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label3: TLabel;
    cxDBLabel1: TcxDBLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    btnUpdateFile: TSpeedButton;
  private
    { Private declarations }
    FUpdateFile: TBasicAction;
    procedure SetUpdateFile(const Value: TBasicAction);
  public
    { Public declarations }
    property UpdateFile: TBasicAction read FUpdateFile write SetUpdateFile;
  end;

implementation

{$R *.dfm}

uses PersonasRolesFacturacionDM;

{ TfrmPersonasRolesFacturacionEdit }

procedure TfrmPersonasRolesFacturacionEdit.SetUpdateFile(
  const Value: TBasicAction);
begin
  FUpdateFile := Value;
  btnUpdateFile.Action := Value;
end;

end.
