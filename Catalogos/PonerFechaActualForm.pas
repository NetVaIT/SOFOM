unit PonerFechaActualForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.ExtCtrls, Vcl.DBCtrls, cxCheckBox,
  cxDBEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, Vcl.StdCtrls, DB,
  Vcl.Buttons;

type
  TFrmPoneFechaActual = class(TForm)
    Label2: TLabel;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    Label1: TLabel;
    DBNavigator1: TDBNavigator;
    BtBtnCerrar: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPoneFechaActual: TFrmPoneFechaActual;

implementation

{$R *.dfm}

uses _ConectionDmod;

procedure TFrmPoneFechaActual.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if (_dmConection.ADOQryEdFecha.State =dsEdit) then
  begin
    if (Application.MessageBox('¿Desea salir sin guardar los cambios?', 'Confirmar',MB_YESNO)=IDYES) then
    _dmConection.ADOQryEdFecha.Cancel
   else
     CanClose:=False;
  end;
end;

procedure TFrmPoneFechaActual.FormCreate(Sender: TObject);
begin
  _dmConection.ADOQryEdFecha.Open;
end;

procedure TFrmPoneFechaActual.FormDestroy(Sender: TObject);
begin
  _dmConection.ADOQryEdFecha.Close;
end;

end.
