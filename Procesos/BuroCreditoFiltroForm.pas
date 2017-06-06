unit BuroCreditoFiltroForm;

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
  cxContainer, cxEdit, cxButtonEdit, cxTextEdit, cxMaskEdit, cxSpinEdit, cxLabel,
  Vcl.ComCtrls, Winapi.ShlObj, cxShellCommon, cxDropDownEdit, cxShellComboBox;

type
  TfrmBuroCreditoFiltro = class(T_frmEdit)
    cxLabel1: TcxLabel;
    edtMonth: TcxSpinEdit;
    cxLabel2: TcxLabel;
    edtYear: TcxSpinEdit;
    cxLabel3: TcxLabel;
    edtFile: TcxButtonEdit;
    actSaveFile: TAction;
    SaveDialog: TSaveDialog;
    procedure actSaveFileExecute(Sender: TObject);
  private
    { Private declarations }
    function GetNombreArchivo: String;
    function GetPeriodoAnio: Integer;
    function GetPeriodoMes: Integer;
    procedure SetNombreArchivo(const Value: String);
    procedure SetPeriodoAnio(const Value: Integer);
    procedure SetPeriodoMes(const Value: Integer);
  public
    { Public declarations }
    function Execute: Boolean;
    property PeriodoMes: Integer read GetPeriodoMes write SetPeriodoMes;
    property PeriodoAnio: Integer read GetPeriodoAnio write SetPeriodoAnio;
    property NombreArchivo: String read GetNombreArchivo write SetNombreArchivo;
  end;

implementation

{$R *.dfm}

uses BuroCreditoDM;

{ TfrmBuroCreditoFiltro }

procedure TfrmBuroCreditoFiltro.actSaveFileExecute(Sender: TObject);
begin
  inherited;
  if SaveDialog.Execute then
  begin
    NombreArchivo:= SaveDialog.FileName;
  end;
end;

function TfrmBuroCreditoFiltro.Execute: Boolean;
begin
  Result:= (ShowModal = mrOk);
end;

function TfrmBuroCreditoFiltro.GetNombreArchivo: String;
begin
  Result := edtFile.Text;
end;

function TfrmBuroCreditoFiltro.GetPeriodoAnio: Integer;
begin
  Result := edtYear.Value;
end;

function TfrmBuroCreditoFiltro.GetPeriodoMes: Integer;
begin
  Result := edtMonth.Value;
end;

procedure TfrmBuroCreditoFiltro.SetNombreArchivo(const Value: String);
begin
  edtFile.Text := Value;
  SaveDialog.FileName := Value;
end;

procedure TfrmBuroCreditoFiltro.SetPeriodoAnio(const Value: Integer);
begin
  edtYear.Value := Value;
end;

procedure TfrmBuroCreditoFiltro.SetPeriodoMes(const Value: Integer);
begin
  edtMonth.Value := Value;
end;

end.
