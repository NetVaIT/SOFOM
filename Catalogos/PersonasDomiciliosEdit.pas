unit PersonasDomiciliosEdit;

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
  cxContainer, cxEdit, cxCheckBox, cxDBEdit, Vcl.DBCtrls, cxLabel, cxDBLabel,
  Vcl.Buttons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox;

type
  TfrmPersonasDomiciliosEdit = class(T_frmEdit)
    Label1: TLabel;
    Label2: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBLabel1: TcxDBLabel;
    btnUpdate: TSpeedButton;
    actUpdate: TAction;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
  private
    FUpdateDomicilio: TBasicAction;
    procedure SetUpdateDomicilio(const Value: TBasicAction);
    { Private declarations }
  public
    { Public declarations }
    property UpdateDomicilio: TBasicAction read FUpdateDomicilio write SetUpdateDomicilio;
  end;

implementation

{$R *.dfm}

uses PersonasDomiciliosDM;

{ TfrmPersonasDomiciliosEdit }

procedure TfrmPersonasDomiciliosEdit.SetUpdateDomicilio(
  const Value: TBasicAction);
begin
  FUpdateDomicilio := Value;
  btnUpdate.Action:= Value;
end;

end.
