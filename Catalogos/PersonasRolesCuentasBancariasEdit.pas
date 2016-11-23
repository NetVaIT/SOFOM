unit PersonasRolesCuentasBancariasEdit;

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
  cxContainer, cxEdit, cxTextEdit, cxCurrencyEdit, cxDBEdit, Vcl.DBCtrls,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TfrmPersonasRolesCuentasBancariasEdit = class(T_frmEdit)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    Label4: TLabel;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    Label5: TLabel;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dsCuentaBancaria: TDataSource;
    Label6: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label7: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses PersonasRolesCuentasBancariasDM;

end.
