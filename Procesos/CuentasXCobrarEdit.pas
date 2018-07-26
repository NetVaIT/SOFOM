unit CuentasXCobrarEdit;

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
  cxContainer, cxEdit, Vcl.DBCtrls, cxDBEdit, cxDropDownEdit, cxCalendar,
  cxTextEdit, cxMaskEdit, cxSpinEdit, cxLabel, cxDBLabel;

type
  TFrmEdCuentasXCobrar = class(T_frmEdit)
    Label1: TLabel;
    Label5: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label6: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label7: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label8: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label9: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label10: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    Label11: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label12: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    PnlDetalleFact: TPanel;
    cxDBLabel1: TcxDBLabel;
    pnlMoratorios: TPanel;
    Label2: TLabel;
    cxDBDateEdit2: TcxDBDateEdit;
    cxLabel1: TcxLabel;
    cxLblTotalConMora: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FTotalConMora: Double;
    function GetFTotalConMora: Double;
  public
    { Public declarations }
     Property TotalConMora  :Double read GetFTotalConMora write FTotalConMora ;
  end;

implementation

{$R *.dfm}

uses CuentasXCobrarDM, CuentasXCobrarDetalleForm, CuentasXCobrarMoratoriosForm;

procedure TFrmEdCuentasXCobrar.FormCreate(Sender: TObject);
var FrmCXCDetalle:TFrmCXCDetalle;
    frmConCXCMoratorios:TfrmConCXCMoratorios;
begin
  inherited;
  FrmCXCDetalle:=TFrmCXCDetalle.Create(self);
  FrmCXCDetalle.Parent:= PnlDetalleFact;
  FrmCXCDetalle.Align:=alClient;
  FrmCXCDetalle.Show;
  //MAr 27/17
  frmConCXCMoratorios:=  TfrmConCXCMoratorios.Create(self);    //VErificar si hay o no para que se muestre o no..
  frmConCXCMoratorios.Parent:= PnlMoratorios;
 // frmConCXCMoratorios.ApplyBestFit:=False;
  frmConCXCMoratorios.Align:=alClient;
  frmConCXCMoratorios.Show;
end;

procedure TFrmEdCuentasXCobrar.FormShow(Sender: TObject);
begin
  inherited;
  cxLblTotalConMora.Caption:=FormatFloat('$#,##0.00', TotalConMora);
end;

function TFrmEdCuentasXCobrar.GetFTotalConMora: Double;
begin
  Result := FTotalConMora;
end;

end.
