unit EsquemaPagosPersonasEdit;

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
  Vcl.DBCtrls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TfrmEsquemaPagosPersonasEdit = class(T_frmEdit)
    Label1: TLabel;
    Label3: TLabel;
    dsCuentaBancarias: TDataSource;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
  private
    FDataSetCuentasBancarias: TDataSet;
    procedure SetDataSetCuentasBancarias(const Value: TDataSet);
    { Private declarations }
  public
    { Public declarations }
    property DataSetCuentasBancarias: TDataSet read FDataSetCuentasBancarias write SetDataSetCuentasBancarias;
  end;

implementation

{$R *.dfm}

uses EsquemaPagosPersonasDM;

{ TfrmEsquemaPagosPersonasEdit }

procedure TfrmEsquemaPagosPersonasEdit.SetDataSetCuentasBancarias(
  const Value: TDataSet);
begin
  FDataSetCuentasBancarias := Value;
  dsCuentaBancarias.DataSet := Value;
end;

end.
