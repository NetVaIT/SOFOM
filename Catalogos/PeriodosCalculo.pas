unit PeriodosCalculo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls, System.DateUtils,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  cxTextEdit, cxMaskEdit, cxSpinEdit;

type
  TfrmPeriodosCalculo = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    cbxPeriodos: TComboBox;
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    cxSEdtAnio: TcxSpinEdit;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    FAnioP: integer;
    procedure SetAnioP(const Value: integer);
    { Private declarations }
  public
    { Public declarations }
    property AnioP : integer read FAnioP write SetAnioP;
  end;

implementation

{$R *.dfm}

uses PeriodosDM;

procedure TfrmPeriodosCalculo.Button1Click(Sender: TObject);
begin
  AnioP := cxSEdtAnio.Value;
  ModalResult := mrOk;
end;

procedure TfrmPeriodosCalculo.Button2Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmPeriodosCalculo.FormShow(Sender: TObject);
var
  dd, mm, aa : word;
begin
  DecodeDate(Now(), aa, mm, dd);
  cxSEdtAnio.Value := IntToStr(aa);
  cbxPeriodos.ItemIndex := 0;
end;

procedure TfrmPeriodosCalculo.SetAnioP(const Value: integer);
begin
  FAnioP := Value;
end;

end.
