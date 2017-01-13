unit PagosEdit;

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
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxMemo, cxDBEdit, Vcl.DBCtrls, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, Vcl.StdCtrls, Vcl.ImgList, System.Actions, Vcl.ActnList, Data.DB,
  Vcl.ExtCtrls, cxPC, cxLabel, cxDBLabel, cxGroupBox, cxRadioGroup;

type
  TFrmEdPagos = class(T_frmEdit)
    Label1: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label4: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label5: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label9: TLabel;
    DBLkpCmbBxCliente: TDBLookupComboBox;
    cxDBMemo1: TcxDBMemo;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBLabel1: TcxDBLabel;
    Label10: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    Label11: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    DSPersonas: TDataSource;
    cxDBRdGrpOrigenPago: TcxDBRadioGroup;
    procedure DBLkpCmbBxClienteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEdPagos: TFrmEdPagos;

implementation

{$R *.dfm}

uses PagosDM;

procedure TFrmEdPagos.DBLkpCmbBxClienteClick(Sender: TObject);
begin//Dic 19/16
  inherited;
  if datasource.state in[dsEdit,dsInsert]  then
  begin
    if not dsPersonas.dataset.Fieldbyname('IdMetodoPago').Isnull then
     begin
       datasource.dataset.FieldByName('IdMetodoPago').AsInteger:= dsPersonas.dataset.Fieldbyname('IdMetodoPago').AsInteger;
       datasource.dataset.FieldByName('CuentaPago').AsString:=dsPersonas.dataset.Fieldbyname('NumCtaPagoCliente').AsString;
     end;
  end;
end;

end.
