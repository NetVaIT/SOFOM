unit PLDAlertasFiltroForm;

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
  TfrmPLDAlertasFiltro = class(T_frmEdit)
    cxLabel1: TcxLabel;
    edtMonth: TcxSpinEdit;
    cxLabel2: TcxLabel;
    edtYear: TcxSpinEdit;
    lblTipo: TLabel;
    cxcbTipo: TcxComboBox;
  private
    { Private declarations }
    function GetPeriodoAnio: Integer;
    function GetPeriodoMes: Integer;
    procedure SetPeriodoAnio(const Value: Integer);
    procedure SetPeriodoMes(const Value: Integer);
    function GetIdTipo: Integer;
    procedure SetIdTipo(const Value: Integer);
  public
    { Public declarations }
    function Execute(MostrarTipo: Boolean): Boolean;
    property PeriodoMes: Integer read GetPeriodoMes write SetPeriodoMes;
    property PeriodoAnio: Integer read GetPeriodoAnio write SetPeriodoAnio;
    property IdTipo: Integer read GetIdTipo write SetIdTipo;
  end;

implementation

{$R *.dfm}

uses PLDAlertasDM;

{ TfrmPLDAlertasFiltro }


function TfrmPLDAlertasFiltro.Execute(MostrarTipo: Boolean): Boolean;
begin
  lblTipo.Visible:= MostrarTipo;
  cxcbTipo.Visible:= MostrarTipo;
  Result:= (ShowModal = mrOk);
end;

function TfrmPLDAlertasFiltro.GetIdTipo: Integer;
begin
  Result := cxcbTipo.ItemIndex;
end;

function TfrmPLDAlertasFiltro.GetPeriodoAnio: Integer;
begin
  Result := edtYear.Value;
end;

function TfrmPLDAlertasFiltro.GetPeriodoMes: Integer;
begin
  Result := edtMonth.Value;
end;

procedure TfrmPLDAlertasFiltro.SetIdTipo(const Value: Integer);
begin
  cxcbTipo.ItemIndex := Value;
end;

procedure TfrmPLDAlertasFiltro.SetPeriodoAnio(const Value: Integer);
begin
  edtYear.Value := Value;
end;

procedure TfrmPLDAlertasFiltro.SetPeriodoMes(const Value: Integer);
begin
  edtMonth.Value := Value;
end;

end.
