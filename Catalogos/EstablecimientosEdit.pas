unit EstablecimientosEdit;

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
  cxContainer, cxEdit, cxTextEdit, cxDBEdit, cxMaskEdit, cxSpinEdit, Vcl.DBCtrls,
  Vcl.Buttons, cxLabel, cxDBLabel, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox;

type
  TfrmEstablecimientosEdit = class(T_frmEdit)
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label3: TLabel;
    cxDBLabel1: TcxDBLabel;
    btnUpdate: TSpeedButton;
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

uses EstablecimientosDM, DomiciliosDM;

{ TfrmEstablecimiento }

procedure TfrmEstablecimientosEdit.SetUpdateDomicilio(const Value: TBasicAction);
begin
  FUpdateDomicilio := Value;
  btnUpdate.Action:= Value;
end;

end.
