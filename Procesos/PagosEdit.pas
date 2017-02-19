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
    Label7: TLabel;
    cxDBMemo1: TcxDBMemo;
    DSPersonas: TDataSource;
    PnlDatosBase: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLkpCmbBxCliente: TDBLookupComboBox;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBLabel1: TcxDBLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBRdGrpOrigenPago: TcxDBRadioGroup;
    procedure DBLkpCmbBxClienteClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxDBTextEdit3Exit(Sender: TObject);
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

procedure TFrmEdPagos.cxDBTextEdit3Exit(Sender: TObject);
begin
  inherited;
  if datasource.State in [dsinsert,dsEdit] then //Feb 16/17
    DataSource.DataSet.FieldByName('Saldo').Value:= DataSource.DataSet.FieldByName('Importe').Value;//VAlue  feb 19/17
end;

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

procedure TFrmEdPagos.FormShow(Sender: TObject);
begin
  inherited;
  PnlDatosBase.Enabled:=DataSource.DataSet.FieldByName('Saldo').AsFloat= DataSource.DataSet.FieldByName('Importe').AsFloat;
end;

end.
