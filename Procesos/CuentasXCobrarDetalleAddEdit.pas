unit CuentasXCobrarDetalleAddEdit;

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
  cxContainer, cxEdit, cxTextEdit, cxDBEdit, cxMaskEdit, cxDropDownEdit, cxCalc;

type
  TfrmCuentasXCobrarDetalleAddEdit = class(T_frmEdit)
    Label1: TLabel;
    Label2: TLabel;
    edtDescripcion: TcxTextEdit;
    edtImporte: TcxCalcEdit;
    procedure actPostExecute(Sender: TObject);
  private
    { Private declarations }
    function GetDescripcion: string;
    procedure SetDescripcion(const Value: string);
    function GetImporte: Currency;
    procedure SetImporte(const Value: Currency);
  public
    { Public declarations }
    function Execute: Boolean;
    property Descripcion: string read GetDescripcion write SetDescripcion;
    property Importe: Currency read GetImporte write SetImporte;
  end;

implementation

{$R *.dfm}

uses CuentasXCobrarDM;

{ TfrmCuentasXCobrarDetalleAddEdit }

procedure TfrmCuentasXCobrarDetalleAddEdit.actPostExecute(Sender: TObject);
begin
  if Importe <= 0 then
    ShowMessage('El importe debe ser mayor a 0')
  else
    inherited;
end;

function TfrmCuentasXCobrarDetalleAddEdit.Execute: Boolean;
begin
  Result:= (ShowModal = mrOk);
end;

function TfrmCuentasXCobrarDetalleAddEdit.GetDescripcion: string;
begin
  Result:= edtDescripcion.Text;
end;

function TfrmCuentasXCobrarDetalleAddEdit.GetImporte: Currency;
begin
  Result:= edtImporte.EditValue;
end;

procedure TfrmCuentasXCobrarDetalleAddEdit.SetDescripcion(const Value: string);
begin
  edtDescripcion.Text:= Value;
end;

procedure TfrmCuentasXCobrarDetalleAddEdit.SetImporte(const Value: Currency);
begin
  edtImporte.EditValue:= Value;
end;

end.
