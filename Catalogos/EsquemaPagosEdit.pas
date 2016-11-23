unit EsquemaPagosEdit;

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
  cxContainer, cxEdit, Vcl.DBCtrls, cxTextEdit, cxDBEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCheckBox,
  EsquemaPagosPersonasDM;

type
  TfrmEsquemaPagosEdit = class(T_frmEdit)
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label3: TLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    tsPersonas: TcxTabSheet;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    dmEsquemaPagosPersonas: TdmEsquemaPagosPersonas;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses EsquemaPagosDM;

procedure TfrmEsquemaPagosEdit.FormCreate(Sender: TObject);
begin
  inherited;
  dmEsquemaPagosPersonas:= TdmEsquemaPagosPersonas.Create(nil);
end;

procedure TfrmEsquemaPagosEdit.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(dmEsquemaPagosPersonas);
end;

procedure TfrmEsquemaPagosEdit.FormShow(Sender: TObject);
begin
  inherited;
  // Personas
  dmEsquemaPagosPersonas.MasterSource := DataSource;
  dmEsquemaPagosPersonas.MasterFields:= 'IdEsquemaPago';
  dmEsquemaPagosPersonas.ShowModule(tsPersonas,'');
end;

end.
