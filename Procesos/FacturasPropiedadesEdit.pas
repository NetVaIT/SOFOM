unit FacturasPropiedadesEdit;

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
  Vcl.DBCtrls, ProcesosType;

type
  TfrmFacturasPropiedadesEdit = class(T_frmEdit)
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    dblcbFormaPago: TDBLookupComboBox;
    dblcbMetodPago: TDBLookupComboBox;
    dblcbTipoRelacion: TDBLookupComboBox;
    dblcbUso: TDBLookupComboBox;
    btnRelacionarCFDI: TButton;
  private
    FCFDITipoDocumento: TCFDITipoDocumento;
    FactRelacionarCFDI: TBasicAction;
    procedure SetCFDITipoDocumento(const Value: TCFDITipoDocumento);
    procedure SetactRelacionarCFDI(const Value: TBasicAction);
    { Private declarations }
  public
    { Public declarations }
    property actRelacionarCFDI: TBasicAction read FactRelacionarCFDI write SetactRelacionarCFDI;
    property CFDITipoDocumento: TCFDITipoDocumento read FCFDITipoDocumento write SetCFDITipoDocumento;
  end;

implementation

{$R *.dfm}

{ TfrmFacturasPropiedadesEdit }

procedure TfrmFacturasPropiedadesEdit.SetactRelacionarCFDI(
  const Value: TBasicAction);
begin
  FactRelacionarCFDI := Value;
  btnRelacionarCFDI.Action := Value;
end;

procedure TfrmFacturasPropiedadesEdit.SetCFDITipoDocumento(
  const Value: TCFDITipoDocumento);
begin
  FCFDITipoDocumento := Value;
  dblcbMetodPago.Enabled := (Value <> tdCFDIPago);
  dblcbFormaPago.Enabled := (Value <> tdCFDIPago);
  dblcbUso.Enabled := (Value <> tdCFDIPago);
end;

end.
