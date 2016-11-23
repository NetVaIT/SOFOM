unit CuentasBancariasEdit;

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
  Vcl.DBCtrls, cxContainer, cxEdit, cxTextEdit, cxDBEdit, cxCurrencyEdit,
  Vcl.ExtDlgs, Vcl.Buttons, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, CuentasBancariasDocumentosDM, cxLabel,
  cxDBLabel;

type
  TfrmCuentasBancariasEdit = class(T_frmEdit)
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label3: TLabel;
    Label4: TLabel;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    tsExpedienteDigital: TcxTabSheet;
    btnUpdateFile: TSpeedButton;
    cxDBLabel1: TcxDBLabel;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FUpdateFile: TBasicAction;
    dmCuentasBancariasDocumentos: TdmCuentasBancariasDocumentos;
    procedure SetUpdateFile(const Value: TBasicAction);
  public
    { Public declarations }
    property UpdateFile: TBasicAction read FUpdateFile write SetUpdateFile;
  end;

implementation

{$R *.dfm}

uses CuentasBancariasDM;

procedure TfrmCuentasBancariasEdit.FormCreate(Sender: TObject);
begin
  inherited;
  dmCuentasBancariasDocumentos := TdmCuentasBancariasDocumentos.Create(nil);
end;

procedure TfrmCuentasBancariasEdit.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(dmCuentasBancariasDocumentos);
end;

procedure TfrmCuentasBancariasEdit.FormShow(Sender: TObject);
begin
  inherited;
  dmCuentasBancariasDocumentos.MasterSource := DataSource;
  dmCuentasBancariasDocumentos.MasterFields := 'IdCuentaBancaria';
  dmCuentasBancariasDocumentos.ShowModule(tsExpedienteDigital,'');
  if DataSource.DataSet.State In [dsInsert] then
    tsExpedienteDigital.TabVisible := False
  else
    tsExpedienteDigital.TabVisible := True;
end;

procedure TfrmCuentasBancariasEdit.SetUpdateFile(const Value: TBasicAction);
begin
  FUpdateFile := Value;
  btnUpdateFile.Action := Value;
end;

end.
