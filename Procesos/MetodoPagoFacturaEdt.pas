unit MetodoPagoFacturaEdt;       //Para Cambiara de metodo de Pago en Factura Jul 10/17

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  cxEdit, Data.DB, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, Vcl.StdCtrls, Vcl.ExtCtrls, cxPC,
  Vcl.DBCtrls, cxMemo;

type
  TFrmMetodoPagoFactura = class(TForm)
    pcMain: TcxPageControl;
    tsGeneral: TcxTabSheet;
    Label2: TLabel;
    pmlMain: TPanel;
    btnCancel: TButton;
    btnOk: TButton;
    DSMetodoPago: TDataSource;
    PnlCuenta: TPanel;
    Label1: TLabel;
    cxTxtEdtCuenta: TcxTextEdit;
    DBLkpCmbBxMetodoPago: TDBLookupComboBox;
    Label3: TLabel;
    cxMmObserva: TcxMemo;
    procedure cxDBLkpCmbBxMetodoPagoClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure DBLkpCmbBxMetodoPagoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FIDMetSeleccion: integer;
    FCuentaSeleccion: String;
    FComplemConcepto: String;
    { Private declarations }
  public
    { Public declarations }
    property IdMetSeleccion: integer read FIDMetSeleccion write FIdMetSeleccion;
    Property CuentaSeleccion:String read FCuentaSeleccion write FCuentaSeleccion;
    Property ComplemConcepto:String read FComplemConcepto write FComplemConcepto;  //Ago 30/17
  end;

var
  FrmMetodoPagoFactura: TFrmMetodoPagoFactura;

implementation

{$R *.dfm}

uses CuentasXCobrarDM;

procedure TFrmMetodoPagoFactura.btnOkClick(Sender: TObject);
begin
  FIDMetSeleccion:= DBLkpCmbBxMetodoPago.keyvalue;
  if pnlcuenta.visible then
    FCuentaSeleccion:= cxTxtEdtCuenta.Text
  else
    FCuentaSeleccion:='';

  FComplemConcepto:= cxMmObserva.Text; //Ago 30/17

end;

procedure TFrmMetodoPagoFactura.cxDBLkpCmbBxMetodoPagoClick(Sender: TObject);
begin
  pnlcuenta.visible:=dsmetodoPago.dataset.fieldbyname('ExigeCuenta').asinteger=1;
  if pnlcuenta.visible then
    cxtxtEdtCuenta.setFocus;
end;

procedure TFrmMetodoPagoFactura.DBLkpCmbBxMetodoPagoClick(Sender: TObject);
begin
  pnlcuenta.visible:=dsmetodoPago.dataset.fieldbyname('ExigeCuenta').asinteger=1;
  if pnlcuenta.visible then
    cxtxtEdtCuenta.setFocus;
end;

procedure TFrmMetodoPagoFactura.FormCreate(Sender: TObject);
begin
  if dsmetodoPago.DataSet <>nil then
    dsmetodoPago.DataSet.Open;  //No tiene aun datos
end;

procedure TFrmMetodoPagoFactura.FormDestroy(Sender: TObject);
begin
   dsmetodoPago.DataSet.Close;
end;

procedure TFrmMetodoPagoFactura.FormShow(Sender: TObject);
begin
  dsmetodoPago.DataSet.open; //Aca deberia traer valor
  DBLkpCmbBxMetodoPago.KeyValue:=IdMetSeleccion;
  pnlcuenta.Visible:= CuentaSeleccion <>'';
  cxTxtEdtCuenta.Text:=CuentaSeleccion;
end;

end.
