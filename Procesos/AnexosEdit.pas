unit AnexosEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.UITypes, _EditForm, dxSkinsCore, dxSkinBlack,
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
  cxContainer, cxEdit, cxSpinEdit, cxDBEdit, cxCurrencyEdit, Vcl.DBCtrls,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxTextEdit, cxGroupBox, cxButtonEdit,
  ProductosDM, cxCheckBox, Vcl.Menus, cxButtons;

type
  TfrmAnexosEdit = class(T_frmEdit)
    tsSegmentos: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    edtIdentificador: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxGroupBox5: TcxGroupBox;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label5: TLabel;
    Label29: TLabel;
    cxDBTextEdit15: TcxDBTextEdit;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    cxDBSpinEdit2: TcxDBSpinEdit;
    cxDBTextEdit16: TcxDBTextEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBDateEdit3: TcxDBDateEdit;
    cxDBTextEdit21: TcxDBTextEdit;
    Label10: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    tsProductos: TcxTabSheet;
    edtTipoCambio: TcxDBButtonEdit;
    Label12: TLabel;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
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
    cxDBTextEdit13: TcxDBTextEdit;
    cxDBTextEdit14: TcxDBTextEdit;
    cxGroupBox3: TcxGroupBox;
    Label17: TLabel;
    Label25: TLabel;
    cxDBTextEdit17: TcxDBTextEdit;
    cxDBTextEdit18: TcxDBTextEdit;
    cxGroupBox4: TcxGroupBox;
    Label26: TLabel;
    Label27: TLabel;
    cxDBTextEdit19: TcxDBTextEdit;
    cxDBTextEdit20: TcxDBTextEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    Label28: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    cxDBCurrencyEdit5: TcxDBCurrencyEdit;
    cxGroupBox6: TcxGroupBox;
    Label30: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label31: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label32: TLabel;
    cxDBTextEdit22: TcxDBTextEdit;
    Label33: TLabel;
    cxDBDateEdit4: TcxDBDateEdit;
    Label34: TLabel;
    cxDBDateEdit5: TcxDBDateEdit;
    btnAjustar: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actPostExecute(Sender: TObject);
  private
    { Private declarations }
    dmProductos: TdmProductos;
    FactGetTipoCambio: TBasicAction;
    FactAjustarMensualidad1: TBasicAction;
    procedure SetactGetTipoCambio(const Value: TBasicAction);
    procedure SetactAjustarMensualidad1(const Value: TBasicAction);
  public
    { Public declarations }
    property actGetTipoCambio: TBasicAction read FactGetTipoCambio write SetactGetTipoCambio;
    property actAjustarMensualidad1: TBasicAction read FactAjustarMensualidad1 write SetactAjustarMensualidad1;
  end;

implementation

{$R *.dfm}

uses ContratosDM;

procedure TfrmAnexosEdit.actPostExecute(Sender: TObject);
var
  IdAnexo: Integer;
begin
  if DataSource.DataSet.FieldByName('IdAnexo').IsNull then
    IdAnexo := 0
  else
    IdAnexo := DataSource.DataSet.FieldByName('IdAnexo').Value;
  if dmProductos.GetCountProductos(IdAnexo) = 0 then
    MessageDlg(strNeedProduct, mtInformation, [mbOK], 0)
  else
    if dmProductos.GetTotalPorcentajeAnexo(IdAnexo) <> 100 then
      MessageDlg(strProductsPercentage, mtInformation, [mbOK], 0)
    else
      inherited;
end;

procedure TfrmAnexosEdit.FormCreate(Sender: TObject);
begin
  inherited;
  dmProductos:= TdmProductos.Create(Self);
end;

procedure TfrmAnexosEdit.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(dmProductos);
end;

procedure TfrmAnexosEdit.FormShow(Sender: TObject);
begin
  inherited;
  dmProductos.MasterSource := DataSource;
  dmProductos.MasterFields := 'IdAnexo';
  dmProductos.ShowModule(tsProductos,'');
  if edtIdentificador.CanFocus then
    edtIdentificador.SetFocus;
end;

procedure TfrmAnexosEdit.SetactAjustarMensualidad1(const Value: TBasicAction);
begin
  FactAjustarMensualidad1 := Value;
  btnAjustar.Action := Value
end;

procedure TfrmAnexosEdit.SetactGetTipoCambio(const Value: TBasicAction);
begin
  FactGetTipoCambio := Value;
  edtTipoCambio.Properties.Buttons[0].Action:= Value;
end;

end.
