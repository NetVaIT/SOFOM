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
    lblFactor: TcxLabel;
    edtFactor: TcxSpinEdit;
    cxLabel2: TcxLabel;
    edtYear: TcxSpinEdit;
    lblTipo: TLabel;
    cxcbTipo: TcxComboBox;
    procedure FormShow(Sender: TObject);
    procedure cxcbTipoPropertiesChange(Sender: TObject);
  private
    { Private declarations }
    FAccion: Integer;
    function GetPeriodoAnio: Integer;
    procedure SetPeriodoAnio(const Value: Integer);
    function GetIdTipo: Integer;
    procedure SetIdTipo(const Value: Integer);
    procedure SetAccion(const Value: Integer);
    function GetFactor: Integer;
    procedure SetFactor(const Value: Integer);
    procedure AjustarControles;
  public
    { Public declarations }
    function Execute(MostrarTipo: Boolean): Boolean;
    property Accion: Integer read FAccion write SetAccion;
    property IdTipo: Integer read GetIdTipo write SetIdTipo;
    property Factor: Integer read GetFactor write SetFactor;
    property PeriodoAnio: Integer read GetPeriodoAnio write SetPeriodoAnio;
  end;

implementation

{$R *.dfm}

uses PLDAlertasDM;

{ TfrmPLDAlertasFiltro }


procedure TfrmPLDAlertasFiltro.AjustarControles;
begin
  case Accion of
    1:
    begin
      lblFactor.Caption := 'Periodo mes';
      edtFactor.EditValue := 1;
      edtFactor.Properties.MaxValue := 12;
    end;
    2:
    begin
      if IdTipo = 1 then
      begin
        lblFactor.Caption := 'Trimestre';
        edtFactor.EditValue := 1;
        edtFactor.Properties.MaxValue := 4;
      end
      else
      begin
        lblFactor.Caption := 'Periodo mes';
        edtFactor.EditValue := 1;
        edtFactor.Properties.MaxValue := 12;
      end;
    end;
  end;
end;

procedure TfrmPLDAlertasFiltro.cxcbTipoPropertiesChange(Sender: TObject);
begin
  inherited;
  AjustarControles;
end;

function TfrmPLDAlertasFiltro.Execute(MostrarTipo: Boolean): Boolean;
begin
  lblTipo.Visible:= MostrarTipo;
  cxcbTipo.Visible:= MostrarTipo;
  Result:= (ShowModal = mrOk);
end;

procedure TfrmPLDAlertasFiltro.FormShow(Sender: TObject);
begin
  inherited;
  AjustarControles;
end;

function TfrmPLDAlertasFiltro.GetFactor: Integer;
begin
  Result:= edtFactor.Value;
end;

function TfrmPLDAlertasFiltro.GetIdTipo: Integer;
begin
  Result := cxcbTipo.ItemIndex;
end;

function TfrmPLDAlertasFiltro.GetPeriodoAnio: Integer;
begin
  Result := edtYear.Value;
end;

procedure TfrmPLDAlertasFiltro.SetAccion(const Value: Integer);
begin
  FAccion := Value;
end;

procedure TfrmPLDAlertasFiltro.SetFactor(const Value: Integer);
begin
  edtFactor.Value := Value;
end;

procedure TfrmPLDAlertasFiltro.SetIdTipo(const Value: Integer);
begin
  cxcbTipo.ItemIndex := Value;
end;

procedure TfrmPLDAlertasFiltro.SetPeriodoAnio(const Value: Integer);
begin
  edtYear.Value := Value;
end;

end.
