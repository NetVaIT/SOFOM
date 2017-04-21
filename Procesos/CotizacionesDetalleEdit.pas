unit CotizacionesDetalleEdit;

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
  cxContainer, cxEdit, cxSpinEdit, cxDBEdit, cxCurrencyEdit, cxButtonEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, Vcl.DBCtrls, cxTextEdit, cxGroupBox;

type
  TfrmCotizacionesDetalleEdit = class(T_frmEdit)
    cxGroupBox1: TcxGroupBox;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label28: TLabel;
    Label31: TLabel;
    edtPrecio: TcxDBTextEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBDateEdit4: TcxDBDateEdit;
    cxDBTextEdit22: TcxDBTextEdit;
    edtTipoCambio: TcxDBButtonEdit;
    cxGroupBox4: TcxGroupBox;
    Label17: TLabel;
    Label25: TLabel;
    cxDBTextEdit17: TcxDBTextEdit;
    cxDBTextEdit18: TcxDBTextEdit;
    cxGroupBox5: TcxGroupBox;
    Label26: TLabel;
    Label27: TLabel;
    cxDBTextEdit19: TcxDBTextEdit;
    cxDBTextEdit20: TcxDBTextEdit;
    cxGroupBox2: TcxGroupBox;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBTextEdit11: TcxDBTextEdit;
    cxDBTextEdit12: TcxDBTextEdit;
    cxDBSpinEdit1: TcxDBSpinEdit;
    cxDBTextEdit13: TcxDBTextEdit;
    cxDBTextEdit14: TcxDBTextEdit;
    cxGroupBox3: TcxGroupBox;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    cxDBTextEdit15: TcxDBTextEdit;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    cxDBSpinEdit2: TcxDBSpinEdit;
    cxDBTextEdit16: TcxDBTextEdit;
    Label30: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    cxGroupBox6: TcxGroupBox;
    Label29: TLabel;
    edtImpactoISR: TcxDBButtonEdit;
    Label1: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label2: TLabel;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
    Label3: TLabel;
    cxDBCurrencyEdit5: TcxDBCurrencyEdit;
    Label5: TLabel;
    cxDBCurrencyEdit6: TcxDBCurrencyEdit;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FactGetTipoCambio: TBasicAction;
    FactGetImpactoISR: TBasicAction;
    procedure SetactGetTipoCambio(const Value: TBasicAction);
    procedure SetactGetImpactoISR(const Value: TBasicAction);
  public
    { Public declarations }
    property actGetTipoCambio: TBasicAction read FactGetTipoCambio write SetactGetTipoCambio;
    property actGetImpactoISR: TBasicAction read FactGetImpactoISR write SetactGetImpactoISR;
  end;

implementation

{$R *.dfm}

uses CotizacionesDM;

{ TfrmCotizacionesDetalleEdit }

procedure TfrmCotizacionesDetalleEdit.FormShow(Sender: TObject);
begin
  inherited;
  if edtPrecio.CanFocus then
    edtPrecio.SetFocus;
end;

procedure TfrmCotizacionesDetalleEdit.SetactGetImpactoISR(
  const Value: TBasicAction);
begin
  FactGetImpactoISR := Value;
  edtImpactoISR.Properties.Buttons[0].Action:= Value;
end;

procedure TfrmCotizacionesDetalleEdit.SetactGetTipoCambio(
  const Value: TBasicAction);
begin
  FactGetTipoCambio := Value;
  edtTipoCambio.Properties.Buttons[0].Action:= Value;
end;

end.
