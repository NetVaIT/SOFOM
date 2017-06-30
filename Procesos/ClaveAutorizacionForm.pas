unit ClaveAutorizacionForm;

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
  cxEdit, cxTextEdit, Vcl.StdCtrls, Vcl.ExtCtrls, cxPC, Data.DB, Data.Win.ADODB;

type
  TFrmClaveAutorizacion = class(TForm)
    pcMain: TcxPageControl;
    tsGeneral: TcxTabSheet;
    Label2: TLabel;
    pmlMain: TPanel;
    BtnCancela: TButton;
    BtnAceptar: TButton;
    cxTxtEdtCLave: TcxTextEdit;
    ADOQryUsuario: TADOQuery;
    procedure BtnAceptarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    fRespuesta: integer;
    { Private declarations }
  public
    { Public declarations }
    property Respuesta:integer read fRespuesta write fRespuesta;

  end;

var
  FrmClaveAutorizacion: TFrmClaveAutorizacion;

implementation

{$R *.dfm}

uses _ConectionDmod;

procedure TFrmClaveAutorizacion.BtnAceptarClick(Sender: TObject);
begin
  fREspuesta:= (sender as Tbutton).Tag;
  case frespuesta of
  1: begin
       ADOQryUsuario.Close;
       ADOQryUsuario.Parameters.ParamByName('IDUsuario').Value:=_dmConection.IdUsuario;
       ADOQryUsuario.Parameters.ParamByName('Clave').Value:=cxTxtEdtCLave.Text;
       ADOQryUsuario.Open;
       if ADOQryUsuario.eof then  //Si no existe
       begin
         frespuesta:=2;
         Showmessage('Clave incorrecta');
       end;
       //Si esxiste se va con el valor correcto
     end;
  end;

end;

procedure TFrmClaveAutorizacion.FormShow(Sender: TObject);
begin
  cxTxtEdtCLave.SetFocus;
end;

end.
