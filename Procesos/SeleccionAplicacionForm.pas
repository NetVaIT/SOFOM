unit SeleccionAplicacionForm;

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
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.ExtCtrls, cxPC;

type
  TFrmSeleccionAplicacion = class(TForm)
    pcMain: TcxPageControl;
    tsGeneral: TcxTabSheet;
    Label2: TLabel;
    pmlMain: TPanel;
    Button1: TButton;
    SpdBtnSaldoAFavor: TSpeedButton;
    SpeedButton1: TSpeedButton;
    procedure SpdBtnSaldoAFavorClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    FTipoAplica: integer;
    { Private declarations }
  public
    { Public declarations }
    property TipoAplica :integer read FTipoAplica write FTipoAplica;
  end;

var
  FrmSeleccionAplicacion: TFrmSeleccionAplicacion;

implementation

{$R *.dfm}

procedure TFrmSeleccionAplicacion.Button1Click(Sender: TObject);
begin
  FTipoAplica :=(sender as Tbutton).Tag; //Verificar..
  Close;
end;

procedure TFrmSeleccionAplicacion.SpdBtnSaldoAFavorClick(Sender: TObject);
begin
  FTipoAplica :=(sender as Tspeedbutton).Tag; //Verificar..
  Close;
end;

end.
