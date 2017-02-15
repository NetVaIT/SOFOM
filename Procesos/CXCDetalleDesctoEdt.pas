unit CXCDetalleDesctoEdt;

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
  cxEdit, Data.DB, cxTextEdit, cxDBEdit, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, cxPC;

type
  TFrmAplicaDescuentosCXC = class(TForm)
    pcMain: TcxPageControl;
    tsGeneral: TcxTabSheet;
    PnlBotones: TPanel;
    BtnSi: TButton;
    BtnCancelar: TButton;
    ImgBien: TImage;
    LblMensaje: TLabel;
    PnlDescto: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    BtnNo: TButton;
    DSAplicaDescuento: TDataSource;
    BtnGeneraDescto: TButton;
    BtnCancelaDescto: TButton;
    procedure BtnGeneraDesctoClick(Sender: TObject);
    procedure BtnNoClick(Sender: TObject);
    procedure BtnCancelaDesctoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAplicaDescuentosCXC: TFrmAplicaDescuentosCXC;

implementation

{$R *.dfm}

uses PagosDM;

procedure TFrmAplicaDescuentosCXC.BtnCancelaDesctoClick(Sender: TObject);
begin
  //Aca puede regresaer para aplicar completo sin descuento..
  BtnGeneraDescto.Visible:=True;
  PnlBotones.Visible:=True;
  //CAncelar insercion
end;

procedure TFrmAplicaDescuentosCXC.BtnGeneraDesctoClick(Sender: TObject);
begin
  PnlDescto.Visible:=True;
  BtnGeneraDescto.Visible:=False;
  PnlBotones.Visible:=False;

  //Insertar en tabla     %%& feb 14/17

end;

procedure TFrmAplicaDescuentosCXC.BtnNoClick(Sender: TObject);
begin
//%%& feb 14/17
  //Pendiente aplicar descuento antes de generar Factura. Sumar valor de descuento a pago aplicado (ver si factoraje tambien..)
  //Se debe identificar quien es el correspondiente valor de IVA para ajustar tambien el valor en el mismo monto.
  //Poner datos de Ids y luego de generar factura actualizar ID verificar si se mantiene el id del registo de descuento.
  //se crearan dos registros de descuento...
end;

end.
