unit ConfiguracionesEdit;

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
  Vcl.DBCtrls, cxContainer, cxEdit, cxTextEdit, cxDBEdit, cxMaskEdit, cxSpinEdit,
  cxCurrencyEdit, Vcl.Menus, cxButtons;

type
  TfrmConfiguracionesEdit = class(T_frmEdit)
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label2: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label8: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label12: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label3: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label4: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label5: TLabel;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    Label6: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label7: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    Label9: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    Label10: TLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    Label11: TLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    Label13: TLabel;
    cxDBTextEdit9: TcxDBTextEdit;
    Label14: TLabel;
    cxDBTextEdit10: TcxDBTextEdit;
    Label15: TLabel;
    cxDBTextEdit11: TcxDBTextEdit;
    Label16: TLabel;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    Label17: TLabel;
    cxDBTextEdit12: TcxDBTextEdit;
    Label18: TLabel;
    cxDBTextEdit13: TcxDBTextEdit;
    btnGetPlantillaAmortizacion: TcxButton;
  private
    { Private declarations }
    FactGetPlantillaAmortizacion: TBasicAction;
    procedure SetactGetPlantillaAmortizacion(const Value: TBasicAction);
  public
    { Public declarations }
    property actGetPlantillaAmortizacion: TBasicAction read FactGetPlantillaAmortizacion write SetactGetPlantillaAmortizacion;
  end;

implementation

{$R *.dfm}

uses ConfiguracionDM;

{ TfrmConfiguracionesEdit }

procedure TfrmConfiguracionesEdit.SetactGetPlantillaAmortizacion(
  const Value: TBasicAction);
begin
  FactGetPlantillaAmortizacion := Value;
  btnGetPlantillaAmortizacion.Action := Value;
end;

end.
