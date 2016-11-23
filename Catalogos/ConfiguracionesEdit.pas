unit ConfiguracionesEdit;

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
  Vcl.DBCtrls, cxContainer, cxEdit, cxTextEdit, cxDBEdit;

type
  TfrmConfiguracionesEdit = class(T_frmEdit)
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label2: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label6: TLabel;
    DBLookupComboBox6: TDBLookupComboBox;
    Label7: TLabel;
    DBLookupComboBox7: TDBLookupComboBox;
    Label8: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label11: TLabel;
    DBLookupComboBox10: TDBLookupComboBox;
    cxTabSheet1: TcxTabSheet;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    Label9: TLabel;
    Label10: TLabel;
    DBLookupComboBox8: TDBLookupComboBox;
    DBLookupComboBox9: TDBLookupComboBox;
    Label12: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label13: TLabel;
    DBLookupComboBox11: TDBLookupComboBox;
    Label14: TLabel;
    DBLookupComboBox12: TDBLookupComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses ConfiguracionDM;

end.
