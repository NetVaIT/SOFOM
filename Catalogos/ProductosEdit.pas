unit ProductosEdit;

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
  cxContainer, cxEdit, cxMaskEdit, cxSpinEdit, cxDBEdit, Vcl.DBCtrls, cxTextEdit,
  ProductosDocumentosDM, cxCurrencyEdit, cxDropDownEdit, cxCalendar, cxGroupBox;

type
  TfrmProductosEdit = class(T_frmEdit)
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    tsDocumentos: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    Label11: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label12: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    Label13: TLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    Label14: TLabel;
    cxDBDateEdit2: TcxDBDateEdit;
    Label15: TLabel;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    Label16: TLabel;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    Label17: TLabel;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    Label18: TLabel;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
    Label19: TLabel;
    cxDBCurrencyEdit5: TcxDBCurrencyEdit;
    Label20: TLabel;
    cxDBCurrencyEdit6: TcxDBCurrencyEdit;
    cxGroupBox4: TcxGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBSpinEdit1: TcxDBSpinEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    DBLookupComboBox4: TDBLookupComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    dmDocumentos: TdmProductosDocumentos;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses ProductosDM;

procedure TfrmProductosEdit.FormCreate(Sender: TObject);
begin
  inherited;
  dmDocumentos:= TdmProductosDocumentos.Create(nil);
end;

procedure TfrmProductosEdit.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(dmDocumentos);
end;

procedure TfrmProductosEdit.FormShow(Sender: TObject);
begin
  inherited;
  dmDocumentos.MasterSource := DataSource;
  dmDocumentos.MasterFields := 'IdProducto';
  dmDocumentos.ShowModule(tsDocumentos,'');
end;

end.
